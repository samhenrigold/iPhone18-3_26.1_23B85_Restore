uint64_t sub_21C96694C(uint64_t a1)
{
  v2 = v1[33];
  v4 = v1[31];
  v3 = v1[32];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

unint64_t sub_21C966A18()
{
  result = qword_27CDF28C8;
  if (!qword_27CDF28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF28C8);
  }

  return result;
}

unint64_t sub_21C966A80()
{
  result = qword_27CDF28F0[0];
  if (!qword_27CDF28F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF28F0);
  }

  return result;
}

uint64_t sub_21C966ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v29 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 48);
  v34 = a1;
  v35 = v4;
  v17 = v16(a1, a2, a3, v14);
  v30 = v18;
  v31 = v17;
  v32 = 0x800000021CB91C30;
  (*(v11 + 16))(v15, v4, a2);
  v19 = a1;
  v20 = AssociatedTypeWitness;
  (*(v8 + 16))(v10, v19, AssociatedTypeWitness);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = (v12 + v21 + *(v8 + 80)) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v11 + 32))(v23 + v21, v15, a2);
  (*(v8 + 32))(v23 + v22, v10, v20);
  v40[0] = v31;
  v40[1] = v30;
  v37 = v40;
  v38 = 0xD000000000000014;
  v39 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v24 = v36;
  sub_21CB84DA4();

  LOBYTE(v15) = (*(a3 + 32))(v34, a2, a3);
  KeyPath = swift_getKeyPath(byte_21CBB4B58);
  v26 = swift_allocObject();
  *(v26 + 16) = (v15 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v28 = (v24 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_21C735744;
  v28[2] = v26;
  return result;
}

uint64_t sub_21C966E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v2 = *(a1 - 8);
  v38 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v35 = v4;
  v36 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21CB85864();
  v34 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v33 = v9;
  WitnessTable = swift_getWitnessTable();
  v32 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = v8;
  v46 = AssociatedTypeWitness;
  v47 = v9;
  v48 = WitnessTable;
  v49 = AssociatedConformanceWitness;
  v11 = sub_21CB85004();
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v30 = &v28 - v15;
  swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v16);
  sub_21CB860B4();
  v41 = v5;
  v42 = v6;
  v17 = v29;
  v43 = v29;
  swift_getAssociatedConformanceWitness();
  v45 = sub_21CB857E4();
  v40[0] = v5;
  v40[1] = v6;
  swift_getKeyPath(byte_21CBB4C10, v40);
  v18 = v36;
  v19 = v17;
  v20 = v35;
  (*(v2 + 16))(v36, v19, v35);
  v21 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = v6;
  (*(v2 + 32))(v22 + v21, v18, v20);
  v27 = sub_21C735EA0();
  sub_21CB84FD4();
  v44 = v27;
  v23 = swift_getWitnessTable();
  v24 = v30;
  sub_21C72BE10(v13, v11, v23);
  v25 = *(v37 + 8);
  v25(v13, v11);
  sub_21C72BE10(v24, v11, v23);
  return (v25)(v24, v11);
}

uint64_t sub_21C9672D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + *(*(v1 - 8) + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  return (*(v2 + 40))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)), v1, v2);
}

uint64_t sub_21C96746C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for PMFocusedCopyMenu(0, v6, v7, a2);
  return sub_21C966ADC(a1, v6, v7, a3);
}

uint64_t sub_21C967524@<X0>(uint64_t a1@<X8>)
{
  sub_21CB82EB4();
  sub_21C96758C();
  sub_21CB82F94();
  result = type metadata accessor for PMDismissAction(0);
  v3 = (a1 + *(result + 20));
  *v3 = v4;
  v3[1] = v5;
  return result;
}

unint64_t sub_21C96758C()
{
  result = qword_27CDF2990;
  if (!qword_27CDF2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2990);
  }

  return result;
}

uint64_t sub_21C9675F0(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_21CB86344() & 1) == 0)
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

uint64_t sub_21C967680(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[5];
        v14[4] = v3[4];
        v14[5] = v5;
        v14[6] = v3[6];
        v6 = v3[1];
        v14[0] = *v3;
        v14[1] = v6;
        v7 = v3[3];
        v14[2] = v3[2];
        v14[3] = v7;
        v8 = v4[5];
        v15[4] = v4[4];
        v15[5] = v8;
        v15[6] = v4[6];
        v9 = v4[1];
        v15[0] = *v4;
        v15[1] = v9;
        v10 = v4[3];
        v15[2] = v4[2];
        v15[3] = v10;
        sub_21C7A33F0(v14, v13);
        sub_21C7A33F0(v15, v13);
        v11 = sub_21C9DCA4C(v14, v15);
        sub_21C7A344C(v15);
        sub_21C7A344C(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 7;
        v4 += 7;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_21C967788(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x21CF15BD0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x21CF15BD0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_21CB85DD4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_21CB85DD4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_21CB85FA4();
  }

  result = sub_21CB85FA4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_21C967A2C(uint64_t result, uint64_t a2)
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

uint64_t sub_21C967A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 8);
      v6 = *v3;
      v7 = *(v4 - 8);
      v8 = *v4;
      if (*(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2))
      {
        if (v5 != v7)
        {
          return 0;
        }
      }

      else
      {
        v10 = sub_21CB86344();
        result = 0;
        if (v10 & 1) == 0 || ((v5 ^ v7))
        {
          return result;
        }
      }

      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);

      v12 = v6;

      v13 = v8;
      v14 = sub_21CB85DD4();

      if ((v14 & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21C967C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_21CB86344() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21C967CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_21C968CBC(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
    v22 = sub_21CB85574();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C967ED8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBB4D70);
  v5 = v1;
  sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  return sub_21C73A818(v5 + v3, a1, type metadata accessor for PMWiFiNetwork);
}

uint64_t sub_21C967FB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = (&v15 - v3);
  swift_getKeyPath(byte_21CBB4D70, v2);
  v16 = v0;
  sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v5 = (v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v0 + 16);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v8, v15);

  swift_getKeyPath(byte_21CBB4D98);
  swift_getKeyPath(byte_21CBB4DC0);
  sub_21CB81DB4();

  v10 = type metadata accessor for PMWiFiNetwork(0);
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    sub_21C6EA794(v4, &qword_27CDEE678, &unk_21CBBA210);
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:

    v13 = 1;
    return v13 & 1;
  }

  v12 = *v4;
  v11 = v4[1];

  sub_21C968BDC(v4, type metadata accessor for PMWiFiNetwork);
  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

LABEL_12:

    v13 = 0;
    return v13 & 1;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  if (v7 == v12 && v11 == v6)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21CB86344();
  }

  swift_bridgeObjectRelease_n();
  return v13 & 1;
}

uint64_t sub_21C9682A4(void *a1)
{
  v3 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21C73A818(v1 + v6, v5, type metadata accessor for PMWiFiNetwork);
  v7 = _s17PasswordManagerUI13PMWiFiNetworkV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_21C968BDC(v5, type metadata accessor for PMWiFiNetwork);
  if (v7)
  {
    swift_beginAccess();
    sub_21C968C58(a1, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBB4D70);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
    sub_21CB810C4();
  }

  return sub_21C968BDC(a1, type metadata accessor for PMWiFiNetwork);
}

uint64_t sub_21C968494(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21C968C58(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C968500()
{
  swift_getKeyPath(byte_21CBB4E08);
  sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  sub_21C968B34(v1, *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16));
  return v1;
}

uint64_t sub_21C9685CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v8 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v9 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8);
  v10 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16);
  if (!v8)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath(byte_21CBB4E08);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
    sub_21CB810C4();
    sub_21C968AF4(a1, a2, a3);
  }

  if (!a1 || (sub_21C9675F0(*(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration), a1) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;

  return sub_21C968AF4(v8, v9, v10);
}

uint64_t sub_21C968758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v5 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v6 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8);
  v7 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16);
  *v4 = a2;
  v4[1] = a3;
  v4[2] = a4;
  sub_21C968B34(a2, a3, a4);
  return sub_21C968AF4(v5, v6, v7);
}

uint64_t sub_21C9687C0()
{
  swift_getKeyPath(byte_21CBB4DE0);
  sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  return *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode);
}

uint64_t sub_21C968868(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBB4DE0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C968990()
{

  sub_21C968BDC(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network, type metadata accessor for PMWiFiNetwork);
  sub_21C968AF4(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16));
  v1 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C968A90()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v1;
  v4[1] = v2;
  v4[2] = v3;
  sub_21C968B34(v1, v2, v3);
  return sub_21C968AF4(v5, v6, v7);
}

uint64_t sub_21C968AF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C968B34(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C968B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C968BDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C968C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiNetwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C968CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_21C968D6C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF15BD0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_21C968EE8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v13 = a3(0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v27 = v14;
    v28 = a7;
    v20 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v26 = v15;
    v21 = *(v15 + 72);
    while (1)
    {
      sub_21C96C7F4(v20, v18, a4);
      v22 = a1(v18);
      if (v7)
      {
        return sub_21C719480(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_21C719480(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a7 = v28;
        goto LABEL_10;
      }
    }

    a7 = v28;
    sub_21C96C85C(v18, v28, v29);
    v23 = 0;
LABEL_10:
    v15 = v26;
    v14 = v27;
  }

  else
  {
    v23 = 1;
  }

  return (*(v15 + 56))(a7, v23, 1, v14, v16);
}

uint64_t sub_21C969088@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[5];
      v31 = v7[4];
      v32 = v8;
      v33 = v7[6];
      v9 = v7[1];
      v28[0] = *v7;
      v28[1] = v9;
      v10 = v7[3];
      v29 = v7[2];
      v30 = v10;
      v21 = v28[0];
      v22 = v9;
      v23 = v29;
      v24 = v10;
      v25 = v31;
      v26 = v8;
      v27 = v33;
      sub_21C7A33F0(v28, &v14);
      result = v6(&v21);
      if (v3)
      {
        v18 = v25;
        v19 = v26;
        v20 = v27;
        v14 = v21;
        v15 = v22;
        v16 = v23;
        v17 = v24;
        return sub_21C7A344C(&v14);
      }

      if (result)
      {
        break;
      }

      v18 = v25;
      v19 = v26;
      v20 = v27;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      result = sub_21C7A344C(&v14);
      v7 += 7;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v11 = v26;
    a3[4] = v25;
    a3[5] = v11;
    a3[6] = v27;
    v12 = v22;
    *a3 = v21;
    a3[1] = v12;
    v13 = v24;
    a3[2] = v23;
    a3[3] = v13;
  }

  else
  {
LABEL_6:
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_21C9691D4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v9;
    v20 = v8;
    v21 = a3;
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      sub_21C6EDBAC(v14, v12, &qword_27CDEB058, &unk_21CBB50B0);
      v16 = a1(v12);
      if (v3)
      {
        return sub_21C6EA794(v12, &qword_27CDEB058, &unk_21CBB50B0);
      }

      if (v16)
      {
        break;
      }

      sub_21C6EA794(v12, &qword_27CDEB058, &unk_21CBB50B0);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_21C96C784(v12, v21);
    v17 = 0;
LABEL_10:
    v9 = v19;
    v8 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a3, v17, 1, v8, v10);
}

uint64_t sub_21C969460@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB4ED8);
  swift_getKeyPath(byte_21CBB4F00);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C9694E0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB4ED8);
  swift_getKeyPath(byte_21CBB4F00);

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBB4ED8);
  swift_getKeyPath(byte_21CBB4F00);
  sub_21CB81DB4();
}

uint64_t sub_21C9695B0()
{
  swift_getKeyPath(byte_21CBB4F20);
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();
}

uint64_t PMAppAccountDetailsWindowModel.__allocating_init(accountID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PMAppAccountDetailsWindowModel.init(accountID:)(a1, a2, a3, a4);
  return v8;
}

void *PMAppAccountDetailsWindowModel.init(accountID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  MEMORY[0x28223BE20](v67);
  v59 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v63);
  v64 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v12 - 8);
  v68 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v56 - v15;
  v71 = type metadata accessor for PMAccount(0);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v58 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v56 - v18;
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v73 = &v56 - v21;
  v22 = MEMORY[0x277D84FA0];
  v5[6] = 0;
  v5[7] = v22;
  v5[8] = swift_getKeyPath(aH_70, v20);
  v23 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
  sub_21CB81104();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;

  sub_21C96A200();
  swift_getKeyPath(aH_71);
  v75 = v5;
  v65 = sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  v66 = v23;
  sub_21CB810D4();

  v24 = v5[3];
  v25 = v5[4];
  v26 = v5[5];
  v75 = v5[2];
  v76 = v24;
  v77 = v25;
  v78 = v26;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29D0, &qword_21CBB4E88);
  MEMORY[0x21CF14A20](v74, v27);
  v29 = v74[0];
  v28 = v74[1];

  if (v28)
  {
    v60 = a4;
    v61 = a2;
    v62 = a1;
    v30 = v5[8];
    v31 = qword_27CDEA4C0;

    if (v31 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v30, v75);

    swift_getKeyPath(asc_21CBB4E90);
    swift_getKeyPath(byte_21CBB4EB8);
    sub_21CB81DB4();

    v33 = v75;
    v57 = v29;
    v75 = v29;
    v76 = v28;
    MEMORY[0x28223BE20](v32);
    *(&v56 - 2) = &v75;
    v34 = v68;
    sub_21C968EE8(sub_21C96C50C, v33, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v68);

    v35 = v69;
    v36 = *(v69 + 48);
    v37 = v71;
    if (v36(v34, 1, v71) == 1)
    {
      v38 = v5[8];

      sub_21CB86544();
      sub_21C7072A8(v38, v75);

      swift_getKeyPath(byte_21CBB4ED8);
      swift_getKeyPath(byte_21CBB4F00);
      sub_21CB81DB4();

      v40 = v75;
      v75 = v57;
      v76 = v28;
      MEMORY[0x28223BE20](v39);
      *(&v56 - 2) = &v75;
      v41 = v70;
      sub_21C968EE8(sub_21C96C8C4, v40, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v70);

      if (v36(v34, 1, v37) != 1)
      {
        sub_21C6EA794(v34, &unk_27CDEBE60, &unk_21CB9FF40);
      }
    }

    else
    {

      v41 = v70;
      sub_21C96C85C(v34, v70, type metadata accessor for PMAccount);
      (*(v35 + 56))(v41, 0, 1, v37);
    }

    if (v36(v41, 1, v37) == 1)
    {

      sub_21C6EA794(v41, &unk_27CDEBE60, &unk_21CB9FF40);
      return v5;
    }

    v42 = v73;
    sub_21C96C85C(v41, v73, type metadata accessor for PMAccount);
    v43 = v42;
    v44 = v72;
    sub_21C96C7F4(v43, v72, type metadata accessor for PMAccount);
    type metadata accessor for PMAppAccountDetailsModel(0);
    v45 = swift_allocObject();
    sub_21CB81104();
    v46 = v44 + *(v37 + 24);
    v47 = v64;
    sub_21C96C7F4(v46, v64, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719480(v47, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v48 = *v47;
      v49 = [v48 credentialTypes];

      if (v49 == 4)
      {
        sub_21C96C85C(v72, v45 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAccount);
        swift_storeEnumTagMultiPayload();
LABEL_16:
        KeyPath = swift_getKeyPath(byte_21CBB4F20);
        MEMORY[0x28223BE20](KeyPath);
        *(&v56 - 2) = v5;
        *(&v56 - 1) = v45;
        v75 = v5;
        sub_21CB810C4();

        sub_21C719480(v73, type metadata accessor for PMAccount);
        return v5;
      }
    }

    v50 = v72;
    v51 = v58;
    sub_21C96C7F4(v72, v58, type metadata accessor for PMAccount);
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    swift_allocObject();
    v52 = sub_21CA4B79C(v51);
    sub_21C719480(v50, type metadata accessor for PMAccount);
    v53 = v59;
    *v59 = v52;
    swift_storeEnumTagMultiPayload();
    sub_21C96C85C(v53, v45 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAppAccountDetailsModel.State);
    goto LABEL_16;
  }

  return v5;
}

uint64_t sub_21C96A0B8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C96A200()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29E8, &unk_21CBB4FF0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v36 - v3;
  v48 = sub_21CB85E34();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29F0, &qword_21CBB5000);
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29F8, &unk_21CBB5008);
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v42 = &v36 - v13;
  v14 = *(v0 + 64);
  v15 = qword_27CDEA4C0;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v16 = sub_21C7072A8(v14, v49);

  v17 = *(v16 + 40);

  v49 = v17;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21C96C658;
  *(v19 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0, MEMORY[0x277CBCE20]);
  sub_21CB81E04();

  v20 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
  v49 = v1;
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  v49 = v1;
  v36 = v20;
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v49 = v1;
  sub_21CB810E4();

  v21 = *(v1 + 64);

  sub_21CB86544();
  sub_21C7072A8(v21, v49);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  v22 = *(v1 + 64);

  sub_21CB86544();
  sub_21C7072A8(v22, v49);

  swift_beginAccess();
  v23 = v37;
  sub_21CB81D84();
  swift_endAccess();

  sub_21C6EADEC(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590, MEMORY[0x277CBCEC8]);
  v24 = v39;
  sub_21CB81DE4();
  v25 = *(v38 + 8);
  v25(v23, v5);
  v25(v9, v5);
  v26 = v45;
  sub_21CB85E24();
  v27 = [objc_opt_self() mainRunLoop];
  v49 = v27;
  v28 = sub_21CB85E14();
  v29 = v47;
  (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
  sub_21C96C660();
  sub_21C6EADEC(&qword_27CDF2A08, &qword_27CDF29F0, &qword_21CBB5000, MEMORY[0x277CBCAF0]);
  sub_21C96C6E4(&qword_27CDF2A10, sub_21C96C660, MEMORY[0x277CC9E80]);
  v31 = v41;
  v30 = v42;
  sub_21CB81DF4();
  sub_21C6EA794(v29, &qword_27CDF29E8, &unk_21CBB4FF0);

  (*(v46 + 8))(v26, v48);
  (*(v40 + 8))(v24, v31);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_21C96C6AC;
  *(v33 + 24) = v32;
  sub_21C6EADEC(&qword_27CDF2A18, &qword_27CDF29F8, &unk_21CBB5008, MEMORY[0x277CBCCF8]);
  v34 = v44;
  sub_21CB81E04();

  (*(v43 + 8))(v30, v34);
  v49 = v1;
  sub_21CB810D4();

  v49 = v1;
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v49 = v1;
  sub_21CB810E4();
}

uint64_t sub_21C96ABAC()
{
  swift_getKeyPath(aH_71);
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21C96AC78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_71);
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  v4 = v3[3];
  v6 = v3[4];
  v5 = v3[5];
  *a2 = v3[2];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_21C96AD3C(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath(aH_71);
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810C4();
}

uint64_t type metadata accessor for PMAppAccountDetailsWindowModel(uint64_t a1)
{
  result = qword_27CDF29D8;
  if (!qword_27CDF29D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C96AE68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
}

uint64_t sub_21C96AEE4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;
}

uint64_t sub_21C96AF20()
{
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C96AFD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_21C96B098(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
}

uint64_t sub_21C96B100(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_getKeyPath(aH_71);
    v10 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
    v26 = v9;
    sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
    sub_21CB810D4();

    v11 = *(v9 + 24);
    v26 = *(v9 + 16);
    v27 = v11;
    v28 = *(v9 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29D0, &qword_21CBB4E88);
    MEMORY[0x21CF14A20](&v24);
    if (v25)
    {
      if (v24 == *a1 && v25 == a1[1])
      {

LABEL_7:
        v23[1] = v10;
        v13 = *(v9 + 64);
        v14 = qword_27CDEA4C0;

        if (v14 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7072A8(v13, v26);

        swift_getKeyPath(asc_21CBB4E90);
        swift_getKeyPath(byte_21CBB4EB8);
        sub_21CB81DB4();

        v16 = v26;
        v18 = *a2;
        v17 = a2[1];
        v26 = *a2;
        v27 = v17;
        MEMORY[0x28223BE20](v15);
        v23[-2] = &v26;
        sub_21C968EE8(sub_21C96C8C4, v16, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v7);

        v19 = type metadata accessor for PMAccount(0);
        if ((*(*(v19 - 8) + 48))(v7, 1, v19) == 1)
        {

          return sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
        }

        sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
        swift_getKeyPath(aH_71);
        v26 = v9;
        sub_21CB810D4();

        v20 = *(v9 + 24);
        v21 = *(v9 + 32);
        v22 = *(v9 + 40);
        v26 = *(v9 + 16);
        v27 = v20;
        *&v28 = v21;
        *(&v28 + 1) = v22;
        v24 = v18;
        v25 = v17;

        sub_21CB84F34();
      }

      v12 = sub_21CB86344();

      if (v12)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

void *sub_21C96B53C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v86 = a2;
  v91 = a1;
  v3 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v3);
  v5 = (v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  MEMORY[0x28223BE20](v87);
  v88 = v76 - v6;
  v7 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = (v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v92 = v76 - v15;
  MEMORY[0x28223BE20](v16);
  v90 = v76 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v76 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v76 - v22;
  v24 = type metadata accessor for PMAccount(0);
  v93 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v85 = (v76 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = v76 - v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = result;
    v79 = v26;
    v76[1] = v3;
    v77 = v5;
    v76[0] = v9;
    v89 = v31;
    v80 = v7;
    swift_getKeyPath(aH_71);
    v34 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
    v96 = v33;
    v83 = sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
    v84 = v34;
    sub_21CB810D4();

    v35 = v33[3];
    v36 = v33[4];
    v37 = v33[5];
    v96 = v33[2];
    v97 = v35;
    v98 = v36;
    v99 = v37;

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29D0, &qword_21CBB4E88);
    MEMORY[0x21CF14A20](&v94);
    v39 = v94;
    v38 = v95;

    if (!v38)
    {
    }

    v96 = v39;
    v97 = v38;
    MEMORY[0x28223BE20](v40);
    v76[-2] = &v96;
    sub_21C968EE8(sub_21C96C8C4, v91, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v20);
    v41 = v93;
    v42 = *(v93 + 48);
    v43 = v42(v20, 1, v24);
    if (v43 == 1)
    {
      v96 = v39;
      v97 = v38;
      MEMORY[0x28223BE20](v43);
      v76[-2] = &v96;
      sub_21C968EE8(sub_21C96C8C4, v86, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v23);
      v91 = 0;

      if (v42(v20, 1, v24) != 1)
      {
        sub_21C6EA794(v20, &unk_27CDEBE60, &unk_21CB9FF40);
      }
    }

    else
    {
      v91 = 0;

      sub_21C96C85C(v20, v23, type metadata accessor for PMAccount);
      (*(v41 + 56))(v23, 0, 1, v24);
    }

    v44 = v89;
    v45 = v92;
    if (v42(v23, 1, v24) == 1)
    {
      sub_21C6EA794(v23, &unk_27CDEBE60, &unk_21CB9FF40);
      swift_getKeyPath(aH_71);
      v96 = v33;
      sub_21CB810D4();

      v46 = v33[3];
      v47 = v33[4];
      v48 = v33[5];
      v96 = v33[2];
      v97 = v46;
      v98 = v47;
      v99 = v48;
      v94 = 0;
      v95 = 0;

      sub_21CB84F34();
    }

    v86 = v42;
    sub_21C96C85C(v23, v44, type metadata accessor for PMAccount);
    swift_getKeyPath(byte_21CBB4F20);
    v96 = v33;
    sub_21CB810D4();

    v49 = v33[6];
    if (v49)
    {
      v96 = v49;
      sub_21C96C6E4(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel, &unk_21CBA6850);

      sub_21CB810D4();

      v50 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
      swift_beginAccess();
      v51 = v49 + v50;
      v52 = v82;
      sub_21C96C7F4(v51, v82, type metadata accessor for PMAppAccountDetailsModel.State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v53 = v90;
        sub_21C96C85C(v52, v90, type metadata accessor for PMAccount);
      }

      else
      {
        swift_getKeyPath(byte_21CBB5090);
        v53 = v90;
        sub_21CB81DB4();

        v45 = v92;
      }

      v54 = 0;
    }

    else
    {
      v54 = 1;
      v53 = v90;
    }

    v55 = *(v93 + 56);
    v55(v53, v54, 1, v24);
    sub_21C96C7F4(v44, v45, type metadata accessor for PMAccount);
    v55(v45, 0, 1, v24);
    v56 = v88;
    v57 = *(v87 + 48);
    sub_21C6EDBAC(v53, v88, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C6EDBAC(v45, v56 + v57, &unk_27CDEBE60, &unk_21CB9FF40);
    v58 = v86;
    if (v86(v56, 1, v24) == 1)
    {
      sub_21C6EA794(v45, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C6EA794(v53, &unk_27CDEBE60, &unk_21CB9FF40);
      v59 = v58(v56 + v57, 1, v24);
      v60 = v89;
      if (v59 == 1)
      {
        sub_21C6EA794(v56, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_28:
        sub_21C719480(v60, type metadata accessor for PMAccount);
      }
    }

    else
    {
      v61 = v81;
      sub_21C6EDBAC(v56, v81, &unk_27CDEBE60, &unk_21CB9FF40);
      if (v58(v56 + v57, 1, v24) != 1)
      {
        v72 = v56 + v57;
        v73 = v85;
        sub_21C96C85C(v72, v85, type metadata accessor for PMAccount);
        v74 = v61;
        v75 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v61, v73);
        sub_21C719480(v73, type metadata accessor for PMAccount);
        sub_21C6EA794(v92, &unk_27CDEBE60, &unk_21CB9FF40);
        sub_21C6EA794(v90, &unk_27CDEBE60, &unk_21CB9FF40);
        sub_21C719480(v74, type metadata accessor for PMAccount);
        sub_21C6EA794(v56, &unk_27CDEBE60, &unk_21CB9FF40);
        v62 = v77;
        v60 = v89;
        if (v75)
        {
          goto LABEL_28;
        }

LABEL_21:
        v63 = v79;
        sub_21C96C7F4(v60, v79, type metadata accessor for PMAccount);
        type metadata accessor for PMAppAccountDetailsModel(0);
        v64 = swift_allocObject();
        sub_21CB81104();
        sub_21C96C7F4(v63 + *(v24 + 24), v62, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719480(v62, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v65 = *v62;
          v66 = [*v62 credentialTypes];

          if (v66 == 4)
          {
            sub_21C96C85C(v79, v64 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAccount);
            swift_storeEnumTagMultiPayload();
LABEL_26:
            KeyPath = swift_getKeyPath(byte_21CBB4F20);
            MEMORY[0x28223BE20](KeyPath);
            v76[-2] = v33;
            v76[-1] = v64;
            v94 = v33;
            sub_21CB810C4();

            sub_21C719480(v60, type metadata accessor for PMAccount);
          }
        }

        v67 = v79;
        v68 = v85;
        sub_21C96C7F4(v79, v85, type metadata accessor for PMAccount);
        type metadata accessor for PMCombinedAccountDetailsModel(0);
        swift_allocObject();
        v69 = sub_21CA4B79C(v68);
        sub_21C719480(v67, type metadata accessor for PMAccount);
        v70 = v76[0];
        *v76[0] = v69;
        swift_storeEnumTagMultiPayload();
        sub_21C96C85C(v70, v64 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAppAccountDetailsModel.State);
        goto LABEL_26;
      }

      sub_21C6EA794(v92, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C6EA794(v90, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C719480(v61, type metadata accessor for PMAccount);
      v60 = v89;
    }

    sub_21C6EA794(v56, &qword_27CDEAC50, &unk_21CBA00A0);
    v62 = v77;
    goto LABEL_21;
  }

  return result;
}

char *PMAppAccountDetailsWindowModel.deinit()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PMAppAccountDetailsWindowModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21C96C4B8(uint64_t *a1, uint64_t *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

uint64_t sub_21C96C548(uint64_t a1)
{
  result = sub_21CB81114();
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

unint64_t sub_21C96C660()
{
  result = qword_27CDF2A00;
  if (!qword_27CDF2A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF2A00);
  }

  return result;
}

uint64_t sub_21C96C6E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C96C72C()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_21C96C784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C96C7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C96C85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C96C8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21C96C94C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for PMEditGroupFlow(uint64_t a1)
{
  result = qword_27CDF2A28;
  if (!qword_27CDF2A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C96C9E8(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C721F48();
      if (v3 <= 0x3F)
      {
        sub_21C721FAC(319, &qword_27CDF2A40, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21C721FAC(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21C96CB14(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x21CF15F90](0);
  }

  MEMORY[0x21CF15F90](1);
  v3 = *(a2 + 16);
  result = MEMORY[0x21CF15F90](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[2];
      v8 = *v5;
      v18 = v5[1];
      v19 = v7;
      v17 = v8;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v22 = v5[5];
      v23 = v11;
      v20 = v9;
      v21 = v10;
      if (*(&v8 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v17, v16);
        sub_21CB854C4();
        if (*(&v18 + 1))
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v17, v16);
        if (*(&v18 + 1))
        {
LABEL_8:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_11;
        }
      }

      sub_21CB864A4();
LABEL_11:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v12 = v23;
      v13 = BYTE2(v22);
      v14 = BYTE1(v22);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v14);
      MEMORY[0x21CF15F90](v13);
      if (v12)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v15 = *(&v23 + 1);
        if (!*(&v23 + 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_21CB864A4();
        v15 = *(&v23 + 1);
        if (!*(&v23 + 1))
        {
LABEL_15:
          sub_21CB864A4();
          goto LABEL_5;
        }
      }

      sub_21CB864A4();
      v6 = v15;
      sub_21CB85DE4();

LABEL_5:
      result = sub_21C7A344C(&v17);
      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21C96CD24()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C96CB14(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C96CD74(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  sub_21C96CB14(v4, v2);
  return sub_21CB864D4();
}

uint64_t sub_21C96CDB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_21C967680(v2, v3);
    }

    return 0;
  }

  return !v3;
}

unint64_t sub_21C96CDE4()
{
  result = qword_27CDF2A48;
  if (!qword_27CDF2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2A48);
  }

  return result;
}

uint64_t sub_21C96CE54(uint64_t a1)
{
  v2 = type metadata accessor for PMEditGroupFlow(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C96E104(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupFlow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21C96E03C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMEditGroupFlow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A60, &qword_21CBB51D0);
  sub_21C8158AC();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A68, &qword_21CBB51D8);
  v8 = sub_21C96DCBC();
  v10[0] = v7;
  v10[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_21CB84564();
}

uint64_t sub_21C96D018(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A68, &qword_21CBB51D8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_21C96D0DC(*a1, a2, &v8 - v5);
  sub_21C96DCBC();
  sub_21CB84674();
  return sub_21C96DEAC(v6);
}

uint64_t sub_21C96D0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v50 = type metadata accessor for PMNotifyGroupMembersView(0);
  MEMORY[0x28223BE20](v50);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A98, &qword_21CBB51F0);
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - v7;
  v8 = type metadata accessor for PMEditGroupFlow(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMSharingGroup(0);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v46 = type metadata accessor for PMEditGroupView(0);
  MEMORY[0x28223BE20](v46);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_21C96E104(a2, v6, type metadata accessor for PMSharingGroup);
    sub_21C96E104(a2, &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupFlow);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v21 = swift_allocObject();
    sub_21C96E03C(v11, v21 + v20, type metadata accessor for PMEditGroupFlow);
    v22 = v50;
    *&v6[*(v50 + 20)] = a1;
    v23 = &v6[v22[6]];
    *v23 = sub_21C96DF14;
    v23[1] = v21;
    v24 = &v6[v22[7]];
    v51 = 0;

    sub_21CB84D44();
    v25 = v53;
    *v24 = v52;
    *(v24 + 1) = v25;
    v26 = &v6[v22[8]];
    type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
    sub_21C96DFF4(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
    *v26 = sub_21CB82084();
    v26[8] = v27 & 1;
    sub_21C96E104(v6, v48, type metadata accessor for PMNotifyGroupMembersView);
    swift_storeEnumTagMultiPayload();
    sub_21C96DFF4(&qword_27CDF2A88, type metadata accessor for PMEditGroupView, &unk_21CBB52D0);
    sub_21C96DFF4(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
    sub_21CB83494();
    v28 = type metadata accessor for PMNotifyGroupMembersView;
    v29 = v6;
  }

  else
  {
    sub_21C96E104(a2, v17, type metadata accessor for PMSharingGroup);
    sub_21C96E104(a2, &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupFlow);
    v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v31 = swift_allocObject();
    sub_21C96E03C(v11, v31 + v30, type metadata accessor for PMEditGroupFlow);
    v32 = v46;
    v33 = &v19[*(v46 + 28)];
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C96DFF4(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    *v33 = sub_21CB82B84();
    v33[1] = v34;
    v35 = &v19[v32[8]];
    *v35 = sub_21CB81F94() & 1;
    *(v35 + 1) = v36;
    v35[16] = v37 & 1;
    v38 = v32[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    sub_21C96E104(v17, v19, type metadata accessor for PMSharingGroup);
    v39 = &v19[v32[5]];
    *v39 = sub_21C96DF84;
    v39[1] = v31;
    sub_21C96E03C(v17, v14, type metadata accessor for PMSharingGroup);
    v40 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v41 = swift_allocObject();
    sub_21C96E03C(v14, v41 + v40, type metadata accessor for PMSharingGroup);
    v42 = &v19[v32[6]];
    *v42 = sub_21C96E0A4;
    *(v42 + 1) = v41;
    v42[16] = 0;
    sub_21C96E104(v19, v48, type metadata accessor for PMEditGroupView);
    swift_storeEnumTagMultiPayload();
    sub_21C96DFF4(&qword_27CDF2A88, type metadata accessor for PMEditGroupView, &unk_21CBB52D0);
    sub_21C96DFF4(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
    sub_21CB83494();
    v28 = type metadata accessor for PMEditGroupView;
    v29 = v19;
  }

  return sub_21C96E16C(v29, v28);
}

uint64_t sub_21C96D7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB82644();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21CB823B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      result = sub_21CA2EEF0();
      if (result)
      {
        type metadata accessor for PMEditGroupFlow(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
        sub_21CB84D54();
        v12[1] = a1;
        sub_21C8158AC();
        sub_21CB82634();
        return sub_21CB84D64();
      }
    }

    else
    {
      v11 = type metadata accessor for PMEditGroupFlow(0);
      sub_21C95B2C8(v8);
      sub_21CB823A4();
      (*(v6 + 8))(v8, v5);
      return (*(a2 + *(v11 + 20)))(0);
    }
  }

  else
  {
    v9 = type metadata accessor for PMEditGroupFlow(0);
    sub_21C95B2C8(v8);
    sub_21CB823A4();
    (*(v6 + 8))(v8, v5);
    return (*(a2 + *(v9 + 20)))(1);
  }

  return result;
}

uint64_t sub_21C96DA18(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB823B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMEditGroupFlow(0);
  sub_21C95B2C8(v6);
  sub_21CB823A4();
  (*(v4 + 8))(v6, v3);
  return (*(a2 + *(v7 + 20)))(0);
}

uint64_t sub_21C96DB18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A50, &qword_21CBB51C0);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  sub_21CB84D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A58, &qword_21CBB51C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A60, &qword_21CBB51D0);
  sub_21C8158AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A68, &qword_21CBB51D8);
  sub_21C96DCBC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82904();
}

unint64_t sub_21C96DCBC()
{
  result = qword_27CDF2A70;
  if (!qword_27CDF2A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A68, &qword_21CBB51D8);
    sub_21C96DD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2A70);
  }

  return result;
}

unint64_t sub_21C96DD40()
{
  result = qword_27CDF2A78;
  if (!qword_27CDF2A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A80, &unk_21CBB51E0);
    sub_21C96DFF4(&qword_27CDF2A88, type metadata accessor for PMEditGroupView, &unk_21CBB52D0);
    sub_21C96DFF4(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2A78);
  }

  return result;
}

uint64_t sub_21C96DE2C(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMEditGroupFlow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C96D018(a1, v4);
}

uint64_t sub_21C96DEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A68, &qword_21CBB51D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C96DF14(char a1)
{
  v3 = *(type metadata accessor for PMEditGroupFlow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C96DA18(a1 & 1, v4);
}

uint64_t sub_21C96DF84(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEditGroupFlow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C96D7F8(a1, v4);
}

uint64_t sub_21C96DFF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C96E03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C96E0A4()
{
  v1 = *(type metadata accessor for PMSharingGroup(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C96E298(v2);
}

uint64_t sub_21C96E104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C96E16C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C96E1DC()
{
  result = qword_27CDF2AA0;
  if (!qword_27CDF2AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AA8, qword_21CBB5230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2AA0);
  }

  return result;
}

unint64_t sub_21C96E244()
{
  result = qword_27CDF2AB0;
  if (!qword_27CDF2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2AB0);
  }

  return result;
}

uint64_t sub_21C96E298(uint64_t a1)
{
  v2 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C97A15C(a1, v4, type metadata accessor for PMSharingGroup);
  type metadata accessor for PMGroupMembersProviderMain();
  v5 = swift_allocObject();
  *(v5 + 16) = [objc_opt_self() sharedManager];
  type metadata accessor for PMGroupManagerMain();
  v6 = swift_allocObject();
  return sub_21C979CE4(v4, v5, v6);
}

uint64_t sub_21C96E380@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v178 = a1;
  v195 = sub_21CB81024();
  v202 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v194 = v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMEditGroupView(0);
  v5 = *(v4 - 8);
  v189 = (v4 - 8);
  v197 = v5;
  v179 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v207 = v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_21CB829D4();
  v208 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v193 = v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_21CB82FD4();
  v8 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v10 = v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AE0, &qword_21CBB5320);
  v158 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v156 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AE8, &qword_21CBB5328);
  v15 = *(v14 - 8);
  v160 = v14;
  v161 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v156 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AF0, &qword_21CBB5330);
  v19 = *(v18 - 8);
  v162 = v18;
  v163 = v19;
  MEMORY[0x28223BE20](v18);
  v157 = v156 - v20;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AF8, &qword_21CBB5338);
  v204 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v159 = v156 - v21;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B00, &qword_21CBB5340);
  MEMORY[0x28223BE20](v196);
  v198 = v156 - v22;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B08, &qword_21CBB5348);
  v164 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v199 = v156 - v23;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B10, &qword_21CBB5350);
  v166 = *(v181 - 1);
  MEMORY[0x28223BE20](v181);
  v200 = v156 - v24;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B18, &qword_21CBB5358);
  v167 = *(v182 - 1);
  MEMORY[0x28223BE20](v182);
  v184 = v156 - v25;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B20, &qword_21CBB5360);
  v168 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v180 = v156 - v26;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B28, &qword_21CBB5368);
  v169 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v186 = (v156 - v27);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B30, &qword_21CBB5370);
  v170 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v188 = v156 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B38, &qword_21CBB5378);
  v171 = *(v29 - 8);
  v172 = v29;
  MEMORY[0x28223BE20](v29);
  v191 = v156 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B40, &qword_21CBB5380);
  v173 = *(v31 - 8);
  v174 = v31;
  MEMORY[0x28223BE20](v31);
  v192 = v156 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B48, &qword_21CBB5388);
  v176 = *(v33 - 8);
  v177 = v33;
  MEMORY[0x28223BE20](v33);
  v175 = v156 - v34;
  v216 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B50, &qword_21CBB5390);
  v165 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDF2B58, &qword_27CDF2B50, &qword_21CBB5390, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  v35 = v206;
  (*(v8 + 104))(v10, *MEMORY[0x277CDDDC0], v206);
  v36 = sub_21C6EADEC(&qword_27CDF2B60, &qword_27CDF2AE0, &qword_21CBB5320, MEMORY[0x277CDE580]);
  sub_21CB84684();
  (*(v8 + 8))(v10, v35);
  (*(v158 + 8))(v13, v11);
  v37 = v2;
  v219 = sub_21C9734F4();
  v220 = v38;
  v227 = v11;
  v228 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_21C71F3FC();
  v41 = v157;
  v42 = v160;
  v43 = MEMORY[0x277D837D0];
  v44 = v40;
  v206 = v40;
  sub_21CB842F4();

  (*(v161 + 8))(v17, v42);
  v45 = v193;
  sub_21CB85294();
  v219 = v42;
  v220 = v43;
  v221 = OpaqueTypeConformance2;
  v222 = v44;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_21C97ACD0(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v48 = v159;
  v49 = v162;
  v50 = v205;
  sub_21CB849C4();
  (*(v208 + 8))(v45, v50);
  (*(v163 + 8))(v41, v49);
  v203 = v37;
  v215 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B68, &qword_21CBB5398);
  v219 = v49;
  v220 = v50;
  v221 = v46;
  v222 = v47;
  swift_getOpaqueTypeConformance2();
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B70, &qword_21CBB53A0);
  v52 = sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0, MEMORY[0x277CDDF68]);
  v219 = v51;
  v220 = v52;
  swift_getOpaqueTypeConformance2();
  v53 = v198;
  v54 = v201;
  sub_21CB84894();
  (*(v204 + 8))(v48, v54);
  v55 = v37 + *(v189 + 8);
  v56 = *v55;
  v57 = *(v55 + 8);
  LODWORD(v41) = *(v55 + 16);
  v58 = type metadata accessor for PMEditGroupViewModel(0);
  v59 = sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  v60 = v56;
  v61 = v58;
  sub_21CB82134();
  swift_getKeyPath(byte_21CBB53A8);
  swift_getKeyPath(byte_21CBB53D0);
  sub_21CB81DB4();

  LOBYTE(v56) = v219;
  KeyPath = swift_getKeyPath(byte_21CBB53F0);
  v63 = swift_allocObject();
  *(v63 + 16) = v56;
  v64 = &v53[*(v196 + 36)];
  *v64 = KeyPath;
  v64[1] = sub_21C735744;
  v64[2] = v63;
  v204 = v57;
  sub_21CB82144();
  swift_getKeyPath(byte_21CBB5420);
  sub_21CB82694();

  v65 = v219;
  v66 = v220;
  LODWORD(KeyPath) = v221;
  sub_21CB82134();
  v67 = KeyPath;
  v68 = v198;
  sub_21C97431C(v65, v66, v67, v199);

  sub_21C6EA794(v68, &qword_27CDF2B00, &qword_21CBB5340);
  v208 = v61;
  sub_21CB82144();
  swift_getKeyPath(aH_72);
  sub_21CB82694();

  v69 = v219;
  v70 = v220;
  LODWORD(v68) = v221;
  v205 = v60;
  LODWORD(v60) = v41;
  sub_21CB82134();
  v71 = v199;
  sub_21C97473C(v69, v70, v68, v200);

  (*(v164 + 8))(v71, v183);
  sub_21CB82144();
  swift_getKeyPath(aH_73);
  sub_21CB82694();

  v72 = v219;
  v73 = v220;
  LODWORD(v68) = v221;
  sub_21CB82134();
  v74 = v68;
  v75 = v200;
  sub_21C974B2C(v72, v73, v74, v184);

  (*(v166 + 1))(v75, v181);
  LODWORD(v201) = v60;
  sub_21CB82144();
  swift_getKeyPath(asc_21CBB5498);
  v193 = v59;
  sub_21CB82694();

  v160 = v228;
  v161 = v227;
  LODWORD(v162) = v229;
  v76 = sub_21CB82134();
  v159 = v76;
  v166 = type metadata accessor for PMEditGroupView;
  v77 = v207;
  sub_21C97A15C(v203, v207, type metadata accessor for PMEditGroupView);
  v78 = *(v197 + 80);
  v198 = (((v78 + 16) & ~v78) + v179);
  v199 = v78;
  v79 = (v78 + 16) & ~v78;
  v200 = v79;
  v80 = swift_allocObject();
  sub_21C97A1C4(v77, v80 + v79);
  v219 = sub_21C7C2E34();
  v220 = v81;
  v82 = MEMORY[0x277D837D0];
  v83 = v206;
  v84 = sub_21CB84054();
  v157 = v85;
  v158 = v84;
  LOBYTE(v79) = v86;
  v156[1] = v87;
  v212 = v76;
  v213 = sub_21C97A228;
  v214 = v80;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED298, &qword_21CBA6570);
  v90 = sub_21C97A23C();
  v219 = v196;
  v220 = v82;
  v221 = MEMORY[0x277CE1428];
  v222 = MEMORY[0x277CE0BD8];
  v223 = v90;
  v224 = v83;
  v225 = MEMORY[0x277CE1410];
  v226 = MEMORY[0x277CE0BC8];
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v219 = v183;
  v220 = v88;
  v196 = v92;
  v197 = v88;
  v221 = v89;
  v222 = v91;
  v223 = v92;
  v93 = v92;
  v163 = MEMORY[0x277CDEDD0];
  v164 = v89;
  v94 = swift_getOpaqueTypeConformance2();
  v219 = v181;
  v220 = v88;
  v221 = v89;
  v222 = v94;
  v223 = v93;
  v181 = swift_getOpaqueTypeConformance2();
  v183 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, v165);
  v95 = v182;
  v97 = v157;
  v96 = v158;
  v98 = v184;
  sub_21CB84744();

  sub_21C74A72C(v96, v97, v79 & 1);

  (*(v167 + 8))(v98, v95);
  sub_21CB82144();
  swift_getKeyPath(byte_21CBB54C8);
  sub_21CB82694();

  v99 = v219;
  v100 = v220;
  LODWORD(v98) = v221;
  sub_21CB82134();
  v101 = v98;
  v102 = v180;
  sub_21C974F90(v99, v100, v101, v186);

  (*(v168 + 8))(v102, v185);
  sub_21CB82144();
  swift_getKeyPath(byte_21CBB54F0);
  sub_21CB82694();

  v180 = v227;
  v168 = v228;
  LODWORD(v184) = v229;
  v103 = sub_21CB82134();
  v165 = v103;
  v104 = v207;
  sub_21C97A15C(v203, v207, v166);
  v105 = swift_allocObject();
  v167 = v105;
  sub_21C97A1C4(v104, v105 + v200);
  v219 = sub_21C7C2E34();
  v220 = v106;
  v107 = sub_21CB84054();
  v109 = v108;
  LOBYTE(v99) = v110;
  v209 = v103;
  v210 = sub_21C97A518;
  v211 = v105;
  v219 = v182;
  v220 = v179;
  v221 = MEMORY[0x277CE0BD8];
  v222 = v181;
  v223 = v183;
  v224 = MEMORY[0x277CE0BC8];
  v111 = swift_getOpaqueTypeConformance2();
  v219 = v185;
  v220 = v197;
  v221 = v164;
  v222 = v111;
  v223 = v196;
  v185 = swift_getOpaqueTypeConformance2();
  v112 = v187;
  v113 = v186;
  sub_21CB84744();

  sub_21C74A72C(v107, v109, v99 & 1);

  v169[1](v113, v112);
  sub_21CB82144();
  swift_getKeyPath(byte_21CBB5518);
  sub_21CB82694();

  v184 = v227;
  v181 = v228;
  LODWORD(v182) = v229;
  sub_21CB82134();
  v114 = *(v203 + *(v189 + 9));
  if (v114)
  {
    v189 = type metadata accessor for PMEditGroupView;
    v115 = v207;
    sub_21C97A15C(v203, v207, type metadata accessor for PMEditGroupView);
    v168 = swift_allocObject();
    sub_21C97A1C4(v115, v168 + v200);
    v169 = v114;
    v116 = v194;
    sub_21CB81014();
    v117 = sub_21CB81004();
    v119 = v118;
    v120 = *(v202 + 8);
    v202 += 8;
    v186 = v120;
    v120(v116, v195);
    v219 = v117;
    v220 = v119;
    v121 = sub_21CB84054();
    v123 = v122;
    LOBYTE(v119) = v124;
    v180 = v156;
    MEMORY[0x28223BE20](v121);
    v219 = v187;
    v220 = v179;
    v221 = MEMORY[0x277CE0BD8];
    v222 = v185;
    v223 = v183;
    v224 = MEMORY[0x277CE0BC8];
    v187 = MEMORY[0x277CDEDF0];
    v185 = swift_getOpaqueTypeConformance2();
    v125 = v190;
    v126 = v188;
    sub_21CB84744();

    v127 = v169;

    sub_21C74A72C(v121, v123, v119 & 1);

    (*(v170 + 8))(v126, v125);
    sub_21CB82144();
    swift_getKeyPath(byte_21CBB5540);
    sub_21CB82694();

    v183 = v228;
    v184 = v227;
    LODWORD(v188) = v229;
    v180 = sub_21CB82134();
    v128 = v207;
    sub_21C97A15C(v203, v207, v189);
    v129 = swift_allocObject();
    sub_21C97A1C4(v128, v129 + v200);
    v181 = v127;
    v130 = v194;
    sub_21CB81014();
    v131 = sub_21CB81004();
    v133 = v132;
    v186(v130, v195);
    v219 = v131;
    v220 = v133;
    v134 = sub_21CB84054();
    v136 = v135;
    LOBYTE(v133) = v137;
    v179 = v138;
    v182 = v156;
    MEMORY[0x28223BE20](v134);
    v219 = v190;
    v220 = v197;
    v221 = MEMORY[0x277CE0BD8];
    v222 = v185;
    v223 = v196;
    v224 = MEMORY[0x277CE0BC8];
    v190 = swift_getOpaqueTypeConformance2();
    v139 = v172;
    v140 = v191;
    sub_21CB84744();

    sub_21C74A72C(v134, v136, v133 & 1);

    (*(v171 + 8))(v140, v139);
    sub_21CB82144();
    swift_getKeyPath(byte_21CBB5568);
    sub_21CB82694();

    v141 = v194;
    sub_21CB81014();
    v142 = sub_21CB81004();
    v144 = v143;
    v186(v141, v195);
    v217 = v142;
    v218 = v144;
    v219 = v139;
    v220 = v197;
    v221 = MEMORY[0x277CE0BD8];
    v222 = v190;
    v223 = v196;
    v224 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v145 = v174;
    v146 = v175;
    v147 = v192;
    sub_21CB84754();

    (*(v173 + 8))(v147, v145);

    v148 = v203;
    v149 = v207;
    sub_21C97A15C(v203, v207, v189);
    v150 = swift_allocObject();
    sub_21C97A1C4(v149, v150 + v200);
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B88, &qword_21CBB5590);
    v152 = v178;
    v153 = v178 + *(v151 + 36);
    sub_21C97A15C(v148, v153, type metadata accessor for PMSharingGroup);
    v154 = (v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B90, &qword_21CBB5598) + 36));
    *v154 = sub_21C97A5B8;
    v154[1] = v150;
    return (*(v176 + 32))(v152, v146, v177);
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C97ACD0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C970314@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BA0, &qword_21CBB59E8);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = v69 - v6;
  v7 = type metadata accessor for PMEditGroupView(0);
  v8 = v7 - 8;
  v76 = *(v7 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v7);
  v80 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = v69 - v11;
  MEMORY[0x28223BE20](v12);
  v75 = v69 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FE8, &qword_21CBB59F0) - 8;
  MEMORY[0x28223BE20](v90);
  v84 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = (v69 - v16);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BA8, &qword_21CBB59F8);
  v92 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v91 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = v69 - v19;
  v20 = sub_21CB81024();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (a1 + *(v8 + 32));
  v25 = v24[1];
  v88 = *v24;
  v89 = v25;
  v87 = *(v24 + 16);
  v26 = type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  sub_21CB82134();
  sub_21C97E780();

  sub_21CB81014();
  v27 = sub_21CB81004();
  v73 = v28;
  v74 = v27;
  (*(v21 + 8))(v23, v20);
  v96 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BB0, &qword_21CBB5A00);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2BB8, &qword_21CBB5A08);
  v30 = sub_21C97AD20();
  *&v110 = v29;
  *(&v110 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_21CB85054();
  v69[1] = v26;
  sub_21CB82134();
  v82 = sub_21C97ECC0();

  sub_21CB82134();
  v79 = sub_21C97E780();

  v31 = swift_allocObject();
  v78 = v31;
  v32 = v73;
  *(v31 + 16) = v74;
  *(v31 + 24) = v32;
  v33 = v75;
  sub_21C97A15C(a1, v75, type metadata accessor for PMEditGroupView);
  v34 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v76 = swift_allocObject();
  sub_21C97A1C4(v33, v76 + v34);
  v81 = a1;
  v35 = v77;
  sub_21C97A15C(a1, v77, type metadata accessor for PMEditGroupView);
  v75 = swift_allocObject();
  sub_21C97A1C4(v35, v75 + v34);
  v36 = v80;
  sub_21C97A15C(a1, v80, type metadata accessor for PMEditGroupView);
  v77 = swift_allocObject();
  sub_21C97A1C4(v36, v77 + v34);
  v37 = v94 + *(v90 + 84);
  sub_21CB82144();
  swift_getKeyPath(byte_21CBB5A30);
  sub_21CB82694();

  v80 = v107;
  v74 = v108;
  LODWORD(v73) = v109;
  sub_21CB82144();
  swift_getKeyPath(byte_21CBB5420);
  sub_21CB82694();

  v71 = v105;
  v72 = v104;
  v70 = v106;
  sub_21CB82134();
  swift_getKeyPath(aP_59);
  swift_getKeyPath(a0_33);
  v38 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  sub_21CB81DB4();

  sub_21CB82134();
  swift_getKeyPath(byte_21CBB5928);
  swift_getKeyPath(aH_74);
  sub_21CB81DB4();

  v114 = v101;
  v115 = v102;
  v116 = v103;
  v110 = v97;
  v111 = v98;
  v112 = v99;
  v113 = v100;
  v39 = sub_21CB82134();
  v40 = v74;
  *v37 = v80;
  *(v37 + 1) = v40;
  v37[16] = v73;
  v41 = v71;
  *(v37 + 3) = v72;
  *(v37 + 4) = v41;
  v37[40] = v70;
  v42 = &v37[*(v38 + 28)];
  v43 = v115;
  *(v42 + 4) = v114;
  *(v42 + 5) = v43;
  *(v42 + 6) = v116;
  v44 = v111;
  *v42 = v110;
  *(v42 + 1) = v44;
  v45 = v113;
  *(v42 + 2) = v112;
  *(v42 + 3) = v45;
  v46 = &v37[*(v38 + 32)];
  *v46 = &unk_21CBB5A60;
  *(v46 + 1) = v39;
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v47 = v94;
  *v94 = v82;
  *(v47 + 8) = 1;
  *(v47 + 9) = v79 & 1;
  *(v47 + 5) = 257;
  *(v47 + 12) = 0;
  v48 = v78;
  v47[2] = sub_21C97AF9C;
  v47[3] = v48;
  v49 = v75;
  v50 = v76;
  v47[4] = sub_21C97AFA4;
  v47[5] = v50;
  v47[6] = sub_21C97B014;
  v47[7] = v49;
  *(v47 + 64) = 0;
  v51 = v77;
  v47[9] = sub_21C97B094;
  v47[10] = v51;
  v52 = v90;
  v53 = v47 + *(v90 + 88);
  LOBYTE(v107) = 0;
  sub_21CB84D44();
  v54 = *(&v97 + 1);
  *v53 = v97;
  *(v53 + 1) = v54;
  v55 = v47 + v52[23];
  LOBYTE(v107) = 0;
  sub_21CB84D44();
  v56 = *(&v97 + 1);
  *v55 = v97;
  *(v55 + 1) = v56;
  v57 = v47 + v52[24];
  *v57 = swift_getKeyPath(aP_60);
  v57[8] = 0;
  *(v47 + v52[25]) = 0;
  v58 = (v47 + v52[26]);
  *v58 = 0x65626D654D646461;
  v58[1] = 0xEA00000000007372;
  v59 = v93;
  sub_21C973068(v93);
  v60 = v91;
  v61 = *(v92 + 16);
  v62 = v83;
  v61(v91, v95, v83);
  v63 = v84;
  sub_21C6EDBAC(v47, v84, &qword_27CDF1FE8, &qword_21CBB59F0);
  v64 = v85;
  sub_21C6EDBAC(v59, v85, &qword_27CDF2BA0, &qword_21CBB59E8);
  v65 = v86;
  v61(v86, v60, v62);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2C00, &qword_21CBB5A90);
  sub_21C6EDBAC(v63, &v65[*(v66 + 48)], &qword_27CDF1FE8, &qword_21CBB59F0);
  sub_21C6EDBAC(v64, &v65[*(v66 + 64)], &qword_27CDF2BA0, &qword_21CBB59E8);
  sub_21C6EA794(v93, &qword_27CDF2BA0, &qword_21CBB59E8);
  sub_21C6EA794(v94, &qword_27CDF1FE8, &qword_21CBB59F0);
  v67 = *(v92 + 8);
  v67(v95, v62);
  sub_21C6EA794(v64, &qword_27CDF2BA0, &qword_21CBB59E8);
  sub_21C6EA794(v63, &qword_27CDF1FE8, &qword_21CBB59F0);
  return (v67)(v91, v62);
}

uint64_t sub_21C970E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v76 = a2;
  v3 = type metadata accessor for PMEditGroupView(0);
  v68 = *(v3 - 8);
  v67 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21CB81024();
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BF0, &unk_21CBB5A20);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BE0, &qword_21CBB5A18);
  MEMORY[0x28223BE20](v69);
  v71 = &v57 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BD0, &qword_21CBB5A10);
  MEMORY[0x28223BE20](v70);
  v72 = &v57 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BB8, &qword_21CBB5A08);
  MEMORY[0x28223BE20](v73);
  v74 = &v57 - v17;
  v75 = v3;
  v18 = (a1 + *(v3 + 24));
  v19 = v18[1];
  v64 = *v18;
  v61 = v19;
  v63 = type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  sub_21CB82144();
  swift_getKeyPath(byte_21CBB5B48);
  sub_21CB82694();

  v60 = sub_21C91A0A0(*MEMORY[0x277D49C40], v78, v79, v80, v81);
  v59 = v20;
  v58 = v21;
  v57 = v22;

  sub_21CB81014();
  sub_21CB81014();
  v23 = sub_21CB80FF4();
  v25 = v24;
  v26 = *(v5 + 8);
  v27 = v7;
  v28 = v65;
  v26(v27, v65);
  v26(v10, v28);
  v29 = v62;
  v30 = v66;
  sub_21C97A15C(v62, v66, type metadata accessor for PMEditGroupView);
  v31 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v32 = swift_allocObject();
  sub_21C97A1C4(v30, v32 + v31);
  *v14 = swift_getKeyPath(byte_21CBB5B70);
  v14[8] = 0;
  v33 = v12[11];
  *&v14[v33] = swift_getKeyPath(aH_75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v34 = &v14[v12[12]];
  v35 = v59;
  *v34 = v60;
  v34[1] = v35;
  v36 = v57;
  v34[2] = v58;
  v34[3] = v36;
  v37 = &v14[v12[13]];
  *v37 = v23;
  v37[1] = v25;
  v14[v12[14]] = 0;
  v14[v12[15]] = 0;
  v38 = &v14[v12[16]];
  *v38 = sub_21C97B804;
  v38[1] = v32;
  sub_21CB82134();
  LOBYTE(v25) = sub_21C97E780();

  if (v25)
  {
    v39 = sub_21CB837B4();
  }

  else
  {
    v39 = sub_21CB837E4();
  }

  v40 = v39;
  v41 = v71;
  sub_21C716934(v14, v71, &qword_27CDF2BF0, &unk_21CBB5A20);
  *(v41 + *(v69 + 36)) = v40;
  sub_21CB82134();
  LOBYTE(v40) = sub_21C97E780();

  KeyPath = swift_getKeyPath(byte_21CBB53F0);
  v43 = swift_allocObject();
  *(v43 + 16) = (v40 & 1) == 0;
  v44 = v41;
  v45 = v72;
  sub_21C716934(v44, v72, &qword_27CDF2BE0, &qword_21CBB5A18);
  v46 = (v45 + *(v70 + 36));
  *v46 = KeyPath;
  v46[1] = sub_21C87E800;
  v46[2] = v43;
  v47 = swift_getKeyPath(a8_25);
  v48 = swift_getKeyPath(byte_21CBB5C08);
  LOBYTE(v77) = 1;
  sub_21CB84D44();
  LOBYTE(v43) = v78;
  v49 = v79;
  v50 = v45;
  v51 = v74;
  sub_21C716934(v50, v74, &qword_27CDF2BD0, &qword_21CBB5A10);
  v52 = v51 + *(v73 + 36);
  *v52 = 0;
  *(v52 + 8) = v47;
  *(v52 + 16) = 0;
  *(v52 + 24) = v48;
  *(v52 + 32) = 0;
  *(v52 + 40) = v43;
  *(v52 + 48) = v49;
  v53 = v29 + *(v75 + 32);
  v54 = *v53;
  v55 = *(v53 + 8);
  LOBYTE(v53) = *(v53 + 16);
  LOBYTE(v78) = v54;
  v79 = v55;
  LOBYTE(v80) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
  sub_21CB81F74();
  sub_21C97AD20();
  sub_21CB84834();

  return sub_21C6EA794(v51, &qword_27CDF2BB8, &qword_21CBB5A08);
}

uint64_t sub_21C9715F4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v28[-v8];
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  v29 = v10;
  v30 = v12;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  v18 = v17;
  type metadata accessor for PMEditGroupView(0);
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  sub_21CB82134();
  LOBYTE(v12) = sub_21C97E780();

  if (v12)
  {
    v19 = sub_21CB837E4();
  }

  else
  {
    v19 = sub_21CB837B4();
  }

  LODWORD(v29) = v19;
  v20 = sub_21CB83FC4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_21C74A72C(v14, v16, v18 & 1);

  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v26;
  return result;
}

uint64_t sub_21C97187C@<X0>(uint64_t a3@<X8>)
{
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_21C9718E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMEditGroupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_21CB858E4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21C97A15C(a2, v7, type metadata accessor for PMEditGroupView);
  sub_21CB858B4();

  v12 = sub_21CB858A4();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  sub_21C97A1C4(v7, v15 + v13);
  *(v15 + v14) = a1;
  sub_21C822ECC(0, 0, v10, &unk_21CBB5B40, v15);
}

uint64_t sub_21C971AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_21CB858B4();
  v5[5] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21C971B74, v7, v6);
}

uint64_t sub_21C971B74()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PMEditGroupView(0);
  *(v0 + 64) = v2;
  v3 = v1 + *(v2 + 24);
  *(v0 + 72) = *v3;
  *(v0 + 80) = *(v3 + 8);
  *(v0 + 152) = *(v3 + 16);
  *(v0 + 88) = type metadata accessor for PMEditGroupViewModel(0);
  *(v0 + 96) = sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  *(v0 + 104) = sub_21CB82134();
  *(v0 + 112) = sub_21CB858A4();
  v5 = sub_21CB85874();
  *(v0 + 120) = v5;
  *(v0 + 128) = v4;

  return MEMORY[0x2822009F8](sub_21C971CA4, v5, v4);
}

uint64_t sub_21C971CA4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_21C9823C0(v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_21C971D94;

  return sub_21C980418();
}

uint64_t sub_21C971D94()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_21C97201C;
  }

  else
  {
    v5 = sub_21C971ED0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C971ED0()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_21C971F3C, v1, v2);
}

uint64_t sub_21C971F3C()
{
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];

  sub_21CB82134();
  v4 = sub_21C97EF2C(v2);

  (*(v3 + *(v1 + 20)))(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21C97201C()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_21C972080, v1, v2);
}

uint64_t sub_21C972080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9720F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMEditGroupView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_21CB858E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21C97A15C(a3, v9, type metadata accessor for PMEditGroupView);
  sub_21CB858B4();

  v14 = sub_21CB858A4();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  sub_21C97A1C4(v9, v17 + v15);
  v19 = (v17 + v16);
  *v19 = a1;
  v19[1] = a2;
  sub_21C822ECC(0, 0, v12, &unk_21CBB5B30, v17);
}

uint64_t sub_21C9722E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21CB858B4();
  v6[5] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_21C972384, v8, v7);
}

uint64_t sub_21C972384()
{
  type metadata accessor for PMEditGroupView(0);
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  v0[8] = sub_21CB82134();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_21C97249C;
  v3 = v0[3];
  v2 = v0[4];

  return sub_21C97F14C(v3, v2);
}

uint64_t sub_21C97249C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21C97BCC0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21C97BCCC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21C9725B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for PMEditGroupView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_21C97A15C(a4, v11, type metadata accessor for PMEditGroupView);
  sub_21CB858B4();

  v16 = sub_21CB858A4();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_21C97A1C4(v11, v19 + v17);
  v21 = v19 + v18;
  *v21 = a1;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  sub_21C822ECC(0, 0, v14, &unk_21CBB5B20, v19);
}

uint64_t sub_21C9727C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 88) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  sub_21CB858B4();
  *(v7 + 40) = sub_21CB858A4();
  v9 = sub_21CB85874();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return MEMORY[0x2822009F8](sub_21C972860, v9, v8);
}

uint64_t sub_21C972860()
{
  type metadata accessor for PMEditGroupView(0);
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  *(v0 + 64) = sub_21CB82134();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21C97297C;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 88);

  return sub_21C97F914(v3, v2, v4);
}

uint64_t sub_21C97297C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21C972A98;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21C835BC4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21C972A98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C972B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = sub_21CB858B4();
  v3[10] = sub_21CB858A4();
  v3[11] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x2822009F8](sub_21C972C04, v5, v4);
}

uint64_t sub_21C972C04()
{
  v1 = v0[7];
  v2 = v0[6];
  swift_getKeyPath(a0_34);
  swift_getKeyPath(byte_21CBB5AD8);

  v3 = sub_21CB81DA4();
  v5 = v4;
  v6 = sub_21C94BA9C(v4, v2, v1);

  v8 = *(*v5 + 16);
  if (v8 < v6)
  {
    __break(1u);
  }

  else
  {
    sub_21CB65440(v6, v8);
    v3(v0 + 2, 0);

    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_21C972D5C;

    return sub_21C980418();
  }

  return result;
}

uint64_t sub_21C972D5C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_21C972F80;
  }

  else
  {
    v5 = sub_21C972E98;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C972E98()
{

  v1 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C972F1C, v1, v0);
}

uint64_t sub_21C972F1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C972F80()
{

  v1 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C973004, v1, v0);
}

uint64_t sub_21C973004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C973068@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2C08, &qword_21CBB5A98);
  MEMORY[0x28223BE20](v19);
  v20 = &v16 - v2;
  v3 = type metadata accessor for PMEditGroupView(0);
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2C10, &unk_21CBB5AA0);
  v18 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  sub_21CB82134();
  sub_21C97E780();

  sub_21CB81ED4();
  v11 = sub_21CB81F14();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  sub_21C97A15C(v1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupView);
  v12 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v13 = swift_allocObject();
  sub_21C97A1C4(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  sub_21CB84D94();
  v14 = v18;
  (*(v18 + 16))(v20, v10, v8);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF2C18, &qword_27CDF2C10, &unk_21CBB5AA0, MEMORY[0x277CDF028]);
  sub_21CB83494();
  return (*(v14 + 8))(v10, v8);
}

uint64_t sub_21C9734F4()
{
  v0 = sub_21CB81024();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21CB83834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v9 - 8);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  type metadata accessor for PMEditGroupView(0);
  sub_21C728D50(v16);
  (*(v3 + 104))(v13, *MEMORY[0x277CE0558], v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_21C6EDBAC(v16, v8, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v13, &v8[v17], &qword_27CDEC390, &qword_21CBA40E0);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_21C6EDBAC(v8, v27, &qword_27CDEC390, &qword_21CBA40E0);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v19 = v26;
      (*(v3 + 32))(v26, &v8[v17], v2);
      sub_21C97ACD0(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v20 = v27;
      sub_21CB85574();
      v21 = *(v3 + 8);
      v21(v19, v2);
      sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
      v21(v20, v2);
      sub_21C6EA794(v8, &qword_27CDEC390, &qword_21CBA40E0);
      goto LABEL_8;
    }

    sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v3 + 8))(v27, v2);
    goto LABEL_6;
  }

  sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_21C6EA794(v8, &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_8;
  }

  sub_21C6EA794(v8, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_8:
  v22 = v28;
  sub_21CB81014();
  v23 = sub_21CB81004();
  (*(v29 + 8))(v22, v30);
  return v23;
}

uint64_t sub_21C973A38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B70, &qword_21CBB53A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21C973B5C(&v6 - v2);
  v4 = sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0, MEMORY[0x277CDDF68]);
  MEMORY[0x21CF131E0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21C973B5C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B98, &unk_21CBB9270);
  MEMORY[0x28223BE20](v44);
  v43 = &v34 - v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F90, &unk_21CBB2DE0);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v34 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F98, &unk_21CBB9280);
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v34 = &v34 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA0, &unk_21CBB2DF0);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = sub_21CB83604();
  MEMORY[0x28223BE20](v13 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v16 = &v34 - v15;
  sub_21CB835D4();
  v46 = v1;
  type metadata accessor for PMPlatformRoleButton(0);
  sub_21C97ACD0(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  sub_21CB82194();
  type metadata accessor for PMEditGroupView(0);
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  sub_21CB82134();
  swift_getKeyPath(byte_21CBB53A8);
  swift_getKeyPath(byte_21CBB53D0);
  sub_21CB81DB4();

  if (v47 == 1)
  {
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
    sub_21C94B6AC();
    v17 = v34;
    sub_21CB82194();
    v18 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280, MEMORY[0x277CDD7A8]);
    v19 = v36;
    v20 = v39;
    sub_21CB82784();
    (*(v35 + 8))(v17, v20);
    v47 = v20;
    v48 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = v38;
    v23 = v41;
    MEMORY[0x21CF131E0](v19, v41, OpaqueTypeConformance2);
    v24 = v42;
    (*(v3 + 16))(v9, v22, v42);
    (*(v3 + 56))(v9, 0, 1, v24);
    v47 = v23;
    v48 = OpaqueTypeConformance2;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v9, v24, v25);
    sub_21C6EA794(v9, &qword_27CDF1FA8, &unk_21CBB9290);
    (*(v3 + 8))(v22, v24);
    (*(v37 + 8))(v19, v23);
  }

  else
  {
    v26 = v42;
    (*(v3 + 56))(v9, 1, 1, v42);
    v27 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280, MEMORY[0x277CDD7A8]);
    v47 = v39;
    v48 = v27;
    v28 = swift_getOpaqueTypeConformance2();
    v47 = v41;
    v48 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v9, v26, v29);
    sub_21C6EA794(v9, &qword_27CDF1FA8, &unk_21CBB9290);
  }

  v30 = v43;
  v31 = *(v44 + 48);
  v32 = v40;
  (*(v14 + 16))(v43, v16, v40);
  sub_21C76BBC4(v12, &v30[v31]);
  sub_21CB83394();
  sub_21C6EA794(v12, &qword_27CDF1FA8, &unk_21CBB9290);
  return (*(v14 + 8))(v16, v32);
}

uint64_t sub_21C97431C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a5@<X8>)
{
  v22 = a3;
  v24 = a2;
  v23 = a1;
  v21[1] = a5;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = v21 - v11;
  swift_getKeyPath(byte_21CBB5928, v10);
  swift_getKeyPath(aH_74);
  sub_21CB81DB4();

  v36 = v25[0];
  v37 = v25[1];
  v38 = v26;
  v13 = v29;
  v14 = v30;
  v33 = v31;
  v34 = v32;
  v35 = v28;
  if (v27)
  {
    v28 = v35;
    v31 = v33;
    v32 = v34;

    sub_21C6EA794(v25, &qword_27CDECC50, &unk_21CBB52A0);
  }

  else
  {
    v27 = 0;
    v28 = v35;
    v31 = v33;
    v32 = v34;
    sub_21C6EA794(v25, &qword_27CDECC50, &unk_21CBB52A0);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v12, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21CBA0690;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_21C7C0050();
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  v17 = sub_21CB85594();
  v19 = v18;

  *&v25[0] = v17;
  *(&v25[0] + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B00, &qword_21CBB5340);
  sub_21C97A23C();
  sub_21C71F3FC();
  sub_21CB84754();
}

void sub_21C97473C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a5@<X8>)
{
  v30 = a2;
  v27 = a3;
  v28 = a5;
  v29 = a1;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBB58C0, v7);
  swift_getKeyPath(byte_21CBB58E8);
  sub_21CB81DB4();

  if (v31 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v39;
    [v39 safari_isOrContainsNetworkUnavailableError];
  }

  else
  {
    v10 = 0;
  }

  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;

  (*(v6 + 8))(v9, v5);
  v31 = v11;
  v32 = v13;
  v14 = sub_21C71F3FC();
  v15 = sub_21CB84054();
  v25[1] = v16;
  v26 = v15;
  v18 = v17;
  v20 = v19;
  swift_getKeyPath(byte_21CBB58C0);
  swift_getKeyPath(byte_21CBB58E8);
  sub_21CB81DB4();

  v21 = v31;
  v39 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B08, &qword_21CBB5348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
  v23 = sub_21C97A23C();
  v31 = v22;
  v32 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277CE1428];
  v34 = MEMORY[0x277CE0BD8];
  v35 = v23;
  v36 = v14;
  v37 = MEMORY[0x277CE1410];
  v38 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v24 = v26;
  sub_21CB84724();
  sub_21C74A72C(v24, v18, v20 & 1);
}

void sub_21C974B2C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a5@<X8>)
{
  v36 = a2;
  v33 = a3;
  v34 = a5;
  v35 = a1;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(asc_21CBB5858, v7);
  swift_getKeyPath(asc_21CBB5880);
  sub_21CB81DB4();

  if (v37 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v45;
    [v45 safari_isOrContainsNetworkUnavailableError];
  }

  else
  {
    v10 = 0;
  }

  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;

  (*(v6 + 8))(v9, v5);
  v37 = v11;
  v38 = v13;
  v14 = sub_21C71F3FC();
  v15 = sub_21CB84054();
  v31 = v16;
  v32 = v15;
  v18 = v17;
  swift_getKeyPath(asc_21CBB5858, v19);
  swift_getKeyPath(asc_21CBB5880);
  sub_21CB81DB4();

  v20 = v37;
  v45 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B10, &qword_21CBB5350);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B08, &qword_21CBB5348);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
  v25 = sub_21C97A23C();
  v37 = v24;
  v38 = MEMORY[0x277D837D0];
  v39 = MEMORY[0x277CE1428];
  v40 = MEMORY[0x277CE0BD8];
  v41 = v25;
  v42 = v14;
  v43 = MEMORY[0x277CE1410];
  v44 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v37 = v23;
  v38 = v21;
  v39 = v22;
  v40 = OpaqueTypeConformance2;
  v41 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v31;
  v28 = v32;
  sub_21CB84724();
  sub_21C74A72C(v28, v29, v18 & 1);
}

void sub_21C974F90(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a5@<X8>)
{
  v47 = a2;
  v44 = a3;
  v45 = a5;
  v46 = a1;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBB57E0, v7);
  swift_getKeyPath(aH_76);
  sub_21CB81DB4();

  if (v48 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v56;
    [v56 safari_isOrContainsNetworkUnavailableError];
  }

  else
  {
    v10 = 0;
  }

  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;

  (*(v6 + 8))(v9, v5);
  v48 = v11;
  v49 = v13;
  v14 = sub_21C71F3FC();
  v15 = MEMORY[0x277D837D0];
  v16 = sub_21CB84054();
  v42 = v17;
  v43 = v16;
  v40 = v18;
  v41 = v19;
  swift_getKeyPath(byte_21CBB57E0);
  swift_getKeyPath(aH_76);
  sub_21CB81DB4();

  v39 = v48;
  v56 = v48;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B20, &qword_21CBB5360);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B18, &qword_21CBB5358);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B10, &qword_21CBB5350);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B08, &qword_21CBB5348);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
  v26 = sub_21C97A23C();
  v48 = v25;
  v49 = v15;
  v27 = MEMORY[0x277CE0BD8];
  v50 = MEMORY[0x277CE1428];
  v51 = MEMORY[0x277CE0BD8];
  v52 = v26;
  v53 = v14;
  v28 = MEMORY[0x277CE0BC8];
  v54 = MEMORY[0x277CE1410];
  v55 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v48 = v24;
  v49 = v20;
  v50 = v21;
  v51 = OpaqueTypeConformance2;
  v52 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v48 = v23;
  v49 = v20;
  v50 = v21;
  v51 = v31;
  v52 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
  v48 = v37;
  v49 = v22;
  v50 = v27;
  v51 = v32;
  v52 = v33;
  v53 = v28;
  swift_getOpaqueTypeConformance2();
  LOBYTE(v28) = v40;
  v35 = v42;
  v34 = v43;
  sub_21CB84724();
  sub_21C74A72C(v34, v35, v28 & 1);
}

uint64_t sub_21C97551C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  type metadata accessor for PMEditGroupView(0);
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  sub_21CB82134();
  sub_21C97A15C(a1, v8, type metadata accessor for PMSharingGroup);
  swift_getKeyPath(aP_59);
  swift_getKeyPath(a0_33);
  sub_21C97A15C(v8, v5, type metadata accessor for PMSharingGroup);

  sub_21CB81DC4();
  sub_21C981DE8();

  return sub_21C979EE8(v8);
}

uint64_t sub_21C9756BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMEditGroupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81F04();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21C97A15C(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21C97A1C4(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21C97AB80;
  v17[1] = v15;
  return result;
}

uint64_t sub_21C9758BC(uint64_t a1)
{
  v2 = type metadata accessor for PMEditGroupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  sub_21CB82134();
  v9 = sub_21C9801C8();

  if ((v9 & 1) == 0)
  {
    return (*(a1 + *(v2 + 20)))(0);
  }

  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_21C97A15C(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupView);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21C97A1C4(v5, v13 + v12);
  sub_21C822ECC(0, 0, v8, &unk_21CBB59D8, v13);
}

uint64_t sub_21C975B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21C975BD4, v6, v5);
}

uint64_t sub_21C975BD4()
{
  v0[6] = type metadata accessor for PMEditGroupView(0);
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  v0[7] = sub_21CB82134();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_21C975CE8;

  return sub_21C980418();
}

uint64_t sub_21C975CE8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_21C975E84;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_21C975E04;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21C975E04()
{
  v1 = v0[6];
  v2 = v0[2];

  (*(v2 + *(v1 + 20)))(0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_21C975E84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C975EF4@<X0>(uint64_t a2@<X8>)
{
  sub_21CB82234();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v5 = *MEMORY[0x277CDF438];
  v6 = sub_21CB82064();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath(asc_21CBB59A0);
  *v3 = result;
  return result;
}

uint64_t sub_21C975FCC(uint64_t a1, const char *a2, const char *a3)
{
  type metadata accessor for PMEditGroupView(0);
  type metadata accessor for PMEditGroupViewModel(0);
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
  sub_21CB82134();
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);
  return sub_21CB81DC4();
}

__n128 sub_21C9760D0@<Q0>(uint64_t a3@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *&v25[0] = v8;
  *(&v25[0] + 1) = v10;
  sub_21C71F3FC();
  v11 = sub_21CB84054();
  v13 = v12;
  LOBYTE(v4) = v14;
  sub_21CB84A64();
  v15 = sub_21CB83FB4();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_21C74A72C(v11, v13, v4 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  v22 = v25[5];
  *(a3 + 96) = v25[4];
  *(a3 + 112) = v22;
  *(a3 + 128) = v25[6];
  v23 = v25[1];
  *(a3 + 32) = v25[0];
  *(a3 + 48) = v23;
  result = v25[3];
  *(a3 + 64) = v25[2];
  *(a3 + 80) = result;
  return result;
}

uint64_t sub_21C9762D4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBB5928, v5);
  swift_getKeyPath(aH_74);
  sub_21CB81DB4();

  v29 = v18[0];
  v30 = v18[1];
  v31 = v19;
  v9 = v22;
  v8 = v23;
  v26 = v24;
  v27 = v25;
  v28 = v21;
  if (v20)
  {
    v21 = v28;
    v24 = v26;
    v25 = v27;

    sub_21C6EA794(v18, &qword_27CDECC50, &unk_21CBB52A0);
  }

  else
  {
    v20 = 0;
    v21 = v28;
    v24 = v26;
    v25 = v27;
    sub_21C6EA794(v18, &qword_27CDECC50, &unk_21CBB52A0);
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21C7C0050();
  *(v10 + 32) = v9;
  *(v10 + 40) = v8;
  v11 = sub_21CB85594();
  v13 = v12;

  *&v18[0] = v11;
  *(&v18[0] + 1) = v13;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_21C9765C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v52 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v43 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v51 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = v43 - v17;
  MEMORY[0x28223BE20](v18);
  v45 = v43 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v43 - v21;
  sub_21CB81014();
  sub_21CB81014();
  v23 = sub_21CB80FF4();
  v25 = v24;
  v26 = *(v8 + 8);
  v43[2] = v8 + 8;
  v44 = v7;
  v26(v10, v7);
  v26(v13, v7);
  v53 = v23;
  v54 = v25;
  sub_21CB81ED4();
  v27 = sub_21CB81F14();
  v28 = *(v27 - 8);
  v43[0] = *(v28 + 56);
  v43[1] = v28 + 56;
  (v43[0])(v6, 0, 1, v27);
  v29 = swift_allocObject();
  v30 = v49;
  v29[2] = v48;
  v29[3] = v30;
  v29[4] = v50;
  sub_21C71F3FC();

  sub_21CB84DC4();
  sub_21CB81014();
  v31 = sub_21CB81004();
  v33 = v32;
  v26(v13, v44);
  v53 = v31;
  v54 = v33;
  sub_21CB81EF4();
  (v43[0])(v6, 0, 1, v27);
  v34 = v45;
  sub_21CB84DC4();
  v36 = v46;
  v35 = v47;
  v37 = *(v46 + 16);
  v37(v47, v22, v14);
  v38 = v51;
  v37(v51, v34, v14);
  v39 = v52;
  v37(v52, v35, v14);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v37(&v39[*(v40 + 48)], v38, v14);
  v41 = *(v36 + 8);
  v41(v34, v14);
  v41(v22, v14);
  v41(v38, v14);
  return (v41)(v35, v14);
}

uint64_t sub_21C976AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_21CB858B4();
  v6[5] = sub_21CB858A4();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_21C976B70;

  return sub_21C980DEC();
}

uint64_t sub_21C976B70()
{
  *(*v1 + 56) = v0;

  v3 = sub_21CB85874();
  if (v0)
  {
    v4 = sub_21C976D3C;
  }

  else
  {
    v4 = sub_21C976CCC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21C976CCC()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21C976D3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C976DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C976ECC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v10[0] = v6;
  v10[1] = v8;
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21C976FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v53 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_21CB81024();
  v46 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v52 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v51 = v43 - v16;
  MEMORY[0x28223BE20](v17);
  v48 = v43 - v18;
  MEMORY[0x28223BE20](v19);
  v44 = v43 - v20;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  v24 = *(v9 + 8);
  v45 = v9 + 8;
  v47 = v24;
  v24(v11, v8);
  v54 = v21;
  v55 = v23;
  sub_21CB81ED4();
  v25 = sub_21CB81F14();
  v26 = *(v25 - 8);
  v43[0] = *(v26 + 56);
  v43[1] = v26 + 56;
  (v43[0])(v7, 0, 1, v25);
  v27 = swift_allocObject();
  v28 = v49;
  v29 = v50;
  v27[2] = a1;
  v27[3] = v28;
  v27[4] = v29;
  sub_21C71F3FC();

  v30 = v44;
  sub_21CB84DC4();
  sub_21CB81014();
  v31 = sub_21CB81004();
  v33 = v32;
  v47(v11, v46);
  v54 = v31;
  v55 = v33;
  sub_21CB81EF4();
  (v43[0])(v7, 0, 1, v25);
  v34 = v48;
  sub_21CB84DC4();
  v35 = *(v13 + 16);
  v36 = v51;
  v37 = v30;
  v35(v51, v30, v12);
  v38 = v52;
  v35(v52, v34, v12);
  v39 = v53;
  v35(v53, v36, v12);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v35(&v39[*(v40 + 48)], v38, v12);
  v41 = *(v13 + 8);
  v41(v34, v12);
  v41(v37, v12);
  v41(v38, v12);
  return (v41)(v36, v12);
}

uint64_t sub_21C9774A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21CB858B4();

  v13 = sub_21CB858A4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  sub_21C822ECC(0, 0, v11, a5, v14);
}

uint64_t sub_21C9775E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_21CB858B4();
  v6[5] = sub_21CB858A4();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_21C977694;

  return sub_21C98165C();
}

uint64_t sub_21C977694()
{
  *(*v1 + 56) = v0;

  v3 = sub_21CB85874();
  if (v0)
  {
    v4 = sub_21C97BCC4;
  }

  else
  {
    v4 = sub_21C97BCB0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21C9777F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C97791C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a4;
  v30 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_21CB81014();
  sub_21CB81014();
  v17 = sub_21CB80FF4();
  v19 = v18;
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  v31 = v17;
  v32 = v19;
  sub_21CB81ED4();
  v21 = sub_21CB81F14();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  v22 = swift_allocObject();
  v23 = v28;
  v24 = v29;
  v22[2] = a1;
  v22[3] = v23;
  v22[4] = a3;
  v22[5] = v24;
  sub_21C71F3FC();

  v25 = v24;
  return sub_21CB84DC4();
}

uint64_t sub_21C977BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  type metadata accessor for PMSharingGroup(0);
  v7[35] = swift_task_alloc();
  sub_21CB858B4();
  v7[36] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v7[37] = v9;
  v7[38] = v8;

  return MEMORY[0x2822009F8](sub_21C977C68, v9, v8);
}

uint64_t sub_21C977C68()
{
  result = sub_21C97ECC0();
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = -v2;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(result + 16);
      v9 = v8 >= v4;
      v10 = v8 - v4;
      if (!v9)
      {
        v10 = 0;
      }

      v11 = (v6 + 112 * v4++);
      while (1)
      {
        if (!v10)
        {
          __break(1u);
          return result;
        }

        v12 = v11[3];
        v13 = v11[4];
        v14 = v11[6];
        *(v0 + 96) = v11[5];
        *(v0 + 112) = v14;
        v15 = v11[1];
        v16 = v11[2];
        *(v0 + 16) = *v11;
        *(v0 + 32) = v15;
        *(v0 + 64) = v12;
        *(v0 + 80) = v13;
        *(v0 + 48) = v16;
        if ((*(v0 + 96) & 1) == 0)
        {
          break;
        }

        --v10;
        ++v4;
        v11 += 7;
        if (v5 + v4 == 1)
        {
          goto LABEL_17;
        }
      }

      v17 = result;
      sub_21C7A33F0(v0 + 16, v0 + 128);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21C7B10A0(0, *(v7 + 16) + 1, 1);
      }

      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      result = v17;
      if (v19 >= v18 >> 1)
      {
        sub_21C7B10A0((v18 > 1), v19 + 1, 1);
        result = v17;
      }

      *(v7 + 16) = v19 + 1;
      v20 = (v7 + 112 * v19);
      v21 = *(v0 + 16);
      v22 = *(v0 + 48);
      v20[3] = *(v0 + 32);
      v20[4] = v22;
      v20[2] = v21;
      v23 = *(v0 + 64);
      v24 = *(v0 + 80);
      v25 = *(v0 + 112);
      v20[7] = *(v0 + 96);
      v20[8] = v25;
      v20[5] = v23;
      v20[6] = v24;
    }

    while (v5 + v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v26 = *(v7 + 16);
  if (v26)
  {
    v43 = v0;
    sub_21C7B0C0C(0, v26, 0);
    v27 = 0;
    v28 = v3;
    v29 = *(v3 + 16);
    v30 = 16 * v29;
    do
    {
      v31 = v7;
      v33 = *(v7 + v27 + 96);
      v32 = *(v7 + v27 + 104);
      v34 = *(v28 + 24);
      v35 = v29 + 1;

      if (v29 >= v34 >> 1)
      {
        sub_21C7B0C0C((v34 > 1), v35, 1);
      }

      *(v28 + 16) = v35;
      v36 = v28 + v30;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      v30 += 16;
      v27 += 112;
      ++v29;
      --v26;
      v7 = v31;
    }

    while (v26);

    v0 = v43;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  *(v0 + 312) = v28;
  v37 = *(v0 + 280);
  v38 = [objc_opt_self() sharedStore];
  swift_getKeyPath(aP_59);
  swift_getKeyPath(a0_33);
  sub_21CB81DB4();

  sub_21CB85B64();
  sub_21C979EE8(v37);
  v39 = sub_21CB85584();

  v40 = [v38 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID_isForAlreadyExitedGroup_];

  if (v40)
  {
    v41 = swift_task_alloc();
    *(v0 + 320) = v41;
    *v41 = v0;
    v41[1] = sub_21C978094;

    return sub_21C980DEC();
  }

  else
  {

    swift_getKeyPath(asc_21CBB5498);
    swift_getKeyPath(asc_21CBB56F8);
    *(v0 + 336) = 1;

    sub_21CB81DC4();

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_21C978094()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_21C9782FC;
  }

  else
  {
    v5 = sub_21C9781D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C9781D0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);

  v2(v3);
  if (*(v1 + 16))
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 272);
    swift_getKeyPath(asc_21CBB5718);
    swift_getKeyPath(asc_21CBB5740);
    *(v0 + 240) = v4;
    v6 = v5;
    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB5760);
    swift_getKeyPath(byte_21CBB5788);
    *(v0 + 337) = 1;
    v7 = v6;
    sub_21CB81DC4();
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21C9782FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C978374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a4;
  v30 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_21CB81014();
  sub_21CB81014();
  v17 = sub_21CB80FF4();
  v19 = v18;
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  v31 = v17;
  v32 = v19;
  sub_21CB81ED4();
  v21 = sub_21CB81F14();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  v22 = swift_allocObject();
  v23 = v28;
  v24 = v29;
  v22[2] = a1;
  v22[3] = v23;
  v22[4] = a3;
  v22[5] = v24;
  sub_21C71F3FC();

  v25 = v24;
  return sub_21CB84DC4();
}

uint64_t sub_21C9785F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21CB858B4();

  v15 = a4;
  v16 = sub_21CB858A4();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = v15;
  sub_21C822ECC(0, 0, v13, a6, v17);
}

uint64_t sub_21C97874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  type metadata accessor for PMSharingGroup(0);
  v7[35] = swift_task_alloc();
  sub_21CB858B4();
  v7[36] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v7[37] = v9;
  v7[38] = v8;

  return MEMORY[0x2822009F8](sub_21C978814, v9, v8);
}

uint64_t sub_21C978814()
{
  result = sub_21C97ECC0();
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = -v2;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(result + 16);
      v9 = v8 >= v4;
      v10 = v8 - v4;
      if (!v9)
      {
        v10 = 0;
      }

      v11 = (v6 + 112 * v4++);
      while (1)
      {
        if (!v10)
        {
          __break(1u);
          return result;
        }

        v12 = v11[3];
        v13 = v11[4];
        v14 = v11[6];
        *(v0 + 96) = v11[5];
        *(v0 + 112) = v14;
        v15 = v11[1];
        v16 = v11[2];
        *(v0 + 16) = *v11;
        *(v0 + 32) = v15;
        *(v0 + 64) = v12;
        *(v0 + 80) = v13;
        *(v0 + 48) = v16;
        if ((*(v0 + 96) & 1) == 0)
        {
          break;
        }

        --v10;
        ++v4;
        v11 += 7;
        if (v5 + v4 == 1)
        {
          goto LABEL_17;
        }
      }

      v17 = result;
      sub_21C7A33F0(v0 + 16, v0 + 128);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21C7B10A0(0, *(v7 + 16) + 1, 1);
      }

      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      result = v17;
      if (v19 >= v18 >> 1)
      {
        sub_21C7B10A0((v18 > 1), v19 + 1, 1);
        result = v17;
      }

      *(v7 + 16) = v19 + 1;
      v20 = (v7 + 112 * v19);
      v21 = *(v0 + 16);
      v22 = *(v0 + 48);
      v20[3] = *(v0 + 32);
      v20[4] = v22;
      v20[2] = v21;
      v23 = *(v0 + 64);
      v24 = *(v0 + 80);
      v25 = *(v0 + 112);
      v20[7] = *(v0 + 96);
      v20[8] = v25;
      v20[5] = v23;
      v20[6] = v24;
    }

    while (v5 + v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v26 = *(v7 + 16);
  if (v26)
  {
    v43 = v0;
    sub_21C7B0C0C(0, v26, 0);
    v27 = 0;
    v28 = v3;
    v29 = *(v3 + 16);
    v30 = 16 * v29;
    do
    {
      v31 = v7;
      v33 = *(v7 + v27 + 96);
      v32 = *(v7 + v27 + 104);
      v34 = *(v28 + 24);
      v35 = v29 + 1;

      if (v29 >= v34 >> 1)
      {
        sub_21C7B0C0C((v34 > 1), v35, 1);
      }

      *(v28 + 16) = v35;
      v36 = v28 + v30;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      v30 += 16;
      v27 += 112;
      ++v29;
      --v26;
      v7 = v31;
    }

    while (v26);

    v0 = v43;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  *(v0 + 312) = v28;
  v37 = *(v0 + 280);
  v38 = [objc_opt_self() sharedStore];
  swift_getKeyPath(aP_59);
  swift_getKeyPath(a0_33);
  sub_21CB81DB4();

  sub_21CB85B64();
  sub_21C979EE8(v37);
  v39 = sub_21CB85584();

  v40 = [v38 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID_isForAlreadyExitedGroup_];

  if (v40)
  {
    v41 = swift_task_alloc();
    *(v0 + 320) = v41;
    *v41 = v0;
    v41[1] = sub_21C978C40;

    return sub_21C98165C();
  }

  else
  {

    swift_getKeyPath(byte_21CBB54F0);
    swift_getKeyPath(byte_21CBB5618);
    *(v0 + 336) = 1;

    sub_21CB81DC4();

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_21C978C40()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_21C97BCC8;
  }

  else
  {
    v5 = sub_21C978D7C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C978D7C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);

  v2(v3);
  if (*(v1 + 16))
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 272);
    swift_getKeyPath(byte_21CBB5638);
    swift_getKeyPath(byte_21CBB5660);
    *(v0 + 240) = v4;
    v6 = v5;
    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB5680);
    swift_getKeyPath(byte_21CBB56A8);
    *(v0 + 337) = 1;
    v7 = v6;
    sub_21CB81DC4();
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21C978EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C978FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

__n128 sub_21C979128@<Q0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB5928);
  swift_getKeyPath(aH_74);
  sub_21CB81DB4();

  result = v5;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_21C9791D8(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v11[6] = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  swift_getKeyPath(byte_21CBB5928);
  swift_getKeyPath(aH_74);
  v6 = a1[5];
  v10[11] = a1[4];
  v10[12] = v6;
  v10[13] = a1[6];
  v7 = a1[1];
  v10[7] = *a1;
  v10[8] = v7;
  v8 = a1[3];
  v10[9] = a1[2];
  v10[10] = v8;

  sub_21C6EDBAC(v11, v10, &qword_27CDECC50, &unk_21CBB52A0);
  return sub_21CB81DC4();
}

uint64_t sub_21C9792AC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB58C0);
  swift_getKeyPath(byte_21CBB58E8);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C97932C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(byte_21CBB58C0);
  swift_getKeyPath(byte_21CBB58E8);

  v3 = v2;
  return sub_21CB81DC4();
}

uint64_t sub_21C9793A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v56 = a1;
  v58 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AB8, &unk_21CBB5ED0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB0, &unk_21CBB2AA0);
  v15 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v70[3] = type metadata accessor for PMGroupMembersProviderMain();
  v70[4] = &off_282E56208;
  v70[0] = v51;
  v69[3] = type metadata accessor for PMGroupManagerMain();
  v69[4] = &off_282E54DD8;
  v69[0] = a3;
  v22 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__groupName;
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  (*(v19 + 32))(a4 + v22, v21, v18);
  v23 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__nonOwnerGroupMembers;
  *&v62 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB8, &qword_21CBB5E80);
  sub_21CB81D74();
  (*(v15 + 32))(a4 + v23, v17, v50);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__isProcessingChanges;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25 = *(v12 + 32);
  v25(a4 + v24, v14, v11);
  v26 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__removeMemberConfirmationAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v26, v14, v11);
  v27 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__removeMemberMightStillHaveAccessAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v27, v14, v11);
  v28 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__memberToRemove;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC50, &unk_21CBB52A0);
  v29 = v52;
  sub_21CB81D74();
  (*(v53 + 32))(a4 + v28, v29, v54);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToUpdateGroupAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v30, v14, v11);
  v31 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__updateGroupFailureError;
  *&v62 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC0, &qword_21CBB2AB0);
  v33 = v59;
  v54 = v32;
  sub_21CB81D74();
  v34 = *(v61 + 32);
  v61 += 32;
  v35 = v33;
  v36 = v60;
  v34(a4 + v31, v35, v60);
  v37 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__leaveGroupAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v37, v14, v11);
  v38 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToLeaveGroupAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v38, v14, v11);
  v39 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToMoveAccountsOnLeaveAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v39, v14, v11);
  v40 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__leaveGroupFailureError;
  *&v62 = 0;
  v41 = v59;
  sub_21CB81D74();
  v34(a4 + v40, v41, v36);
  v42 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__deleteGroupAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v42, v14, v11);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToDeleteGroupAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v43, v14, v11);
  v44 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToMoveAccountsOnDeleteAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v44, v14, v11);
  v45 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__deleteGroupFailureError;
  *&v62 = 0;
  sub_21CB81D74();
  v34(a4 + v45, v41, v60);
  v46 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__cannotChangePermissionAlertPresented;
  LOBYTE(v62) = 0;
  sub_21CB81D74();
  v25(a4 + v46, v14, v11);
  v47 = v56;
  v48 = v55;
  sub_21C97A15C(v56, v55, type metadata accessor for PMSharingGroup);
  swift_beginAccess();
  sub_21C97A15C(v48, v57, type metadata accessor for PMSharingGroup);
  sub_21CB81D74();
  sub_21C979EE8(v48);
  swift_endAccess();
  sub_21C6E9A08(v70, a4 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_membersProvider);
  sub_21C6E9A08(v69, a4 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_groupManager);
  sub_21C981DE8();
  sub_21C979EE8(v47);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v70);
  return a4;
}

uint64_t sub_21C979CE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v24 = type metadata accessor for PMGroupMembersProviderMain();
  v25 = &off_282E56208;
  v23[0] = a2;
  v21 = v6;
  v22 = &off_282E54DD8;
  v20[0] = a3;
  type metadata accessor for PMEditGroupViewModel(0);
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = sub_21C9793A8(a1, *v11, *v16, v7);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v18;
}

uint64_t sub_21C979EE8(uint64_t a1)
{
  v2 = type metadata accessor for PMSharingGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PMEditGroupView(uint64_t a1)
{
  result = qword_27CDF2AC0;
  if (!qword_27CDF2AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C979FB8(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C97A09C(319);
      if (v3 <= 0x3F)
      {
        sub_21C707F4C(319);
        if (v4 <= 0x3F)
        {
          sub_21C72E434();
          if (v5 <= 0x3F)
          {
            sub_21C7086F8(319);
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

void sub_21C97A09C(uint64_t a1)
{
  if (!qword_27CDF2AD0)
  {
    type metadata accessor for PMEditGroupViewModel(255);
    sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel, &unk_21CBB5E88);
    v1 = sub_21CB82154();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF2AD0);
    }
  }
}

uint64_t sub_21C97A15C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C97A1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMEditGroupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C97A23C()
{
  result = qword_27CDF2B80;
  if (!qword_27CDF2B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AF8, &qword_21CBB5338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B68, &qword_21CBB5398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AF0, &qword_21CBB5330);
    sub_21CB829D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AE8, &qword_21CBB5328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AE0, &qword_21CBB5320);
    sub_21C6EADEC(&qword_27CDF2B60, &qword_27CDF2AE0, &qword_21CBB5320, MEMORY[0x277CDE580]);
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C97ACD0(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B70, &qword_21CBB53A0);
    sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2B80);
  }

  return result;
}

uint64_t sub_21C97A5B8(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C97551C(a1, v4);
}

uint64_t sub_21C97A664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C6F35D0;

  return sub_21C97874C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_76Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_79Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C97A80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C6F35D0;

  return sub_21C977BA0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21C97A91C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C9775E4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_126Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_129Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C97AAA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C976AC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21C97AB80()
{
  v1 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9758BC(v2);
}

uint64_t sub_21C97ABE0(uint64_t a1)
{
  v4 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C975B3C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C97ACD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21C97AD20()
{
  result = qword_27CDF2BC0;
  if (!qword_27CDF2BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2BB8, &qword_21CBB5A08);
    sub_21C97ADAC();
    sub_21C97AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2BC0);
  }

  return result;
}

unint64_t sub_21C97ADAC()
{
  result = qword_27CDF2BC8;
  if (!qword_27CDF2BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2BD0, &qword_21CBB5A10);
    sub_21C97AE64();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2BC8);
  }

  return result;
}

unint64_t sub_21C97AE64()
{
  result = qword_27CDF2BD8;
  if (!qword_27CDF2BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2BE0, &qword_21CBB5A18);
    sub_21C6EADEC(&qword_27CDF2BE8, &qword_27CDF2BF0, &unk_21CBB5A20, &unk_21CBCD680);
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2BD8);
  }

  return result;
}

unint64_t sub_21C97AF48()
{
  result = qword_27CDF2BF8;
  if (!qword_27CDF2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2BF8);
  }

  return result;
}

uint64_t sub_21C97AFA4(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9718E8(a1, v4);
}

uint64_t sub_21C97B014(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9720F0(a1, a2, v6);
}

uint64_t sub_21C97B094(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21C9725B8(a1, a2, a3, v8);
}

uint64_t sub_21C97B11C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21C702EFC;

  return sub_21C972B58(a1, a2, v2);
}

uint64_t sub_21C97B260(uint64_t a1)
{
  v4 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21C6F35D0;

  return sub_21C9727C0(a1, v6, v7, v1 + v5, v9, v10, v11);
}

uint64_t sub_21C97B398(uint64_t a1)
{
  v4 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21C6F35D0;

  return sub_21C9722E8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_21C97B4C8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMEditGroupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C971AD8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_29Tm()
{
  v1 = (type metadata accessor for PMEditGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for PMSharingGroup(0);

  sub_21C70AC30(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C97B804@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMEditGroupView(0);

  return sub_21C9715F4(a1);
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI15PMEditGroupViewV6ActionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_21C97B89C()
{
  result = qword_27CDF2C20;
  if (!qword_27CDF2C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B88, &qword_21CBB5590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B40, &qword_21CBB5380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B38, &qword_21CBB5378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B30, &qword_21CBB5370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B28, &qword_21CBB5368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B20, &qword_21CBB5360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED298, &qword_21CBA6570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B18, &qword_21CBB5358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B10, &qword_21CBB5350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B08, &qword_21CBB5348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
    sub_21C97A23C();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF2C28, &qword_27CDF2B90, &qword_21CBB5598, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2C20);
  }

  return result;
}

void sub_21C97BCD0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = sub_21CB817E4();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81884();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a3, a1, v9);
  v26 = type metadata accessor for PMCredentialPickerHeaderView(0);
  v27 = a3;
  v11 = (a3 + *(v26 + 24));
  type metadata accessor for PMCredentialPickerViewController(0);
  sub_21C97E44C(&unk_27CDF2C30, type metadata accessor for PMCredentialPickerViewController, &protocol conformance descriptor for PMCredentialPickerViewController);
  v12 = a2;
  *v11 = sub_21CB82674();
  v11[1] = v13;
  v14 = sub_21CB816C4();
  v15 = [v14 appleIDAuthorizationRequest];

  if (v15)
  {
    v16 = v9;
    sub_21CB81804();
    v24 = sub_21CB817D4();
    (*(v6 + 8))(v8, v25);
    v17 = sub_21CB816C4();
    v18 = [v17 teamIdentifier];

    if (!v18)
    {
      sub_21CB855C4();
      v18 = sub_21CB85584();
    }

    v19 = sub_21CB816C4();
    v20 = [v19 bundleIdentifier];

    if (!v20)
    {
      sub_21CB855C4();
      v20 = sub_21CB85584();
    }

    v21 = objc_allocWithZone(MEMORY[0x277CF0378]);
    v22 = sub_21CB85584();

    v23 = [v21 initWithAppName:v22 teamIdentifier:v18 bundleIdentifier:v20 authorizationRequest:v15];

    (*(v10 + 8))(a1, v16);
  }

  else
  {
    (*(v10 + 8))(a1, v9);

    v23 = 0;
  }

  *(v27 + *(v26 + 20)) = v23;
}

void sub_21C97C040(uint64_t a1)
{
  sub_21CB81884();
  if (v1 <= 0x3F)
  {
    sub_21C97E3F8(319, &qword_27CDF2C50, sub_21C97C0F8);
    if (v2 <= 0x3F)
    {
      sub_21C97C144(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21C97C0F8()
{
  result = qword_27CDF44E0;
  if (!qword_27CDF44E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF44E0);
  }

  return result;
}

void sub_21C97C144(uint64_t a1)
{
  if (!qword_27CDF2C60)
  {
    type metadata accessor for PMCredentialPickerViewController(255);
    sub_21C97E44C(&unk_27CDF2C30, type metadata accessor for PMCredentialPickerViewController, &protocol conformance descriptor for PMCredentialPickerViewController);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF2C60);
    }
  }
}

double sub_21C97C1F4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB817C4();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81744();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81A04();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21CB817E4();
  v12 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_21CB816A4();
  sub_21CB81874();
  sub_21CB81804();
  sub_21CB816E4();
  v34 = v8;
  sub_21CB81754();
  sub_21C97C62C(v19);
  v37 = v5;
  sub_21CB817F4();
  swift_unknownObjectRelease();
  if (v18 >> 62)
  {
    v20 = sub_21CB85FA4();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = sub_21CB81704();
  v22 = *(v1 + *(type metadata accessor for PMCredentialPickerHeaderView(0) + 20));
  v23 = v22;
  v24 = sub_21CB81724() & (v20 > 1);
  sub_21C716934(v17, a1, &qword_27CDF4600, &qword_21CBB5D00);
  v25 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  (*(v12 + 32))(a1 + v25[5], v14, v31);
  (*(v32 + 32))(a1 + v25[6], v11, v33);
  (*(v35 + 32))(a1 + v25[7], v34, v36);
  (*(v38 + 32))(a1 + v25[8], v37, v39);
  *(a1 + v25[9]) = v20;
  *(a1 + v25[10]) = v21 & 1;
  *(a1 + v25[11]) = v22;
  *(a1 + v25[12]) = v24;
  v26 = v25[13];
  *(a1 + v26) = swift_getKeyPath(byte_21CBB5D08);
  v27 = a1 + v25[14];
  v40 = 0;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  v28 = v43;
  result = *&v42;
  *v27 = v42;
  *(v27 + 16) = v28;
  return result;
}

unint64_t sub_21C97C62C(__n128 a1)
{
  v2 = sub_21CB816A4();
  if (v2 >> 62)
  {
    goto LABEL_7;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v3)
  {
    do
    {
      v4 = sub_21CB816A4();
      v1 = *(v1 + *(type metadata accessor for PMCredentialPickerHeaderView(0) + 24) + 8);
      swift_getKeyPath(aP_62);
      swift_getKeyPath(aP_61);
      sub_21CB81DB4();

      result = v10;
      if ((v4 & 0xC000000000000001) != 0)
      {
        goto LABEL_13;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v10 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      __break(1u);
LABEL_7:
      v6 = sub_21CB85FA4();
    }

    while (v6);
  }

  v7 = sub_21CB816C4();
  v8 = [v7 loginChoices];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF89E0, &qword_21CBB5D88);
  v4 = sub_21CB85824();

  type metadata accessor for PMCredentialPickerHeaderView(0);
  swift_getKeyPath(aP_62);
  swift_getKeyPath(aP_61);
  sub_21CB81DB4();

  result = v10;
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v9 = MEMORY[0x21CF15BD0](result, v4);
    goto LABEL_12;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
  }

  else if (v10 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    v9 = *(v4 + 8 * result + 32);
    swift_unknownObjectRetain();
LABEL_12:

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C97C840@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  v4 = v3 - 8;
  v50 = *(v3 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for PMOsloHeaderContentView(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C97CC48(v11);
  sub_21C97CF54(v8);
  v46 = sub_21CB81734();
  v17 = v16;
  v51 = *(v1 + *(v4 + 52));
  v18 = sub_21CB817B4();
  v20 = v19;
  v21 = sub_21CB813C4();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = v13[7];
  v23 = type metadata accessor for PMOsloBadge(0);
  (*(*(v23 - 8) + 56))(&v15[v22], 1, 1, v23);
  v24 = v13[9];
  v25 = &v15[v13[8]];
  v26 = &v15[v24];
  sub_21C7D3344(v11, v15, &qword_27CDECC98, &unk_21CBCB9B0);
  sub_21C7D3344(v8, &v15[v22], &unk_27CDF2CA0, &unk_21CBA5520);
  *v25 = v46;
  v25[1] = v17;
  *v26 = v18;
  v26[1] = v20;
  LOBYTE(v26) = sub_21CB83D04();
  sub_21C97DA6C();
  sub_21CB81F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v47;
  sub_21C97E4B8(v15, v47, type metadata accessor for PMOsloHeaderContentView);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB0, &qword_21CBA5530) + 36);
  v37 = v35;
  *v36 = v26;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  sub_21C816C58(v15, v38);
  v39 = v2;
  v40 = v48;
  sub_21C97E4B8(v39, v48, type metadata accessor for PMCredentialPickerHeaderContentView);
  v41 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v42 = swift_allocObject();
  sub_21C97E520(v40, v42 + v41);
  v43 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB8, &qword_21CBB5E28) + 36));
  sub_21CB824F4();
  result = sub_21CB858C4();
  *v43 = &unk_21CBB5E20;
  v43[1] = v42;
  return result;
}

uint64_t sub_21C97CC48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_21CB81864();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_21C97E650(v2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21C6EA794(v6, &qword_27CDF4600, &qword_21CBB5D00);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v14 = *MEMORY[0x277CBA810];
    v15 = sub_21CB81824();
    (*(*(v15 - 8) + 104))(v10, v14, v15);
    (*(v8 + 104))(v10, *MEMORY[0x277CBA818], v7);
    sub_21C97E44C(&qword_27CDF2CD8, MEMORY[0x277CBA830], MEMORY[0x277CBA838]);
    LOBYTE(v14) = sub_21CB85574();
    v16 = *(v8 + 8);
    v16(v10, v7);
    if ((v14 & 1) == 0)
    {
      (*(v8 + 16))(v10, v13, v7);
      sub_21CB813B4();
      v16(v13, v7);
      v17 = 0;
      goto LABEL_7;
    }

    v16(v13, v7);
  }

  v17 = 1;
LABEL_7:
  v18 = sub_21CB813C4();
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t sub_21C97CF54@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = sub_21CB817E4();
  v81 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v80 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81864();
  v84 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CD0, &unk_21CBB5E40);
  MEMORY[0x28223BE20](v83);
  v7 = &v73 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = &v73 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v73 - v28;
  v30 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  v31 = *(v30 + 48);
  v85 = v1;
  if ((*(v1 + v31) & 1) == 0)
  {
    v75 = v26;
    v76 = v30;
    v74 = v2;
    v77 = v29;
    sub_21C97E650(v85, v23);
    v37 = v84;
    v38 = *(v84 + 6);
    if (v38(v23, 1, v4) == 1 || (sub_21C97E650(v23, v20), v39 = (*(v37 + 11))(v20, v4), v73 = v17, v40 = v38, v41 = v4, v42 = v39, v43 = *MEMORY[0x277CBA818], (*(v37 + 1))(v20, v41), v44 = v42 == v43, v4 = v41, v38 = v40, v17 = v73, !v44))
    {
      v84 = v23;
      sub_21C97E650(v23, v17);
      sub_21CB81834();
      (*(v37 + 7))(v14, 0, 1, v4);
      v45 = *(v83 + 48);
      sub_21C97E650(v14, v7);
      sub_21C97E650(v17, &v7[v45]);
      if (v38(v7, 1, v4) == 1)
      {
        sub_21C6EA794(v14, &qword_27CDF4600, &qword_21CBB5D00);
        sub_21C6EA794(v17, &qword_27CDF4600, &qword_21CBB5D00);
        if (v38(&v7[v45], 1, v4) == 1)
        {
          sub_21C6EA794(v7, &qword_27CDF4600, &qword_21CBB5D00);
          v23 = v84;
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      v46 = v82;
      sub_21C97E650(v7, v82);
      v83 = v38;
      if (v38(&v7[v45], 1, v4) == 1)
      {
        sub_21C6EA794(v14, &qword_27CDF4600, &qword_21CBB5D00);
        sub_21C6EA794(v17, &qword_27CDF4600, &qword_21CBB5D00);
        (*(v37 + 1))(v46, v4);
        v38 = v83;
LABEL_12:
        sub_21C6EA794(v7, &qword_27CDF2CD0, &unk_21CBB5E40);
        v23 = v84;
        goto LABEL_13;
      }

      v54 = v78;
      (*(v37 + 4))(v78, &v7[v45], v4);
      sub_21C97E44C(&qword_27CDF2CD8, MEMORY[0x277CBA830], MEMORY[0x277CBA838]);
      LODWORD(v73) = sub_21CB85574();
      v55 = *(v37 + 1);
      v55(v54, v4);
      sub_21C6EA794(v14, &qword_27CDF4600, &qword_21CBB5D00);
      sub_21C6EA794(v17, &qword_27CDF4600, &qword_21CBB5D00);
      v55(v82, v4);
      sub_21C6EA794(v7, &qword_27CDF4600, &qword_21CBB5D00);
      v38 = v83;
      v23 = v84;
      if ((v73 & 1) == 0)
      {
LABEL_13:
        v47 = v38(v23, 1, v4);
        v48 = v77;
        if (v47 != 1)
        {
          v49 = v79;
          sub_21C97E650(v23, v79);
          v50 = (*(v37 + 11))(v49, v4);
          if (v50 == *MEMORY[0x277CBA7F8] || (v51 = v50, v50 == *MEMORY[0x277CBA828]))
          {
            (*(v37 + 1))(v49, v4);
          }

          else
          {
            v52 = *MEMORY[0x277CBA820];
            (*(v37 + 1))(v49, v4);
            if (v51 != v52)
            {
              v53 = type metadata accessor for PMOsloBadge(0);
              (*(*(v53 - 8) + 56))(v48, 1, 1, v53);
              sub_21C6EA794(v23, &qword_27CDF4600, &qword_21CBB5D00);
              return sub_21C716934(v48, v86, &unk_27CDF2CA0, &unk_21CBA5520);
            }
          }
        }

        sub_21C6EA794(v23, &qword_27CDF4600, &qword_21CBB5D00);
        v71 = type metadata accessor for PMOsloBadge(0);
        (*(*(v71 - 8) + 56))(v48, 1, 1, v71);
        return sub_21C716934(v48, v86, &unk_27CDF2CA0, &unk_21CBA5520);
      }
    }

LABEL_19:
    sub_21C6EA794(v23, &qword_27CDF4600, &qword_21CBB5D00);
    v56 = v76;
    v58 = v80;
    v57 = v81;
    v59 = v74;
    (*(v81 + 16))(v80, v85 + *(v76 + 20), v74);
    v60 = (*(v57 + 88))(v58, v59);
    if (v60 == *MEMORY[0x277CBA7F0])
    {
      (*(v57 + 8))(v58, v59);
      v61 = (v85 + *(v56 + 56));
      v62 = *(v61 + 2);
      v89 = *v61;
      v90 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
      sub_21CB84D54();
      v63 = v88;
      v48 = v77;
      v64 = v75;
      if (!v88)
      {
        v72 = type metadata accessor for PMOsloBadge(0);
        (*(*(v72 - 8) + 56))(v64, 1, 1, v72);
        goto LABEL_29;
      }

      *v75 = v87;
      *(v64 + 8) = v63;
      v65 = *MEMORY[0x277CBA880];
      v66 = sub_21CB81A04();
      (*(*(v66 - 8) + 104))(v64, v65, v66);
    }

    else
    {
      v48 = v77;
      v64 = v75;
      if (v60 != *MEMORY[0x277CBA7E8])
      {
        v70 = type metadata accessor for PMOsloBadge(0);
        (*(*(v70 - 8) + 56))(v64, 1, 1, v70);
        (*(v57 + 8))(v58, v59);
        goto LABEL_29;
      }

      (*(v57 + 8))(v58, v59);
      v67 = *(v76 + 24);
      v68 = sub_21CB81A04();
      (*(*(v68 - 8) + 16))(v64, v85 + v67, v68);
    }

    v69 = type metadata accessor for PMOsloBadge(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v69 - 8) + 56))(v64, 0, 1, v69);
LABEL_29:
    sub_21C716934(v64, v48, &unk_27CDF2CA0, &unk_21CBA5520);
    return sub_21C716934(v48, v86, &unk_27CDF2CA0, &unk_21CBA5520);
  }

  v32 = type metadata accessor for PMOsloBadge(0);
  v33 = *(*(v32 - 8) + 56);
  v34 = v32;
  v35 = v86;

  return v33(v35, 1, 1, v34);
}

double sub_21C97DA6C()
{
  v1 = v0;
  v2 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  sub_21CB81734();
  v4 = v3;
  sub_21CB817B4();
  v6 = v5;
  if (v4)
  {
  }

  else if (!v5)
  {
    return 0.0;
  }

  if (*(v1 + *(v2 + 36)) >= 2 || *(v1 + *(v2 + 40)) == 1)
  {

    return 16.0;
  }

  if (v6)
  {

    return 0.0;
  }

  return 8.0;
}

uint64_t sub_21C97DB48(uint64_t a1)
{
  v1[26] = a1;
  v2 = sub_21CB817E4();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  sub_21CB858B4();
  v1[30] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[31] = v4;
  v1[32] = v3;

  return MEMORY[0x2822009F8](sub_21C97DC3C, v4, v3);
}

uint64_t sub_21C97DC3C()
{
  if (PMOnboardingShouldShowIconBadge())
  {
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
    *(v0 + 264) = v5;
    (*(v2 + 16))(v1, v4 + *(v5 + 20), v3);
    if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277CBA7F0])
    {
      v6 = *(v0 + 208);
      (*(*(v0 + 224) + 96))(*(v0 + 232), *(v0 + 216));
      v7 = *(v6 + *(v5 + 52));
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v8 = sub_21C81C2FC(v7, *(v0 + 200));
      *(v0 + 272) = v8;

      if (v8)
      {
        v9 = sub_21CB85584();
        *(v0 + 280) = v9;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_21C97DF40;
        v10 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED470, &qword_21CBA6AB8);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_21C82D154;
        *(v0 + 104) = &block_descriptor_18;
        *(v0 + 112) = v10;
        [v8 bundleIDForDomain:v9 completionHandler:v0 + 80];

        return MEMORY[0x282200938](v0 + 16);
      }

      v14 = *(v0 + 208) + *(*(v0 + 264) + 56);
      v15 = *(v14 + 16);
      *(v0 + 144) = *v14;
      *(v0 + 160) = v15;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
      sub_21CB84D64();
    }

    else
    {
      v11 = *(v0 + 232);
      v12 = *(v0 + 216);
      v13 = *(v0 + 224);

      (*(v13 + 8))(v11, v12);
    }
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21C97DF40()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_21C97E048, v2, v1);
}

uint64_t sub_21C97E048()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  v7 = *(v0 + 168);

  v3 = *(v0 + 208) + *(*(v0 + 264) + 56);
  v4 = *(v3 + 16);
  *(v0 + 144) = *v3;
  *(v0 + 160) = v4;
  *(v0 + 184) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D64();

  v5 = *(v0 + 8);

  return v5();
}

id sub_21C97E120(void *a1, id a2)
{
  v2 = a2;
  if (a1)
  {
    if (a2)
    {
      v3 = a1;
      v4 = [objc_msgSend(v2 loginRowDataForLoginChoice_];
      swift_unknownObjectRelease();
      v2 = sub_21CB855C4();

LABEL_6:
    }
  }

  else if (a2)
  {
    v3 = [objc_msgSend(a2 loginRowData)];
    swift_unknownObjectRelease();
    v2 = sub_21CB855C4();
    goto LABEL_6;
  }

  return v2;
}

void sub_21C97E23C(uint64_t a1)
{
  sub_21C97E3F8(319, &qword_27CDF2C78, MEMORY[0x277CBA830]);
  if (v1 <= 0x3F)
  {
    sub_21CB817E4();
    if (v2 <= 0x3F)
    {
      sub_21CB81A04();
      if (v3 <= 0x3F)
      {
        sub_21CB81744();
        if (v4 <= 0x3F)
        {
          sub_21CB817C4();
          if (v5 <= 0x3F)
          {
            sub_21C97E3F8(319, &qword_27CDF2C50, sub_21C97C0F8);
            if (v6 <= 0x3F)
            {
              sub_21C71ED34(319, &unk_27CDF2C80, &qword_27CDEB9F0, &unk_21CBA5AC0, type metadata accessor for PMDependency);
              if (v7 <= 0x3F)
              {
                sub_21C71ED34(319, &qword_27CDF2C90, &unk_27CDED260, &qword_21CBA1C60, MEMORY[0x277CE10B8]);
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

void sub_21C97E3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21C97E44C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C97E4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C97E520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C97E584()
{
  v2 = *(type metadata accessor for PMCredentialPickerHeaderContentView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21C702EFC;

  return sub_21C97DB48(v0 + v3);
}

uint64_t sub_21C97E650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C97E6C0()
{
  result = qword_27CDF2CE0;
  if (!qword_27CDF2CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2CB8, &qword_21CBB5E28);
    sub_21C816E04();
    sub_21C97E44C(&qword_27CDEA598, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2CE0);
  }

  return result;
}

uint64_t sub_21C97E780()
{
  v0 = type metadata accessor for PMSharingGroup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = v24 - v6;
  swift_getKeyPath(byte_21CBB5EE0, v5);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  v8 = *&v7[*(v1 + 32)];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    while (1)
    {
      v11 = *v10;
      v12 = v10[2];
      v68 = v10[1];
      v69 = v12;
      v67 = v11;
      v13 = v10[3];
      v14 = v10[4];
      v15 = v10[6];
      v72 = v10[5];
      v73 = v15;
      v70 = v13;
      v71 = v14;
      v16 = *v10;
      v17 = v10[2];
      v33 = v10[1];
      v34 = v17;
      v32 = v16;
      v18 = v10[3];
      v19 = v10[4];
      v20 = v10[6];
      v37 = v10[5];
      v38 = v20;
      v35 = v18;
      v36 = v19;
      if (v72)
      {
        break;
      }

      v10 += 7;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    sub_21C7A33F0(&v67, &v60);
    v57 = v36;
    v58 = v37;
    v59 = v38;
    v53 = v32;
    v54 = v33;
    v55 = v34;
    v56 = v35;
    v21 = *(&v34 + 1);
  }

  else
  {
LABEL_5:
    v21 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
  }

  sub_21C979EE8(v7);
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  sub_21CB25D9C(&v60);
  sub_21C979EE8(v3);
  v50 = v53;
  v51 = v54;
  v52 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  if (!v21)
  {
    if (!*(&v62 + 1))
    {
      v32 = v53;
      v33 = v54;
      v34 = v55;
      v35 = v56;
      v36 = v57;
      v37 = v58;
      v38 = v59;
      sub_21C6EA794(&v32, &qword_27CDECC50, &unk_21CBB52A0);
      v22 = 1;
      return v22 & 1;
    }

    goto LABEL_11;
  }

  if (!*(&v62 + 1))
  {
LABEL_11:
    v32 = v53;
    v33 = v54;
    *&v34 = v55;
    *(&v34 + 1) = v21;
    v35 = v56;
    v36 = v57;
    v37 = v58;
    v38 = v59;
    v39 = v60;
    v40 = v61;
    v41 = v62;
    v44 = v65;
    v45 = v66;
    v42 = v63;
    v43 = v64;
    sub_21C6EA794(&v32, &qword_27CDF2DB0, &unk_21CBB6428);
    v22 = 0;
    return v22 & 1;
  }

  v24[0] = v60;
  v24[1] = v61;
  v24[2] = v62;
  v24[3] = v63;
  v24[4] = v64;
  v24[5] = v65;
  v24[6] = v66;
  v36 = v64;
  v37 = v65;
  v38 = v66;
  v34 = v62;
  v35 = v63;
  v32 = v60;
  v33 = v61;
  v67 = v53;
  v68 = v54;
  v72 = v58;
  v73 = v59;
  v70 = v56;
  v71 = v57;
  *&v69 = v55;
  *(&v69 + 1) = v21;
  sub_21C983094(&v53, v25);
  sub_21C983094(&v60, v25);
  v22 = sub_21C9DCA4C(&v67, &v32);
  sub_21C6EA794(v24, &qword_27CDECC50, &unk_21CBB52A0);
  sub_21C6EA794(&v60, &qword_27CDECC50, &unk_21CBB52A0);
  sub_21C6EA794(&v53, &qword_27CDECC50, &unk_21CBB52A0);
  v25[0] = v50;
  v25[1] = v51;
  v26 = v52;
  v27 = v21;
  v28 = v46;
  v29 = v47;
  v30 = v48;
  v31 = v49;
  sub_21C6EA794(v25, &qword_27CDECC50, &unk_21CBB52A0);
  return v22 & 1;
}

uint64_t sub_21C97EB48()
{
  swift_getKeyPath(byte_21CBB5F28);
  swift_getKeyPath(byte_21CBB5F50);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C97EBBC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB5F28);
  swift_getKeyPath(byte_21CBB5F50);
  sub_21CB81DB4();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21C97EC3C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB5F28);
  swift_getKeyPath(byte_21CBB5F50);

  return sub_21CB81DC4();
}

uint64_t sub_21C97ECC0()
{
  v0 = type metadata accessor for PMSharingGroup(0);
  *&v1 = MEMORY[0x28223BE20](v0 - 8).n128_u64[0];
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBB5EE0, v1);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  sub_21CB25D9C(&v26);
  sub_21C979EE8(v3);
  v25[2] = v28;
  v25[3] = v29;
  v25[4] = v30;
  v25[5] = v31;
  v25[6] = v32;
  v25[0] = v26;
  v25[1] = v27;
  v4 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[6] = v32;
    sub_21C7A33F0(v24, &v20);
    v5 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21CA4F7F8(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_21CA4F7F8((v6 > 1), v7 + 1, 1, v5);
    }

    v19 = v28;
    v8 = v26;
    v17 = v26;
    v18 = v27;
    v22 = v31;
    v23 = v32;
    v20 = v29;
    v21 = v30;
    *(v5 + 2) = v7 + 1;
    v9 = &v5[112 * v7];
    v10 = v18;
    v11 = v19;
    *(v9 + 2) = v8;
    *(v9 + 3) = v10;
    *(v9 + 8) = v11;
    *(v9 + 9) = v4;
    v12 = v20;
    v13 = v21;
    v14 = v23;
    *(v9 + 7) = v22;
    *(v9 + 8) = v14;
    *(v9 + 5) = v12;
    *(v9 + 6) = v13;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  sub_21C6EA794(v25, &qword_27CDECC50, &unk_21CBB52A0);
  swift_getKeyPath(aP_63);
  swift_getKeyPath(aP_64);
  sub_21CB81DB4();

  v15 = *&v24[0];
  *&v24[0] = v5;
  sub_21CAE8E18(v15);
  return *&v24[0];
}

uint64_t sub_21C97EF2C(uint64_t a1)
{
  v28 = a1;
  result = sub_21C97ECC0();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 32;
    v27 = *(result + 16);
    v24 = v3 - 1;
    v6 = MEMORY[0x277D84F90];
    v25 = result + 32;
    do
    {
      v26 = v6;
      v7 = (v5 + 112 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v9 = *v7;
        v10 = v7[2];
        v32 = v7[1];
        v33 = v10;
        v31 = v9;
        v11 = v7[3];
        v12 = v7[4];
        v13 = v7[6];
        v36 = v7[5];
        v37 = v13;
        v34 = v11;
        v35 = v12;
        v4 = v8 + 1;
        v30 = v10;
        MEMORY[0x28223BE20](result);
        v23[2] = &v30;
        sub_21C7A33F0(&v31, &v29);

        v14 = sub_21C8A13AC(sub_21C7AE838, v23, v28);

        if (v14)
        {
          break;
        }

        result = sub_21C7A344C(&v31);
        v7 += 7;
        ++v8;
        if (v27 == v4)
        {
          v6 = v26;
          goto LABEL_15;
        }
      }

      v6 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = v6;
      if ((result & 1) == 0)
      {
        result = sub_21C7B10A0(0, *(v6 + 16) + 1, 1);
        v6 = v38;
      }

      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_21C7B10A0((v15 > 1), v16 + 1, 1);
        v6 = v38;
      }

      *(v6 + 16) = v16 + 1;
      v17 = (v6 + 112 * v16);
      v18 = v31;
      v19 = v33;
      v17[3] = v32;
      v17[4] = v19;
      v17[2] = v18;
      v20 = v34;
      v21 = v35;
      v22 = v37;
      v17[7] = v36;
      v17[8] = v22;
      v17[5] = v20;
      v17[6] = v21;
      v5 = v25;
    }

    while (v24 != v8);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:

  return v6;
}

uint64_t sub_21C97F14C(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  v3[53] = type metadata accessor for PMSharingGroup(0);
  v3[54] = swift_task_alloc();
  v3[55] = sub_21CB858B4();
  v3[56] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[57] = v5;
  v3[58] = v4;

  return MEMORY[0x2822009F8](sub_21C97F21C, v5, v4);
}

uint64_t sub_21C97F21C()
{
  v17 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 400);
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  v5 = *(v1 + *(v2 + 24));

  sub_21C979EE8(v1);
  *(v0 + 384) = v4;
  *(v0 + 392) = v3;
  *(swift_task_alloc() + 16) = v0 + 384;
  sub_21C969088(sub_21C983074, v5, v16);
  *(v0 + 472) = 0;

  v6 = v16[3];
  *(v0 + 48) = v16[2];
  *(v0 + 64) = v6;
  v7 = v16[5];
  *(v0 + 80) = v16[4];
  *(v0 + 96) = v7;
  *(v0 + 112) = v16[6];
  v8 = v16[1];
  *(v0 + 16) = v16[0];
  *(v0 + 32) = v8;
  if (*(v0 + 56))
  {

    swift_getKeyPath(byte_21CBB6330);
    swift_getKeyPath(asc_21CBB6358);
    v9 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v9;
    *(v0 + 224) = *(v0 + 112);
    v10 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v10;
    v11 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v11;
    sub_21C983094(v0 + 16, v0 + 240);

    sub_21CB81DC4();
    swift_getKeyPath(asc_21CBB63C8);
    swift_getKeyPath(byte_21CBB63F0);
    *(v0 + 520) = 1;

    sub_21CB81DC4();
    sub_21C6EA794(v0 + 16, &qword_27CDECC50, &unk_21CBB52A0);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    *(v0 + 480) = sub_21CB858A4();
    v15 = sub_21CB85874();
    *(v0 + 488) = v15;
    *(v0 + 496) = v14;

    return MEMORY[0x2822009F8](sub_21C97F4D4, v15, v14);
  }
}

uint64_t sub_21C97F4D4()
{
  v1 = v0[51];
  v2 = v0[50];
  swift_getKeyPath(aP_63);
  swift_getKeyPath(aP_64);

  v3 = sub_21CB81DA4();
  v5 = v4;
  v6 = sub_21C94BA9C(v4, v2, v1);

  v8 = *(*v5 + 16);
  if (v8 < v6)
  {
    __break(1u);
  }

  else
  {
    sub_21CB65440(v6, v8);
    v3(v0 + 44, 0);

    v9 = swift_task_alloc();
    v0[63] = v9;
    *v9 = v0;
    v9[1] = sub_21C97F634;

    return sub_21C980418();
  }

  return result;
}

uint64_t sub_21C97F634()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_21C97F840;
  }

  else
  {
    v5 = sub_21C97F770;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C97F770()
{

  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  return MEMORY[0x2822009F8](sub_21C97F7D4, v1, v2);
}

uint64_t sub_21C97F7D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C97F840()
{

  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  return MEMORY[0x2822009F8](sub_21C97F8A4, v1, v2);
}

uint64_t sub_21C97F8A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C97F914(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 153) = a3;
  *(v4 + 56) = a1;
  v5 = sub_21CB85C44();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  type metadata accessor for PMSharingGroup(0);
  *(v4 + 104) = swift_task_alloc();
  sub_21CB858B4();
  *(v4 + 112) = sub_21CB858A4();
  v7 = sub_21CB85874();
  *(v4 + 120) = v7;
  *(v4 + 128) = v6;

  return MEMORY[0x2822009F8](sub_21C97FA3C, v7, v6);
}

uint64_t sub_21C97FA3C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v19 = *(v0 + 64);
  v5 = *(v0 + 56);
  v6 = *(v0 + 153);
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  (*(v4 + 16))(v1, v2, v3);
  sub_21C979EE8(v2);
  LOBYTE(v2) = sub_21C9D92A8(v5, v19, v6);
  (*(v4 + 8))(v1, v3);
  if ((v2 & 1) == 0)
  {

    swift_getKeyPath(a8_26);
    swift_getKeyPath(byte_21CBB5FE0);
    *(v0 + 152) = 1;

    sub_21CB81DC4();
    goto LABEL_12;
  }

  swift_getKeyPath(aP_63);
  swift_getKeyPath(aP_64);
  sub_21CB81DB4();

  v7 = *(v0 + 48);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_10:

LABEL_12:

    v12 = *(v0 + 8);

    return v12();
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(v7 + v9 + 64) == *(v0 + 56) && *(v7 + v9 + 72) == *(v0 + 64);
    if (v11 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    ++v10;
    v9 += 112;
    if (v8 == v10)
    {
      goto LABEL_10;
    }
  }

  swift_getKeyPath(aP_63);
  swift_getKeyPath(aP_64);
  v14 = sub_21CB81DA4();
  v16 = v15;
  v17 = *v15;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((result & 1) == 0)
  {
    result = sub_21CAA1154(v17);
    v17 = result;
    *v16 = result;
  }

  if (v10 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v17 + v9 + 113) = *(v0 + 153);
    v14(v0 + 16, 0);

    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    v18[1] = sub_21C97FDA8;

    return sub_21C980418();
  }

  return result;
}

uint64_t sub_21C97FDA8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_21C97FF58;
  }

  else
  {
    v5 = sub_21C97FEE4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C97FEE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C97FF58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C97FFF8()
{
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();
}

__n128 sub_21C980070@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath(byte_21CBB6330);
  swift_getKeyPath(asc_21CBB6358);
  sub_21CB81DB4();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_21C9801C8()
{
  v0 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v0);
  v2 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v6 = v18 - v5;
  swift_getKeyPath(byte_21CBB5EE0, v4);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  v7 = &v6[*(v0 + 20)];
  v9 = *v7;
  v8 = *(v7 + 1);

  sub_21C979EE8(v6);
  swift_getKeyPath(byte_21CBB5F28);
  swift_getKeyPath(byte_21CBB5F50);
  sub_21CB81DB4();

  if (v9 == v18[0] && v8 == v18[1])
  {

    goto LABEL_8;
  }

  v11 = sub_21CB86344();

  if (v11)
  {
LABEL_8:
    swift_getKeyPath(byte_21CBB5EE0);
    swift_getKeyPath(byte_21CBB5F08);
    sub_21CB81DB4();

    v13 = *&v2[*(v0 + 24)];

    sub_21C979EE8(v2);
    v14 = sub_21CB00F0C(v13);

    v15 = sub_21C97ECC0();
    v16 = sub_21CB00F0C(v15);

    LOBYTE(v13) = sub_21C7A261C(v14, v16);

    v12 = v13 ^ 1;
    return v12 & 1;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_21C980418()
{
  v1[7] = v0;
  v2 = sub_21CB85C44();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for PMSharingGroup(0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_21CB858B4();
  v1[14] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[15] = v4;
  v1[16] = v3;

  return MEMORY[0x2822009F8](sub_21C980550, v4, v3);
}

uint64_t sub_21C980550()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  swift_getKeyPath(byte_21CBB6008);
  swift_getKeyPath(byte_21CBB6030);
  *(v0 + 168) = 1;

  sub_21CB81DC4();
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_groupManager), *(v4 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_groupManager + 24));
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  (*(v3 + 16))(v2, v1, v5);
  sub_21C979EE8(v1);
  swift_getKeyPath(byte_21CBB5F28);
  swift_getKeyPath(byte_21CBB5F50);
  sub_21CB81DB4();

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  *(v0 + 136) = v7;
  v8 = sub_21C97ECC0();
  *(v0 + 144) = v8;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_21C98073C;
  v10 = *(v0 + 104);
  v11 = *(v0 + 80);

  return sub_21C9D6BA8(v10, v11, v6, v7, v8);
}

uint64_t sub_21C98073C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  v3 = v2[16];
  v4 = v2[15];
  if (v0)
  {
    v5 = sub_21C980A44;
  }

  else
  {
    v5 = sub_21C980904;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C980904()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21C94B4A8(v1, v2);

  sub_21CB81DC4();
  sub_21C981DE8();
  sub_21C979EE8(v1);
  swift_getKeyPath(byte_21CBB6008);
  swift_getKeyPath(byte_21CBB6030);
  *(v0 + 172) = 0;

  sub_21CB81DC4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21C980A44()
{
  v18 = v0;
  v1 = *(v0 + 160);

  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 40);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v4 = sub_21CB81C84();
    __swift_project_value_buffer(v4, qword_27CE186E0);
    v5 = v3;
    v6 = sub_21CB81C64();
    v7 = sub_21CB85AF4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = sub_21CB855C4();
      v13 = v12;

      v14 = sub_21C98E004(v11, v13, &v17);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, v6, v7, "Failed to save changes to a shared passwords group. %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x21CF16D90](v9, -1, -1);
      MEMORY[0x21CF16D90](v8, -1, -1);
    }

    swift_getKeyPath(byte_21CBB62E8);
    swift_getKeyPath(byte_21CBB6310);
    *(v0 + 170) = 1;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB62A0);
    swift_getKeyPath(byte_21CBB62C8);
    *(v0 + 48) = v5;

    v5;
    sub_21CB81DC4();
    sub_21C981DE8();
    swift_willThrow();

    swift_getKeyPath(byte_21CBB6008);
    swift_getKeyPath(byte_21CBB6030);
    *(v0 + 171) = 0;

    sub_21CB81DC4();
  }

  else
  {

    swift_getKeyPath(byte_21CBB6008);
    swift_getKeyPath(byte_21CBB6030);
    *(v0 + 169) = 0;

    sub_21CB81DC4();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21C980DEC()
{
  v1[5] = v0;
  v2 = sub_21CB85C44();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for PMSharingGroup(0);
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21C980F0C, v4, v3);
}

uint64_t sub_21C980F0C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  swift_getKeyPath(byte_21CBB6008);
  swift_getKeyPath(byte_21CBB6030);
  *(v0 + 120) = 1;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  (*(v4 + 16))(v1, v2, v3);
  sub_21C979EE8(v2);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_21C98108C;
  v6 = *(v0 + 64);

  return sub_21C9DA3BC(v6);
}

uint64_t sub_21C98108C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[12];
  v4 = v2[11];
  if (v0)
  {
    v5 = sub_21C9812E4;
  }

  else
  {
    v5 = sub_21C981214;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C981214()
{

  swift_getKeyPath(byte_21CBB6008);
  swift_getKeyPath(byte_21CBB6030);
  *(v0 + 124) = 0;

  sub_21CB81DC4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C9812E4()
{
  v18 = v0;
  v1 = *(v0 + 112);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v4 = sub_21CB81C84();
    __swift_project_value_buffer(v4, qword_27CE186E0);
    v5 = v3;
    v6 = sub_21CB81C64();
    v7 = sub_21CB85AF4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = sub_21CB855C4();
      v13 = v12;

      v14 = sub_21C98E004(v11, v13, &v17);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, v6, v7, "Failed to leave a shared passwords group. %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x21CF16D90](v9, -1, -1);
      MEMORY[0x21CF16D90](v8, -1, -1);
    }

    swift_getKeyPath(asc_21CBB6138);
    swift_getKeyPath(byte_21CBB6160);
    *(v0 + 122) = 1;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB6180);
    swift_getKeyPath(byte_21CBB61A8);
    *(v0 + 32) = v5;

    v5;
    sub_21CB81DC4();
    swift_willThrow();

    swift_getKeyPath(byte_21CBB6008);
    swift_getKeyPath(byte_21CBB6030);
    *(v0 + 123) = 0;

    sub_21CB81DC4();
  }

  else
  {

    swift_getKeyPath(byte_21CBB6008);
    swift_getKeyPath(byte_21CBB6030);
    *(v0 + 121) = 0;

    sub_21CB81DC4();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21C98165C()
{
  v1[5] = v0;
  v2 = sub_21CB85C44();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for PMSharingGroup(0);
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21C98177C, v4, v3);
}

uint64_t sub_21C98177C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  swift_getKeyPath(byte_21CBB6008);
  swift_getKeyPath(byte_21CBB6030);
  *(v0 + 120) = 1;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  (*(v4 + 16))(v1, v2, v3);
  sub_21C979EE8(v2);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_21C9818FC;
  v6 = *(v0 + 64);

  return sub_21C9DACD0(v6);
}

uint64_t sub_21C9818FC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[12];
  v4 = v2[11];
  if (v0)
  {
    v5 = sub_21C981A84;
  }

  else
  {
    v5 = sub_21C983104;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C981A84()
{
  v18 = v0;
  v1 = *(v0 + 112);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v4 = sub_21CB81C84();
    __swift_project_value_buffer(v4, qword_27CE186E0);
    v5 = v3;
    v6 = sub_21CB81C64();
    v7 = sub_21CB85AF4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = sub_21CB855C4();
      v13 = v12;

      v14 = sub_21C98E004(v11, v13, &v17);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, v6, v7, "Failed to delete a shared passwords group. %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x21CF16D90](v9, -1, -1);
      MEMORY[0x21CF16D90](v8, -1, -1);
    }

    swift_getKeyPath(byte_21CBB6058);
    swift_getKeyPath(byte_21CBB6080);
    *(v0 + 122) = 1;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB60A0);
    swift_getKeyPath(asc_21CBB60C8);
    *(v0 + 32) = v5;

    v5;
    sub_21CB81DC4();
    swift_willThrow();

    swift_getKeyPath(byte_21CBB6008);
    swift_getKeyPath(byte_21CBB6030);
    *(v0 + 123) = 0;

    sub_21CB81DC4();
  }

  else
  {

    swift_getKeyPath(byte_21CBB6008);
    swift_getKeyPath(byte_21CBB6030);
    *(v0 + 121) = 0;

    sub_21CB81DC4();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21C981DE8()
{
  v0 = type metadata accessor for PMSharingGroup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v32[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v32[-v6];
  swift_getKeyPath(byte_21CBB5EE0, v5);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  v8 = &v7[*(v1 + 28)];
  v10 = *v8;
  v9 = v8[1];

  sub_21C979EE8(v7);
  swift_getKeyPath(byte_21CBB5F28);
  swift_getKeyPath(byte_21CBB5F50);
  *&v33 = v10;
  *(&v33 + 1) = v9;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();

  v11 = *&v3[*(v1 + 32)];

  result = sub_21C979EE8(v3);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = *(v11 + 16);
      v17 = (v11 + 32 + 112 * v14);
      v18 = v14;
      while (1)
      {
        if (v18 >= v16)
        {
          __break(1u);
          return result;
        }

        v19 = v17[3];
        v20 = v17[4];
        v21 = v17[6];
        v38 = v17[5];
        v22 = v17[1];
        v23 = v17[2];
        v33 = *v17;
        v34 = v22;
        v39 = v21;
        v36 = v19;
        v37 = v20;
        v35 = v23;
        v14 = v18 + 1;
        if (BYTE1(v38) != 2)
        {
          break;
        }

        v17 += 7;
        ++v18;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }

      sub_21C7A33F0(&v33, v32);
      result = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      if ((result & 1) == 0)
      {
        result = sub_21C7B10A0(0, *(v15 + 16) + 1, 1);
        v15 = v40;
      }

      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_21C7B10A0((v24 > 1), v25 + 1, 1);
        v15 = v40;
      }

      *(v15 + 16) = v25 + 1;
      v26 = (v15 + 112 * v25);
      v27 = v33;
      v28 = v35;
      v26[3] = v34;
      v26[4] = v28;
      v26[2] = v27;
      v29 = v36;
      v30 = v37;
      v31 = v39;
      v26[7] = v38;
      v26[8] = v31;
      v26[5] = v29;
      v26[6] = v30;
    }

    while (v13 - 1 != v18);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_15:

  swift_getKeyPath(aP_63);
  swift_getKeyPath(aP_64);
  *&v33 = v15;

  return sub_21CB81DC4();
}

uint64_t sub_21C982108(uint64_t *a1)
{
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21CB81DB4();
}

uint64_t sub_21C982184(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C94B4A8(a1, &v10 - v7);
  swift_getKeyPath(byte_21CBB5EE0);
  swift_getKeyPath(byte_21CBB5F08);
  sub_21C94B4A8(v8, v5);

  sub_21CB81DC4();
  sub_21C981DE8();
  return sub_21C979EE8(v8);
}

uint64_t sub_21C982284()
{
  swift_getKeyPath(aP_63);
  swift_getKeyPath(aP_64);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C982348(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *a1;
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  v8 = v7;
  return sub_21CB81DC4();
}

uint64_t sub_21C9823C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21C97ECC0();
  v9 = *(v8 + 16);
  if (v9)
  {
    v41 = v6;
    v42 = a1;
    v43 = a2;
    v44 = v2;
    *&v55 = MEMORY[0x277D84F90];
    sub_21C7B11CC(0, v9, 0);
    v10 = v55;
    v11 = (v8 + 72);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      *&v55 = v10;
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_21C7B11CC((v15 > 1), v14 + 1, 1);
        v10 = v55;
      }

      *(v10 + 16) = v14 + 1;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v11 += 14;
      --v9;
    }

    while (v9);

    a2 = v43;
    v3 = v44;
    v6 = v41;
    a1 = v42;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *&v55 = a1;
  *(&v55 + 1) = a2;
  MEMORY[0x28223BE20](v17);
  *(&v40 - 2) = &v55;
  v18 = sub_21C8A13AC(sub_21C983108, (&v40 - 4), v10);

  if ((v18 & 1) == 0)
  {
    swift_getKeyPath(byte_21CBB5EE0);
    swift_getKeyPath(byte_21CBB5F08);
    v20 = v45;
    sub_21CB81DB4();

    v21 = *(v20 + *(v6 + 24));

    v22 = sub_21C979EE8(v20);
    *&v47[0] = a1;
    *(&v47[0] + 1) = a2;
    MEMORY[0x28223BE20](v22);
    *(&v40 - 2) = v47;
    sub_21C969088(sub_21C983124, v21, &v48);

    v59 = v52;
    v60 = v53;
    v61 = v54;
    v57 = v50;
    v58 = v51;
    v55 = v48;
    v56 = v49;
    v66 = v48;
    v67 = v49;
    v23 = *(&v50 + 1);
    v68 = v50;
    v64 = v53;
    v65 = v54;
    v62 = v51;
    v63 = v52;
    if (*(&v50 + 1))
    {
      swift_getKeyPath(aP_63);
      swift_getKeyPath(aP_64);
      v47[4] = v59;
      v47[5] = v60;
      v47[6] = v61;
      v47[0] = v55;
      v47[1] = v56;
      v47[2] = v57;
      v47[3] = v58;
      sub_21C7A33F0(v47, v46);
      v24 = sub_21CB81DA4();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_21CA4F7F8(0, *(v27 + 2) + 1, 1, v27);
        *v26 = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_21CA4F7F8((v29 > 1), v30 + 1, 1, v27);
        *v26 = v27;
      }

      *(v27 + 2) = v30 + 1;
      v31 = &v27[112 * v30];
      v32 = v67;
      v33 = v68;
      *(v31 + 2) = v66;
      *(v31 + 3) = v32;
      *(v31 + 8) = v33;
      *(v31 + 9) = v23;
      v34 = v62;
      v35 = v63;
      v36 = v65;
      *(v31 + 7) = v64;
      *(v31 + 8) = v36;
      *(v31 + 5) = v34;
      *(v31 + 6) = v35;
      v24(v46, 0);

      return sub_21C6EA794(&v55, &qword_27CDECC50, &unk_21CBB52A0);
    }

    else
    {
      __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_membersProvider), *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_membersProvider + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB028, &unk_21CBB3650);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21CBA0690;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v38 = sub_21CA0EBC8(inited, 1u);
      swift_setDeallocating();
      sub_21C953B50(inited + 32);
      swift_getKeyPath(aP_63);
      swift_getKeyPath(aP_64);
      v39 = sub_21CB81DA4();
      sub_21CAE8E18(v38);
      v39(&v48, 0);
    }
  }

  return result;
}

uint64_t sub_21C9828BC()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__group;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DA8, &unk_21CBB5EC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_membersProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_groupManager));
  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__groupName;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__nonOwnerGroupMembers;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB0, &unk_21CBB2AA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__isProcessingChanges;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__removeMemberConfirmationAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__removeMemberMightStillHaveAccessAlertPresented, v8);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__memberToRemove;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AB8, &unk_21CBB5ED0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToUpdateGroupAlertPresented, v8);
  v12 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__updateGroupFailureError;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__leaveGroupAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToLeaveGroupAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToMoveAccountsOnLeaveAlertPresented, v8);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__leaveGroupFailureError, v13);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__deleteGroupAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToDeleteGroupAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToMoveAccountsOnDeleteAlertPresented, v8);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__deleteGroupFailureError, v13);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__cannotChangePermissionAlertPresented, v8);
  return v0;
}

uint64_t sub_21C982C34()
{
  sub_21C9828BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMEditGroupViewModel(uint64_t a1)
{
  result = qword_27CDF2D88;
  if (!qword_27CDF2D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C982CE0(uint64_t a1)
{
  sub_21C982F20(319);
  if (v1 <= 0x3F)
  {
    sub_21C6F039C(319, &qword_27CDEAEC8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21C6EA5CC(319, &qword_27CDF2118, &qword_27CDF1EB8, &qword_21CBB5E80);
      if (v3 <= 0x3F)
      {
        sub_21C6F039C(319, &qword_27CDEAEE0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_21C6EA5CC(319, &qword_27CDF2DA0, &qword_27CDECC50, &unk_21CBB52A0);
          if (v5 <= 0x3F)
          {
            sub_21C6EA5CC(319, &qword_27CDF2128, &qword_27CDF1EC0, &qword_21CBB2AB0);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_21C982F20(uint64_t a1)
{
  if (!qword_27CDF2D98)
  {
    type metadata accessor for PMSharingGroup(255);
    v1 = sub_21CB81DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF2D98);
    }
  }
}

uint64_t sub_21C982F78@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aP_63);
  swift_getKeyPath(aP_64);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C982FF8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aP_63);
  swift_getKeyPath(aP_64);

  return sub_21CB81DC4();
}

uint64_t sub_21C983094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC50, &unk_21CBB52A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C983140@<X0>(void *a1@<X8>)
{
  swift_getKeyPath(byte_21CBB6670);
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);
  sub_21CB810D4();

  *a1 = *(v1 + 16);
}

uint64_t sub_21C9831F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB6670);
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

uint64_t sub_21C9832A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB6670);
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);
  sub_21CB810C4();
}

uint64_t sub_21C98336C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aX_45);
  v5 = v1;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL;
  swift_beginAccess();
  return sub_21C984954(v5 + v3, a1);
}

uint64_t sub_21C983434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_45);
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL;
  swift_beginAccess();
  return sub_21C984954(v3 + v4, a2);
}

uint64_t sub_21C9834FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_21C984954(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath(aX_45);
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);
  sub_21CB810C4();

  return sub_21C9848EC(v6);
}

uint64_t sub_21C98362C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL;
  swift_beginAccess();
  sub_21C9849E0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C983698()
{

  sub_21C9848EC(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL);
  v1 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t PMAppDetailsWindowView.init(model:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for PMAppDetailsWindowViewModel(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  sub_21CB81104();
  *(v2 + 16) = v1;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);

  return sub_21CB850A4();
}

__n128 PMAppDetailsWindowView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD0, &qword_21CBB6438);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  sub_21C983AC8();
  KeyPath = swift_getKeyPath(byte_21CBB6440);
  sub_21CB85084();
  v7 = *&v15[0];
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD8, &qword_21CBB6468) + 36));
  *v8 = KeyPath;
  v8[1] = sub_21C984120;
  v8[2] = v7;
  sub_21CB85094();
  swift_getKeyPath(aX_45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DE0, &qword_21CBB6498);
  sub_21CB850B4();

  (*(v3 + 8))(v5, v2);
  v9 = swift_getKeyPath(aP_65);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DE8, &qword_21CBB64C8) + 36);
  *v10 = v9;
  *(v10 + 8) = 1;
  sub_21CB85214();
  sub_21CB82AC4();
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DF0, &qword_21CBB64D0) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_21C983AC8()
{
  v0 = type metadata accessor for PMWiFiDetailsWindowView(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2E88, &qword_21CBB6668);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for PMAppAccountDetailsWindowView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD0, &qword_21CBB6438);
  sub_21CB85084();
  v9 = v17;
  swift_getKeyPath(byte_21CBB6670);
  v17 = v9;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);
  sub_21CB810D4();

  v10 = *(v9 + 16);

  if (v10 < 0)
  {
    v14 = *(v0 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PMWiFiDetailsWindowModel(0);
    sub_21C984850(&qword_27CDF2E90, type metadata accessor for PMWiFiDetailsWindowModel, &protocol conformance descriptor for PMWiFiDetailsWindowModel);

    sub_21CB850A4();
    sub_21C984A50(v2, v5, type metadata accessor for PMWiFiDetailsWindowView);
    swift_storeEnumTagMultiPayload();
    sub_21C984850(&qword_27CDF2E70, type metadata accessor for PMAppAccountDetailsWindowView, &protocol conformance descriptor for PMAppAccountDetailsWindowView);
    sub_21C984850(&qword_27CDF2E78, type metadata accessor for PMWiFiDetailsWindowView, &protocol conformance descriptor for PMWiFiDetailsWindowView);
    sub_21CB83494();

    v12 = v2;
    v13 = type metadata accessor for PMWiFiDetailsWindowView;
  }

  else
  {
    v11 = *(v6 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PMAppAccountDetailsWindowModel(0);
    sub_21C984850(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);

    sub_21CB850A4();
    sub_21C984A50(v8, v5, type metadata accessor for PMAppAccountDetailsWindowView);
    swift_storeEnumTagMultiPayload();
    sub_21C984850(&qword_27CDF2E70, type metadata accessor for PMAppAccountDetailsWindowView, &protocol conformance descriptor for PMAppAccountDetailsWindowView);
    sub_21C984850(&qword_27CDF2E78, type metadata accessor for PMWiFiDetailsWindowView, &protocol conformance descriptor for PMWiFiDetailsWindowView);
    sub_21CB83494();

    v12 = v8;
    v13 = type metadata accessor for PMAppAccountDetailsWindowView;
  }

  return sub_21C984AB8(v12, v13);
}

uint64_t sub_21C983F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  v7 = sub_21CB80BE4();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  swift_getKeyPath(aX_45);
  v11 = a2;
  v12 = v6;
  v13 = a2;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel, &unk_21CBB6640);
  sub_21CB810C4();

  return sub_21C9848EC(v6);
}

void sub_21C984150(uint64_t a1)
{
  sub_21C704B88(319);
  if (v1 <= 0x3F)
  {
    sub_21CB81114();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21C984250(uint64_t a1)
{
  sub_21C9842BC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21C9842BC(uint64_t a1)
{
  if (!qword_27CDF2E18)
  {
    type metadata accessor for PMAppDetailsWindowViewModel(255);
    v1 = sub_21CB850C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF2E18);
    }
  }
}

uint64_t sub_21C984320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C98437C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_21C984400()
{
  result = qword_27CDF2E20;
  if (!qword_27CDF2E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2DF0, &qword_21CBB64D0);
    sub_21C98448C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E20);
  }

  return result;
}

unint64_t sub_21C98448C()
{
  result = qword_27CDF2E28;
  if (!qword_27CDF2E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2DE8, &qword_21CBB64C8);
    sub_21C9846E8(&qword_27CDF2E30, &qword_27CDF2E38, &qword_21CBB6618, sub_21C98455C);
    sub_21C984898(&qword_27CDED5C8, qword_27CDED5D0, &unk_21CBA6FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E28);
  }

  return result;
}

unint64_t sub_21C98455C()
{
  result = qword_27CDF2E40;
  if (!qword_27CDF2E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2DE0, &qword_21CBB6498);
    sub_21C984618();
    sub_21C984850(&qword_27CDF00E0, type metadata accessor for PMSafariViewModifier, &unk_21CBC9A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E40);
  }

  return result;
}

unint64_t sub_21C984618()
{
  result = qword_27CDF2E48;
  if (!qword_27CDF2E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2DD8, &qword_21CBB6468);
    sub_21C9846E8(&qword_27CDF2E50, &qword_27CDF2E58, &qword_21CBB6620, sub_21C984764);
    sub_21C984898(&qword_27CDF00D0, &qword_27CDF00D8, &unk_21CBB6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E48);
  }

  return result;
}

uint64_t sub_21C9846E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C984764()
{
  result = qword_27CDF2E60;
  if (!qword_27CDF2E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2E68, &qword_21CBB6628);
    sub_21C984850(&qword_27CDF2E70, type metadata accessor for PMAppAccountDetailsWindowView, &protocol conformance descriptor for PMAppAccountDetailsWindowView);
    sub_21C984850(&qword_27CDF2E78, type metadata accessor for PMWiFiDetailsWindowView, &protocol conformance descriptor for PMWiFiDetailsWindowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E60);
  }

  return result;
}

uint64_t sub_21C984850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C984898(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C9848EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C984954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9849E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C984A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C984AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C984B18()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_21C984B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C984BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C984C40@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2E98, &qword_21CBB67B8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EA0, &qword_21CBB67C0);
  MEMORY[0x28223BE20](v17);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EA8, &qword_21CBB67C8);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v17 - v10;
  swift_getKeyPath(byte_21CBB67D0, v9);
  swift_getKeyPath(byte_21CBB67F8);
  sub_21CB81DB4();

  v12 = *(v20 + 16);

  if (v12 || (swift_getKeyPath(aP_67), swift_getKeyPath(aP_66), sub_21CB81DB4(), , , v19 == 1))
  {
    sub_21C984FCC(v1, v4);
    sub_21C987FA0();
    sub_21CB845C4();
    v13 = sub_21C6EA794(v4, &qword_27CDF2E98, &qword_21CBB67B8);
    MEMORY[0x28223BE20](v13);
    *(&v17 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EE0, &qword_21CBB6828);
    sub_21C988198();
    sub_21C6EADEC(&qword_27CDF2ED8, &qword_27CDF2EE0, &qword_21CBB6828, MEMORY[0x277CE14C0]);
    sub_21CB84154();
    sub_21C6EA794(v6, &qword_27CDF2EA0, &qword_21CBB67C0);
    v14 = v18;
    (*(v8 + 32))(v18, v11, v7);
    v15 = 0;
  }

  else
  {
    v15 = 1;
    v14 = v18;
  }

  return (*(v8 + 56))(v14, v15, 1, v7);
}

uint64_t sub_21C984FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EB8, &qword_21CBB6818);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = *(a1 + 8);
  v23 = *(a1 + 24);
  v24[0] = v7;
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = *(a1 + 32);
  *(v8 + 57) = *(a1 + 41);
  v18 = a1;
  sub_21C6EDBAC(v24, v20, &qword_27CDF2F08, &unk_21CBB68A0);
  sub_21C6EDBAC(&v23, v20, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21C6EDBAC(&v21, v20, &qword_27CDF2F10, &unk_21CBB68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1800, &qword_21CBB6960);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v11 = type metadata accessor for PMAdapativeStackLabeledContentStyle(255);
  v12 = sub_21C942698();
  v13 = sub_21C74419C(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle, &unk_21CBCBE04);
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  swift_getOpaqueTypeConformance2();
  sub_21CB84DA4();
  v19 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  v14[1] = *a1;
  v14[2] = v15;
  v14[3] = *(a1 + 32);
  *(v14 + 57) = *(a1 + 41);
  sub_21C6EDBAC(v24, v20, &qword_27CDF2F08, &unk_21CBB68A0);
  sub_21C6EDBAC(&v23, v20, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21C6EDBAC(&v21, v20, &qword_27CDF2F10, &unk_21CBB68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EC0, &qword_21CBB6820);
  sub_21C6EADEC(&qword_27CDF2EC8, &qword_27CDF2EB8, &qword_21CBB6818, MEMORY[0x277CDF028]);
  sub_21C9880C0();
  sub_21CB848E4();

  return (*(v4 + 8))(v6, v3);
}

void sub_21C985390(_BYTE *a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PMAccount(0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    swift_getKeyPath(aP_67, v6);
    swift_getKeyPath(aP_66);
    sub_21CB81DB4();

    if (v11[15] == 1)
    {
      swift_getKeyPath(byte_21CBB68C0);
      swift_getKeyPath(byte_21CBB68E8);
      sub_21CB81DB4();

      sub_21C988314(&v8[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7194E0(v8, type metadata accessor for PMAccount);
        sub_21C7194E0(v4, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v9 = *v4;
        v10 = [v9 credentialTypes];

        sub_21C7194E0(v8, type metadata accessor for PMAccount);
        if (v10 == 2)
        {
          return;
        }
      }

      swift_getKeyPath(byte_21CBB6910);
      swift_getKeyPath(byte_21CBB6938);
      v11[14] = 1;

      sub_21CB81DC4();
    }
  }
}

uint64_t sub_21C985600(uint64_t a1)
{
  v2 = type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  v14 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
  v9 = sub_21CB839C4();
  v15 = MEMORY[0x277CE0BD8];
  v16 = v9;
  v17 = MEMORY[0x277CE0BC8];
  v18 = MEMORY[0x277CE0758];
  swift_getOpaqueTypeConformance2();
  sub_21CB825D4();
  *v4 = sub_21CB83034();
  v4[8] = 1;
  v10 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  sub_21C942698();
  sub_21C74419C(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle, &unk_21CBCBE04);
  sub_21CB844C4();
  sub_21C7194E0(v4, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21C9858A0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EE0, &qword_21CBB6828);
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v10[-v6];
  swift_getKeyPath(aP_67, v5);
  swift_getKeyPath(aP_66);
  sub_21CB81DB4();

  if (v10[15])
  {
    v8 = 1;
  }

  else
  {
    sub_21C9859F4(1, v7);
    sub_21C9884EC(v7, a2);
    v8 = 0;
  }

  return (*(v4 + 56))(a2, v8, 1, v3);
}

uint64_t sub_21C9859F4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v105 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v105);
  v106 = (&v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v104);
  v107 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_21CB84FB4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v122 = &v92 - v8;
  v9 = type metadata accessor for PMEditableWebsite(0);
  v93 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v92 - v12;
  v95 = v13;
  MEMORY[0x28223BE20](v14);
  v97 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  MEMORY[0x28223BE20](v16 - 8);
  v108 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v109 = &v92 - v19;
  MEMORY[0x28223BE20](v20);
  v118 = &v92 - v21;
  MEMORY[0x28223BE20](v22);
  v119 = &v92 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EF0, &qword_21CBB6880);
  v98 = *(v103 - 1);
  MEMORY[0x28223BE20](v103);
  v25 = &v92 - v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EF8, &unk_21CBB6888);
  MEMORY[0x28223BE20](v102);
  v27 = &v92 - v26;
  v28 = sub_21CB81024();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v120 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v92 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F00, &qword_21CBB6898);
  MEMORY[0x28223BE20](v33 - 8);
  v117 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v121 = &v92 - v36;
  v131 = *(v2 + 8);
  v37 = *(&v131 + 1);
  swift_getKeyPath(byte_21CBB67D0);
  swift_getKeyPath(byte_21CBB67F8);
  v115 = v37;
  sub_21CB81DB4();

  v38 = *(v128 + 16);

  v101 = v28;
  v100 = v29;
  v99 = v31;
  if (v38 == 1 || (a1 & 1) != 0)
  {
    sub_21CB81014();
    v44 = sub_21CB81004();
    v46 = v45;
    (*(v29 + 8))(v31, v28);
    v130 = *(v2 + 24);
    v128 = *(v2 + 40);
    v129 = *(v2 + 56);
    v47 = swift_allocObject();
    v48 = *(v2 + 16);
    v47[1] = *v2;
    v47[2] = v48;
    v47[3] = *(v2 + 32);
    *(v47 + 57) = *(v2 + 41);
    v123[0] = v44;
    v123[1] = v46;
    MEMORY[0x28223BE20](v47);
    *(&v92 - 4) = v123;
    *(&v92 - 3) = 0x697261666173;
    v91 = 0xE600000000000000;
    sub_21C6EDBAC(&v131, &v125, &qword_27CDF2F08, &unk_21CBB68A0);
    sub_21C6EDBAC(&v130, &v125, &unk_27CDF40F0, &qword_21CBA2500);
    sub_21C6EDBAC(&v128, &v125, &qword_27CDF2F10, &unk_21CBB68B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    v49 = v114;
    sub_21CB84DA4();

    v50 = v120;
    v41 = v116;
    (*(v120 + 16))(v27, v49, v116);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    sub_21C98825C();
    sub_21CB83494();
    (*(v50 + 8))(v49, v41);
  }

  else
  {
    swift_getKeyPath(byte_21CBB67D0);
    swift_getKeyPath(byte_21CBB67F8);
    sub_21CB81DB4();

    v123[0] = v128;
    v130 = *(v2 + 24);
    v128 = *(v2 + 40);
    v129 = *(v2 + 56);
    v39 = swift_allocObject();
    v40 = *(v2 + 16);
    v39[1] = *v2;
    v39[2] = v40;
    v39[3] = *(v2 + 32);
    *(v39 + 57) = *(v2 + 41);
    sub_21C6EDBAC(&v131, &v125, &qword_27CDF2F08, &unk_21CBB68A0);
    sub_21C6EDBAC(&v130, &v125, &unk_27CDF40F0, &qword_21CBA2500);
    sub_21C6EDBAC(&v128, &v125, &qword_27CDF2F10, &unk_21CBB68B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE100, &unk_21CBA95B0);
    sub_21CB80E34();
    sub_21C6EADEC(&qword_27CDEE1F0, &qword_27CDEE100, &unk_21CBA95B0, MEMORY[0x277D83980]);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    v91 = sub_21C74419C(&qword_27CDEE228, type metadata accessor for PMEditableWebsite, &unk_21CBC90A4);
    v41 = v116;
    sub_21CB84FF4();
    v42 = v98;
    v43 = v103;
    (*(v98 + 16))(v27, v25, v103);
    swift_storeEnumTagMultiPayload();
    sub_21C98825C();
    sub_21CB83494();
    (*(v42 + 8))(v25, v43);
  }

  swift_getKeyPath(byte_21CBB67D0);
  swift_getKeyPath(byte_21CBB67F8);
  sub_21CB81DB4();

  v51 = *(v125 + 16);

  if (v51 == 1 || (a1 & 1) != 0)
  {
    swift_getKeyPath(byte_21CBB67D0);
    swift_getKeyPath(byte_21CBB67F8);
    sub_21CB81DB4();

    v53 = v119;
    if (*(v125 + 16))
    {
      v54 = *(v93 + 80);
      v55 = v94;
      sub_21C988314(v125 + ((v54 + 32) & ~v54), v94, type metadata accessor for PMEditableWebsite);

      v56 = v97;
      sub_21C98837C(v55, v97);
      v57 = v99;
      sub_21CB81014();
      v58 = sub_21CB81004();
      v60 = v59;
      (*(v100 + 8))(v57, v101);
      v61 = v96;
      sub_21C988314(v56, v96, type metadata accessor for PMEditableWebsite);
      v62 = swift_allocObject();
      v63 = sub_21C98837C(v61, v62 + ((v54 + 16) & ~v54));
      v103 = &v92;
      *&v125 = v58;
      *(&v125 + 1) = v60;
      MEMORY[0x28223BE20](v63);
      *(&v92 - 4) = &v125;
      *(&v92 - 3) = 0x642E6E6F2E636F64;
      v91 = 0xEA0000000000636FLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
      v41 = v116;
      sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
      v64 = v114;
      sub_21CB84DA4();
      sub_21C7194E0(v56, type metadata accessor for PMEditableWebsite);

      (*(v120 + 32))(v53, v64, v41);
      v52 = 0;
    }

    else
    {

      v52 = 1;
    }
  }

  else
  {
    v52 = 1;
    v53 = v119;
  }

  v65 = *(v120 + 56);
  v65(v53, v52, 1, v41);
  sub_21CB84FA4();
  swift_getKeyPath(byte_21CBB68C0);
  swift_getKeyPath(byte_21CBB68E8);
  v66 = v107;
  sub_21CB81DB4();

  v67 = v106;
  sub_21C988314(v66 + *(v104 + 24), v106, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7194E0(v67, type metadata accessor for PMAccount.Storage);
    sub_21C7194E0(v66, type metadata accessor for PMAccount);
  }

  else
  {
    v68 = *v67;
    v69 = [v68 credentialTypes];

    sub_21C7194E0(v66, type metadata accessor for PMAccount);
    if (v69 == 2)
    {
LABEL_16:
      v78 = 1;
      v77 = v118;
      goto LABEL_17;
    }
  }

  if ((*v2 & 1) == 0)
  {
    goto LABEL_16;
  }

  v70 = v99;
  sub_21CB81014();
  v71 = sub_21CB81004();
  v73 = v72;
  (*(v100 + 8))(v70, v101);
  v127 = *(v2 + 24);
  v125 = *(v2 + 40);
  v126 = *(v2 + 56);
  v74 = swift_allocObject();
  v75 = *(v2 + 16);
  v74[1] = *v2;
  v74[2] = v75;
  v74[3] = *(v2 + 32);
  *(v74 + 57) = *(v2 + 41);
  v124[0] = v71;
  v124[1] = v73;
  MEMORY[0x28223BE20](v74);
  *(&v92 - 4) = v124;
  *(&v92 - 3) = 0x6C69636E6570;
  v91 = 0xE600000000000000;
  sub_21C6EDBAC(&v131, v123, &qword_27CDF2F08, &unk_21CBB68A0);
  sub_21C6EDBAC(&v127, v123, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21C6EDBAC(&v125, v123, &qword_27CDF2F10, &unk_21CBB68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v41 = v116;
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v76 = v114;
  sub_21CB84DA4();

  v77 = v118;
  (*(v120 + 32))(v118, v76, v41);
  v78 = 0;
LABEL_17:
  v65(v77, v78, 1, v41);
  v79 = v117;
  sub_21C6EDBAC(v121, v117, &qword_27CDF2F00, &qword_21CBB6898);
  v80 = v109;
  sub_21C6EDBAC(v53, v109, &qword_27CDEB8C0, &unk_21CBA26A0);
  v81 = v111;
  v82 = *(v111 + 16);
  v83 = v110;
  v84 = v112;
  v82(v110, v122, v112);
  v85 = v77;
  v86 = v108;
  sub_21C6EDBAC(v85, v108, &qword_27CDEB8C0, &unk_21CBA26A0);
  v87 = v113;
  sub_21C6EDBAC(v79, v113, &qword_27CDF2F00, &qword_21CBB6898);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F20, &qword_21CBB6908);
  sub_21C6EDBAC(v80, v87 + v88[12], &qword_27CDEB8C0, &unk_21CBA26A0);
  v82((v87 + v88[16]), v83, v84);
  sub_21C6EDBAC(v86, v87 + v88[20], &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v118, &qword_27CDEB8C0, &unk_21CBA26A0);
  v89 = *(v81 + 8);
  v89(v122, v84);
  sub_21C6EA794(v119, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v121, &qword_27CDF2F00, &qword_21CBB6898);
  sub_21C6EA794(v86, &qword_27CDEB8C0, &unk_21CBA26A0);
  v89(v83, v84);
  sub_21C6EA794(v80, &qword_27CDEB8C0, &unk_21CBA26A0);
  return sub_21C6EA794(v117, &qword_27CDF2F00, &qword_21CBB6898);
}