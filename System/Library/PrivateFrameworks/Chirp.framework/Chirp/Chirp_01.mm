uint64_t HandshakePattern.hashValue.getter()
{
  v1 = *v0;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  return sub_243400460();
}

unint64_t sub_2433F9150()
{
  result = qword_27ED73720;
  if (!qword_27ED73720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73720);
  }

  return result;
}

unint64_t sub_2433F91A8()
{
  result = qword_27ED73728;
  if (!qword_27ED73728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED73730, &qword_243401448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73728);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandshakePattern(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakePattern(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2433F936C()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F98];
  while (1)
  {
    v4 = byte_285624650[v0 + 32];
    v5 = sub_243400100();
    v7 = v6;
    v8 = sub_243400140();
    v9 = sub_2433FB078(v8, v5, v7);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_2433FAB7C(v4);
    v18 = v1[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v1[3] < v21)
    {
      sub_2433FAC58(v21, isUniquelyReferenced_nonNull_native);
      result = sub_2433FAB7C(v4);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v22)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v27 = result;
    sub_2433FAF08();
    result = v27;
    if (v22)
    {
LABEL_2:
      v2 = (v1[7] + 32 * result);
      *v2 = v9;
      v2[1] = v11;
      v2[2] = v13;
      v2[3] = v15;

      goto LABEL_3;
    }

LABEL_10:
    v1[(result >> 6) + 8] |= 1 << result;
    *(v1[6] + result) = v4;
    v24 = (v1[7] + 32 * result);
    *v24 = v9;
    v24[1] = v11;
    v24[2] = v13;
    v24[3] = v15;
    v25 = v1[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_16;
    }

    v1[2] = v26;
LABEL_3:
    if (++v0 == 38)
    {
      qword_27ED737D0 = v1;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_2434003D0();
  __break(1u);
  return result;
}

uint64_t sub_2433F954C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_243400150();
  return sub_2434001C0();
}

uint64_t sub_2433F95CC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73698, &qword_243401550);
  switch(v1)
  {
    case 1:
      result = swift_allocObject();
      *(result + 16) = xmmword_243401140;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      v3 = &unk_2856246C0;
      goto LABEL_22;
    case 2:
      result = swift_allocObject();
      *(result + 16) = xmmword_243401140;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      v3 = &unk_2856246E8;
      goto LABEL_22;
    case 3:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624710;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285624738;
      goto LABEL_43;
    case 4:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856247B0;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_2856247D8;
      goto LABEL_43;
    case 5:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624800;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285624828;
      goto LABEL_43;
    case 6:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624760;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285624788;
      goto LABEL_43;
    case 7:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624850;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285624878;
      goto LABEL_43;
    case 8:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856248F0;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624918;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285624940;
      goto LABEL_41;
    case 9:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856248A0;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_2856248C8;
      goto LABEL_43;
    case 10:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856249B8;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_2856249E0;
      *(result + 136) = &type metadata for 🔙;
      *(result + 144) = &off_285624618;
      *(result + 112) = 0;
      v4 = &unk_285624A08;
      goto LABEL_41;
    case 11:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624968;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285624990;
      goto LABEL_43;
    case 12:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624A30;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285624A58;
      goto LABEL_43;
    case 13:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624A80;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624AA8;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285624AD0;
      goto LABEL_41;
    case 14:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624AF8;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285624B20;
      goto LABEL_43;
    case 15:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624B48;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285624B70;
      goto LABEL_43;
    case 16:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624B98;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624BC0;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285624BE8;
      goto LABEL_41;
    case 17:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013D0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624C10;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624C38;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      *(result + 120) = &unk_285624C60;
      *(result + 176) = &type metadata for 🔙;
      *(result + 184) = &off_285624618;
      *(result + 152) = 0;
      v6 = &unk_285624C88;
      goto LABEL_38;
    case 18:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013D0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624CB0;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624CD8;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      *(result + 120) = &unk_285624D00;
      *(result + 176) = &type metadata for 🔙;
      *(result + 184) = &off_285624618;
      *(result + 152) = 0;
      v6 = &unk_285624D28;
      goto LABEL_38;
    case 19:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624D50;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624D78;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285624DA0;
      goto LABEL_41;
    case 20:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013D0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624DC8;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624DF0;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      *(result + 120) = &unk_285624E18;
      *(result + 176) = &type metadata for 🔙;
      *(result + 184) = &off_285624618;
      *(result + 152) = 0;
      v6 = &unk_285624E40;
      goto LABEL_38;
    case 21:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013D0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624E68;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624E90;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      *(result + 120) = &unk_285624EB8;
      *(result + 176) = &type metadata for 🔙;
      *(result + 184) = &off_285624618;
      *(result + 152) = 0;
      v6 = &unk_285624EE0;
      goto LABEL_38;
    case 22:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624F08;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624F30;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285624F58;
      goto LABEL_41;
    case 23:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013D0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285624F80;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285624FA8;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      *(result + 120) = &unk_285624FD0;
      *(result + 176) = &type metadata for 🔙;
      *(result + 184) = &off_285624618;
      *(result + 152) = 0;
      v6 = &unk_285624FF8;
LABEL_38:
      *(result + 160) = v6;
      return result;
    case 24:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625020;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285625048;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285625070;
      goto LABEL_41;
    case 25:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625098;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_2856250C0;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_2856250E8;
      goto LABEL_41;
    case 26:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625110;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285625138;
      goto LABEL_43;
    case 27:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625160;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285625188;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_2856251B0;
      goto LABEL_41;
    case 28:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856251D8;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285625200;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285625228;
      goto LABEL_41;
    case 29:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625250;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285625278;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_2856252A0;
      goto LABEL_41;
    case 30:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856252C8;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_2856252F0;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285625318;
      goto LABEL_41;
    case 31:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625340;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285625368;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285625390;
      goto LABEL_41;
    case 32:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856253B8;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_2856253E0;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285625408;
      goto LABEL_41;
    case 33:
      result = swift_allocObject();
      *(result + 16) = xmmword_2434013C0;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625430;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      v5 = &unk_285625458;
LABEL_43:
      *(result + 80) = v5;
      *(result + 72) = 0;
      return result;
    case 34:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625480;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_2856254A8;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_2856254D0;
      goto LABEL_41;
    case 35:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856254F8;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285625520;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285625548;
      goto LABEL_41;
    case 36:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_285625570;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285625598;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_2856255C0;
      goto LABEL_41;
    case 37:
      result = swift_allocObject();
      *(result + 32) = 1;
      *(result + 16) = xmmword_2434013B0;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      *(result + 40) = &unk_2856255E8;
      *(result + 96) = &type metadata for 🔙;
      *(result + 104) = &off_285624618;
      *(result + 72) = 0;
      *(result + 80) = &unk_285625610;
      *(result + 136) = &type metadata for 🔜;
      *(result + 144) = &off_285624570;
      *(result + 112) = 1;
      v4 = &unk_285625638;
LABEL_41:
      *(result + 120) = v4;
      break;
    default:
      result = swift_allocObject();
      *(result + 16) = xmmword_243401140;
      *(result + 32) = 1;
      *(result + 56) = &type metadata for 🔜;
      *(result + 64) = &off_285624570;
      v3 = &unk_285624698;
LABEL_22:
      *(result + 40) = v3;
      break;
  }

  return result;
}

_BYTE *sub_2433FA794(_BYTE *result, uint64_t *a2)
{
  v3 = *result;
  if (v3 <= 1)
  {
    if (*result)
    {
      v20 = a2[3];
      v21 = *a2;
      if ((v20 & 1) != 0 && (result = swift_isUniquelyReferenced_nonNull(), *a2 = v21, result))
      {
        v22 = a2[2];
      }

      else
      {
        sub_2433FB128(a2[1], a2[2], v20);
        v42 = v41;
        v44 = v43;
        v22 = v45;
        v20 = v46;
        result = swift_unknownObjectRelease();
        *a2 = v42;
        a2[1] = v44;
        a2[2] = v22;
        a2[3] = v20;
      }

      if (v20 >= 2 && v22 <= 0)
      {
        v33 = a2[1];
        v31 = *(v33 + 24);
        v32 = *(v33 + 32);
        goto LABEL_47;
      }

      goto LABEL_59;
    }

    if (a2[2] <= 0 && a2[3] >= 2)
    {
      sub_2433F22A8(a2[1], v64);
      v8 = v65;
      v9 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v10 = (*(v9 + 16))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v64);
      sub_2433F857C(v10);
      v11 = a2[3];
      v12 = *a2;
      if ((v11 & 1) != 0 && (result = swift_isUniquelyReferenced_nonNull(), *a2 = v12, result))
      {
        v13 = a2[2];
      }

      else
      {
        sub_2433FB128(a2[1], a2[2], v11);
        v56 = v55;
        v58 = v57;
        v13 = v59;
        v11 = v60;
        result = swift_unknownObjectRelease();
        *a2 = v56;
        a2[1] = v58;
        a2[2] = v13;
        a2[3] = v11;
      }

      if (v11 >= 2 && v13 <= 0)
      {
        v61 = a2[1];
        v62 = *(v61 + 24);
        v63 = *(v61 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
        return (*(v63 + 24))(&unk_285625660, v62, v63);
      }

      goto LABEL_61;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      v4 = a2[3];
      v5 = *a2;
      if ((v4 & 1) != 0 && (result = swift_isUniquelyReferenced_nonNull(), *a2 = v5, result))
      {
        v6 = a2[2];
      }

      else
      {
        sub_2433FB128(a2[1], a2[2], v4);
        v35 = v34;
        v37 = v36;
        v6 = v38;
        v4 = v39;
        result = swift_unknownObjectRelease();
        *a2 = v35;
        a2[1] = v37;
        a2[2] = v6;
        a2[3] = v4;
      }

      if (v4 >= 6 && v6 <= 2)
      {
        v40 = a2[1];
        v31 = *(v40 + 104);
        v32 = *(v40 + 112);
        v33 = v40 + 80;
        goto LABEL_47;
      }

      goto LABEL_60;
    }

    v17 = a2[2];
    v18 = a2[3] >> 1;
    if (!__OFSUB__(v18, v17))
    {
      v19 = a2[2];
      if (v18 != v17)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_65:
          __break(1u);
          return result;
        }

        if (v18 < v19)
        {
          goto LABEL_62;
        }

        if (v19 < v17)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      if (v18 >= v17)
      {
        a2[2] = v19;
        return result;
      }

      goto LABEL_64;
    }

    __break(1u);
    goto LABEL_57;
  }

  v14 = a2[3];
  v15 = *a2;
  if ((v14 & 1) != 0 && (result = swift_isUniquelyReferenced_nonNull(), *a2 = v15, result))
  {
    v16 = a2[2];
  }

  else
  {
    sub_2433FB128(a2[1], a2[2], v14);
    v24 = v23;
    v26 = v25;
    v16 = v27;
    v14 = v28;
    result = swift_unknownObjectRelease();
    *a2 = v24;
    a2[1] = v26;
    a2[2] = v16;
    a2[3] = v14;
  }

  if (v14 < 4 || v16 > 1)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v30 = a2[1];
  v31 = *(v30 + 64);
  v32 = *(v30 + 72);
  v33 = v30 + 40;
LABEL_47:
  __swift_mutable_project_boxed_opaque_existential_1(v33, v31);
  v48 = (*(v32 + 32))(v64, v31, v32);
  v50 = v49;
  v51 = *v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v50 = v51;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v51 = sub_2433F6B50(0, *(v51 + 2) + 1, 1, v51);
    *v50 = v51;
  }

  v54 = *(v51 + 2);
  v53 = *(v51 + 3);
  if (v54 >= v53 >> 1)
  {
    v51 = sub_2433F6B50((v53 > 1), v54 + 1, 1, v51);
    *v50 = v51;
  }

  *(v51 + 2) = v54 + 1;
  v51[v54 + 32] = 6;
  return v48(v64, 0);
}

unint64_t sub_2433FAB7C(uint64_t a1)
{
  v1 = a1;
  sub_243400440();
  MEMORY[0x245D33DD0](v1);
  v2 = sub_243400460();

  return sub_2433FABE8(v1, v2);
}

unint64_t sub_2433FABE8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2433FAC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736F0, &unk_243401540);
  v32 = v4;
  result = sub_243400380();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 32 * v20;
      v34 = *v22;
      v23 = *(v22 + 24);
      v33 = *(v22 + 16);
      if ((v32 & 1) == 0)
      {
      }

      sub_243400440();
      MEMORY[0x245D33DD0](v21);
      result = sub_243400460();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v34;
      *(v16 + 16) = v33;
      *(v16 + 24) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_2433FAF08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736F0, &unk_243401540);
  v2 = *v0;
  v3 = sub_243400370();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v21;
        *(v22 + 16) = v20;
        *(v22 + 24) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2433FB078(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_243400160();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

void sub_2433FB128(void *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_2433EF880((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED736A8, qword_243401118);
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6[2];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2433FB2BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    MEMORY[0x245D34100](v2, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_2433FB340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2433FB388(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MessagePatternTokens(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessagePatternTokens(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2433FB528()
{
  result = qword_27ED73738;
  if (!qword_27ED73738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED73740, qword_2434016A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73738);
  }

  return result;
}

unint64_t sub_2433FB5A0()
{
  result = qword_27ED73748;
  if (!qword_27ED73748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73748);
  }

  return result;
}

void sub_2433FB624(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2433FEA40(v10, v9, a2, a3);
  if (a1 && v11 < a1)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    v13 = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2433FEAF4(v10, a1, a2, a3);
  v13 = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    v13 = a2;
  }

LABEL_27:
  if (v12 >= v13)
  {
LABEL_28:
    v14 = sub_2433FFE40();
    v16 = v15;
    sub_2433EB69C(a2, a3);
    *a4 = v14;
    a4[1] = v16;
    return;
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_2433FB76C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - a2;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v4 = v3 >= result;
  result = v3 - result;
  if (!v4)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_2433FB7AC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -a1;
  v10 = sub_2433FEA40(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    v11 = sub_2433FEAF4(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v12 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v12 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v12 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    v11 = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    v11 = 0;
    v12 = BYTE6(a3);
    goto LABEL_27;
  }

  v11 = v5;
LABEL_26:
  v12 = v5 >> 32;
LABEL_27:
  if (v12 >= v11)
  {
LABEL_28:
    v13 = sub_2433FFE40();
    v15 = v14;
    sub_2433EB69C(v5, a3);
    *a4 = v13;
    a4[1] = v15;
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_2433FB8F8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v53 - v15;
  v58 = a3;
  v60 = a5;
  v18 = type metadata accessor for CipherState(0, a3, a5, v17);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v59 = a7;
  v56 = v19 + 56;
  v20(a7, 1, 1, v18);
  v21 = a2 >> 62;
  v57 = v20;
  if ((a2 >> 62) > 1)
  {
    v22 = a1;
    v23 = a2;
    a1 = 0;
    if (v21 != 2)
    {
      goto LABEL_10;
    }

    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    a1 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = a1;
    v23 = a2;
    a1 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = a1;
  v23 = a2;
  a1 = HIDWORD(a1) - a1;
LABEL_10:
  v55 = v18;
  v26 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (sub_243400040() < a1)
  {
    v61 = v22;
    v62 = v23;
    v28 = v23;
    sub_2433EBF08();
    sub_2433FFF00();
    v29 = sub_2433FEE6C(v16, AssociatedTypeWitness, *(AssociatedConformanceWitness + 32));
    v31 = v30;
    (*(v54 + 8))(v16, AssociatedTypeWitness);
LABEL_24:
    v44 = v58;
    v61 = v58;
    v62 = a4;
    v45 = v60;
    v63 = v60;
    v64 = v26;
    v46 = type metadata accessor for SymmetricState(0, &v61);
    v47 = v59;
    v48 = (v59 + *(v46 + 56));
    *v48 = v29;
    v48[1] = v31;
    v49 = v55;
    v50 = sub_243400280();
    (*(*(v50 - 8) + 8))(v47, v50);
    v57(v47, 1, 1, v49);
    v61 = v44;
    v62 = a4;
    v63 = v45;
    v64 = v26;
    v51 = (v47 + *(type metadata accessor for SymmetricState(0, &v61) + 56));
    v52 = v51[1];
    v61 = *v51;
    v62 = v52;
    sub_2433EB648(v61, v52);
    sub_2433FFF30();
    sub_2433EB69C(v22, v28);
    return;
  }

  v32 = sub_243400040();
  v28 = v23;
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      v33 = 0;
      goto LABEL_22;
    }

    v35 = *(v22 + 16);
    v34 = *(v22 + 24);
    v36 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (!v36)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v33 = BYTE6(v23);
LABEL_22:
    v36 = __OFSUB__(v32, v33);
    v37 = v32 - v33;
    if (!v36)
    {
      v61 = sub_2433FEDCC(v37);
      v62 = v38;
      sub_2433FDDB4(&v61, 0);
      v39 = v61;
      v40 = v62;
      v66 = v22;
      v67 = v23;
      v64 = MEMORY[0x277CC9318];
      v65 = MEMORY[0x277CC9300];
      v41 = __swift_project_boxed_opaque_existential_1(&v61, MEMORY[0x277CC9318]);
      v43 = *v41;
      v42 = v41[1];
      sub_2433EB648(v22, v23);
      sub_2433EB648(v39, v40);
      sub_2433F5580(v43, v42, &v66);
      sub_2433EB69C(v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&v61);
      v29 = v66;
      v31 = v67;
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_26;
  }

  LODWORD(v33) = HIDWORD(v22) - v22;
  if (!__OFSUB__(HIDWORD(v22), v22))
  {
    v33 = v33;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_2433FBD18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20[1] = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v20 - v8;
  v10 = v3 + *(a3 + 56);
  v12 = *(v10 + 8);
  *&v25 = *v10;
  v11 = v25;
  *(&v25 + 1) = v12;
  v23 = MEMORY[0x277CC9318];
  v24 = MEMORY[0x277CC9300];
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v13 = __swift_project_boxed_opaque_existential_1(&v22, MEMORY[0x277CC9318]);
  v14 = *v13;
  v15 = v13[1];
  sub_2433EB648(v11, v12);
  sub_2433EB648(a1, a2);
  sub_2433F5580(v14, v15, &v25);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v22 = v25;
  sub_2433EBF08();
  sub_2433FFF00();
  sub_2433EB69C(v22, *(&v22 + 1));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = sub_2433FEE6C(v9, AssociatedTypeWitness, *(AssociatedConformanceWitness + 32));
  v19 = v18;
  (*(v21 + 8))(v9, AssociatedTypeWitness);
  sub_2433EB69C(*v10, *(v10 + 8));
  *v10 = v17;
  *(v10 + 8) = v19;
}

uint64_t sub_2433FBF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2433FFF40();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, a3);
  sub_2433FFF30();
  sub_2433FC9DC(v13, a2);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2433FC088(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a1;
  v6 = type metadata accessor for CipherState(255, *(a3 + 16), *(a3 + 32), a4);
  v7 = sub_243400280();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  (*(v8 + 16))(v23 - v9, v4, v7);
  v11 = *(*(v6 - 8) + 48);
  v12 = v11(v10, 1, v6);
  (*(v8 + 8))(v10, v7);
  if (v12 == 1)
  {
    v13 = v24;
    v14 = v25;
    sub_2433EB648(v25, v24);
    v6 = v14;
    goto LABEL_7;
  }

  v15 = v24;
  v14 = v25;
  v28[0] = v25;
  v28[1] = v24;
  v16 = &v4[*(a3 + 56)];
  v17 = *v16;
  v18 = v16[1];
  v26 = *v16;
  v27 = v18;
  result = v11(v4, 1, v6);
  if (result != 1)
  {
    v13 = v15;
    sub_2433EB648(v17, v18);
    v20 = sub_2433EBF08();
    v21 = v23[1];
    v22 = sub_2433EAF34(v28, &v26, v6, MEMORY[0x277CC9318], MEMORY[0x277CC9318], v20, v20);
    if (v21)
    {
      sub_2433EB69C(v26, v27);
      return v6;
    }

    v6 = v22;
    sub_2433EB69C(v26, v27);
LABEL_7:
    sub_2433FBD18(v14, v13, a3);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2433FC2AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v29 = sub_2433FFF40();
  v27 = *(v29 - 8);
  v6 = MEMORY[0x28223BE20](v29);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(a3 + 40);
  v12 = a3;
  v13 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_243400040();
  v15 = 3 * result;
  if ((result * 3) >> 64 == (3 * result) >> 63)
  {
    *&v30 = a1;
    *(&v30 + 1) = a2;
    v26 = result;
    sub_2433EB648(a1, a2);
    v16 = MEMORY[0x277CC9318];
    sub_2433FFF30();
    v17 = *(a3 + 52);
    v30 = xmmword_2434010E0;
    v18 = sub_2433EBF08();
    v19 = v10;
    v20 = v27;
    v21 = v28;
    static HKDF.deriveKey<A>(inputKeyMaterial:salt:info:outputByteCount:)(v8, v28 + v17, &v30, v15, v13, v16, v11, v18);
    sub_2433EB69C(v30, *(&v30 + 1));
    v22 = *(v20 + 8);
    v23 = v29;
    v24 = v22(v8, v29);
    MEMORY[0x28223BE20](v24);
    *(&v25 - 6) = *(v12 + 16);
    *(&v25 - 5) = v13;
    *(&v25 - 4) = *(v12 + 32);
    *(&v25 - 3) = v11;
    *(&v25 - 2) = v26;
    *(&v25 - 1) = v21;
    sub_2433FFF20();
    return v22(v19, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2433FC528@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v25 = a2;
  v26 = a4;
  v5 = sub_2433FFF40();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = *(a3 + 40);
  v13 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = sub_243400040();
  v27 = xmmword_2434010E0;
  v28 = xmmword_2434010E0;
  result = sub_2433FFF30();
  v16 = *(a3 + 52);
  v28 = v27;
  if (v14 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_2433EBF08();
    static HKDF.deriveKey<A>(inputKeyMaterial:salt:info:outputByteCount:)(v9, v23[1] + v16, &v28, 2 * v14, v13, MEMORY[0x277CC9318], v12, v17);
    sub_2433EB69C(v28, *(&v28 + 1));
    v18 = *(v6 + 8);
    v19 = v18(v9, v5);
    MEMORY[0x28223BE20](v19);
    v20 = *(a3 + 16);
    v23[-6] = v20;
    v23[-5] = v13;
    v21 = *(a3 + 32);
    v23[-4] = v21;
    v23[-3] = v12;
    v23[-2] = v14;
    LOBYTE(v23[-1]) = v24 & 1;
    BYTE1(v23[-1]) = v25 & 1;
    type metadata accessor for TransportState(0, v20, v21, v22);
    sub_2433FFF20();
    return v18(v11, v5);
  }

  return result;
}

void sub_2433FC7AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v6 = type metadata accessor for CipherState(255, *(a3 + 16), *(a3 + 32), a4);
  v7 = sub_243400280();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  (*(v8 + 16))(v24 - v9, v4, v7);
  v11 = *(*(v6 - 8) + 48);
  v12 = v11(v10, 1, v6);
  (*(v8 + 8))(v10, v7);
  if (v12 == 1)
  {
    v14 = v25;
    v13 = v26;
    sub_2433FBD18(v25, v26, a3);
    sub_2433EB648(v14, v13);
  }

  else
  {
    v29[0] = v25;
    v29[1] = v26;
    v15 = &v4[*(a3 + 56)];
    v16 = *v15;
    v17 = v15[1];
    v27 = *v15;
    v28 = v17;
    if (v11(v4, 1, v6) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_2433EB648(v16, v17);
      v18 = sub_2433EBF08();
      v19 = v24[1];
      v20 = sub_2433EA94C(v29, &v27, v6, MEMORY[0x277CC9318], MEMORY[0x277CC9318], v18, v18);
      if (v19)
      {
        sub_2433EB69C(v27, v28);
      }

      else
      {
        v22 = v20;
        v23 = v21;
        sub_2433EB69C(v27, v28);
        sub_2433FBD18(v22, v23, a3);
      }
    }
  }
}

uint64_t sub_2433FC9DC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_2433FFF40();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = *(a2 + 40);
  v14 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_243400040();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = 2 * result;
    (*(v4 + 16))(v7, v23, v3);
    sub_2433FE92C();
    sub_2433FFF30();
    v16 = *(a2 + 52);
    v25 = xmmword_2434010E0;
    v17 = sub_2433EBF08();
    v18 = v12;
    v19 = v24;
    static HKDF.deriveKey<A>(inputKeyMaterial:salt:info:outputByteCount:)(v10, v24 + v16, &v25, v22, v14, MEMORY[0x277CC9318], v13, v17);
    sub_2433EB69C(v25, *(&v25 + 1));
    v20 = *(v4 + 8);
    v21 = v20(v10, v3);
    MEMORY[0x28223BE20](v21);
    *(&v22 - 6) = *(a2 + 16);
    *(&v22 - 5) = v14;
    *(&v22 - 4) = *(a2 + 32);
    *(&v22 - 3) = v13;
    *(&v22 - 2) = v19;
    sub_2433FFF20();
    return v20(v18, v3);
  }

  return result;
}

uint64_t static HKDF.deriveKey<A>(inputKeyMaterial:salt:info:outputByteCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73558, &qword_243400908);
  sub_2433FFF20();
  v8 = v11;
  sub_2433EB558();
  sub_2433FFFF0();
  v9 = *(v11 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2433F6924(0, v9, 0, v11);
  }

  memset_s(v8 + 32, v9, 0, v9);
}

unint64_t sub_2433FCD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a3;
  v45 = a2;
  v38 = a4;
  v36 = type metadata accessor for CipherState(255, a4, a6, a4);
  v37 = sub_243400280();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - v10;
  v11 = sub_2433FFF40();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v33 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  swift_getAssociatedTypeWitness();
  v31 = a5;
  v32 = a7;
  swift_getAssociatedConformanceWitness();
  result = sub_243400040();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v21 = v45 - a1;
  if (!a1)
  {
    v21 = 0;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (v21 >= result)
  {
    v21 = result;
  }

  v41 = 0;
  v42 = v21;
  v22 = v45;
  v43 = a1;
  v44 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73758, &qword_2434017A8);
  sub_2433FE9A8();
  v30 = v17;
  sub_2433FFF30();
  v41 = v38;
  v42 = v31;
  v43 = v39;
  v44 = v32;
  v23 = type metadata accessor for SymmetricState(0, &v41);
  (*(v12 + 40))(v40 + *(v23 + 52), v19, v11);
  v24 = sub_243400040();
  v41 = sub_2433FB76C(v24, a1, v22);
  v42 = v25;
  v43 = v26;
  v44 = v27;
  sub_2433FFF30();
  sub_2433FD148();
  (*(v12 + 16))(v33, v19, v11);
  sub_2433FE92C();
  v28 = v30;
  sub_2433FFF30();
  (*(v12 + 8))(v19, v11);
  v29 = v34;
  sub_2433EA8C4(v28, v38, v39, v34);
  (*(*(v36 - 8) + 56))(v29, 0, 1);
  return (*(v35 + 40))(v40, v29, v37);
}

uint64_t sub_2433FD148()
{
  v1 = sub_2433FFF40();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v4, v0, v1);
  v7 = v0;
  sub_2433FFF20();
  return (*(v2 + 8))(v4, v1);
}

void sub_2433FD260(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v66 = a4;
  v73 = a5;
  v65 = type metadata accessor for CipherState(255, a5, a7, a4);
  v16 = sub_243400280();
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v63 = &v53 - v17;
  v18 = sub_2433FFF40();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = a2 - a1;
  if (!a1)
  {
    v26 = 0;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v58 = v9;
  v59 = v25;
  v60 = v24;
  v62 = v16;
  if (v26 >= a3)
  {
    v26 = a3;
  }

  *&v69 = 0;
  *(&v69 + 1) = v26;
  v54 = a1;
  v70 = a1;
  v71 = a2;
  v55 = a2;
  v27 = &v53 - v22;
  v28 = v23;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73758, &qword_2434017A8);
  v30 = sub_2433FE9A8();
  sub_2433FFF30();
  *&v69 = v73;
  *(&v69 + 1) = a6;
  v57 = a7;
  v70 = a7;
  v71 = a8;
  v31 = type metadata accessor for SymmetricState(0, &v69);
  v32 = *(v31 + 52);
  v56 = v19;
  v33 = *(v19 + 40);
  v34 = v27;
  v61 = v28;
  v33(v66 + v32, v27, v28);
  if ((a3 + 0x4000000000000000) >= 0)
  {
    v35 = sub_2433FB76C(2 * a3, v54, v55);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v71 = v29;
    v72 = v30;
    v42 = swift_allocObject();
    *&v69 = v42;
    v42[2] = v35;
    v42[3] = v37;
    v42[4] = v39;
    v42[5] = v41;
    v43 = __swift_project_boxed_opaque_existential_1(&v69, v29);
    v44 = v43[1];
    v67[0] = *v43;
    v67[1] = v44;
    sub_243400420();
    v45 = v68;
    __swift_destroy_boxed_opaque_existential_1(&v69);
    v69 = v45;
    sub_2433EB648(v45, *(&v45 + 1));
    sub_2433FB624(a3, v45, *(&v45 + 1), v67);
    v46 = v67[0];
    sub_2433EB648(v45, *(&v45 + 1));
    sub_2433FB7AC(a3, v45, *(&v45 + 1), v67);
    v68 = v67[0];
    v47 = v34;
    sub_2433FFF30();
    v48 = v66;
    sub_2433FBD18(v46, *(&v46 + 1), v31);
    sub_2433FD148();
    v49 = v56;
    v50 = v61;
    (*(v56 + 16))(v60, v47, v61);
    sub_2433FE92C();
    v51 = v59;
    sub_2433FFF30();
    v52 = v63;
    sub_2433EA8C4(v51, v73, v57, v63);
    (*(*(v65 - 8) + 56))(v52, 0, 1);
    (*(v64 + 40))(v48, v52, v62);
    sub_2433FE1BC(&v69);
    sub_2433EB69C(v46, *(&v46 + 1));
    (*(v49 + 8))(v47, v50);
    sub_2433EB69C(v69, *(&v69 + 1));
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_2433FD738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v22 = a7;
  v23 = a4;
  v24 = a5;
  v25 = a9;
  v15 = sub_2433FFF40();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  sub_2433FFF30();
  v26 = a6;
  v27 = v22;
  v28 = a8;
  v29 = a10;
  v30 = a3;
  v31 = v23;
  v32 = v24;
  type metadata accessor for TransportState(0, a6, a8, v19);
  sub_2433FFF20();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_2433FD8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v11 = a4;
  v43 = a8;
  v15 = type metadata accessor for CipherState(0, a6, a7, a4);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v38 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = &v33 - v18;
  v19 = sub_2433FFF40();
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v33 - v24;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v26 = a2 - a1;
  if (!a1)
  {
    v26 = 0;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (v26 >= a3)
  {
    v26 = a3;
  }

  v39 = 0;
  v40 = v26;
  v41 = a1;
  v42 = a2;
  v34 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73758, &qword_2434017A8);
  v36 = v11;
  sub_2433FE9A8();
  v35 = a5;
  v27 = a7;
  sub_2433FFF30();
  sub_2433FD148();
  v39 = sub_2433FB76C(v34, a1, a2);
  v40 = v28;
  v41 = v29;
  v42 = v30;
  sub_2433FFF30();
  sub_2433FD148();
  v31 = v37;
  sub_2433EA8C4(v25, a6, v27, v37);
  v32 = v38;
  sub_2433EA8C4(v22, a6, v27, v38);
  return sub_2433EC150(v36 & 1, v35 & 1, v31, v32, a6, v27, v43);
}

uint64_t sub_2433FDAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2433FFF40();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a2 - a1 == 32)
  {
    return result;
  }

  if (a2 - a1 != 64)
  {
LABEL_6:
    __break(1u);
    return result;
  }

  v11 = xmmword_243401770;
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73758, &qword_2434017A8);
  sub_2433FE9A8();
  sub_2433FFF30();
  return (*(v7 + 40))(a3, v10, v6);
}

char *sub_2433FDC38@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  if (!result || (v3 = result, v4 = a2 - result, a2 == result))
  {
    v5 = MEMORY[0x277D84F90];
LABEL_7:
    *a3 = v5;
    return result;
  }

  v6 = a3;
  result = sub_2433EF80C(a2 - result, 0);
  if (a2 > v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      result = memmove(result + 32, v3, v4);
      a3 = v6;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2433FDCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CipherState(255, *(a1 + 16), *(a1 + 32), a4);
  result = sub_243400280();
  if (v5 <= 0x3F)
  {
    result = sub_2433FFF40();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_2433FDDB4(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_2433EB69C(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2434010E0;
      sub_2433EB69C(0, 0xC000000000000000);
      result = sub_2433FE884(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_2433EB69C(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_2433EB69C(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_2434010E0;
  sub_2433EB69C(0, 0xC000000000000000);
  sub_2433FFDE0();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_2433FFD70();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_2433FFDA0();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_2433FFD90();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_2433FE01C@<X0>(_BYTE *__src@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2433FEB7C(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2433FFDB0();
      swift_allocObject();
      v8 = sub_2433FFD60();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2433FFE00();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_2433FE0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_2433FE724(MEMORY[0x277D84B78], sub_2433FF4AC, v10, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84A98], TupleTypeMetadata2, MEMORY[0x277D84AC0], v9);
}

uint64_t sub_2433FE1BC(uint64_t *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v4)
    {
      sub_2433EB69C(v3, v2);
      *&__s = v3;
      WORD4(__s) = v2;
      BYTE10(__s) = BYTE2(v2);
      BYTE11(__s) = BYTE3(v2);
      BYTE12(__s) = BYTE4(v2);
      BYTE13(__s) = BYTE5(v2);
      BYTE14(__s) = BYTE6(v2);
      result = memset_s(&__s, BYTE6(v2), 0, BYTE6(v2));
      v6 = DWORD2(__s) | ((WORD6(__s) | (BYTE14(__s) << 16)) << 32);
      *a1 = __s;
      a1[1] = v6;
      return result;
    }

    v17 = v2 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2433EB69C(v3, v2);
    *a1 = xmmword_2434010E0;
    sub_2433EB69C(0, 0xC000000000000000);
    v18 = v3 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v18 < v3)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (sub_2433FFD70() && __OFSUB__(v3, sub_2433FFDA0()))
      {
LABEL_31:
        __break(1u);
      }

      sub_2433FFDB0();
      swift_allocObject();
      v19 = sub_2433FFD50();

      v17 = v19;
    }

    if (v18 >= v3)
    {

      result = sub_2433FFD70();
      if (result)
      {
        v20 = result;
        v21 = sub_2433FFDA0();
        v22 = v3 - v21;
        if (!__OFSUB__(v3, v21))
        {
          v23 = sub_2433FFD90();
          if (v23 >= v18 - v3)
          {
            v24 = v18 - v3;
          }

          else
          {
            v24 = v23;
          }

          v25 = memset_s((v20 + v22), v24, 0, v24);

          *a1 = v3;
          a1[1] = v17 | 0x4000000000000000;
          return v25;
        }

        goto LABEL_29;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  if (v4 != 2)
  {
    *(&__s + 7) = 0;
    *&__s = 0;
    return memset_s(&__s, 0, 0, 0);
  }

  sub_2433EB69C(v3, v2);
  *&__s = v3;
  *(&__s + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_2434010E0;
  sub_2433EB69C(0, 0xC000000000000000);
  sub_2433FFDE0();
  v7 = *(&__s + 1);
  v8 = *(__s + 16);
  v9 = *(__s + 24);
  result = sub_2433FFD70();
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v10 = result;
  v11 = sub_2433FFDA0();
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = __OFSUB__(v9, v8);
  v14 = v9 - v8;
  if (v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = sub_2433FFD90();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  result = memset_s((v10 + v12), v16, 0, v16);
  *a1 = __s;
  a1[1] = v7 | 0x8000000000000000;
  return result;
}

_BYTE *sub_2433FE548@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2433FEB7C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2433FEC34(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2433FECB0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_2433FE5DC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = sub_243400200();
  *(a6 + v12) = result;
  return result;
}

uint64_t sub_2433FE724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t sub_2433FE884(int *a1, int a2)
{
  result = sub_2433FFDF0();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2433FFD70();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_2433FFDA0();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_2433FFD90();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

unint64_t sub_2433FE92C()
{
  result = qword_27ED73750;
  if (!qword_27ED73750)
  {
    sub_2433FFF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73750);
  }

  return result;
}

unint64_t sub_2433FE9A8()
{
  result = qword_27ED73760;
  if (!qword_27ED73760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED73758, &qword_2434017A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73760);
  }

  return result;
}

uint64_t sub_2433FEA40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2433FEAF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2433FEB7C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2433FEC34(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2433FFDB0();
  swift_allocObject();
  result = sub_2433FFD60();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2433FFE00();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2433FECB0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2433FFDB0();
  swift_allocObject();
  result = sub_2433FFD60();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2433FEDCC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2433FFDB0();
      swift_allocObject();
      sub_2433FFD80();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2433FFE00();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2433FEE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73768, &qword_2434017B0);
  if (swift_dynamicCast())
  {
    sub_2433FF494(v32, &v34);
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    sub_2433FFDC0();
    v32[0] = v31;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_2433FF3F8(v32);
  sub_243400220();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = sub_243400210();
  *&v32[0] = sub_2433FEDCC(v17);
  *(&v32[0] + 1) = v18;
  MEMORY[0x28223BE20](*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  sub_2433FFE20();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      sub_2433FFE10();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  sub_2434002D0();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      sub_2433FFE30();
      LOBYTE(v26) = 0;
    }

    sub_2434002D0();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    sub_2433FFE30();
    sub_2433FF480(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_2433FF480(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  sub_2433EB648(*&v32[0], *(&v32[0] + 1));
  sub_2433EB69C(v27, *(&v27 + 1));
  return v27;
}

uint64_t sub_2433FF3F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED73770, &qword_2434017B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2433FF480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_2433EB69C(a1, a2);
  }
}

uint64_t sub_2433FF494(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2433FF500@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2433FFEB0();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2433FF57C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2433FFE70();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_2433FF638(uint64_t a1)
{
  v2 = MEMORY[0x277CC51B0];
  *(a1 + 8) = sub_2433FF900(&qword_27ED73778, MEMORY[0x277CC51B0], MEMORY[0x277CC51A8]);
  result = sub_2433FF900(&qword_27ED73780, v2, MEMORY[0x277CC51B8]);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2433FF750()
{
  result = qword_27ED73790;
  if (!qword_27ED73790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED73790);
  }

  return result;
}

uint64_t sub_2433FF7A4(uint64_t a1)
{
  v2 = MEMORY[0x277CC5408];
  *(a1 + 8) = sub_2433FF900(&qword_27ED73798, MEMORY[0x277CC5408], MEMORY[0x277CC53F8]);
  result = sub_2433FF900(&qword_27ED737A0, v2, MEMORY[0x277CC5410]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2433FF900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2433FFBD0(uint64_t a1)
{
  result = sub_2433FFC94(qword_281505A60, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2433FFC3C(uint64_t a1)
{
  result = sub_2433FFC94(&qword_27ED737B8, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2433FFC94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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