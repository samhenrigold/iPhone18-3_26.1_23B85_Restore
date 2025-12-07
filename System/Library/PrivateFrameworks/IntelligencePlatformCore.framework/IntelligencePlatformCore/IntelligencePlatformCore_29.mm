uint64_t sub_1C4685FA0(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6581861;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6581861;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C4686028(char a1)
{
  if (a1)
  {
    v1 = 0xEF65636E61726165;
  }

  else
  {
    v1 = 0xED00006E6F697461;
  }

  sub_1C442BA28();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1C46860D0()
{
  sub_1C441C1B4();
  switch(v2)
  {
    case 2:
      v0 = 0xED00006C616E6F69;
      break;
    case 3:
      v0 = 0xE900000000000064;
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v6)
  {
    case 1:
      v5 = 0x676E696F6774756FLL;
      break;
    case 2:
      v5 = 0x7463657269646962;
      v1 = 0xED00006C616E6F69;
      break;
    case 3:
      v5 = 0x656E696665646E75;
      v1 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C4686220()
{
  sub_1C441C1B4();
  switch(v2)
  {
    case 1:
      v0 = 0xEF65636976654468;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v0 = 0xEF79746976697463;
      break;
    case 5:
      sub_1C441B81C();
      v0 = v3 | 0x8000000000000000;
      break;
    case 6:
      sub_1C441E2B4();
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v7)
  {
    case 1:
      v6 = 0x746F6F7465756C62;
      v1 = 0xEF65636976654468;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v6 = 0x6563616C70;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v6 = 0x6E6F73726570;
      break;
    case 4:
      v6 = 0x416574756D6D6F63;
      v1 = 0xEF79746976697463;
      break;
    case 5:
      sub_1C442DE20();
      v1 = v8 | 0x8000000000000000;
      break;
    case 6:
      sub_1C44149A8();
      v6 = v9 | 6;
      break;
    default:
      break;
  }

  if (v4 == v6 && v0 == v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FFF90(v4, v5, v6);
  }

  return v11 & 1;
}

uint64_t sub_1C46863F4()
{
  sub_1C441EB38();
  if (v0)
  {
    v3 = 0x6172676F74736968;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v0)
  {
    v4 = 0xED0000617461446DLL;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x6172676F74736968;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xED0000617461446DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v1, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C4686490(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 25188;
  switch(a1)
  {
    case 1:
      v3 = 0xE500000000000000;
      v4 = 0x656C626174;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v4 = 0x7364726F77;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v4 = 0x73656972657571;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v4 = 1701080941;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v4 = 0x63697274656DLL;
      break;
    case 6:
      v4 = 0x6C437265746C6966;
      v3 = 0xEC00000065737561;
      break;
    case 7:
      v4 = 0x756C6F436E696F6ALL;
      v3 = 0xEA00000000006E6DLL;
      break;
    case 8:
      v4 = 0x6D756C6F4379656BLL;
      v3 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25188;
  switch(a2)
  {
    case 1:
      v5 = 0xE500000000000000;
      v6 = 0x656C626174;
      break;
    case 2:
      v5 = 0xE500000000000000;
      v6 = 0x7364726F77;
      break;
    case 3:
      v5 = 0xE700000000000000;
      v6 = 0x73656972657571;
      break;
    case 4:
      v5 = 0xE400000000000000;
      v6 = 1701080941;
      break;
    case 5:
      v5 = 0xE600000000000000;
      v6 = 0x63697274656DLL;
      break;
    case 6:
      v6 = 0x6C437265746C6966;
      v5 = 0xEC00000065737561;
      break;
    case 7:
      v6 = 0x756C6F436E696F6ALL;
      v5 = 0xEA00000000006E6DLL;
      break;
    case 8:
      v6 = 0x6D756C6F4379656BLL;
      v5 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1C46866C8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x6144664F656D6974;
  v4 = 0xE900000000000079;
  v5 = a1;
  v6 = 0x6144664F656D6974;
  switch(v5)
  {
    case 1:
      v6 = 0x6144664F74726170;
      break;
    case 2:
      v6 = 0x6954657372616F63;
      v4 = 0xEF796144664F656DLL;
      break;
    case 3:
      v6 = 0x656557664F796164;
      v4 = 0xE90000000000006BLL;
      break;
    case 4:
      v6 = 0x6557664F74726170;
      v4 = 0xEA00000000006B65;
      break;
    case 5:
      v4 = 0xE300000000000000;
      v6 = 6909804;
      break;
    case 6:
      v6 = 0x636F4C6F7263696DLL;
      v7 = 0x6E6F697461;
      goto LABEL_14;
    case 7:
      sub_1C440E008();
      break;
    case 8:
      v6 = 0x6547657372616F63;
      v7 = 0x687361486FLL;
LABEL_14:
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 9:
      v6 = 0x6F6547656772616CLL;
      v4 = 0xEC00000068736148;
      break;
    case 10:
      v4 = 0xE400000000000000;
      v6 = 1768319351;
      break;
    case 11:
      v6 = 0x646F4D7375636F66;
      v4 = 0xE900000000000065;
      break;
    case 12:
      v6 = 0x74536E6F69746F6DLL;
      v4 = 0xEB00000000657461;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6144664F74726170;
      break;
    case 2:
      v3 = 0x6954657372616F63;
      v2 = 0xEF796144664F656DLL;
      break;
    case 3:
      v3 = 0x656557664F796164;
      v2 = 0xE90000000000006BLL;
      break;
    case 4:
      v3 = 0x6557664F74726170;
      v2 = 0xEA00000000006B65;
      break;
    case 5:
      v2 = 0xE300000000000000;
      v3 = 6909804;
      break;
    case 6:
      v3 = 0x636F4C6F7263696DLL;
      v8 = 0x6E6F697461;
      goto LABEL_28;
    case 7:
      sub_1C4416008();
      break;
    case 8:
      v3 = 0x6547657372616F63;
      v8 = 0x687361486FLL;
LABEL_28:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 9:
      v3 = 0x6F6547656772616CLL;
      v2 = 0xEC00000068736148;
      break;
    case 10:
      v2 = 0xE400000000000000;
      v3 = 1768319351;
      break;
    case 11:
      v3 = 0x646F4D7375636F66;
      v2 = 0xE900000000000065;
      break;
    case 12:
      v3 = 0x74536E6F69746F6DLL;
      v2 = 0xEB00000000657461;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C43FED70(v6, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_1C4686A00(char a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461447472617473;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65746144646E65;
    }

    else
    {
      v4 = 0x746E65746E6F63;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x7461447472617473;
    v5 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x65746144646E65;
    }

    else
    {
      v3 = 0x746E65746E6F63;
    }

    v2 = 0xE700000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FED70(v4, a2, v3);
  }

  return v7 & 1;
}

uint64_t sub_1C4686AF4()
{
  sub_1C43FD394();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    case 6:
      v0 = 0xE400000000000000;
      break;
    case 7:
      v0 = 0xE600000000000000;
      break;
    case 8:
      v0 = 0xE600000000000000;
      break;
    case 9:
      v0 = 0xE400000000000000;
      break;
    case 10:
      v0 = 0xEA00000000006572;
      break;
    case 11:
      v0 = 0xED00007972657669;
      break;
    case 12:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      v1 = 0xE500000000000000;
      v5 = 0x6F65646976;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v5 = 0x636973756DLL;
      break;
    case 3:
      v5 = 0x74736163646F70;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v7 = 0x6973776F7262;
      goto LABEL_18;
    case 5:
      sub_1C4440FD8();
      break;
    case 6:
      v1 = 0xE400000000000000;
      v5 = 1818845549;
      break;
    case 7:
      v1 = 0xE600000000000000;
      v5 = 0x676E696D6167;
      break;
    case 8:
      v1 = 0xE600000000000000;
      v5 = 0x6C6169636F73;
      break;
    case 9:
      v1 = 0xE400000000000000;
      v5 = 1936744813;
      break;
    case 10:
      v5 = 0x6168735F65646972;
      v1 = 0xEA00000000006572;
      break;
    case 11:
      v5 = 0x6C65645F646F6F66;
      v1 = 0xED00007972657669;
      break;
    case 12:
      v1 = 0xE800000000000000;
      v7 = 0x6970706F6873;
LABEL_18:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C4686D90(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = "raph";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 1)
    {
      v6 = "motion_state_unknown";
    }

    else
    {
      v6 = "motion_state_stationary";
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = "raph";
  }

  if (a2)
  {
    v3 = "motion_state_unknown";
    v2 = a2 == 1 ? 0xD000000000000017 : 0xD000000000000013;
    if (a2 != 1)
    {
      v3 = "motion_state_stationary";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C4686E60()
{
  v0 = 0xEC00000065707954;
  sub_1C440BC08();
  v4 = v3;
  v5 = v2;
  v6 = 0xEC00000065707954;
  switch(v4)
  {
    case 1:
      sub_1C440F44C();
      sub_1C441591C();
      break;
    case 2:
      v5 = sub_1C442FC94();
      v6 = 0xEA00000000006563;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x737265626D656DLL;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x617461646174656DLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1C4412EA0();
      sub_1C440C400();
      break;
    case 2:
      sub_1C4425A2C();
      v0 = 0xEA00000000006563;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v2 = 0x737265626D656DLL;
      break;
    case 4:
      v0 = 0xE800000000000000;
      v2 = 0x617461646174656DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FED70(v5, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C4686FAC()
{
  sub_1C44320D4();
  switch(v2)
  {
    case 1:
      sub_1C441F674();
      break;
    case 2:
      sub_1C4406970();
      break;
    case 3:
      sub_1C440878C(21);
      break;
    case 4:
      sub_1C440DFF4();
      break;
    case 5:
      v0 = 0xE600000000000000;
      sub_1C440F44C();
      break;
    case 6:
      v0 = 0xE800000000000000;
      sub_1C440F44C();
      break;
    case 7:
      sub_1C43FC144();
      v0 = 0xE900000000000070;
      break;
    case 8:
      sub_1C43FD3B0();
      v0 = 0xEC00000065707954;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      sub_1C442C65C();
      break;
    case 2:
      sub_1C4419330();
      break;
    case 3:
      sub_1C44119D0();
      break;
    case 4:
      sub_1C4416F20();
      break;
    case 5:
      v1 = 0xE600000000000000;
      sub_1C4412EA0();
      break;
    case 6:
      v1 = 0xE800000000000000;
      sub_1C4412EA0();
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 7:
      sub_1C440A844();
      break;
    case 8:
      sub_1C443F14C();
      v1 = 0xEC00000065707954;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C4687110()
{
  sub_1C4412EA0();
  v1 = 0xE600000000000000;
  switch(v2)
  {
    case 1:
      v1 = 0xEB00000000737361;
      break;
    case 2:
      v1 = 0xE800000000000000;
      sub_1C4409B6C();
      break;
    case 3:
      v1 = 0xE900000000000065;
      break;
    case 4:
      v1 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_1C441022C();
  switch(v6)
  {
    case 1:
      v5 = 0x6C43797469746E65;
      v0 = 0xEB00000000737361;
      break;
    case 2:
      v0 = 0xE800000000000000;
      sub_1C4404DD4();
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 3:
      v5 = 0x6D614E6567617473;
      v0 = 0xE900000000000065;
      break;
    case 4:
      v0 = 0xE500000000000000;
      v5 = 0x6E656B6F74;
      break;
    default:
      break;
  }

  if (v3 == v5 && v1 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C4687270()
{
  sub_1C4433254();
  switch(v2)
  {
    case 1:
      sub_1C440878C(17);
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      sub_1C44119D0();
      break;
    case 2:
      v7 = 0x644965636166;
      goto LABEL_7;
    case 3:
      v7 = 0x6E6F73726570;
LABEL_7:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C4687398(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1C447EFD0();
  a3();
  sub_1C445E7C4();
  v8 = v8 && v3 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v4, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_1C468743C()
{
  sub_1C44320D4();
  switch(v2)
  {
    case 1:
      sub_1C441F674();
      break;
    case 2:
      sub_1C4406970();
      break;
    case 3:
      v0 = 0x80000001C4F86600;
      break;
    case 4:
      sub_1C440DFF4();
      break;
    case 5:
      sub_1C440F44C();
      break;
    case 6:
      sub_1C442FC94();
      v0 = 0xEA00000000006563;
      break;
    case 7:
      sub_1C4402214();
      break;
    case 8:
      sub_1C43FC144();
      v0 = 0xE900000000000070;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v7)
  {
    case 1:
      sub_1C442C65C();
      break;
    case 2:
      sub_1C4419330();
      break;
    case 3:
      v1 = (v6 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000015;
      break;
    case 4:
      sub_1C4416F20();
      break;
    case 5:
      sub_1C4412EA0();
      v5 = v8 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 6:
      sub_1C4425A2C();
      v1 = 0xEA00000000006563;
      break;
    case 7:
      sub_1C44119D0();
      break;
    case 8:
      sub_1C440A844();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C43FFF90(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_1C46875B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return sub_1C4415EFC();
  }

  else
  {
    return sub_1C441C8D4(a1, a2, a5, a6);
  }
}

uint64_t sub_1C46875D0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00006D65747379;
  v3 = 0x53656761726F7473;
  v4 = a1;
  v5 = 0x53656761726F7473;
  v6 = 0xED00006D65747379;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = sub_1C43FD3B0();
      break;
    case 2:
      v5 = 0x7267694D77656976;
      v6 = 0xED00006E6F697461;
      break;
    case 3:
      v5 = 0x43656761726F7473;
      v6 = 0xEE0070756E61656CLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      sub_1C443F14C();
      break;
    case 2:
      v3 = 0x7267694D77656976;
      v2 = 0xED00006E6F697461;
      break;
    case 3:
      v3 = 0x43656761726F7473;
      v2 = 0xEE0070756E61656CLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FED70(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1C4687758(char a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0x80000001C4F86740;
      break;
    case 2:
      v2 = 0xEC000000746E6576;
      break;
    case 3:
      v3 = "entityIdentifier";
      goto LABEL_6;
    case 4:
      v3 = "lookaheadDuration";
LABEL_6:
      v2 = v3 | 0x8000000000000000;
      break;
    case 5:
      v2 = 0xEF657079546E6F69;
      break;
    case 6:
      v2 = 0xEB00000000656741;
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v9)
  {
    case 1:
      v1 = (v8 - 32) | 0x8000000000000000;
      v6 = 0xD000000000000011;
      break;
    case 2:
      v6 = 0x456E6F6973736573;
      v1 = 0xEC000000746E6576;
      break;
    case 3:
      sub_1C442DE20();
      goto LABEL_14;
    case 4:
      v6 = 0xD000000000000016;
      v10 = v7 - 32;
LABEL_14:
      v1 = v10 | 0x8000000000000000;
      break;
    case 5:
      v6 = 0x7463617265746E69;
      v1 = 0xEF657079546E6F69;
      break;
    case 6:
      v6 = 0x646576726573626FLL;
      v1 = 0xEB00000000656741;
      break;
    default:
      break;
  }

  if (v4 == v6 && v2 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C43FFF90(v4, v5, v6);
  }

  return v12 & 1;
}

uint64_t sub_1C4687968()
{
  sub_1C441EB38();
  if (v0)
  {
    v3 = 0x6E69646465626D65;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v0)
  {
    v4 = 0xEF64726F63655267;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x6E69646465626D65;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xEF64726F63655267;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v1, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C4687A4C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v4 == *a2 && v5 == v6)
  {
    return sub_1C4415EFC();
  }

  else
  {
    return sub_1C441C8D4(v4, v5, *a2, v6);
  }
}

uint64_t sub_1C4687A74()
{
  sub_1C4440FD8();
  sub_1C4433254();
  switch(v2)
  {
    case 1:
      goto LABEL_3;
    case 2:
      sub_1C4409B6C();
LABEL_3:
      v0 = 0xE900000000000064;
      break;
    case 3:
      sub_1C440878C(24);
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      v5 = 0x656C6C65636E6163;
      goto LABEL_8;
    case 2:
      sub_1C4404DD4();
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
LABEL_8:
      v1 = 0xE900000000000064;
      break;
    case 3:
      sub_1C44119D0();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C4687B88()
{
  sub_1C441EB38();
  if (v0)
  {
    v3 = 0x7461636964657270;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v0)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x7461636964657270;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v1, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C4687C1C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x796C6B656577;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x796C68746E6F6DLL;
    }

    else
    {
      v4 = 0x6C61756E6E61;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x796C6B656577;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x796C68746E6F6DLL;
    }

    else
    {
      v2 = 0x6C61756E6E61;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C4687D00()
{
  sub_1C442BA28();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1C4F02938();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1C4687DAC(char a1, uint64_t a2)
{
  v2 = 0x64657461647075;
  if (a1)
  {
    sub_1C444FD08();
    if (v3)
    {
      v5 = 0x676E697461647075;
    }

    else
    {
      v5 = 0x647055736465656ELL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x64657461647075;
  }

  if (a2)
  {
    sub_1C444FD08();
    if (v7)
    {
      v2 = 0x676E697461647075;
    }

    else
    {
      v2 = 0x647055736465656ELL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEB00000000657461;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FFF90(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1C4687EA4(char a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0x80000001C4F87960;
      break;
    case 2:
      v2 = 0x80000001C4F87980;
      break;
    case 3:
      v2 = 0x80000001C4F879A0;
      break;
    case 4:
      break;
    case 5:
      v2 = 0xE300000000000000;
      break;
    default:
      v2 = 0x80000001C4F87940;
      break;
  }

  sub_1C441022C();
  switch(v11)
  {
    case 1:
      v1 = (v9 - 32) | 0x8000000000000000;
      v5 = v6 + 4;
      break;
    case 2:
      v1 = (v8 - 32) | 0x8000000000000000;
      v5 = v6 + 9;
      break;
    case 3:
      v1 = (v7 - 32) | 0x8000000000000000;
      v5 = v6 + 7;
      break;
    case 4:
      break;
    case 5:
      v1 = 0xE300000000000000;
      v5 = 7368801;
      break;
    default:
      v1 = (v10 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000014;
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C43FFF90(v3, v4, v5);
  }

  return v13 & 1;
}

uint64_t sub_1C468801C(char a1, uint64_t a2)
{
  v2 = 0x656475746974616CLL;
  if (a1)
  {
    sub_1C4434F00();
    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE800000000000000;
    v8 = 0x656475746974616CLL;
  }

  if (a2)
  {
    sub_1C4434F00();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1C43FFF90(v8, a2, v2);
  }

  return v18 & 1;
}

uint64_t sub_1C46880DC()
{
  sub_1C4433254();
  switch(v2)
  {
    case 1:
      v0 = 0xEE00687061724765;
      break;
    case 2:
      v3 = 1702125924;
      goto LABEL_7;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE400000000000000;
      break;
    case 5:
      sub_1C441B81C();
      v0 = v4 | 0x8000000000000000;
      break;
    case 6:
      sub_1C441E2B4();
      break;
    case 7:
      v3 = 1852795252;
LABEL_7:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v8)
  {
    case 1:
      v7 = 0x6764656C776F6E6BLL;
      v1 = 0xEE00687061724765;
      break;
    case 2:
      v7 = 0x7055737961776C61;
      v9 = 1702125924;
      goto LABEL_16;
    case 3:
      v1 = 0xE500000000000000;
      v7 = 0x656D6F6962;
      break;
    case 4:
      v1 = 0xE400000000000000;
      v7 = 2003134838;
      break;
    case 5:
      sub_1C442DE20();
      v1 = v10 | 0x8000000000000000;
      break;
    case 6:
      sub_1C44149A8();
      v7 = v11 | 4;
      break;
    case 7:
      v7 = 0x6163696669746F6ELL;
      v9 = 1852795252;
LABEL_16:
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v7 && v0 == v1)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C43FFF90(v5, v6, v7);
  }

  return v13 & 1;
}

uint64_t sub_1C46882F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  sub_1C447EFD0();
  a3(a2);
  sub_1C445E7C4();
  v9 = v9 && v3 == v8;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C43FFF90(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_1C468836C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x617247746E657665;
  }

  else
  {
    v3 = 0x7247656C62617473;
  }

  if (v2)
  {
    v4 = 0xEB00000000687061;
  }

  else
  {
    v4 = 0xEA00000000006870;
  }

  if (a2)
  {
    v5 = 0x617247746E657665;
  }

  else
  {
    v5 = 0x7247656C62617473;
  }

  if (a2)
  {
    v6 = 0xEA00000000006870;
  }

  else
  {
    v6 = 0xEB00000000687061;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C468840C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEF6E776F6E6B6E55;
  v3 = 0x6D726F6674616C70;
  v4 = a1;
  v5 = 0x6D726F6674616C70;
  v6 = 0xEF6E776F6E6B6E55;
  switch(v4)
  {
    case 1:
      v6 = 0xEC00000064615069;
      goto LABEL_11;
    case 2:
      v7 = 0x656E6F685069;
      goto LABEL_10;
    case 3:
      v5 = 0xD000000000000012;
      v6 = 0x80000001C4F87CB0;
      break;
    case 4:
      v6 = 0x80000001C4F87CD0;
      v5 = 0xD000000000000013;
      break;
    case 5:
      v6 = 0xEA00000000005654;
      goto LABEL_11;
    case 6:
      v6 = 0xED00006863746157;
      goto LABEL_11;
    case 7:
      v6 = 0xEF646F50656D6F48;
      goto LABEL_11;
    case 8:
      v7 = 0x6E6F69736956;
LABEL_10:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_11:
      v5 = 0x6D726F6674616C70;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xEC00000064615069;
      break;
    case 2:
      v8 = 0x656E6F685069;
      goto LABEL_21;
    case 3:
      sub_1C442DE20();
      v2 = v9 | 0x8000000000000000;
      break;
    case 4:
      v2 = 0x80000001C4F87CD0;
      v3 = 0xD000000000000013;
      break;
    case 5:
      v2 = 0xEA00000000005654;
      break;
    case 6:
      v2 = 0xED00006863746157;
      break;
    case 7:
      v2 = 0xEF646F50656D6F48;
      break;
    case 8:
      v8 = 0x6E6F69736956;
LABEL_21:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FED70(v5, a2, v3);
  }

  return v11 & 1;
}

uint64_t sub_1C4688600()
{
  sub_1C4433254();
  switch(v2)
  {
    case 1:
    case 2:
      break;
    case 3:
      goto LABEL_5;
    case 4:
      sub_1C4402214();
      break;
    case 5:
      sub_1C4409B6C();
LABEL_5:
      v0 = 0xE900000000000064;
      break;
    default:
      sub_1C441E2B4();
      break;
  }

  sub_1C440D22C();
  switch(v6)
  {
    case 1:
      break;
    case 2:
      v5 = 0x64657261656C63;
      break;
    case 3:
      v8 = 0x61636E757274;
      goto LABEL_12;
    case 4:
      sub_1C44119D0();
      break;
    case 5:
      sub_1C4404DD4();
LABEL_12:
      v5 = v8 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      v1 = 0xE900000000000064;
      break;
    default:
      sub_1C44149A8();
      v5 = v7 | 4;
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C43FFF90(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_1C468875C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00006465726975;
  v3 = 0x7165527261656C63;
  v4 = a1;
  v5 = "fullRebuildRequired";
  v6 = 0x7165527261656C63;
  v7 = 0xED00006465726975;
  switch(v4)
  {
    case 1:
      v7 = 0x80000001C4F87C40;
      v6 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v6 = 0x676E616843736168;
      v7 = 0xEA00000000007365;
      break;
    case 4:
      v6 = 0x65676E6168436F6ELL;
      v7 = 0xE900000000000073;
      break;
    default:
      v6 = sub_1C441B81C();
      v7 = v8 | 0x8000000000000000;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v3 = 0x676E616843736168;
      v2 = 0xEA00000000007365;
      break;
    case 4:
      v3 = 0x65676E6168436F6ELL;
      v2 = 0xE900000000000073;
      break;
    default:
      sub_1C442DE20();
      v2 = v9 | 0x8000000000000000;
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FED70(v6, a2, v3);
  }

  return v11 & 1;
}

uint64_t sub_1C46888E4(char a1)
{
  if (a1)
  {
    v1 = 0xED00007463656A62;
  }

  else
  {
    v1 = 0xEB00000000646567;
  }

  sub_1C442BA28();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1C4688988(char a1, char a2)
{
  sub_1C47E1854(a1 & 1);
  sub_1C447EFD0();
  sub_1C47E1854(a2 & 1);
  sub_1C445E7C4();
  v7 = v7 && v2 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90(v3, v6, v5);
  }

  return v8 & 1;
}

Swift::Double __swiftcall ConfidenceService.confidence(source:signalType:)(Swift::String source, Swift::String_optional signalType)
{
  v3 = v2;
  object = signalType.value._object;
  countAndFlagsBits = signalType.value._countAndFlagsBits;
  v6 = source._object;
  v7 = source._countAndFlagsBits;
  sub_1C456902C(&qword_1EC0BACC0, &qword_1C4F17070);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56.i8[-v9];
  sub_1C456902C(&qword_1EC0BACC8, &unk_1C4F17078);
  sub_1C43FCDF8();
  v64 = v12;
  v65 = v11;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v56.i8[-v14];
  sub_1C4F00978();
  sub_1C43FCDF8();
  v60 = v16;
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v56.i8[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56.i8[-v19];
  v21 = sub_1C4EFFB98();
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v67 = v7;
  v62 = countAndFlagsBits;
  sub_1C4EFFBA8();

  sub_1C4F00218();

  if (v71)
  {
    v57 = v23;
    v58 = v21;
    v66 = v3;
    v28 = v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_config;
    v29 = *(v28 + *(type metadata accessor for Configuration(0) + 20));
    if (qword_1EDDFEC70 != -1)
    {
      sub_1C43FFFAC();
      v56 = v55;
      swift_once();
      v29 = v56;
    }

    sub_1C43FC158(xmmword_1EDDFEC78, v29);
    if (v30)
    {
      if (*(v66 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore))
      {

        *&v31 = COERCE_DOUBLE(sub_1C482E5F0(v67, v6, v62, object));
        v33 = v32;

        v34 = v58;
        if (v33)
        {
          v35 = *(v66 + 16);
        }

        else
        {
          v35 = *&v31;
        }

LABEL_24:
        v53 = v57;
        v68 = v35;

        sub_1C4F00228();

        (*(v53 + 8))(v27, v34);
        return v35;
      }

      sub_1C4F00148();
      v45 = sub_1C4F00968();
      v46 = sub_1C4F01CD8();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v58;
      if (v47)
      {
        *swift_slowAlloc() = 0;
        sub_1C440BAE8(&dword_1C43F8000, v49, v50, "ConfidenceService: GlobalKnowledgeStore unavailable");
        sub_1C43FBE2C();
      }

      (*(v60 + 8))(v20, v61);
      (*(v57 + 8))(v27, v48);
      return *(v66 + 16);
    }

    else
    {
      v36 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceTrie;
      v37 = v66;
      swift_beginAccess();
      sub_1C4689548(v37 + v36, v10);
      v38 = v65;
      if (sub_1C44157D4(v10, 1, v65) != 1)
      {
        (*(v64 + 32))(v63, v10, v38);
        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        v44 = swift_allocObject();
        if (object)
        {
          *(v44 + 16) = xmmword_1C4F0CE60;
          *(v44 + 32) = v67;
          *(v44 + 40) = v6;
          *(v44 + 48) = v62;
          *(v44 + 56) = object;
        }

        else
        {
          *(v44 + 16) = xmmword_1C4F0D130;
          *(v44 + 32) = v67;
          *(v44 + 40) = v6;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v51 = v63;
        sub_1C4EFC7B8();

        (*(v64 + 8))(v51, v38);
        if (v69)
        {
          v52 = (v37 + 16);
        }

        else
        {
          v52 = &v68;
        }

        v35 = *v52;
        v34 = v58;
        goto LABEL_24;
      }

      sub_1C4423A0C(v10, &qword_1EC0BACC0, &qword_1C4F17070);
      v39 = v59;
      sub_1C4F00148();
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CD8();
      if (os_log_type_enabled(v40, v41))
      {
        *swift_slowAlloc() = 0;
        sub_1C440BAE8(&dword_1C43F8000, v42, v43, "ConfidenceService: ConfidenceTrie unavailable");
        sub_1C43FBE2C();
      }

      (*(v60 + 8))(v39, v61);
      (*(v57 + 8))(v27, v58);
      return *(v37 + 16);
    }
  }

  else
  {
    v35 = v70;
    (*(v23 + 8))(v27, v21);
  }

  return v35;
}

uint64_t sub_1C4689020(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C4F00978();
  sub_1C43FCDF8();
  v27[1] = v6;
  v28.i64[0] = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  sub_1C456902C(&qword_1EC0BACC0, &qword_1C4F17070);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  *(v2 + 16) = 0x3FE999999999999ALL;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore) = 0;
  v17 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceTrie;
  v18 = sub_1C456902C(&qword_1EC0BACC8, &unk_1C4F17078);
  sub_1C440BAA8(v2 + v17, 1, 1, v18);
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_config);
  sub_1C456902C(&qword_1EC0BACD0, &qword_1C4F170D8);
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceCache) = sub_1C4F00248();
  type metadata accessor for GlobalKnowledgeStore(0);
  sub_1C44098F0(a1, v16);
  v19 = sub_1C48300AC(v16);
  v20 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_globalKnowledgeStore) = v19;

  v21 = *(a1 + *(v13 + 20));
  if (qword_1EDDFEC70 != -1)
  {
    sub_1C43FFFAC();
    v28 = v26;
    swift_once();
    v21 = v28;
  }

  sub_1C43FC158(xmmword_1EDDFEC78, v21);
  if ((v22 & 1) != 0 || !*(v3 + v20))
  {
    sub_1C4467948(a1);
  }

  else
  {
    v23 = type metadata accessor for Source(0);
    sub_1C440BAA8(v9, 1, 1, v23);

    sub_1C482BA74(v12);

    sub_1C4467948(a1);
    sub_1C4423A0C(v9, &unk_1EC0C0760, &qword_1C4F170D0);
    v24 = OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceTrie;
    swift_beginAccess();
    sub_1C4689778(v12, v3 + v24);
    swift_endAccess();
  }

  return v3;
}

uint64_t ConfidenceService.deinit()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_config);

  sub_1C4423A0C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17ConfidenceService_confidenceTrie, &qword_1EC0BACC0, &qword_1C4F17070);

  return v0;
}

uint64_t ConfidenceService.__deallocating_deinit()
{
  ConfidenceService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4689520@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a3 & result;
  a5[1] = a4 & a2;
  return result;
}

uint64_t sub_1C4689548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BACC0, &qword_1C4F17070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ConfidenceService(uint64_t a1)
{
  result = qword_1EDDF5300;
  if (!qword_1EDDF5300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C468960C(uint64_t a1)
{
  type metadata accessor for Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_1C4689714(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C4689714(uint64_t a1)
{
  if (!qword_1EDDFA250)
  {
    sub_1C4572308(&qword_1EC0BACC8, &unk_1C4F17078);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFA250);
    }
  }
}

uint64_t sub_1C4689778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BACC0, &qword_1C4F17070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4689844()
{
  sub_1C4425000();
  switch(v0)
  {
    case 5:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
    case 6:
      sub_1C43FC174();
      sub_1C440CB64();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468994C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      sub_1C4410238();
      break;
    case 7:
      sub_1C4416008();
      break;
    case 8:
      sub_1C440C414();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C4689AEC()
{
  sub_1C44149B8();
  sub_1C4F01298();
}

uint64_t sub_1C4689B80(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      sub_1C43FC174();
      sub_1C4404DE4();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C4689D4C()
{
  sub_1C4404208();
  switch(v0)
  {
    case 2:
    case 3:
      sub_1C43FC174();
      break;
    case 4:
      sub_1C4426AA0();
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C4689E1C()
{
  sub_1C4425000();
  switch(v0)
  {
    case 1:
    case 3:
      sub_1C43FC174();
      break;
    case 4:
      sub_1C4416008();
      break;
    case 5:
      sub_1C440C414();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C4689F28()
{
  sub_1C440BC1C();
  sub_1C4F01298();
}

uint64_t sub_1C4689FD8()
{
  sub_1C442FCA8();
  sub_1C441E2C4();
  switch(v0)
  {
    case 2:
      sub_1C4404208();
      break;
    case 3:
      sub_1C441F690();
      break;
    case 4:
      sub_1C43FC174();
      sub_1C4426AA0();
      break;
    case 5:
      sub_1C4425A40();
      break;
    case 6:
      sub_1C4410AB0();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468A08C(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468A14C()
{
  sub_1C440879C();
  switch(v0)
  {
    case 1:
      sub_1C4433260();
      break;
    case 2:
      sub_1C441F690();
      break;
    case 3:
      sub_1C43FC174();
      sub_1C4426AA0();
      break;
    case 4:
      sub_1C4425A40();
      break;
    case 6:
      sub_1C440E034();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468A20C(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468A27C()
{
  sub_1C440BC1C();
  switch(v0)
  {
    case 1:
      sub_1C4415930();
      break;
    case 3:
      sub_1C440D238();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468A324()
{
  sub_1C441C1C0();
  sub_1C4F01298();
}

uint64_t sub_1C468A470(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468A4D0(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468A574()
{
  sub_1C441C1C0();
  sub_1C4F01298();
}

uint64_t sub_1C468A644(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468A6B4()
{
  sub_1C44149B8();
  sub_1C4F01298();
}

uint64_t sub_1C468A728(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468A860(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1C4404208();
  }

  sub_1C4F01298();
}

uint64_t sub_1C468A8EC()
{
  sub_1C442FCA8();
  sub_1C441B82C();
  sub_1C4F01298();
}

uint64_t sub_1C468AA4C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468AAD0()
{
  sub_1C4415930();
  switch(v0)
  {
    case 1:
      sub_1C440D238();
      break;
    case 2:
      sub_1C4410AB0();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468AB90()
{
  sub_1C440879C();
  switch(v0)
  {
    case 1:
      sub_1C4433260();
      break;
    case 2:
      sub_1C441F690();
      break;
    case 3:
      sub_1C43FC174();
      sub_1C4426AA0();
      break;
    case 4:
      sub_1C4425A40();
      break;
    case 5:
    case 6:
      sub_1C440D238();
      break;
    case 7:
      sub_1C440E034();
      break;
    case 8:
      sub_1C443FB80();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468AC4C()
{
  sub_1C441C1C0();
  sub_1C440D238();
  switch(v0)
  {
    case 2:
      sub_1C4409B7C();
      break;
    case 3:
      sub_1C4404208();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468AD08()
{
  sub_1C4425000();
  sub_1C4F01298();
}

uint64_t sub_1C468ADF0()
{
  sub_1C442FCA8();
  sub_1C441E2C4();
  switch(v0)
  {
    case 1:
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468AEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  sub_1C442BA34(v3, v4);
}

uint64_t sub_1C468AF08()
{
  sub_1C440879C();
  switch(v0)
  {
    case 1:
      sub_1C4433260();
      break;
    case 2:
      sub_1C441F690();
      break;
    case 3:
      sub_1C43FC174();
      break;
    case 4:
      sub_1C4425A40();
      break;
    case 5:
      sub_1C440D238();
      break;
    case 6:
      sub_1C4410AB0();
      break;
    case 7:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
    case 8:
      sub_1C440E034();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468B054()
{
  sub_1C4425000();
  sub_1C4F01298();
}

uint64_t sub_1C468B114()
{
  sub_1C4425000();
  switch(v0)
  {
    case 1:
    case 3:
    case 4:
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468B22C(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468B2B0(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468B310()
{
  sub_1C44149B8();
  sub_1C4F01298();
}

uint64_t sub_1C468B3CC()
{
  sub_1C442FCA8();
  switch(v0)
  {
    case 2:
      sub_1C4409B7C();
      break;
    case 3:
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468B478(uint64_t a1, unsigned __int8 a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468B514(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468B59C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468B630()
{
  sub_1C442FCA8();
  sub_1C441B82C();
  sub_1C4F01298();
}

uint64_t sub_1C468B6CC(uint64_t a1, char a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468B74C()
{
  sub_1C441C1C0();
  switch(v0)
  {
    case 4:
    case 5:
      break;
    default:
      sub_1C43FC174();
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468B834(uint64_t a1, unsigned __int8 a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468B8E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  sub_1C442BA34(v3, v4);
}

uint64_t sub_1C468B924()
{
  sub_1C442FCA8();
  switch(v0)
  {
    case 5:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
    case 6:
      sub_1C43FC174();
      sub_1C440CB64();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468BA44()
{
  sub_1C442FCA8();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      break;
    case 4:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
    case 5:
      sub_1C4409B7C();
      break;
    default:
      sub_1C43FC174();
      sub_1C440CB64();
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468BB14(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1C43FC174();
      sub_1C440CB64();
      break;
    case 2:
    case 3:
    case 4:
      break;
    default:
      sub_1C4404DE4();
      sub_1C43FC174();
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468BBF4(uint64_t a1, unsigned __int8 a2)
{
  sub_1C4F01298();
}

uint64_t sub_1C468BC78(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      sub_1C43FC174();
      break;
    default:
      break;
  }

  sub_1C4F01298();
}

uint64_t sub_1C468BD90(uint64_t a1, char a2)
{
  v2 = sub_1C47E1854(a2 & 1);
  sub_1C442BA34(v2, v3);
}

uint64_t sub_1C468BDD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a3 | result;
  a5[1] = a4 | a2;
  return result;
}

uint64_t sub_1C468BDE0()
{
  v1 = *(v0 + *(type metadata accessor for Configuration(0) + 20));
  if (qword_1EDDFEC70 != -1)
  {
    sub_1C43FFFAC();
    v5 = v4;
    swift_once();
    v1 = v5;
  }

  sub_1C43FC158(xmmword_1EDDFEC78, v1);
  if (v2)
  {
    return 200;
  }

  else
  {
    return 2000;
  }
}

uint64_t Configuration.baseURL.getter()
{
  sub_1C44059B8();
  v2 = sub_1C4EF98F8();
  v3 = *(*(v2 - 8) + 16);

  return v3(v0, v1, v2);
}

__n128 Configuration.options.getter()
{
  v2 = sub_1C44059B8();
  result = *(v1 + *(type metadata accessor for Configuration(v2) + 20));
  *v0 = result;
  return result;
}

uint64_t Configuration.init(baseURL:options:overrideFeatureFlagOptions:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_1C4EF98F8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  if (a2)
  {
    result = sub_1C4F024A8();
    __break(1u);
  }

  else
  {
    static Features.optionsForEnabledFeatures.getter(&v10);
    (*(v7 + 8))(a1, v6);
    v8 = sub_1C442DE2C();
    return sub_1C44320F0(v8);
  }

  return result;
}

BOOL static Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EF98B8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Configuration(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t Configuration.hash(into:)(uint64_t a1)
{
  sub_1C4EF98F8();
  sub_1C440A864();
  sub_1C468D25C(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v4 = (v1 + *(type metadata accessor for Configuration(0) + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  return MEMORY[0x1C69417F0](v5);
}

uint64_t Configuration.hashValue.getter()
{
  sub_1C4F02AF8();
  sub_1C4EF98F8();
  sub_1C440A864();
  sub_1C468D25C(v1, v2, MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v3 = (v0 + *(type metadata accessor for Configuration(0) + 20));
  v4 = v3[1];
  MEMORY[0x1C69417F0](*v3);
  MEMORY[0x1C69417F0](v4);
  return sub_1C4F02B68();
}

uint64_t sub_1C468C1BC(uint64_t a1, uint64_t a2)
{
  sub_1C4F02AF8();
  sub_1C4EF98F8();
  sub_1C468D25C(&qword_1EDDFFA00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C4F00FE8();
  v4 = (v2 + *(a2 + 20));
  v5 = v4[1];
  MEMORY[0x1C69417F0](*v4);
  MEMORY[0x1C69417F0](v5);
  return sub_1C4F02B68();
}

uint64_t static Configuration.intelligenceplatformd.getter()
{
  sub_1C44059B8();
  sub_1C4EF98F8();
  sub_1C442C678();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440E01C();
  if (qword_1EDDFEC70 != -1)
  {
    sub_1C43FFFAC();
    swift_once();
  }

  v9 = xmmword_1EDDFEC78;
  if (qword_1EDDFFA78 != -1)
  {
    sub_1C4416F34(&qword_1EDDFFA78);
  }

  v10 = xmmword_1EDDFFA80;
  if (qword_1EDDFEBA0 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1EDDFEBA8;
  if (qword_1EDDFCFF8 != -1)
  {
    swift_once();
  }

  v12 = xmmword_1EDDFD000;
  if (qword_1EDDFFA40 != -1)
  {
    sub_1C4402E14(&qword_1EDDFFA40);
  }

  v13 = xmmword_1EDDFFA48;
  if (qword_1EDDFEBB8 != -1)
  {
    swift_once();
  }

  v14 = xmmword_1EDDFEBC0;
  if (qword_1EDDFEC48 != -1)
  {
    sub_1C441C8DC(&qword_1EDDFEC48);
  }

  sub_1C4412EB0();
  v15 = xmmword_1EDDFEC50;
  do
  {
    sub_1C44119E0();
  }

  while (v1 != 96);
  sub_1C4F001A8();
  v2 = sub_1C4406994();
  v3(v2);
  static Features.optionsForEnabledFeatures.getter(&v8);
  v4 = sub_1C440F45C();
  v5(v4);
  v6 = sub_1C442DE2C();
  return sub_1C44320F0(v6);
}

uint64_t static Configuration.biomed.getter()
{
  sub_1C44059B8();
  sub_1C4EF98F8();
  sub_1C442C678();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440E01C();
  if (qword_1EDDFEC70 != -1)
  {
    sub_1C43FFFAC();
    swift_once();
  }

  v9 = xmmword_1EDDFEC78;
  if (qword_1EDDF0C88 != -1)
  {
    swift_once();
  }

  v10 = xmmword_1EDDF0C90[0];
  if (qword_1EDDFEC10 != -1)
  {
    sub_1C43FD3C4(&qword_1EDDFEC10);
  }

  sub_1C4412EB0();
  v11 = xmmword_1EDDFEC18;
  do
  {
    sub_1C44119E0();
  }

  while (v1 != 32);
  sub_1C4F001A8();
  v2 = sub_1C4406994();
  v3(v2);
  static Features.optionsForEnabledFeatures.getter(&v8);
  v4 = sub_1C440F45C();
  v5(v4);
  v6 = sub_1C442DE2C();
  return sub_1C44320F0(v6);
}

uint64_t static Configuration.intelligencePlatformComputeServiceMemoryReduction.getter()
{
  sub_1C44059B8();
  sub_1C4EF98F8();
  sub_1C442C678();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440E01C();
  if (qword_1EDDFA610 != -1)
  {
    sub_1C4434F24(&qword_1EDDFA610);
  }

  v9 = xmmword_1EDDFA618;
  if (qword_1EDDFEC60 != -1)
  {
    sub_1C43FC180(&qword_1EDDFEC60);
  }

  v10 = xmmword_1EDDFFAE0;
  if (qword_1EDDFEC28 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1EDDFEC30;
  if (qword_1EDDFEC48 != -1)
  {
    sub_1C441C8DC(&qword_1EDDFEC48);
  }

  v12 = xmmword_1EDDFEC50;
  if (qword_1EDDFEC10 != -1)
  {
    sub_1C43FD3C4(&qword_1EDDFEC10);
  }

  sub_1C4412EB0();
  v13 = xmmword_1EDDFEC18;
  do
  {
    sub_1C44119E0();
  }

  while (v1 != 64);
  sub_1C4F001A8();
  v2 = sub_1C4406994();
  v3(v2);
  static Features.optionsForEnabledFeatures.getter(&v8);
  v4 = sub_1C440F45C();
  v5(v4);
  v6 = sub_1C442DE2C();
  return sub_1C44320F0(v6);
}

uint64_t static Configuration.knowledgeconstructiond.getter()
{
  sub_1C44059B8();
  sub_1C4EF98F8();
  sub_1C442C678();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440E01C();
  if (qword_1EDDFFA78 != -1)
  {
    sub_1C4416F34(&qword_1EDDFFA78);
  }

  v17[0] = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    sub_1C4402E14(&qword_1EDDFFA40);
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v17[1] = xmmword_1EDDFFA48;
  do
  {
    v5 = v3;
    v6 = &v17[v4];
    v8 = *v6;
    v7 = v6[1];
    if ((v8 & ~v1) != 0 || (v7 & v2) != v7)
    {
      v1 |= v8;
      v2 |= v7;
    }

    v3 = 1;
    v4 = 1;
  }

  while ((v5 & 1) == 0);
  sub_1C4F001A8();
  v10 = sub_1C4406994();
  v11(v10);
  static Features.optionsForEnabledFeatures.getter(&v16);
  v12 = sub_1C440F45C();
  v13(v12);
  v14 = type metadata accessor for Configuration(0);
  return sub_1C44320F0(v14);
}

uint64_t static Configuration.iptool.getter()
{
  sub_1C44059B8();
  sub_1C4EF98F8();
  sub_1C442C678();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440E01C();
  sub_1C4F001A8();
  v1 = sub_1C4406994();
  v2(v1);
  static Features.optionsForEnabledFeatures.getter(&v7);
  v3 = sub_1C440F45C();
  v4(v3);
  v5 = type metadata accessor for Configuration(0);
  return sub_1C44320F0(v5);
}

uint64_t static Configuration.noOperation.getter()
{
  sub_1C44059B8();
  sub_1C4EF98F8();
  sub_1C442C678();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440E01C();
  if (qword_1EDDFEC88 != -1)
  {
    swift_once();
  }

  sub_1C4F001A8();
  v1 = sub_1C4406994();
  v2(v1);
  static Features.optionsForEnabledFeatures.getter(&v7);
  v3 = sub_1C440F45C();
  v4(v3);
  v5 = type metadata accessor for Configuration(0);
  return sub_1C44320F0(v5);
}

BOOL Configuration.isFlagEnabled(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_1C4409678(a1, v2);

  return sub_1C468D0D8(v4, v1, v2, v3);
}

unint64_t Configuration.description.getter()
{
  sub_1C4F02248();

  sub_1C4EF98F8();
  sub_1C440A864();
  sub_1C468D25C(v0, v1, MEMORY[0x1E6968FE0]);
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](3826464, 0xE300000000000000);
  type metadata accessor for Configuration(0);
  v3 = Options.description.getter();
  MEMORY[0x1C6940010](v3);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000011;
}

BOOL sub_1C468D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (a2 + *(type metadata accessor for Configuration(0) + 20));
  v12 = *v11;
  v13 = v11[1];
  (*(a4 + 8))(v16, a3, a4);
  v14 = (v16[0] & ~v12 | v16[1] & ~v13) == 0;
  (*(v7 + 8))(v10, a3);
  return v14;
}

uint64_t sub_1C468D25C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ContactHandleBlockingFunction.init(predicates:relationshipPredicates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *sub_1C468D2EC(void *a1, uint64_t a2, uint64_t *a3)
{
  v62 = a3;
  v59 = a1;
  v63 = sub_1C456902C(&qword_1EC0BACF0, &unk_1C4F23190);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v52 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v52 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v60 = v8 + 8;
  v14 = (v11 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v53 = a2;
  while (v13)
  {
LABEL_8:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = *(a2 + 48);
    v19 = sub_1C4EFF8A8();
    v20 = *(v19 - 8);
    v21 = v20;
    v22 = v18 + *(v20 + 72) * v17;
    v23 = *(v20 + 16);
    v24 = v65;
    v64 = v19;
    v23(v65, v22);
    v25 = (*(a2 + 56) + 16 * v17);
    v26 = *v25;
    v27 = v25[1];
    v28 = (v24 + *(v63 + 48));
    *v28 = v26;
    v28[1] = v27;
    v29 = v24;
    v30 = v61;
    sub_1C468FA10(v29, v61);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v31 = *v62;
    if (*(*v62 + 16) && (sub_1C457AC78(), (v33 & 1) != 0))
    {
      v57 = *(*(v31 + 56) + v32);
      v54 = *(v21 + 8);
      v54(v30, v64);
      v34 = v58;
      sub_1C468FA10(v65, v58);
      v35 = (v34 + *(v63 + 48));
      v37 = *v35;
      v36 = v35[1];
      v38 = v59;
      swift_isUniquelyReferenced_nonNull_native();
      v66 = v38;
      v55 = v37;
      v56 = v36;
      v39 = sub_1C445FAA8(v37, v36);
      if (__OFADD__(v38[2], (v40 & 1) == 0))
      {
        goto LABEL_25;
      }

      v41 = v39;
      LODWORD(v59) = v40;
      sub_1C456902C(&qword_1EC0BACF8, &qword_1C4F17410);
      if (sub_1C4F02458())
      {
        v42 = v56;
        v43 = sub_1C445FAA8(v55, v56);
        v45 = v59;
        if ((v59 & 1) != (v44 & 1))
        {
          goto LABEL_27;
        }

        v41 = v43;
      }

      else
      {
        v42 = v56;
        v45 = v59;
      }

      v46 = v66;
      v59 = v66;
      if (v45)
      {
        *(v66[7] + v41) = v57;
      }

      else
      {
        v66[(v41 >> 6) + 8] |= 1 << v41;
        v47 = (v46[6] + 16 * v41);
        *v47 = v55;
        v47[1] = v42;
        *(v46[7] + v41) = v57;
        v48 = v46[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_26;
        }

        v46[2] = v50;
      }

      v54(v58, v64);
      a2 = v53;
    }

    else
    {
      (*(v21 + 8))(v30, v64);
    }

    v13 &= v13 - 1;
    sub_1C4420C3C(v65, &qword_1EC0BACF0, &unk_1C4F23190);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return v59;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C468D728(uint64_t a1, void *a2, void *a3)
{
  v64 = a3;
  v67 = a2;
  v70 = sub_1C4EFF8A8();
  v4 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFEEF8();
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v59 - v9;
  v10 = 0;
  v71 = (v11 + 8);
  v68 = *(a1 + 16);
  v65 = (v4 + 16);
  v66 = v12;
  v60 = (v4 + 8);
  v61 = v4;
  v62 = a1;
  while (v68 != v10)
  {
    v13 = type metadata accessor for GraphTriple(0);
    v14 = a1 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80));
    v15 = *(*(v13 - 8) + 72);
    v72 = v10;
    v16 = v14 + v15 * v10;
    sub_1C4EFE808();
    sub_1C468FA80(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v75 == v73 && v76 == v74)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1C4F02938();
    }

    v19 = *v71;
    (*v71)(v77, v6);
    if (v18)
    {
      v20 = *(v13 + 24);
      v21 = (v16 + *(v13 + 32));
      v22 = *v21;
      v23 = v21[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = v67;
      swift_isUniquelyReferenced_nonNull_native();
      v25 = *v24;
      v75 = v25;
      sub_1C457AC78();
      if (__OFADD__(v25[2], (v27 & 1) == 0))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        sub_1C4F029F8();
        __break(1u);
        return;
      }

      v28 = v26;
      v29 = v27;
      sub_1C456902C(&qword_1EC0BA710, &unk_1C4F17420);
      if (sub_1C4F02458())
      {
        sub_1C457AC78();
        v6 = v66;
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_45;
        }

        v28 = v30;
      }

      else
      {
        v6 = v66;
      }

      v51 = v75;
      if (v29)
      {
        v52 = (v75[7] + 16 * v28);
        *v52 = v22;
        v52[1] = v23;
      }

      else
      {
        v75[(v28 >> 6) + 8] |= 1 << v28;
        (*(v61 + 16))(v51[6] + *(v61 + 72) * v28, v16 + v20, v70);
        v53 = (v51[7] + 16 * v28);
        *v53 = v22;
        v53[1] = v23;
        v54 = v51[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_43;
        }

        v51[2] = v56;
      }

      *v67 = v51;
      a1 = v62;
    }

    else
    {
      v32 = v63;
      sub_1C4EFE878();
      v33 = v32;
      sub_1C4F01578();
      sub_1C4F01578();
      if (v75 == v73 && v76 == v74)
      {

        v19(v32, v6);
      }

      else
      {
        v35 = sub_1C4F02938();

        v19(v33, v6);
        if ((v35 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v36 = *v65;
      (*v65)(v69, v16 + *(v13 + 24), v70);
      v37 = (v16 + *(v13 + 32));
      v39 = *v37;
      v38 = v37[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v40 = sub_1C468DD94(v39, v38);
      if (v40 == 11)
      {
        v41 = 10;
      }

      else
      {
        v41 = v40;
      }

      v42 = v64;
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *v42;
      v75 = v43;
      sub_1C457AC78();
      if (__OFADD__(v43[2], (v45 & 1) == 0))
      {
        goto LABEL_42;
      }

      v46 = v44;
      v47 = v45;
      sub_1C456902C(&qword_1EC0BAD00, &qword_1C4F17418);
      if (sub_1C4F02458())
      {
        sub_1C457AC78();
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_45;
        }

        v46 = v48;
      }

      v50 = v75;
      if (v47)
      {
        *(v75[7] + v46) = v41;
      }

      else
      {
        v75[(v46 >> 6) + 8] |= 1 << v46;
        v36((v50[6] + *(v61 + 72) * v46), v69, v70);
        *(v50[7] + v46) = v41;
        v57 = v50[2];
        v55 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v55)
        {
          goto LABEL_44;
        }

        v50[2] = v58;
      }

      *v64 = v50;
      (*v60)(v69, v70);
      v6 = v66;
    }

LABEL_39:
    v10 = v72 + 1;
  }
}

unint64_t sub_1C468DD94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C468DDE0(char a1)
{
  result = 0x746E65726170;
  switch(a1)
  {
    case 1:
      result = 0x646C696863;
      break;
    case 2:
      result = 0x726170646E617267;
      break;
    case 3:
      result = 0x696863646E617267;
      break;
    case 4:
      result = 0x676E696C626973;
      break;
    case 5:
      result = 0x646E65697266;
      break;
    case 6:
      result = 0x6573756F7073;
      break;
    case 7:
      v3 = 0x656E74726170;
      goto LABEL_8;
    case 8:
      result = 0x6E61747369737361;
      break;
    case 9:
      v3 = 0x6567616E616DLL;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      break;
    case 10:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C468DF20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C468DD94(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C468DF50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C468DDE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C468DF8C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_store) = a3;
  return v3;
}

uint64_t sub_1C468DFF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal____lazy_storage___featureNames);
  if (v1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v32 = OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal____lazy_storage___featureNames;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, 11, 0);
    v2 = 0;
    v3 = v33;
    sub_1C440F46C();
    sub_1C4416F54();
    sub_1C4402E34();
    sub_1C44087BC();
    sub_1C43FD3E4();
    sub_1C44119FC();
    do
    {
      v14 = 0xE600000000000000;
      v15 = 0x746E65726170;
      switch(byte_1F43D8240[v2 + 32])
      {
        case 1:
          v14 = 0xE500000000000000;
          v15 = v7;
          break;
        case 2:
          v15 = v9;
          v14 = v8;
          break;
        case 3:
          v14 = 0xEA0000000000646CLL;
          v15 = v10;
          break;
        case 4:
          v14 = 0xE700000000000000;
          v15 = v11;
          break;
        case 5:
          v15 = v12;
          break;
        case 6:
          v15 = v13;
          break;
        case 7:
          v14 = 0xE700000000000000;
          v15 = v4;
          break;
        case 8:
          v14 = 0xE900000000000074;
          v15 = v5;
          break;
        case 9:
          v14 = 0xE700000000000000;
          v15 = v6;
          break;
        case 0xA:
          v14 = 0xE500000000000000;
          v15 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v34 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = sub_1C43FCFE8(v16);
        v21 = v20;
        sub_1C44CD9C0(v19, v17 + 1, 1);
        sub_1C44119FC();
        sub_1C43FD3E4();
        sub_1C44087BC();
        sub_1C4402E34();
        sub_1C4416F54();
        sub_1C440F46C();
        v8 = v21;
        v7 = 0x646C696863;
        v3 = v34;
      }

      ++v2;
      *(v3 + 16) = v17 + 1;
      v18 = v3 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
    }

    while (v2 != 11);
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v17 + 1, 0);
    v22 = v17 + 1;
    v23 = v3 + 40;
    do
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      sub_1C4412EC8();
      v35 = v24;
      sub_1C4410ACC();
      v36 = v25;
      sub_1C4415EA8();
      v26 = sub_1C4F01FD8();
      MEMORY[0x1C6940010](v26);

      v28 = *(v37 + 16);
      v27 = *(v37 + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = sub_1C43FCFE8(v27);
        sub_1C44CD9C0(v30, v28 + 1, 1);
      }

      *(v37 + 16) = v28 + 1;
      v29 = v37 + 16 * v28;
      *(v29 + 32) = v35;
      *(v29 + 40) = v36;
      v23 += 16;
      --v22;
    }

    while (v22);

    v1 = sub_1C4499940();
    *(v0 + v32) = v1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v1;
}

uint64_t sub_1C468E340()
{
  v185 = type metadata accessor for GraphTriple(0);
  sub_1C43FCDF8();
  v164 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v184 = v5 - v4;
  v169 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v186 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C43FCE30(v9 - v8);
  v10 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FCE30(&v153 - v11);
  v168 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v176 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FCE30(&v153 - v18);
  v183 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v171 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v179 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  sub_1C43FCE30(v28 - v27);
  v29 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v153 - v30;
  v32 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  v170 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_store);
  sub_1C486DFC0();
  sub_1C4868198();

  v178 = v32;
  if (sub_1C44157D4(v31, 1, v32) == 1)
  {
    return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v162 = v1;
  v163 = v0;
  v167 = v34;
  v40 = *(v34 + 32);
  v166 = v38;
  v40(v38, v31, v178);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v41 = *(sub_1C4EFEEF8() - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  v177 = xmmword_1C4F0D130;
  *(v43 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE638();
  sub_1C4D504A4();
  v158 = v44;
  v155 = sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  sub_1C442C690(inited);
  sub_1C4EFD318();
  v46 = sub_1C4EFD2F8();
  v48 = v47;
  (*(v20 + 8))(v24, v183);
  inited[2].n128_u64[0] = v46;
  inited[2].n128_u64[1] = v48;
  sub_1C448DE08();
  v183 = v49;
  v50 = swift_allocObject();
  sub_1C442C690(v50);
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v52 = v51;
  v53 = *MEMORY[0x1E69A95C0];
  v54 = v176;
  v56 = v176 + 104;
  v55 = *(v176 + 104);
  v57 = v168;
  (v55)(v182, *MEMORY[0x1E69A95C0], v168);
  v58 = v172;
  sub_1C4432100();
  v55();
  sub_1C440D248(v194);
  sub_1C4432100();
  v55();
  sub_1C4432100();
  v55();
  v59 = v174;
  v161 = v53;
  sub_1C4432100();
  v160 = v56;
  v159 = v55;
  v55();
  v151 = v59;
  v152 = v52;
  v60 = v180;
  sub_1C4EFDCD8();

  v61 = *(v54 + 8);
  v61(v59, v57);
  v61(v60, v57);
  v61(v42, v57);
  v61(v58, v57);
  v158 = v61;
  v61(v182, v57);
  sub_1C4EFF8F8();
  v62 = sub_1C440D248(&v195);
  v157 = v63;
  sub_1C440BAA8(v62, 1, 1, v63);
  v64 = v181;
  v65 = sub_1C498DB80();
  sub_1C4420C3C(v42, &qword_1EC0BAA00, &unk_1C4F17400);
  v66 = *(v179 + 8);
  v179 += 8;
  v156 = v66;
  v66(v64, v171);
  v67 = v65[2];
  v68 = v54 + 8;
  v69 = v180;
  v154 = v65;
  if (v67)
  {
    v176 = v68;
    v189 = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v70 = v189;
    v71 = v65 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v183 = *(v164 + 72);
    v72 = (v186 + 2);
    v73 = v169;
    v74 = v165;
    do
    {
      v75 = v184;
      sub_1C449EE28(v71, v184, type metadata accessor for GraphTriple);
      (*v72)(v74, v75 + *(v185 + 24), v73);
      sub_1C449F17C(v75, type metadata accessor for GraphTriple);
      v189 = v70;
      v77 = *(v70 + 16);
      v76 = *(v70 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1C43FCFE8(v76);
        sub_1C459D120();
        v70 = v189;
      }

      *(v70 + 16) = v77 + 1;
      (v186[4])(v70 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + v186[9] * v77, v74, v73);
      v71 += v183;
      --v67;
    }

    while (v67);
    v78 = v178;
    v57 = v168;
    v69 = v180;
  }

  else
  {
    v78 = v178;
  }

  sub_1C459740C();
  v176 = v79;
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v80 = v167;
  v81 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v82 = swift_allocObject();
  v83 = sub_1C442C690(v82);
  (*(v80 + 16))(v84 + v81, v166, v78, v83);
  sub_1C4D51ABC();
  v186 = v85;
  sub_1C440A87C();
  v86 = v159;
  v159();
  sub_1C440D248(v193);
  sub_1C440A87C();
  v86();
  v87 = v173;
  sub_1C440A87C();
  v86();
  sub_1C440A87C();
  v86();
  v88 = v174;
  sub_1C440A87C();
  v86();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v151 = v88;
  v152 = 0;
  v89 = v182;
  sub_1C4EFDCD8();

  v90 = v88;
  v91 = v158;
  v158(v90, v57);
  v91(v69, v57);
  v91(v87, v57);
  v91(v80, v57);
  v91(v89, v57);
  v92 = v175;
  sub_1C440BAA8(v175, 1, 1, v157);
  sub_1C440D248(&v197);
  v93 = sub_1C498DB80();
  sub_1C4420C3C(v92, &qword_1EC0BAA00, &unk_1C4F17400);
  v156(v80, v171);
  sub_1C468FA80(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
  v94 = MEMORY[0x1E69E7CC0];
  v196 = sub_1C4F00F28();
  v192 = sub_1C4F00F28();
  v95 = v162;
  sub_1C468D728(v93, &v196, &v192);
  v96 = v196;
  v97 = sub_1C4F00F28();
  v179 = v96;
  v98 = sub_1C468D2EC(v97, v96, &v192);
  v175 = v95;
  v99 = v98[2];
  if (v99)
  {
    v174 = v93;
    v191 = v94;
    sub_1C459D768(0, v99, 0);
    v100 = v191;
    v101 = sub_1C4703354();
    LODWORD(v94) = v102;
    v104 = v103;
    v182 = v98 + 8;
    v181 = objc_opt_self();
    v105 = *(v163 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config + 8);
    v180 = *(v163 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config);
    v186 = v105;
    while ((v101 & 0x8000000000000000) == 0 && v101 < 1 << *(v98 + 32))
    {
      if (((*(v182 + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
      {
        goto LABEL_40;
      }

      if (*(v98 + 9) != v94)
      {
        goto LABEL_41;
      }

      LODWORD(v184) = v104;
      v185 = v100;
      v106 = v98[7];
      v107 = (v98[6] + 16 * v101);
      v108 = v107[1];
      v183 = *v107;
      v109 = *(v106 + v101);
      v189 = 0;
      v190 = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      sub_1C4412EC8();
      v189 = v110;
      sub_1C4410ACC();
      v190 = v111;
      v112 = 0xE600000000000000;
      v113 = 0x746E65726170;
      switch(v109)
      {
        case 1:
          v112 = 0xE500000000000000;
          v113 = 0x646C696863;
          break;
        case 2:
          v113 = 0x726170646E617267;
          v112 = 0xEB00000000746E65;
          break;
        case 3:
          v112 = 0xEA0000000000646CLL;
          v113 = 0x696863646E617267;
          break;
        case 4:
          v112 = 0xE700000000000000;
          v113 = 0x676E696C626973;
          break;
        case 5:
          v113 = 0x646E65697266;
          break;
        case 6:
          v113 = 0x6573756F7073;
          break;
        case 7:
          v112 = 0xE700000000000000;
          v114 = 0x656E74726170;
          goto LABEL_23;
        case 8:
          v112 = 0xE900000000000074;
          v113 = 0x6E61747369737361;
          break;
        case 9:
          v112 = 0xE700000000000000;
          v114 = 0x6567616E616DLL;
LABEL_23:
          v113 = v114 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 10:
          v112 = 0xE500000000000000;
          v113 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v187 = v113;
      v188 = v112;
      sub_1C4415EA8();
      v115 = sub_1C4F01FD8();
      v117 = v116;

      MEMORY[0x1C6940010](v115, v117);

      v118 = v189;
      v119 = v190;
      objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v120 = sub_1C4673B1C(v180, v186, v118, v119, v183, v108);
      v121 = [v181 featureValueWithInt64_];

      v100 = v185;
      v191 = v185;
      v123 = *(v185 + 16);
      v122 = *(v185 + 24);
      if (v123 >= v122 >> 1)
      {
        v127 = sub_1C43FCFE8(v122);
        sub_1C459D768(v127, v123 + 1, 1);
        v100 = v191;
      }

      *(v100 + 16) = v123 + 1;
      v124 = v100 + 16 * v123;
      *(v124 + 32) = v120;
      *(v124 + 40) = v121;
      v101 = sub_1C468F990(v101, v94, v184 & 1, v98);
      v94 = v125;
      v104 = v126;
      if (!--v99)
      {

        sub_1C440951C(v101, v94, v104 & 1);
        v128 = v100;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_36;
  }

  v128 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v101 = v163;
  v130 = v163[2];
  v129 = v163[3];
  v132 = v163[4];
  v131 = v163[5];
  v133 = v163[6];
  v134 = swift_initStackObject();
  v186 = &v153;
  sub_1C442C690(v134);
  *(v135 + 32) = v130;
  *(v135 + 40) = v129;
  MEMORY[0x1EEE9AC00](v135);
  *(&v153 - 6) = v136;
  *(&v153 - 5) = v132;
  *(&v153 - 4) = v131;
  *(&v153 - 3) = v133;
  v151 = v128;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v137 = v175;
  sub_1C4418704(sub_1C4673BE8, (&v153 - 8), v138, v139, v140, v141, v142, v143, v153, v154);
  if (v137)
  {
    (*(v167 + 8))(v166, v178);

    swift_setDeallocating();
    sub_1C44DEE40();
  }

  swift_setDeallocating();
  sub_1C44DEE40();

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_42;
  }

LABEL_36:
  v144 = sub_1C4F00978();
  sub_1C442B738(v144, qword_1EDE2DF70);

  v145 = sub_1C4F00968();
  v146 = sub_1C4F01CB8();

  v147 = os_log_type_enabled(v145, v146);
  v148 = v167;
  if (v147)
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v189 = v150;
    *v149 = 136315138;
    *(v149 + 4) = sub_1C441D828(*(v101 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config), *(v101 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config + 8), &v189);
    _os_log_impl(&dword_1C43F8000, v145, v146, "SignalView %s: wrote features", v149, 0xCu);
    sub_1C440962C(v150);
    MEMORY[0x1C6942830](v150, -1, -1);
    MEMORY[0x1C6942830](v149, -1, -1);
  }

  (*(v148 + 8))(v166, v178);
}

uint64_t sub_1C468F6CC()
{

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ContactRelationshipSignal_config, _s10ViewConfigVMa);

  return v0;
}

uint64_t sub_1C468F754()
{
  sub_1C468F6CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContactRelationshipSignal(uint64_t a1)
{
  result = qword_1EC0BACE0;
  if (!qword_1EC0BACE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C468F800(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C468F8B4()
{
  sub_1C468E340();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C468F990(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1C4F020F8();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C468FA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BACF0, &unk_1C4F23190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C468FA80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ContactRelationshipSignal.ContactRelationshipType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactRelationshipSignal.ContactRelationshipType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C468FC30()
{
  result = qword_1EC0BAD08;
  if (!qword_1EC0BAD08)
  {
    sub_1C4572308(&qword_1EC0BAD10, qword_1C4F17448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAD08);
  }

  return result;
}

unint64_t sub_1C468FC98()
{
  result = qword_1EC0BAD18;
  if (!qword_1EC0BAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAD18);
  }

  return result;
}

uint64_t sub_1C468FCEC@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v79 = v3;
  v80 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FD2D8();
  v77 = v4;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v81 = v6;
  v82 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v76 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  v78 = v70 - v9;
  sub_1C43FBE44();
  v86 = sub_1C4F01188();
  sub_1C43FCDF8();
  v84 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v83 = v12;
  sub_1C43FBE44();
  v13 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v74 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v70 - v19;
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Source(0);
  v22 = sub_1C442B738(v21, &unk_1EDDFD088);
  v23 = sub_1C44CB92C();
  v25 = v24;
  v26 = *(v21 + 24);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v27 = sub_1C4F00978();
  v28 = sub_1C442B738(v27, qword_1EDE2DE10);
  v29 = *(v15 + 16);
  v85 = v22;
  v72 = v15 + 16;
  v73 = v26;
  v71 = v29;
  v29(v20, (v22 + v26), v13);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v70[1] = v28;
  v30 = sub_1C4F00968();
  v31 = sub_1C4F01CB8();

  v32 = os_log_type_enabled(v30, v31);
  v75 = v13;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v70[0] = v23;
    v34 = v33;
    v87 = swift_slowAlloc();
    *v34 = 136381187;
    *(v34 + 4) = sub_1C441D828(v70[0], v25, &v87);
    *(v34 + 12) = 2080;
    sub_1C4693DE4(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    v35 = sub_1C4F02858();
    v36 = v13;
    v37 = a1;
    v39 = v38;
    (*(v15 + 8))(v20, v36);
    v40 = sub_1C441D828(v35, v39, &v87);
    a1 = v37;

    *(v34 + 14) = v40;
    *(v34 + 22) = 1024;
    *(v34 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v30, v31, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v34, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    v23 = v70[0];
    sub_1C43FBE2C();
  }

  else
  {

    (*(v15 + 8))(v20, v13);
  }

  v41 = v85;
  v42 = *v85;
  v43 = *(v85 + 1);
  v87 = v23;
  v88 = v25;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v42, v43);

  v45 = v87;
  v44 = v88;
  v46 = v83;
  sub_1C4F01178();
  sub_1C4F01148();
  v48 = v47;
  (*(v84 + 8))(v46, v86);
  if (v48 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = sub_1C4F00968();
    v50 = sub_1C4F01CD8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v87 = v52;
      *v51 = 136380675;
      v53 = sub_1C441D828(v45, v44, &v87);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_1C43F8000, v49, v50, "Source: failed to encode identifier as UTF8 data: %{private}s", v51, 0xCu);
      sub_1C440962C(v52);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v67 = 1;
  }

  else
  {

    sub_1C4693DE4(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    v54 = v77;
    v55 = v80;
    sub_1C4F00DB8();
    v56 = sub_1C43FD2BC();
    sub_1C44344B8(v56, v57);
    v58 = sub_1C43FD2BC();
    sub_1C4498FD8(v58, v59, v54);
    v60 = sub_1C43FD2BC();
    sub_1C441DFEC(v60, v61);
    v62 = v78;
    sub_1C4F00DA8();
    (*(v79 + 8))(v54, v55);
    v71(v74, &v41[v73], v75);
    (*(v81 + 16))(v76, v62, v82);
    sub_1C4EFF028();
    v63 = sub_1C43FD2BC();
    sub_1C441DFEC(v63, v64);
    v65 = sub_1C4404C28();
    v66(v65);
    v67 = 0;
  }

  v68 = sub_1C4EFF0C8();
  return sub_1C440BAA8(a1, v67, 1, v68);
}

BOOL sub_1C46903EC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v63 = v7;
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v66 = v8;
  sub_1C43FBE44();
  v9 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v68 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v62 = v12;
  v13 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v59 - v20;
  v22 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v61 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v60 = v25;
  sub_1C43FD1D0();
  *&v27 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
  v65 = &v59 - v28;
  v29 = [a3 librarySpecificFetchOptions];
  [v29 setPersonContext_];
  v30 = objc_opt_self();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v31 = swift_allocObject();
  v59 = xmmword_1C4F0D130;
  *(v31 + 16) = xmmword_1C4F0D130;
  *(v31 + 32) = a1;
  *(v31 + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = sub_1C4F01658();

  v33 = [v30 fetchPersonsWithLocalIdentifiers:v32 options:v29];

  v34 = [v33 firstObject];
  if (!v34)
  {
    goto LABEL_11;
  }

  v35 = [v67 birthday];
  if (v35)
  {
    v36 = v35;
    sub_1C4EF9598();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v22;
  sub_1C440BAA8(v15, v37, 1, v9);
  sub_1C44CDA7C();
  if (sub_1C44157D4(v18, 1, v9) == 1)
  {
    sub_1C4420C3C(v18, &unk_1EC0BAD50, &unk_1C4F168E0);
    sub_1C440BAA8(v21, 1, 1, v22);
LABEL_8:
    sub_1C4420C3C(v21, &unk_1EC0B84E0, qword_1C4F0D2D0);
    goto LABEL_9;
  }

  sub_1C4EF95B8();
  v40 = v68 + 8;
  v39 = *(v68 + 8);
  v39(v18, v9);
  if (sub_1C44157D4(v21, 1, v22) == 1)
  {
    goto LABEL_8;
  }

  v67 = v39;
  v43 = v61;
  (*(v61 + 32))(v65, v21, v22);
  sub_1C4EF9F58();
  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v44 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v46 = v45;
  v47 = *(v45 + 80);
  v68 = v40;
  v48 = (v47 + 32) & ~v47;
  v49 = swift_allocObject();
  *(v49 + 16) = v59;
  (*(v46 + 104))(v49 + v48, *MEMORY[0x1E6969A68], v44);
  sub_1C4D51F7C();
  v50 = v60;
  sub_1C4EF9CC8();
  v51 = v62;
  v52 = v66;
  sub_1C4EF9E98();

  v53 = *(v43 + 8);
  v53(v50, v38);
  (*(v63 + 8))(v52, v64);
  v54 = sub_1C4EF95D8();
  LOBYTE(v52) = v55;
  v67(v51, v9);
  if ((v52 & 1) == 0)
  {
    v56 = v65;
    if (v54 >= 3)
    {
      if (v54 >= 0xD)
      {
        if (v54 >= 0x1F)
        {
          if (v54 >= 0x3C)
          {
            v57 = 4;
          }

          else
          {
            v57 = 5;
          }
        }

        else
        {
          v57 = 3;
        }
      }

      else
      {
        v57 = 2;
      }
    }

    else
    {
      v57 = 1;
    }

    v58 = [v34 ageType];

    v53(v56, v38);
    return v58 == v57;
  }

  v53(v65, v38);
LABEL_9:
  if ([v34 ageType] == 1)
  {

LABEL_11:
    return 0;
  }

  v42 = [v34 ageType];

  return v42 != 2;
}

uint64_t sub_1C4690A7C@<X0>(id *a1@<X0>, void *a2@<X2>, char *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v243 = a7;
  v245 = a6;
  v246 = a5;
  v260 = a4;
  v267 = a3;
  v251 = a8;
  v240 = a10;
  v236 = a9;
  v237 = sub_1C456902C(&qword_1EC0BAD30, &unk_1C4F0E170);
  v239 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v238 = (&v233 - v12);
  v247 = type metadata accessor for CNContactStructs.Person(0);
  MEMORY[0x1EEE9AC00](v247);
  v241 = &v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v233 - v15;
  v255 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  v235 = *(v255 - 1);
  MEMORY[0x1EEE9AC00](v255);
  v244 = &v233 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v249 = &v233 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v262 = &v233 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v266 = &v233 - v23;
  v24 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v242 = &v233 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v259 = &v233 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v233 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v233 - v32;
  v257 = sub_1C4EFF0C8();
  v250 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v234 = &v233 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v248 = &v233 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v261 = &v233 - v38;
  *&v40 = MEMORY[0x1EEE9AC00](v39).n128_u64[0];
  isUniquelyReferenced_nonNull_native = &v233 - v41;
  v252 = *a1;
  v253 = [v252 value];
  v43 = [v253 name];
  v44 = sub_1C4F01138();
  v46 = v45;

  v264 = a2;
  v47 = [a2 style];
  v263 = v44;
  v265 = v46;
  v48 = sub_1C46921E4(v44, v46, v47, v267);
  v49 = sub_1C4428DA0(v48);
  v258 = v48;
  if (v49 != 1 || !sub_1C4428DA0(v48))
  {
    goto LABEL_7;
  }

  sub_1C4431590(0, (v48 & 0xC000000000000001) == 0, v48);
  if ((v48 & 0xC000000000000001) != 0)
  {
    goto LABEL_111;
  }

  v50 = *(v48 + 32);
LABEL_5:
  v51 = v50;
  v52 = v257;
  v53 = v266;
  sub_1C468FCEC(v33);
  if (sub_1C44157D4(v33, 1, v52) != 1)
  {
    v264 = v30;
    v266 = v16;
    v267 = v51;

    v265 = *(v250 + 32);
    v265(isUniquelyReferenced_nonNull_native, v33, v52);
    v93 = v260;
    if (*v260)
    {
      v94 = v267;
      v95 = [v267 identifier];
      sub_1C4F01138();

      v96 = v94;
      swift_isUniquelyReferenced_nonNull_native();
      v268 = *v93;
      sub_1C4661BF0();
      *v93 = v268;
    }

    v97 = sub_1C4EFEEF8();
    sub_1C440BAA8(v53, 1, 1, v97);
    v98 = v255;
    sub_1C4EFD318();
    if (qword_1EDDFED28 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Source(0);
    sub_1C442B738(v99, &unk_1EDDFD088);
    sub_1C448CA30();
    sub_1C4EFE808();
    sub_1C4EFE878();
    sub_1C4EFEB48();
    sub_1C4EFE3A8();
    *&v53[v98[14]] = 0;
    sub_1C4EFE2A8();
    v100 = [v252 label];
    if (v100)
    {
      v101 = v100;
      v102 = sub_1C4F01138();
      v104 = v103;
    }

    else
    {
      v102 = 0;
      v104 = 0;
    }

    v131 = &v53[v255[10]];
    sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
    v132 = sub_1C4F01F08();
    if (v104)
    {
      if (v102 == v132 && v104 == v133)
      {
        v136 = 0x796C696D6166;

        goto LABEL_76;
      }

      v135 = sub_1C4F02938();

      if (v135)
      {
        v136 = 0x796C696D6166;
LABEL_76:
        v139 = 0xE600000000000000;
        goto LABEL_78;
      }
    }

    else
    {
    }

    v137 = [v252 label];
    if (v137)
    {
      v138 = v137;
      sub_1C4F01138();
    }

    v140 = objc_opt_self();
    v141 = sub_1C4F01108();

    v142 = [v140 localizedStringForLabel_];

    v136 = sub_1C4F01138();
    v139 = v143;

LABEL_78:
    *v131 = v136;
    v131[1] = v139;
    v144 = [v252 label];
    if (v144)
    {
      v145 = v144;
      v146 = sub_1C4F01138();
      v148 = v147;
    }

    else
    {
      v146 = 0;
      v148 = 0xE000000000000000;
    }

    v149 = v245;
    v150 = &v53[v255[8]];
    v151 = &v53[v255[12]];
    v152 = v255[16];
    *v151 = v146;
    v151[1] = v148;
    *v150 = sub_1C4EFF048();
    v150[1] = v153;
    *&v53[v152] = xmmword_1C4F0D2B0;
    v154 = (v246 + *(v247 + 44));
    v155 = v154[1];
    if (v155 && (*v154 == 1702195828 ? (v156 = v155 == 0xE400000000000000) : (v156 = 0), v156 || (sub_1C4F02938() & 1) != 0))
    {
      sub_1C448CA30();
      v157 = [v252 label];
      if (v157)
      {
        v158 = v157;
        v159 = sub_1C4F01138();
        v161 = v160;
      }

      else
      {
        v159 = 0;
        v161 = 0xE000000000000000;
      }

      v170 = v254;
      v171 = sub_1C4579800(v159, v161, v149);
      v193 = v262;
      if (v170)
      {
        (*(v250 + 8))(isUniquelyReferenced_nonNull_native, v257);

        v192 = v267;
LABEL_105:

        sub_1C44C45FC(v193, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
        v130 = v53;
        return sub_1C44C45FC(v130, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      }

      v172 = v171;
      v263 = isUniquelyReferenced_nonNull_native;

      v173 = v255;
      v174 = v255[14];

      *(v193 + v174) = v172;
      v175 = v264;
      sub_1C468FCEC(v264);
      v176 = v257;
      if (sub_1C44157D4(v175, 1, v257) == 1)
      {
        sub_1C4420C3C(v175, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v194 = v261;
        v265(v261, v175, v176);
        v195 = sub_1C4EFF048();
        v196 = v176;
        v198 = v197;
        (*(v250 + 8))(v194, v196);
        v199 = (v193 + v173[8]);

        *v199 = v195;
        v199[1] = v198;
      }

      v200 = v267;
      v201 = sub_1C44CB92C();
      v202 = v266;
      sub_1C44CBA5C(v201, v203, v204, v205, v206, v207, v208, v209, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
      v210 = v263;
      sub_1C456902C(&qword_1EC0BAD98, &unk_1C4F3E8A0);
      v254 = 0;
      v222 = swift_allocObject();
      *(v222 + 16) = xmmword_1C4F0D130;
      sub_1C448CA30();
      v223 = v247;
      v224 = *(v247 + 248);

      *&v202[v224] = v222;
      sub_1C44D8894();
      sub_1C44D93D0();
      v226 = v225;
      v227 = *(v223 + 244);

      *&v202[v227] = v226;
      sub_1C4D7F6AC();

      *&v202[v224] = 0;
      v228 = sub_1C44CB92C();
      v229 = v238;
      *v238 = v228;
      v229[1] = v230;
      sub_1C448CA30();
      v231 = v240;
      sub_1C45890A0();
      v232 = *(*v231 + 16);
      sub_1C4589C60();

      (*(v250 + 8))(v210, v257);
      *(*v231 + 16) = v232 + 1;
      sub_1C44CDA7C();
      sub_1C44C45FC(v202, type metadata accessor for CNContactStructs.Person);
      sub_1C44C45FC(v193, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
    }

    else
    {

      (*(v250 + 8))(isUniquelyReferenced_nonNull_native, v257);
    }

    v162 = v251;
    sub_1C448CA30();
    sub_1C440BAA8(v162, 0, 1, v255);
    v130 = v53;
    return sub_1C44C45FC(v130, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
  }

  sub_1C4420C3C(v33, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v48 = v258;
LABEL_7:
  v54 = sub_1C4428DA0(v48);
  v30 = v259;
  v33 = v260;
  isUniquelyReferenced_nonNull_native = v48;
  v262 = v54;
  if (v54)
  {
    v55 = 0;
    v261 = (v48 & 0xC000000000000001);
    v256 = v48 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v261)
      {
        v56 = MEMORY[0x1C6940F90](v55, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v55 >= *(v256 + 16))
        {
          goto LABEL_109;
        }

        v56 = *&isUniquelyReferenced_nonNull_native[8 * v55 + 32];
      }

      v57 = v56;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        v50 = MEMORY[0x1C6940F90](0, v48);
        goto LABEL_5;
      }

      v267 = (v55 + 1);
      if (*v33)
      {
        break;
      }

LABEL_24:
      v75 = [v264 stringFromContact_];
      if (v75)
      {
        v48 = v75;
        sub_1C4F01138();

        v76 = sub_1C4F00FF8();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0;
      }

      v79 = sub_1C4F00FF8();
      v16 = v80;
      if (!v78)
      {

LABEL_35:

        goto LABEL_39;
      }

      if (v76 == v79 && v78 == v80)
      {
      }

      else
      {
        v48 = sub_1C4F02938();

        if ((v48 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      sub_1C468FCEC(v30);
      if (sub_1C44157D4(v30, 1, v257) != 1)
      {

        v83 = *(v250 + 32);
        v83(v248, v30, v257);
        v84 = sub_1C4EFEEF8();
        v85 = v249;
        sub_1C440BAA8(v249, 1, 1, v84);
        v86 = v255;
        sub_1C4EFD318();
        if (qword_1EDDFED28 != -1)
        {
          swift_once();
        }

        v87 = type metadata accessor for Source(0);
        sub_1C442B738(v87, &unk_1EDDFD088);
        sub_1C448CA30();
        sub_1C4EFE808();
        sub_1C4EFE878();
        sub_1C4EFEB48();
        sub_1C4EFE3A8();
        *(v85 + v86[14]) = 0;
        sub_1C4EFE2A8();
        v88 = [v252 label];
        if (v88)
        {
          v89 = v88;
          v90 = sub_1C4F01138();
          v92 = v91;
        }

        else
        {
          v90 = 0;
          v92 = 0xE000000000000000;
        }

        v105 = &v249[v255[12]];
        *v105 = v90;
        v105[1] = v92;
        v106 = [v252 label];
        v266 = v57;
        v267 = v83;
        if (v106)
        {
          v107 = v106;
          sub_1C4F01138();
        }

        v108 = v249;
        v109 = &v249[v255[8]];
        v110 = &v249[v255[10]];
        v111 = v255[16];
        v112 = objc_opt_self();
        v113 = sub_1C4F01108();

        v114 = [v112 localizedStringForLabel_];

        v115 = sub_1C4F01138();
        v117 = v116;

        *v110 = v115;
        v110[1] = v117;
        *v109 = sub_1C4EFF048();
        v109[1] = v118;
        *(v108 + v111) = xmmword_1C4F0D2B0;
        v119 = (v246 + *(v247 + 44));
        v120 = v119[1];
        if (v120 && (*v119 == 1702195828 ? (v121 = v120 == 0xE400000000000000) : (v121 = 0), v121 || (sub_1C4F02938() & 1) != 0))
        {
          v122 = v244;
          sub_1C448CA30();
          v123 = [v252 label];
          if (v123)
          {
            v124 = v123;
            v125 = sub_1C4F01138();
            v127 = v126;
          }

          else
          {
            v125 = 0;
            v127 = 0xE000000000000000;
          }

          v163 = v254;
          v164 = sub_1C4579800(v125, v127, v245);
          if (v163)
          {
            (*(v250 + 8))(v248, v257);

            v192 = v253;
            v193 = v122;
            v53 = v249;
            goto LABEL_105;
          }

          v165 = v164;

          v166 = v255;
          v167 = v255[14];

          *(v122 + v167) = v165;
          v168 = v242;
          sub_1C468FCEC(v242);
          v169 = v257;
          if (sub_1C44157D4(v168, 1, v257) == 1)
          {
            sub_1C4420C3C(v168, &unk_1EC0BA0E0, &qword_1C4F105A0);
          }

          else
          {
            v177 = v234;
            (v267)(v234, v168, v169);
            v178 = sub_1C4EFF048();
            v180 = v179;
            (*(v250 + 8))(v177, v169);
            v181 = (v122 + v166[8]);

            *v181 = v178;
            v181[1] = v180;
          }

          v182 = v241;
          v183 = v266;
          v184 = sub_1C44CB92C();
          sub_1C44CBA5C(v184, v185, v186, v187, v188, v189, v190, v191, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
          sub_1C456902C(&qword_1EC0BAD98, &unk_1C4F3E8A0);
          v211 = swift_allocObject();
          *(v211 + 16) = xmmword_1C4F0D130;
          sub_1C448CA30();
          v212 = v247;
          v213 = *(v247 + 248);

          *(v182 + v213) = v211;
          sub_1C44D8894();
          sub_1C44D93D0();
          v215 = v214;
          v216 = *(v212 + 244);

          *(v182 + v216) = v215;
          sub_1C4D7F6AC();

          *(v182 + v213) = 0;
          v217 = sub_1C44CB92C();
          v218 = v238;
          *v238 = v217;
          v218[1] = v219;
          sub_1C448CA30();
          v220 = v240;
          sub_1C45890A0();
          v221 = *(*v220 + 16);
          sub_1C4589C60();

          (*(v250 + 8))(v248, v257);
          *(*v220 + 16) = v221 + 1;
          sub_1C44CDA7C();
          sub_1C44C45FC(v182, type metadata accessor for CNContactStructs.Person);
          sub_1C44C45FC(v122, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
        }

        else
        {

          (*(v250 + 8))(v248, v257);
        }

        v128 = v249;
        v129 = v251;
        sub_1C448CA30();
        sub_1C440BAA8(v129, 0, 1, v255);
        v130 = v128;
        return sub_1C44C45FC(v130, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      }

      sub_1C4420C3C(v30, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_39:
      ++v55;
      if (v267 == v262)
      {
        goto LABEL_40;
      }
    }

    v58 = [v56 identifier];
    v30 = sub_1C4F01138();
    v16 = v59;

    v266 = v57;
    v60 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v268 = *v33;
    v61 = v268;
    *v33 = 0x8000000000000000;
    v62 = sub_1C445FAA8(v30, v16);
    v64 = *(v61 + 16);
    v65 = (v63 & 1) == 0;
    v48 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_108;
    }

    v33 = v62;
    v66 = v63;
    sub_1C456902C(&qword_1EC0BAD90, &unk_1C4F175C0);
    if (sub_1C4F02458())
    {
      v67 = sub_1C445FAA8(v30, v16);
      isUniquelyReferenced_nonNull_native = v258;
      if ((v66 & 1) != (v68 & 1))
      {
        result = sub_1C4F029F8();
        __break(1u);
        return result;
      }

      v33 = v67;
      if ((v66 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v258;
      if ((v66 & 1) == 0)
      {
LABEL_19:
        v48 = v268;
        *(v268 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v69 = (*(v48 + 48) + 16 * v33);
        *v69 = v30;
        v69[1] = v16;
        *(*(v48 + 56) + 8 * v33) = v60;
        v70 = *(v48 + 16);
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_110;
        }

        *(v48 + 16) = v72;
        goto LABEL_23;
      }
    }

    v48 = v268;
    v73 = *(v268 + 56);
    v74 = *(v73 + 8 * v33);
    *(v73 + 8 * v33) = v60;

LABEL_23:
    v33 = v260;
    *v260 = v48;

    v57 = v266;
    v30 = v259;
    goto LABEL_24;
  }

LABEL_40:

  return sub_1C440BAA8(v251, 1, 1, v255);
}

uint64_t sub_1C46921E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  sub_1C46938E0(a4, a3, v4, &v9);
  objc_autoreleasePoolPop(v7);
  return v9;
}

void *sub_1C469225C()
{
  sub_1C456902C(&qword_1EC0B9028, &qword_1C4F0EB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F17540;
  *(v0 + 32) = sub_1C4F01138();
  *(v0 + 40) = v1;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C4F0D130;
  sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
  *(v2 + 32) = sub_1C4F01F08();
  *(v2 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = sub_1C4F01138();
  *(v0 + 64) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0CE60;
  *(v5 + 32) = sub_1C4F01138();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_1C4F01F08();
  *(v5 + 56) = v7;
  *(v0 + 72) = v5;
  *(v0 + 80) = sub_1C4F01138();
  *(v0 + 88) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F0CE60;
  *(v9 + 32) = sub_1C4F01138();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_1C4F01F08();
  *(v9 + 56) = v11;
  *(v0 + 96) = v9;
  *(v0 + 104) = sub_1C4F01138();
  *(v0 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0CE60;
  *(v13 + 32) = sub_1C4F01138();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1C4F01F08();
  *(v13 + 56) = v15;
  *(v0 + 120) = v13;
  *(v0 + 128) = sub_1C4F01138();
  *(v0 + 136) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0CE60;
  *(v17 + 32) = sub_1C4F01138();
  *(v17 + 40) = v18;
  *(v17 + 48) = sub_1C4F01F08();
  *(v17 + 56) = v19;
  *(v0 + 144) = v17;
  *(v0 + 152) = sub_1C4F01138();
  *(v0 + 160) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C4F0CE60;
  *(v21 + 32) = sub_1C4F01138();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_1C4F01F08();
  *(v21 + 56) = v23;
  *(v0 + 168) = v21;
  *(v0 + 176) = sub_1C4F01138();
  *(v0 + 184) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C4F0CE60;
  *(v25 + 32) = sub_1C4F01138();
  *(v25 + 40) = v26;
  *(v25 + 48) = sub_1C4F01F08();
  *(v25 + 56) = v27;
  *(v0 + 192) = v25;
  *(v0 + 200) = sub_1C4F01138();
  *(v0 + 208) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C4F0CE60;
  *(v29 + 32) = sub_1C4F01138();
  *(v29 + 40) = v30;
  *(v29 + 48) = sub_1C4F01F08();
  *(v29 + 56) = v31;
  *(v0 + 216) = v29;
  *(v0 + 224) = sub_1C4F01138();
  *(v0 + 232) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C4F0CE60;
  *(v33 + 32) = sub_1C4F01138();
  *(v33 + 40) = v34;
  *(v33 + 48) = sub_1C4F01F08();
  *(v33 + 56) = v35;
  *(v0 + 240) = v33;
  *(v0 + 248) = sub_1C4F01138();
  *(v0 + 256) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1C4F0CE60;
  *(v37 + 32) = sub_1C4F01138();
  *(v37 + 40) = v38;
  *(v37 + 48) = sub_1C4F01F08();
  *(v37 + 56) = v39;
  *(v0 + 264) = v37;
  *(v0 + 272) = sub_1C4F01138();
  *(v0 + 280) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C4F0CE60;
  *(v41 + 32) = sub_1C4F01138();
  *(v41 + 40) = v42;
  *(v41 + 48) = sub_1C4F01F08();
  *(v41 + 56) = v43;
  *(v0 + 288) = v41;
  *(v0 + 296) = sub_1C4F01138();
  *(v0 + 304) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C4F0CE60;
  *(v45 + 32) = sub_1C4F01138();
  *(v45 + 40) = v46;
  *(v45 + 48) = sub_1C4F01F08();
  *(v45 + 56) = v47;
  *(v0 + 312) = v45;
  *(v0 + 320) = sub_1C4F01138();
  *(v0 + 328) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C4F0CE60;
  *(v49 + 32) = sub_1C4F01138();
  *(v49 + 40) = v50;
  *(v49 + 48) = sub_1C4F01F08();
  *(v49 + 56) = v51;
  *(v0 + 336) = v49;
  *(v0 + 344) = sub_1C4F01138();
  *(v0 + 352) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C4F0D130;
  *(v53 + 32) = sub_1C4F01138();
  *(v53 + 40) = v54;
  *(v0 + 360) = v53;
  *(v0 + 368) = sub_1C4F01138();
  *(v0 + 376) = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C4F0D130;
  *(v56 + 32) = sub_1C4F01138();
  *(v56 + 40) = v57;
  *(v0 + 384) = v56;
  *(v0 + 392) = sub_1C4F01138();
  *(v0 + 400) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1C4F0D480;
  *(v59 + 32) = sub_1C4F01F08();
  *(v59 + 40) = v60;
  *(v59 + 48) = sub_1C4F01138();
  *(v59 + 56) = v61;
  *(v59 + 64) = sub_1C4F01138();
  *(v59 + 72) = v62;
  *(v59 + 80) = sub_1C4F01138();
  *(v59 + 88) = v63;
  *(v0 + 408) = v59;
  *(v0 + 416) = sub_1C4F01138();
  *(v0 + 424) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1C4F0C890;
  *(v65 + 32) = sub_1C4F01138();
  *(v65 + 40) = v66;
  *(v65 + 48) = sub_1C4F01138();
  *(v65 + 56) = v67;
  *(v65 + 64) = sub_1C4F01F08();
  *(v65 + 72) = v68;
  *(v0 + 432) = v65;
  *(v0 + 440) = sub_1C4F01138();
  *(v0 + 448) = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1C4F0C890;
  *(v70 + 32) = sub_1C4F01138();
  *(v70 + 40) = v71;
  *(v70 + 48) = sub_1C4F01138();
  *(v70 + 56) = v72;
  *(v70 + 64) = sub_1C4F01F08();
  *(v70 + 72) = v73;
  *(v0 + 456) = v70;
  *(v0 + 464) = sub_1C4F01138();
  *(v0 + 472) = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1C4F0D130;
  *(v75 + 32) = sub_1C4F01138();
  *(v75 + 40) = v76;
  *(v0 + 480) = v75;
  *(v0 + 488) = sub_1C4F01138();
  *(v0 + 496) = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1C4F0D130;
  *(v78 + 32) = sub_1C4F01138();
  *(v78 + 40) = v79;
  *(v0 + 504) = v78;
  *(v0 + 512) = sub_1C4F01138();
  *(v0 + 520) = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1C4F0D130;
  *(v81 + 32) = sub_1C4F01138();
  *(v81 + 40) = v82;
  *(v0 + 528) = v81;
  *(v0 + 536) = sub_1C4F01138();
  *(v0 + 544) = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1C4F0D130;
  *(v84 + 32) = sub_1C4F01138();
  *(v84 + 40) = v85;
  *(v0 + 552) = v84;
  *(v0 + 560) = sub_1C4F01138();
  *(v0 + 568) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1C4F0D130;
  *(v87 + 32) = sub_1C4F01138();
  *(v87 + 40) = v88;
  *(v0 + 576) = v87;
  *(v0 + 584) = sub_1C4F01138();
  *(v0 + 592) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1C4F0D130;
  *(v90 + 32) = sub_1C4F01F08();
  *(v90 + 40) = v91;
  *(v0 + 600) = v90;
  *(v0 + 608) = sub_1C4F01138();
  *(v0 + 616) = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1C4F0CE60;
  *(v93 + 32) = sub_1C4F01138();
  *(v93 + 40) = v94;
  *(v93 + 48) = sub_1C4F01F08();
  *(v93 + 56) = v95;
  *(v0 + 624) = v93;
  *(v0 + 632) = sub_1C4F01138();
  *(v0 + 640) = v96;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1C4F0CE60;
  *(v97 + 32) = sub_1C4F01138();
  *(v97 + 40) = v98;
  *(v97 + 48) = sub_1C4F01F08();
  *(v97 + 56) = v99;
  *(v0 + 648) = v97;
  *(v0 + 656) = sub_1C4F01138();
  *(v0 + 664) = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1C4F0D130;
  *(v101 + 32) = sub_1C4F01F08();
  *(v101 + 40) = v102;
  *(v0 + 672) = v101;
  *(v0 + 680) = sub_1C4F01138();
  *(v0 + 688) = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1C4F0CE60;
  *(v104 + 32) = sub_1C4F01138();
  *(v104 + 40) = v105;
  *(v104 + 48) = sub_1C4F01F08();
  *(v104 + 56) = v106;
  *(v0 + 696) = v104;
  *(v0 + 704) = sub_1C4F01138();
  *(v0 + 712) = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1C4F0CE60;
  *(v108 + 32) = sub_1C4F01138();
  *(v108 + 40) = v109;
  *(v108 + 48) = sub_1C4F01F08();
  *(v108 + 56) = v110;
  *(v0 + 720) = v108;
  *(v0 + 728) = sub_1C4F01138();
  *(v0 + 736) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1C4F0D130;
  *(v112 + 32) = sub_1C4F01F08();
  *(v112 + 40) = v113;
  *(v0 + 744) = v112;
  *(v0 + 752) = sub_1C4F01138();
  *(v0 + 760) = v114;
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1C4F0CE60;
  *(v115 + 32) = sub_1C4F01138();
  *(v115 + 40) = v116;
  *(v115 + 48) = sub_1C4F01F08();
  *(v115 + 56) = v117;
  *(v0 + 768) = v115;
  *(v0 + 776) = sub_1C4F01138();
  *(v0 + 784) = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1C4F0CE60;
  *(v119 + 32) = sub_1C4F01138();
  *(v119 + 40) = v120;
  *(v119 + 48) = sub_1C4F01F08();
  *(v119 + 56) = v121;
  *(v0 + 792) = v119;
  *(v0 + 800) = sub_1C4F01138();
  *(v0 + 808) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1C4F0D130;
  *(v123 + 32) = sub_1C4F01F08();
  *(v123 + 40) = v124;
  *(v0 + 816) = v123;
  *(v0 + 824) = sub_1C4F01138();
  *(v0 + 832) = v125;
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1C4F0CE60;
  *(v126 + 32) = sub_1C4F01138();
  *(v126 + 40) = v127;
  *(v126 + 48) = sub_1C4F01F08();
  *(v126 + 56) = v128;
  *(v0 + 840) = v126;
  *(v0 + 848) = sub_1C4F01138();
  *(v0 + 856) = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1C4F0CE60;
  *(v130 + 32) = sub_1C4F01138();
  *(v130 + 40) = v131;
  *(v130 + 48) = sub_1C4F01F08();
  *(v130 + 56) = v132;
  *(v0 + 864) = v130;
  *(v0 + 872) = sub_1C4F01138();
  *(v0 + 880) = v133;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1C4F0D130;
  *(v134 + 32) = sub_1C4F01F08();
  *(v134 + 40) = v135;
  *(v0 + 888) = v134;
  *(v0 + 896) = sub_1C4F01138();
  *(v0 + 904) = v136;
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1C4F0CE60;
  *(v137 + 32) = sub_1C4F01138();
  *(v137 + 40) = v138;
  *(v137 + 48) = sub_1C4F01F08();
  *(v137 + 56) = v139;
  *(v0 + 912) = v137;
  *(v0 + 920) = sub_1C4F01138();
  *(v0 + 928) = v140;
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1C4F0CE60;
  *(v141 + 32) = sub_1C4F01138();
  *(v141 + 40) = v142;
  *(v141 + 48) = sub_1C4F01F08();
  *(v141 + 56) = v143;
  *(v0 + 936) = v141;
  *(v0 + 944) = sub_1C4F01138();
  *(v0 + 952) = v144;
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1C4F0D130;
  *(v145 + 32) = sub_1C4F01F08();
  *(v145 + 40) = v146;
  *(v0 + 960) = v145;
  *(v0 + 968) = sub_1C4F01138();
  *(v0 + 976) = v147;
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_1C4F0CE60;
  *(v148 + 32) = sub_1C4F01138();
  *(v148 + 40) = v149;
  *(v148 + 48) = sub_1C4F01F08();
  *(v148 + 56) = v150;
  *(v0 + 984) = v148;
  *(v0 + 992) = sub_1C4F01138();
  *(v0 + 1000) = v151;
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1C4F0CE60;
  *(v152 + 32) = sub_1C4F01138();
  *(v152 + 40) = v153;
  *(v152 + 48) = sub_1C4F01F08();
  *(v152 + 56) = v154;
  *(v0 + 1008) = v152;
  *(v0 + 1016) = sub_1C4F01138();
  *(v0 + 1024) = v155;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_1C4F0D130;
  *(v156 + 32) = sub_1C4F01F08();
  *(v156 + 40) = v157;
  *(v0 + 1032) = v156;
  *(v0 + 1040) = sub_1C4F01138();
  *(v0 + 1048) = v158;
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_1C4F0CE60;
  *(v159 + 32) = sub_1C4F01138();
  *(v159 + 40) = v160;
  *(v159 + 48) = sub_1C4F01F08();
  *(v159 + 56) = v161;
  *(v0 + 1056) = v159;
  *(v0 + 1064) = sub_1C4F01138();
  *(v0 + 1072) = v162;
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_1C4F0CE60;
  *(v163 + 32) = sub_1C4F01138();
  *(v163 + 40) = v164;
  *(v163 + 48) = sub_1C4F01F08();
  *(v163 + 56) = v165;
  *(v0 + 1080) = v163;
  *(v0 + 1088) = sub_1C4F01138();
  *(v0 + 1096) = v166;
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1C4F0D130;
  *(v167 + 32) = sub_1C4F01F08();
  *(v167 + 40) = v168;
  *(v0 + 1104) = v167;
  *(v0 + 1112) = sub_1C4F01138();
  *(v0 + 1120) = v169;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1C4F0CE60;
  *(v170 + 32) = sub_1C4F01138();
  *(v170 + 40) = v171;
  *(v170 + 48) = sub_1C4F01F08();
  *(v170 + 56) = v172;
  *(v0 + 1128) = v170;
  *(v0 + 1136) = sub_1C4F01138();
  *(v0 + 1144) = v173;
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_1C4F0CE60;
  *(v174 + 32) = sub_1C4F01138();
  *(v174 + 40) = v175;
  *(v174 + 48) = sub_1C4F01F08();
  *(v174 + 56) = v176;
  *(v0 + 1152) = v174;
  *(v0 + 1160) = sub_1C4F01138();
  *(v0 + 1168) = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1C4F0D130;
  *(v178 + 32) = sub_1C4F01F08();
  *(v178 + 40) = v179;
  *(v0 + 1176) = v178;
  *(v0 + 1184) = sub_1C4F01138();
  *(v0 + 1192) = v180;
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_1C4F0CE60;
  *(v181 + 32) = sub_1C4F01138();
  *(v181 + 40) = v182;
  *(v181 + 48) = sub_1C4F01F08();
  *(v181 + 56) = v183;
  *(v0 + 1200) = v181;
  *(v0 + 1208) = sub_1C4F01138();
  *(v0 + 1216) = v184;
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_1C4F0CE60;
  *(v185 + 32) = sub_1C4F01138();
  *(v185 + 40) = v186;
  *(v185 + 48) = sub_1C4F01F08();
  *(v185 + 56) = v187;
  *(v0 + 1224) = v185;
  *(v0 + 1232) = sub_1C4F01138();
  *(v0 + 1240) = v188;
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_1C4F0CE60;
  *(v189 + 32) = sub_1C4F01138();
  *(v189 + 40) = v190;
  *(v189 + 48) = sub_1C4F01F08();
  *(v189 + 56) = v191;
  *(v0 + 1248) = v189;
  *(v0 + 1256) = sub_1C4F01138();
  *(v0 + 1264) = v192;
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_1C4F0CE60;
  *(v193 + 32) = sub_1C4F01138();
  *(v193 + 40) = v194;
  *(v193 + 48) = sub_1C4F01F08();
  *(v193 + 56) = v195;
  *(v0 + 1272) = v193;
  *(v0 + 1280) = sub_1C4F01138();
  *(v0 + 1288) = v196;
  v197 = swift_allocObject();
  *(v197 + 16) = xmmword_1C4F0CE60;
  *(v197 + 32) = sub_1C4F01138();
  *(v197 + 40) = v198;
  *(v197 + 48) = sub_1C4F01F08();
  *(v197 + 56) = v199;
  *(v0 + 1296) = v197;
  *(v0 + 1304) = sub_1C4F01138();
  *(v0 + 1312) = v200;
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_1C4F0CE60;
  *(v201 + 32) = sub_1C4F01138();
  *(v201 + 40) = v202;
  *(v201 + 48) = sub_1C4F01F08();
  *(v201 + 56) = v203;
  *(v0 + 1320) = v201;
  *(v0 + 1328) = sub_1C4F01138();
  *(v0 + 1336) = v204;
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_1C4F0CE60;
  *(v205 + 32) = sub_1C4F01138();
  *(v205 + 40) = v206;
  *(v205 + 48) = sub_1C4F01F08();
  *(v205 + 56) = v207;
  *(v0 + 1344) = v205;
  *(v0 + 1352) = sub_1C4F01138();
  *(v0 + 1360) = v208;
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_1C4F0CE60;
  *(v209 + 32) = sub_1C4F01138();
  *(v209 + 40) = v210;
  *(v209 + 48) = sub_1C4F01F08();
  *(v209 + 56) = v211;
  *(v0 + 1368) = v209;
  *(v0 + 1376) = sub_1C4F01138();
  *(v0 + 1384) = v212;
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_1C4F0D130;
  *(v213 + 32) = sub_1C4F01F08();
  *(v213 + 40) = v214;
  *(v0 + 1392) = v213;
  *(v0 + 1400) = sub_1C4F01138();
  *(v0 + 1408) = v215;
  v216 = swift_allocObject();
  *(v216 + 16) = xmmword_1C4F0CE60;
  *(v216 + 32) = sub_1C4F01138();
  *(v216 + 40) = v217;
  *(v216 + 48) = sub_1C4F01F08();
  *(v216 + 56) = v218;
  *(v0 + 1416) = v216;
  *(v0 + 1424) = sub_1C4F01138();
  *(v0 + 1432) = v219;
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_1C4F0CE60;
  *(v220 + 32) = sub_1C4F01138();
  *(v220 + 40) = v221;
  *(v220 + 48) = sub_1C4F01F08();
  *(v220 + 56) = v222;
  *(v0 + 1440) = v220;
  *(v0 + 1448) = sub_1C4F01138();
  *(v0 + 1456) = v223;
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_1C4F0D130;
  *(v224 + 32) = sub_1C4F01F08();
  *(v224 + 40) = v225;
  *(v0 + 1464) = v224;
  *(v0 + 1472) = sub_1C4F01138();
  *(v0 + 1480) = v226;
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_1C4F0CE60;
  *(v227 + 32) = sub_1C4F01138();
  *(v227 + 40) = v228;
  *(v227 + 48) = sub_1C4F01F08();
  *(v227 + 56) = v229;
  *(v0 + 1488) = v227;
  *(v0 + 1496) = sub_1C4F01138();
  *(v0 + 1504) = v230;
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_1C4F0CE60;
  *(v231 + 32) = sub_1C4F01138();
  *(v231 + 40) = v232;
  *(v231 + 48) = sub_1C4F01F08();
  *(v231 + 56) = v233;
  *(v0 + 1512) = v231;
  *(v0 + 1520) = sub_1C4F01138();
  *(v0 + 1528) = v234;
  v235 = swift_allocObject();
  *(v235 + 16) = xmmword_1C4F0D130;
  *(v235 + 32) = sub_1C4F01F08();
  *(v235 + 40) = v236;
  *(v0 + 1536) = v235;
  *(v0 + 1544) = sub_1C4F01138();
  *(v0 + 1552) = v237;
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_1C4F0CE60;
  *(v238 + 32) = sub_1C4F01138();
  *(v238 + 40) = v239;
  *(v238 + 48) = sub_1C4F01F08();
  *(v238 + 56) = v240;
  *(v0 + 1560) = v238;
  *(v0 + 1568) = sub_1C4F01138();
  *(v0 + 1576) = v241;
  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_1C4F0CE60;
  *(v242 + 32) = sub_1C4F01138();
  *(v242 + 40) = v243;
  *(v242 + 48) = sub_1C4F01F08();
  *(v242 + 56) = v244;
  *(v0 + 1584) = v242;
  *(v0 + 1592) = sub_1C4F01138();
  *(v0 + 1600) = v245;
  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_1C4F0CE60;
  *(v246 + 32) = sub_1C4F01138();
  *(v246 + 40) = v247;
  *(v246 + 48) = sub_1C4F01F08();
  *(v246 + 56) = v248;
  *(v0 + 1608) = v246;
  *(v0 + 1616) = sub_1C4F01138();
  *(v0 + 1624) = v249;
  v250 = swift_allocObject();
  *(v250 + 16) = xmmword_1C4F0CE60;
  *(v250 + 32) = sub_1C4F01138();
  *(v250 + 40) = v251;
  *(v250 + 48) = sub_1C4F01F08();
  *(v250 + 56) = v252;
  *(v0 + 1632) = v250;
  *(v0 + 1640) = sub_1C4F01138();
  *(v0 + 1648) = v253;
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_1C4F0D130;
  *(v254 + 32) = sub_1C4F01F08();
  *(v254 + 40) = v255;
  *(v0 + 1656) = v254;
  *(v0 + 1664) = sub_1C4F01138();
  *(v0 + 1672) = v256;
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_1C4F0CE60;
  *(v257 + 32) = sub_1C4F01138();
  *(v257 + 40) = v258;
  *(v257 + 48) = sub_1C4F01F08();
  *(v257 + 56) = v259;
  *(v0 + 1680) = v257;
  *(v0 + 1688) = sub_1C4F01138();
  *(v0 + 1696) = v260;
  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_1C4F0CE60;
  *(v261 + 32) = sub_1C4F01138();
  *(v261 + 40) = v262;
  *(v261 + 48) = sub_1C4F01F08();
  *(v261 + 56) = v263;
  *(v0 + 1704) = v261;
  *(v0 + 1712) = sub_1C4F01138();
  *(v0 + 1720) = v264;
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_1C4F0D130;
  *(v265 + 32) = sub_1C4F01F08();
  *(v265 + 40) = v266;
  *(v0 + 1728) = v265;
  *(v0 + 1736) = sub_1C4F01138();
  *(v0 + 1744) = v267;
  v268 = swift_allocObject();
  *(v268 + 16) = xmmword_1C4F0CE60;
  *(v268 + 32) = sub_1C4F01138();
  *(v268 + 40) = v269;
  *(v268 + 48) = sub_1C4F01F08();
  *(v268 + 56) = v270;
  *(v0 + 1752) = v268;
  *(v0 + 1760) = sub_1C4F01138();
  *(v0 + 1768) = v271;
  v272 = swift_allocObject();
  *(v272 + 16) = xmmword_1C4F0CE60;
  *(v272 + 32) = sub_1C4F01138();
  *(v272 + 40) = v273;
  *(v272 + 48) = sub_1C4F01F08();
  *(v272 + 56) = v274;
  *(v0 + 1776) = v272;
  *(v0 + 1784) = sub_1C4F01138();
  *(v0 + 1792) = v275;
  v276 = swift_allocObject();
  *(v276 + 16) = xmmword_1C4F0D130;
  *(v276 + 32) = sub_1C4F01138();
  *(v276 + 40) = v277;
  *(v0 + 1800) = v276;
  *(v0 + 1808) = sub_1C4F01138();
  *(v0 + 1816) = v278;
  v279 = swift_allocObject();
  *(v279 + 16) = xmmword_1C4F0D130;
  *(v279 + 32) = sub_1C4F01138();
  *(v279 + 40) = v280;
  *(v0 + 1824) = v279;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  result = sub_1C4F00F28();
  off_1EC0BAD20 = result;
  return result;
}

void sub_1C46938E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v45[6] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C4F17550;
    v10 = *MEMORY[0x1E695C258];
    v11 = *MEMORY[0x1E695C240];
    *(v9 + 32) = *MEMORY[0x1E695C258];
    *(v9 + 40) = v11;
    v44 = a6;
    v12 = *MEMORY[0x1E695C2F0];
    v13 = *MEMORY[0x1E695C230];
    *(v9 + 48) = *MEMORY[0x1E695C2F0];
    *(v9 + 56) = v13;
    v43 = a5;
    v14 = *MEMORY[0x1E695C390];
    v15 = *MEMORY[0x1E695C310];
    *(v9 + 64) = *MEMORY[0x1E695C390];
    *(v9 + 72) = v15;
    v16 = *MEMORY[0x1E695C300];
    v42 = a2;
    v17 = *MEMORY[0x1E695C308];
    *(v9 + 80) = *MEMORY[0x1E695C300];
    *(v9 + 88) = v17;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    a6 = v44;
    v21 = v13;
    v22 = v14;
    a5 = v43;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    a2 = v42;
  }

  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  v27 = objc_opt_self();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(inited + 32) = [v27 descriptorForRequiredKeysForStyle_];
  sub_1C49D4318(inited);
  v28 = objc_opt_self();
  v29 = sub_1C4F01108();
  v30 = [v28 predicateForContactsMatchingName_];

  sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
  v31 = sub_1C4F01658();

  v45[0] = 0;
  v32 = [a5 unifiedContactsMatchingPredicate:v30 keysToFetch:v31 error:v45];

  v33 = v45[0];
  if (v32)
  {
    sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
    v34 = sub_1C4F01678();
    v35 = v33;
  }

  else
  {
    v36 = v45[0];
    v37 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v38 = sub_1C4F00978();
    sub_1C442B738(v38, qword_1EDE2DE10);
    v39 = sub_1C4F00968();
    v40 = sub_1C4F01CF8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C43F8000, v39, v40, "CNContactTransformer: Error querying contacts by name", v41, 2u);
      MEMORY[0x1C6942830](v41, -1, -1);
    }

    v34 = MEMORY[0x1E69E7CC0];
  }

  *a6 = v34;
}

id sub_1C4693CB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1C4F01108();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithLabel:v5 value:a3];

  return v6;
}

uint64_t sub_1C4693D58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();

  v5 = [a3 localIdentifierWithUUID_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1C4F01138();

  return v6;
}

uint64_t sub_1C4693DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4693E64()
{
  result = sub_1C4F01108();
  qword_1EDE2C8F0 = result;
  return result;
}

uint64_t *sub_1C4693E9C()
{
  type metadata accessor for ContactStoreMonitor();
  v0 = swift_allocObject();
  result = sub_1C4693ED8();
  qword_1EDE2CD28 = v0;
  return result;
}

uint64_t *sub_1C4693ED8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1C46655C4(v2);
    v10 = sub_1C441D828(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Init>", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  type metadata accessor for ContactStoreMonitor.GuardedData();
  v11 = swift_allocObject();
  sub_1C4EF98F8();
  sub_1C4F00BC8();
  sub_1C4695550(&qword_1EDDFFA00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  *(v11 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0BAE50, &qword_1C4F17690);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v1[2] = v12;
  return v1;
}

uint64_t sub_1C46940D8()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_1C4694140((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  return v0;
}

uint64_t sub_1C4694140(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 16) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        sub_1C4F00BB8();
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C469425C()
{
  sub_1C46940D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46942D8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1C46655C4(v2);
    v10 = sub_1C441D828(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Starting observe notification>", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v11 = v1[2];
  MEMORY[0x1EEE9AC00](v12);

  os_unfair_lock_lock((v11 + 24));
  sub_1C469530C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
}

uint64_t sub_1C4694494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v6 = type metadata accessor for Configuration(0);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = v7;
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4F01D88();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4F01E38();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&unk_1EC0BADE0, &unk_1C4F17660);
  v33 = *(v15 - 8);
  v34 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = *a1;
  swift_beginAccess();
  if (*(*(v18 + 16) + 16))
  {
    sub_1C43FE83C();
    if (v19)
    {
      return swift_endAccess();
    }
  }

  v29 = a2;
  v30 = v3;
  swift_endAccess();
  v21 = [objc_opt_self() defaultCenter];
  if (qword_1EDDDB908 != -1)
  {
    swift_once();
  }

  sub_1C4F01E48();

  sub_1C4F01D78();
  sub_1C4665684();
  v22 = sub_1C4F01DA8();
  v39 = v22;
  sub_1C4695550(&qword_1EDDDB8D0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1C4695550(&unk_1EDDDB910, sub_1C4665684, MEMORY[0x1E69E8028]);
  sub_1C4F00D08();

  (*(v31 + 8))(v10, v32);
  (*(v12 + 8))(v14, v11);
  v23 = v37;
  sub_1C44098F0(v29, v37);
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = (v36 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1C4409954(v23, v26 + v24);
  *(v26 + v25) = v38;
  sub_1C46953BC();
  v27 = v34;
  sub_1C4F00D28();

  (*(v33 + 8))(v17, v27);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v18 + 16);
  sub_1C4661C18();
  *(v18 + 16) = v40;
  return swift_endAccess();
}

uint64_t sub_1C469496C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Configuration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = os_transaction_create();
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDDFECB8);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v7;
    v36 = v17;
    v33 = v17;
    *v16 = 136315138;
    v18 = sub_1C46655C4(a3);
    v34 = a3;
    v20 = v12;
    v21 = v6;
    v22 = v11;
    v23 = v8;
    v24 = a2;
    v25 = sub_1C441D828(v18, v19, &v36);
    a3 = v34;

    *(v16 + 4) = v25;
    a2 = v24;
    v8 = v23;
    v11 = v22;
    v6 = v21;
    v12 = v20;
    _os_log_impl(&dword_1C43F8000, v14, v15, "<%s: Received notification>", v16, 0xCu);
    v26 = v33;
    sub_1C440962C(v33);
    v27 = v26;
    v7 = v35;
    MEMORY[0x1C6942830](v27, -1, -1);
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  v28 = sub_1C4F018C8();
  sub_1C440BAA8(v11, 1, 1, v28);
  sub_1C44098F0(a2, v8);
  v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_1C4409954(v8, v31 + v29);
  *(v31 + v30) = v12;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1C4785250();
}

uint64_t sub_1C4694C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1C4694C8C, 0, 0);
}

uint64_t sub_1C4694C8C()
{
  v14 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = sub_1C4F00978();
  v0[5] = sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_1C46655C4(v4);
    v9 = sub_1C441D828(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v2, v3, "<%s: Starting delta update>", v5, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  v0[6] = sub_1C4468E90();
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Source(0);
  sub_1C442B738(v10, &unk_1EDDFD088);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1C4695028;

  return sub_1C4ACB9F0();
}

uint64_t sub_1C4695028()
{
  *(*v1 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4695160, 0, 0);
  }

  else
  {

    sub_1C43FBDA0();

    return v2();
  }
}

uint64_t sub_1C4695160()
{
  v16 = v0;

  v2 = v0[8];
  v3 = v2;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_1C46655C4(v6);
    sub_1C441D828(v8, v9, &v15);
    sub_1C4410930();
    *(v7 + 4) = v1;
    *(v7 + 12) = 2080;
    v0[2] = v2;
    v10 = v2;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v11 = sub_1C4F01198();
    sub_1C441D828(v11, v12, &v15);
    sub_1C4410930();
    *(v7 + 14) = v1;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Can't run delta updates for contacts due to: %s>", v7, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  sub_1C43FBDA0();

  return v13();
}

uint64_t sub_1C4695328(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C469496C(a1, v1 + v8, v9);
}

unint64_t sub_1C46953BC()
{
  result = qword_1EDDDBDC0;
  if (!qword_1EDDDBDC0)
  {
    sub_1C4572308(&unk_1EC0BADE0, &unk_1C4F17660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDC0);
  }

  return result;
}

uint64_t sub_1C4695420(uint64_t a1)
{
  v4 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1C4665934;

  return sub_1C4694C6C(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1C4695550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4695598(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 40;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}

uint64_t sub_1C469561C(uint64_t a1, void (*a2)(uint64_t *, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 32);
  if (!v6)
  {
    return v10;
  }

  while (1)
  {
    v9 = *v7;
    a2(&v10, &v9, a3);
    if (v4)
    {
      break;
    }

    ++v7;
    if (!--v6)
    {
      return v10;
    }
  }
}

uint64_t sub_1C46956AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2 + 56;
  sub_1C44087F0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v27 = v10;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v13 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_6:
      v15 = *(v31 + 16);
      if (*(v15 + 16) && (v16 = *(*(v27 + 48) + (__clz(__rbit64(v7)) | (v13 << 6))), result = sub_1C457ADD8(v16), (v17 & 1) != 0))
      {
        sub_1C442E860(*(v15 + 56) + 40 * result, v28);
        v26 = v3;
        v18 = v29;
        v19 = v30;
        sub_1C4409678(v28, v29);
        sub_1C456902C(&qword_1EC0B8BC8, &unk_1C4F17750);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C4F0D130;
        *(inited + 32) = v16;
        sub_1C4D50668();
        v22 = (*(v19 + 8))(a1, v21, v18, v19);
        v3 = v26;

        if (v26)
        {

          return sub_1C440962C(v28);
        }

        result = sub_1C440962C(v28);
        if (v12)
        {
LABEL_12:
          sub_1C46958B0(v12, v22);
          v24 = v23;

          v22 = v24;
        }
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
        if (v12)
        {
          goto LABEL_12;
        }
      }

      v7 &= v7 - 1;
      v12 = v22;
      if (!v7)
      {
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
LABEL_2:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v13;
    if (v7)
    {
      v13 = v14;
      goto LABEL_6;
    }
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1C46958B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  sub_1C43FCDF8();
  v79 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v78 = v7 - v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v77 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v76 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v75 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v74 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v73 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v69 - v26;
  v27 = 0;
  v28 = 0;
  v80 = a1;
  v82 = *(a1 + 16);
  v71 = (v29 + 16);
  v30 = (v29 + 8);
  v81 = MEMORY[0x1E69E7CC0];
  v85 = v4;
  v70 = a2;
  for (i = v21; ; v21 = i)
  {
    if (v28 >= v82 || v27 >= *(a2 + 16))
    {
      sub_1C469A0E0(v81, 0.0);

      return;
    }

    if (v28 < 0)
    {
      break;
    }

    v31 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v32 = *(v79 + 72);
    v33 = v80 + v31 + v32 * v28;
    sub_1C469A9EC(v33, v21);
    if (v27 < 0)
    {
      goto LABEL_22;
    }

    v89 = v28;
    v90 = v27;
    v83 = v32;
    v84 = v31;
    v34 = a2 + v31 + v32 * v27;
    v35 = v73;
    sub_1C469A9EC(v34, v73);
    v36 = v33;
    v88 = sub_1C4575ED0();
    v37 = sub_1C4F01078();
    v38 = *v71;
    v92 = *v71;
    if (v37)
    {
      v39 = v35;
    }

    else
    {
      v39 = v21;
    }

    v38(v93, v39, v22);
    v40 = *(v4 + 48);
    v41 = *v30;
    (*v30)(v35 + v40, v22);
    v41(v35, v22);
    v41(&v21[v40], v22);
    v42 = sub_1C44149C8();
    (v41)(v42);
    v87 = v36;
    v43 = v74;
    sub_1C469A9EC(v36, v74);
    v44 = v43 + *(v4 + 48);
    v86 = v34;
    v45 = v75;
    sub_1C469A9EC(v34, v75);
    v46 = v45 + *(v4 + 48);
    if (sub_1C4F01068())
    {
      v47 = v46;
    }

    else
    {
      v47 = v44;
    }

    v48 = v91;
    v92(v91, v47, v22);
    v41(v46, v22);
    v49 = v45;
    v50 = v93;
    v41(v49, v22);
    v41(v44, v22);
    v51 = sub_1C44149C8();
    (v41)(v51);
    if (sub_1C4EF9C18())
    {
      v52 = *(v85 + 48);
      v53 = v76;
      v54 = v50;
      v55 = v92;
      v92(v76, v54, v22);
      v55(v53 + v52, v48, v22);
      v56 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458AF94();
        v56 = v67;
      }

      a2 = v70;
      v58 = v86;
      v57 = v87;
      v59 = *(v56 + 16);
      if (v59 >= *(v56 + 24) >> 1)
      {
        sub_1C458AF94();
        v56 = v68;
      }

      *(v56 + 16) = v59 + 1;
      v81 = v56;
      sub_1C469A97C(v76, v56 + v84 + v59 * v83);
    }

    else
    {
      a2 = v70;
      v58 = v86;
      v57 = v87;
    }

    v60 = v77;
    sub_1C469A9EC(v57, v77);
    v4 = v85;
    v61 = *(v85 + 48);
    v62 = v58;
    v63 = v78;
    sub_1C469A9EC(v62, v78);
    v64 = *(v4 + 48);
    v65 = sub_1C4EF9C18();
    v41(v91, v22);
    v41(v93, v22);
    v41(v63 + v64, v22);
    v41(v63, v22);
    v41(v60 + v61, v22);
    v66 = sub_1C44149C8();
    (v41)(v66);
    v27 = v90 + ((v65 & 1) == 0);
    v28 = v89 + (v65 & 1);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1C4695EE4(uint64_t a1, void *a2, void *a3)
{
  v10[3] = a3;
  v5 = a1;
  v10[2] = a2;
  v6 = sub_1C4695598(MEMORY[0x1E69E7CC8], sub_1C469A90C, v10, a1);
  v7 = *(v6 + 16);
  v8 = *(v5 + 16);

  if (v7 == v8)
  {
    type metadata accessor for ContextTimeIntervalAggregator();
    v5 = swift_allocObject();
    *(v5 + 16) = v6;
  }

  else
  {

    sub_1C469A928();
    swift_allocError();
    swift_willThrow();
  }

  sub_1C440962C(a3);
  sub_1C440962C(a2);
  return v5;
}

void sub_1C4695FEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1C442E860(a3, v29);
  v6 = a2[3];
  v7 = a2[4];
  sub_1C4409678(a2, v6);
  (*(v7 + 16))(&v26, v6, v7);
  if (v27)
  {
    sub_1C441D670(&v26, v28);
  }

  else
  {
    sub_1C442E860(a4, v28);
    if (v27)
    {
      sub_1C4423A0C(&v26, &qword_1EC0BAE68, &qword_1C4F17748);
    }
  }

  v8 = sub_1C4418280(v28, v28[3]);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = *v11;
  v14 = v30;
  v15 = v31;
  v16 = sub_1C4418280(v29, v30);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_1C469A798(v19, v13, v14, v15);
  sub_1C440962C(v29);
  sub_1C440962C(v28);
  v22 = a2[3];
  v23 = a2[4];
  sub_1C4409678(a2, v22);
  v24 = (*(v23 + 8))(v22, v23);
  v30 = type metadata accessor for BehaviorEventTimeIntervalCalculator();
  v31 = &off_1F43E6980;
  v29[0] = v21;
  sub_1C4C80B90(v29, v24);
}

uint64_t sub_1C469628C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a2 + 56;
  sub_1C44087F0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v13 = 0;
  if (!v8)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    result = sub_1C46963DC(a1, *(*(v4 + 48) + (__clz(__rbit64(v8)) | (v13 << 6))));
    if (v3)
    {
    }

    v15 = result;
    if (v12)
    {
      sub_1C46958B0(v12, result);
      v16 = v4;
      v18 = v17;

      v15 = v18;
      v4 = v16;
      v3 = 0;
    }

    v8 &= v8 - 1;
    v12 = v15;
  }

  while (v8);
  while (1)
  {
LABEL_2:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v14);
    ++v13;
    if (v8)
    {
      v13 = v14;
      goto LABEL_6;
    }
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1C46963DC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v6 = sub_1C45D7654(a2);
  if (v6)
  {
    return v6;
  }

  sub_1C46964BC(a1, v4, v7);
  if (!v2)
  {
    v3 = v8;
    v9 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_cachedContextIntervals;
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + v9);
    sub_1C4660AC8();
    *(a1 + v9) = v11;
    swift_endAccess();
  }

  return v3;
}

void sub_1C46964BC(uint64_t a1, char a2, __n128 a3)
{
  switch(a2)
  {
    case 1:
      sub_1C4696EA0(a1, 28);
      break;
    case 2:
      v3 = 2160.0;
      v4 = 40;
      goto LABEL_7;
    case 3:
      sub_1C469764C(a1, 4);
      break;
    case 4:
      sub_1C4697DCC(a1, 5);
      break;
    case 5:
      sub_1C469960C();
      break;
    case 6:
      sub_1C4699418();
      break;
    case 7:
    case 8:
    case 9:
      sub_1C4698F34();
      break;
    case 10:
      sub_1C4699804();
      break;
    case 11:
      sub_1C46999F8();
      break;
    case 12:
      sub_1C4699BF0(a1, a3);
      break;
    default:
      v3 = 432.0;
      v4 = 200;
LABEL_7:
      sub_1C46965C0(v3, a1, v4, 28);
      break;
  }
}

uint64_t sub_1C46965C0(double a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_1C441C8FC();
  sub_1C4696630(v7, v8, a4, v9);
  objc_autoreleasePoolPop(v4);
  return v11;
}

uint64_t sub_1C4696630@<X0>(void *a1@<X0>, uint64_t a3@<X2>, int64_t a4@<X3>, void *a5@<X8>)
{
  v97 = a3;
  v71 = a5;
  v8 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v68 - v9;
  v84 = sub_1C4EF9F68();
  v91 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v82 = &v68 - v12;
  v13 = sub_1C4EF9CD8();
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - v23;
  v89 = sub_1C4EF9F88();
  v72 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v29 = a1[5];
  v30 = a1[6];
  v87 = a1;
  sub_1C4409678(a1 + 2, v29);
  v31 = *(v30 + 8);
  v32 = v30;
  v33 = v24;
  v31(v29, v32);
  sub_1C4EF9E78();
  v34 = objc_autoreleasePoolPush();
  v70 = v28;
  sub_1C4EF9E78();
  v35 = 86400.0 / v97;
  v36 = v92;
  sub_1C4EF9B78();
  v38 = v37;
  v39 = *(v36 + 8);
  v80 = v21;
  v96 = v39;
  v97 = v13;
  v39(v21, v13);
  v40 = v38 / v35;
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  objc_autoreleasePoolPop(v34);
  sub_1C4EF9BE8();
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v69 = v33;
  if (a4)
  {
    v78 = *MEMORY[0x1E6969A48];
    v77 = (v91 + 104);
    v76 = (v91 + 8);
    v75 = (v72 + 8);
    v73 = (v36 + 32);
    v74 = (v36 + 16);
    v41 = 1 - a4;
    v42 = MEMORY[0x1E69E7CC0];
    v88 = a4;
    v43 = a4;
    v93 = v36 + 8;
    while (v43 <= v88)
    {
      v92 = v42;
      v45 = v87[5];
      v44 = v87[6];
      sub_1C4409678(v87 + 2, v45);
      v46 = v79;
      (*(v44 + 8))(v45, v44);
      v47 = v83;
      v48 = v84;
      (*v77)(v83, v78, v84);
      v49 = v82;
      sub_1C4EF9F28();
      (*v76)(v47, v48);
      v50 = v97;
      (*v75)(v46, v89);
      v51 = sub_1C44157D4(v49, 1, v50);
      v91 = v43 - 1;
      if (v51 == 1)
      {
        v52 = v81;
        sub_1C4EF9BE8();
        v53 = sub_1C44157D4(v49, 1, v97);
        v42 = v92;
        if (v53 != 1)
        {
          sub_1C4423A0C(v49, &unk_1EC0B84E0, qword_1C4F0D2D0);
        }
      }

      else
      {
        v52 = v81;
        (*v73)(v81, v49, v97);
        v42 = v92;
      }

      v54 = v80;
      sub_1C4EF9BE8();
      v55 = v94;
      sub_1C4EF9BE8();
      v56 = v97;
      v96(v54, v97);
      v57 = *(v86 + 48);
      v58 = *v74;
      v59 = v95;
      (*v74)(v95, v52, v56);
      v58(v59 + v57, v55, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458AF94();
        v42 = v63;
      }

      v60 = *(v42 + 16);
      v43 = v91;
      if (v60 >= *(v42 + 24) >> 1)
      {
        sub_1C458AF94();
        v42 = v64;
      }

      v62 = v96;
      v61 = v97;
      v96(v94, v97);
      v62(v52, v61);
      *(v42 + 16) = v60 + 1;
      sub_1C469A97C(v95, v42 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v60);
      if (++v41 == 1)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_23:
  v42 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v65 = v96;
  v66 = v97;
  v96(v90, v97);
  v65(v69, v66);
  result = (*(v72 + 8))(v70, v89);
  *v71 = v42;
  return result;
}

uint64_t sub_1C4696EB8@<X0>(void *a1@<X0>, char *a2@<X1>, int64_t a3@<X2>, void *a4@<X8>)
{
  v80 = a2;
  v7 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v83 = v59 - v8;
  v72 = sub_1C4EF9F68();
  v77 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = v59 - v11;
  v84 = sub_1C4EF9CD8();
  v12 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v69 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v82 = v59 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v81 = v59 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v59 - v22;
  v62 = sub_1C4EF9F88();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v25 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[5];
  v26 = a1[6];
  sub_1C4409678(a1 + 2, v27);
  v28 = *(v26 + 8);
  v29 = v26;
  v30 = v23;
  v28(v27, v29);
  v31 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  sub_1C4EF9E78();
  type metadata accessor for PartOfDayBehaviorHistogram(0);
  v76 = v25;
  sub_1C4614F38();
  if (qword_1EDDE0E38 != -1)
  {
    swift_once();
  }

  v32 = sub_1C4EF9BE8();
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = v20;
  if (!a3)
  {
LABEL_21:
    v31 = *(v12 + 8);
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v59[0] = v30;
  v75 = v20;
  v60 = a4;
  v67 = *MEMORY[0x1E6969A48];
  v33 = *(v77 + 104);
  v77 += 104;
  v65 = (v77 - 96);
  v66 = v33;
  v63 = (v12 + 32);
  v64 = (v12 + 16);
  v34 = 1 - a3;
  v35 = MEMORY[0x1E69E7CC0];
  v80 = (v12 + 8);
  v59[1] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36 = a3;
  v68 = a3;
  while (v36 <= a3)
  {
    v37 = v36 - 1;
    v39 = v71;
    v38 = v72;
    v66(v71, v67, v72);
    v40 = v70;
    v41 = v84;
    sub_1C4EF9F28();
    (*v65)(v39, v38);
    v42 = sub_1C44157D4(v40, 1, v41);
    v78 = v37;
    v79 = v35;
    if (v42 == 1)
    {
      v43 = v81;
      sub_1C4EF9BE8();
      if (sub_1C44157D4(v40, 1, v41) != 1)
      {
        sub_1C4423A0C(v40, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    else
    {
      v43 = v81;
      (*v63)(v81, v40, v41);
    }

    v44 = v69;
    sub_1C4EF9BE8();
    v45 = v43;
    v46 = v82;
    sub_1C4EF9BE8();
    v31 = *v80;
    v47 = v44;
    v48 = v84;
    (*v80)(v47, v84);
    v49 = *(v74 + 48);
    v50 = *v64;
    v51 = v83;
    (*v64)(v83, v45, v48);
    v50(v51 + v49, v46, v48);
    v35 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458AF94();
      v35 = v55;
    }

    v36 = v78;
    v52 = *(v35 + 16);
    v53 = v81;
    if (v52 >= *(v35 + 24) >> 1)
    {
      sub_1C458AF94();
      v35 = v56;
    }

    v54 = v84;
    v31(v82, v84);
    v31(v53, v54);
    *(v35 + 16) = v52 + 1;
    sub_1C469A97C(v83, v35 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v52);
    ++v34;
    a3 = v68;
    if (v34 == 1)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_18:
  a4 = v60;
  v32 = v75;
  v30 = v59[0];
LABEL_19:
  v57 = v84;
  v31(v32, v84);
  v31(v30, v57);
  result = (*(v61 + 8))(v76, v62);
  *a4 = v35;
  return result;
}

uint64_t sub_1C4697664@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = a3;
  v76 = a2;
  v52 = a4;
  v5 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v75 = v51 - v6;
  v69 = sub_1C4EF9F68();
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = v51 - v9;
  v10 = sub_1C4EF9F88();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EF9CD8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v57 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = v51 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v73 = v51 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v51 - v22;
  v25 = a1[5];
  v24 = a1[6];
  v67 = a1;
  sub_1C4409678(a1 + 2, v25);
  (*(v24 + 8))(v25, v24);
  v68 = v23;
  sub_1C4EF9E78();
  v26 = *(v11 + 8);
  v58 = v11 + 8;
  v59 = v10;
  v56 = v26;
  v26(v13, v10);
  v27 = v71;
  if (v71 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (!v71)
  {
LABEL_21:
    v28 = MEMORY[0x1E69E7CC0];
    v49 = v52;
    result = (*(v15 + 8))(v68, v14);
    goto LABEL_19;
  }

  v65 = v13;
  v64 = *MEMORY[0x1E6969A48];
  v63 = (v72 + 13);
  v55 = v72 + 1;
  v53 = (v15 + 32);
  v54 = (v15 + 16);
  v76 = 1 - v71;
  v28 = MEMORY[0x1E69E7CC0];
  v72 = (v15 + 8);
  v29 = ((v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v51[1] = v29;
  v30 = v71;
  v31 = v69;
  while (v30 <= v27)
  {
    v32 = v67[5];
    v33 = v67[6];
    sub_1C4409678(v67 + 2, v32);
    v34 = v65;
    (*(v33 + 8))(v32, v33);
    v35 = v66;
    (*v63)(v66, v64, v31);
    v29 = ((v76 * 7) >> 64);
    if (v29 != ((7 * v76) >> 63))
    {
      goto LABEL_17;
    }

    v71 = v28;
    v36 = v60;
    sub_1C4EF9F28();
    (*v55)(v35, v31);
    v56(v34, v59);
    v37 = sub_1C44157D4(v36, 1, v14);
    v70 = v30 - 1;
    if (v37 == 1)
    {
      v38 = v73;
      sub_1C4EF9BE8();
      if (sub_1C44157D4(v36, 1, v14) != 1)
      {
        sub_1C4423A0C(v36, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    else
    {
      v38 = v73;
      (*v53)(v73, v36, v14);
    }

    v39 = v57;
    sub_1C4EF9BE8();
    v40 = v74;
    sub_1C4EF9BE8();
    v41 = *v72;
    (*v72)(v39, v14);
    v42 = *(v62 + 48);
    v43 = *v54;
    v44 = v75;
    (*v54)(v75, v38, v14);
    v43(v44 + v42, v40, v14);
    v28 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458AF94();
      v28 = v47;
    }

    v45 = *(v28 + 16);
    v31 = v69;
    v46 = v73;
    if (v45 >= *(v28 + 24) >> 1)
    {
      sub_1C458AF94();
      v28 = v48;
    }

    v41(v74, v14);
    v41(v46, v14);
    *(v28 + 16) = v45 + 1;
    sub_1C469A97C(v75, v28 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v45);
    ++v76;
    v29 = v41;
    v30 = v70;
    if (v76 == 1)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  v49 = v52;
  result = v29(v68, v14);
LABEL_19:
  *v49 = v28;
  return result;
}

uint64_t sub_1C4697DE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1C441C8FC();
  a3(v6);
  objc_autoreleasePoolPop(v3);
  return v8;
}

uint64_t sub_1C4697E44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v149 = a3;
  v157 = a2;
  v112 = a4;
  v5 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v142 = *(v5 - 8);
  v143 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v139 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v110 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v110 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v110 - v12;
  v13 = sub_1C456902C(&qword_1EC0BAE70, &unk_1C4F55920);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v125 = &v110 - v14;
  v129 = sub_1C4EF94F8();
  v155 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v124 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v120 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v138 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v147 = &v110 - v21;
  v22 = sub_1C4EF9F68();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C4EF9CD8();
  v152 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v137 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v110 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v113 = &v110 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v119 = &v110 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v131 = &v110 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v133 = &v110 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v123 = &v110 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v122 = &v110 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v117 = &v110 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v116 = &v110 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v148 = &v110 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v110 - v49;
  v111 = sub_1C4EF9F88();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v52 = &v110 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1[5];
  v53 = a1[6];
  sub_1C4409678(a1 + 2, v54);
  (*(v53 + 8))(v54, v53);
  sub_1C4EF9E78();
  v55 = *MEMORY[0x1E6969AB0];
  v154[0] = *(v23 + 104);
  v154[1] = v23 + 104;
  (v154[0])(v25, v55, v22);
  v56 = sub_1C4EF9F78();
  v57 = *(v23 + 8);
  v150 = v22;
  v151 = v23 + 8;
  v153 = v57;
  v57(v25, v22);
  type metadata accessor for PartOfWeekBehaviorHistogram(0);
  v156 = v52;
  v58 = sub_1C4615E88(v50);
  v59 = v149;
  v146 = v58;
  if (v149 < 0)
  {
    goto LABEL_43;
  }

  if (v149)
  {
    v145 = *MEMORY[0x1E6969A10];
    v144 = (v152 + 32);
    v140 = *MEMORY[0x1E6969A48];
    v130 = 2 - v56;
    v60 = __OFSUB__(2, v56);
    v132 = v60;
    v118 = 7 - v56;
    v134 = (v152 + 16);
    v152 += 8;
    v115 = (v155 + 32);
    v114 = (v155 + 8);
    v61 = 1 - v149;
    v157 = MEMORY[0x1E69E7CC0];
    v62 = v149;
    v141 = v50;
    v63 = v148;
    v135 = v25;
    while (1)
    {
      if (v62 > v59)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        break;
      }

      v64 = v62 - 1;
      v65 = v150;
      (v154[0])(v25, v145, v150);
      v66 = v147;
      sub_1C4EF9F28();
      v153(v25, v65);
      if (sub_1C44157D4(v66, 1, v26) == 1)
      {
        sub_1C4EF9BE8();
        if (sub_1C44157D4(v66, 1, v26) != 1)
        {
          sub_1C4423A0C(v66, &unk_1EC0B84E0, qword_1C4F0D2D0);
        }
      }

      else
      {
        (*v144)(v63, v66, v26);
      }

      v155 = v64;
      if (v146)
      {
        (v154[0])(v25, v140, v65);
        if (v132)
        {
          goto LABEL_42;
        }

        v67 = v138;
        sub_1C4EF9F28();
        v153(v25, v65);
        if (sub_1C44157D4(v67, 1, v26) != 1)
        {
          v68 = v131;
          v128 = *v144;
          v128(v131, v138, v26);
          (v154[0])(v25, v140, v65);
          v69 = v120;
          sub_1C4EF9F28();
          v153(v25, v150);
          if (sub_1C44157D4(v69, 1, v26) != 1)
          {
            v94 = v128;
            v128(v119, v69, v26);
            v95 = v113;
            v96 = v131;
            sub_1C4EF9BE8();
            v97 = *(v143 + 48);
            v98 = v121;
            (*v134)(v121, v96, v26);
            v94(&v98[v97], v95, v26);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458AF94();
              v157 = v106;
            }

            v77 = *(v157 + 16);
            v78 = v77 + 1;
            v25 = v135;
            v63 = v148;
            v50 = v141;
            if (v77 >= *(v157 + 24) >> 1)
            {
              sub_1C458AF94();
              v157 = v107;
            }

            v73 = *v152;
            (*v152)(v119, v26);
            v73(v131, v26);
            v73(v63, v26);
            v79 = v154;
            goto LABEL_38;
          }

          (*v152)(v68, v26);
          v67 = v69;
        }

        sub_1C4423A0C(v67, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v70 = v136;
        sub_1C4EF9BE8();
        v71 = v133;
        sub_1C4EF9BE8();
        v72 = v137;
        sub_1C4EF9BE8();
        v73 = *v152;
        (*v152)(v71, v26);
        v74 = *(v143 + 48);
        v75 = *v134;
        v76 = v139;
        (*v134)(v139, v70, v26);
        v75(&v76[v74], v72, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458AF94();
          v157 = v100;
        }

        v77 = *(v157 + 16);
        v78 = v77 + 1;
        v25 = v135;
        v50 = v141;
        if (v77 >= *(v157 + 24) >> 1)
        {
          sub_1C458AF94();
          v157 = v101;
        }

        v63 = v148;
        v73(v137, v26);
        v73(v136, v26);
        v73(v63, v26);
        v79 = &v159;
      }

      else
      {
        v80 = v125;
        sub_1C4EF9EE8();
        v81 = v129;
        if (sub_1C44157D4(v80, 1, v129) != 1)
        {
          (*v115)(v124, v80, v81);
          v88 = v116;
          sub_1C4EF94E8();
          v89 = v117;
          sub_1C4EF94C8();
          v90 = *(v143 + 48);
          v91 = *v144;
          v92 = v126;
          (*v144)(v126, v88, v26);
          v91(&v92[v90], v89, v26);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458AF94();
            v157 = v104;
          }

          v77 = *(v157 + 16);
          v78 = v77 + 1;
          v63 = v148;
          v50 = v141;
          v62 = v155;
          if (v77 >= *(v157 + 24) >> 1)
          {
            sub_1C458AF94();
            v157 = v105;
          }

          (*v114)(v124, v129);
          v73 = *v152;
          (*v152)(v63, v26);
          v93 = v126;
          goto LABEL_39;
        }

        sub_1C4423A0C(v80, &qword_1EC0BAE70, &unk_1C4F55920);
        v82 = v122;
        sub_1C4EF9BE8();
        v83 = v133;
        sub_1C4EF9BE8();
        v84 = v123;
        sub_1C4EF9BE8();
        v73 = *v152;
        (*v152)(v83, v26);
        v85 = *(v143 + 48);
        v86 = *v134;
        v87 = v127;
        (*v134)(v127, v82, v26);
        v86(&v87[v85], v84, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458AF94();
          v157 = v102;
        }

        v77 = *(v157 + 16);
        v78 = v77 + 1;
        v50 = v141;
        v25 = v135;
        v63 = v148;
        if (v77 >= *(v157 + 24) >> 1)
        {
          sub_1C458AF94();
          v157 = v103;
        }

        v73(v123, v26);
        v73(v122, v26);
        v73(v63, v26);
        v79 = &v158;
      }

LABEL_38:
      v93 = *(v79 - 32);
      v62 = v155;
LABEL_39:
      v99 = v157;
      *(v157 + 16) = v78;
      sub_1C469A97C(v93, v99 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v77);
      ++v61;
      v59 = v149;
      if (v61 == 1)
      {
        goto LABEL_45;
      }
    }
  }

  v73 = *(v152 + 8);
  v152 += 8;
  v157 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v108 = v112;
  v73(v50, v26);
  result = (*(v110 + 8))(v156, v111);
  *v108 = v157;
  return result;
}

void sub_1C4698F34()
{
  sub_1C43FE96C();
  v2 = v1;
  v43 = v3;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v41 = v5;
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440A89C();
  if (v2 == 2)
  {
    v25 = sub_1C440E054();
    v26(v25);
    sub_1C43FEDA4(&v50);
    v27 = sub_1C43FC1A0();
    v28(v27);
    if (v52 != 20)
    {
      if (v52 != 255)
      {
        v20 = &v50;
        goto LABEL_13;
      }

      goto LABEL_20;
    }

    if ((v51 & 1) == 0)
    {
      goto LABEL_20;
    }

    v35 = v50;
    sub_1C44059C4();
    v73 = v35;
    v74 = v36;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    v78 = 20;
    v79 = v35;
    v80 = 0u;
    v81 = 0u;
    v82 = 20;
    sub_1C4EF9CC8();
    sub_1C45E0CE4();
    if (v0)
    {
      v14 = v8;
      goto LABEL_29;
    }

    sub_1C442FCB4();
    v40 = v8;
    goto LABEL_33;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v29 = sub_1C4F00978();
      sub_1C442B738(v29, qword_1EDE2DDE0);
      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CE8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v2;
        _os_log_impl(&dword_1C43F8000, v30, v31, "Behavior: geoHashBehavior - Unexpected geohash level: %ld", v32, 0xCu);
        MEMORY[0x1C6942830](v32, -1, -1);
      }

      goto LABEL_20;
    }

    v16 = sub_1C440E054();
    v17(v16);
    sub_1C43FEDA4(&v44);
    v18 = sub_1C43FC1A0();
    v19(v18);
    if (v46 != 18)
    {
      if (v46 != 255)
      {
        v20 = &v44;
LABEL_13:
        sub_1C4423A0C(v20, &qword_1EC0B9A20, &unk_1C4F10DF0);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_20;
    }

    v37 = v44;
    sub_1C44059C4();
    v53 = v37;
    v54 = v38;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v58 = 18;
    v59 = v37;
    v60 = 0u;
    v61 = 0u;
    v62 = 18;
    sub_1C4EF9CC8();
    sub_1C45E0CE4();
    if (v0)
    {
LABEL_29:
      (*(v41 + 8))(v14, v42);
      goto LABEL_20;
    }

    sub_1C442FCB4();
    v40 = v14;
    goto LABEL_33;
  }

  v21 = sub_1C440E054();
  v22(v21);
  sub_1C43FEDA4(&v47);
  v23 = sub_1C43FC1A0();
  v24(v23);
  if (v49 == 19)
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_20;
    }

    v33 = v47;
    sub_1C44059C4();
    v63 = v33;
    v64 = v34;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v68 = 19;
    v69 = v33;
    v70 = 0u;
    v71 = 0u;
    v72 = 19;
    sub_1C4EF9CC8();
    sub_1C45E0CE4();
    if (v0)
    {
      v14 = v11;
      goto LABEL_29;
    }

    sub_1C442FCB4();
    v40 = v11;
LABEL_33:
    v39(v40, v42);
    goto LABEL_20;
  }

  if (v49 != 255)
  {
    v20 = &v47;
    goto LABEL_13;
  }

LABEL_20:
  sub_1C443210C();
  sub_1C43FBC80();
}

void sub_1C4699418()
{
  sub_1C43FE96C();
  sub_1C4402E48();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440A89C();
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v3 = sub_1C4411A10();
  v4(v3);
  sub_1C443327C();
  v5 = sub_1C44069AC();
  v6(v5);
  if (v14 != 255)
  {
    if (v14 == 7 && (v13 & 1) != 0)
    {
      sub_1C440D254();
      v15 = v12[0];
      v16 = v12[1];
      sub_1C441EB48(1);
      sub_1C4416F68(7);
      v17 = 0;
      sub_1C441F6B4(v7);
      sub_1C4EF9CC8();
      sub_1C4412EDC();
      if (v0)
      {
        v8 = sub_1C440A8B4();
        v9(v8);
        sub_1C43FD40C();
        sub_1C43FD40C();
        goto LABEL_7;
      }

      v10 = sub_1C440A8B4();
      v11(v10);
      sub_1C4423A0C(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    sub_1C4423A0C(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

LABEL_7:
  sub_1C443210C();
  sub_1C43FBC80();
}

void sub_1C469960C()
{
  sub_1C43FE96C();
  sub_1C4402E48();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440A89C();
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v3 = sub_1C4411A10();
  v4(v3);
  sub_1C443327C();
  v5 = sub_1C44069AC();
  v6(v5);
  if (v15 != 255)
  {
    if (v15 == 14 && (v14 & 1) != 0)
    {
      sub_1C440D254();
      v16 = v12[0];
      v17 = v12[1];
      sub_1C441EB48(v13 | 0x100000000);
      sub_1C4416F68(14);
      v18 = v13;
      sub_1C441F6B4(v7);
      sub_1C4EF9CC8();
      sub_1C4412EDC();
      if (v0)
      {
        v8 = sub_1C440A8B4();
        v9(v8);
        sub_1C43FD40C();
        sub_1C43FD40C();
        goto LABEL_7;
      }

      v10 = sub_1C440A8B4();
      v11(v10);
      sub_1C4423A0C(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    sub_1C4423A0C(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

LABEL_7:
  sub_1C443210C();
  sub_1C43FBC80();
}

void sub_1C4699804()
{
  sub_1C43FE96C();
  sub_1C4402E48();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440A89C();
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v3 = sub_1C4411A10();
  v4(v3);
  sub_1C443327C();
  v5 = sub_1C44069AC();
  v6(v5);
  if (v14 != 255)
  {
    if (v14 == 9 && (v13 & 1) != 0)
    {
      sub_1C440D254();
      v15 = v12[0];
      v16 = v12[1];
      sub_1C441EB48(1);
      sub_1C4416F68(9);
      v17 = 0;
      sub_1C441F6B4(v7);
      sub_1C4EF9CC8();
      sub_1C4412EDC();
      if (v0)
      {
        v8 = sub_1C440A8B4();
        v9(v8);
        sub_1C43FD40C();
        sub_1C43FD40C();
        goto LABEL_7;
      }

      v10 = sub_1C440A8B4();
      v11(v10);
      sub_1C4423A0C(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    sub_1C4423A0C(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

LABEL_7:
  sub_1C443210C();
  sub_1C43FBC80();
}

void sub_1C46999F8()
{
  sub_1C43FE96C();
  sub_1C4402E48();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440A89C();
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v3 = sub_1C4411A10();
  v4(v3);
  sub_1C443327C();
  v5 = sub_1C44069AC();
  v6(v5);
  if (v15 != 255)
  {
    if (v15 == 4 && (v14 & 1) != 0)
    {
      sub_1C440D254();
      v16 = v12[0];
      v17 = v12[1];
      sub_1C441EB48(v13 | 0x100000000);
      sub_1C4416F68(4);
      v18 = v13;
      sub_1C441F6B4(v7);
      sub_1C4EF9CC8();
      sub_1C4412EDC();
      if (v0)
      {
        v8 = sub_1C440A8B4();
        v9(v8);
        sub_1C43FD40C();
        sub_1C43FD40C();
        goto LABEL_7;
      }

      v10 = sub_1C440A8B4();
      v11(v10);
      sub_1C4423A0C(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    sub_1C4423A0C(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

LABEL_7:
  sub_1C443210C();
  sub_1C43FBC80();
}

uint64_t sub_1C469A058()
{
  sub_1C440962C((v0 + 16));
  sub_1C440962C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1C469A0E0(uint64_t a1, double a2)
{
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v84 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v73 - v13;
  v14 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4423AFC();
  v86 = v18;
  sub_1C4404214();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4423AFC();
  v78 = v20;
  sub_1C4404214();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4423AFC();
  v77 = v22;
  sub_1C4404214();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4423AFC();
  v91 = v24;
  sub_1C4404214();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4423AFC();
  v93 = v30;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v97 = v29;
  v76 = v9;
  v32 = v27;
  v92 = *(v27 + 48);
  v95 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = a1 + v95;
  v34 = *(v28 + 72);
  v35 = (v5 + 32);
  v87 = (v5 + 8);
  v74 = (v5 + 40);
  v99 = MEMORY[0x1E69E7CC0];
  v89 = v3;
  v90 = v27;
  v83 = v16;
  v96 = v34;
  v75 = (v5 + 16);
  v73 = (v5 + 32);
  while (1)
  {
    v98 = v31;
    v36 = v93;
    sub_1C469A9EC(v33, v93);
    v37 = v16;
    v38 = *(v32 + 48);
    v39 = *v35;
    v40 = v97;
    v41 = sub_1C44149C8();
    v39(v41);
    v94 = v38;
    v42 = v40 + v38;
    v16 = v37;
    v43 = v32;
    (v39)(v42, v36 + v92, v3);
    v44 = v99;
    v45 = *(v99 + 16);
    if (!v45)
    {
      goto LABEL_6;
    }

    v46 = v99 + v95;
    v47 = v91;
    sub_1C469A9EC(v99 + v95 + (v45 - 1) * v96, v91);
    v48 = v47;
    v49 = v85;
    sub_1C4EF9BE8();
    v88 = sub_1C4575ED0();
    v50 = sub_1C4F01068();
    v51 = *v87;
    result = (*v87)(v49, v3);
    if (v50)
    {
      sub_1C4423A0C(v48, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v3 = v89;
      v43 = v90;
      v16 = v83;
      v40 = v97;
LABEL_6:
      v53 = v86;
      sub_1C469A9EC(v40, v86);
      v54 = *(v43 + 48);
      (v39)(v16, v53, v3);
      (v39)(&v16[v54], v53 + v54, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458AF94();
        v44 = v70;
      }

      v55 = *(v44 + 16);
      if (v55 >= *(v44 + 24) >> 1)
      {
        sub_1C458AF94();
        v99 = v71;
      }

      else
      {
        v99 = v44;
      }

      v32 = v43;
      sub_1C4423A0C(v40, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v56 = v99;
      *(v99 + 16) = v55 + 1;
      v57 = v96;
      sub_1C469A97C(v16, v56 + v95 + v55 * v96);
      goto LABEL_19;
    }

    v58 = *(v44 + 16);
    if (!v58)
    {
      break;
    }

    v80 = v51;
    v82 = v58;
    v57 = v96;
    v81 = (v58 - 1) * v96;
    v59 = v46 + v81;
    v60 = v77;
    sub_1C469A9EC(v59, v77);
    v61 = v89;
    v62 = *(v90 + 48);
    v63 = v78;
    (v39)(v78, v60, v89);
    (v39)(v63 + v62, v60 + v62, v61);
    v64 = v76;
    v79 = *v75;
    v79(v76, v63 + v62, v61);
    sub_1C4423A0C(v63, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v65 = v97;
    v66 = v94;
    if (sub_1C4F01078())
    {
      v80(v64, v61);
      v79(v84, v65 + v66, v61);
    }

    else
    {
      (v39)(v84, v64, v61);
    }

    v16 = v83;
    v67 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v90;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C4834804();
      v99 = v72;
    }

    v3 = v89;
    sub_1C4423A0C(v91, &qword_1EC0B89F0, &qword_1C4F0DE10);
    result = sub_1C4423A0C(v67, &qword_1EC0B89F0, &qword_1C4F0DE10);
    if (v82 > *(v99 + 16))
    {
      goto LABEL_25;
    }

    v32 = v69;
    (*v74)(v99 + v95 + *(v69 + 48) + v81, v84, v3);
    v35 = v73;
LABEL_19:
    v33 += v57;
    v31 = v98 - 1;
    if (v98 == 1)
    {
      return v99;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C469A798(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v20 = a3;
  v21 = a4;
  v8 = v7;
  v9 = sub_1C4422F90(&v19);
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  v18[3] = v8;
  v18[4] = &off_1F43E2390;
  v18[0] = a2;
  type metadata accessor for BehaviorEventTimeIntervalCalculator();
  v10 = swift_allocObject();
  v11 = sub_1C4418280(v18, v8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (v18 - v13);
  (*(v15 + 16))(v18 - v13, v12);
  v16 = *v14;
  v10[10] = v8;
  v10[11] = &off_1F43E2390;
  v10[7] = v16;
  sub_1C441D670(&v19, (v10 + 2));
  sub_1C440962C(v18);
  return v10;
}

unint64_t sub_1C469A928()
{
  result = qword_1EC0BAE60;
  if (!qword_1EC0BAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAE60);
  }

  return result;
}

uint64_t sub_1C469A97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C469A9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ContextTimeIntervalAggregatorError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C469AB0C()
{
  result = qword_1EC0BAE78;
  if (!qword_1EC0BAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAE78);
  }

  return result;
}

_BYTE *sub_1C469AB78(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1C469AC50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C469AC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C469ACDC(uint64_t a1, void *a2)
{
  v37 = sub_1C4EFB078();
  sub_1C43FCDF8();
  v34 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v32 - v11;
  v12 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = *a2;
  sub_1C4EFB058();
  v38 = a2;
  v36 = v19;
  v20 = v40;
  sub_1C4EFBFC8();
  if (v20)
  {
    return (*(v14 + 8))(v18, v12);
  }

  v40 = v9;
  v33 = v6;
  v22 = v34;
  (*(v14 + 8))(v18, v12);
  v23 = v35;
  sub_1C4EFB058();
  sub_1C43FD428();
  sub_1C4411A24(0xD00000000000001BLL, 0x80000001C4F8D690, v24, v25, &unk_1F43D8270);
  sub_1C4420C3C(v39, &qword_1EC0C5040, &qword_1C4F0F950);
  v26 = *(v22 + 8);
  v27 = v37;
  v26(v23, v37);
  v28 = v40;
  sub_1C4EFB058();
  sub_1C43FD428();
  sub_1C4411A24(0x6D617473656D6974, 0xEE007865646E4970, v29, v30, &unk_1F43D82C0);
  sub_1C4420C3C(v39, &qword_1EC0C5040, &qword_1C4F0F950);
  v26(v28, v27);
  v31 = v33;
  sub_1C4EFB058();
  sub_1C43FD428();
  sub_1C4EFBFB8();
  sub_1C4420C3C(v39, &qword_1EC0C5040, &qword_1C4F0F950);
  return (v26)(v31, v27);
}

void sub_1C469B084(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v24 - v4;
  v5 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v27 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 32);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v8 + 72);
    do
    {
      sub_1C443CCBC(v13, v10);
      v14 = *v10 == 0xD000000000000016 && 0x80000001C4F855C0 == *(v10 + 1);
      if (v14 || (sub_1C4F02938() & 1) != 0)
      {
        v15 = *(v27 + 20);
        v16 = sub_1C4EFBE38();
        (*(*(v16 - 8) + 16))(v7, &v10[v15], v16);
        sub_1C440BAA8(v7, 0, 1, v16);
        sub_1C4EFB498();

        v17 = v7;
        v18 = &qword_1EC0B9BB8;
        v19 = &unk_1C4F1DC60;
      }

      else
      {
        v20 = *(v27 + 20);
        v21 = sub_1C4EFBE38();
        (*(*(v21 - 8) + 16))(v7, &v10[v20], v21);
        sub_1C440BAA8(v7, 0, 1, v21);
        sub_1C4EFB498();
        sub_1C4420C3C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
        v22 = sub_1C4EFBF38();
        v23 = v25;
        sub_1C440BAA8(v25, 1, 1, v22);
        sub_1C4EFB538();

        v17 = v23;
        v18 = &unk_1EC0BCAB0;
        v19 = &unk_1C4F111A0;
      }

      sub_1C4420C3C(v17, v18, v19);
      sub_1C469C410(v10);
      v13 += v26;
      --v12;
    }

    while (v12);
  }
}

void sub_1C469B3E0()
{
  v2 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v27 = v5 - v4;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C4409678((v0 + 40), *(v0 + 64));
  v16 = *(v0 + 16);
  sub_1C469B6F8(v16, v15);
  sub_1C440BAA8(v8, 1, 1, v2);
  sub_1C45E1070(&v25);
  sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(v11 + 8))(v15, v9);
  if (!v1)
  {
    sub_1C4EF9CC8();
    v23 = 0;
    v24 = 256;
    sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
    v17 = (sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90) - 8);
    v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C4F0D130;
    v20 = v19 + v18;
    v21 = (v19 + v18 + v17[14]);
    sub_1C469B6F8(v16, v20);
    v22 = v26[0];
    *v21 = v25;
    v21[1] = v22;
    *(v21 + 25) = *(v26 + 9);
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C469C39C();
    sub_1C4F00F28();
    type metadata accessor for BehaviorContext(0);
    swift_allocObject();
    sub_1C45D689C();
  }
}

uint64_t sub_1C469B6F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  v6 = *(v5 + 104);
  v7 = **(&unk_1E81EF340 + a1);

  return v6(a2, v7, v4);
}

unint64_t sub_1C469B79C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C469B7E8(char a1)
{
  result = 0x7469736956494F4CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6E65764569466957;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6369666963657053;
      break;
    case 5:
      result = 0x6547657372616F43;
      break;
    case 6:
      result = 0x6F6547656772614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C469B8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C469B9BC(char a1)
{
  if (a1)
  {
    return 0x7954797469746E65;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_1C469B9FC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_1C456902C(&qword_1EC0BAE90, &qword_1C4F17A28);
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C4409678(a1, a1[3]);
  sub_1C469C01C();
  sub_1C4F02BF8();
  v17 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    sub_1C469C0C4();
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C469BB7C(void *a1)
{
  sub_1C456902C(&qword_1EC0BAE88, &qword_1C4F17A20);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C469C01C();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C469C070();
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

unint64_t sub_1C469BD6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C469B79C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C469BD9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C469B7E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C469BE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C469B8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C469BEA8(uint64_t a1)
{
  v2 = sub_1C469C01C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C469BEE4(uint64_t a1)
{
  v2 = sub_1C469C01C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C469BF20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C469BB7C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1C469BF74()
{
  result = qword_1EC0BAE80;
  if (!qword_1EC0BAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BAE80);
  }

  return result;
}

unint64_t sub_1C469BFC8()
{
  result = qword_1EDDFA800;
  if (!qword_1EDDFA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA800);
  }

  return result;
}

unint64_t sub_1C469C01C()
{
  result = qword_1EDDFA9D0[0];
  if (!qword_1EDDFA9D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFA9D0);
  }

  return result;
}