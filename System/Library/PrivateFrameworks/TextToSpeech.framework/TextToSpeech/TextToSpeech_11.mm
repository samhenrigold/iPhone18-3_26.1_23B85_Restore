unint64_t sub_1A9436478()
{
  result = qword_1EB3872D0;
  if (!qword_1EB3872D0)
  {
    sub_1A93A7B68(&qword_1EB3872C8, &qword_1A958C808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3872D0);
  }

  return result;
}

unint64_t sub_1A94364DC()
{
  result = qword_1EB3872D8;
  if (!qword_1EB3872D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3872D8);
  }

  return result;
}

unint64_t sub_1A943652C()
{
  result = qword_1EB3872E0;
  if (!qword_1EB3872E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3872E0);
  }

  return result;
}

uint64_t sub_1A94367A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1769105779;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x636E6575716F6C65;
    }

    else
    {
      v4 = 0x6C61746E6963616DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE90000000000006BLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65636E65726563;
    }

    else
    {
      v4 = 1769105779;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x636E6575716F6C65;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 0x6C61746E6963616DLL;
    v8 = 0xE90000000000006BLL;
  }

  if (a2)
  {
    v2 = 0x65636E65726563;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

uint64_t sub_1A94368E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; ++i)
  {
    v8 = *v3++;
    v7 = v8;
    v9 = *i;
    v10 = v8 >> 61;
    if ((v8 >> 61) <= 2)
    {
      break;
    }

    v11 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    if (v10 == 3)
    {
      if (v9 >> 61 != 3)
      {
        goto LABEL_49;
      }

      goto LABEL_6;
    }

    if (v10 == 4)
    {
      if (v9 >> 61 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_6;
    }

    if (v9 != 0xA000000000000000)
    {
      goto LABEL_50;
    }

LABEL_7:
    if (!--v2)
    {
      return 1;
    }
  }

  if (!v10)
  {
    if (v9 >> 61)
    {
      goto LABEL_49;
    }

    v15 = *(v7 + 16) == *(v9 + 16) && *(v7 + 24) == *(v9 + 24);
    if (!v15 && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  v11 = v7 & 0x1FFFFFFFFFFFFFFFLL;
  v12 = v9 >> 61;
  if (v10 == 1)
  {
    if (v12 != 1)
    {
      goto LABEL_49;
    }

    if (*(v11 + 16) > 1u)
    {
      if (*(v11 + 16) == 2)
      {
        v14 = 0x636E6575716F6C65;
        v13 = 0xE900000000000065;
      }

      else
      {
        v13 = 0xE90000000000006BLL;
        v14 = 0x6C61746E6963616DLL;
      }
    }

    else if (*(v11 + 16))
    {
      v13 = 0xE700000000000000;
      v14 = 0x65636E65726563;
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1769105779;
    }

    v16 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v17 = 0xE90000000000006BLL;
        if (v14 != 0x6C61746E6963616DLL)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v17 = 0xE900000000000065;
      if (v14 == 0x636E6575716F6C65)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = 0xE400000000000000;
        if (v14 != 1769105779)
        {
          goto LABEL_46;
        }

LABEL_44:
        if (v13 == v17)
        {

          swift_retain_n();

          goto LABEL_7;
        }

        goto LABEL_46;
      }

      v17 = 0xE700000000000000;
      if (v14 == 0x65636E65726563)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    v18 = sub_1A957D3E8();

    swift_retain_n();

    if ((v18 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v12 == 2)
  {
LABEL_6:
    v5 = *(v11 + 16);
    v6 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    swift_retain_n();
    LOBYTE(v5) = sub_1A94368E8(v5, v6);

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

LABEL_49:

LABEL_50:

  return 0;
}

uint64_t sub_1A9436C28(uint64_t a1, uint64_t a2)
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
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1A9441F50(v24, v15);
    sub_1A9441F50(v27, v15);
    v13 = _s12TextToSpeech16PronuncationRuleV2eeoiySbAC_ACtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1A9441F88(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1A9441F88(v31);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_1A9436D44(uint64_t result, uint64_t a2)
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

  v32 = *(result + 16);
  v33 = 0;
  v22 = a2 + 32;
  v23 = result + 32;
  while (v33 != v32)
  {
    v3 = (v23 + 40 * v33);
    v4 = *v3;
    v5 = (v22 + 40 * v33);
    v6 = *v5;
    v7 = *(*v3 + 16);
    if (v7 != *(*v5 + 16))
    {
      return 0;
    }

    v25 = v3[1];
    v31 = v3[2];
    v28 = v3[4];
    v29 = v3[3];
    v24 = v5[1];
    v30 = v5[2];
    if (v7)
    {
      v8 = v4 == v6;
    }

    else
    {
      v8 = 1;
    }

    v26 = v5[4];
    v27 = v5[3];
    if (!v8)
    {
      v11 = 0;
      v34 = *v5;
      v35 = *v3;
      while (v7)
      {
        result = *(v4 + v11 + 32);
        v12 = *(v4 + v11 + 48);
        v13 = *(v4 + v11 + 56);
        v37 = *(v4 + v11 + 64);
        v14 = *(v4 + v11 + 72);
        v36 = *(v4 + v11 + 80);
        v15 = *(v6 + v11 + 48);
        v16 = *(v6 + v11 + 56);
        v17 = *(v6 + v11 + 64);
        v18 = *(v6 + v11 + 72);
        v19 = *(v6 + v11 + 80);
        if (result != *(v6 + v11 + 32) || *(v4 + v11 + 40) != *(v6 + v11 + 40))
        {
          result = sub_1A957D3E8();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v12 == v15 && v13 == v16)
        {
          if (v37 != v17)
          {
            return 0;
          }
        }

        else
        {
          v20 = sub_1A957D3E8();
          result = 0;
          if (v20 & 1) == 0 || ((v37 ^ v17))
          {
            return result;
          }
        }

        if (v14 != v18 || v36 != v19)
        {
          result = sub_1A957D3E8();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v11 += 56;
        --v7;
        v6 = v34;
        v4 = v35;
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }

LABEL_13:
    if (v31)
    {
      v9 = v32;
      if (!v30)
      {
        return 0;
      }

      v10 = v25 == v24 && v31 == v30;
      if (!v10 && (sub_1A957D3E8() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v9 = v32;
      if (v30)
      {
        return 0;
      }
    }

    v21 = v29 == v27 && v28 == v26;
    if (!v21 && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    result = 1;
    if (++v33 == v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9436FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v17 = *(a1 + i + 64);
      v6 = *(a1 + i + 72);
      v16 = *(a1 + i + 80);
      v7 = *(a2 + i + 48);
      v8 = *(a2 + i + 56);
      v9 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v10 = *(a2 + i + 80);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      if (v4 == v7 && v5 == v8)
      {
        if (v17 != v9)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1A957D3E8();
        result = 0;
        if (v12 & 1) == 0 || ((v17 ^ v9))
        {
          return result;
        }
      }

      if ((v6 != v11 || v16 != v10) && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A9437104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v8 = *v3++;
      v7 = v8;
      v9 = *i;
      v10 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        break;
      }

      if (v10)
      {
        if (v9 >> 62 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v9 >> 62)
      {
        return 0;
      }

      v11 = *(v7 + 24);
      v12 = *(v9 + 24);
      v13 = sub_1A957C0F8();
      v15 = v14;
      if (v13 == sub_1A957C0F8() && v15 == v16)
      {
        swift_retain_n();

        if (v11 != v12)
        {
          return 0;
        }
      }

      else
      {
        v18 = sub_1A957D3E8();
        swift_retain_n();

        result = 0;
        if ((v18 & 1) == 0 || v11 != v12)
        {
          return result;
        }
      }

LABEL_7:
      if (!--v2)
      {
        return 1;
      }
    }

    if (v10 == 2)
    {
      if (v9 >> 62 != 2)
      {
        return 0;
      }
    }

    else if (v9 >> 62 != 3)
    {
      return 0;
    }

LABEL_6:
    v5 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    swift_retain_n();
    LOBYTE(v5) = sub_1A9437104(v5, v6);

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1A9437314(uint64_t a1)
{
  v2 = sub_1A94413F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9437350(uint64_t a1)
{
  v2 = sub_1A94413F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A943738C()
{
  v1 = 0x7053664F74726170;
  v2 = 29295;
  if (*v0 != 2)
  {
    v2 = 7630702;
  }

  if (*v0)
  {
    v1 = 6581857;
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

uint64_t sub_1A94373F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9444A54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9437418(uint64_t a1)
{
  v2 = sub_1A944121C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9437454(uint64_t a1)
{
  v2 = sub_1A944121C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9437490(uint64_t a1)
{
  v2 = sub_1A9441270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94374CC(uint64_t a1)
{
  v2 = sub_1A9441270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9437514(uint64_t a1)
{
  v2 = sub_1A944139C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9437550(uint64_t a1)
{
  v2 = sub_1A944139C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A943758C()
{
  if (*v0)
  {
    return 0x61747265436E696DLL;
  }

  else
  {
    return 6775156;
  }
}

uint64_t sub_1A94375C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61747265436E696DLL && a2 == 0xEC00000079746E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94376A8(uint64_t a1)
{
  v2 = sub_1A9441444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94376E4(uint64_t a1)
{
  v2 = sub_1A9441444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PostMatchRule.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB3872E8, &qword_1A958C910);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v29 - v4;
  v35 = sub_1A937829C(&qword_1EB3872F0, &qword_1A958C918);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v29 - v5;
  v31 = sub_1A937829C(&qword_1EB3872F8, &qword_1A958C920);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v29 - v7;
  v32 = sub_1A937829C(&qword_1EB387300, &qword_1A958C928);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v29 - v9;
  v11 = sub_1A937829C(&qword_1EB387308, &qword_1A958C930);
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *v1;
  sub_1A93780F4(a1, a1[3]);
  sub_1A944121C();
  sub_1A957D598();
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v21 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v42) = 2;
      sub_1A944139C();
      v17 = v40;
      v18 = v13;
      sub_1A957D288();
      v42 = v21;
      sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
      sub_1A94412C4();
      v22 = v35;
      sub_1A957D338();
      v23 = *(v33 + 8);
      v24 = v6;
LABEL_11:
      v23(v24, v22);
      return (*(v39 + 8))(v18, v17);
    }

    v27 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v42) = 3;
    sub_1A9441270();
    v8 = v34;
    v17 = v40;
    v18 = v13;
    sub_1A957D288();
    v42 = v27;
    sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
    sub_1A94412C4();
    v22 = v37;
    sub_1A957D338();
    v26 = v36;
LABEL_10:
    v23 = *(v26 + 8);
    v24 = v8;
    goto LABEL_11;
  }

  if (v15)
  {
    v25 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v42) = 1;
    sub_1A94413F0();
    v17 = v40;
    v18 = v13;
    sub_1A957D288();
    v42 = v25;
    sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
    sub_1A94412C4();
    v22 = v31;
    sub_1A957D338();
    v26 = v29;
    goto LABEL_10;
  }

  v16 = *(v14 + 16);
  LOBYTE(v42) = 0;
  sub_1A9441444();
  v17 = v40;
  v18 = v13;
  sub_1A957D288();
  v42 = v16;
  v41 = 0;
  type metadata accessor for NLTag(0);
  sub_1A9441598(&qword_1EB387328, type metadata accessor for NLTag, &protocol conformance descriptor for NLTag);
  v19 = v32;
  v20 = v38;
  sub_1A957D338();
  if (!v20)
  {
    LOBYTE(v42) = 1;
    sub_1A957D318();
  }

  (*(v30 + 8))(v10, v19);
  return (*(v39 + 8))(v18, v17);
}

uint64_t PostMatchRule.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4 > 1)
  {
    v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v4 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    if (!v4)
    {
      MEMORY[0x1AC5863C0](0);
      sub_1A957C0F8();
      sub_1A957C228();

      return sub_1A957D528();
    }

    v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = 1;
  }

  MEMORY[0x1AC5863C0](v7);

  return sub_1A9440B40(a1, v6);
}

uint64_t PostMatchRule.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v59 = sub_1A937829C(&qword_1EB387330, &qword_1A958C940);
  v55 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v47 - v3;
  v52 = sub_1A937829C(&qword_1EB387338, &qword_1A958C948);
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v47 - v4;
  v5 = sub_1A937829C(&qword_1EB387340, &qword_1A958C950);
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = sub_1A937829C(&qword_1EB387348, &qword_1A958C958);
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A937829C(&qword_1EB387350, &unk_1A958C960);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - v12;
  v14 = a1[3];
  v61 = a1;
  sub_1A93780F4(a1, v14);
  sub_1A944121C();
  v15 = v60;
  sub_1A957D588();
  if (!v15)
  {
    v48 = v9;
    v49 = 0;
    v17 = v57;
    v16 = v58;
    v18 = v59;
    v60 = v11;
    v19 = v13;
    v20 = sub_1A957D268();
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v23 = *(v20 + 32);
      if (v22 == 1 && v23 != 4)
      {
        if (*(v20 + 32) > 1u)
        {
          if (v23 != 2)
          {
            v67 = 3;
            sub_1A9441270();
            v28 = v19;
            v37 = v49;
            sub_1A957D178();
            v30 = v60;
            v38 = v56;
            if (!v37)
            {
              v57 = v21;
              v42 = swift_allocObject();
              sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
              sub_1A94414C0();
              sub_1A957D238();
              (*(v55 + 8))(v16, v18);
              (*(v30 + 8))(v28, v10);
              swift_unknownObjectRelease();
              *v38 = v42 | 0xC000000000000000;
              return sub_1A9378138(v61);
            }

            goto LABEL_19;
          }

          v66 = 2;
          sub_1A944139C();
          v31 = v17;
          v28 = v19;
          v32 = v49;
          sub_1A957D178();
          v30 = v60;
          if (v32)
          {
LABEL_19:
            (*(v30 + 8))(v28, v10);
            goto LABEL_20;
          }

          v33 = swift_allocObject();
          sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
          sub_1A94414C0();
          v34 = v52;
          sub_1A957D238();
          (*(v54 + 8))(v31, v34);
          (*(v30 + 8))(v28, v10);
          swift_unknownObjectRelease();
          v43 = v33 | 0x8000000000000000;
        }

        else if (*(v20 + 32))
        {
          v65 = 1;
          sub_1A94413F0();
          v35 = v8;
          v36 = v49;
          sub_1A957D178();
          if (v36)
          {
            (*(v60 + 8))(v19, v10);
LABEL_20:
            swift_unknownObjectRelease();
            return sub_1A9378138(v61);
          }

          v40 = swift_allocObject();
          sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
          sub_1A94414C0();
          v41 = v50;
          sub_1A957D238();
          (*(v51 + 8))(v35, v41);
          (*(v60 + 8))(v19, v10);
          swift_unknownObjectRelease();
          v43 = v40 | 0x4000000000000000;
        }

        else
        {
          v64 = 0;
          sub_1A9441444();
          v28 = v19;
          v29 = v49;
          sub_1A957D178();
          if (v29)
          {
            v30 = v60;
            goto LABEL_19;
          }

          v43 = swift_allocObject();
          type metadata accessor for NLTag(0);
          v63 = 0;
          sub_1A9441598(&qword_1EB387368, type metadata accessor for NLTag, &protocol conformance descriptor for NLTag);
          v39 = v48;
          sub_1A957D238();
          v62 = 1;
          sub_1A957D218();
          v45 = v44;
          (*(v53 + 8))(0, v39);
          (*(v60 + 8))(v19, v10);
          swift_unknownObjectRelease();
          *(v43 + 24) = v45;
        }

        *v56 = v43;
        return sub_1A9378138(v61);
      }
    }

    v25 = sub_1A957CF58();
    swift_allocError();
    v27 = v26;
    sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
    *v27 = &type metadata for PostMatchRule;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v60 + 8))(v19, v10);
    swift_unknownObjectRelease();
  }

  return sub_1A9378138(v61);
}

TextToSpeech::RulesetTargetSynthesizer_optional __swiftcall RulesetTargetSynthesizer.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A957D158();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RulesetTargetSynthesizer.rawValue.getter()
{
  v1 = 1769105779;
  v2 = 0x636E6575716F6C65;
  if (*v0 != 2)
  {
    v2 = 0x6C61746E6963616DLL;
  }

  if (*v0)
  {
    v1 = 0x65636E65726563;
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

void sub_1A94389A4(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1769105779;
  v4 = 0x636E6575716F6C65;
  v5 = 0xE900000000000065;
  if (*v1 != 2)
  {
    v4 = 0x6C61746E6963616DLL;
    v5 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v3 = 0x65636E65726563;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1A9438AD0()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9438B90(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A9438C3C(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9438D0C(uint64_t a1)
{
  v2 = sub_1A9441984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9438D48(uint64_t a1)
{
  v2 = sub_1A9441984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9438D84(uint64_t a1)
{
  v2 = sub_1A9441930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9438DC0(uint64_t a1)
{
  v2 = sub_1A9441930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A9438DFC()
{
  v1 = *v0;
  v2 = 0x69736568746E7973;
  v3 = 6581857;
  v4 = 29295;
  if (v1 != 4)
  {
    v4 = 7630702;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 7105633;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1A9438E9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9444BB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9438EC4(uint64_t a1)
{
  v2 = sub_1A944175C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9438F00(uint64_t a1)
{
  v2 = sub_1A944175C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9438F3C(uint64_t a1)
{
  v2 = sub_1A94417B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9438F78(uint64_t a1)
{
  v2 = sub_1A94417B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9438FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9439038(uint64_t a1)
{
  v2 = sub_1A94418DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9439074(uint64_t a1)
{
  v2 = sub_1A94418DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94390D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69736568746E7973 && a2 == 0xEB0000000072657ALL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A943915C(uint64_t a1)
{
  v2 = sub_1A94419D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9439198(uint64_t a1)
{
  v2 = sub_1A94419D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94391E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x786966657270 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A943926C(uint64_t a1)
{
  v2 = sub_1A9441A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94392A8(uint64_t a1)
{
  v2 = sub_1A9441A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RulesetActivationRule.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387370, &qword_1A958C970);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v38 - v4;
  v5 = sub_1A937829C(&qword_1EB387378, &qword_1A958C978);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v38 - v6;
  v7 = sub_1A937829C(&qword_1EB387380, &qword_1A958C980);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - v8;
  v9 = sub_1A937829C(&qword_1EB387388, &qword_1A958C988);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v38 - v10;
  v11 = sub_1A937829C(&qword_1EB387390, &qword_1A958C990);
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = sub_1A937829C(&qword_1EB387398, &qword_1A958C998);
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = sub_1A937829C(&qword_1EB3873A0, &qword_1A958C9A0);
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = *v1;
  sub_1A93780F4(a1, a1[3]);
  sub_1A944175C();
  v54 = v19;
  sub_1A957D598();
  v21 = v20 >> 61;
  if ((v20 >> 61) > 2)
  {
    if (v21 == 3)
    {
      v33 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v57) = 4;
      sub_1A94418DC();
      v27 = v48;
      v23 = v56;
      v24 = v54;
      sub_1A957D288();
      v57 = v33;
      sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
      sub_1A9441804();
      v28 = v50;
      sub_1A957D338();
      v29 = v49;
    }

    else
    {
      if (v21 != 4)
      {
        LOBYTE(v57) = 2;
        sub_1A9441984();
        v35 = v40;
        v36 = v56;
        v37 = v54;
        sub_1A957D288();
        (*(v43 + 8))(v35, v44);
        return (*(v55 + 8))(v37, v36);
      }

      v26 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v57) = 5;
      sub_1A94417B0();
      v27 = v51;
      v23 = v56;
      v24 = v54;
      sub_1A957D288();
      v57 = v26;
      sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
      sub_1A9441804();
      v28 = v53;
      sub_1A957D338();
      v29 = v52;
    }

    goto LABEL_11;
  }

  if (!v21)
  {
    LOBYTE(v57) = 0;
    sub_1A9441A80();
    v30 = v56;
    v31 = v54;
    sub_1A957D288();
    sub_1A957D2E8();
    (*(v39 + 8))(v16, v14);
    return (*(v55 + 8))(v31, v30);
  }

  if (v21 != 1)
  {
    v34 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v57) = 3;
    sub_1A9441930();
    v27 = v45;
    v23 = v56;
    v24 = v54;
    sub_1A957D288();
    v57 = v34;
    sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
    sub_1A9441804();
    v28 = v47;
    sub_1A957D338();
    v29 = v46;
LABEL_11:
    (*(v29 + 8))(v27, v28);
    return (*(v55 + 8))(v24, v23);
  }

  v22 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  LOBYTE(v57) = 1;
  sub_1A94419D8();
  v23 = v56;
  v24 = v54;
  sub_1A957D288();
  LOBYTE(v57) = v22;
  sub_1A9441A2C();
  v25 = v42;
  sub_1A957D338();
  (*(v41 + 8))(v13, v25);
  return (*(v55 + 8))(v24, v23);
}

uint64_t RulesetActivationRule.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v10 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1AC5863C0](4);
      result = MEMORY[0x1AC5863C0](*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 32;
        do
        {
          v12 += 8;

          RulesetActivationRule.hash(into:)(a1);

          --v11;
        }

        while (v11);
      }
    }

    else if (v4 == 4)
    {
      v6 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1AC5863C0](5);
      result = MEMORY[0x1AC5863C0](*(v6 + 16));
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = v6 + 32;
        do
        {
          v9 += 8;

          RulesetActivationRule.hash(into:)(a1);

          --v8;
        }

        while (v8);
      }
    }

    else
    {
      return MEMORY[0x1AC5863C0](2);
    }
  }

  else if (v4)
  {
    v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A957C228();
    }

    else
    {
      v13 = *(v5 + 16);
      MEMORY[0x1AC5863C0](3);
      result = MEMORY[0x1AC5863C0](*(v13 + 16));
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = v13 + 32;
        do
        {
          v15 += 8;

          RulesetActivationRule.hash(into:)(a1);

          --v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);

    return sub_1A957C228();
  }

  return result;
}

uint64_t sub_1A9439D00(uint64_t (*a1)(void *))
{
  v4[9] = *v1;
  sub_1A957D4F8();
  a1(v4);
  return sub_1A957D548();
}

uint64_t RulesetActivationRule.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v77 = sub_1A937829C(&qword_1EB3873C8, &qword_1A958C9B0);
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v84 = &v66 - v3;
  v75 = sub_1A937829C(&qword_1EB3873D0, &qword_1A958C9B8);
  v78 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v83 = &v66 - v4;
  v74 = sub_1A937829C(&qword_1EB3873D8, &qword_1A958C9C0);
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v82 = &v66 - v5;
  v72 = sub_1A937829C(&qword_1EB3873E0, &qword_1A958C9C8);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v80 = &v66 - v6;
  v71 = sub_1A937829C(&qword_1EB3873E8, &qword_1A958C9D0);
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v8 = &v66 - v7;
  v9 = sub_1A937829C(&qword_1EB3873F0, &qword_1A958C9D8);
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = sub_1A937829C(&qword_1EB3873F8, &qword_1A958C9E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - v14;
  v16 = a1[3];
  v86 = a1;
  sub_1A93780F4(a1, v16);
  sub_1A944175C();
  v17 = v85;
  sub_1A957D588();
  if (!v17)
  {
    v66 = v9;
    v67 = 0;
    v18 = v8;
    v19 = v82;
    v20 = v83;
    v21 = v84;
    v68 = v13;
    v85 = v12;
    v22 = sub_1A957D268();
    v23 = v22;
    if (*(v22 + 16) != 1 || (v24 = *(v22 + 32), v24 == 6))
    {
      v29 = sub_1A957CF58();
      swift_allocError();
      v31 = v30;
      sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
      *v31 = &type metadata for RulesetActivationRule;
      v32 = v85;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v68 + 8))(v15, v32);
      goto LABEL_10;
    }

    if (*(v22 + 32) <= 2u)
    {
      if (*(v22 + 32))
      {
        if (v24 == 1)
        {
          v88 = 1;
          sub_1A94419D8();
          v25 = v18;
          v26 = v85;
          v27 = v67;
          sub_1A957D178();
          v28 = v68;
          if (v27)
          {
            (*(v68 + 8))(v15, v26);
LABEL_10:
            swift_unknownObjectRelease();
            return sub_1A9378138(v86);
          }

          v58 = swift_allocObject();
          sub_1A9441BAC();
          v59 = v71;
          sub_1A957D238();
          (*(v73 + 8))(v25, v59);
          (*(v28 + 8))(v15, v85);
          swift_unknownObjectRelease();
          v65 = v58 | 0x2000000000000000;
LABEL_30:
          *v81 = v65;
          return sub_1A9378138(v86);
        }

        v89 = 2;
        sub_1A9441984();
        v49 = v80;
        v50 = v85;
        v51 = v67;
        sub_1A957D178();
        v52 = v68;
        if (v51)
        {
          (*(v68 + 8))(v15, v50);
          swift_unknownObjectRelease();
          return sub_1A9378138(v86);
        }

        (*(v70 + 8))(v49, v72);
        (*(v52 + 8))(v15, v50);
        swift_unknownObjectRelease();
        v54 = 0xA000000000000000;
      }

      else
      {
        v87 = 0;
        sub_1A9441A80();
        v40 = v11;
        v41 = v15;
        v42 = v85;
        v43 = v67;
        sub_1A957D178();
        if (v43)
        {
          (*(v68 + 8))(v41, v42);
          goto LABEL_10;
        }

        v54 = swift_allocObject();
        v55 = v66;
        v62 = sub_1A957D1E8();
        v64 = v63;
        (*(v69 + 8))(v40, v55);
        (*(v68 + 8))(v41, v42);
        swift_unknownObjectRelease();
        *(v54 + 16) = v62;
        *(v54 + 24) = v64;
      }

      *v81 = v54;
      return sub_1A9378138(v86);
    }

    v34 = v81;
    if (v24 != 3)
    {
      v35 = v68;
      v36 = v85;
      if (v24 == 4)
      {
        v91 = 4;
        sub_1A94418DC();
        v37 = v67;
        sub_1A957D178();
        if (!v37)
        {
          v38 = swift_allocObject();
          sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
          sub_1A9441AD4();
          v39 = v75;
          sub_1A957D238();
          (*(v78 + 8))(v20, v39);
          (*(v35 + 8))(v15, v36);
          swift_unknownObjectRelease();
          v65 = v38 | 0x6000000000000000;
          goto LABEL_30;
        }
      }

      else
      {
        v92 = 5;
        sub_1A94417B0();
        v53 = v67;
        sub_1A957D178();
        if (!v53)
        {
          v83 = v23;
          v60 = swift_allocObject();
          sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
          sub_1A9441AD4();
          v61 = v77;
          sub_1A957D238();
          (*(v79 + 8))(v21, v61);
          (*(v35 + 8))(v15, v36);
          swift_unknownObjectRelease();
          v65 = v60 | 0x8000000000000000;
          goto LABEL_30;
        }
      }

      (*(v35 + 8))(v15, v36);
      goto LABEL_10;
    }

    v90 = 3;
    sub_1A9441930();
    v44 = v19;
    v45 = v15;
    v46 = v85;
    v47 = v67;
    sub_1A957D178();
    v48 = v68;
    if (v47)
    {
      (*(v68 + 8))(v45, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      v83 = v23;
      v84 = v45;
      v56 = swift_allocObject();
      sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
      sub_1A9441AD4();
      v57 = v74;
      sub_1A957D238();
      (*(v76 + 8))(v44, v57);
      (*(v48 + 8))(v84, v46);
      swift_unknownObjectRelease();
      *v34 = v56 | 0x4000000000000000;
    }
  }

  return sub_1A9378138(v86);
}

uint64_t sub_1A943AA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6[9] = *v3;
  sub_1A957D4F8();
  a3(v6);
  return sub_1A957D548();
}

uint64_t sub_1A943AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_1A957D4F8();
  a4(v7);
  return sub_1A957D548();
}

TextToSpeech::PronuncationRule::ReplacementType_optional __swiftcall PronuncationRule.ReplacementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A957D158();

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

uint64_t PronuncationRule.ReplacementType.rawValue.getter()
{
  if (*v0)
  {
    return 6385769;
  }

  else
  {
    return 7823730;
  }
}

uint64_t sub_1A943ABA4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6385769;
  }

  else
  {
    v2 = 7823730;
  }

  if (*a2)
  {
    v3 = 6385769;
  }

  else
  {
    v3 = 7823730;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A957D3E8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1A943AC1C@<X0>(char *a2@<X8>)
{
  v3 = sub_1A957D158();

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

void sub_1A943AC7C(uint64_t *a1@<X8>)
{
  v2 = 7823730;
  if (*v1)
  {
    v2 = 6385769;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1A943AD54()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A943ADBC(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A943AE08(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t PronuncationRule.regex.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PronuncationRule.regex.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PronuncationRule.replacement.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PronuncationRule.replacement.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PronuncationRule.postMatch.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1A93B73E0(v2);
}

uint64_t PronuncationRule.postMatch.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1A93B7494(*(v1 + 40));
  *(v1 + 40) = v2;
  return result;
}

uint64_t PronuncationRule.notes.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PronuncationRule.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PronuncationRule.init(regex:replacement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 256;
  *(a5 + 40) = 0xF000000000000007;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0xE000000000000000;
  return result;
}

uint64_t sub_1A943B0FC()
{
  v1 = *v0;
  v2 = 0x7865676572;
  v3 = 0x64656C62616E65;
  v4 = 0x6374614D74736F70;
  if (v1 != 4)
  {
    v4 = 0x7365746F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6563616C706572;
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

uint64_t sub_1A943B1C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9444DB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A943B1F0(uint64_t a1)
{
  v2 = sub_1A9441E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943B22C(uint64_t a1)
{
  v2 = sub_1A9441E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PronuncationRule.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387418, &qword_1A958C9E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v7;
  LODWORD(v7) = *(v1 + 32);
  v15 = *(v1 + 33);
  v16 = v7;
  v8 = *(v1 + 40);
  v13[1] = *(v1 + 48);
  v14 = v8;
  v13[0] = *(v1 + 56);
  sub_1A93780F4(a1, a1[3]);
  sub_1A9441E54();
  sub_1A957D598();
  v27 = 0;
  v9 = v19;
  sub_1A957D2E8();
  if (!v9)
  {
    v11 = v16;
    v12 = v14;
    v26 = 1;
    sub_1A957D2E8();
    v25 = v11;
    v24 = 2;
    sub_1A9441EA8();
    sub_1A957D338();
    v23 = 3;
    sub_1A957D2F8();
    v20 = v12;
    v22 = 4;
    sub_1A93B73E0(v12);
    sub_1A9441348();
    sub_1A957D2B8();
    sub_1A93B7494(v20);
    v21 = 5;
    sub_1A957D2E8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PronuncationRule.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957C228();

  sub_1A957D518();
  sub_1A957D518();
  if ((~v3 & 0xF000000000000007) != 0)
  {

    PostMatchRule.hash(into:)(a1);
  }

  return sub_1A957C228();
}

uint64_t PronuncationRule.hashValue.getter()
{
  sub_1A957D4F8();
  PronuncationRule.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t PronuncationRule.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387428, &qword_1A958C9F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A9441E54();
  sub_1A957D588();
  if (v2)
  {
    sub_1A9378138(a1);
    return sub_1A93B7494(0xF000000000000007);
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    v9 = sub_1A957D1E8();
    v11 = v10;
    v28 = v9;
    LOBYTE(v32[0]) = 1;
    *&v27 = sub_1A957D1E8();
    *(&v27 + 1) = v12;
    LOBYTE(v29[0]) = 2;
    sub_1A9441EFC();
    sub_1A957D238();
    v13 = LOBYTE(v32[0]);
    LOBYTE(v32[0]) = 3;
    v38 = sub_1A957D1F8();
    LOBYTE(v29[0]) = 4;
    sub_1A9441544();
    sub_1A957D1B8();
    v26 = v13;
    v14 = v32[0];
    sub_1A93B7494(0xF000000000000007);
    v39 = 5;
    v15 = sub_1A957D1E8();
    v38 &= 1u;
    v16 = v15;
    v17 = v8;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    v21 = *(&v27 + 1);
    v20 = v28;
    *&v29[0] = v28;
    *(&v29[0] + 1) = v11;
    v29[1] = v27;
    LOBYTE(v30) = v26;
    BYTE1(v30) = v38;
    *(&v30 + 1) = v14;
    *&v31 = v16;
    *(&v31 + 1) = v19;
    v22 = v27;
    *a2 = v29[0];
    a2[1] = v22;
    v23 = v31;
    a2[2] = v30;
    a2[3] = v23;
    sub_1A9441F50(v29, v32);
    sub_1A9378138(a1);
    v32[0] = v20;
    v32[1] = v11;
    v32[2] = v27;
    v32[3] = v21;
    v33 = v26;
    v34 = v38;
    v35 = v14;
    v36 = v16;
    v37 = v19;
    return sub_1A9441F88(v32);
  }
}

uint64_t sub_1A943BA30()
{
  sub_1A957D4F8();
  PronuncationRule.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A943BA74(uint64_t a1)
{
  sub_1A957D4F8();
  PronuncationRule.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t PronunciationRuleSet.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PronunciationRuleSet.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PronunciationRuleSet.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PronunciationRuleSet(0) + 20);
  v4 = sub_1A957B0B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PronunciationRuleSet.uuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PronunciationRuleSet(0) + 20);
  v4 = sub_1A957B0B8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PronunciationRuleSet.language.getter()
{
  v1 = *(v0 + *(type metadata accessor for PronunciationRuleSet(0) + 24));

  return v1;
}

uint64_t PronunciationRuleSet.language.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PronunciationRuleSet(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PronunciationRuleSet.activationRule.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PronunciationRuleSet(0) + 28));
}

uint64_t PronunciationRuleSet.activationRule.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for PronunciationRuleSet(0) + 28);

  *(v1 + v3) = v2;
  return result;
}

uint64_t PronunciationRuleSet.operatingRegex.getter()
{
  v1 = *(v0 + *(type metadata accessor for PronunciationRuleSet(0) + 32));

  return v1;
}

uint64_t PronunciationRuleSet.operatingRegex.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PronunciationRuleSet(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PronunciationRuleSet.rules.getter()
{
  type metadata accessor for PronunciationRuleSet(0);
}

uint64_t PronunciationRuleSet.rules.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PronunciationRuleSet(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PronunciationRuleSet.priority.setter(uint64_t a1)
{
  result = type metadata accessor for PronunciationRuleSet(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PronunciationRuleSet.enabled.setter(char a1)
{
  result = type metadata accessor for PronunciationRuleSet(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t PronunciationRuleSet.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for PronunciationRuleSet(0) + 48));

  return v1;
}

uint64_t PronunciationRuleSet.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PronunciationRuleSet(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PronunciationRuleSet.init(name:language:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for PronunciationRuleSet(0);
  result = sub_1A957B0A8();
  v14 = (a6 + v12[8]);
  *v14 = 0;
  v14[1] = 0;
  *(a6 + v12[9]) = MEMORY[0x1E69E7CC0];
  *(a6 + v12[11]) = 1;
  v15 = (a6 + v12[12]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *a6 = a1;
  a6[1] = a2;
  v16 = (a6 + v12[6]);
  *v16 = a3;
  v16[1] = a4;
  *(a6 + v12[10]) = a5;
  *(a6 + v12[7]) = 0xA000000000000000;
  return result;
}

uint64_t sub_1A943C278(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x65676175676E616CLL;
    if (a1 != 2)
    {
      v6 = 0x6974617669746361;
    }

    if (a1)
    {
      v5 = 1684632949;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x797469726F697270;
    v2 = 0x64656C62616E65;
    if (a1 != 7)
    {
      v2 = 0x7365746F6ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6974617265706FLL;
    if (a1 != 4)
    {
      v3 = 0x73656C7572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A943C398@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9444FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A943C3C0(uint64_t a1)
{
  v2 = sub_1A94422BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943C3FC(uint64_t a1)
{
  v2 = sub_1A94422BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PronunciationRuleSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB387438, &qword_1A958C9F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94422BC();
  sub_1A957D598();
  LOBYTE(v12) = 0;
  sub_1A957D2E8();
  if (!v2)
  {
    v9 = type metadata accessor for PronunciationRuleSet(0);
    LOBYTE(v12) = 1;
    sub_1A957B0B8();
    sub_1A9441598(&qword_1EB387440, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1A957D338();
    LOBYTE(v12) = 2;
    sub_1A957D2E8();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    sub_1A9441888();

    sub_1A957D338();

    LOBYTE(v12) = 4;
    sub_1A957D298();
    v12 = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    sub_1A937829C(&qword_1EB387448, &qword_1A958CA00);
    sub_1A9442310();
    sub_1A957D338();
    LOBYTE(v12) = 6;
    sub_1A957D328();
    LOBYTE(v12) = 7;
    sub_1A957D2F8();
    LOBYTE(v12) = 8;
    sub_1A957D2E8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PronunciationRuleSet.hash(into:)(uint64_t a1)
{
  sub_1A957C228();
  v3 = type metadata accessor for PronunciationRuleSet(0);
  sub_1A957B0B8();
  sub_1A9441598(&qword_1ED96FE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A957C068();
  sub_1A957C228();
  RulesetActivationRule.hash(into:)(a1);
  if (*(v1 + v3[8] + 8))
  {
    sub_1A957D518();
    sub_1A957C228();
  }

  else
  {
    sub_1A957D518();
  }

  sub_1A9440910(a1, *(v1 + v3[9]));
  MEMORY[0x1AC5863C0](*(v1 + v3[10]));
  sub_1A957D518();

  return sub_1A957C228();
}

uint64_t PronunciationRuleSet.hashValue.getter()
{
  sub_1A957D4F8();
  PronunciationRuleSet.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t PronunciationRuleSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1A957B0B8();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A937829C(&qword_1EB387460, &qword_1A958CA08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for PronunciationRuleSet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 20);
  v36 = v12;
  v37 = v15;
  v16 = v14;
  sub_1A957B0A8();
  v17 = a1[3];
  v35 = a1;
  sub_1A93780F4(a1, v17);
  sub_1A94422BC();
  sub_1A957D588();
  if (v2)
  {
    sub_1A9378138(v35);
    (*(v38 + 8))(v16 + v37, v39);
  }

  else
  {
    v33 = v8;
    LOBYTE(v41) = 0;
    v18 = v7;
    *v16 = sub_1A957D1E8();
    v16[1] = v19;
    LOBYTE(v41) = 1;
    sub_1A9441598(&qword_1EB387468, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v20 = v39;
    sub_1A957D238();
    (*(v38 + 40))(v16 + v37, v6, v20);
    LOBYTE(v41) = 2;
    v21 = sub_1A957D1E8();
    v22 = v36;
    v23 = (v16 + v36[6]);
    *v23 = v21;
    v23[1] = v24;
    v40 = 3;
    sub_1A9441B58();
    sub_1A957D238();
    *(v16 + v22[7]) = v41;
    LOBYTE(v41) = 4;
    v25 = sub_1A957D198();
    v26 = (v16 + v22[8]);
    *v26 = v25;
    v26[1] = v27;
    sub_1A937829C(&qword_1EB387448, &qword_1A958CA00);
    v40 = 5;
    sub_1A94423E8();
    sub_1A957D238();
    *(v16 + v22[9]) = v41;
    LOBYTE(v41) = 6;
    *(v16 + v22[10]) = sub_1A957D228();
    LOBYTE(v41) = 7;
    *(v16 + v36[11]) = sub_1A957D1F8() & 1;
    LOBYTE(v41) = 8;
    v28 = sub_1A957D1E8();
    v30 = v29;
    v31 = (v16 + v36[12]);
    (*(v33 + 8))(v10, v18);
    *v31 = v28;
    v31[1] = v30;
    sub_1A93B59D0(v16, v34);
    sub_1A9378138(v35);
    return sub_1A93B5F94(v16);
  }
}

uint64_t sub_1A943CF88()
{
  sub_1A957D4F8();
  PronunciationRuleSet.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A943CFCC(uint64_t a1)
{
  sub_1A957D4F8();
  PronunciationRuleSet.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t SiriRule.regex.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriRule.regex.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriRule.replacement.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriRule.replacement.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SiriRule.notes.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SiriRule.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1A943D1D8()
{
  v1 = 0x7865676572;
  v2 = 0x64656C62616E65;
  if (*v0 != 2)
  {
    v2 = 0x7365746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6D6563616C706572;
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

uint64_t sub_1A943D254@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A94452A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A943D27C(uint64_t a1)
{
  v2 = sub_1A94425E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943D2B8(uint64_t a1)
{
  v2 = sub_1A94425E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriRule.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387480, &qword_1A958CA10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v11[3] = *(v1 + 24);
  v11[4] = v7;
  v12 = *(v1 + 32);
  v8 = *(v1 + 40);
  v11[1] = *(v1 + 48);
  v11[2] = v8;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94425E4();
  sub_1A957D598();
  v16 = 0;
  v9 = v11[5];
  sub_1A957D2E8();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1A957D2E8();
  v14 = 2;
  sub_1A957D2F8();
  v13 = 3;
  sub_1A957D2E8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SiriRule.hash(into:)(uint64_t a1)
{
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();

  return sub_1A957C228();
}

uint64_t SiriRule.hashValue.getter()
{
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t SiriRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387488, &qword_1A958CA18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94425E4();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v27 = 0;
  v9 = sub_1A957D1E8();
  v22 = v10;
  v26 = 1;
  v20 = sub_1A957D1E8();
  v21 = v11;
  v25 = 2;
  v23 = sub_1A957D1F8();
  v24 = 3;
  v12 = sub_1A957D1E8();
  v15 = v14;
  v23 &= 1u;
  v16 = v12;
  (*(v6 + 8))(v8, v5);
  v18 = v21;
  v17 = v22;
  *a2 = v9;
  *(a2 + 8) = v17;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v23;
  *(a2 + 40) = v16;
  *(a2 + 48) = v15;

  sub_1A9378138(a1);
}

uint64_t sub_1A943D8B8()
{
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A943D954(uint64_t a1)
{
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();

  return sub_1A957C228();
}

uint64_t sub_1A943D9D8(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A943DAA4()
{
  v0 = sub_1A937829C(&qword_1EB387490, &qword_1A958CA20);
  sub_1A9377618(v0, qword_1EB3A7BF8);
  sub_1A937731C(v0, qword_1EB3A7BF8);
  sub_1A937829C(&qword_1EB3874D0, &qword_1A958CA50);
  return sub_1A957BAA8();
}

uint64_t sub_1A943DB34()
{
  v0 = sub_1A937829C(&qword_1EB387498, &qword_1A958CA28);
  sub_1A9377618(v0, qword_1EB3A7C10);
  sub_1A937731C(v0, qword_1EB3A7C10);
  sub_1A937829C(&qword_1EB3874D8, &qword_1A958CA58);
  return sub_1A957BAA8();
}

uint64_t SiriRuleSet.rules.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriRuleSet.normalizationDomain.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SiriRuleSet.normalizationDomain.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SiriRuleSet.fileName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SiriRuleSet.fileName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall SiriRuleSet.init(name:)(TextToSpeech::SiriRuleSet *__return_ptr retstr, Swift::String name)
{
  retstr->normalizationDomain.value._object = 0;
  retstr->fileName = name;
  retstr->rules._rawValue = MEMORY[0x1E69E7CC0];
  retstr->normalizationDomain.value._countAndFlagsBits = 0;
}

void SiriRuleSet.init(fromUrl:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A957C168();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A957AFD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0uLL;
  (*(v6 + 16))(v8, a1, v5);
  v9 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v10 = sub_1A957AF58();
  v11 = [v9 initWithContentsOfURL_];

  v12 = *(v6 + 8);
  v12(v8, v5);
  if (v11)
  {
    v13 = TTSCreateDecryptedDataFromEncryptedData(v11);
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = sub_1A957AFF8();
    v17 = v16;

    sub_1A957C158();
    v29 = v17;
    v18 = sub_1A957C118();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = sub_1A957AF48();
      v28 = &v28;
      v34 = v23;
      v33 = v22;
      v30[0] = 10;
      v30[1] = 0xE100000000000000;
      v31 = MEMORY[0x1E69E7CC0];
      MEMORY[0x1EEE9AC00](v22);
      *(&v28 - 2) = v30;
      v24 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A9394148, (&v28 - 4), v20, v21, &v28);
      v25 = sub_1A943E044(v24);

      sub_1A943E160(v25);
      sub_1A9442638(v15, v29);

      v12(a1, v5);
      v26 = v33;
      v27 = v34;
      *a2 = v31;
      *(a2 + 8) = v32;
      *(a2 + 24) = v26;
      *(a2 + 32) = v27;
      return;
    }

    v12(a1, v5);
    sub_1A9442638(v15, v29);
  }

  else
  {
    v12(a1, v5);
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_1A943E044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1A944054C(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_1A944054C((v9 > 1), v10 + 1, 1);
        v2 = v16;
      }

      v14 = MEMORY[0x1E69E67B0];
      v15 = sub_1A9445524();
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v5;
      v11[3] = v6;
      v11[4] = v8;
      v11[5] = v7;
      *(v2 + 16) = v10 + 1;
      sub_1A932D070(&v13, v2 + 40 * v10 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A943E160(uint64_t a1)
{
  v81 = sub_1A937829C(&qword_1EB387490, &qword_1A958CA20);
  v2 = *(v81 - 8);
  v3 = MEMORY[0x1EEE9AC00](v81);
  v70 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v60 - v5;
  v6 = sub_1A937829C(&qword_1EB3874A0, &qword_1A958CA30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v60 - v7;
  v67 = sub_1A937829C(&qword_1EB387498, &qword_1A958CA28);
  v8 = *(v67 - 8);
  v9 = MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - v11;
  v13 = sub_1A937829C(&qword_1EB3874A8, &qword_1A958CA38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = &v60 - v14;
  v78 = sub_1A957AE58();
  result = MEMORY[0x1EEE9AC00](v78);
  v77 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (a1 + 32);
    v75 = (v16 + 8);
    v76 = v12;
    v63 = (v8 + 8);
    v64 = (v8 + 16);
    v61 = (v2 + 8);
    v62 = (v2 + 16);
    do
    {
      sub_1A93780F4(v19, v19[3]);
      v20 = v77;
      sub_1A957AE08();
      v21 = sub_1A957CCF8();
      v23 = v22;
      (*v75)(v20, v78);
      if (sub_1A957C348())
      {
      }

      else
      {
        v79 = v19;
        v80 = v18;
        if (qword_1EB395538 != -1)
        {
          swift_once();
        }

        v24 = v67;
        v25 = sub_1A937731C(v67, qword_1EB3A7C10);
        swift_beginAccess();
        (*v64)(v12, v25, v24);
        v26 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v26 = v21;
        }

        v27 = 7;
        if (((v23 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
        {
          v27 = 11;
        }

        v72 = v27 | (v26 << 16);
        v73 = v21;
        v74 = v23;
        sub_1A957C3B8();
        sub_1A93B744C(&qword_1EB3874B0, &qword_1EB387498, &qword_1A958CA28, MEMORY[0x1E69E9290]);
        v28 = v66;
        sub_1A957BA98();
        v29 = v65;
        sub_1A957BAB8();

        v30 = *v63;
        (*v63)(v28, v24);
        v30(v76, v24);
        v31 = v29;
        v32 = sub_1A937829C(&qword_1EB3874B8, &qword_1A958CA40);
        v33 = *(v32 - 8);
        v34 = (*(v33 + 48))(v29, 1, v32);
        v35 = v81;
        if (v34 == 1)
        {
          sub_1A937B960(v31, &qword_1EB3874A8, &qword_1A958CA38);
        }

        else
        {
          sub_1A957BAE8();
          v94 = v82;
          v95 = v83;
          v96 = v84;
          v97 = v85;
          (*(v33 + 8))(v31, v32);
          v36 = MEMORY[0x1AC585090](v96, *(&v96 + 1), v97, *(&v97 + 1));
          v38 = v37;
          sub_1A937B960(&v94, &qword_1EB3874D8, &qword_1A958CA58);
          v39 = v71;

          v39[1] = v36;
          v39[2] = v38;
        }

        v40 = v69;
        if (qword_1EB395530 != -1)
        {
          swift_once();
        }

        v41 = sub_1A937731C(v35, qword_1EB3A7BF8);
        swift_beginAccess();
        (*v62)(v40, v41, v35);
        sub_1A957C3B8();

        sub_1A93B744C(&qword_1EB3874C0, &qword_1EB387490, &qword_1A958CA20, MEMORY[0x1E69E9290]);
        v42 = v70;
        sub_1A957BA98();
        v43 = v68;
        v44 = v81;
        sub_1A957BAB8();

        v45 = *v61;
        (*v61)(v42, v44);
        v45(v40, v44);
        v46 = v43;
        v19 = v79;
        v18 = v80;
        v47 = sub_1A937829C(&qword_1EB3874C8, &qword_1A958CA48);
        v48 = *(v47 - 8);
        v49 = (*(v48 + 48))(v43, 1, v47);
        v12 = v76;
        if (v49 == 1)
        {
          result = sub_1A937B960(v46, &qword_1EB3874A0, &qword_1A958CA30);
        }

        else
        {
          sub_1A957BAE8();
          v102 = v90;
          v103 = v91;
          v104 = v92;
          v105 = v93;
          v98 = v86;
          v99 = v87;
          v100 = v88;
          v101 = v89;
          v94 = v82;
          v95 = v83;
          v96 = v84;
          v97 = v85;
          (*(v48 + 8))(v46, v47);
          v50 = MEMORY[0x1AC585090](v96, *(&v96 + 1), v97, *(&v97 + 1));
          v52 = v51;
          v53 = MEMORY[0x1AC585090](v100, *(&v100 + 1), v101, *(&v101 + 1));
          v55 = v54;
          sub_1A937B960(&v94, &qword_1EB3874D0, &qword_1A958CA50);
          v56 = *v71;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1A94406B4(0, *(v56 + 16) + 1, 1, v56);
            v56 = result;
          }

          v58 = *(v56 + 16);
          v57 = *(v56 + 24);
          if (v58 >= v57 >> 1)
          {
            result = sub_1A94406B4((v57 > 1), v58 + 1, 1, v56);
            v56 = result;
          }

          *(v56 + 16) = v58 + 1;
          v59 = v56 + 56 * v58;
          *(v59 + 32) = v50;
          *(v59 + 40) = v52;
          *(v59 + 48) = v53;
          *(v59 + 56) = v55;
          *(v59 + 64) = 1;
          *(v59 + 72) = 0;
          *(v59 + 80) = 0xE000000000000000;
          *v71 = v56;
          v19 = v79;
          v18 = v80;
        }
      }

      v19 += 5;
      --v18;
    }

    while (v18);
  }

  return result;
}

unint64_t sub_1A943EBE8()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x656D614E656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_1A943EC44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9445408(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A943EC6C(uint64_t a1)
{
  v2 = sub_1A944268C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943ECA8(uint64_t a1)
{
  v2 = sub_1A944268C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriRuleSet.encode(to:)(void *a1)
{
  v4 = sub_1A937829C(&qword_1EB3874E0, &qword_1A958CA60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v12[3] = v1[2];
  v12[4] = v8;
  v12[1] = v1[4];
  v12[2] = v10;
  sub_1A93780F4(a1, a1[3]);
  sub_1A944268C();

  sub_1A957D598();
  v16 = v9;
  v15 = 0;
  sub_1A937829C(&qword_1EB3874E8, &qword_1A958CA68);
  sub_1A94426E0();
  sub_1A957D338();

  if (!v2)
  {
    v14 = 1;
    sub_1A957D298();
    v13 = 2;
    sub_1A957D2E8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SiriRuleSet.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  sub_1A9440E30(a1, *v1);
  sub_1A957D518();
  if (v2)
  {
    sub_1A957C228();
  }

  return sub_1A957C228();
}

uint64_t SiriRuleSet.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1A957D4F8();
  sub_1A9440E30(v4, v1);
  sub_1A957D518();
  if (v2)
  {
    sub_1A957C228();
  }

  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t SiriRuleSet.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387500, &qword_1A958CA70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A944268C();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  sub_1A937829C(&qword_1EB3874E8, &qword_1A958CA68);
  v25 = 0;
  sub_1A94427B8();
  sub_1A957D238();
  v9 = v26;
  v24 = 1;
  v10 = sub_1A957D198();
  v12 = v11;
  v22 = v10;
  v23 = 2;
  v13 = sub_1A957D1E8();
  v16 = v15;
  v17 = *(v6 + 8);
  v21 = v13;
  v17(v8, v5);
  v18 = v21;
  v19 = v22;
  *a2 = v9;
  a2[1] = v19;
  a2[2] = v12;
  a2[3] = v18;
  a2[4] = v16;

  sub_1A9378138(a1);
}

uint64_t sub_1A943F27C()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1A957D4F8();
  sub_1A9440E30(v4, v1);
  sub_1A957D518();
  if (v2)
  {
    sub_1A957C228();
  }

  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A943F318(uint64_t a1)
{
  v2 = v1[2];
  sub_1A9440E30(a1, *v1);
  sub_1A957D518();
  if (v2)
  {
    sub_1A957C228();
  }

  return sub_1A957C228();
}

uint64_t sub_1A943F3A4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_1A957D4F8();
  sub_1A9440E30(v5, v2);
  sub_1A957D518();
  if (v3)
  {
    sub_1A957C228();
  }

  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t SiriRulesetGroup.config.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriRulesetGroup.rulesets.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

TextToSpeech::SiriRulesetGroup __swiftcall SiriRulesetGroup.init(config:rulesets:)(Swift::OpaquePointer config, Swift::OpaquePointer rulesets)
{
  v2->_rawValue = config._rawValue;
  v2[1]._rawValue = rulesets._rawValue;
  result.rulesets = rulesets;
  result.config = config;
  return result;
}

uint64_t SiriRulesetGroup.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(v3 + 8);
  v8 = (v7 + 64);
  v9 = *(v7 + 16) + 1;
  while (1)
  {
    if (!--v9)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v10 = *(v8 - 4);
    v11 = *(v8 - 3);
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    v14 = *v8;
    if (v13 == v5 && v14 == a2)
    {
      break;
    }

    v8 += 5;
    result = sub_1A957D3E8();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v13 = v5;
LABEL_11:
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
}

double sub_1A943F618@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v11 = *a1;
  SiriRulesetGroup.subscript.getter(v5, v4, v9);
  v6 = v10;
  result = *v9;
  v8 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v8;
  *(a3 + 32) = v6;
  return result;
}

uint64_t sub_1A943F66C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v10[0] = *a1;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;

  sub_1A9442890(v10[0], v5, v6, v7, v8);
  return SiriRulesetGroup.subscript.setter(v10, v3, v4);
}

uint64_t SiriRulesetGroup.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v21 = a1[3];
  v22 = a1[4];
  v10 = *(v3 + 8);
  v9 = (v3 + 8);
  v8 = v10;
  v11 = *(v10 + 16);
  if (v11)
  {
    v13 = 0;
    v14 = 64;
    while (1)
    {
      v15 = *(v8 + v14 - 8) == a2 && *(v8 + v14) == a3;
      if (v15 || (sub_1A957D3E8() & 1) != 0)
      {
        break;
      }

      ++v13;
      v14 += 40;
      if (v11 == v13)
      {
        goto LABEL_9;
      }
    }

    if (v6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A94408FC(v8);
        v8 = result;
      }

      if (v13 < *(v8 + 16))
      {
        v20 = (v8 + v14);
        *(v20 - 4) = v6;
        *(v20 - 3) = v5;
        *(v20 - 2) = v7;
        *(v20 - 1) = v21;
        *v20 = v22;

LABEL_20:
        *v9 = v8;
        return result;
      }

      __break(1u);
    }

    else
    {
      sub_1A943F8C8(v13, &v23);
    }
  }

  else
  {
LABEL_9:

    if (v6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A94407DC(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1A94407DC((v17 > 1), v18 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v18 + 1;
      v19 = (v8 + 40 * v18);
      v19[4] = v6;
      v19[5] = v5;
      v19[6] = v7;
      v19[7] = v21;
      v19[8] = v22;
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1A943F8C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94408FC(v5);
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
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

void (*SiriRulesetGroup.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  *a1 = v7;
  v7[6] = a3;
  v7[7] = v3;
  v7[5] = a2;
  SiriRulesetGroup.subscript.getter(a2, a3, v7);
  return sub_1A943FA14;
}

void sub_1A943FA14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[6];
  v9 = (*a1)[4];
  v8 = (*a1)[5];
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v9;
  if (a2)
  {

    sub_1A9442890(v4, v3, v6, v5, v9);
    SiriRulesetGroup.subscript.setter(v10, v8, v7);
    sub_1A94428E0(*v2, v2[1], v2[2], v2[3], v2[4]);
  }

  else
  {

    SiriRulesetGroup.subscript.setter(v10, v8, v7);
  }

  free(v2);
}

uint64_t static SiriRulesetGroup.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1A943FB54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1A9436D44(v2, v3);
}

uint64_t sub_1A943FB54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1A937A490(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1A957D3E8();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A943FCFC()
{
  if (*v0)
  {
    return 0x73746573656C7572;
  }

  else
  {
    return 0x6769666E6F63;
  }
}

uint64_t sub_1A943FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746573656C7572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A943FE0C(uint64_t a1)
{
  v2 = sub_1A944292C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943FE48(uint64_t a1)
{
  v2 = sub_1A944292C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriRulesetGroup.encode(to:)(void *a1)
{
  v4 = sub_1A937829C(&qword_1EB387518, &qword_1A958CA78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  sub_1A93780F4(a1, a1[3]);
  sub_1A944292C();

  sub_1A957D598();
  v12 = v8;
  v11 = 0;
  sub_1A937829C(&qword_1EB387520, &unk_1A958CA80);
  sub_1A9442980();
  sub_1A957D338();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1A937829C(&qword_1EB387530, &qword_1A958CA90);
    sub_1A9442A2C();
    sub_1A957D338();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SiriRulesetGroup.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1A9440F0C(a1, v3);

  return sub_1A9440C5C(a1, v4);
}

uint64_t SiriRulesetGroup.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A957D4F8();
  sub_1A9440F0C(v4, v1);
  sub_1A9440C5C(v4, v2);
  return sub_1A957D548();
}

uint64_t SiriRulesetGroup.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387548, &qword_1A958CA98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A944292C();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  sub_1A937829C(&qword_1EB387520, &unk_1A958CA80);
  v13 = 0;
  sub_1A9442B04();
  sub_1A957D238();
  v9 = v14;
  sub_1A937829C(&qword_1EB387530, &qword_1A958CA90);
  v13 = 1;
  sub_1A9442C1C();
  sub_1A957D238();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  sub_1A9378138(a1);
}

uint64_t sub_1A9440350()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A957D4F8();
  sub_1A9440F0C(v4, v1);
  sub_1A9440C5C(v4, v2);
  return sub_1A957D548();
}

uint64_t sub_1A94403A4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1A9440F0C(a1, v3);

  return sub_1A9440C5C(a1, v4);
}

uint64_t sub_1A94403E4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1A957D4F8();
  sub_1A9440F0C(v5, v2);
  sub_1A9440C5C(v5, v3);
  return sub_1A957D548();
}

uint64_t sub_1A9440434(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1A943FB54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1A9436D44(v2, v3);
}

uint64_t sub_1A9440490(uint64_t a1)
{
  v2 = sub_1A9441598(&qword_1EB3875F8, type metadata accessor for NLTag, &unk_1A958DBF8);
  v3 = sub_1A9441598(&qword_1EB387600, type metadata accessor for NLTag, &unk_1A958DB98);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1A944054C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A944056C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A944056C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387620, &qword_1A958EA20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387628, &qword_1A958EA28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A94406B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387610, &qword_1A958EA18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A94407DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387608, &qword_1A958EA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A9440910(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v4);
  if (v4)
  {
    for (i = a2 + 48; ; i += 64)
    {
      v7 = *(i + 24);

      sub_1A93B73E0(v7);

      sub_1A957C228();
      sub_1A957C228();
      sub_1A957C228();

      sub_1A957D518();
      if ((~v7 & 0xF000000000000007) != 0)
      {
        break;
      }

      sub_1A957D518();
LABEL_4:
      sub_1A957C228();

      sub_1A93B7494(v7);

      if (!--v4)
      {
        return result;
      }
    }

    sub_1A957D518();
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (v8 == 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      if (!v8)
      {
        MEMORY[0x1AC5863C0](0);
        sub_1A957C0F8();

        sub_1A957C228();

        sub_1A957D528();
LABEL_14:
        sub_1A93B7494(v7);
        goto LABEL_4;
      }

      v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 1;
    }

    MEMORY[0x1AC5863C0](v10);

    sub_1A9440B40(a1, v9);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1A9440B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        v11 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (v10 == 2)
        {
          v7 = 2;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        if (!v10)
        {
          MEMORY[0x1AC5863C0](0);
          sub_1A957C0F8();

          sub_1A957C228();

          sub_1A957D528();
          goto LABEL_5;
        }

        v11 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = 1;
      }

      MEMORY[0x1AC5863C0](v7);

      sub_1A9440B40(a1, v11);
LABEL_5:

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1A9440C5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v3);
  v12 = v3;
  if (v3)
  {
    v5 = 0;
    v11 = a2 + 32;
    do
    {
      v14 = v5;
      v6 = (v11 + 40 * v5);
      v7 = *v6;
      v8 = v6[2];
      MEMORY[0x1AC5863C0](*(*v6 + 16));
      v9 = *(v7 + 16);
      v13 = v8;
      if (v9)
      {

        v10 = v7 + 80;
        do
        {

          sub_1A957C228();
          sub_1A957C228();
          sub_1A957D518();
          sub_1A957C228();

          v10 += 56;
          --v9;
        }

        while (v9);
        if (!v13)
        {
LABEL_11:
          sub_1A957D518();
          goto LABEL_4;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_11;
        }
      }

      sub_1A957D518();
      sub_1A957C228();
LABEL_4:
      v5 = v14 + 1;
      sub_1A957C228();
    }

    while (v14 + 1 != v12);
  }

  return result;
}

uint64_t sub_1A9440E30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v3);
  if (v3)
  {
    v5 = a2 + 80;
    do
    {

      sub_1A957C228();
      sub_1A957C228();
      sub_1A957D518();
      sub_1A957C228();

      v5 += 56;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A9440F0C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
    v15 = v8;
LABEL_11:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    sub_1A957C228();

    MEMORY[0x1AC5863C0](*(v11 + 16));
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + 40;
      do
      {

        sub_1A957C228();

        v13 += 16;
        --v12;
      }

      while (v12);
    }

    v5 &= v5 - 1;

    result = sub_1A957D548();
    v8 = result ^ v15;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1AC5863C0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v15 = v8;
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12TextToSpeech13PostMatchRuleO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 62 != 2)
      {
        return 0;
      }
    }

    else if (v3 >> 62 != 3)
    {
      return 0;
    }

LABEL_14:
    v14 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v14) = sub_1A9437104(v14, v15);

    return v14 & 1;
  }

  if (v4)
  {
    if (v3 >> 62 != 1)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (v3 >> 62)
  {
    return 0;
  }

  v5 = *(v2 + 24);
  v6 = *(v3 + 24);
  v7 = sub_1A957C0F8();
  v9 = v8;
  if (v7 == sub_1A957C0F8() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1A957D3E8();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return v5 == v6;
}

unint64_t sub_1A944121C()
{
  result = qword_1EB395540;
  if (!qword_1EB395540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395540);
  }

  return result;
}

unint64_t sub_1A9441270()
{
  result = qword_1EB395548;
  if (!qword_1EB395548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395548);
  }

  return result;
}

unint64_t sub_1A94412C4()
{
  result = qword_1EB387318;
  if (!qword_1EB387318)
  {
    sub_1A93A7B68(&qword_1EB387310, &qword_1A958C938);
    sub_1A9441348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387318);
  }

  return result;
}

unint64_t sub_1A9441348()
{
  result = qword_1EB387320;
  if (!qword_1EB387320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387320);
  }

  return result;
}

unint64_t sub_1A944139C()
{
  result = qword_1EB395550;
  if (!qword_1EB395550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395550);
  }

  return result;
}

unint64_t sub_1A94413F0()
{
  result = qword_1EB395558;
  if (!qword_1EB395558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395558);
  }

  return result;
}

unint64_t sub_1A9441444()
{
  result = qword_1EB395560;
  if (!qword_1EB395560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395560);
  }

  return result;
}

unint64_t sub_1A94414C0()
{
  result = qword_1EB387358;
  if (!qword_1EB387358)
  {
    sub_1A93A7B68(&qword_1EB387310, &qword_1A958C938);
    sub_1A9441544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387358);
  }

  return result;
}

unint64_t sub_1A9441544()
{
  result = qword_1EB387360;
  if (!qword_1EB387360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387360);
  }

  return result;
}

uint64_t sub_1A9441598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s12TextToSpeech21RulesetActivationRuleO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 >> 61 == 3)
      {
        goto LABEL_21;
      }

      return 0;
    }

    if (v4 == 4)
    {
      if (v3 >> 61 == 4)
      {
        goto LABEL_21;
      }

      return 0;
    }

    if (v3 != 0xA000000000000000)
    {
      return 0;
    }

    return 1;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 61 == 1)
      {
        v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v7 = sub_1A94367A4(v6, v5);

        return v7 & 1;
      }

      return 0;
    }

    if (v3 >> 61 == 2)
    {
LABEL_21:
      v10 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v10) = sub_1A94368E8(v10, v11);

      return v10 & 1;
    }

    return 0;
  }

  if (v3 >> 61)
  {
    return 0;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A944175C()
{
  result = qword_1EB395568;
  if (!qword_1EB395568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395568);
  }

  return result;
}

unint64_t sub_1A94417B0()
{
  result = qword_1EB395570;
  if (!qword_1EB395570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395570);
  }

  return result;
}

unint64_t sub_1A9441804()
{
  result = qword_1EB3873B0;
  if (!qword_1EB3873B0)
  {
    sub_1A93A7B68(&qword_1EB3873A8, &qword_1A958C9A8);
    sub_1A9441888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3873B0);
  }

  return result;
}

unint64_t sub_1A9441888()
{
  result = qword_1EB3873B8;
  if (!qword_1EB3873B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3873B8);
  }

  return result;
}

unint64_t sub_1A94418DC()
{
  result = qword_1EB395578;
  if (!qword_1EB395578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395578);
  }

  return result;
}

unint64_t sub_1A9441930()
{
  result = qword_1EB395580;
  if (!qword_1EB395580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395580);
  }

  return result;
}

unint64_t sub_1A9441984()
{
  result = qword_1EB395588;
  if (!qword_1EB395588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395588);
  }

  return result;
}

unint64_t sub_1A94419D8()
{
  result = qword_1EB395590;
  if (!qword_1EB395590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395590);
  }

  return result;
}

unint64_t sub_1A9441A2C()
{
  result = qword_1EB3873C0;
  if (!qword_1EB3873C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3873C0);
  }

  return result;
}

unint64_t sub_1A9441A80()
{
  result = qword_1EB395598;
  if (!qword_1EB395598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395598);
  }

  return result;
}

unint64_t sub_1A9441AD4()
{
  result = qword_1EB387400;
  if (!qword_1EB387400)
  {
    sub_1A93A7B68(&qword_1EB3873A8, &qword_1A958C9A8);
    sub_1A9441B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387400);
  }

  return result;
}

unint64_t sub_1A9441B58()
{
  result = qword_1EB387408;
  if (!qword_1EB387408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387408);
  }

  return result;
}

unint64_t sub_1A9441BAC()
{
  result = qword_1EB387410;
  if (!qword_1EB387410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387410);
  }

  return result;
}

uint64_t _s12TextToSpeech16PronuncationRuleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = a1[5];
  v19 = a1[7];
  v20 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 40);
  v17 = *(a2 + 56);
  v18 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    v12 = 6385769;
  }

  else
  {
    v12 = 7823730;
  }

  if (v9)
  {
    v13 = 6385769;
  }

  else
  {
    v13 = 7823730;
  }

  if (v12 == v13)
  {
    swift_bridgeObjectRelease_n();
    if (v5 != v10)
    {
      return 0;
    }
  }

  else
  {
    v14 = sub_1A957D3E8();
    swift_bridgeObjectRelease_n();
    result = 0;
    if (v14 & 1) == 0 || ((v5 ^ v10))
    {
      return result;
    }
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {
    v22 = v6;
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v21 = v11;
      sub_1A93B73E0(v6);
      sub_1A93B73E0(v11);
      sub_1A93B73E0(v6);
      matched = _s12TextToSpeech13PostMatchRuleO2eeoiySbAC_ACtFZ_0(&v22, &v21);

      sub_1A93B7494(v6);
      if (matched)
      {
        goto LABEL_27;
      }

      return 0;
    }

    sub_1A93B73E0(v6);
    sub_1A93B73E0(v11);
    sub_1A93B73E0(v6);

LABEL_23:
    sub_1A93B7494(v6);
    sub_1A93B7494(v11);
    return 0;
  }

  sub_1A93B73E0(v6);
  sub_1A93B73E0(v11);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    goto LABEL_23;
  }

  sub_1A93B7494(v6);
LABEL_27:
  if (v20 == v18 && v19 == v17)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A9441E54()
{
  result = qword_1EB3955A0;
  if (!qword_1EB3955A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3955A0);
  }

  return result;
}

unint64_t sub_1A9441EA8()
{
  result = qword_1EB387420;
  if (!qword_1EB387420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387420);
  }

  return result;
}

unint64_t sub_1A9441EFC()
{
  result = qword_1EB387430;
  if (!qword_1EB387430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387430);
  }

  return result;
}

uint64_t type metadata accessor for PronunciationRuleSet(uint64_t a1)
{
  result = qword_1EB396AD0;
  if (!qword_1EB396AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s12TextToSpeech11SiriRuleSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_1A9436FA0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v8 && (v2 == v6 && v4 == v8 || (sub_1A957D3E8() & 1) != 0))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_7:
  if (v3 == v7 && v5 == v9)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

uint64_t _s12TextToSpeech20PronunciationRuleSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for PronunciationRuleSet(0);
  if ((sub_1A957B098() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v23 = *(a2 + v11);
  v24 = v12;

  LOBYTE(v12) = _s12TextToSpeech21RulesetActivationRuleO2eeoiySbAC_ACtFZ_0(&v24, &v23);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = v5[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17 || (*v14 != *v16 || v15 != v17) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if ((sub_1A9436C28(*(a1 + v5[9]), *(a2 + v5[9])) & 1) == 0 || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]))
  {
    return 0;
  }

  v19 = v5[12];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  if (v20 == *v22 && v21 == v22[1])
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A94422BC()
{
  result = qword_1EB3955A8;
  if (!qword_1EB3955A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3955A8);
  }

  return result;
}

unint64_t sub_1A9442310()
{
  result = qword_1EB387450;
  if (!qword_1EB387450)
  {
    sub_1A93A7B68(&qword_1EB387448, &qword_1A958CA00);
    sub_1A9442394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387450);
  }

  return result;
}

unint64_t sub_1A9442394()
{
  result = qword_1EB387458;
  if (!qword_1EB387458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387458);
  }

  return result;
}

unint64_t sub_1A94423E8()
{
  result = qword_1EB387470;
  if (!qword_1EB387470)
  {
    sub_1A93A7B68(&qword_1EB387448, &qword_1A958CA00);
    sub_1A944246C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387470);
  }

  return result;
}

unint64_t sub_1A944246C()
{
  result = qword_1EB387478;
  if (!qword_1EB387478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387478);
  }

  return result;
}

uint64_t _s12TextToSpeech8SiriRuleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_1A957D3E8();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A94425E4()
{
  result = qword_1EB3955B0;
  if (!qword_1EB3955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3955B0);
  }

  return result;
}

uint64_t sub_1A9442638(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1A944268C()
{
  result = qword_1EB3955B8;
  if (!qword_1EB3955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3955B8);
  }

  return result;
}

unint64_t sub_1A94426E0()
{
  result = qword_1EB3874F0;
  if (!qword_1EB3874F0)
  {
    sub_1A93A7B68(&qword_1EB3874E8, &qword_1A958CA68);
    sub_1A9442764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3874F0);
  }

  return result;
}

unint64_t sub_1A9442764()
{
  result = qword_1EB3874F8;
  if (!qword_1EB3874F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3874F8);
  }

  return result;
}

unint64_t sub_1A94427B8()
{
  result = qword_1EB387508;
  if (!qword_1EB387508)
  {
    sub_1A93A7B68(&qword_1EB3874E8, &qword_1A958CA68);
    sub_1A944283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387508);
  }

  return result;
}

unint64_t sub_1A944283C()
{
  result = qword_1EB387510;
  if (!qword_1EB387510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387510);
  }

  return result;
}

uint64_t sub_1A9442890(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A94428E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1A944292C()
{
  result = qword_1EB3955C0[0];
  if (!qword_1EB3955C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3955C0);
  }

  return result;
}

unint64_t sub_1A9442980()
{
  result = qword_1EB387528;
  if (!qword_1EB387528)
  {
    sub_1A93A7B68(&qword_1EB387520, &unk_1A958CA80);
    sub_1A9442BB0(&qword_1EB385F88, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387528);
  }

  return result;
}

unint64_t sub_1A9442A2C()
{
  result = qword_1EB387538;
  if (!qword_1EB387538)
  {
    sub_1A93A7B68(&qword_1EB387530, &qword_1A958CA90);
    sub_1A9442AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387538);
  }

  return result;
}

unint64_t sub_1A9442AB0()
{
  result = qword_1EB387540;
  if (!qword_1EB387540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387540);
  }

  return result;
}

unint64_t sub_1A9442B04()
{
  result = qword_1EB387550;
  if (!qword_1EB387550)
  {
    sub_1A93A7B68(&qword_1EB387520, &unk_1A958CA80);
    sub_1A9442BB0(&qword_1EB3863D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387550);
  }

  return result;
}

uint64_t sub_1A9442BB0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB386B68, &qword_1A9591620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9442C1C()
{
  result = qword_1EB387558;
  if (!qword_1EB387558)
  {
    sub_1A93A7B68(&qword_1EB387530, &qword_1A958CA90);
    sub_1A9442CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387558);
  }

  return result;
}

unint64_t sub_1A9442CA0()
{
  result = qword_1EB387560;
  if (!qword_1EB387560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387560);
  }

  return result;
}

unint64_t sub_1A9442CF8()
{
  result = qword_1EB387568;
  if (!qword_1EB387568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387568);
  }

  return result;
}

unint64_t sub_1A9442D50()
{
  result = qword_1EB387570;
  if (!qword_1EB387570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387570);
  }

  return result;
}

unint64_t sub_1A9442DEC()
{
  result = qword_1EB387588;
  if (!qword_1EB387588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387588);
  }

  return result;
}

unint64_t sub_1A9442E44()
{
  result = qword_1EB387590;
  if (!qword_1EB387590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387590);
  }

  return result;
}

unint64_t sub_1A9442EE0()
{
  result = qword_1EB3875A8;
  if (!qword_1EB3875A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3875A8);
  }

  return result;
}

unint64_t sub_1A9442F80()
{
  result = qword_1EB3875B8;
  if (!qword_1EB3875B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3875B8);
  }

  return result;
}

unint64_t sub_1A9442FD8()
{
  result = qword_1EB3875C0;
  if (!qword_1EB3875C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3875C0);
  }

  return result;
}

unint64_t sub_1A9443030()
{
  result = qword_1EB3875C8;
  if (!qword_1EB3875C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3875C8);
  }

  return result;
}

uint64_t sub_1A9443090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A94430EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A94431A8(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1A94431C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A9443220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1A9443280(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

uint64_t sub_1A94432BC(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A94432E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A9443330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A94433C8(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6158];
  sub_1A957B0B8();
  if (v2 <= 0x3F)
  {
    sub_1A94434DC(319, &qword_1EB3863D8, v1, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1A94434DC(319, &qword_1EB3875D0, &type metadata for PronuncationRule, MEMORY[0x1E69E62F8]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A94434DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A944353C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A9443584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PronunciationRuleSet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PronunciationRuleSet.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A9443850()
{
  result = qword_1EB396BE0[0];
  if (!qword_1EB396BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB396BE0);
  }

  return result;
}

unint64_t sub_1A94438A8()
{
  result = qword_1EB396DF0;
  if (!qword_1EB396DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB396DF0);
  }

  return result;
}

unint64_t sub_1A9443900()
{
  result = qword_1EB397000[0];
  if (!qword_1EB397000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397000);
  }

  return result;
}

unint64_t sub_1A9443958()
{
  result = qword_1EB397210[0];
  if (!qword_1EB397210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397210);
  }

  return result;
}

unint64_t sub_1A94439B0()
{
  result = qword_1EB397420[0];
  if (!qword_1EB397420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397420);
  }

  return result;
}

unint64_t sub_1A9443AE0()
{
  result = qword_1EB397930[0];
  if (!qword_1EB397930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397930);
  }

  return result;
}

unint64_t sub_1A9443B38()
{
  result = qword_1EB397B40[0];
  if (!qword_1EB397B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397B40);
  }

  return result;
}

unint64_t sub_1A9443B90()
{
  result = qword_1EB397D50[0];
  if (!qword_1EB397D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB397D50);
  }

  return result;
}

unint64_t sub_1A9443BE8()
{
  result = qword_1EB398060[0];
  if (!qword_1EB398060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398060);
  }

  return result;
}

unint64_t sub_1A9443C40()
{
  result = qword_1EB398270[0];
  if (!qword_1EB398270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398270);
  }

  return result;
}

unint64_t sub_1A9443C98()
{
  result = qword_1EB398480[0];
  if (!qword_1EB398480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398480);
  }

  return result;
}

unint64_t sub_1A9443CF0()
{
  result = qword_1EB398690[0];
  if (!qword_1EB398690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398690);
  }

  return result;
}

unint64_t sub_1A9443D48()
{
  result = qword_1EB3988A0[0];
  if (!qword_1EB3988A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3988A0);
  }

  return result;
}

unint64_t sub_1A9443DA0()
{
  result = qword_1EB398AB0[0];
  if (!qword_1EB398AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398AB0);
  }

  return result;
}

unint64_t sub_1A9443DF8()
{
  result = qword_1EB398CC0[0];
  if (!qword_1EB398CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398CC0);
  }

  return result;
}

unint64_t sub_1A9443E50()
{
  result = qword_1EB398ED0[0];
  if (!qword_1EB398ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398ED0);
  }

  return result;
}

unint64_t sub_1A9443EA8()
{
  result = qword_1EB398FE0;
  if (!qword_1EB398FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB398FE0);
  }

  return result;
}

unint64_t sub_1A9443F00()
{
  result = qword_1EB398FE8[0];
  if (!qword_1EB398FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB398FE8);
  }

  return result;
}

unint64_t sub_1A9443F58()
{
  result = qword_1EB399070;
  if (!qword_1EB399070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399070);
  }

  return result;
}

unint64_t sub_1A9443FB0()
{
  result = qword_1EB399078;
  if (!qword_1EB399078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399078);
  }

  return result;
}

unint64_t sub_1A9444008()
{
  result = qword_1EB399100;
  if (!qword_1EB399100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399100);
  }

  return result;
}

unint64_t sub_1A9444060()
{
  result = qword_1EB399108[0];
  if (!qword_1EB399108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399108);
  }

  return result;
}

unint64_t sub_1A94440B8()
{
  result = qword_1EB399190;
  if (!qword_1EB399190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399190);
  }

  return result;
}

unint64_t sub_1A9444110()
{
  result = qword_1EB399198[0];
  if (!qword_1EB399198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399198);
  }

  return result;
}

unint64_t sub_1A9444168()
{
  result = qword_1EB399220;
  if (!qword_1EB399220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399220);
  }

  return result;
}

unint64_t sub_1A94441C0()
{
  result = qword_1EB399228[0];
  if (!qword_1EB399228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399228);
  }

  return result;
}

unint64_t sub_1A9444218()
{
  result = qword_1EB3992B0;
  if (!qword_1EB3992B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3992B0);
  }

  return result;
}

unint64_t sub_1A9444270()
{
  result = qword_1EB3992B8[0];
  if (!qword_1EB3992B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3992B8);
  }

  return result;
}

unint64_t sub_1A94442C8()
{
  result = qword_1EB399340;
  if (!qword_1EB399340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399340);
  }

  return result;
}

unint64_t sub_1A9444320()
{
  result = qword_1EB399348[0];
  if (!qword_1EB399348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399348);
  }

  return result;
}

unint64_t sub_1A9444378()
{
  result = qword_1EB3993D0;
  if (!qword_1EB3993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3993D0);
  }

  return result;
}

unint64_t sub_1A94443D0()
{
  result = qword_1EB3993D8[0];
  if (!qword_1EB3993D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3993D8);
  }

  return result;
}

unint64_t sub_1A9444428()
{
  result = qword_1EB399460;
  if (!qword_1EB399460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399460);
  }

  return result;
}

unint64_t sub_1A9444480()
{
  result = qword_1EB399468[0];
  if (!qword_1EB399468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399468);
  }

  return result;
}

unint64_t sub_1A94444D8()
{
  result = qword_1EB3994F0;
  if (!qword_1EB3994F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3994F0);
  }

  return result;
}

unint64_t sub_1A9444530()
{
  result = qword_1EB3994F8[0];
  if (!qword_1EB3994F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3994F8);
  }

  return result;
}

unint64_t sub_1A9444588()
{
  result = qword_1EB399580;
  if (!qword_1EB399580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399580);
  }

  return result;
}

unint64_t sub_1A94445E0()
{
  result = qword_1EB399588[0];
  if (!qword_1EB399588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399588);
  }

  return result;
}

unint64_t sub_1A9444638()
{
  result = qword_1EB399610;
  if (!qword_1EB399610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399610);
  }

  return result;
}

unint64_t sub_1A9444690()
{
  result = qword_1EB399618[0];
  if (!qword_1EB399618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399618);
  }

  return result;
}

unint64_t sub_1A94446E8()
{
  result = qword_1EB3996A0;
  if (!qword_1EB3996A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3996A0);
  }

  return result;
}

unint64_t sub_1A9444740()
{
  result = qword_1EB3996A8[0];
  if (!qword_1EB3996A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3996A8);
  }

  return result;
}

unint64_t sub_1A9444798()
{
  result = qword_1EB399730;
  if (!qword_1EB399730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399730);
  }

  return result;
}

unint64_t sub_1A94447F0()
{
  result = qword_1EB399738[0];
  if (!qword_1EB399738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399738);
  }

  return result;
}

unint64_t sub_1A9444848()
{
  result = qword_1EB3997C0;
  if (!qword_1EB3997C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3997C0);
  }

  return result;
}

unint64_t sub_1A94448A0()
{
  result = qword_1EB3997C8[0];
  if (!qword_1EB3997C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3997C8);
  }

  return result;
}

unint64_t sub_1A94448F8()
{
  result = qword_1EB399850;
  if (!qword_1EB399850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB399850);
  }

  return result;
}

unint64_t sub_1A9444950()
{
  result = qword_1EB399858[0];
  if (!qword_1EB399858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB399858);
  }

  return result;
}

unint64_t sub_1A94449A8()
{
  result = qword_1EB3998E0;
  if (!qword_1EB3998E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3998E0);
  }

  return result;
}

unint64_t sub_1A9444A00()
{
  result = qword_1EB3998E8[0];
  if (!qword_1EB3998E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3998E8);
  }

  return result;
}

uint64_t sub_1A9444A54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7053664F74726170 && a2 == 0xEC00000068636565;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581857 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A9444BB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001A95C2D50 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69736568746E7973 && a2 == 0xEB0000000072657ALL || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6581857 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1A957D3E8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A9444DB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865676572 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEF65707954746E65 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6374614D74736F70 && a2 == 0xE900000000000068 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A9444FC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617669746361 && a2 == 0xEE00656C75526E6FLL || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6974617265706FLL && a2 == 0xEE00786567655267 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1A94452A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865676572 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A9445408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A95C2D70 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

unint64_t sub_1A9445524()
{
  result = qword_1EB387618;
  if (!qword_1EB387618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387618);
  }

  return result;
}

uint64_t sub_1A9445608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1A9445BD4();
  result = sub_1A957CC48();
  *a4 = result;
  return result;
}

id sub_1A9445670()
{
  sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A958EA40;
  if (qword_1EB399970 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3A7C28;
  *(v0 + 32) = qword_1EB3A7C28;
  v2 = qword_1EB399978;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB3A7C30;
  *(v0 + 40) = qword_1EB3A7C30;
  qword_1EB399990 = v0;

  return v4;
}

id sub_1A9445750()
{
  if (qword_1EB399980 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3A7C38;

  return v1;
}

uint64_t sub_1A94457AC(unsigned int a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a6;
  v32 = a7;
  v33 = a1;
  v12 = sub_1A957AFD8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB399988 != -1)
  {
    v14 = swift_once();
  }

  v34 = a2;
  MEMORY[0x1EEE9AC00](v14);
  *(&v31 - 2) = &v34;
  result = sub_1A9445A54(sub_1A9445B7C, (&v31 - 4), v17);
  if (result)
  {
    if (a3)
    {
      sub_1A957AF38();
      v19 = sub_1A957AF48();
      v21 = v20;
      (*(v13 + 8))(v16, v12);
      v34 = v19;
      v35 = v21;
      MEMORY[0x1AC585140](32, 0xE100000000000000);
      MEMORY[0x1AC585140](v31, v32);
      MEMORY[0x1AC585140](8250, 0xE200000000000000);
      v22 = v34;
      v23 = v35;
      v24 = sub_1A957C128();
      v26 = v25;
      v34 = v22;
      v35 = v23;

      MEMORY[0x1AC585140](v24, v26);

      v27 = v34;
      v28 = v35;
    }

    else
    {
      v27 = sub_1A957C128();
      v28 = v29;
    }

    sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1A9587160;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1A93B3A38();
    *(v30 + 32) = v27;
    *(v30 + 40) = v28;
    sub_1A957BC58(v33, &dword_1A9324000, a2, "%@", 2, 2, v30);
  }

  return result;
}

uint64_t sub_1A9445A54(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1AC585DE0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1A957CE48();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_1A9445BD4()
{
  result = qword_1EB387630;
  if (!qword_1EB387630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB387630);
  }

  return result;
}

uint64_t TTSMarkupSpeech.transformed(_:)@<X0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12[3] = a3;
  v12[4] = a4;
  v10 = sub_1A93981E4(v12);
  (*(*(a3 - 8) + 16))(v10, v5, a3);
  sub_1A9445CBC(a1, a2, v12, a5);
  return sub_1A9378138(v12);
}

uint64_t sub_1A9445CBC@<X0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35 = a2;
  v36 = a1;
  sub_1A9379534(a3, v42);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v6 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  result = swift_dynamicCast();
  if (result)
  {
    v33 = v6;
    v34 = a4;
    v8 = *&v41[0];
    v9 = *(*&v41[0] + 16);
    if (v9)
    {
      v10 = 0;
      v11 = *&v41[0] + 32;
      v12 = MEMORY[0x1E69E7CC0];
      while (v10 < *(v8 + 16))
      {
        sub_1A9379534(v11, v42);
        sub_1A9445CBC(v36, v35, v42, &v38);
        sub_1A9378138(v42);
        if (*(&v39 + 1))
        {
          sub_1A932D070(&v38, v41);
          sub_1A932D070(v41, &v38);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v12 = sub_1A93ADC90(0, v12[2] + 1, 1, v12);
            v37 = v12;
          }

          v15 = v12[2];
          v14 = v12[3];
          if (v15 >= v14 >> 1)
          {
            v12 = sub_1A93ADC90((v14 > 1), v15 + 1, 1, v12);
            v37 = v12;
          }

          v16 = *(&v39 + 1);
          v17 = v40;
          v18 = sub_1A9396054(&v38, *(&v39 + 1));
          MEMORY[0x1EEE9AC00](v18);
          v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v21 + 16))(v20);
          sub_1A944A8F4(v15, v20, &v37, v16, v17);
          result = sub_1A9378138(&v38);
        }

        else
        {
          result = sub_1A937B960(&v38, &qword_1EB3868E8, &unk_1A958F280);
        }

        ++v10;
        v11 += 40;
        if (v9 == v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
LABEL_18:

      if (v12[2])
      {
        v30 = v34;
        v34[3] = v33;
        v30[4] = &protocol witness table for <A> [A];
        *v30 = v12;
      }

      else
      {
        v31 = v34;
        v34[4] = 0;
        *v31 = 0u;
        v31[1] = 0u;
      }
    }
  }

  else
  {
    sub_1A9379534(a3, v41);
    sub_1A937829C(&qword_1EB387678, &qword_1A958EAB8);
    if (swift_dynamicCast())
    {
      sub_1A932D070(&v38, v42);
      v22 = v43;
      v23 = v44;
      sub_1A93780F4(v42, v43);
      (*(v23 + 16))(&v38, v22, v23);
      if (*(&v39 + 1))
      {
        sub_1A932D070(&v38, v41);
        sub_1A9445CBC(v36, v35, v41, &v38);
        v24 = v43;
        v25 = v44;
        sub_1A9396054(v42, v43);
        (*(v25 + 24))(&v38, v24, v25);
        v26 = v43;
        v27 = v44;
        v28 = sub_1A93780F4(v42, v43);
        *(&v39 + 1) = v26;
        v40 = *(v27 + 8);
        v29 = sub_1A93981E4(&v38);
        (*(*(v26 - 8) + 16))(v29, v28, v26);
        v36(&v38);
        sub_1A9378138(v41);
        sub_1A9378138(&v38);
        return sub_1A9378138(v42);
      }

      sub_1A937B960(&v38, &qword_1EB3868E8, &unk_1A958F280);
      sub_1A9378138(v42);
    }

    else
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      sub_1A937B960(&v38, &qword_1EB387680, qword_1A958EAC0);
    }

    return (v36)(a3);
  }

  return result;
}

uint64_t TTSMarkupSpeech.transformed<A>(of:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v13[3] = a3;
  v13[4] = a5;
  v10 = sub_1A93981E4(v13);
  (*(*(a3 - 8) + 16))(v10, v7, a3);
  sub_1A9445CBC(sub_1A94464C0, v12, v13, a7);
  return sub_1A9378138(v13);
}

uint64_t sub_1A94461E0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a2;
  v8 = sub_1A957CC58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9379534(a1, v30);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v27 = a5;
    v20(v15, 0, 1, a3);
    v21 = *(v16 + 32);
    v21(v18, v15, a3);
    v29(v18);
    if ((*(v16 + 48))(v12, 1, a3) == 1)
    {
      (*(v16 + 8))(v18, a3);
      result = (*(v9 + 8))(v12, v8);
      v23 = v27;
      *(v27 + 32) = 0;
      *v23 = 0u;
      v23[1] = 0u;
    }

    else
    {
      v24 = v27;
      v25 = v28;
      *(v27 + 24) = a3;
      v24[4] = v25;
      v26 = sub_1A93981E4(v24);
      v21(v26, v12, a3);
      return (*(v16 + 8))(v18, a3);
    }
  }

  else
  {
    v20(v15, 1, 1, a3);
    (*(v9 + 8))(v15, v8);
    return sub_1A9379534(a1, a5);
  }

  return result;
}

uint64_t TTSMarkupSpeech.transformed<A>(of:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = v7;
  v16 = sub_1A957CC58();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25[-v17];
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a1;
  v31 = a2;
  v32[3] = a3;
  v32[4] = a5;
  v19 = sub_1A93981E4(v32);
  v20 = *(a3 - 8);
  v21 = *(v20 + 16);
  v21(v19, v8, a3);
  sub_1A9445CBC(sub_1A94468D4, v25, v32, v33);
  sub_1A9378138(v32);
  sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
  v22 = swift_dynamicCast();
  v23 = *(v20 + 56);
  if (v22)
  {
    v23(v18, 0, 1, a3);
    return (*(v20 + 32))(a7, v18, a3);
  }

  else
  {
    v23(v18, 1, 1, a3);
    return (v21)(a7, v8, a3);
  }
}

uint64_t sub_1A94466A8@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1A957CC58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11 - 8];
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A9379534(a1, v20);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, a3);
    (*(v13 + 32))(v15, v12, a3);
    a2(v15);
    return (*(v13 + 8))(v15, a3);
  }

  else
  {
    v17(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    return sub_1A9379534(a1, a4);
  }
}

uint64_t sub_1A94468E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6[2] = a1;
  v6[3] = a2;
  return TTSMarkupSpeech.transformed(_:)(sub_1A944691C, v6, a3, a4, a5);
}

double sub_1A944691C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_1A9379534(a1, v14);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  sub_1A937829C(&qword_1EB387668, &qword_1A958EAA8);
  if (swift_dynamicCast())
  {
    sub_1A932D070(v12, v15);
    if (v5(v15))
    {
      v6 = v16;
      v7 = v17;
      v8 = sub_1A93780F4(v15, v16);
      v9 = *(v7 + 8);
      *(a2 + 24) = v6;
      *(a2 + 32) = v9;
      v10 = sub_1A93981E4(a2);
      (*(*(v6 - 8) + 16))(v10, v8, v6);
      sub_1A9378138(v15);
    }

    else
    {
      sub_1A9378138(v15);
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1A937B960(v12, &qword_1EB387670, &qword_1A958EAB0);
    sub_1A9379534(a1, a2);
  }

  return result;
}

uint64_t TTSMarkup.SpeechText.transformed(_:)@<X0>(void (*a1)(uint64_t, uint64_t, void *, uint64_t (*)(), void *)@<X0>, uint64_t *x8_0@<X8>)
{
  v6 = *(v3 + 8);
  v8[0] = *v3;
  v8[1] = v6;
  v9 = *(v3 + 16);

  return sub_1A9446AD4(v8, a1, x8_0);
}

uint64_t sub_1A9446AD4@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, uint64_t, void *, uint64_t (*)(), void *)@<X1>, uint64_t *a4@<X8>)
{
  v4 = a1[1];
  v20 = *a1;
  v5 = a1[2];
  v21 = a1[3];
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v20;
  v10[4] = v4;
  v10[5] = v5;
  v10[6] = v21;
  v10[7] = v9;
  v10[8] = v6;
  sub_1A93847E0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  a2(v4, v5, __dst, sub_1A944AA74, v10);

  swift_beginAccess();
  sub_1A9447590((v6 + 16));
  swift_endAccess();
  swift_beginAccess();
  sub_1A94476FC((v8 + 16));
  swift_endAccess();
  swift_beginAccess();
  v23 = (v9 + 16);
  sub_1A944776C((v9 + 16));
  swift_endAccess();
  *&v26 = v5;
  *(&v26 + 1) = v21;

  TransformableString.withTransformation<A>(_:)(sub_1A944AA7C);
  sub_1A9473530(__dst);

  v19 = v26;
  sub_1A937829C(&qword_1EB386B50, &unk_1A95891A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A9587160;
  *(v11 + 56) = &type metadata for TTSMarkup.SpeechText;
  *(v11 + 64) = &protocol witness table for TTSMarkup.SpeechText;
  v12 = swift_allocObject();
  *(v11 + 32) = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v4;
  *(v12 + 32) = v19;
  v24 = 0;
  v25 = v11;
  v13 = *(v8 + 16);
  v14 = *(v13 + 16);

  if (v14)
  {
    v16 = 0;
    v17 = v13 + 32;
    while (v16 < *(v13 + 16))
    {
      sub_1A9448584(v17, __dst);
      ++v16;
      sub_1A94479C4(__dst, v23, &v24, &v25, v20, v4, v5, v21);
      result = sub_1A937B960(__dst, &qword_1EB387638, &qword_1A958EA50);
      v17 += 56;
      if (v14 == v16)
      {
        v11 = v25;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    a4[3] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    a4[4] = &protocol witness table for <A> [A];

    *a4 = v11;
  }

  return result;
}

uint64_t TTSMarkup.SpeechText.transformed(_:)@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t (*)(), void *)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[3];
  v20 = v2[2];
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v20;
  v10[6] = v5;
  v10[7] = v9;
  v10[8] = v6;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  a1(v3, v20, sub_1A944758C, v10);

  swift_beginAccess();
  sub_1A9447590((v6 + 16));
  swift_endAccess();
  swift_beginAccess();
  v11 = v8 + 16;
  sub_1A94476FC((v8 + 16));
  swift_endAccess();
  swift_beginAccess();
  sub_1A944776C((v9 + 16));
  swift_endAccess();
  v25 = v3;
  *&v26 = v20;
  *(&v26 + 1) = v5;

  TransformableString.withTransformation<A>(_:)(sub_1A944855C);
  sub_1A9473530(v23);

  v21 = v26;
  sub_1A937829C(&qword_1EB386B50, &unk_1A95891A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A9587160;
  *(v12 + 56) = &type metadata for TTSMarkup.SpeechText;
  *(v12 + 64) = &protocol witness table for TTSMarkup.SpeechText;
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  *(v13 + 16) = v4;
  *(v13 + 24) = v3;
  *(v13 + 32) = v21;
  v24 = 0;
  v25 = v12;
  v14 = *(v8 + 16);
  v15 = *(*v11 + 16);

  if (v15)
  {
    v17 = 0;
    v18 = v14 + 32;
    while (v17 < *(v14 + 16))
    {
      sub_1A9448584(v18, v23);
      ++v17;
      sub_1A94479C4(v23, (v9 + 16), &v24, &v25, v4, v3, v20, v5);
      result = sub_1A937B960(v23, &qword_1EB387638, &qword_1A958EA50);
      v18 += 56;
      if (v15 == v17)
      {
        v12 = v25;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    a2[3] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    a2[4] = &protocol witness table for <A> [A];

    *a2 = v12;
  }

  return result;
}

uint64_t sub_1A9447298(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A944A98C(a3, v39);
  if (v40)
  {
    v13 = *(&v39[0] + 1);
    a4 = *&v39[0];
    sub_1A957C3B8();
    v14 = sub_1A957CC78();

    if ((v13 & 0x1000000000000000) != 0)
    {
      v34 = sub_1A957C2B8();
      v16 = v14 - v34;
      if (!__OFSUB__(v14, v34))
      {
LABEL_7:
        swift_beginAccess();
        v17 = *(a7 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a7 + 16) = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_1A94485F4(0, *(v17 + 2) + 1, 1, v17);
          *(a7 + 16) = v17;
        }

        v20 = *(v17 + 2);
        v19 = *(v17 + 3);
        if (v20 >= v19 >> 1)
        {
          v17 = sub_1A94485F4((v19 > 1), v20 + 1, 1, v17);
        }

        *(v17 + 2) = v20 + 1;
        v21 = &v17[24 * v20];
        *(v21 + 4) = a1;
        *(v21 + 5) = a2;
        *(v21 + 6) = v16;
        *(a7 + 16) = v17;
        swift_endAccess();
        swift_beginAccess();
        v22 = *(a8 + 16);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        *(a8 + 16) = v22;
        if ((v23 & 1) == 0)
        {
          v22 = sub_1A9448860(0, v22[2] + 1, 1, v22);
          *(a8 + 16) = v22;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_1A9448860((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        v26 = &v22[4 * v25];
        v26[4] = a1;
        v26[5] = a2;
        v26[6] = a4;
        v26[7] = v13;
        *(a8 + 16) = v22;
        return swift_endAccess();
      }
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v15 = a4 & 0xFFFFFFFFFFFFLL;
      }

      v16 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_1A932D070(v39, v38);
  *&v35 = a1;
  *(&v35 + 1) = a2;
  sub_1A9379534(v38, v36);
  swift_beginAccess();
  a2 = *(a4 + 16);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = a2;
  if ((v28 & 1) == 0)
  {
LABEL_23:
    a2 = sub_1A9448710(0, a2[2] + 1, 1, a2);
    *(a4 + 16) = a2;
  }

  v30 = a2[2];
  v29 = a2[3];
  if (v30 >= v29 >> 1)
  {
    a2 = sub_1A9448710((v29 > 1), v30 + 1, 1, a2);
  }

  a2[2] = v30 + 1;
  v31 = &a2[7 * v30];
  v32 = v36[0];
  v33 = v36[1];
  v31[10] = v37;
  *(v31 + 3) = v32;
  *(v31 + 4) = v33;
  *(v31 + 2) = v35;
  *(a4 + 16) = a2;
  swift_endAccess();
  return sub_1A9378138(v38);
}

uint64_t sub_1A9447590(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A944A774(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_1A957D388();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[1];
          if (v13 >> 14 >= *(v12 - 3) >> 14)
          {
            break;
          }

          v14 = v12[4];
          v15 = *(v12 + 1);
          v16 = *(v12 - 1);
          *(v12 + 1) = *(v12 - 3);
          *(v12 + 3) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1A937829C(&qword_1EB387658, &qword_1A958EA98);
      v7 = sub_1A957C518();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1A94499B0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A94476FC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A944A760(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1A9448994(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A944776C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A944A74C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1A957D388();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >> 14 >= *v13 >> 14)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1A937829C(&qword_1EB387648, &qword_1A958EA88);
      v7 = sub_1A957C518();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1A9448C04(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A94478DC(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(v5 + 16);

  if (!v6)
  {
  }

  v8 = 0;
  v9 = (v5 + 56);
  while (v8 < *(v5 + 16))
  {
    ++v8;
    v11 = *(v9 - 1);
    v10 = *v9;
    v13 = *(v9 - 3);
    v12 = *(v9 - 2);

    a1(v13, v12, v11, v10);

    v9 += 4;
    if (v6 == v8)
    {
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A94479C4(void *a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(&v74 + 1) = a8;
  *&v74 = a7;
  v72 = a6;
  v73 = a5;
  swift_beginAccess();
  v17 = *a2;
  if (*(*a2 + 16))
  {
    v8 = v81;
    v10 = 24;
    do
    {
      v18 = *(v17 + 40);
      sub_1A9448584(a1, v81);
      v11 = *v81;
      v9 = v18 >> 14;
      sub_1A9378138(&v81[16]);
      if (v9 >= v11 >> 14)
      {
        break;
      }

      swift_beginAccess();
      v9 = *a2;
      v19 = *(*a2 + 16);
      if (!v19)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v11 = *(v9 + 48);
      v20 = v19 - 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if (!isUniquelyReferenced_nonNull_native || v20 > *(v9 + 24) >> 1)
      {
        if (*(v9 + 16) <= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = *(v9 + 16);
        }

        v9 = sub_1A94485F4(isUniquelyReferenced_nonNull_native, v22, 1, v9);
        *a2 = v9;
      }

      v12 = *(v9 + 16);
      memmove((v9 + 32), (v9 + 56), 24 * v12 - 24);
      *(v9 + 16) = v12 - 1;
      *a2 = v9;
      swift_endAccess();
      if (__OFADD__(*a3, v11))
      {
        goto LABEL_36;
      }

      *a3 += v11;
      v17 = *a2;
    }

    while (*(*a2 + 16));
  }

  a2 = *a4;
  if (*(*a4 + 16))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = a2[2];
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v29 = MEMORY[0x1AC5851A0](15, v10, v9, a4);
      goto LABEL_27;
    }
  }

  else
  {
LABEL_37:
    __break(1u);
  }

  a2 = sub_1A944A788(a2);
  v23 = a2[2];
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_16:
  v24 = v23 - 1;
  sub_1A932D070(&a2[5 * v23 - 1], &v79);
  a2[2] = v24;
  *a4 = a2;
  sub_1A932D070(&v79, v81);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v71 = a4;
  v69 = *(&v79 + 1);
  v70 = v79;
  v66 = *(&v80 + 1);
  v68 = v80;
  a4 = v73;
  *&v75 = a1;
  *v81 = v73;
  *&v81[8] = v72;
  v11 = *(&v74 + 1);
  v9 = v74;
  *&v81[16] = v74;
  sub_1A9473844();
  sub_1A957C3B8();

  v67 = sub_1A957CC78();

  *&v79 = v73;
  *(&v79 + 1) = v72;
  v80 = v74;
  sub_1A9473844();
  v76 = v73;
  v77 = v72;
  v78 = v74;
  sub_1A9473844();

  sub_1A9448584(a1, v81);
  sub_1A9378138(&v81[16]);
  sub_1A957C3B8();
  v27 = v26;
  v29 = v28;
  v12 = v30;

  v8 = sub_1A957CC78();

  v10 = v8 - *a3;
  if (__OFSUB__(v8, *a3))
  {
    goto LABEL_40;
  }

  a4 = v68;
  v9 = v69;
  LODWORD(v8) = (v68 & 0x1000000000000000) == 0 || (v69 & 0x800000000000000) != 0;
  v12 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x1000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v31 = v69 & 0xFFFFFFFFFFFFLL;
  if ((v68 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v68) & 0xF;
  }

  if (v31 < v10)
  {
    __break(1u);
    goto LABEL_70;
  }

  v29 = (v10 << 16) | 4;
LABEL_27:
  result = v29;
  if ((v29 & 0xC) != 4 << v8)
  {
    if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = sub_1A938156C(v29, v9, a4);
  if ((a4 & 0x1000000000000000) == 0)
  {
LABEL_29:
    v32 = v67 + (result >> 16);
    if (__OFADD__(v67, result >> 16))
    {
      __break(1u);
    }

    else if ((v32 & 0x8000000000000000) == 0)
    {
      v33 = v9 & 0xFFFFFFFFFFFFLL;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v33 = v12;
      }

      if (v33 >= v32)
      {
        v27 = (v32 << 16) | 4;
        goto LABEL_45;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_44:
  v27 = MEMORY[0x1AC5851A0](result, v67, v9, a4);
LABEL_45:
  if (v29 >> 14 > v27 >> 14)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v67 = v10;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v34 = v12;
  }

  else
  {
    v34 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v11 = 7;
  }

  else
  {
    v11 = 11;
  }

  if (v29 >> 14 > 4 * v34)
  {
    goto LABEL_71;
  }

  sub_1A957C3B8();
  v12 = sub_1A957CC78();

  if (__OFADD__(*a3, v12))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  *a3 += v12;
  v35 = swift_allocObject();
  *(v35 + 16) = 15;
  *(v35 + 24) = v27;
  *v81 = v9;
  *&v81[8] = a4;
  v36 = v66;
  *&v81[16] = v66;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v70;

  TransformableString.withTransformation<A>(_:)(sub_1A944AA7C);
  v38 = *v81;
  sub_1A9473530(&v79);

  *(&v79 + 1) = v38;
  v80 = *&v81[8];

  *&v79 = v70;
  v39 = swift_allocObject();
  *(v39 + 16) = v29;
  *(v39 + 24) = v11 | (v34 << 16);
  v76 = v9;
  v77 = a4;
  *&v78 = v36;
  MEMORY[0x1EEE9AC00](v39);

  TransformableString.withTransformation<A>(_:)(sub_1A944AA7C);
  v29 = v9;
  v12 = v36;
  sub_1A9473530(v81);

  *&v81[8] = v9;
  *&v81[16] = a4;
  *&v81[24] = v36;

  KeyPath = swift_getKeyPath();
  *v81 = v37;
  *&v81[8] = v9;
  *&v81[16] = a4;
  *&v81[24] = v36;
  v9 = &type metadata for TTSMarkup.SpeechText;
  TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if (a4 == 1)
  {
    v11 = v71;
    a1 = v75;
    goto LABEL_58;
  }

  result = swift_getKeyPath();
  v11 = v71;
  a1 = v75;
  if (__OFADD__(v76, v67))
  {
LABEL_77:
    __break(1u);
    return result;
  }

  *v81 = v76 + v67;
  v81[8] = 0;
  TTSMarkupSpeech.subscript.setter(v81, result, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
LABEL_58:
  v27 = *v11;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v27;
  a3 = a4;
  if ((v41 & 1) == 0)
  {
LABEL_73:
    v27 = sub_1A93ADC90(0, *(v27 + 16) + 1, 1, v27);
    *v11 = v27;
  }

  v43 = *(v27 + 16);
  v42 = *(v27 + 24);
  if (v43 >= v42 >> 1)
  {
    v27 = sub_1A93ADC90((v42 > 1), v43 + 1, 1, v27);
    *v11 = v27;
  }

  *&v81[24] = v9;
  *&v82 = &protocol witness table for TTSMarkup.SpeechText;
  v44 = swift_allocObject();
  *v81 = v44;
  v44[2] = v70;
  v44[3] = v29;
  v44[4] = a3;
  v44[5] = v12;
  *(v27 + 16) = v43 + 1;
  sub_1A932D070(v81, v27 + 40 * v43 + 32);
  v45 = a1[5];
  v46 = a1[6];
  v47 = sub_1A93780F4(a1 + 2, v45);
  v48 = *(v45 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1A9448584(a1, v81);
  v50 = swift_allocObject();
  v51 = v72;
  *(v50 + 16) = v73;
  *(v50 + 24) = v51;
  v52 = *(&v74 + 1);
  *(v50 + 32) = v74;
  *(v50 + 40) = v52;
  v53 = *&v81[16];
  *(v50 + 48) = *v81;
  *(v50 + 64) = v53;
  *(v50 + 80) = v82;
  *(v50 + 96) = v83;

  TTSMarkupSpeech.tap(_:)(sub_1A944A7D8, v50, v45, v46, &v66 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));

  v54 = v71;
  v55 = *v71;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *v54 = v55;
  if ((v56 & 1) == 0)
  {
    v56 = sub_1A93ADC90(0, v55[2] + 1, 1, v55);
    v55 = v56;
    *v71 = v56;
  }

  v58 = v55[2];
  v57 = v55[3];
  if (v58 >= v57 >> 1)
  {
    v56 = sub_1A93ADC90((v57 > 1), v58 + 1, 1, v55);
    *v71 = v56;
  }

  MEMORY[0x1EEE9AC00](v56);
  (*(v48 + 16))(&v66 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), &v66 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
  v59 = v71;
  sub_1A944A8F4(v58, &v66 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v71, v45, v46);
  (*(v48 + 8))(&v66 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
  v60 = v59;
  v61 = *v59;
  v62 = v79;
  v75 = v80;
  *v59 = v61;
  v64 = v61[2];
  v63 = v61[3];
  if (v64 >= v63 >> 1)
  {
    v61 = sub_1A93ADC90((v63 > 1), v64 + 1, 1, v61);
    *v60 = v61;
  }

  *&v81[24] = &type metadata for TTSMarkup.SpeechText;
  *&v82 = &protocol witness table for TTSMarkup.SpeechText;
  v65 = swift_allocObject();
  *v81 = v65;
  *(v65 + 16) = v62;
  *(v65 + 32) = v75;
  v61[2] = v64 + 1;
  return sub_1A932D070(v81, &v61[5 * v64 + 4]);
}

uint64_t sub_1A94484E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A9450BAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A9448584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB387638, &qword_1A958EA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1A94485F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387640, &qword_1A958EA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_1A9448710(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387650, &qword_1A958EA90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387638, &qword_1A958EA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A9448860(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387660, &qword_1A958EAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387658, &qword_1A958EA98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A9448994(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A937829C(&qword_1EB387638, &qword_1A958EA50);
        v5 = sub_1A957C518();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A94491D4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A9448A9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A9448A9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3;
    v6 = result - a3;
LABEL_5:
    v25 = a3;
    v17 = v6;
    v18 = v5;
    while (1)
    {
      sub_1A9448584(v5, v24);
      v7 = v5 - 56;
      sub_1A9448584(v5 - 56, v23);
      sub_1A9448584(v24, &v21);
      v8 = v21;
      sub_1A9448584(v23, &v19);
      v9 = v19;
      sub_1A9378138(v20);
      sub_1A9378138(v22);
      sub_1A937B960(v23, &qword_1EB387638, &qword_1A958EA50);
      result = sub_1A937B960(v24, &qword_1EB387638, &qword_1A958EA50);
      if (v8 >> 14 >= v9 >> 14)
      {
LABEL_4:
        a3 = v25 + 1;
        v5 = v18 + 56;
        v6 = v17 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *(v5 + 48);
      v12 = *(v5 + 16);
      v11 = *(v5 + 32);
      v13 = *v5;
      v14 = *(v5 - 40);
      *v5 = *v7;
      *(v5 + 16) = v14;
      *(v5 + 32) = *(v5 - 24);
      *(v5 + 48) = *(v5 - 8);
      *v7 = v13;
      *(v5 - 40) = v12;
      *(v5 - 24) = v11;
      v5 -= 56;
      *(v7 + 48) = v10;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9448C04(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1A938911C(v8);
      v8 = result;
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1A9449F44((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v92);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = 24 * v9;
      v12 = (*a3 + 24 * v9);
      v14 = *v12;
      v13 = v12 + 6;
      v15 = v10 >> 14;
      v16 = v14 >> 14;
      v17 = v9 + 2;
      while (v5 != v17)
      {
        v18 = *v13;
        v13 += 3;
        v19 = (v15 < v16) ^ (v18 >> 14 >= v10 >> 14);
        ++v17;
        v10 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v17 - 1;
          if (v15 >= v16)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v15 >= v16)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 24 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = (v28 + v11);
            v24 = v28 + v21;
            v25 = *(v23 + 2);
            v26 = *v23;
            v27 = *(v24 - 8);
            *v23 = *(v24 - 24);
            *(v23 + 2) = v27;
            *(v24 - 24) = v26;
            *(v24 - 8) = v25;
          }

          ++v22;
          --v20;
          v21 -= 24;
          v11 += 24;
        }

        while (v22 < v7 + v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1A9389130((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v39;
    v40 = &v8[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v7;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v8[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v8[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v8[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v8[16 * v80 + 32];
        v82 = *&v8[16 * v42 + 40];
        sub_1A9449F44((*a3 + 24 * v81), (*a3 + 24 * *&v8[16 * v42 + 32]), *a3 + 24 * v82, v41);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A938911C(v8);
        }

        if (v80 >= *(v8 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v8[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = sub_1A93CE710(v42);
        v39 = *(v8 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v8[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v8[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v8[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 24 * v7 - 24;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 24 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >> 14 >= *v34 >> 14)
    {
LABEL_29:
      ++v7;
      v30 += 24;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 32);
    *(v34 + 24) = *v34;
    *(v34 + 40) = *(v34 + 16);
    *v34 = v32;
    *(v34 + 8) = v35;
    v34 -= 24;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1A94491D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v9 = *v101;
    if (!*v101)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_1A938911C(v8);
      v8 = result;
    }

    v93 = v5;
    v114 = v8;
    v94 = *(v8 + 2);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v5 = *&v8[16 * v94];
        v95 = *&v8[16 * v94 + 24];
        sub_1A944A188((*a3 + 56 * v5), (*a3 + 56 * *&v8[16 * v94 + 16]), *a3 + 56 * v95, v9);
        if (v93)
        {
        }

        if (v95 < v5)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A938911C(v8);
        }

        if (v94 - 2 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v96 = &v8[16 * v94];
        *v96 = v5;
        *(v96 + 1) = v95;
        v114 = v8;
        result = sub_1A93CE710(v94 - 1);
        v8 = v114;
        v94 = *(v114 + 2);
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v99 = v8;
      v10 = *a3;
      sub_1A9448584(*a3 + 56 * (v7 + 1), v113);
      v11 = v10 + 56 * v7;
      sub_1A9448584(v11, v112);
      sub_1A9448584(v113, v110);
      v12 = v110[0];
      sub_1A9448584(v112, v108);
      v103 = v108[0] >> 14;
      v105 = v12 >> 14;
      sub_1A9378138(v109);
      sub_1A9378138(v111);
      sub_1A937B960(v112, &qword_1EB387638, &qword_1A958EA50);
      result = sub_1A937B960(v113, &qword_1EB387638, &qword_1A958EA50);
      v13 = v7 + 2;
      v14 = v11 + 112;
      while (v6 != v13)
      {
        v8 = v6;
        sub_1A9448584(v14, v113);
        sub_1A9448584(v14 - 56, v112);
        sub_1A9448584(v113, v110);
        v15 = v110[0];
        sub_1A9448584(v112, v108);
        v16 = v108[0];
        sub_1A9378138(v109);
        sub_1A9378138(v111);
        sub_1A937B960(v112, &qword_1EB387638, &qword_1A958EA50);
        result = sub_1A937B960(v113, &qword_1EB387638, &qword_1A958EA50);
        ++v13;
        v14 += 56;
        if (v105 < v103 == v15 >> 14 >= v16 >> 14)
        {
          v6 = v13 - 1;
          break;
        }
      }

      v9 = v7;
      v17 = 56 * v7;
      if (v105 >= v103)
      {
        goto LABEL_19;
      }

      if (v6 < v7)
      {
        goto LABEL_120;
      }

      if (v7 >= v6)
      {
LABEL_19:
        v8 = v99;
      }

      else
      {
        v18 = 56 * v6 - 56;
        v19 = v6;
        v20 = v7;
        v8 = v99;
        do
        {
          if (v20 != --v19)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v21 = (v30 + v17);
            v22 = *(v30 + v17 + 48);
            v23 = (v30 + v18);
            v25 = v21[1];
            v24 = v21[2];
            v26 = *v21;
            v28 = v23[1];
            v27 = v23[2];
            v29 = *v23;
            *(v21 + 6) = *(v23 + 6);
            v21[1] = v28;
            v21[2] = v27;
            *v21 = v29;
            *v23 = v26;
            v23[1] = v25;
            v23[2] = v24;
            *(v23 + 6) = v22;
          }

          ++v20;
          v18 -= 56;
          v17 += 56;
        }

        while (v20 < v19);
      }
    }

    v31 = a3[1];
    if (v6 < v31)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_119;
      }

      if (v6 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_121;
        }

        if (v9 + a4 >= v31)
        {
          v32 = a3[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v6 != v32)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_118;
    }

LABEL_30:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v34 = *(v8 + 2);
    v33 = *(v8 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_1A9389130((v33 > 1), v34 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v35;
    v36 = &v8[16 * v34];
    *(v36 + 4) = v9;
    *(v36 + 5) = v7;
    v37 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v8 + 4);
          v40 = *(v8 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_49:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = &v8[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_110;
          }

          v61 = &v8[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v65 = &v8[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_63:
        if (v60)
        {
          goto LABEL_109;
        }

        v68 = &v8[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_112;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_70:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v77 = *&v8[16 * v76 + 32];
        v9 = *&v8[16 * v38 + 40];
        sub_1A944A188((*a3 + 56 * v77), (*a3 + 56 * *&v8[16 * v38 + 32]), *a3 + 56 * v9, v37);
        if (v5)
        {
        }

        if (v9 < v77)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A938911C(v8);
        }

        if (v76 >= *(v8 + 2))
        {
          goto LABEL_104;
        }

        v78 = &v8[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v9;
        v114 = v8;
        result = sub_1A93CE710(v38);
        v8 = v114;
        v35 = *(v114 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v8[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = &v8[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_111;
      }

      if (v54 >= v46)
      {
        v72 = &v8[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_115;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v5;
  v79 = v9;
  v80 = *a3;
  v81 = *a3 + 56 * v6;
  v100 = v79;
  v82 = &v79[-v6];
  v102 = v32;
LABEL_81:
  v104 = v81;
  v106 = v6;
  v83 = v82;
  while (1)
  {
    sub_1A9448584(v81, v113);
    v84 = v81 - 56;
    sub_1A9448584(v81 - 56, v112);
    sub_1A9448584(v113, v110);
    v85 = v110[0];
    sub_1A9448584(v112, v108);
    v86 = v108[0];
    sub_1A9378138(v109);
    sub_1A9378138(v111);
    sub_1A937B960(v112, &qword_1EB387638, &qword_1A958EA50);
    result = sub_1A937B960(v113, &qword_1EB387638, &qword_1A958EA50);
    if (v85 >> 14 >= v86 >> 14)
    {
LABEL_80:
      v6 = v106 + 1;
      v81 = v104 + 56;
      --v82;
      v7 = v102;
      if (v106 + 1 != v102)
      {
        goto LABEL_81;
      }

      v5 = v97;
      v9 = v100;
      if (v102 < v100)
      {
        goto LABEL_118;
      }

      goto LABEL_30;
    }

    if (!v80)
    {
      break;
    }

    v87 = *(v81 + 48);
    v89 = *(v81 + 16);
    v88 = *(v81 + 32);
    v90 = *v81;
    v91 = *(v81 - 40);
    *v81 = *v84;
    *(v81 + 16) = v91;
    *(v81 + 32) = *(v81 - 24);
    *(v81 + 48) = *(v81 - 8);
    *v84 = v90;
    *(v81 - 40) = v89;
    *(v81 - 24) = v88;
    v81 -= 56;
    *(v84 + 48) = v87;
    if (__CFADD__(v83++, 1))
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}