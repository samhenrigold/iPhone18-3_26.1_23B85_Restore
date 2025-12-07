unint64_t sub_217CBECA4()
{
  result = qword_27CBA3B38;
  if (!qword_27CBA3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B38);
  }

  return result;
}

NewsAnalytics::NotificationSubscribedAction_optional __swiftcall NotificationSubscribedAction.init(rawValue:)(Swift::String rawValue)
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

uint64_t NotificationSubscribedAction.rawValue.getter()
{
  v1 = 1869903201;
  if (*v0 != 1)
  {
    v1 = 0x746963696C707865;
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

uint64_t sub_217CBEDA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1869903201;
  if (v2 != 1)
  {
    v4 = 0x746963696C707865;
    v3 = 0xE800000000000000;
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

  v7 = 0xE400000000000000;
  v8 = 1869903201;
  if (*a2 != 1)
  {
    v8 = 0x746963696C707865;
    v7 = 0xE800000000000000;
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

unint64_t sub_217CBEEA0()
{
  result = qword_27CBA3B40;
  if (!qword_27CBA3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B40);
  }

  return result;
}

uint64_t sub_217CBEEF4()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CBEF90(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CBF018(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CBF0BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1869903201;
  if (v2 != 1)
  {
    v5 = 0x746963696C707865;
    v4 = 0xE800000000000000;
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

unint64_t sub_217CBF1D4()
{
  result = qword_27CBA3B48;
  if (!qword_27CBA3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B48);
  }

  return result;
}

id sub_217CBF228()
{
  v1 = sub_217D8844C();
  v37 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D88E7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CC0008(0, &qword_27CB9F918, sub_217B2CFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217D9CB60;
  v36 = "privacyValidation";
  v39 = *(v0 + 32);
  v40 = v0;
  ObjectType = swift_getObjectType();
  sub_217D8876C();
  v10 = sub_217D8843C();
  v11 = *(v2 + 8);
  v11(v4, v1);
  *v8 = v10 & 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D6D260], v5);
  *(v9 + 56) = sub_217D88EFC();
  *(v9 + 64) = sub_217CBFFB0();
  v35 = v9;
  __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  sub_217D88EEC();
  sub_217CC0008(0, &unk_27CBA3B90, MEMORY[0x277D6D080]);
  v12 = *(sub_217D87E9C() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_217D98100;
  v36 = v15;
  v16 = v15 + v14;
  v17 = v40;
  sub_217D8876C();
  v18 = sub_217D8842C();
  v11(v4, v37);
  KeyPath = swift_getKeyPath();

  sub_217CC0064(v18, sub_217CC005C, KeyPath);

  sub_217D87E8C();
  v20 = *(v17 + 16);
  v21 = [v20 appConfiguration];
  result = [v21 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v23 = [v21 analyticsDenylistDescriptorsPublic];
  swift_unknownObjectRelease();
  if (v23)
  {
    v24 = sub_217D896EC();
  }

  else
  {
    v24 = 0;
  }

  sub_217CBF9C8(0x63696C627550, 0xE600000000000000, v24, v16 + v13);

  v25 = [v20 appConfiguration];
  result = [v25 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = [v25 analyticsDenylistDescriptorsSeed];
  swift_unknownObjectRelease();
  if (v26)
  {
    v27 = sub_217D896EC();
  }

  else
  {
    v27 = 0;
  }

  sub_217CBF9C8(1684366675, 0xE400000000000000, v27, v16 + 2 * v13);

  v28 = [v20 appConfiguration];
  result = [v28 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = [v28 analyticsDenylistDescriptorsInternal];
  swift_unknownObjectRelease();
  if (v29)
  {
    v30 = sub_217D896EC();
  }

  else
  {
    v30 = 0;
  }

  sub_217CBF9C8(0x6C616E7265746E49, 0xE800000000000000, v30, v16 + 3 * v13);

  v31 = sub_217D87E7C();
  v32 = MEMORY[0x277D6D078];
  v33 = v35;
  *(v35 + 96) = v31;
  *(v33 + 104) = v32;
  __swift_allocate_boxed_opaque_existential_1((v33 + 72));
  sub_217D87E6C();
  return v33;
}

uint64_t DenylistDescriptor.debugItem.getter()
{
  v0 = sub_217D88E7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217D8845C();
  *v3 = 0;
  v3[1] = 0;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D270], v0);
  return sub_217D88EEC();
}

uint64_t sub_217CBF8D0()
{
  v0 = sub_217D88E7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217D8845C();
  *v3 = 0;
  v3[1] = 0;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D270], v0);
  return sub_217D88EEC();
}

uint64_t sub_217CBF9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = sub_217D88E7C();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    v21[1] = a4;
    v21[2] = a1;
    v21[3] = a2;
    v27 = MEMORY[0x277D84F90];

    v22 = v12;
    result = sub_217B2C804(0, v12, 0);
    v14 = 0;
    v15 = v27;
    v16 = *MEMORY[0x277D6D270];
    v17 = v11;
    v18 = v11 + 40;
    while (v14 < *(v17 + 16))
    {
      v25 = sub_217D88EFC();
      v26 = sub_217CBFFB0();
      __swift_allocate_boxed_opaque_existential_1(&v24);
      *v10 = 0;
      v10[1] = 0;
      (*(v8 + 104))(v10, v16, v23);

      sub_217D88EEC();
      v27 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_217B2C804((v19 > 1), v20 + 1, 1);
        v15 = v27;
      }

      ++v14;
      *(v15 + 16) = v20 + 1;
      result = sub_217A517E4(&v24, v15 + 40 * v20 + 32);
      v18 += 16;
      if (v22 == v14)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_12:

    return sub_217D87E8C();
  }

  return result;
}

uint64_t String.denylistDescriptorValueDebugItem.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_217D88E7C();
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = 0;
  v4[1] = 0;
  (*(v5 + 104))(v4, *MEMORY[0x277D6D270]);

  return sub_217D88EEC();
}

uint64_t sub_217CBFD1C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_217CBFDA4()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13NewsAnalyticsP33_4BAC674B03D5EF9FD60C84EBCE16AA2930DebugPrivacyValidationProvider_privacyValidation;
  v2 = sub_217D8844C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for DebugPrivacyValidationProvider(uint64_t a1)
{
  result = qword_27CBA3B68;
  if (!qword_27CBA3B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217CBFE9C(uint64_t a1)
{
  result = sub_217D8844C();
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

uint64_t sub_217CBFF38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13NewsAnalyticsP33_4BAC674B03D5EF9FD60C84EBCE16AA2930DebugPrivacyValidationProvider_privacyValidation;
  v4 = sub_217D8844C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217CBFFB0()
{
  result = qword_27CBA3B88;
  if (!qword_27CBA3B88)
  {
    sub_217D88EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B88);
  }

  return result;
}

void sub_217CC0008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_217CC0064(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v33 = sub_217D8847C();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v26 = v3;
    v42 = MEMORY[0x277D84F90];
    sub_217B2C804(0, v7, 0);
    v37 = a1 + 56;
    v38 = v42;
    result = sub_217D8998C();
    v9 = result;
    v10 = 0;
    v30 = v5 + 8;
    v31 = v5 + 16;
    v27 = a1 + 64;
    v28 = v7;
    v29 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v37 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v14 = v32;
      v15 = v33;
      (*(v5 + 16))(v32, *(a1 + 48) + *(v5 + 72) * v9, v33);
      v40 = sub_217D88EFC();
      v41 = sub_217CBFFB0();
      __swift_allocate_boxed_opaque_existential_1(&v39);
      v34(v14);
      (*(v5 + 8))(v14, v15);
      v16 = v38;
      v42 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_217B2C804((v17 > 1), v18 + 1, 1);
        v16 = v42;
      }

      *(v16 + 16) = v18 + 1;
      v38 = v16;
      result = sub_217A517E4(&v39, v16 + 40 * v18 + 32);
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v19 = *(v37 + 8 * v13);
      if ((v19 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v9 & 0x3F));
      if (v20)
      {
        v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v28;
        v5 = v29;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v12 = v28;
        v23 = (v27 + 8 * v13);
        v5 = v29;
        while (v22 < (v11 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_217CC0398(v9, v36, 0);
            v11 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_217CC0398(v9, v36, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_217CC0398(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

NewsAnalytics::NetworkEventType_optional __swiftcall NetworkEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
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
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t NetworkEventType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 7234659;
      break;
    case 2:
      result = 0x6F437070416E6463;
      break;
    case 3:
      result = 1937208931;
      break;
    case 4:
      result = 0x63696C6275506B63;
      break;
    case 5:
      result = 0x7461766972506B63;
      break;
    case 6:
    case 0x12:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x656764457377656ELL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD000000000000026;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x437961646F546B63;
      break;
    case 0xD:
      result = 0x4669746C754D6B63;
      break;
    case 0xE:
      result = 0x46726564724F6B63;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0x6165536761546B63;
      break;
    case 0x11:
      result = 0xD000000000000010;
      break;
    case 0x13:
      result = 0x4672657472616D73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CC0718()
{
  v0 = NetworkEventType.rawValue.getter();
  v2 = v1;
  if (v0 == NetworkEventType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217CC07B8()
{
  result = qword_27CBA3BA0;
  if (!qword_27CBA3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BA0);
  }

  return result;
}

uint64_t sub_217CC080C()
{
  sub_217D89E1C();
  NetworkEventType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CC0874(uint64_t a1)
{
  NetworkEventType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217CC08D8(uint64_t a1)
{
  sub_217D89E1C();
  NetworkEventType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217CC0948@<X0>(unint64_t *a1@<X8>)
{
  result = NetworkEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217CC0A30()
{
  result = qword_2811C4F48;
  if (!qword_2811C4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4F48);
  }

  return result;
}

NewsAnalytics::GroupType_optional __swiftcall GroupType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 75;
  switch(v3)
  {
    case 0:
      goto LABEL_91;
    case 1:
      v5 = 1;
      goto LABEL_91;
    case 2:
      v5 = 2;
      goto LABEL_91;
    case 3:
      v5 = 3;
      goto LABEL_91;
    case 4:
      v5 = 4;
      goto LABEL_91;
    case 5:
      v5 = 5;
      goto LABEL_91;
    case 6:
      v5 = 6;
      goto LABEL_91;
    case 7:
      v5 = 7;
      goto LABEL_91;
    case 8:
      v5 = 8;
      goto LABEL_91;
    case 9:
      v5 = 9;
      goto LABEL_91;
    case 10:
      v5 = 10;
      goto LABEL_91;
    case 11:
      v5 = 11;
      goto LABEL_91;
    case 12:
      v5 = 12;
      goto LABEL_91;
    case 13:
      v5 = 13;
      goto LABEL_91;
    case 14:
      v5 = 14;
      goto LABEL_91;
    case 15:
      v5 = 15;
      goto LABEL_91;
    case 16:
      v5 = 16;
      goto LABEL_91;
    case 17:
      v5 = 17;
      goto LABEL_91;
    case 18:
      v5 = 18;
      goto LABEL_91;
    case 19:
      v5 = 19;
      goto LABEL_91;
    case 20:
      v5 = 20;
      goto LABEL_91;
    case 21:
      v5 = 21;
      goto LABEL_91;
    case 22:
      v5 = 22;
      goto LABEL_91;
    case 23:
      v5 = 23;
      goto LABEL_91;
    case 24:
      v5 = 24;
      goto LABEL_91;
    case 25:
      v5 = 25;
      goto LABEL_91;
    case 26:
      v5 = 26;
      goto LABEL_91;
    case 27:
      v5 = 27;
      goto LABEL_91;
    case 28:
      v5 = 28;
      goto LABEL_91;
    case 29:
      v5 = 29;
      goto LABEL_91;
    case 30:
      v5 = 30;
      goto LABEL_91;
    case 31:
      v5 = 31;
      goto LABEL_91;
    case 32:
      v5 = 32;
      goto LABEL_91;
    case 33:
      v5 = 33;
      goto LABEL_91;
    case 34:
      v5 = 34;
      goto LABEL_91;
    case 35:
      v5 = 35;
      goto LABEL_91;
    case 36:
      v5 = 36;
      goto LABEL_91;
    case 37:
      v5 = 37;
      goto LABEL_91;
    case 38:
      v5 = 38;
      goto LABEL_91;
    case 39:
      v5 = 39;
      goto LABEL_91;
    case 40:
      v5 = 40;
      goto LABEL_91;
    case 41:
      v5 = 41;
      goto LABEL_91;
    case 42:
      v5 = 42;
      goto LABEL_91;
    case 43:
      v5 = 43;
      goto LABEL_91;
    case 44:
      v5 = 44;
      goto LABEL_91;
    case 45:
      v5 = 45;
      goto LABEL_91;
    case 46:
      v5 = 46;
      goto LABEL_91;
    case 47:
      v5 = 47;
      goto LABEL_91;
    case 48:
      v5 = 48;
      goto LABEL_91;
    case 49:
      v5 = 49;
      goto LABEL_91;
    case 50:
      v5 = 50;
      goto LABEL_91;
    case 51:
      v5 = 51;
      goto LABEL_91;
    case 52:
      v5 = 52;
      goto LABEL_91;
    case 53:
      v5 = 53;
      goto LABEL_91;
    case 54:
      v5 = 54;
      goto LABEL_91;
    case 55:
      v5 = 55;
      goto LABEL_91;
    case 56:
      v5 = 56;
      goto LABEL_91;
    case 57:
      v5 = 57;
      goto LABEL_91;
    case 58:
      v5 = 58;
      goto LABEL_91;
    case 59:
      v5 = 59;
      goto LABEL_91;
    case 60:
      v5 = 60;
      goto LABEL_91;
    case 61:
      v5 = 61;
      goto LABEL_91;
    case 62:
      v5 = 62;
      goto LABEL_91;
    case 63:
      v5 = 63;
      goto LABEL_91;
    case 64:
      v5 = 64;
      goto LABEL_91;
    case 65:
      v5 = 65;
      goto LABEL_91;
    case 66:
      v5 = 66;
      goto LABEL_91;
    case 67:
      v5 = 67;
      goto LABEL_91;
    case 68:
      v5 = 68;
      goto LABEL_91;
    case 69:
      v5 = 69;
      goto LABEL_91;
    case 70:
      v5 = 70;
      goto LABEL_91;
    case 71:
      v5 = 71;
      goto LABEL_91;
    case 72:
      v5 = 72;
      goto LABEL_91;
    case 73:
      v5 = 73;
      goto LABEL_91;
    case 74:
      v5 = 74;
LABEL_91:
      v6 = v5;
      break;
    case 75:
      break;
    case 76:
      v6 = 76;
      break;
    case 77:
      v6 = 77;
      break;
    case 78:
      v6 = 78;
      break;
    case 79:
      v6 = 79;
      break;
    case 80:
      v6 = 80;
      break;
    case 81:
      v6 = 81;
      break;
    case 82:
      v6 = 82;
      break;
    case 83:
      v6 = 83;
      break;
    case 84:
      v6 = 84;
      break;
    case 85:
      v6 = 85;
      break;
    case 86:
      v6 = 86;
      break;
    case 87:
      v6 = 87;
      break;
    case 88:
      v6 = 88;
      break;
    case 89:
      v6 = 89;
      break;
    case 90:
      v6 = 90;
      break;
    case 91:
      v6 = 91;
      break;
    case 92:
      v6 = 92;
      break;
    default:
      v6 = 93;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_217CC0DF0()
{
  sub_217D89E1C();
  GroupType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CC0E58(uint64_t a1)
{
  GroupType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217CC0EC8@<X0>(uint64_t *a1@<X8>)
{
  result = GroupType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217CC0FA0()
{
  result = qword_2811BD148;
  if (!qword_2811BD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD148);
  }

  return result;
}

uint64_t sub_217CC1054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
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

uint64_t sub_217CC10D8(uint64_t a1)
{
  v2 = sub_217CC12AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC1114(uint64_t a1)
{
  v2 = sub_217CC12AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultData.encode(to:)(void *a1)
{
  sub_217CC14EC(0, &qword_27CBA3BA8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC12AC();
  sub_217D89E7C();
  v11 = v8;
  sub_217CC1300();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CC12AC()
{
  result = qword_27CBA3BB0;
  if (!qword_27CBA3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BB0);
  }

  return result;
}

unint64_t sub_217CC1300()
{
  result = qword_27CBA3BB8;
  if (!qword_27CBA3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BB8);
  }

  return result;
}

uint64_t ResultData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CC14EC(0, &qword_27CBA3BC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC12AC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CC1550();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CC14EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC12AC();
    v7 = a3(a1, &type metadata for ResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CC1550()
{
  result = qword_27CBA3BC8;
  if (!qword_27CBA3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BC8);
  }

  return result;
}

unint64_t sub_217CC1600()
{
  result = qword_27CBA3BD0;
  if (!qword_27CBA3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BD0);
  }

  return result;
}

unint64_t sub_217CC1658()
{
  result = qword_27CBA3BD8;
  if (!qword_27CBA3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BD8);
  }

  return result;
}

unint64_t sub_217CC16B0()
{
  result = qword_27CBA3BE0;
  if (!qword_27CBA3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BE0);
  }

  return result;
}

uint64_t sub_217CC17CC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3C18);
  __swift_project_value_buffer(v0, qword_27CBA3C18);
  return sub_217D8866C();
}

uint64_t AudioUpsellMessageStarted.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioUpsellMessageStarted.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 20);
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageStarted.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 20);
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 24);
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageStarted.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 24);
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 28);
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageStarted.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 28);
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 32);
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageStarted.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 32);
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.upsellVariantData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 36);
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4, &type metadata for AudioUpsellVariantData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CC2090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t AudioUpsellMessageStarted.upsellVariantData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 36);
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4, &type metadata for AudioUpsellVariantData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioUpsellMessageStarted(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4, &type metadata for AudioUpsellVariantData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v6, v15);
}

uint64_t AudioUpsellMessageStarted.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 20);
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
  return sub_217AFFBC0(v17, v16);
}

void AudioUpsellMessageStarted.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 24));
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

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t AudioUpsellMessageStarted.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioUpsellMessageStarted.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 32));
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

uint64_t AudioUpsellMessageStarted.Model.upsellVariantData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 AudioUpsellMessageStarted.Model.init(eventData:articleData:channelData:feedData:userBundleSubscriptionContextData:upsellVariantData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a3 + 4);
  v31 = *a4;
  v13 = *(a4 + 2);
  v14 = *a6;
  v15 = a6[1];
  v16 = sub_217D8899C();
  v29 = a3[1];
  v30 = *a3;
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
  v18 = a7 + v17[5];
  v19 = *(a2 + 48);
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = v19;
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  *(v18 + 127) = *(a2 + 127);
  v21 = *(a2 + 112);
  *(v18 + 96) = *(a2 + 96);
  *(v18 + 112) = v21;
  v22 = *(a2 + 80);
  *(v18 + 64) = *(a2 + 64);
  *(v18 + 80) = v22;
  v23 = a7 + v17[6];
  *v23 = v30;
  *(v23 + 16) = v29;
  *(v23 + 32) = v12;
  v24 = a7 + v17[7];
  *v24 = v31;
  *(v24 + 16) = v13;
  v25 = a7 + v17[8];
  v26 = *(a5 + 16);
  *v25 = *a5;
  *(v25 + 16) = v26;
  result = *(a5 + 32);
  *(v25 + 32) = result;
  *(v25 + 48) = *(a5 + 48);
  v28 = (a7 + v17[9]);
  *v28 = v14;
  v28[1] = v15;
  return result;
}

uint64_t sub_217CC286C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614464656566;
  v4 = 0xD000000000000021;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 1)
  {
    v5 = 0x446C656E6E616863;
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

uint64_t sub_217CC2948@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CC3F68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CC2970(uint64_t a1)
{
  v2 = sub_217CC2EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC29AC(uint64_t a1)
{
  v2 = sub_217CC2EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioUpsellMessageStarted.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CC3608(0, &qword_27CBA3C38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC2EA8();
  sub_217D89E7C();
  v70[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v71 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
    v10 = v3 + *(v71 + 20);
    v11 = *(v10 + 96);
    v12 = *(v10 + 64);
    v67 = *(v10 + 80);
    v68 = v11;
    v13 = *(v10 + 96);
    *v69 = *(v10 + 112);
    v14 = *(v10 + 16);
    v15 = *(v10 + 48);
    v64 = *(v10 + 32);
    v65 = v15;
    v16 = *(v10 + 48);
    v66 = *(v10 + 64);
    v17 = *(v10 + 16);
    v63[0] = *v10;
    v63[1] = v17;
    v60 = v67;
    v61 = v13;
    v62[0] = *(v10 + 112);
    v57 = v64;
    v58 = v16;
    v59 = v12;
    *&v69[15] = *(v10 + 127);
    *(v62 + 15) = *(v10 + 127);
    v55 = v63[0];
    v56 = v14;
    v54 = 1;
    sub_217AFFBC0(v63, v52);
    sub_217ACF52C();
    sub_217D89C3C();
    v52[6] = v61;
    *v53 = v62[0];
    *&v53[15] = *(v62 + 15);
    v52[2] = v57;
    v52[3] = v58;
    v52[4] = v59;
    v52[5] = v60;
    v52[0] = v55;
    v52[1] = v56;
    sub_217B009E0(v52);
    v18 = v71;
    v19 = (v3 + *(v71 + 24));
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    *&v44 = *v19;
    *(&v44 + 1) = v20;
    *&v45 = v21;
    *(&v45 + 1) = v22;
    *&v46 = v23;
    LOBYTE(v40) = 2;
    sub_217AD86BC(v44, v20, v21, v22, v23);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v44, *(&v44 + 1), v45, *(&v45 + 1), v46);
    v24 = (v3 + v18[7]);
    v25 = v24[1];
    v26 = v24[2];
    v49 = *v24;
    v50 = v25;
    v51 = v26;
    v48 = 3;
    sub_217AD1A68(v49, v25, v26);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v49, v50, v51);
    v27 = (v3 + v18[8]);
    v28 = v27[1];
    v44 = *v27;
    v45 = v28;
    v30 = *v27;
    v29 = v27[1];
    v46 = v27[2];
    v47 = *(v27 + 48);
    v40 = v30;
    v41 = v29;
    v42 = v27[2];
    v43 = *(v27 + 48);
    v39 = 4;
    sub_217ACC004(&v44, v37);
    sub_217A55B98();
    sub_217D89CAC();
    v37[0] = v40;
    v37[1] = v41;
    v37[2] = v42;
    v38 = v43;
    sub_217ACC69C(v37);
    v31 = (v3 + v18[9]);
    v32 = v31[1];
    v35 = *v31;
    v36 = v32;
    v34[15] = 5;
    sub_217C7CEB4();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CC2EA8()
{
  result = qword_27CBA3C40;
  if (!qword_27CBA3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C40);
  }

  return result;
}

void AudioUpsellMessageStarted.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CC3608(0, &qword_27CBA3C48, MEMORY[0x277D844C8]);
  v47 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC2EA8();
  v30 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v28;
    LOBYTE(v39) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v29;
    sub_217D89BCC();
    (*(v27 + 32))(v11, v13, v4);
    v38 = 1;
    sub_217ACF4D8();
    sub_217D89B5C();
    v14 = &v11[v9[5]];
    v15 = *v46;
    *(v14 + 6) = v45;
    *(v14 + 7) = v15;
    *(v14 + 127) = *&v46[15];
    v16 = v42;
    *(v14 + 2) = v41;
    *(v14 + 3) = v16;
    v17 = v44;
    *(v14 + 4) = v43;
    *(v14 + 5) = v17;
    v18 = v40;
    *v14 = v39;
    *(v14 + 1) = v18;
    LOBYTE(v32) = 2;
    sub_217AD07F8();
    v29 = 0;
    sub_217D89B5C();
    v19 = v36;
    v20 = &v11[v9[6]];
    v21 = v35;
    *v20 = v34;
    *(v20 + 1) = v21;
    *(v20 + 4) = v19;
    LOBYTE(v32) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v22 = v35;
    v23 = &v11[v9[7]];
    *v23 = v34;
    *(v23 + 2) = v22;
    v33 = 4;
    sub_217A54D08();
    sub_217D89BCC();
    v24 = &v11[v9[8]];
    v25 = v35;
    *v24 = v34;
    *(v24 + 1) = v25;
    *(v24 + 2) = v36;
    v24[48] = v37;
    v31 = 5;
    sub_217C7CE5C();
    sub_217D89B5C();
    (*(v12 + 8))(v30, v47);
    *&v11[v9[9]] = v32;
    sub_217CC366C(v11, v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217CC36D0(v11);
  }
}

void sub_217CC3608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC2EA8();
    v7 = a3(a1, &type metadata for AudioUpsellMessageStarted.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CC366C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CC36D0(uint64_t a1)
{
  v2 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CC3804@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4, &type metadata for AudioUpsellVariantData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v7, v16);
}

void sub_217CC3B18(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CC2090(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217CC2090(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217CC2090(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217CC2090(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
          if (v5 <= 0x3F)
          {
            sub_217CC2090(319, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4, &type metadata for AudioUpsellVariantData);
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

void sub_217CC3D3C(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CBA3C70, &type metadata for AudioUpsellVariantData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217CC3E64()
{
  result = qword_27CBA3C78;
  if (!qword_27CBA3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C78);
  }

  return result;
}

unint64_t sub_217CC3EBC()
{
  result = qword_27CBA3C80;
  if (!qword_27CBA3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C80);
  }

  return result;
}

unint64_t sub_217CC3F14()
{
  result = qword_27CBA3C88;
  if (!qword_27CBA3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C88);
  }

  return result;
}

uint64_t sub_217CC3F68(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1F80 == a2)
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

__n128 TabiData.init(tabiConfigurationVersion:tabiPackageVersions:tabiCachedResources:resolvedGlobalGraph:requestSummary:tabiConfigurationIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  memset(v16, 0, sizeof(v16));
  sub_217B569E0(v16);
  v13 = *(a6 + 16);
  *(a9 + 40) = *a6;
  *(a9 + 56) = v13;
  result = *(a6 + 32);
  v15 = *(a6 + 48);
  *(a9 + 72) = result;
  *(a9 + 88) = v15;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  return result;
}

uint64_t TabiData.tabiConfigurationVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TabiData.tabiConfigurationVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TabiData.tabiPackageVersions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TabiData.tabiCachedResources.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t TabiData.requestSummary.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v7[0] = *(v1 + 40);
  v7[1] = v2;
  v4 = *(v1 + 88);
  v8 = *(v1 + 72);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_217CC43A4(v7, &v6);
}

uint64_t sub_217CC43A4(uint64_t a1, uint64_t a2)
{
  sub_217CC4AC4(0, &qword_2811C2DE0, &type metadata for TabiRequestSummary, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 TabiData.requestSummary.setter(uint64_t a1)
{
  v3 = *(v1 + 56);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v8[3] = v4;
  sub_217B569E0(v8);
  v5 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 72) = result;
  *(v1 + 88) = v7;
  return result;
}

uint64_t TabiData.tabiConfigurationIdentifier.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t TabiData.tabiConfigurationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

unint64_t sub_217CC4534()
{
  v1 = *v0;
  v2 = 0x5374736575716572;
  if (v1 != 4)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000018;
  if (*v0)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217CC4608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CC5344(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CC4630(uint64_t a1)
{
  v2 = sub_217CC4A70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC466C(uint64_t a1)
{
  v2 = sub_217CC4A70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabiData.encode(to:)(void *a1)
{
  sub_217CC5098(0, &qword_2811BC4F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *(v1 + 24);
  v18 = *(v1 + 16);
  v17 = v8;
  v16 = *(v1 + 32);
  v9 = *(v1 + 56);
  v26 = *(v1 + 40);
  v27 = v9;
  v10 = *(v1 + 88);
  v28 = *(v1 + 72);
  v29 = v10;
  v11 = *(v1 + 112);
  v15[0] = *(v1 + 104);
  v15[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC4A70();
  sub_217D89E7C();
  LOBYTE(v22) = 0;
  v12 = v30;
  sub_217D89C6C();
  if (!v12)
  {
    v13 = v17;
    *&v22 = v18;
    LOBYTE(v20[0]) = 1;
    sub_217CC4AC4(0, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_217A5603C(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_217D89CAC();
    *&v22 = v13;
    LOBYTE(v20[0]) = 2;
    sub_217D89CAC();
    LOBYTE(v22) = 3;
    sub_217D89C7C();
    v22 = v26;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v21 = 4;
    sub_217CC43A4(&v26, v20);
    sub_217C9B6A0();
    sub_217D89C3C();
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    sub_217B569E0(v20);
    v19 = 5;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CC4A70()
{
  result = qword_2811BD2C0;
  if (!qword_2811BD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2C0);
  }

  return result;
}

void sub_217CC4AC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t TabiData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = a2;
  sub_217CC5098(0, &qword_2811BC8F0, MEMORY[0x277D844C8]);
  v73 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC4A70();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0uLL;
    return sub_217B569E0(&v51);
  }

  else
  {
    v40 = a1;
    v41 = v5;
    LOBYTE(v51) = 0;
    v8 = v73;
    v9 = v7;
    v10 = sub_217D89B8C();
    v12 = v11;
    sub_217CC4AC4(0, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    LOBYTE(v43) = 1;
    sub_217A5603C(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    v39 = v51;
    LOBYTE(v43) = 2;
    sub_217D89BCC();
    v13 = v40;
    v37 = v12;
    v14 = v51;
    LOBYTE(v51) = 3;
    v35 = 0;
    v15 = sub_217D89B9C();
    v36 = v14;
    v34 = v15;
    v65[71] = 4;
    sub_217C9B648();
    sub_217D89B5C();
    v32 = v66;
    v33 = v67;
    v16 = v69;
    v38 = v68;
    v17 = v70;
    v18 = v71;
    memset(v65, 0, 64);
    sub_217B569E0(v65);
    v64 = 5;
    v19 = sub_217D89B8C();
    LODWORD(v35) = v34 & 1;
    v20 = *(v41 + 8);
    v41 = v19;
    v21 = v9;
    v23 = v22;
    v20(v21, v8);
    v24 = v37;
    *&v43 = v10;
    *(&v43 + 1) = v37;
    v73 = v10;
    v25 = v36;
    *&v44 = v39;
    *(&v44 + 1) = v36;
    LOBYTE(v45) = v35;
    *(&v45 + 1) = v72[0];
    DWORD1(v45) = *(v72 + 3);
    *(&v45 + 1) = v32;
    v46 = v33;
    v47 = v38;
    *&v48 = v16;
    *(&v48 + 1) = v17;
    *&v49 = v18;
    v26 = v42;
    *(&v49 + 1) = v41;
    v50 = v23;
    v27 = v44;
    *v42 = v43;
    v26[1] = v27;
    *(v26 + 14) = v23;
    v28 = v49;
    v29 = v47;
    v26[5] = v48;
    v26[6] = v28;
    v30 = v45;
    v26[3] = v46;
    v26[4] = v29;
    v26[2] = v30;
    sub_217B9E3A4(&v43, &v51);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v51 = v73;
    v52 = v24;
    v53 = v39;
    v54 = v25;
    LOBYTE(v55) = v35;
    *(&v55 + 1) = v72[0];
    HIDWORD(v55) = *(v72 + 3);
    v56 = v32;
    v57 = v33;
    v58 = v38;
    v59 = v16;
    v60 = v17;
    v61 = v18;
    v62 = v41;
    v63 = v23;
    return sub_217B9F380(&v51);
  }
}

void sub_217CC5098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC4A70();
    v7 = a3(a1, &type metadata for TabiData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics18TabiRequestSummaryVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_217CC5178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_217CC51C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217CC5240()
{
  result = qword_27CBA3C90;
  if (!qword_27CBA3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C90);
  }

  return result;
}

unint64_t sub_217CC5298()
{
  result = qword_2811BD2B0;
  if (!qword_2811BD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2B0);
  }

  return result;
}

unint64_t sub_217CC52F0()
{
  result = qword_2811BD2B8;
  if (!qword_2811BD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2B8);
  }

  return result;
}

uint64_t sub_217CC5344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000217DD1FA0 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1FC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1FE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD2000 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5374736575716572 && a2 == 0xEE007972616D6D75 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DD2020 == a2)
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

NewsAnalytics::WidgetEngagementType_optional __swiftcall WidgetEngagementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WidgetEngagementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x756F72676B636162;
  if (v1 != 5)
  {
    v3 = 0x646957656C6F6877;
  }

  v4 = 0x4E6E6F6974636573;
  if (v1 != 3)
  {
    v4 = 0x6465626D45626577;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C6369747261;
  if (v1 != 1)
  {
    v5 = 0x6569726F74536F6ELL;
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

unint64_t sub_217CC56B0()
{
  result = qword_27CBA3C98;
  if (!qword_27CBA3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C98);
  }

  return result;
}

uint64_t sub_217CC5710(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217CC584C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000646ELL;
  v6 = 0x756F72676B636162;
  if (v2 != 5)
  {
    v6 = 0x646957656C6F6877;
    v5 = 0xEB00000000746567;
  }

  v7 = 0xEB00000000656D61;
  v8 = 0x4E6E6F6974636573;
  if (v2 != 3)
  {
    v8 = 0x6465626D45626577;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656C6369747261;
  if (v2 != 1)
  {
    v10 = 0x6569726F74536F6ELL;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_217CC5A04()
{
  result = qword_2811C19F8;
  if (!qword_2811C19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19F8);
  }

  return result;
}

uint64_t ViewData.viewSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::ViewData __swiftcall ViewData.init(viewSessionID:viewType:viewAction:)(NewsAnalytics::ViewData viewSessionID, NewsAnalytics::ViewType viewType, NewsAnalytics::ViewAction viewAction)
{
  v4 = *viewType;
  v5 = *viewAction;
  *v3 = viewSessionID.viewSessionID;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  viewSessionID.viewType = viewType;
  return viewSessionID;
}

uint64_t sub_217CC5B70()
{
  v1 = 0x6570795477656976;
  if (*v0 != 1)
  {
    v1 = 0x6974634177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7373655377656976;
  }
}

uint64_t sub_217CC5BDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CC648C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CC5C04(uint64_t a1)
{
  v2 = sub_217CC5E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC5C40(uint64_t a1)
{
  v2 = sub_217CC5E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewData.encode(to:)(void *a1)
{
  sub_217CC61B0(0, &qword_2811BC4E8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v16 = *(v1 + 17);
  v17 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_217CC5E60();
  sub_217D89E7C();
  v22 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v13 = v16;
    v21 = v17;
    v20 = 1;
    sub_217CC5EB4();
    sub_217D89CAC();
    v19 = v13;
    v18 = 2;
    sub_217CC5F08();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v7, v12);
}

unint64_t sub_217CC5E60()
{
  result = qword_2811BD228;
  if (!qword_2811BD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD228);
  }

  return result;
}

unint64_t sub_217CC5EB4()
{
  result = qword_2811BD1F8;
  if (!qword_2811BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1F8);
  }

  return result;
}

unint64_t sub_217CC5F08()
{
  result = qword_2811C7E90;
  if (!qword_2811C7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E90);
  }

  return result;
}

uint64_t ViewData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CC61B0(0, &qword_2811BC8E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC5E60();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v20 = 1;
  sub_217CC6214();
  sub_217D89BCC();
  v17 = v21;
  v18 = 2;
  sub_217CC6268();
  sub_217D89BCC();
  (*(v7 + 8))(v9, v6);
  v15 = v19;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CC61B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC5E60();
    v7 = a3(a1, &type metadata for ViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CC6214()
{
  result = qword_2811BD1E8;
  if (!qword_2811BD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1E8);
  }

  return result;
}

unint64_t sub_217CC6268()
{
  result = qword_2811C7E80;
  if (!qword_2811C7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E80);
  }

  return result;
}

uint64_t sub_217CC62EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_217CC6334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217CC6388()
{
  result = qword_27CBA3CA0;
  if (!qword_27CBA3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CA0);
  }

  return result;
}

unint64_t sub_217CC63E0()
{
  result = qword_2811BD218;
  if (!qword_2811BD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD218);
  }

  return result;
}

unint64_t sub_217CC6438()
{
  result = qword_2811BD220;
  if (!qword_2811BD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD220);
  }

  return result;
}

uint64_t sub_217CC648C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634177656976 && a2 == 0xEA00000000006E6FLL)
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

NewsAnalytics::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
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

uint64_t OsInstallVariant.rawValue.getter()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
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

uint64_t sub_217CC6660(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616E7265746E69;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 0x6C616E7265746E69;
  }

  else
  {
    v4 = 0x6C616E7265747865;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217CC673C()
{
  result = qword_27CBA3CA8;
  if (!qword_27CBA3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CA8);
  }

  return result;
}

uint64_t sub_217CC6790()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CC6828(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CC68AC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t ShareContextData.activityType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShareContextData.activityType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CC6A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954)
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

uint64_t sub_217CC6B00(uint64_t a1)
{
  v2 = sub_217CC6CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC6B3C(uint64_t a1)
{
  v2 = sub_217CC6CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShareContextData.encode(to:)(void *a1)
{
  sub_217CC6E9C(0, &qword_27CBA3CB0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC6CC4();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CC6CC4()
{
  result = qword_27CBA3CB8;
  if (!qword_27CBA3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CB8);
  }

  return result;
}

uint64_t ShareContextData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CC6E9C(0, &qword_27CBA3CC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC6CC4();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CC6E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC6CC4();
    v7 = a3(a1, &type metadata for ShareContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CC6F20(void *a1)
{
  sub_217CC6E9C(0, &qword_27CBA3CB0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC6CC4();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CC7090()
{
  result = qword_27CBA3CC8;
  if (!qword_27CBA3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CC8);
  }

  return result;
}

unint64_t sub_217CC70E8()
{
  result = qword_27CBA3CD0;
  if (!qword_27CBA3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CD0);
  }

  return result;
}

unint64_t sub_217CC7140()
{
  result = qword_27CBA3CD8;
  if (!qword_27CBA3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CD8);
  }

  return result;
}

unint64_t sub_217CC7194()
{
  result = qword_27CBA3CE0;
  if (!qword_27CBA3CE0)
  {
    type metadata accessor for TimestampJitterFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CE0);
  }

  return result;
}

_BYTE *AlternateHeadlineData.init(articleHeadlineTreatmentState:articleHeadlineTreatmentId:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 4) = a2;
  return result;
}

unint64_t sub_217CC7268()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_217CC72A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001DLL && 0x8000000217DD2090 == a2;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD20B0 == a2)
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

uint64_t sub_217CC7384(uint64_t a1)
{
  v2 = sub_217CC7588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC73C0(uint64_t a1)
{
  v2 = sub_217CC7588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlternateHeadlineData.encode(to:)(void *a1)
{
  sub_217CC77FC(0, &qword_2811BC620, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC7588();
  sub_217D89E7C();
  v15 = v9;
  v14 = 0;
  sub_217CC75DC();
  sub_217D89CAC();
  if (!v2)
  {
    v13 = 1;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217CC7588()
{
  result = qword_2811C19E8;
  if (!qword_2811C19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19E8);
  }

  return result;
}

unint64_t sub_217CC75DC()
{
  result = qword_2811BDA30;
  if (!qword_2811BDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA30);
  }

  return result;
}

uint64_t AlternateHeadlineData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CC77FC(0, &qword_2811BC9B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC7588();
  sub_217D89E5C();
  if (!v2)
  {
    v15 = 0;
    sub_217CC7860();
    sub_217D89BCC();
    v10 = v16;
    v14 = 1;
    v12 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    *(a2 + 4) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CC77FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC7588();
    v7 = a3(a1, &type metadata for AlternateHeadlineData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CC7860()
{
  result = qword_2811BDA20;
  if (!qword_2811BDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlternateHeadlineData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[8])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AlternateHeadlineData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_217CC7994()
{
  result = qword_27CBA3CF0;
  if (!qword_27CBA3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CF0);
  }

  return result;
}

unint64_t sub_217CC79EC()
{
  result = qword_2811C19D8;
  if (!qword_2811C19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19D8);
  }

  return result;
}

unint64_t sub_217CC7A44()
{
  result = qword_2811C19E0;
  if (!qword_2811C19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19E0);
  }

  return result;
}

uint64_t sub_217CC7B60()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3D28);
  __swift_project_value_buffer(v0, qword_27CBA3D28);
  return sub_217D8866C();
}

uint64_t ArticleSaveEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleSaveEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 20);
  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 20);
  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 24);
  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 24);
  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 28);
  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 28);
  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 32);
  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 32);
  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 36);
  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 36);
  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 40);
  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 40);
  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 44);
  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 44);
  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 48);
  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 48);
  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 52);
  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 52);
  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 56);
  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CC8C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleSaveEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 56);
  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleSaveEvent(0);
  v5 = v4[5];
  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t ArticleSaveEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 20);
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

uint64_t ArticleSaveEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleSaveEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleSaveEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleSaveEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 32));
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

uint64_t ArticleSaveEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleSaveEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleSaveEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleSaveEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 44));
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

uint64_t ArticleSaveEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 48);
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

void ArticleSaveEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 52));
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

void ArticleSaveEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 56));
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

__n128 ArticleSaveEvent.Model.init(eventData:articleData:actionData:feedData:groupData:viewData:userChannelContextData:userBundleSubscriptionContextData:channelData:issueData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __int128 *a11, uint64_t a12)
{
  v17 = *a3;
  v41 = *a4;
  v18 = *(a4 + 2);
  v19 = a6[1];
  v43 = *a6;
  v42 = *(a6 + 8);
  v46 = a7[1];
  v47 = *a7;
  v45 = *(a7 + 1);
  v55 = a10[1];
  v56 = *a10;
  v53 = *(a10 + 17);
  v54 = *(a10 + 16);
  v51 = a10[4];
  v52 = a10[3];
  v57 = *(a12 + 32);
  v20 = sub_217D8899C();
  v49 = *(a12 + 16);
  v50 = *a12;
  v48 = *a11;
  v44 = a11[1];
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for ArticleSaveEvent.Model(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v23;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a2 + 127);
  v25 = *(a2 + 112);
  *(v22 + 96) = *(a2 + 96);
  *(v22 + 112) = v25;
  v26 = *(a2 + 80);
  *(v22 + 64) = *(a2 + 64);
  *(v22 + 80) = v26;
  *(a9 + v21[6]) = v17;
  v27 = a9 + v21[7];
  *v27 = v41;
  *(v27 + 16) = v18;
  v28 = (a9 + v21[8]);
  v29 = a5[3];
  v28[2] = a5[2];
  v28[3] = v29;
  v30 = a5[1];
  *v28 = *a5;
  v28[1] = v30;
  v31 = a5[8];
  v28[7] = a5[7];
  v28[8] = v31;
  v32 = a5[6];
  v28[5] = a5[5];
  v28[6] = v32;
  v28[4] = a5[4];
  v33 = a9 + v21[9];
  *v33 = v43;
  *(v33 + 8) = v19;
  *(v33 + 16) = v42;
  v34 = a9 + v21[10];
  *v34 = v47;
  *(v34 + 1) = v46;
  *(v34 + 2) = v45;
  v35 = a9 + v21[11];
  v36 = *(a8 + 16);
  *v35 = *a8;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a8 + 32);
  *(v35 + 48) = *(a8 + 48);
  v37 = a9 + v21[12];
  *v37 = v56;
  *(v37 + 8) = v55;
  *(v37 + 16) = v54;
  *(v37 + 17) = v53;
  *(v37 + 24) = v52;
  *(v37 + 32) = v51;
  v38 = (a9 + v21[13]);
  *v38 = v48;
  v38[1] = v44;
  v39 = a9 + v21[14];
  result = v50;
  *v39 = v50;
  *(v39 + 16) = v49;
  *(v39 + 32) = v57;
  return result;
}

uint64_t sub_217CC996C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x61446E6F69746361;
    v8 = 0x6174614464656566;
    if (a1 != 3)
    {
      v8 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x44656C6369747261;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x446C656E6E616863;
    v2 = 0x7461446575737369;
    if (a1 != 9)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6174614477656976;
    v4 = 0xD000000000000016;
    if (a1 != 6)
    {
      v4 = 0xD000000000000021;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217CC9AEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CCB9AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CC9B14(uint64_t a1)
{
  v2 = sub_217CCA338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC9B50(uint64_t a1)
{
  v2 = sub_217CCA338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleSaveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CCAD78(0, &qword_27CBA3D40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCA338();
  sub_217D89E7C();
  v126[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v127 = v7;
  v11 = type metadata accessor for ArticleSaveEvent.Model(0);
  v61 = v3;
  v62 = v11;
  v12 = v3 + *(v11 + 20);
  v13 = *(v12 + 96);
  v14 = *(v12 + 64);
  v123 = *(v12 + 80);
  v124 = v13;
  v15 = *(v12 + 96);
  *v125 = *(v12 + 112);
  v16 = *(v12 + 16);
  v17 = *(v12 + 48);
  v120 = *(v12 + 32);
  v121 = v17;
  v18 = *(v12 + 48);
  v122 = *(v12 + 64);
  v19 = *(v12 + 16);
  v119[0] = *v12;
  v119[1] = v19;
  v116 = v123;
  v117 = v15;
  v118[0] = *(v12 + 112);
  v113 = v120;
  v114 = v18;
  v115 = v14;
  *&v125[15] = *(v12 + 127);
  *(v118 + 15) = *(v12 + 127);
  v111 = v119[0];
  v112 = v16;
  v110 = 1;
  sub_217AD1630(v119, &v95);
  sub_217ACF52C();
  sub_217D89CAC();
  v108[5] = v116;
  v108[6] = v117;
  *v109 = v118[0];
  *&v109[15] = *(v118 + 15);
  v108[2] = v113;
  v108[3] = v114;
  v108[4] = v115;
  v108[0] = v111;
  v108[1] = v112;
  sub_217AD2864(v108);
  v20 = v61;
  v21 = v62;
  LOBYTE(v95) = *(v61 + v62[6]);
  LOBYTE(v86) = 2;
  sub_217AED190();
  sub_217D89CAC();
  v22 = (v20 + v21[7]);
  v23 = v22[1];
  v24 = v22[2];
  v105 = *v22;
  v106 = v23;
  v107 = v24;
  v104 = 3;
  sub_217AD1A68(v105, v23, v24);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v105, v106, v107);
  v25 = (v20 + v21[8]);
  v26 = v25[6];
  v27 = v25[4];
  v100 = v25[5];
  v101 = v26;
  v28 = v25[6];
  v29 = v25[8];
  v102 = v25[7];
  v103 = v29;
  v30 = v25[2];
  v31 = *v25;
  v96 = v25[1];
  v97 = v30;
  v32 = v25[2];
  v33 = v25[4];
  v98 = v25[3];
  v99 = v33;
  v34 = *v25;
  v92 = v28;
  v93 = v102;
  v94 = v25[8];
  v95 = v34;
  v88 = v32;
  v89 = v98;
  v90 = v27;
  v91 = v100;
  v86 = v31;
  v87 = v96;
  v85 = 4;
  sub_217AD87FC(&v95, v84);
  sub_217A5D3B4();
  sub_217D89C3C();
  v84[6] = v92;
  v84[7] = v93;
  v84[8] = v94;
  v84[2] = v88;
  v84[3] = v89;
  v84[4] = v90;
  v84[5] = v91;
  v84[0] = v86;
  v84[1] = v87;
  sub_217AD96E8(v84);
  v35 = (v20 + v21[9]);
  v36 = *v35;
  v37 = v35[1];
  LOWORD(v35) = *(v35 + 8);
  *&v76 = v36;
  *(&v76 + 1) = v37;
  LOWORD(v77) = v35;
  LOBYTE(v72) = 5;
  sub_217A5E790();

  sub_217D89C3C();

  v38 = (v20 + v21[10]);
  v39 = *v38;
  v40 = v38[1];
  LOWORD(v38) = *(v38 + 1);
  v81 = v39;
  v82 = v40;
  v83 = v38;
  v80 = 6;
  sub_217ACFB8C();
  sub_217D89CAC();
  v41 = (v20 + v21[11]);
  v42 = v41[1];
  v76 = *v41;
  v77 = v42;
  v44 = *v41;
  v43 = v41[1];
  v78 = v41[2];
  v79 = *(v41 + 48);
  v72 = v44;
  v73 = v43;
  v74 = v41[2];
  v75 = *(v41 + 48);
  v71 = 7;
  sub_217ACC004(&v76, v69);
  sub_217A55B98();
  sub_217D89CAC();
  v69[0] = v72;
  v69[1] = v73;
  v69[2] = v74;
  v70 = v75;
  sub_217ACC69C(v69);
  v45 = v20 + v21[12];
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 17);
  v49 = *(v45 + 24);
  v50 = *(v45 + 32);
  v64 = *v45;
  v65 = v46;
  LOBYTE(v66) = v47;
  BYTE1(v66) = v48;
  v67 = v49;
  v68 = v50;
  v63 = 8;
  sub_217AD084C();

  sub_217D89CAC();

  v51 = v62;
  v52 = (v20 + v62[13]);
  v53 = v52[1];
  v54 = v52[2];
  v55 = v52[3];
  v64 = *v52;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v63 = 9;
  sub_217AE39D0(v64, v53, v54, v55);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v64, v65, v66, v67);
  v56 = (v20 + v51[14]);
  v57 = v56[1];
  v58 = v56[2];
  v59 = v56[3];
  v60 = v56[4];
  v64 = *v56;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v63 = 10;
  sub_217AE3AE8(v64, v57, v58, v59, v60);
  sub_217AE2CFC();
  sub_217D89C3C();
  sub_217AE4AE4(v64, v65, v66, v67, v68);
  return (*(v127 + 8))(v9, v6);
}

unint64_t sub_217CCA338()
{
  result = qword_27CBA3D48;
  if (!qword_27CBA3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3D48);
  }

  return result;
}

void ArticleSaveEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_217D8899C();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CCAD78(0, &qword_27CBA3D50, MEMORY[0x277D844C8]);
  v56 = v5;
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for ArticleSaveEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCA338();
  v57 = v7;
  v11 = v86;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v54;
    v50 = v8;
    v51 = a1;
    v86 = v10;
    LOBYTE(v77) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v55;
    sub_217D89BCC();
    v14 = v3;
    v15 = *(v53 + 32);
    v16 = v86;
    v55 = v14;
    v15(v86, v13);
    v68 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v49 = 0;
    v17 = v50;
    v18 = &v16[v50[5]];
    v19 = *v76;
    *(v18 + 6) = v75;
    *(v18 + 7) = v19;
    *(v18 + 127) = *&v76[15];
    v20 = v72;
    *(v18 + 2) = v71;
    *(v18 + 3) = v20;
    v21 = v74;
    *(v18 + 4) = v73;
    *(v18 + 5) = v21;
    v22 = v70;
    *v18 = v69;
    *(v18 + 1) = v22;
    LOBYTE(v63) = 2;
    sub_217AED13C();
    sub_217D89BCC();
    v16[v17[6]] = v77;
    LOBYTE(v63) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v23 = v78;
    v24 = &v16[v17[7]];
    *v24 = v77;
    *(v24 + 2) = v23;
    v67 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v25 = &v16[v17[8]];
    v26 = v82;
    v27 = v84;
    *(v25 + 6) = v83;
    *(v25 + 7) = v27;
    *(v25 + 8) = v85;
    v28 = v80;
    *(v25 + 2) = v79;
    *(v25 + 3) = v28;
    *(v25 + 4) = v81;
    *(v25 + 5) = v26;
    v29 = v78;
    *v25 = v77;
    *(v25 + 1) = v29;
    LOBYTE(v59) = 5;
    sub_217A5E738();
    sub_217D89B5C();
    v30 = v64;
    v31 = &v16[v17[9]];
    *v31 = v63;
    *(v31 + 8) = v30;
    LOBYTE(v59) = 6;
    sub_217ACFB38();
    sub_217D89BCC();
    v32 = BYTE1(v63);
    v33 = WORD1(v63);
    v34 = &v16[v17[10]];
    *v34 = v63;
    v34[1] = v32;
    *(v34 + 1) = v33;
    v62 = 7;
    sub_217A54D08();
    sub_217D89BCC();
    v35 = &v86[v50[11]];
    v36 = v64;
    *v35 = v63;
    *(v35 + 1) = v36;
    *(v35 + 2) = v65;
    v35[48] = v66;
    v58 = 8;
    sub_217AD07F8();
    sub_217D89BCC();
    v37 = *(&v59 + 1);
    v38 = v60;
    v39 = BYTE1(v60);
    v40 = *(&v60 + 1);
    v41 = v61;
    v42 = &v86[v50[12]];
    *v42 = v59;
    *(v42 + 1) = v37;
    v42[16] = v38;
    v42[17] = v39;
    *(v42 + 3) = v40;
    *(v42 + 4) = v41;
    v58 = 9;
    sub_217ACFF40();
    sub_217D89B5C();
    v43 = &v86[v50[13]];
    v44 = v60;
    *v43 = v59;
    *(v43 + 1) = v44;
    v58 = 10;
    sub_217AE2CA8();
    sub_217D89B5C();
    (*(v12 + 8))(v57, v56);
    v45 = v61;
    v46 = v86;
    v47 = &v86[v50[14]];
    v48 = v60;
    *v47 = v59;
    *(v47 + 1) = v48;
    *(v47 + 4) = v45;
    sub_217CCADDC(v46, v52);
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_217CCAE40(v46);
  }
}

void sub_217CCAD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CCA338();
    v7 = a3(a1, &type metadata for ArticleSaveEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CCADDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleSaveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CCAE40(uint64_t a1)
{
  v2 = type metadata accessor for ArticleSaveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CCAF74@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_217CCB4E0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CC8C94(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217CC8C94(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_217CC8C94(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217CC8C94(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217CC8C94(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_217CC8C94(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
              if (v7 <= 0x3F)
              {
                sub_217CC8C94(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                if (v8 <= 0x3F)
                {
                  sub_217CC8C94(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                  if (v9 <= 0x3F)
                  {
                    sub_217CC8C94(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                    if (v10 <= 0x3F)
                    {
                      sub_217CC8C94(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
                      if (v11 <= 0x3F)
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
  }
}

unint64_t sub_217CCB8A8()
{
  result = qword_27CBA3D58;
  if (!qword_27CBA3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3D58);
  }

  return result;
}

unint64_t sub_217CCB900()
{
  result = qword_27CBA3D60;
  if (!qword_27CBA3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3D60);
  }

  return result;
}

unint64_t sub_217CCB958()
{
  result = qword_27CBA3D68;
  if (!qword_27CBA3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3D68);
  }

  return result;
}

uint64_t sub_217CCB9AC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_217CCBE18()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3DA0);
  __swift_project_value_buffer(v0, qword_27CBA3DA0);
  return sub_217D8866C();
}

uint64_t SportScoreConcernEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportScoreConcernEvent.scoreConcernData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportScoreConcernEvent(0) + 20);
  sub_217CCBFE4(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CCBFE4(uint64_t a1)
{
  if (!qword_27CBA3DB8)
  {
    sub_217CCC04C();
    sub_217CCC0A0();
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA3DB8);
    }
  }
}

unint64_t sub_217CCC04C()
{
  result = qword_27CBA3DC0;
  if (!qword_27CBA3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3DC0);
  }

  return result;
}

unint64_t sub_217CCC0A0()
{
  result = qword_27CBA3DC8;
  if (!qword_27CBA3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3DC8);
  }

  return result;
}

uint64_t SportScoreConcernEvent.scoreConcernData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportScoreConcernEvent(0) + 20);
  sub_217CCBFE4(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportScoreConcernEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SportScoreConcernEvent(0) + 20);
  sub_217CCBFE4(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t SportScoreConcernEvent.Model.scoreConcernData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportScoreConcernEvent.Model(0) + 20));
  v4 = v3[2];
  v6 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16 = v6;
  v17 = *(v3 + 10);
  v7 = v17;
  v9 = *v3;
  v13 = v3[1];
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_217CCC334(&v12, v11);
}

__n128 SportScoreConcernEvent.Model.init(eventData:scoreConcernData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for SportScoreConcernEvent.Model(0) + 20);
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  result = *a2;
  v10 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v10;
  return result;
}

uint64_t sub_217CCC42C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217CCC470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD20D0 == a2)
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

uint64_t sub_217CCC55C(uint64_t a1)
{
  v2 = sub_217CCC81C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CCC598(uint64_t a1)
{
  v2 = sub_217CCC81C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportScoreConcernEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CCCC3C(0, &qword_27CBA3DD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCC81C();
  sub_217D89E7C();
  v30 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = v3 + *(type metadata accessor for SportScoreConcernEvent.Model(0) + 20);
    v11 = *(v10 + 48);
    v12 = *(v10 + 16);
    v25 = *(v10 + 32);
    v26 = v11;
    v13 = *(v10 + 48);
    v27 = *(v10 + 64);
    v14 = *(v10 + 16);
    v24[0] = *v10;
    v24[1] = v14;
    v20 = v25;
    v21 = v13;
    v22 = *(v10 + 64);
    v28 = *(v10 + 80);
    v23 = *(v10 + 80);
    v18 = v24[0];
    v19 = v12;
    v29 = 1;
    sub_217CCC334(v24, v16);
    sub_217CCC0A0();
    sub_217D89CAC();
    v16[2] = v20;
    v16[3] = v21;
    v16[4] = v22;
    v17 = v23;
    v16[0] = v18;
    v16[1] = v19;
    sub_217CCC870(v16);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CCC81C()
{
  result = qword_27CBA3DD8;
  if (!qword_27CBA3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3DD8);
  }

  return result;
}

uint64_t SportScoreConcernEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v28 = sub_217D8899C();
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CCCC3C(0, &qword_27CBA3DE0, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SportScoreConcernEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCC81C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v10;
  v13 = v12;
  v14 = v25;
  LOBYTE(v29) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v28;
  v16 = v26;
  sub_217D89BCC();
  (*(v14 + 32))(v13, v5, v15);
  v35 = 1;
  sub_217CCC04C();
  sub_217D89BCC();
  (*(v27 + 8))(v9, v16);
  v17 = v24;
  v18 = v13 + *(v23 + 20);
  v19 = v32;
  *(v18 + 32) = v31;
  *(v18 + 48) = v19;
  *(v18 + 64) = v33;
  *(v18 + 80) = v34;
  v20 = v30;
  *v18 = v29;
  *(v18 + 16) = v20;
  sub_217CCCCA0(v13, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CCCD04(v13);
}

void sub_217CCCC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CCC81C();
    v7 = a3(a1, &type metadata for SportScoreConcernEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CCCCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportScoreConcernEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CCCD04(uint64_t a1)
{
  v2 = type metadata accessor for SportScoreConcernEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CCCE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217CCBFE4(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_217CCCF20(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CCBFE4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_217CCCFCC(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217CCD054()
{
  result = qword_27CBA3E08;
  if (!qword_27CBA3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E08);
  }

  return result;
}

unint64_t sub_217CCD0AC()
{
  result = qword_27CBA3E10;
  if (!qword_27CBA3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E10);
  }

  return result;
}

unint64_t sub_217CCD104()
{
  result = qword_27CBA3E18;
  if (!qword_27CBA3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E18);
  }

  return result;
}

uint64_t CommandExecutionSource.tracker.getter()
{
  sub_217D88ECC();
  sub_217CCD1BC();
  sub_217D8895C();
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_217CCD1BC()
{
  result = qword_27CBA3E20;
  if (!qword_27CBA3E20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CBA3E20);
  }

  return result;
}

NewsAnalytics::PuzzleLayout_optional __swiftcall PuzzleLayout.init(rawValue:)(Swift::String rawValue)
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

uint64_t PuzzleLayout.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CCD2C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x8000000217DCC180;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v6 = 0x8000000217DCC180;
  }

  else
  {
    v6 = 0xE700000000000000;
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

unint64_t sub_217CCD374()
{
  result = qword_27CBA3E28;
  if (!qword_27CBA3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E28);
  }

  return result;
}

uint64_t sub_217CCD3C8()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CCD450(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CCD4C4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CCD548@<X0>(char *a2@<X8>)
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

void sub_217CCD5A8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000217DCC180;
  v3 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_217CCD6AC()
{
  result = qword_27CBA3E30;
  if (!qword_27CBA3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E30);
  }

  return result;
}

uint64_t sub_217CCD7C8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3E68);
  __swift_project_value_buffer(v0, qword_27CBA3E68);
  return sub_217D8866C();
}

uint64_t FollowTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FollowTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 20);
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 20);
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 24);
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 24);
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 28);
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 28);
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 32);
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 32);
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 36);
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 36);
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 40);
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 40);
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FollowTagEvent(0);
  v5 = v4[5];
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v8, v17);
}

uint64_t FollowTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FollowTagEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t FollowTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FollowTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 32));
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

uint64_t FollowTagEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FollowTagEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t FollowTagEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 40);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

__n128 FollowTagEvent.Model.init(eventData:tagData:feedData:viewData:userBundleSubscriptionContextData:actionData:sectionData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v27 = *a3;
  v13 = *(a3 + 2);
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 8);
  v17 = *a6;
  v30 = *a7;
  v29 = a7[1].n128_u64[0];
  v28 = a7[1].n128_u8[8];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for FollowTagEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v11;
  v20[1] = v12;
  v21 = a8 + v19[6];
  *v21 = v27;
  *(v21 + 16) = v13;
  v22 = a8 + v19[7];
  *v22 = v14;
  *(v22 + 8) = v15;
  *(v22 + 16) = v16;
  v23 = a8 + v19[8];
  v24 = *(a5 + 16);
  *v23 = *a5;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a5 + 32);
  *(v23 + 48) = *(a5 + 48);
  *(a8 + v19[9]) = v17;
  v25 = (a8 + v19[10]);
  result = v30;
  *v25 = v30;
  v25[1].n128_u64[0] = v29;
  v25[1].n128_u8[8] = v28;
  return result;
}

uint64_t sub_217CCE9FC(uint64_t a1)
{
  v2 = sub_217CCEEE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CCEA38(uint64_t a1)
{
  v2 = sub_217CCEEE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CCF558(0, &qword_27CBA3E80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCEEE8();
  sub_217D89E7C();
  LOBYTE(v35) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FollowTagEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v35 = *v11;
    *(&v35 + 1) = v12;
    LOBYTE(v31) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v13 = (v3 + v10[6]);
    v14 = v13[1];
    v15 = v13[2];
    *&v35 = *v13;
    *(&v35 + 1) = v14;
    *&v36 = v15;
    LOBYTE(v31) = 2;
    sub_217AD1A68(v35, v14, v15);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v35, *(&v35 + 1), v36);
    v17 = (v3 + v10[7]);
    v18 = *v17;
    v19 = v17[1];
    LOWORD(v17) = *(v17 + 8);
    v39 = v18;
    v40 = v19;
    v41 = v17;
    v44 = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v20 = (v3 + v10[8]);
    v21 = v20[1];
    v35 = *v20;
    v36 = v21;
    v23 = *v20;
    v22 = v20[1];
    v37 = v20[2];
    v38 = *(v20 + 48);
    v31 = v23;
    v32 = v22;
    v33 = v20[2];
    v34 = *(v20 + 48);
    v43 = 4;
    sub_217ACC004(&v35, v29);
    sub_217A55B98();
    sub_217D89CAC();
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v30 = v34;
    sub_217ACC69C(v29);
    LOBYTE(v26) = *(v3 + v10[9]);
    v42 = 5;
    sub_217AED190();
    sub_217D89CAC();
    v24 = (v3 + v10[10]);
    v25 = *(v24 + 24);
    v26 = *v24;
    v27 = *(v24 + 1);
    v28 = v25;
    v42 = 6;
    sub_217B17644();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CCEEE8()
{
  result = qword_27CBA3E88;
  if (!qword_27CBA3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E88);
  }

  return result;
}

uint64_t FollowTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CCF558(0, &qword_27CBA3E90, MEMORY[0x277D844C8]);
  v31 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for FollowTagEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCEEE8();
  v32 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v29;
  LOBYTE(v36) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v30;
  sub_217D89BCC();
  (*(v28 + 32))(v11, v13, v4);
  LOBYTE(v33) = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v30 = 0;
  v14 = *(&v36 + 1);
  v15 = &v11[v9[5]];
  *v15 = v36;
  *(v15 + 1) = v14;
  LOBYTE(v33) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v16 = v37;
  v17 = &v11[v9[6]];
  *v17 = v36;
  *(v17 + 2) = v16;
  LOBYTE(v33) = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v18 = *(&v36 + 1);
  v19 = v37;
  v20 = &v11[v9[7]];
  *v20 = v36;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  v41 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = &v11[v9[8]];
  v22 = v37;
  *v21 = v36;
  *(v21 + 1) = v22;
  *(v21 + 2) = v38;
  v21[48] = v39;
  v40 = 5;
  sub_217AED13C();
  sub_217D89BCC();
  v11[v9[9]] = v33;
  v40 = 6;
  sub_217B175F0();
  sub_217D89B5C();
  (*(v12 + 8))(v32, v31);
  v23 = v34;
  v24 = v35;
  v25 = &v11[v9[10]];
  *v25 = v33;
  *(v25 + 2) = v23;
  v25[24] = v24;
  sub_217CCF5BC(v11, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CCF620(v11);
}

void sub_217CCF558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CCEEE8();
    v7 = a3(a1, &type metadata for FollowTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CCF5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CCF620(uint64_t a1)
{
  v2 = type metadata accessor for FollowTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CCF7B8()
{
  result = qword_27CBA3E98;
  if (!qword_27CBA3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E98);
  }

  return result;
}

unint64_t sub_217CCF810()
{
  result = qword_27CBA3EA0;
  if (!qword_27CBA3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3EA0);
  }

  return result;
}

unint64_t sub_217CCF868()
{
  result = qword_27CBA3EA8;
  if (!qword_27CBA3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3EA8);
  }

  return result;
}

uint64_t sub_217CCF984()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3EE0);
  __swift_project_value_buffer(v0, qword_27CBA3EE0);
  return sub_217D8866C();
}

uint64_t AudioEngagementCompletedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngagementCompletedEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 20);
  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 20);
  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 24);
  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 24);
  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 28);
  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 28);
  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 32);
  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 32);
  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 36);
  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 36);
  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 40);
  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 40);
  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 44);
  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 44);
  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 48);
  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 48);
  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 52);
  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 52);
  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 56);
  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 56);
  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 60);
  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 60);
  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 64);
  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CD0E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t AudioEngagementCompletedEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 64);
  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngagementCompletedEvent(0);
  v5 = v4[5];
  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v2, v29);
}

uint64_t AudioEngagementCompletedEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 20);
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

uint64_t AudioEngagementCompletedEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 24);
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

uint64_t AudioEngagementCompletedEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 28));
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

uint64_t AudioEngagementCompletedEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioEngagementCompletedEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngagementCompletedEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngagementCompletedEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 44));
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 10) = *(v3 + 26);
  v5 = *(v9 + 10);
  *a1 = v8;
  a1[1] = v4;
  *(a1 + 26) = v5;
  return sub_217AEC604(&v8, &v7);
}

uint64_t AudioEngagementCompletedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 48);
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

void AudioEngagementCompletedEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 52));
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

uint64_t AudioEngagementCompletedEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 56));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngagementCompletedEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 60));
  *a1 = result;
  return result;
}

uint64_t AudioEngagementCompletedEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

__n128 AudioEngagementCompletedEvent.Model.init(eventData:articleData:channelData:groupData:feedData:trackData:viewData:audioEngagementData:userBundleSubscriptionContextData:issueData:issueViewData:playbackData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, uint64_t *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __n128 *a11, uint64_t *a12, int *a13, char *a14)
{
  v19 = *a3;
  v49 = a3[1];
  v20 = *(a3 + 16);
  v21 = *(a3 + 17);
  v48 = a3[3];
  v47 = a3[4];
  v51 = *a5;
  v50 = *(a5 + 2);
  v53 = *a6;
  v52 = *(a6 + 4);
  v56 = *a7;
  v55 = a7[1];
  v54 = *(a7 + 8);
  v59 = a12[1];
  v60 = *a12;
  v22 = *a13;
  v62 = a14[1];
  v63 = *a14;
  v61 = *(a14 + 1);
  v23 = sub_217D8899C();
  v57 = a11[1];
  v58 = *a11;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v25 = a9 + v24[5];
  v26 = *(a2 + 48);
  *(v25 + 32) = *(a2 + 32);
  *(v25 + 48) = v26;
  v27 = *(a2 + 16);
  *v25 = *a2;
  *(v25 + 16) = v27;
  *(v25 + 127) = *(a2 + 127);
  v28 = *(a2 + 112);
  *(v25 + 96) = *(a2 + 96);
  *(v25 + 112) = v28;
  v29 = *(a2 + 80);
  *(v25 + 64) = *(a2 + 64);
  *(v25 + 80) = v29;
  v30 = a9 + v24[6];
  *v30 = v19;
  *(v30 + 8) = v49;
  *(v30 + 16) = v20;
  *(v30 + 17) = v21;
  *(v30 + 24) = v48;
  *(v30 + 32) = v47;
  v31 = (a9 + v24[7]);
  v32 = a4[3];
  v31[2] = a4[2];
  v31[3] = v32;
  v33 = a4[1];
  *v31 = *a4;
  v31[1] = v33;
  v34 = a4[8];
  v31[7] = a4[7];
  v31[8] = v34;
  v35 = a4[6];
  v31[5] = a4[5];
  v31[6] = v35;
  v31[4] = a4[4];
  v36 = a9 + v24[8];
  *v36 = v51;
  *(v36 + 16) = v50;
  v37 = a9 + v24[9];
  *v37 = v53;
  *(v37 + 4) = v52;
  v38 = a9 + v24[10];
  *v38 = v56;
  *(v38 + 8) = v55;
  *(v38 + 16) = v54;
  v39 = (a9 + v24[11]);
  v40 = a8[1];
  *v39 = *a8;
  v39[1] = v40;
  *(v39 + 26) = *(a8 + 26);
  v41 = a9 + v24[12];
  v42 = *(a10 + 16);
  *v41 = *a10;
  *(v41 + 16) = v42;
  *(v41 + 32) = *(a10 + 32);
  *(v41 + 48) = *(a10 + 48);
  v43 = (a9 + v24[13]);
  result = v58;
  *v43 = v58;
  v43[1] = v57;
  v45 = (a9 + v24[14]);
  *v45 = v60;
  v45[1] = v59;
  *(a9 + v24[15]) = v22;
  v46 = a9 + v24[16];
  *v46 = v63;
  *(v46 + 1) = v62;
  *(v46 + 2) = v61;
  return result;
}

uint64_t sub_217CD1CD0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x446C656E6E616863;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      v3 = 1684366694;
      goto LABEL_13;
    case 5:
      result = 0x7461446B63617274;
      break;
    case 6:
      v3 = 2003134838;
LABEL_13:
      result = v3 | 0x6174614400000000;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0x7461446575737369;
      break;
    case 10:
      result = 0x6569566575737369;
      break;
    case 11:
      result = 0x6B63616279616C70;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CD1E50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CD4288(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CD1E78(uint64_t a1)
{
  v2 = sub_217CD279C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CD1EB4(uint64_t a1)
{
  v2 = sub_217CD279C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementCompletedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CD3340(0, &qword_27CBA3EF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD279C();
  sub_217D89E7C();
  v136[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v137 = v7;
  v62 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v63 = v3;
  v11 = v3 + v62[5];
  v12 = *(v11 + 96);
  v13 = *(v11 + 64);
  v133 = *(v11 + 80);
  v134 = v12;
  v14 = *(v11 + 96);
  *v135 = *(v11 + 112);
  v15 = *(v11 + 16);
  v16 = *(v11 + 48);
  v130 = *(v11 + 32);
  v131 = v16;
  v17 = *(v11 + 48);
  v132 = *(v11 + 64);
  v18 = *(v11 + 16);
  v129[0] = *v11;
  v129[1] = v18;
  v126 = v133;
  v127 = v14;
  v128[0] = *(v11 + 112);
  v123 = v130;
  v124 = v17;
  v125 = v13;
  *&v135[15] = *(v11 + 127);
  *(v128 + 15) = *(v11 + 127);
  v121 = v129[0];
  v122 = v15;
  v120 = 1;
  sub_217AD1630(v129, &v102);
  sub_217ACF52C();
  sub_217D89CAC();
  v118[5] = v126;
  v118[6] = v127;
  *v119 = v128[0];
  *&v119[15] = *(v128 + 15);
  v118[2] = v123;
  v118[3] = v124;
  v118[4] = v125;
  v118[0] = v121;
  v118[1] = v122;
  sub_217AD2864(v118);
  v20 = v62;
  v19 = v63;
  v21 = (v63 + v62[6]);
  v22 = v21[1];
  v23 = *(v21 + 16);
  v24 = *(v21 + 17);
  v25 = v21[3];
  v26 = v21[4];
  v112 = *v21;
  v113 = v22;
  v114 = v23;
  v115 = v24;
  v116 = v25;
  v117 = v26;
  v111 = 2;
  sub_217AD084C();

  sub_217D89CAC();

  v27 = (v19 + v20[7]);
  v28 = v27[6];
  v29 = v27[4];
  v107 = v27[5];
  v108 = v28;
  v30 = v27[6];
  v31 = v27[8];
  v109 = v27[7];
  v110 = v31;
  v32 = v27[2];
  v33 = *v27;
  v103 = v27[1];
  v104 = v32;
  v34 = v27[2];
  v35 = v27[4];
  v105 = v27[3];
  v106 = v35;
  v36 = *v27;
  v99 = v30;
  v100 = v109;
  v101 = v27[8];
  v102 = v36;
  v95 = v34;
  v96 = v105;
  v97 = v29;
  v98 = v107;
  v93 = v33;
  v94 = v103;
  v92 = 3;
  sub_217AD87FC(&v102, v91);
  sub_217A5D3B4();
  sub_217D89C3C();
  v91[6] = v99;
  v91[7] = v100;
  v91[8] = v101;
  v91[2] = v95;
  v91[3] = v96;
  v91[4] = v97;
  v91[5] = v98;
  v91[0] = v93;
  v91[1] = v94;
  sub_217AD96E8(v91);
  v37 = (v19 + v20[8]);
  v38 = v37[1];
  v39 = v37[2];
  *&v78 = *v37;
  *(&v78 + 1) = v38;
  *&v79 = v39;
  LOBYTE(v72) = 4;
  sub_217AD1A68(v78, v38, v39);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v78, *(&v78 + 1), v79);
  v40 = (v19 + v20[9]);
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 4);
  LODWORD(v78) = v41;
  BYTE4(v78) = v40;
  LOBYTE(v72) = 5;
  sub_217C0573C();
  sub_217D89CAC();
  v42 = (v19 + v20[10]);
  v43 = *v42;
  v44 = v42[1];
  LOWORD(v42) = *(v42 + 8);
  v88 = v43;
  v89 = v44;
  v90 = v42;
  v87 = 6;
  sub_217A5E790();

  sub_217D89C3C();

  v45 = (v19 + v20[11]);
  v46 = v45[1];
  v85 = *v45;
  v86[0] = v46;
  *(v86 + 10) = *(v45 + 26);
  v47 = v45[1];
  v83 = *v45;
  v84[0] = v47;
  *(v84 + 10) = *(v45 + 26);
  v82 = 7;
  sub_217AEC604(&v85, &v78);
  sub_217AEC6C8();
  sub_217D89CAC();
  v76 = v83;
  v77[0] = v84[0];
  *(v77 + 10) = *(v84 + 10);
  sub_217AEC63C(&v76);
  v48 = (v19 + v20[12]);
  v49 = v48[1];
  v78 = *v48;
  v79 = v49;
  v51 = *v48;
  v50 = v48[1];
  v80 = v48[2];
  v81 = *(v48 + 48);
  v72 = v51;
  v73 = v50;
  v74 = v48[2];
  v75 = *(v48 + 48);
  v71 = 8;
  sub_217ACC004(&v78, v69);
  sub_217A55B98();
  sub_217D89CAC();
  v69[0] = v72;
  v69[1] = v73;
  v69[2] = v74;
  v70 = v75;
  sub_217ACC69C(v69);
  v52 = (v19 + v20[13]);
  v53 = v52[1];
  v54 = v52[2];
  v55 = v52[3];
  v65 = *v52;
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v64 = 9;
  sub_217AE39D0(v65, v53, v54, v55);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v65, v66, v67, v68);
  v56 = (v19 + v20[14]);
  v57 = v56[1];
  v65 = *v56;
  v66 = v57;
  v64 = 10;
  sub_217AD01EC();

  sub_217D89C3C();

  LODWORD(v65) = *(v63 + v62[15]);
  v64 = 11;
  sub_217C063B4();
  sub_217D89CAC();
  v58 = (v63 + v62[16]);
  v59 = *v58;
  v60 = v58[1];
  LOWORD(v58) = *(v58 + 1);
  LOBYTE(v65) = v59;
  BYTE1(v65) = v60;
  WORD1(v65) = v58;
  v64 = 12;
  sub_217ACFB8C();
  sub_217D89CAC();
  return (*(v137 + 8))(v9, v6);
}

unint64_t sub_217CD279C()
{
  result = qword_27CBA3F00;
  if (!qword_27CBA3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F00);
  }

  return result;
}

void AudioEngagementCompletedEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_217D8899C();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CD3340(0, &qword_27CBA3F08, MEMORY[0x277D844C8]);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD279C();
  v55 = v7;
  v11 = v86;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v52;
    v48 = v8;
    v49 = a1;
    v86 = v10;
    LOBYTE(v77) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    sub_217D89BCC();
    v13 = v86;
    (*(v51 + 32))(v86, v54, v3);
    v68 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v47 = v3;
    v54 = 0;
    v14 = v48;
    v15 = &v13[v48[5]];
    v16 = *v76;
    *(v15 + 6) = v75;
    *(v15 + 7) = v16;
    *(v15 + 127) = *&v76[15];
    v17 = v72;
    *(v15 + 2) = v71;
    *(v15 + 3) = v17;
    v18 = v74;
    *(v15 + 4) = v73;
    *(v15 + 5) = v18;
    v19 = v70;
    *v15 = v69;
    *(v15 + 1) = v19;
    LOBYTE(v60) = 2;
    sub_217AD07F8();
    sub_217D89BCC();
    v20 = *(&v77 + 1);
    v21 = v78;
    v22 = BYTE1(v78);
    v23 = *(&v78 + 1);
    v24 = v79;
    v25 = &v13[v14[6]];
    *v25 = v77;
    *(v25 + 1) = v20;
    v25[16] = v21;
    v25[17] = v22;
    *(v25 + 3) = v23;
    *(v25 + 4) = v24;
    v67 = 3;
    sub_217A5D308();
    sub_217D89B5C();
    v26 = &v13[v14[7]];
    v27 = v84;
    *(v26 + 6) = v83;
    *(v26 + 7) = v27;
    *(v26 + 8) = v85;
    v28 = v80;
    *(v26 + 2) = v79;
    *(v26 + 3) = v28;
    v29 = v82;
    *(v26 + 4) = v81;
    *(v26 + 5) = v29;
    v30 = v78;
    *v26 = v77;
    *(v26 + 1) = v30;
    LOBYTE(v65) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v31 = v61;
    v32 = &v13[v14[8]];
    *v32 = v60;
    *(v32 + 2) = v31;
    LOBYTE(v65) = 5;
    sub_217C056E8();
    sub_217D89BCC();
    v33 = BYTE4(v60);
    v34 = &v13[v14[9]];
    *v34 = v60;
    v34[4] = v33;
    LOBYTE(v65) = 6;
    sub_217A5E738();
    sub_217D89B5C();
    v35 = v61;
    v36 = &v13[v14[10]];
    *v36 = v60;
    *(v36 + 8) = v35;
    v64 = 7;
    sub_217AEC670();
    sub_217D89BCC();
    v37 = &v13[v14[11]];
    v38 = *v66;
    *v37 = v65;
    *(v37 + 1) = v38;
    *(v37 + 26) = *&v66[10];
    v59 = 8;
    sub_217A54D08();
    sub_217D89BCC();
    v39 = &v86[v14[12]];
    v40 = v61;
    *v39 = v60;
    *(v39 + 1) = v40;
    *(v39 + 2) = v62;
    v39[48] = v63;
    v56 = 9;
    sub_217ACFF40();
    sub_217D89B5C();
    v41 = &v86[v48[13]];
    v42 = v58;
    *v41 = v57;
    *(v41 + 1) = v42;
    v56 = 10;
    sub_217AD0198();
    sub_217D89B5C();
    *&v86[v48[14]] = v57;
    v56 = 11;
    sub_217C06360();
    sub_217D89BCC();
    *&v86[v48[15]] = v57;
    v56 = 12;
    sub_217ACFB38();
    sub_217D89BCC();
    (*(v12 + 8))(v55, v53);
    v43 = BYTE1(v57);
    v44 = WORD1(v57);
    v45 = v86;
    v46 = &v86[v48[16]];
    *v46 = v57;
    v46[1] = v43;
    *(v46 + 1) = v44;
    sub_217CD33A4(v45, v50);
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_217CD3408(v45);
  }
}

void sub_217CD3340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CD279C();
    v7 = a3(a1, &type metadata for AudioEngagementCompletedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CD33A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CD3408(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CD353C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v4, v30);
}

void sub_217CD3B98(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CD0E18(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217CD0E18(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217CD0E18(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217CD0E18(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217CD0E18(319, &qword_2811C84A8, sub_217C056E8, sub_217C0573C, &type metadata for TrackData);
            if (v6 <= 0x3F)
            {
              sub_217CD0E18(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
              if (v7 <= 0x3F)
              {
                sub_217CD0E18(319, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8, &type metadata for AudioEngagementData);
                if (v8 <= 0x3F)
                {
                  sub_217CD0E18(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217CD0E18(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                    if (v10 <= 0x3F)
                    {
                      sub_217CD0E18(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                      if (v11 <= 0x3F)
                      {
                        sub_217CD0E18(319, &qword_2811C8798, sub_217C06360, sub_217C063B4, &type metadata for PlaybackData);
                        if (v12 <= 0x3F)
                        {
                          sub_217CD0E18(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                          if (v13 <= 0x3F)
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
      }
    }
  }
}

void sub_217CD3FEC(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
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

unint64_t sub_217CD4184()
{
  result = qword_27CBA3F10;
  if (!qword_27CBA3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F10);
  }

  return result;
}

unint64_t sub_217CD41DC()
{
  result = qword_27CBA3F18;
  if (!qword_27CBA3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F18);
  }

  return result;
}

unint64_t sub_217CD4234()
{
  result = qword_27CBA3F20;
  if (!qword_27CBA3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F20);
  }

  return result;
}

uint64_t sub_217CD4288(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD0540 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217CD4780()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3F58);
  __swift_project_value_buffer(v0, qword_27CBA3F58);
  return sub_217D8866C();
}

uint64_t BlockTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BlockTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 20);
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 20);
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 24);
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 24);
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 28);
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 28);
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 32);
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 32);
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 36);
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 36);
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 40);
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlockTagEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BlockTagEvent(0) + 40);
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BlockTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BlockTagEvent(0);
  v5 = v4[5];
  sub_217BB70CC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217BB70CC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217BB70CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217BB70CC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217BB70CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BB70CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t BlockTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t BlockTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t BlockTagEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t BlockTagEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 32);
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
  return sub_217AFFBC0(v17, v16);
}

uint64_t BlockTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BlockTagEvent.Model(0) + 36));
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

uint64_t BlockTagEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BlockTagEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 BlockTagEvent.Model.init(eventData:viewData:tagData:feedData:articleData:userBundleSubscriptionContextData:actionData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 8);
  v15 = *a3;
  v16 = a3[1];
  v31 = *a4;
  v17 = *(a4 + 2);
  v32 = *a7;
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for BlockTagEvent.Model(0);
  v20 = a8 + v19[5];
  *v20 = v12;
  *(v20 + 8) = v13;
  *(v20 + 16) = v14;
  v21 = (a8 + v19[6]);
  *v21 = v15;
  v21[1] = v16;
  v22 = a8 + v19[7];
  *v22 = v31;
  *(v22 + 16) = v17;
  v23 = a8 + v19[8];
  v24 = *(a5 + 48);
  *(v23 + 32) = *(a5 + 32);
  *(v23 + 48) = v24;
  v25 = *(a5 + 16);
  *v23 = *a5;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a5 + 127);
  v26 = *(a5 + 112);
  *(v23 + 96) = *(a5 + 96);
  *(v23 + 112) = v26;
  v27 = *(a5 + 80);
  *(v23 + 64) = *(a5 + 64);
  *(v23 + 80) = v27;
  v28 = a8 + v19[9];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  result = *(a6 + 32);
  *(v28 + 32) = result;
  *(v28 + 48) = *(a6 + 48);
  *(a8 + v19[10]) = v32;
  return result;
}

uint64_t sub_217CD5A00(uint64_t a1)
{
  v2 = sub_217CD5F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CD5A3C(uint64_t a1)
{
  v2 = sub_217CD5F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CD677C(0, &qword_27CBA3F70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD5F80();
  sub_217D89E7C();
  LOBYTE(v51) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v63 = type metadata accessor for BlockTagEvent.Model(0);
    v10 = (v3 + v63[5]);
    v11 = *v10;
    v12 = v10[1];
    LOWORD(v10) = *(v10 + 8);
    *&v51 = v11;
    *(&v51 + 1) = v12;
    LOWORD(v52) = v10;
    LOBYTE(v43) = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v13 = (v3 + v63[6]);
    v14 = v13[1];
    *&v51 = *v13;
    *(&v51 + 1) = v14;
    LOBYTE(v43) = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v16 = (v3 + v63[7]);
    v17 = v16[1];
    v18 = v16[2];
    v60 = *v16;
    v61 = v17;
    v62 = v18;
    v59 = 3;
    sub_217AD1A68(v60, v17, v18);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v60, v61, v62);
    v19 = (v3 + v63[8]);
    v20 = v19[6];
    v21 = v19[4];
    v56 = v19[5];
    v57 = v20;
    v22 = v19[6];
    *v58 = v19[7];
    v23 = v19[1];
    v24 = v19[3];
    v53 = v19[2];
    v54 = v24;
    v25 = v19[3];
    v55 = v19[4];
    v26 = v19[1];
    v51 = *v19;
    v52 = v26;
    v48 = v56;
    v49 = v22;
    v50[0] = v19[7];
    v45 = v53;
    v46 = v25;
    v47 = v21;
    *&v58[15] = *(v19 + 127);
    *(v50 + 15) = *(v19 + 127);
    v43 = v51;
    v44 = v23;
    v42 = 4;
    sub_217AFFBC0(&v51, v40);
    sub_217ACF52C();
    sub_217D89C3C();
    v40[6] = v49;
    *v41 = v50[0];
    *&v41[15] = *(v50 + 15);
    v40[2] = v45;
    v40[3] = v46;
    v40[4] = v47;
    v40[5] = v48;
    v40[0] = v43;
    v40[1] = v44;
    sub_217B009E0(v40);
    v27 = v3 + v63[9];
    v28 = *(v27 + 16);
    v29 = *(v27 + 32);
    v38[0] = *v27;
    v38[1] = v28;
    v38[2] = v29;
    v39 = *(v27 + 48);
    v34 = v38[0];
    v35 = v28;
    v36 = *(v27 + 32);
    v37 = *(v27 + 48);
    v33 = 5;
    sub_217ACC004(v38, v31);
    sub_217A55B98();
    sub_217D89CAC();
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v32 = v37;
    sub_217ACC69C(v31);
    v30[15] = *(v3 + v63[10]);
    v30[14] = 6;
    sub_217AED190();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CD5F80()
{
  result = qword_27CBA3F78;
  if (!qword_27CBA3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F78);
  }

  return result;
}

uint64_t BlockTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_217D8899C();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CD677C(0, &qword_27CBA3F80, MEMORY[0x277D844C8]);
  v36 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for BlockTagEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217CD5F80();
  v37 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v14 = v35;
  v15 = v12;
  LOBYTE(v44) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v16 = v36;
  sub_217D89BCC();
  (*(v34 + 32))(v15, v6, v4);
  LOBYTE(v41[0]) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v17 = *(&v44 + 1);
  v18 = v45;
  v19 = v15 + v10[5];
  *v19 = v44;
  *(v19 + 8) = v17;
  *(v19 + 16) = v18;
  LOBYTE(v41[0]) = 2;
  sub_217AF6AC0();
  sub_217D89BCC();
  v20 = *(&v44 + 1);
  v21 = (v15 + v10[6]);
  *v21 = v44;
  v21[1] = v20;
  LOBYTE(v41[0]) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v22 = v45;
  v23 = v15 + v10[7];
  *v23 = v44;
  *(v23 + 16) = v22;
  v43 = 4;
  sub_217ACF4D8();
  sub_217D89B5C();
  v24 = v15 + v10[8];
  v25 = v49;
  v26 = v51[0];
  *(v24 + 96) = v50;
  *(v24 + 112) = v26;
  *(v24 + 127) = *(v51 + 15);
  v27 = v47;
  *(v24 + 32) = v46;
  *(v24 + 48) = v27;
  *(v24 + 64) = v48;
  *(v24 + 80) = v25;
  v28 = v45;
  *v24 = v44;
  *(v24 + 16) = v28;
  v40 = 5;
  sub_217A54D08();
  sub_217D89BCC();
  v29 = v15 + v10[9];
  v30 = v41[1];
  *v29 = v41[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v41[2];
  *(v29 + 48) = v42;
  v38 = 6;
  sub_217AED13C();
  sub_217D89BCC();
  (*(v14 + 8))(v37, v16);
  *(v15 + v10[10]) = v39;
  sub_217CD67E0(v15, v33);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_217CD6844(v15);
}

void sub_217CD677C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CD5F80();
    v7 = a3(a1, &type metadata for BlockTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CD67E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlockTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CD6844(uint64_t a1)
{
  v2 = type metadata accessor for BlockTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CD69DC()
{
  result = qword_27CBA3F88;
  if (!qword_27CBA3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F88);
  }

  return result;
}

unint64_t sub_217CD6A34()
{
  result = qword_27CBA3F90;
  if (!qword_27CBA3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F90);
  }

  return result;
}

unint64_t sub_217CD6A8C()
{
  result = qword_27CBA3F98;
  if (!qword_27CBA3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3F98);
  }

  return result;
}

uint64_t sub_217CD6BA8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3FD0);
  __swift_project_value_buffer(v0, qword_27CBA3FD0);
  return sub_217D8866C();
}

uint64_t PictureInPictureStoppedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PictureInPictureStoppedEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 20);
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 20);
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 24);
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 24);
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 28);
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 28);
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 32);
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 32);
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 36);
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStoppedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 36);
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 40);
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CD761C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t PictureInPictureStoppedEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStoppedEvent(0) + 40);
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStoppedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PictureInPictureStoppedEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v6, v17);
}

uint64_t PictureInPictureStoppedEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 20);
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
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8, &type metadata for ArticleData);
}

void PictureInPictureStoppedEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 24));
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

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t PictureInPictureStoppedEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PictureInPictureStoppedEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 32));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t PictureInPictureStoppedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 36));
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

uint64_t PictureInPictureStoppedEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStoppedEvent.Model(0) + 40));
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
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

__n128 PictureInPictureStoppedEvent.Model.init(eventData:articleData:channelData:feedData:mediaData:userBundleSubscriptionContextData:groupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a3 + 4);
  v37 = *a4;
  v15 = *(a4 + 2);
  v40 = *a5;
  v16 = *(a5 + 2);
  v39 = *(a5 + 1);
  v17 = *(a5 + 6);
  v38 = a5[28];
  v18 = sub_217D8899C();
  v35 = a3[1];
  v36 = *a3;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
  v20 = a8 + v19[5];
  v21 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v21;
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  *(v20 + 127) = *(a2 + 127);
  v23 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v23;
  v24 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v24;
  v25 = a8 + v19[6];
  *v25 = v36;
  *(v25 + 16) = v35;
  *(v25 + 32) = v14;
  v26 = a8 + v19[7];
  *v26 = v37;
  *(v26 + 16) = v15;
  v27 = a8 + v19[8];
  *v27 = v40;
  *(v27 + 8) = v39;
  *(v27 + 16) = v16;
  *(v27 + 24) = v17;
  *(v27 + 28) = v38;
  v28 = a8 + v19[9];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a6 + 32);
  *(v28 + 48) = *(a6 + 48);
  v30 = a8 + v19[10];
  v31 = *(a7 + 112);
  *(v30 + 96) = *(a7 + 96);
  *(v30 + 112) = v31;
  *(v30 + 128) = *(a7 + 128);
  v32 = *(a7 + 48);
  *(v30 + 32) = *(a7 + 32);
  *(v30 + 48) = v32;
  v33 = *(a7 + 80);
  *(v30 + 64) = *(a7 + 64);
  *(v30 + 80) = v33;
  result = *(a7 + 16);
  *v30 = *a7;
  *(v30 + 16) = result;
  return result;
}

unint64_t sub_217CD7FA0()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  if (v1 != 5)
  {
    v3 = 0x74614470756F7267;
  }

  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0x746144616964656DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 1)
  {
    v5 = 0x446C656E6E616863;
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

uint64_t sub_217CD808C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CD98F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CD80B4(uint64_t a1)
{
  v2 = sub_217CD8720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CD80F0(uint64_t a1)
{
  v2 = sub_217CD8720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PictureInPictureStoppedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CD8EBC(0, &qword_27CBA3FE8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v47 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD8720();
  sub_217D89E7C();
  v100[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v98 = *(v11 + 96);
    *v99 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v94 = *(v11 + 32);
    v95 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v96 = *(v11 + 64);
    v97 = v17;
    v18 = *(v11 + 16);
    v93[0] = *v11;
    v93[1] = v18;
    v19 = *(v11 + 112);
    v91 = v98;
    v92[0] = v19;
    v87 = v94;
    v88 = v16;
    v89 = v96;
    v90 = v12;
    *&v99[15] = *(v11 + 127);
    *(v92 + 15) = *(v11 + 127);
    v85 = v93[0];
    v86 = v14;
    v84 = 1;
    sub_217AE38AC(v93, &v60, &qword_2811C7DB8, &type metadata for ArticleData);
    sub_217ACF52C();
    sub_217D89C3C();
    v82[6] = v91;
    *v83 = v92[0];
    *&v83[15] = *(v92 + 15);
    v82[2] = v87;
    v82[3] = v88;
    v82[4] = v89;
    v82[5] = v90;
    v82[0] = v85;
    v82[1] = v86;
    sub_217AE4A44(v82, &qword_2811C7DB8, &type metadata for ArticleData);
    v20 = (v3 + v10[6]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    *&v60 = *v20;
    *(&v60 + 1) = v21;
    *&v61 = v22;
    *(&v61 + 1) = v23;
    *&v62 = v24;
    LOBYTE(v49) = 2;
    sub_217AD86BC(v60, v21, v22, v23, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v60, *(&v60 + 1), v61, *(&v61 + 1), v62);
    v25 = (v3 + v10[7]);
    v26 = v25[1];
    v27 = v25[2];
    *&v60 = *v25;
    *(&v60 + 1) = v26;
    *&v61 = v27;
    LOBYTE(v49) = 3;
    sub_217AD1A68(v60, v26, v27);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v60, *(&v60 + 1), v61);
    v28 = (v3 + v10[8]);
    v29 = *v28;
    v30 = *(v28 + 1);
    v31 = *(v28 + 2);
    v32 = *(v28 + 6);
    LOBYTE(v28) = v28[28];
    v77[0] = v29;
    v78 = v30;
    v79 = v31;
    v80 = v32;
    v81 = v28;
    v76 = 4;
    sub_217AE1D08();

    sub_217D89CAC();

    v33 = (v3 + v10[9]);
    v34 = v33[1];
    v74[0] = *v33;
    v74[1] = v34;
    v36 = *v33;
    v35 = v33[1];
    v74[2] = v33[2];
    v75 = *(v33 + 48);
    v70 = v36;
    v71 = v35;
    v72 = v33[2];
    v73 = *(v33 + 48);
    v69 = 5;
    sub_217ACC004(v74, &v60);
    sub_217A55B98();
    sub_217D89CAC();
    v58[0] = v70;
    v58[1] = v71;
    v58[2] = v72;
    v59 = v73;
    sub_217ACC69C(v58);
    v38 = (v3 + v10[10]);
    v39 = v38[5];
    v40 = v38[7];
    v66 = v38[6];
    v67 = v40;
    v41 = v38[7];
    v68 = v38[8];
    v42 = v38[1];
    v43 = v38[3];
    v62 = v38[2];
    v63 = v43;
    v44 = v38[3];
    v45 = v38[5];
    v64 = v38[4];
    v65 = v45;
    v46 = v38[1];
    v60 = *v38;
    v61 = v46;
    v55 = v66;
    v56 = v41;
    v57 = v38[8];
    v51 = v62;
    v52 = v44;
    v53 = v64;
    v54 = v39;
    v49 = v60;
    v50 = v42;
    v48 = 6;
    sub_217AE38AC(&v60, v47, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v47[6] = v55;
    v47[7] = v56;
    v47[8] = v57;
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_217AE4A44(v47, &qword_2811BD178, &type metadata for GroupData);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CD8720()
{
  result = qword_27CBA3FF0;
  if (!qword_27CBA3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3FF0);
  }

  return result;
}

void PictureInPictureStoppedEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_217D8899C();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CD8EBC(0, &qword_27CBA3FF8, MEMORY[0x277D844C8]);
  v46 = v5;
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CD8720();
  v45 = v7;
  v11 = v65;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v42;
    v65 = a1;
    v13 = v43;
    LOBYTE(v48) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    sub_217D89BCC();
    (*(v13 + 32))(v10, v44, v3);
    v62 = 1;
    sub_217ACF4D8();
    sub_217D89B5C();
    v44 = 0;
    v14 = v8[5];
    v40 = v10;
    v15 = &v10[v14];
    v16 = v64[0];
    *(v15 + 6) = v63[6];
    *(v15 + 7) = v16;
    *(v15 + 127) = *(v64 + 15);
    v17 = v63[3];
    *(v15 + 2) = v63[2];
    *(v15 + 3) = v17;
    v18 = v63[5];
    *(v15 + 4) = v63[4];
    *(v15 + 5) = v18;
    v19 = v63[1];
    *v15 = v63[0];
    *(v15 + 1) = v19;
    LOBYTE(v58) = 2;
    sub_217AD07F8();
    sub_217D89B5C();
    v20 = v12;
    v21 = v50;
    v22 = &v40[v8[6]];
    v23 = v49;
    *v22 = v48;
    *(v22 + 1) = v23;
    *(v22 + 4) = v21;
    LOBYTE(v58) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v24 = v49;
    v25 = &v40[v8[7]];
    *v25 = v48;
    *(v25 + 2) = v24;
    LOBYTE(v58) = 4;
    sub_217AE1CB4();
    sub_217D89BCC();
    v26 = v65;
    v27 = *(&v48 + 1);
    v28 = v49;
    v29 = DWORD2(v49);
    v30 = BYTE12(v49);
    v31 = &v40[v8[8]];
    *v31 = v48;
    *(v31 + 1) = v27;
    *(v31 + 2) = v28;
    *(v31 + 6) = v29;
    v31[28] = v30;
    v57 = 5;
    sub_217A54D08();
    sub_217D89BCC();
    v32 = &v40[v8[9]];
    v33 = v59;
    *v32 = v58;
    *(v32 + 1) = v33;
    *(v32 + 2) = v60;
    v32[48] = v61;
    v47 = 6;
    sub_217A5D308();
    sub_217D89B5C();
    (*(v20 + 8))(v45, v46);
    v34 = v40;
    v35 = &v40[v8[10]];
    v36 = v55;
    *(v35 + 6) = v54;
    *(v35 + 7) = v36;
    *(v35 + 8) = v56;
    v37 = v51;
    *(v35 + 2) = v50;
    *(v35 + 3) = v37;
    v38 = v53;
    *(v35 + 4) = v52;
    *(v35 + 5) = v38;
    v39 = v49;
    *v35 = v48;
    *(v35 + 1) = v39;
    sub_217CD8F20(v34, v41);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_217CD8F84(v34);
  }
}

void sub_217CD8EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CD8720();
    v7 = a3(a1, &type metadata for PictureInPictureStoppedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CD8F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CD8F84(uint64_t a1)
{
  v2 = type metadata accessor for PictureInPictureStoppedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CD90B8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v7, v18);
}

void sub_217CD9444(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CD761C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217CD761C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217CD761C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217CD761C(319, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
          if (v5 <= 0x3F)
          {
            sub_217CD761C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
            if (v6 <= 0x3F)
            {
              sub_217CD761C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
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

void sub_217CD96B8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217CD97F0()
{
  result = qword_27CBA4020;
  if (!qword_27CBA4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4020);
  }

  return result;
}

unint64_t sub_217CD9848()
{
  result = qword_27CBA4028;
  if (!qword_27CBA4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4028);
  }

  return result;
}

unint64_t sub_217CD98A0()
{
  result = qword_27CBA4030;
  if (!qword_27CBA4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4030);
  }

  return result;
}

uint64_t sub_217CD98F4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
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

uint64_t sub_217CD9C20()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA4068);
  __swift_project_value_buffer(v0, qword_27CBA4068);
  return sub_217D8866C();
}

uint64_t PictureInPictureStartedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PictureInPictureStartedEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 20);
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 20);
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 24);
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 24);
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 28);
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 28);
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 32);
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 32);
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 36);
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 36);
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 40);
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PictureInPictureStartedEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PictureInPictureStartedEvent(0) + 40);
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PictureInPictureStartedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PictureInPictureStartedEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CD761C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CD761C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CD761C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CD761C(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217CD761C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217CD761C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v6, v17);
}

uint64_t PictureInPictureStartedEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 20);
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
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8, &type metadata for ArticleData);
}

void PictureInPictureStartedEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 24));
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

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t PictureInPictureStartedEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t PictureInPictureStartedEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 32));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t PictureInPictureStartedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 36));
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

uint64_t PictureInPictureStartedEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PictureInPictureStartedEvent.Model(0) + 40));
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
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

__n128 PictureInPictureStartedEvent.Model.init(eventData:articleData:channelData:feedData:mediaData:userBundleSubscriptionContextData:groupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a3 + 4);
  v37 = *a4;
  v15 = *(a4 + 2);
  v40 = *a5;
  v16 = *(a5 + 2);
  v39 = *(a5 + 1);
  v17 = *(a5 + 6);
  v38 = a5[28];
  v18 = sub_217D8899C();
  v35 = a3[1];
  v36 = *a3;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
  v20 = a8 + v19[5];
  v21 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v21;
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  *(v20 + 127) = *(a2 + 127);
  v23 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v23;
  v24 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v24;
  v25 = a8 + v19[6];
  *v25 = v36;
  *(v25 + 16) = v35;
  *(v25 + 32) = v14;
  v26 = a8 + v19[7];
  *v26 = v37;
  *(v26 + 16) = v15;
  v27 = a8 + v19[8];
  *v27 = v40;
  *(v27 + 8) = v39;
  *(v27 + 16) = v16;
  *(v27 + 24) = v17;
  *(v27 + 28) = v38;
  v28 = a8 + v19[9];
  v29 = *(a6 + 16);
  *v28 = *a6;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a6 + 32);
  *(v28 + 48) = *(a6 + 48);
  v30 = a8 + v19[10];
  v31 = *(a7 + 112);
  *(v30 + 96) = *(a7 + 96);
  *(v30 + 112) = v31;
  *(v30 + 128) = *(a7 + 128);
  v32 = *(a7 + 48);
  *(v30 + 32) = *(a7 + 32);
  *(v30 + 48) = v32;
  v33 = *(a7 + 80);
  *(v30 + 64) = *(a7 + 64);
  *(v30 + 80) = v33;
  result = *(a7 + 16);
  *v30 = *a7;
  *(v30 + 16) = result;
  return result;
}

uint64_t sub_217CDAF9C(uint64_t a1)
{
  v2 = sub_217CDB608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDAFD8(uint64_t a1)
{
  v2 = sub_217CDB608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PictureInPictureStartedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CDBDA4(0, &qword_27CBA4080, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v47 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDB608();
  sub_217D89E7C();
  v100[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v98 = *(v11 + 96);
    *v99 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v94 = *(v11 + 32);
    v95 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v96 = *(v11 + 64);
    v97 = v17;
    v18 = *(v11 + 16);
    v93[0] = *v11;
    v93[1] = v18;
    v19 = *(v11 + 112);
    v91 = v98;
    v92[0] = v19;
    v87 = v94;
    v88 = v16;
    v89 = v96;
    v90 = v12;
    *&v99[15] = *(v11 + 127);
    *(v92 + 15) = *(v11 + 127);
    v85 = v93[0];
    v86 = v14;
    v84 = 1;
    sub_217AE38AC(v93, &v60, &qword_2811C7DB8, &type metadata for ArticleData);
    sub_217ACF52C();
    sub_217D89C3C();
    v82[6] = v91;
    *v83 = v92[0];
    *&v83[15] = *(v92 + 15);
    v82[2] = v87;
    v82[3] = v88;
    v82[4] = v89;
    v82[5] = v90;
    v82[0] = v85;
    v82[1] = v86;
    sub_217AE4A44(v82, &qword_2811C7DB8, &type metadata for ArticleData);
    v20 = (v3 + v10[6]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    *&v60 = *v20;
    *(&v60 + 1) = v21;
    *&v61 = v22;
    *(&v61 + 1) = v23;
    *&v62 = v24;
    LOBYTE(v49) = 2;
    sub_217AD86BC(v60, v21, v22, v23, v24);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v60, *(&v60 + 1), v61, *(&v61 + 1), v62);
    v25 = (v3 + v10[7]);
    v26 = v25[1];
    v27 = v25[2];
    *&v60 = *v25;
    *(&v60 + 1) = v26;
    *&v61 = v27;
    LOBYTE(v49) = 3;
    sub_217AD1A68(v60, v26, v27);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v60, *(&v60 + 1), v61);
    v28 = (v3 + v10[8]);
    v29 = *v28;
    v30 = *(v28 + 1);
    v31 = *(v28 + 2);
    v32 = *(v28 + 6);
    LOBYTE(v28) = v28[28];
    v77[0] = v29;
    v78 = v30;
    v79 = v31;
    v80 = v32;
    v81 = v28;
    v76 = 4;
    sub_217AE1D08();

    sub_217D89CAC();

    v33 = (v3 + v10[9]);
    v34 = v33[1];
    v74[0] = *v33;
    v74[1] = v34;
    v36 = *v33;
    v35 = v33[1];
    v74[2] = v33[2];
    v75 = *(v33 + 48);
    v70 = v36;
    v71 = v35;
    v72 = v33[2];
    v73 = *(v33 + 48);
    v69 = 5;
    sub_217ACC004(v74, &v60);
    sub_217A55B98();
    sub_217D89CAC();
    v58[0] = v70;
    v58[1] = v71;
    v58[2] = v72;
    v59 = v73;
    sub_217ACC69C(v58);
    v38 = (v3 + v10[10]);
    v39 = v38[5];
    v40 = v38[7];
    v66 = v38[6];
    v67 = v40;
    v41 = v38[7];
    v68 = v38[8];
    v42 = v38[1];
    v43 = v38[3];
    v62 = v38[2];
    v63 = v43;
    v44 = v38[3];
    v45 = v38[5];
    v64 = v38[4];
    v65 = v45;
    v46 = v38[1];
    v60 = *v38;
    v61 = v46;
    v55 = v66;
    v56 = v41;
    v57 = v38[8];
    v51 = v62;
    v52 = v44;
    v53 = v64;
    v54 = v39;
    v49 = v60;
    v50 = v42;
    v48 = 6;
    sub_217AE38AC(&v60, v47, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v47[6] = v55;
    v47[7] = v56;
    v47[8] = v57;
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_217AE4A44(v47, &qword_2811BD178, &type metadata for GroupData);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CDB608()
{
  result = qword_27CBA4088;
  if (!qword_27CBA4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA4088);
  }

  return result;
}

void PictureInPictureStartedEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_217D8899C();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CDBDA4(0, &qword_27CBA4090, MEMORY[0x277D844C8]);
  v46 = v5;
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDB608();
  v45 = v7;
  v11 = v65;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v42;
    v65 = a1;
    v13 = v43;
    LOBYTE(v48) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    sub_217D89BCC();
    (*(v13 + 32))(v10, v44, v3);
    v62 = 1;
    sub_217ACF4D8();
    sub_217D89B5C();
    v44 = 0;
    v14 = v8[5];
    v40 = v10;
    v15 = &v10[v14];
    v16 = v64[0];
    *(v15 + 6) = v63[6];
    *(v15 + 7) = v16;
    *(v15 + 127) = *(v64 + 15);
    v17 = v63[3];
    *(v15 + 2) = v63[2];
    *(v15 + 3) = v17;
    v18 = v63[5];
    *(v15 + 4) = v63[4];
    *(v15 + 5) = v18;
    v19 = v63[1];
    *v15 = v63[0];
    *(v15 + 1) = v19;
    LOBYTE(v58) = 2;
    sub_217AD07F8();
    sub_217D89B5C();
    v20 = v12;
    v21 = v50;
    v22 = &v40[v8[6]];
    v23 = v49;
    *v22 = v48;
    *(v22 + 1) = v23;
    *(v22 + 4) = v21;
    LOBYTE(v58) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v24 = v49;
    v25 = &v40[v8[7]];
    *v25 = v48;
    *(v25 + 2) = v24;
    LOBYTE(v58) = 4;
    sub_217AE1CB4();
    sub_217D89BCC();
    v26 = v65;
    v27 = *(&v48 + 1);
    v28 = v49;
    v29 = DWORD2(v49);
    v30 = BYTE12(v49);
    v31 = &v40[v8[8]];
    *v31 = v48;
    *(v31 + 1) = v27;
    *(v31 + 2) = v28;
    *(v31 + 6) = v29;
    v31[28] = v30;
    v57 = 5;
    sub_217A54D08();
    sub_217D89BCC();
    v32 = &v40[v8[9]];
    v33 = v59;
    *v32 = v58;
    *(v32 + 1) = v33;
    *(v32 + 2) = v60;
    v32[48] = v61;
    v47 = 6;
    sub_217A5D308();
    sub_217D89B5C();
    (*(v20 + 8))(v45, v46);
    v34 = v40;
    v35 = &v40[v8[10]];
    v36 = v55;
    *(v35 + 6) = v54;
    *(v35 + 7) = v36;
    *(v35 + 8) = v56;
    v37 = v51;
    *(v35 + 2) = v50;
    *(v35 + 3) = v37;
    v38 = v53;
    *(v35 + 4) = v52;
    *(v35 + 5) = v38;
    v39 = v49;
    *v35 = v48;
    *(v35 + 1) = v39;
    sub_217CDBE08(v34, v41);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_217CDBE6C(v34);
  }
}

void sub_217CDBDA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CDB608();
    v7 = a3(a1, &type metadata for PictureInPictureStartedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CDBE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CDBE6C(uint64_t a1)
{
  v2 = type metadata accessor for PictureInPictureStartedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CDC004()
{
  result = qword_27CBA40B8;
  if (!qword_27CBA40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40B8);
  }

  return result;
}

unint64_t sub_217CDC05C()
{
  result = qword_27CBA40C0;
  if (!qword_27CBA40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40C0);
  }

  return result;
}

unint64_t sub_217CDC0B4()
{
  result = qword_27CBA40C8;
  if (!qword_27CBA40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA40C8);
  }

  return result;
}

uint64_t IssueData.issueID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IssueData.issueID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IssueData.topicIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

NewsAnalytics::IssueData __swiftcall IssueData.init(issueID:isBundlePaid:issueType:topicIDs:)(NewsAnalytics::IssueData issueID, Swift::Bool isBundlePaid, NewsAnalytics::IssueType issueType, Swift::OpaquePointer topicIDs)
{
  v5 = *issueType;
  *v4 = issueID.issueID;
  *(v4 + 16) = isBundlePaid;
  *(v4 + 17) = v5;
  *(v4 + 24) = topicIDs;
  LOBYTE(issueID.topicIDs._rawValue) = issueType;
  issueID.isBundlePaid = isBundlePaid;
  return issueID;
}

uint64_t sub_217CDC26C()
{
  v1 = 0x44496575737369;
  v2 = 0x7079546575737369;
  if (*v0 != 2)
  {
    v2 = 0x7344496369706F74;
  }

  if (*v0)
  {
    v1 = 0x656C646E75427369;
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

uint64_t sub_217CDC2F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CDCB60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CDC31C(uint64_t a1)
{
  v2 = sub_217CDC5D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CDC358(uint64_t a1)
{
  v2 = sub_217CDC5D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueData.encode(to:)(void *a1)
{
  sub_217CDC948(0, &qword_2811BC4D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *(v1 + 16);
  v14 = *(v1 + 17);
  v15 = v8;
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDC5D4();
  sub_217D89E7C();
  v22 = 0;
  v9 = v16;
  sub_217D89C6C();
  if (!v9)
  {
    v10 = v14;
    v11 = v13;
    v21 = 1;
    sub_217D89C7C();
    v20 = v10;
    v19 = 2;
    sub_217CDC628();
    sub_217D89CAC();
    v17 = v11;
    v18 = 3;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CDC5D4()
{
  result = qword_2811BD138;
  if (!qword_2811BD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD138);
  }

  return result;
}

unint64_t sub_217CDC628()
{
  result = qword_2811BD108;
  if (!qword_2811BD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD108);
  }

  return result;
}

uint64_t IssueData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CDC948(0, &qword_2811BC8D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CDC5D4();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v23 = 1;
  v19 = sub_217D89B9C() & 1;
  v21 = 2;
  sub_217CDC9AC();
  sub_217D89BCC();
  HIDWORD(v17) = v22;
  sub_217A55F8C();
  v20 = 3;
  sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_217D89BCC();
  (*(v7 + 8))(v9, v6);
  v15 = v18;
  v16 = v19;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;
  *(a2 + 17) = BYTE4(v17);
  *(a2 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}