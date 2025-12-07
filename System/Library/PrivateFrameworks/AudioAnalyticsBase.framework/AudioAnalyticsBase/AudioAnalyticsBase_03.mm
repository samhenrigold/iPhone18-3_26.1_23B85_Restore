unint64_t sub_22398D91C()
{
  result = qword_27D0A0130;
  if (!qword_27D0A0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0130);
  }

  return result;
}

unint64_t sub_22398D974()
{
  result = qword_27D0A0138;
  if (!qword_27D0A0138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A0140, &qword_2239B6568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0138);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBC)
  {
    goto LABEL_17;
  }

  if (a2 + 68 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 68) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 68;
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

      return (*a1 | (v4 << 8)) - 68;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 68;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x45;
  v8 = v6 - 69;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 68 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 68) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBC)
  {
    v4 = 0;
  }

  if (a2 > 0xBB)
  {
    v5 = ((a2 - 188) >> 8) + 1;
    *result = a2 + 68;
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
    *result = a2 + 68;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22398DB18(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22398DD3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_2239B3048();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_2239B3038();
}

uint64_t Logger.ServiceLoggerCategory.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_2239B37B8();

  v6 = 16;
  if (v4 < 0x10)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_22398DE30()
{
  v0 = Logger.ServiceLoggerCategory.rawValue.getter();
  if (v0 == Logger.ServiceLoggerCategory.rawValue.getter())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2239B3958();
  }

  swift_bridgeObjectRelease_n();
  return v1 & 1;
}

unint64_t sub_22398DEB8()
{
  result = qword_27D0A0180;
  if (!qword_27D0A0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0180);
  }

  return result;
}

uint64_t sub_22398DF0C()
{
  sub_2239B3A18();
  Logger.ServiceLoggerCategory.rawValue.getter();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_22398DF6C(uint64_t a1)
{
  Logger.ServiceLoggerCategory.rawValue.getter();
  sub_2239B3228();
}

uint64_t sub_22398DFC8(uint64_t a1)
{
  sub_2239B3A18();
  Logger.ServiceLoggerCategory.rawValue.getter();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_22398E030@<X0>(uint64_t *a1@<X8>)
{
  result = Logger.ServiceLoggerCategory.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

unint64_t sub_22398E060()
{
  result = qword_27D0A0188;
  if (!qword_27D0A0188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A0190, &qword_2239B6780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0188);
  }

  return result;
}

uint64_t _s21ServiceLoggerCategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21ServiceLoggerCategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Message.copy(newCategory:newType:newContent:newMetadata:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v7 = a4[1];
  v9 = a4[2];
  v43 = *(a4 + 24);
  v10 = *(v5 + 40);
  v41 = *(v5 + 41);
  v40 = *(v5 + 42);
  v12 = *(v5 + 48);
  v11 = *(v5 + 56);
  v13 = *(v5 + 64);
  v39 = *(v5 + 72);
  v38 = *(v5 + 80);
  if ((a1 & 0x100000000) != 0)
  {
    v14 = *v5;
  }

  else
  {
    v14 = a1;
  }

  if ((a2 & 0x10000) != 0)
  {
    v15 = *(v5 + 4);
  }

  else
  {
    v15 = a2;
  }

  v44 = v15;
  v45 = v14;
  if (!a3)
  {
    v16 = *(v5 + 8);
    v19 = *(v5 + 56);

    v11 = v19;
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_11:
    v42 = v11;

    LOBYTE(v8) = v10;
    v7 = v12;
    v43 = v13;
    LOBYTE(v18) = v40;
    LOBYTE(v17) = v41;
    goto LABEL_12;
  }

  v16 = a3;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = (v8 >> 8) & 1;
  v18 = (v8 >> 16) & 1;
  v42 = v9;
LABEL_12:

  sub_223968E14();
  v47 = v16;
  sub_223965588(&v47);
  sub_223965338(&v47);
  swift_beginAccess();
  v20 = *aUnknown_0;
  v21 = qword_2813367E8;

  v22 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2239639F0(v20, v21, 4, 0x65566769666E6F63, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
  v47 = v22;
  sub_223968F38(&v47, v45, v44);
  sub_223969288(&v47);
  sub_22396879C(&v47);
  v24 = v47;

  v26 = sub_2239651A4(v25);
  v28 = v27;
  v30 = v29;

  v46 = v30 & 1;

  if (!*(v24 + 16) || (v31 = sub_22396236C(0xD000000000000018, 0x80000002239B9090), (v32 & 1) == 0) || (v33 = *(v24 + 56) + 24 * v31, *(v33 + 16) != 4))
  {
    v37 = v30 & 1;
LABEL_18:
    v35 = v38;

    v34 = v39;
    goto LABEL_19;
  }

  v34 = *v33;
  v35 = *(v33 + 8);
  result = sub_22396298C(*v33, v35, 4);
  v37 = v46;
  if (!v35)
  {
    goto LABEL_18;
  }

LABEL_19:
  *a5 = v45;
  *(a5 + 4) = v44;
  *(a5 + 8) = v24;
  *(a5 + 16) = v26;
  *(a5 + 24) = v28;
  *(a5 + 32) = v37;
  *(a5 + 40) = v8 & 1;
  *(a5 + 41) = v17;
  *(a5 + 42) = v18;
  *(a5 + 48) = v7;
  *(a5 + 56) = v42;
  *(a5 + 64) = v43 & 1;
  *(a5 + 72) = v34;
  *(a5 + 80) = v35;
  return result;
}

uint64_t Message.audioTag.getter()
{
  v1 = *(v0 + 4);
  v4 = _s18AudioAnalyticsBase9UtilitiesO24eventCategoryDescription4fromSSSo0a5EventF0V_tFZ_0(*v0);
  MEMORY[0x223DEE030](24415, 0xE200000000000000);
  v2 = _s18AudioAnalyticsBase9UtilitiesO20eventTypeDescription4fromSSSo0a5EventF0V_tFZ_0(v1);
  MEMORY[0x223DEE030](v2);

  return v4;
}

Swift::String __swiftcall Message.toString()()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2239B31B8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = Message.flatten()();
  Dictionary<>.asStringAny()(v1);

  v2 = objc_opt_self();
  v3 = sub_2239B30C8();
  v18[0] = 0;
  v4 = [v2 dataWithJSONObject:v3 options:11 error:v18];

  v5 = v18[0];
  if (!v4)
  {
    v12 = v5;
    v13 = sub_2239B2E98();

    swift_willThrow();
    v6 = 0;
    v8 = 0xF000000000000000;
    goto LABEL_5;
  }

  v6 = sub_2239B2F78();
  v8 = v7;

  sub_22397F6E0(v6, v8);
  sub_2239B31A8();
  v9 = sub_2239B3198();
  v11 = v10;
  sub_22397F734(v6, v8);
  if (!v11)
  {
LABEL_5:
    v9 = sub_2239B30E8();
    v11 = v14;

    sub_22398BFE4(v6, v8);
    goto LABEL_6;
  }

  sub_22397F734(v6, v8);

LABEL_6:
  v15 = v9;
  v16 = v11;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t Message.Metadata.untrustworthyReasons.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Message.Metadata.untrustworthyReasons.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t sub_22398E850()
{
  v1 = *v0;
  v2 = 0x646E756465527369;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6364616F72427369;
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

uint64_t sub_22398E8FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_223991C94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22398E93C(uint64_t a1)
{
  v2 = sub_2239915A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22398E978(uint64_t a1)
{
  v2 = sub_2239915A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Message.Metadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0198, &qword_2239B68B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v8;
  v9 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v9;
  v11[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239915A8();
  sub_2239B3A98();
  v20 = 0;
  sub_2239B38B8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = 1;
  sub_2239B38B8();
  v18 = 2;
  sub_2239B38B8();
  v17 = 3;
  sub_2239B38A8();
  v16 = 4;
  sub_2239B38B8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Message.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01A8, &qword_2239B68C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v19 = 0;
  v25 = 0;
  sub_223968E14();
  v18[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239915A8();
  sub_2239B3A88();
  if (!v2)
  {
    v10 = v6;
    v24 = 0;
    v19 = sub_2239B3818() & 1;
    v23 = 1;
    HIBYTE(v25) = sub_2239B3818() & 1;
    v22 = 2;
    LOBYTE(v25) = sub_2239B3818() & 1;
    v21 = 3;
    v12 = sub_2239B3808();
    v14 = v13;
    v18[0] = v12;

    v20 = 4;
    v15 = sub_2239B3818();
    (*(v10 + 8))(v8, v5);
    v16 = HIBYTE(v25);
    v17 = v25;
    *a2 = v19;
    *(a2 + 1) = v16;
    *(a2 + 2) = v17;
    *(a2 + 8) = v18[0];
    *(a2 + 16) = v14;
    *(a2 + 24) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t Message.metadata.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];

  *(v1 + 40) = v2;
  *(v1 + 41) = v3;
  *(v1 + 42) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  return result;
}

uint64_t sub_22398EF88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0268, &qword_2239B6EA0);
  __swift_allocate_value_buffer(v0, qword_281335F28);
  __swift_project_value_buffer(v0, qword_281335F28);
  return sub_2239B2FF8();
}

uint64_t sub_22398EFF8()
{
  v0 = sub_22398F04C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0270, &qword_2239B6EA8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_281335F00 = result;
  return result;
}

uint64_t sub_22398F04C()
{
  v0 = sub_223992198();
  v1 = MEMORY[0x223DEE230](3, &type metadata for UntrustworthyReason, v0);
  if (_s18AudioAnalyticsBase15DeviceUtilitiesO17hasRootsInstalledSbyFZ_0())
  {
    sub_2239B3A18();
    sub_2239B3228();
    v2 = sub_2239B3A78();
    v3 = -1 << *(v1 + 32);
    v4 = v2 & ~v3;
    if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v5 = ~v3;
      v6 = *(v1 + 48);
      while (1)
      {
        v7 = *(v6 + v4);
        if (v7 != 1 && v7 != 2)
        {
          break;
        }

        if (sub_2239B3958())
        {
          break;
        }

        v4 = (v4 + 1) & v5;
        if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = v1;
      sub_22396EE4C(0, v4, isUniquelyReferenced_nonNull_native);
    }
  }

  if (_s18AudioAnalyticsBase15DeviceUtilitiesO10hasSerial3SbyFZ_0())
  {
    sub_2239B3A18();
    sub_2239B3228();
    v9 = sub_2239B3A78();
    v10 = -1 << *(v1 + 32);
    v11 = v9 & ~v10;
    if ((*(v1 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v12 = ~v10;
      v13 = *(v1 + 48);
      while ((!*(v13 + v11) || *(v13 + v11) == 2) && (sub_2239B3958() & 1) == 0)
      {
        v11 = (v11 + 1) & v12;
        if (((*(v1 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = v1;
      sub_22396EE4C(1, v11, v14);
    }
  }

  if (qword_281336380 != -1)
  {
    swift_once();
  }

  type metadata accessor for ThermalState(0);
  sub_2239B3528(v23);
  if (qword_2836FBA20 == v23[0] || unk_2836FBA28 == v23[0])
  {
    sub_2239B3A18();
    sub_2239B3228();
    v16 = sub_2239B3A78();
    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    if ((*(v1 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      v19 = ~v17;
      v20 = *(v1 + 48);
      while ((!*(v20 + v18) || *(v20 + v18) == 1) && (sub_2239B3958() & 1) == 0)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v1 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = v1;
      sub_22396EE4C(2, v18, v21);
      return v23[0];
    }
  }

  return v1;
}

uint64_t sub_22398F3B4()
{
  type metadata accessor for PeriodicClosure();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0080, &qword_2239B5DB0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v0 + 16) = result;
  *(v0 + 24) = 0x4024000000000000;
  off_281335F18 = v0;
  return result;
}

uint64_t sub_22398F420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0278, &qword_2239B6EB0);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  off_281335EF0 = result;
  return result;
}

uint64_t sub_22398F480()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x617461646174656DLL;
  if (v1 != 5)
  {
    v3 = 0x656D614E707061;
  }

  v4 = 0x6D617473656D6974;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x746E65746E6F63;
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

uint64_t sub_22398F55C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_223991E50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22398F590(uint64_t a1)
{
  v2 = sub_2239915FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22398F5CC(uint64_t a1)
{
  v2 = sub_2239915FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22398F694()
{
  v0 = sub_22399139C(&unk_2836FB930);
  result = swift_arrayDestroy();
  qword_2813382B0 = v0;
  return result;
}

uint64_t static Message.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = sub_22396A284(*(a1 + 8));
  v4 = sub_22396A284(v2);
  v5 = sub_22396A45C(v3, v4);

  return v5 & 1;
}

uint64_t Message.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01B0, &qword_2239B68C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = *v1;
  v25 = *(v1 + 2);
  v9 = *(v1 + 1);
  v23 = *(v1 + 3);
  v24 = v9;
  LODWORD(v9) = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v9;
  LODWORD(v6) = *(v1 + 42);
  v16 = *(v1 + 41);
  v17 = v6;
  v10 = *(v1 + 7);
  v19 = *(v1 + 6);
  v20 = v10;
  v18 = *(v1 + 64);
  v11 = *(v1 + 10);
  v15[0] = *(v1 + 9);
  v15[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239915FC();
  sub_2239B3A98();
  LODWORD(v26) = v8;
  v30 = 0;
  type metadata accessor for AudioEventCategory(0);
  sub_2239920FC(&qword_27D0A01C0, type metadata accessor for AudioEventCategory, &protocol conformance descriptor for AudioEventCategory);
  sub_2239B38D8();
  if (!v2)
  {
    v12 = v24;
    v13 = v21;
    LOWORD(v26) = v25;
    v30 = 1;
    type metadata accessor for AudioEventType(0);
    sub_2239920FC(&qword_27D0A01C8, type metadata accessor for AudioEventType, &protocol conformance descriptor for AudioEventType);
    sub_2239B38D8();
    v26 = v12;
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01D0, &qword_2239B68D0);
    sub_2239916F8(&qword_27D0A01D8, sub_223991650, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_2239B38D8();
    LOBYTE(v26) = 3;
    sub_2239B38C8();
    LOBYTE(v26) = 4;
    sub_2239B3898();
    LOBYTE(v26) = v13;
    BYTE1(v26) = v16;
    BYTE2(v26) = v17;
    v27 = v19;
    v28 = v20;
    v29 = v18;
    v30 = 5;
    sub_2239916A4();

    sub_2239B38D8();

    LOBYTE(v26) = 6;
    sub_2239B3888();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01F0, &qword_2239B68D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  sub_223968E14();
  v38 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239915FC();
  sub_2239B3A88();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v10 = v6;
    type metadata accessor for AudioEventCategory(0);
    LOBYTE(v39) = 0;
    sub_2239920FC(&qword_27D0A01F8, type metadata accessor for AudioEventCategory, &protocol conformance descriptor for AudioEventCategory);
    sub_2239B3838();
    v11 = v45;
    type metadata accessor for AudioEventType(0);
    LOBYTE(v39) = 1;
    sub_2239920FC(&qword_27D0A0200, type metadata accessor for AudioEventType, &protocol conformance descriptor for AudioEventType);
    sub_2239B3838();
    v12 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01D0, &qword_2239B68D0);
    LOBYTE(v39) = 2;
    sub_2239916F8(&qword_27D0A0208, sub_22399177C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_2239B3838();
    v37 = v12;
    v13 = v45;
    LOBYTE(v45) = 3;
    sub_2239B3828();
    v15 = v14;
    LOBYTE(v45) = 4;
    v36 = sub_2239B37F8();
    v67 = v16 & 1;
    LOBYTE(v39) = 5;
    sub_2239917D0();
    sub_2239B3838();
    v34 = v45;
    v33 = BYTE1(v45);
    v32 = BYTE2(v45);
    v31 = v46;
    v35 = v47;
    v30 = v48;

    v62 = 6;
    v38 = sub_2239B37E8();
    v18 = v17;
    (*(v10 + 8))(v8, v5);
    LODWORD(v39) = v11;
    WORD2(v39) = v37;
    *(&v39 + 1) = v13;
    *&v40 = v15;
    v29 = v13;
    *(&v40 + 1) = v36;
    v28 = v67;
    LOBYTE(v41) = v67;
    *(&v41 + 1) = *v66;
    DWORD1(v41) = *&v66[3];
    BYTE8(v41) = v34;
    BYTE9(v41) = v33;
    BYTE10(v41) = v32;
    *(&v41 + 11) = v64;
    HIBYTE(v41) = v65;
    v19 = v31;
    v20 = v35;
    *&v42 = v31;
    *(&v42 + 1) = v35;
    LOBYTE(v10) = v30;
    LOBYTE(v43) = v30;
    *(&v43 + 1) = *v63;
    DWORD1(v43) = *&v63[3];
    v21 = v38;
    *(&v43 + 1) = v38;
    v44 = v18;
    v22 = v40;
    *a2 = v39;
    *(a2 + 16) = v22;
    v23 = v41;
    v24 = v42;
    v25 = v43;
    *(a2 + 80) = v18;
    *(a2 + 48) = v24;
    *(a2 + 64) = v25;
    *(a2 + 32) = v23;
    sub_2239628F8(&v39, &v45);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    LODWORD(v45) = v11;
    WORD2(v45) = v37;
    v46 = v29;
    v47 = v15;
    v48 = v36;
    v49 = v28;
    *v50 = *v66;
    *&v50[3] = *&v66[3];
    v51 = v34;
    v52 = v33;
    v53 = v32;
    v54 = v64;
    v55 = v65;
    v56 = v19;
    v57 = v20;
    v58 = v10;
    *&v59[3] = *&v63[3];
    *v59 = *v63;
    v60 = v21;
    v61 = v18;
    return sub_223991824(&v45);
  }
}

AudioAnalyticsBase::UntrustworthyReason_optional __swiftcall UntrustworthyReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_223990484(char *a1, char *a2)
{
  if (*&aRoot_1[8 * *a1] == *&aRoot_1[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2239B3958();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2239904EC()
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_223990548(uint64_t a1)
{
  sub_2239B3228();
}

uint64_t sub_223990588(uint64_t a1)
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_22399060C(char *a1, char *a2)
{
  if (*&aRoot_1[8 * *a2] == *&aRoot_1[8 * *a1])
  {
    swift_bridgeObjectRelease_n();
    v2 = 1;
  }

  else
  {
    v3 = sub_2239B3958();
    swift_bridgeObjectRelease_n();
    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_223990684(char *a1, char *a2)
{
  if (*&aRoot_1[8 * *a1] == *&aRoot_1[8 * *a2])
  {
    swift_bridgeObjectRelease_n();
    v2 = 1;
  }

  else
  {
    v3 = sub_2239B3958();
    swift_bridgeObjectRelease_n();
    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_2239906FC(char *a1, char *a2)
{
  if (*&aRoot_1[8 * *a2] == *&aRoot_1[8 * *a1])
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_2239B3958();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

unint64_t *sub_223990814(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_223969D88(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_22399088C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD70, &qword_2239B4D78);
  result = sub_2239B3798();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_22395E644(v17 + 32 * v16, v33);
    sub_2239685CC(v33, v32);
    sub_2239B3A18();

    sub_2239B3228();
    result = sub_2239B3A78();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_2239685CC(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_223990ADC(uint64_t result, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v76 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_97:
    v7 = *v76;
    if (!*v76)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = v78;
    if (result)
    {
LABEL_99:
      v70 = *(v6 + 2);
      if (v70 >= 2)
      {
        while (*a3)
        {
          v71 = *&v6[16 * v70];
          v72 = *&v6[16 * v70 + 24];
          sub_223991114((*a3 + v71), (*a3 + *&v6[16 * v70 + 16]), (*a3 + v72), v7);
          if (v4)
          {
          }

          if (v72 < v71)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2239A6C04(v6);
          }

          if (v70 - 2 >= *(v6 + 2))
          {
            goto LABEL_123;
          }

          v73 = &v6[16 * v70];
          *v73 = v71;
          *(v73 + 1) = v72;
          result = sub_2239A6B78(v70 - 1);
          v70 = *(v6 + 2);
          if (v70 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_2239A6C04(v6);
    v6 = result;
    goto LABEL_99;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3;
      if (*&aRoot_1[8 * *(*a3 + v5)] == *&aRoot_1[8 * v7[*a3]])
      {
        v9 = 0;
      }

      else
      {
        v9 = sub_2239B3958();
      }

      result = swift_bridgeObjectRelease_n();
      v5 = (v7 + 2);
      if ((v7 + 2) < v4)
      {
        do
        {
          if (*&aRoot_1[8 * *(v8 + v5)] == *&aRoot_1[8 * *(v8 + v5 - 1)])
          {
            result = swift_bridgeObjectRelease_n();
            if (v9)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v10 = sub_2239B3958();
            result = swift_bridgeObjectRelease_n();
            if ((v9 ^ v10))
            {
              goto LABEL_16;
            }
          }

          ++v5;
        }

        while (v4 != v5);
        v5 = v4;
      }

LABEL_16:
      if (v9)
      {
LABEL_17:
        if (v5 < v7)
        {
          goto LABEL_126;
        }

        if (v7 < v5)
        {
          v11 = (v5 - 1);
          v12 = v7;
          do
          {
            if (v12 != v11)
            {
              v15 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v13 = v12[v15];
              v12[v15] = v11[v15];
              v11[v15] = v13;
            }
          }

          while (++v12 < v11--);
        }
      }
    }

    v16 = a3[1];
    if (v5 < v16)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_125;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_46:
    if (v5 < v7)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_223982480(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v26 = *(v6 + 2);
    v25 = *(v6 + 3);
    v4 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_223982480((v25 > 1), v26 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v4;
    v27 = &v6[16 * v26];
    *(v27 + 4) = v7;
    *(v27 + 5) = v5;
    v28 = *v76;
    if (!*v76)
    {
      goto LABEL_134;
    }

    if (v26)
    {
      while (1)
      {
        v29 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v30 = *(v6 + 4);
          v31 = *(v6 + 5);
          v40 = __OFSUB__(v31, v30);
          v32 = v31 - v30;
          v33 = v40;
LABEL_66:
          if (v33)
          {
            goto LABEL_113;
          }

          v46 = &v6[16 * v4];
          v48 = *v46;
          v47 = *(v46 + 1);
          v49 = __OFSUB__(v47, v48);
          v50 = v47 - v48;
          v51 = v49;
          if (v49)
          {
            goto LABEL_116;
          }

          v52 = &v6[16 * v29 + 32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v40 = __OFSUB__(v53, v54);
          v55 = v53 - v54;
          if (v40)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v50, v55))
          {
            goto LABEL_120;
          }

          if (v50 + v55 >= v32)
          {
            if (v32 < v55)
            {
              v29 = v4 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v56 = &v6[16 * v4];
        v58 = *v56;
        v57 = *(v56 + 1);
        v40 = __OFSUB__(v57, v58);
        v50 = v57 - v58;
        v51 = v40;
LABEL_80:
        if (v51)
        {
          goto LABEL_115;
        }

        v59 = &v6[16 * v29];
        v61 = *(v59 + 4);
        v60 = *(v59 + 5);
        v40 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v40)
        {
          goto LABEL_118;
        }

        if (v62 < v50)
        {
          goto LABEL_3;
        }

LABEL_87:
        v67 = v29 - 1;
        if (v29 - 1 >= v4)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v7 = *&v6[16 * v67 + 32];
        v68 = *&v6[16 * v29 + 40];
        sub_223991114(&v7[*a3], (*a3 + *&v6[16 * v29 + 32]), (*a3 + v68), v28);
        v4 = v78;
        if (v78)
        {
        }

        if (v68 < v7)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2239A6C04(v6);
        }

        if (v67 >= *(v6 + 2))
        {
          goto LABEL_110;
        }

        v78 = 0;
        v69 = &v6[16 * v67];
        *(v69 + 4) = v7;
        *(v69 + 5) = v68;
        result = sub_2239A6B78(v29);
        v4 = *(v6 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v34 = &v6[16 * v4 + 32];
      v35 = *(v34 - 64);
      v36 = *(v34 - 56);
      v40 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      if (v40)
      {
        goto LABEL_111;
      }

      v39 = *(v34 - 48);
      v38 = *(v34 - 40);
      v40 = __OFSUB__(v38, v39);
      v32 = v38 - v39;
      v33 = v40;
      if (v40)
      {
        goto LABEL_112;
      }

      v41 = &v6[16 * v4];
      v43 = *v41;
      v42 = *(v41 + 1);
      v40 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v40)
      {
        goto LABEL_114;
      }

      v40 = __OFADD__(v32, v44);
      v45 = v32 + v44;
      if (v40)
      {
        goto LABEL_117;
      }

      if (v45 >= v37)
      {
        v63 = &v6[16 * v29 + 32];
        v65 = *v63;
        v64 = *(v63 + 1);
        v40 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v40)
        {
          goto LABEL_121;
        }

        if (v32 < v66)
        {
          v29 = v4 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_97;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_127;
  }

  if (&v7[a4] >= v16)
  {
    v17 = a3[1];
  }

  else
  {
    v17 = &v7[a4];
  }

  if (v17 < v7)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v5 == v17)
  {
    goto LABEL_46;
  }

  v4 = *a3;
  v18 = (*a3 + v5);
  v74 = v7;
  v19 = &v7[-v5];
LABEL_38:
  v20 = *(v4 + v5);
  v21 = v19;
  v22 = v18;
  while (1)
  {
    if (*&aRoot_1[8 * v20] == *&aRoot_1[8 * *(v22 - 1)])
    {
      swift_bridgeObjectRelease_n();
LABEL_37:
      ++v5;
      ++v18;
      --v19;
      if (v5 == v17)
      {
        v5 = v17;
        v7 = v74;
        goto LABEL_46;
      }

      goto LABEL_38;
    }

    v23 = sub_2239B3958();
    result = swift_bridgeObjectRelease_n();
    if ((v23 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v4)
    {
      break;
    }

    v20 = *v22;
    *v22 = *(v22 - 1);
    *--v22 = v20;
    if (__CFADD__(v21++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_223991114(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
LABEL_26:
      v15 = v6 - 1;
      --v5;
      v16 = v10;
      do
      {
        v17 = *--v16;
        if (*&aRoot_1[8 * v17] == *&aRoot_1[8 * *v15])
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v18 = sub_2239B3958();
          swift_bridgeObjectRelease_n();
          if (v18)
          {
            if (v5 + 1 < v6 || v5 >= v6)
            {
              *v5 = *v15;
            }

            if (v10 <= v4 || (--v6, v15 <= v7))
            {
              v6 = v15;
              goto LABEL_42;
            }

            goto LABEL_26;
          }
        }

        if ((v5 + 1) < v10 || v5 >= v10)
        {
          *v5 = *v16;
        }

        --v5;
        v10 = v16;
      }

      while (v16 > v4);
      v10 = v16;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*&aRoot_1[8 * *v6] == *&aRoot_1[8 * *v4])
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v11 = sub_2239B3958();
          swift_bridgeObjectRelease_n();
          if (v11)
          {
            v12 = v6 + 1;
            v13 = v6;
            if (v7 >= v6 && v7 < v12)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }

        v14 = v4 + 1;
        v13 = v4;
        v12 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_18;
          }
        }

LABEL_17:
        *v7 = *v13;
LABEL_18:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_22399139C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DEE230](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2239967B8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _s18AudioAnalyticsBase7MessageV8MetadataV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v4 = a1[24];
    v5 = a2[24];
    if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
    {
      return v4 ^ v5 ^ 1u;
    }

    v6 = sub_2239B3958();
    result = 0;
    if (v6)
    {
      return v4 ^ v5 ^ 1u;
    }
  }

  return result;
}

uint64_t _s18AudioAnalyticsBase19UntrustworthyReasonO1loiySbAC_ACtFZ_0(char *a1, char *a2)
{
  if (*&aRoot_1[8 * *a1] == *&aRoot_1[8 * *a2])
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_2239B3958();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_223991534(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_223992144();
  result = MEMORY[0x223DEE230](v2, &type metadata for Config.WorkerConfigs, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_223996908(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_2239915A8()
{
  result = qword_27D0A01A0;
  if (!qword_27D0A01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A01A0);
  }

  return result;
}

unint64_t sub_2239915FC()
{
  result = qword_27D0A01B8;
  if (!qword_27D0A01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A01B8);
  }

  return result;
}

unint64_t sub_223991650()
{
  result = qword_27D0A01E0;
  if (!qword_27D0A01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A01E0);
  }

  return result;
}

unint64_t sub_2239916A4()
{
  result = qword_27D0A01E8;
  if (!qword_27D0A01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A01E8);
  }

  return result;
}

uint64_t sub_2239916F8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A01D0, &qword_2239B68D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22399177C()
{
  result = qword_27D0A0210;
  if (!qword_27D0A0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0210);
  }

  return result;
}

unint64_t sub_2239917D0()
{
  result = qword_27D0A0218;
  if (!qword_27D0A0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0218);
  }

  return result;
}

unint64_t sub_223991854()
{
  result = qword_2813362B0;
  if (!qword_2813362B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813362B0);
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

uint64_t sub_2239918BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t getEnumTagSinglePayload for SystemMonitorConfig.MonitorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemMonitorConfig.MonitorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_223991A88()
{
  result = qword_27D0A0220;
  if (!qword_27D0A0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0220);
  }

  return result;
}

unint64_t sub_223991AE0()
{
  result = qword_27D0A0228;
  if (!qword_27D0A0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0228);
  }

  return result;
}

unint64_t sub_223991B38()
{
  result = qword_27D0A0230;
  if (!qword_27D0A0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0230);
  }

  return result;
}

unint64_t sub_223991B90()
{
  result = qword_27D0A0238;
  if (!qword_27D0A0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0238);
  }

  return result;
}

unint64_t sub_223991BE8()
{
  result = qword_27D0A0240;
  if (!qword_27D0A0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0240);
  }

  return result;
}

unint64_t sub_223991C40()
{
  result = qword_27D0A0248;
  if (!qword_27D0A0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0248);
  }

  return result;
}

uint64_t sub_223991C94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E756465527369 && a2 == 0xEB00000000746E61;
  if (v4 || (sub_2239B3958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6364616F72427369 && a2 == 0xEB00000000747361 || (sub_2239B3958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002239BA860 == a2 || (sub_2239B3958() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002239BA8E0 == a2 || (sub_2239B3958() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002239BA900 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2239B3958();

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

uint64_t sub_223991E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_2239B3958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2239B3958() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002239BA920 == a2 || (sub_2239B3958() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_2239B3958();

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

unint64_t sub_2239920A8()
{
  result = qword_27D0A0250;
  if (!qword_27D0A0250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0250);
  }

  return result;
}

uint64_t sub_2239920FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_223992144()
{
  result = qword_2813367F8;
  if (!qword_2813367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813367F8);
  }

  return result;
}

unint64_t sub_223992198()
{
  result = qword_2813362B8;
  if (!qword_2813362B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813362B8);
  }

  return result;
}

uint64_t sub_223992218(void (*a1)(_OWORD *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t *a3)
{
  v4 = a3[2];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_223982A10(0, v4, 0);
    v5 = v25;
    v22 = a3[4];

    a1(v23, &v22, &v21);
    if (v3)
    {
    }

    else
    {
      v9 = a3 + 5;
      for (i = v4 - 1; ; --i)
      {

        v20 = v24;
        v18 = v23[3];
        v19 = v23[4];
        v16 = v23[1];
        v17 = v23[2];
        v15 = v23[0];
        v25 = v5;
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_223982A10((v11 > 1), v12 + 1, 1);
          v5 = v25;
        }

        *(v5 + 16) = v12 + 1;
        v13 = v5 + 88 * v12;
        *(v13 + 32) = v15;
        *(v13 + 48) = v16;
        *(v13 + 112) = v20;
        *(v13 + 80) = v18;
        *(v13 + 96) = v19;
        *(v13 + 64) = v17;
        if (!i)
        {
          break;
        }

        v14 = *v9++;
        v22 = v14;

        a1(v23, &v22, &v21);
      }
    }
  }

  return v5;
}

uint64_t static MessageUtilities.readMessages(clazz:filenamePrefix:doSlideTimes:timeRequired:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v26 = a5;
  v24 = a4;
  v7 = sub_2239B2F28();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v23[-v12];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v25 = a2;
  v16 = sub_2239B3158();
  v17 = sub_2239B3158();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_2239B2EF8();

    (*(v8 + 32))(v13, v11, v7);
    v19 = v27;
    v20 = sub_223993440(v13, v26 & 1);
    if (v19)
    {
      (*(v8 + 8))(v13, v7);
    }

    else if (v24)
    {
      a3 = sub_223993A10(v20, 0, 1, 60.0);
      (*(v8 + 8))(v13, v7);
    }

    else
    {
      a3 = v20;
      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    type metadata accessor for MessageUtilityError(0);
    sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
    swift_allocError();
    *v21 = v25;
    v21[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return a3;
}

uint64_t type metadata accessor for MessageUtilityError(uint64_t a1)
{
  result = qword_27D0A0288;
  if (!qword_27D0A0288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223992744(uint64_t a1)
{
  v2 = sub_2239B3618();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_223994478(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_2239927C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = sub_223992744(*a1);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  if (!*(v9 + 16) || (v13 = v10, v14 = sub_22396236C(v10, v11), (v15 & 1) == 0) || (sub_22395E644(*(v9 + 56) + 32 * v14, v85), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:

LABEL_12:
    type metadata accessor for MessageUtilityError(0);
    sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
    v19 = swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A02B0, &qword_2239B6FB0) + 48);
    *v21 = 0xD000000000000014;
    *(v21 + 1) = 0x80000002239BAA80;
    v23 = sub_2239B2F28();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
LABEL_13:
    *a4 = v19;
    return result;
  }

  v16 = Dictionary<>.asSimpleType()(v79);
  if (!v16)
  {

    goto LABEL_11;
  }

  v84 = v16;
  v78 = v16;
  if (a3)
  {
    if (!*(v79 + 16) || (v17 = sub_22396236C(0xD000000000000015, 0x80000002239B9210), (v18 & 1) == 0))
    {

LABEL_26:

      type metadata accessor for MessageUtilityError(0);
      sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
      v19 = swift_allocError();
      v55 = v54;
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A02B0, &qword_2239B6FB0) + 48);
      *v55 = 0xD000000000000013;
      *(v55 + 1) = 0x80000002239BAAE0;
      v57 = sub_2239B2F28();
      (*(*(v57 - 8) + 16))(&v55[v56], a2, v57);
LABEL_30:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_13;
    }

    sub_22395E644(*(v79 + 56) + 32 * v17, v85);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v85[0] = v13;
  v85[1] = v12;
  v79 = 24415;
  v80 = 0xE200000000000000;
  sub_22396C8B8();
  v25 = sub_2239B35C8();
  if (*(v25 + 16) != 3)
  {

    type metadata accessor for MessageUtilityError(0);
    sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
    v19 = swift_allocError();
    v59 = v58;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A02B0, &qword_2239B6FB0) + 48);
    strcpy(v85, "Invalid key! ");
    HIWORD(v85[1]) = -4864;
    MEMORY[0x223DEE030](v13, v12);
LABEL_29:

    v62 = v85[1];
    *v59 = v85[0];
    *(v59 + 1) = v62;
    v63 = sub_2239B2F28();
    (*(*(v63 - 8) + 16))(&v59[v60], a2, v63);
    goto LABEL_30;
  }

  v26 = v25;

  v27 = v26[2];
  if (!v27)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v27 == 1)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v28 = v26[4];
  v29 = v26[5];
  v30 = v26[6];
  v31 = v26[7];

  v32 = sub_2239B1DD8(v28, v29);
  if ((v32 & 0x100000000) != 0)
  {

    type metadata accessor for MessageUtilityError(0);
    sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
    v19 = swift_allocError();
    v59 = v61;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A02B0, &qword_2239B6FB0) + 48);
    v85[0] = 0;
    v85[1] = 0xE000000000000000;
    sub_2239B3678();

    v85[0] = 0xD00000000000001CLL;
    v85[1] = 0x80000002239BAAA0;
    MEMORY[0x223DEE030](v28, v29);
    goto LABEL_29;
  }

  v33 = v32;

  v34 = sub_2239B0D94(v30, v31);
  if ((v34 & 0x10000) != 0)
  {
    type metadata accessor for MessageUtilityError(0);
    sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
    v19 = swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A02B0, &qword_2239B6FB0) + 48);
    v85[0] = 0;
    v85[1] = 0xE000000000000000;
    sub_2239B3678();

    v85[0] = 0xD000000000000018;
    v85[1] = 0x80000002239BAAC0;
    MEMORY[0x223DEE030](v30, v31);

    v67 = v85[1];
    *v65 = v85[0];
    *(v65 + 1) = v67;
    v68 = sub_2239B2F28();
    (*(*(v68 - 8) + 16))(&v65[v66], a2, v68);
    goto LABEL_30;
  }

  v35 = v34;

  v77 = v33;

  v36 = sub_223968E14();
  v75 = v37;
  v82 = v78;
  sub_223965588(&v82);
  sub_223965338(&v82);
  swift_beginAccess();
  v38 = *aUnknown_0;
  v39 = qword_2813367E8;

  v40 = v82;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = v40;
  sub_2239639F0(v38, v39, 4, 0x65566769666E6F63, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
  v82 = v40;
  sub_223968F38(&v82, v33, v35);
  sub_223969288(&v82);
  sub_22396879C(&v82);
  v42 = v82;

  v44 = sub_2239651A4(v43);
  v46 = v45;
  LOBYTE(v40) = v47;

  v83 = v40 & 1;
  v76 = v36;
  if (*(v42 + 16) && (v48 = sub_22396236C(0xD000000000000018, 0x80000002239B9090), (v49 & 1) != 0) && (v50 = *(v42 + 56) + 24 * v48, *(v50 + 16) == 4))
  {
    v52 = *v50;
    v51 = *(v50 + 8);
    sub_22396298C(*v50, v51, 4);
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v69 = v83;
  if (*(v78 + 16))
  {
    v74 = v53;
    v70 = sub_22396236C(0xD000000000000010, 0x80000002239BA860);
    if (v71)
    {
      v72 = (*(v78 + 56) + 24 * v70);
      if (v72[16] == 3)
      {
        v73 = *v72 & 1;
        sub_22398D454(0xD000000000000010, 0x80000002239BA860, &v79);
        sub_22397617C(v79, v80, v81);
      }

      else
      {
        v73 = 0;
      }
    }

    else
    {
      v73 = 0;
    }

    v53 = v74;
  }

  else
  {
    v73 = 0;
  }

  *a5 = v77;
  *(a5 + 4) = v35;
  *(a5 + 8) = v42;
  *(a5 + 16) = v44;
  *(a5 + 24) = v46;
  *(a5 + 32) = v69;
  *(a5 + 40) = 0;
  *(a5 + 42) = v73;
  *(a5 + 48) = v76;
  *(a5 + 56) = v75;
  *(a5 + 64) = 0;
  *(a5 + 72) = v52;
  *(a5 + 80) = v53;
}

unint64_t sub_223993120()
{
  v1 = v0;
  v2 = sub_2239B2F28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageUtilityError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2239943A8(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v8;
  v10 = v8[1];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A02B0, &qword_2239B6FB0);
      (*(v3 + 32))(v5, v8 + *(v12 + 48), v2);
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_2239B3678();

      v17 = v11;
      v18 = v10;
      MEMORY[0x223DEE030](0xD00000000000001ALL, 0x80000002239BA9A0);
      sub_22399440C(&qword_27D0A02B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v13 = sub_2239B3928();
      MEMORY[0x223DEE030](v13);

      MEMORY[0x223DEE030](34, 0xE100000000000000);
      v11 = v17;
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v15 = v8[2];
      v14 = v8[3];
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_2239B3678();

      v17 = 0xD00000000000001FLL;
      v18 = 0x80000002239BA9C0;
      MEMORY[0x223DEE030](v11, v10);

      MEMORY[0x223DEE030](0x736E657478652022, 0xED0000223D6E6F69);
      MEMORY[0x223DEE030](v15, v14);
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_2239B3678();

      v17 = 0xD00000000000001DLL;
      v18 = 0x80000002239BA9E0;
      MEMORY[0x223DEE030](v11, v10);
    }

    MEMORY[0x223DEE030](34, 0xE100000000000000);
    return v17;
  }

  return v11;
}

void *sub_223993440(uint64_t a1, char a2)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v6 = sub_2239B2F28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2239B2F38();
  if (v3)
  {
    return v2;
  }

  v12 = v10;
  v13 = v11;
  v42 = 0;
  v14 = objc_opt_self();
  v15 = sub_2239B2F58();
  v44[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:2 error:v44];

  v17 = v44[0];
  if (!v16)
  {
    v2 = v17;
    sub_2239B2E98();

    swift_willThrow();
    sub_22397F734(v12, v13);
    return v2;
  }

  sub_2239B35F8();
  swift_unknownObjectRelease();
  sub_22395E644(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0);
  if (!swift_dynamicCast())
  {
    v2 = type metadata accessor for MessageUtilityError(0);
    sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
    swift_allocError();
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A02B0, &qword_2239B6FB0) + 48);
    v33 = 0x80000002239BAA30;
    v34 = 0xD000000000000014;
LABEL_13:
    *v31 = v34;
    v31[1] = v33;
    (*(v7 + 16))(v31 + v32, a1, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22397F734(v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    return v2;
  }

  v18 = v43;
  if (!v43[2] || !*(v43[4] + 16))
  {

    v2 = type metadata accessor for MessageUtilityError(0);
    sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
    swift_allocError();
    v31 = v35;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A02B0, &qword_2239B6FB0) + 48);
    v33 = 0x80000002239BAA50;
    v34 = 0xD000000000000022;
    goto LABEL_13;
  }

  if (qword_281336648 != -1)
  {
    swift_once();
  }

  v19 = sub_2239B3048();
  __swift_project_value_buffer(v19, qword_281336650);
  (*(v7 + 16))(v9, a1, v6);
  swift_bridgeObjectRetain_n();
  v20 = sub_2239B3028();
  v41 = sub_2239B34F8();
  if (os_log_type_enabled(v20, v41))
  {
    v40 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v40 = 136380931;
    v38 = v20;
    v37 = sub_2239B2F08();
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    v23 = sub_223973B2C(v37, v22, v44);

    v24 = v40;
    *(v40 + 4) = v23;
    *(v24 + 12) = 2048;
    v25 = v18[2];

    *(v24 + 14) = v25;
    v26 = v24;

    v27 = v38;
    _os_log_impl(&dword_22395C000, v38, v41, "Successfully parsed json file. { path=%{private}s, entries=%ld }", v24, 0x16u);
    v28 = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x223DEF1D0](v28, -1, -1);
    MEMORY[0x223DEF1D0](v26, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v29 = (*(v7 + 8))(v9, v6);
  }

  MEMORY[0x28223BE20](v29);
  *(&v37 - 2) = a1;
  *(&v37 - 8) = a2 & 1;
  v2 = sub_223992218(sub_223994454, (&v37 - 4), v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  sub_22397F734(v12, v13);

  return v2;
}

uint64_t sub_223993A10(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v80 = a3;
  v91 = a2;
  v6 = sub_2239B2FC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v89 = v6;
    *&v100 = MEMORY[0x277D84F90];
    sub_223982A30(0, v10, 0);
    v11 = v100;
    v12 = *(v100 + 16);
    v90 = a1;
    v13 = (a1 + 64);
    v14 = v10;
    do
    {
      v15 = (v13 - 16);
      if (!*v13)
      {
        v15 = (v13 - 8);
      }

      v16 = *v15;
      *&v100 = v11;
      v17 = *(v11 + 24);
      v18 = v12 + 1;
      if (v12 >= v17 >> 1)
      {
        sub_223982A30((v17 > 1), v12 + 1, 1);
        v11 = v100;
      }

      *(v11 + 16) = v18;
      *(v11 + 8 * v12 + 32) = v16;
      v13 += 88;
      ++v12;
      --v10;
    }

    while (v10);
    v10 = v14;
    v6 = v89;
    a1 = v90;
  }

  else
  {
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (!v18)
    {

      v37 = type metadata accessor for MessageUtilityError(0);
      sub_22399440C(&qword_27D0A0280, type metadata accessor for MessageUtilityError, &unk_2239B6F6C);
      v74 = swift_allocError();
      *v75 = 0xD000000000000028;
      v75[1] = 0x80000002239BAA00;
      swift_storeEnumTagMultiPayload();
      v77[1] = v74;
      swift_willThrow();
      return v37;
    }
  }

  v19 = *(v11 + 32);
  v20 = v18 - 1;
  if (v18 == 1)
  {
    v21 = *(v11 + 32);
  }

  else
  {
    v22 = (v11 + 40);
    v23 = v18 - 1;
    v21 = *(v11 + 32);
    do
    {
      v24 = *v22++;
      v25 = v24;
      if (v24 < v21)
      {
        v21 = v25;
      }

      --v23;
    }

    while (v23);
    v26 = (v11 + 40);
    do
    {
      v27 = *v26++;
      v28 = v27;
      if (v19 < v27)
      {
        v19 = v28;
      }

      --v20;
    }

    while (v20);
  }

  sub_2239B2FB8();
  sub_2239B2FA8();
  v30 = v29;
  (*(v7 + 8))(v9, v6);
  v31 = v30 - a4;
  if (qword_281336648 != -1)
  {
    swift_once();
  }

  v32 = v31 - v21;
  v33 = sub_2239B3048();
  __swift_project_value_buffer(v33, qword_281336650);
  v34 = sub_2239B3028();
  v35 = sub_2239B34F8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134218496;
    *(v36 + 4) = v32;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v21;
    *(v36 + 22) = 2048;
    *(v36 + 24) = v19;
    _os_log_impl(&dword_22395C000, v34, v35, "Time info. { timeDelta=%f, minTime=%f, maxTime=%f }", v36, 0x20u);
    MEMORY[0x223DEF1D0](v36, -1, -1);
  }

  v37 = MEMORY[0x277D84F90];
  if (v10)
  {
    v106 = MEMORY[0x277D84F90];
    sub_223982A10(0, v10, 0);
    v37 = v106;
    v38 = (a1 + 32);
    v78 = "es";
    v79 = "S";
    swift_beginAccess();
    v39 = *&v91;
    while (1)
    {
      v40 = v38[1];
      v100 = *v38;
      v101 = v40;
      v105 = *(v38 + 10);
      v41 = v38[4];
      v103 = v38[3];
      v104 = v41;
      v102 = v38[2];
      v42 = &v101;
      if (!v102)
      {
        v42 = &v101 + 1;
      }

      v43 = *v42;
      v44 = v32 + *v42;
      v83 = v37;
      if ((v80 & 1) != 0 || v44 - v31 <= v39)
      {
        v31 = v44;
      }

      else
      {
        v32 = v32 - (v44 - v31 - v39);
        v31 = v43 + v32;
      }

      v45 = *(&v100 + 1);
      v86 = BYTE9(v102);
      v87 = BYTE8(v102);
      v85 = BYTE10(v102);
      v46 = *(&v103 + 1);
      v90 = v103;
      v88 = v104;
      v47 = WORD2(v100);
      v48 = v100;
      sub_2239628F8(&v100, v99);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99[0] = v45;
      sub_2239639F0(*&v31, 0, 2, 0xD000000000000015, v79 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
      v50 = v99[0];
      v89 = v46;

      sub_223968E14();
      v99[0] = v50;
      sub_223965588(v99);
      sub_223965338(v99);
      v51 = *aUnknown_0;
      v52 = qword_2813367E8;

      v53 = v99[0];
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v96 = v53;
      sub_2239639F0(v51, v52, 4, 0x65566769666E6F63, 0xED00006E6F697372, v54);
      v99[0] = v96;
      v82 = v48;
      v84 = v47;
      sub_223968F38(v99, v48, v47);
      sub_223969288(v99);
      sub_22396879C(v99);
      v55 = v99[0];

      v57 = sub_2239651A4(v56);
      v81 = v58;
      LOBYTE(v53) = v59;

      v98 = v53 & 1;

      v60 = *(v55 + 16);
      v91 = v10;
      if (!v60)
      {
        break;
      }

      v61 = sub_22396236C(0xD000000000000018, v78 | 0x8000000000000000);
      if ((v62 & 1) == 0)
      {
        break;
      }

      v63 = *(v55 + 56) + 24 * v61;
      v65 = *v63;
      v64 = *(v63 + 8);
      v66 = *(v63 + 16);
      sub_22396298C(*v63, v64, *(v63 + 16));
      sub_223991824(&v100);
      if (v66 != 4)
      {
        sub_223963BB4(v65, v64, v66);
LABEL_37:
        v65 = 0;
        v64 = 0;
      }

      v95[0] = v96;
      *(v95 + 3) = *(&v96 + 3);
      v93 = *&v97[7];
      v94 = v97[11];
      v92[0] = *v97;
      v37 = v83;
      v68 = *(v83 + 16);
      v67 = *(v83 + 24);
      *(v92 + 3) = *&v97[3];
      v69 = v98;
      v106 = v83;
      if (v68 >= v67 >> 1)
      {
        sub_223982A10((v67 > 1), v68 + 1, 1);
        v37 = v106;
      }

      *(v37 + 16) = v68 + 1;
      v70 = v37 + 88 * v68;
      *(v70 + 32) = v82;
      *(v70 + 36) = v84;
      *(v70 + 40) = v55;
      *(v70 + 48) = v57;
      *(v70 + 56) = v81;
      *(v70 + 64) = v69;
      v71 = *(v95 + 3);
      *(v70 + 65) = v95[0];
      *(v70 + 68) = v71;
      LOBYTE(v71) = v86;
      *(v70 + 72) = v87;
      *(v70 + 73) = v71;
      *(v70 + 74) = v85;
      v72 = v93;
      *(v70 + 79) = v94;
      *(v70 + 75) = v72;
      v73 = v89;
      *(v70 + 80) = v90;
      *(v70 + 88) = v73;
      *(v70 + 96) = v88;
      LODWORD(v73) = v92[0];
      *(v70 + 100) = *(v92 + 3);
      *(v70 + 97) = v73;
      *(v70 + 104) = v65;
      *(v70 + 112) = v64;
      v38 = (v38 + 88);
      v10 = v91 - 1;
      if (v91 == 1)
      {
        return v37;
      }
    }

    sub_223991824(&v100);
    goto LABEL_37;
  }

  return v37;
}

void sub_2239941D4(uint64_t a1)
{
  sub_223994264();
  if (v1 <= 0x3F)
  {
    sub_223994294();
    if (v2 <= 0x3F)
    {
      sub_2239942F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_223994264()
{
  result = qword_27D0A0298;
  if (!qword_27D0A0298)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D0A0298);
  }

  return result;
}

void sub_223994294()
{
  if (!qword_27D0A02A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D0A02A0);
    }
  }
}

void sub_2239942F4(uint64_t a1)
{
  if (!qword_27D0A02A8)
  {
    sub_2239B2F28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D0A02A8);
    }
  }
}

uint64_t sub_2239943A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageUtilityError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22399440C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_223994478(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2239944CC()
{
  type metadata accessor for NotificationManager(0);
  v0 = swift_allocObject();
  result = sub_223995404();
  qword_27D0A02C0 = v0;
  return result;
}

uint64_t static NotificationManager.shared.getter()
{
  if (qword_27D09FC98 != -1)
  {
    swift_once();
  }
}

void NotificationManager.surfaceTapToRadar(_:)(_OWORD *a1)
{
  v3 = sub_2239B3078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2239B30B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v26[2] = a1[2];
  v26[3] = v11;
  v12 = a1[5];
  v26[4] = a1[4];
  v26[5] = v12;
  v13 = a1[1];
  v26[0] = *a1;
  v26[1] = v13;
  if (AudioAnalyticsTapToRadarWrapperIsAvailable())
  {
    v23 = *(v1 + 16);
    v14 = swift_allocObject();
    v15 = a1[3];
    *(v14 + 56) = a1[2];
    *(v14 + 72) = v15;
    v16 = a1[5];
    *(v14 + 88) = a1[4];
    *(v14 + 104) = v16;
    v17 = a1[1];
    *(v14 + 24) = *a1;
    *(v14 + 16) = v1;
    *(v14 + 40) = v17;
    aBlock[4] = sub_2239956F4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22396013C;
    aBlock[3] = &block_descriptor_2;
    v18 = _Block_copy(aBlock);

    sub_223995700(v26, v24);
    sub_2239B3098();
    v24[0] = MEMORY[0x277D84F90];
    sub_22396091C(&unk_281336638, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v22 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0060, &qword_2239B5D70);
    sub_223960964(&qword_281336628, &qword_27D0A0060, &qword_2239B5D70);
    sub_2239B3608();
    MEMORY[0x223DEE310](0, v10, v6, v18);
    _Block_release(v18);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
  }

  else
  {
    v23 = sub_2239B3028();
    v19 = sub_2239B34C8();
    if (os_log_type_enabled(v23, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22395C000, v23, v19, "TapToRadar is not available on this platform.", v20, 2u);
      MEMORY[0x223DEF1D0](v20, -1, -1);
    }

    v21 = v23;
  }
}

uint64_t sub_223994944(uint64_t result)
{
  v1 = result;
  if (qword_2813369A0 != -1)
  {
    result = swift_once();
  }

  if (byte_2813369AE == 1)
  {
    result = sub_223995138(&OBJC_IVAR____TtC18AudioAnalyticsBase19NotificationManager_radarRequestLastFired, "Less than 10 minutes since last notification. Not spawning notification.");
    if (result)
    {
      v2 = sub_2239B3028();
      v3 = sub_2239B34F8();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_22395C000, v2, v3, "Creating TapToRadar Draft.", v4, 2u);
        MEMORY[0x223DEF1D0](v4, -1, -1);
      }

      RadarDraft.send(for:completionHandler:)(0, 0, sub_2239958E0, v1);
    }
  }

  return result;
}

void sub_223994AA4(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_281335E30 != -1)
    {
      swift_once();
    }

    v3 = sub_2239B3048();
    __swift_project_value_buffer(v3, qword_281335E38);
    v4 = a1;
    v5 = sub_2239B3028();
    v6 = sub_2239B34E8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136380675;
      swift_getErrorValue();
      v9 = sub_2239B39B8();
      v11 = sub_223973B2C(v9, v10, &v16);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_22395C000, v5, v6, "Failed to create radar. { err=%{private}s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x223DEF1D0](v8, -1, -1);
      MEMORY[0x223DEF1D0](v7, -1, -1);

      return;
    }

    v14 = a1;
  }

  else
  {
    oslog = sub_2239B3028();
    v12 = sub_2239B34F8();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22395C000, oslog, v12, "Successfully surfaced overload notification.", v13, 2u);
      MEMORY[0x223DEF1D0](v13, -1, -1);
    }

    v14 = oslog;
  }
}

uint64_t NotificationManager.surfaceAlertNotification(_:)(uint64_t a1)
{
  v3 = sub_2239B3078();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2239B30B8();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v9;
  v23[6] = *(a1 + 96);
  v24 = *(a1 + 112);
  v10 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v10;
  v11 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v11;
  v18 = *(v1 + 16);
  v12 = swift_allocObject();
  v13 = *(a1 + 80);
  *(v12 + 88) = *(a1 + 64);
  *(v12 + 104) = v13;
  *(v12 + 120) = *(a1 + 96);
  v14 = *(a1 + 16);
  *(v12 + 24) = *a1;
  *(v12 + 40) = v14;
  v15 = *(a1 + 48);
  *(v12 + 56) = *(a1 + 32);
  *(v12 + 16) = v1;
  *(v12 + 136) = *(a1 + 112);
  *(v12 + 72) = v15;
  v22[4] = sub_22399575C;
  v22[5] = v12;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_22396013C;
  v22[3] = &block_descriptor_6;
  v16 = _Block_copy(v22);

  sub_223995768(v23, v21);
  sub_2239B3098();
  v21[0] = MEMORY[0x277D84F90];
  sub_22396091C(&unk_281336638, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0060, &qword_2239B5D70);
  sub_223960964(&qword_281336628, &qword_27D0A0060, &qword_2239B5D70);
  sub_2239B3608();
  MEMORY[0x223DEE310](0, v8, v5, v16);
  _Block_release(v16);
  (*(v20 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
}

void sub_22399502C(uint64_t a1, uint64_t a2)
{
  if (sub_223995138(&OBJC_IVAR____TtC18AudioAnalyticsBase19NotificationManager_alertNotificationLastFired, "Less than 10 minutes since last alert notification. Not spawning notification."))
  {
    v3 = *(a2 + 80);
    v9[4] = *(a2 + 64);
    v9[5] = v3;
    v9[6] = *(a2 + 96);
    v10 = *(a2 + 112);
    v4 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v4;
    v5 = *(a2 + 48);
    v9[2] = *(a2 + 32);
    v9[3] = v5;
    _s18AudioAnalyticsBase17AlertNotificationV7surfaceyyACFZ_0(v9);
    oslog = sub_2239B3028();
    v6 = sub_2239B34F8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22395C000, oslog, v6, "Surfaced AlertNotification.", v7, 2u);
      MEMORY[0x223DEF1D0](v7, -1, -1);
    }
  }
}

BOOL sub_223995138(uint64_t *a1, const char *a2)
{
  v5 = v2;
  v6 = sub_2239B2FC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2239B2FB8();
  sub_2239B2FA8();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = *a1;
  v14 = v11 - *(v5 + v13);
  if (v14 < 600.0)
  {
    v17 = sub_2239B3028();
    v18 = sub_2239B34F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22395C000, v17, v18, a2, v19, 2u);
      MEMORY[0x223DEF1D0](v19, -1, -1);
    }
  }

  else
  {
    sub_2239B2FB8();
    sub_2239B2FA8();
    v16 = v15;
    v12(v9, v6);
    *(v5 + v13) = v16;
  }

  return v14 >= 600.0;
}

uint64_t NotificationManager.deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase19NotificationManager_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NotificationManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase19NotificationManager_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_223995404()
{
  v1 = v0;
  v13 = sub_2239B3518();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2239B3508();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2239B30B8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_223976FB0();
  v12[0] = "alertNotificationLastFired";
  v12[1] = v7;
  sub_2239B3098();
  v14 = MEMORY[0x277D84F90];
  sub_22396091C(&qword_2813365F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FED8, &qword_2239B52E0);
  sub_223960964(&qword_281336620, &qword_27D09FED8, &qword_2239B52E0);
  sub_2239B3608();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v13);
  *(v0 + 16) = sub_2239B3548();
  v8 = OBJC_IVAR____TtC18AudioAnalyticsBase19NotificationManager_logger;
  if (qword_281335E30 != -1)
  {
    swift_once();
  }

  v9 = sub_2239B3048();
  v10 = __swift_project_value_buffer(v9, qword_281335E38);
  (*(*(v9 - 8) + 16))(v1 + v8, v10, v9);
  *(v1 + OBJC_IVAR____TtC18AudioAnalyticsBase19NotificationManager_radarRequestLastFired) = 0;
  *(v1 + OBJC_IVAR____TtC18AudioAnalyticsBase19NotificationManager_alertNotificationLastFired) = 0;
  return v1;
}

uint64_t type metadata accessor for NotificationManager(uint64_t a1)
{
  result = qword_27D0A02E0;
  if (!qword_27D0A02E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223995818(uint64_t a1)
{
  result = sub_2239B3048();
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

void OSAllocatedUnfairLock<A>.load()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v5));
  sub_223995A20(a1 + v4, a2);
  os_unfair_lock_unlock((a1 + v5));
}

void OSAllocatedUnfairLock<A>.store(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_223995A78(a2 + v3);
  os_unfair_lock_unlock((a2 + v4));
}

uint64_t sub_223995A78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

void OSAllocatedUnfairLock<A>.assign<A>(_:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v5));
  sub_223995CC4(a3 + v4);
  os_unfair_lock_unlock((a3 + v5));
}

uint64_t sub_223995BC0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v6 - v3, v4);
  return swift_setAtWritableKeyPath();
}

void OSAllocatedUnfairLock<A>.exchange(_:)(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v6));
  sub_223995D80(a2 + v5, x8_0);
  os_unfair_lock_unlock((a2 + v6));
}

uint64_t sub_223995D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v5 - 8);
  (*(v6 + 32))(a2, a1, v5);
  return (*(v6 + 16))(a1, v4, v5);
}

void OSAllocatedUnfairLock<A>.increment()(uint64_t a1)
{
  v2 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v3));
  sub_223995ED0(a1 + v2);
  os_unfair_lock_unlock((a1 + v3));
}

void OSAllocatedUnfairLock<A>.decrement()(uint64_t a1)
{
  v2 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v3));
  sub_223996150(a1 + v2);
  os_unfair_lock_unlock((a1 + v3));
}

uint64_t sub_223995F98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t, void))
{
  v14 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_2239B3978();
  sub_2239B3948();
  v14(a1, v8, a2, *(v10 + 8));
  return (*(v6 + 8))(v8, a2);
}

void OSAllocatedUnfairLock<A>.fetchAdd(_:)(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v6));
  sub_223996224(a2 + v5, x8_0);
  os_unfair_lock_unlock((a2 + v6));
}

void OSAllocatedUnfairLock<A>.fetchSub(_:)(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v6));
  sub_2239962F4(a2 + v5, x8_0);
  os_unfair_lock_unlock((a2 + v6));
}

uint64_t sub_223996320@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  return a2(a1, v8, v6, *(v7 + 8));
}

uint64_t sub_2239963B4()
{
  type metadata accessor for OsTransactionHandler(0);
  v0 = swift_allocObject();
  result = sub_22399660C();
  qword_281336280 = v0;
  return result;
}

Swift::Void __swiftcall OsTransactionHandler.expire()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  os_unfair_lock_lock(v2 + 4);
  if (*(v0 + 24))
  {
    v3 = sub_2239B3028();
    v4 = sub_2239B34D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22395C000, v3, v4, "Expiring OsTransaction.", v5, 2u);
      MEMORY[0x223DEF1D0](v5, -1, -1);
    }

    *(v1 + 24) = 0;
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t OsTransactionHandler.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t OsTransactionHandler.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22399660C()
{
  v1 = v0;
  v2 = sub_2239B2FC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0358, &qword_2239B7070);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v1 + 16) = v6;
  *(v1 + 24) = 0;
  v7 = OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_logger;
  if (qword_281336698 != -1)
  {
    swift_once();
  }

  v8 = sub_2239B3048();
  v9 = __swift_project_value_buffer(v8, qword_2813366A0);
  (*(*(v8 - 8) + 16))(v1 + v7, v9, v8);
  *(v1 + OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_activeReporterIDs) = MEMORY[0x277D84FA0];
  v10 = OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_lastActiveTime;
  sub_2239B2FB8();
  sub_2239B2FA8();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  *(v1 + v10) = v12;
  return v1;
}

uint64_t sub_2239967B8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2239B3A18();
  sub_2239B3228();
  v8 = sub_2239B3A78();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2239B3958() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_223997A34(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_223996908(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_2239B3A18();
  Config.WorkerConfigs.rawValue.getter();
  sub_2239B3228();

  v5 = sub_2239B3A78();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_57:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    sub_223997BB4(a2, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
    goto LABEL_60;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xEB00000000656D75;
    v10 = 0x6C6F56534F63616DLL;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0x6F57646F50726961;
        v9 = 0xEC00000072656B72;
        break;
      case 2:
        v10 = 0x74736F6E67616964;
        v9 = 0xEA00000000006369;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x676F4C7265776F70;
        break;
      case 4:
        v10 = 0xD000000000000010;
        v9 = 0x80000002239B9310;
        break;
      case 5:
        v10 = 0x6E6F697461727564;
        v9 = 0xEF7972616D6D7553;
        break;
      case 6:
        v10 = 0xD000000000000010;
        v9 = 0x80000002239B9340;
        break;
      case 7:
        v10 = 0x536E6F6973736573;
        v9 = 0xEE007972616D6D75;
        break;
      case 8:
        v10 = 0x6C616E4165726F63;
        v11 = 1667855481;
        goto LABEL_20;
      case 9:
        v9 = 0xE300000000000000;
        v10 = 6517874;
        break;
      case 0xA:
        v9 = 0xE400000000000000;
        v10 = 1852797802;
        break;
      case 0xB:
        v9 = 0xE800000000000000;
        v10 = 0x6E6970736C696174;
        break;
      case 0xC:
        v10 = 0x6E53726576697264;
        v9 = 0xEE00746F68737061;
        break;
      case 0xD:
        v10 = 0xD000000000000010;
        v9 = 0x80000002239B9390;
        break;
      case 0xE:
        v10 = 0x6576697470616461;
        v9 = 0xEE00656D756C6F56;
        break;
      case 0xF:
        v10 = 0x6163696669746F6ELL;
        v11 = 1852795252;
LABEL_20:
        v9 = v11 | 0xED00007300000000;
        break;
      case 0x10:
        v10 = 0xD000000000000019;
        v9 = 0x80000002239B93C0;
        break;
      default:
        break;
    }

    v12 = 0x6C6F56534F63616DLL;
    v13 = 0xEB00000000656D75;
    switch(a2)
    {
      case 1:
        v13 = 0xEC00000072656B72;
        if (v10 == 0x6F57646F50726961)
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      case 2:
        v13 = 0xEA00000000006369;
        if (v10 != 0x74736F6E67616964)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 3:
        v13 = 0xE800000000000000;
        if (v10 != 0x676F4C7265776F70)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 4:
        v13 = 0x80000002239B9310;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 5:
        v13 = 0xEF7972616D6D7553;
        if (v10 != 0x6E6F697461727564)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 6:
        v13 = 0x80000002239B9340;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 7:
        v14 = 0x536E6F6973736573;
        v15 = 0x7972616D6D75;
        goto LABEL_40;
      case 8:
        v16 = 0x6C616E4165726F63;
        v17 = 1667855481;
        goto LABEL_55;
      case 9:
        v13 = 0xE300000000000000;
        if (v10 != 6517874)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 10:
        v13 = 0xE400000000000000;
        v12 = 1852797802;
        goto LABEL_49;
      case 11:
        v13 = 0xE800000000000000;
        if (v10 != 0x6E6970736C696174)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 12:
        v14 = 0x6E53726576697264;
        v15 = 0x746F68737061;
        goto LABEL_40;
      case 13:
        v13 = 0x80000002239B9390;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 14:
        v14 = 0x6576697470616461;
        v15 = 0x656D756C6F56;
LABEL_40:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v10 != v14)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 15:
        v16 = 0x6163696669746F6ELL;
        v17 = 1852795252;
LABEL_55:
        v13 = v17 | 0xED00007300000000;
        if (v10 != v16)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 16:
        v13 = 0x80000002239B93C0;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      default:
LABEL_49:
        if (v10 != v12)
        {
          goto LABEL_51;
        }

LABEL_50:
        if (v9 != v13)
        {
LABEL_51:
          v18 = sub_2239B3958();

          if (v18)
          {
            goto LABEL_59;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_57;
          }

          continue;
        }

LABEL_59:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_60:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_223996EC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0360, &qword_2239B7078);
  result = sub_2239B3648();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2239B3A18();
      sub_2239B3228();
      result = sub_2239B3A78();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_223997128(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0A0370, &unk_2239B7088);
  result = sub_2239B3648();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_2239B3A18();
      sub_2239B3228();

      result = sub_2239B3A78();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_223997390(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0350, &qword_2239B7068);
  result = sub_2239B3648();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_2239B3A08();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2239975B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0368, &qword_2239B7080);
  result = sub_2239B3648();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_2239B3A18();
      sub_2239B3228();

      result = sub_2239B3A78();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_223997A34(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_223996EC8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2239981C8();
      goto LABEL_16;
    }

    sub_223998594(v8 + 1);
  }

  v10 = *v4;
  sub_2239B3A18();
  sub_2239B3228();
  result = sub_2239B3A78();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2239B3958();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2239B3998();
  __break(1u);
  return result;
}

uint64_t sub_223997BB4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2239975B4(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_223998464(&qword_27D0A0368, &qword_2239B7080);
        goto LABEL_64;
      }

      sub_223998BF4(v6 + 1);
    }

    v8 = *v3;
    sub_2239B3A18();
    Config.WorkerConfigs.rawValue.getter();
    sub_2239B3228();

    result = sub_2239B3A78();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xEB00000000656D75;
        v12 = 0x6C6F56534F63616DLL;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0x6F57646F50726961;
            v11 = 0xEC00000072656B72;
            break;
          case 2:
            v12 = 0x74736F6E67616964;
            v11 = 0xEA00000000006369;
            break;
          case 3:
            v11 = 0xE800000000000000;
            v12 = 0x676F4C7265776F70;
            break;
          case 4:
            v12 = 0xD000000000000010;
            v11 = 0x80000002239B9310;
            break;
          case 5:
            v12 = 0x6E6F697461727564;
            v11 = 0xEF7972616D6D7553;
            break;
          case 6:
            v12 = 0xD000000000000010;
            v11 = 0x80000002239B9340;
            break;
          case 7:
            v12 = 0x536E6F6973736573;
            v11 = 0xEE007972616D6D75;
            break;
          case 8:
            v12 = 0x6C616E4165726F63;
            v13 = 1667855481;
            goto LABEL_27;
          case 9:
            v11 = 0xE300000000000000;
            v12 = 6517874;
            break;
          case 0xA:
            v11 = 0xE400000000000000;
            v12 = 1852797802;
            break;
          case 0xB:
            v11 = 0xE800000000000000;
            v12 = 0x6E6970736C696174;
            break;
          case 0xC:
            v12 = 0x6E53726576697264;
            v11 = 0xEE00746F68737061;
            break;
          case 0xD:
            v12 = 0xD000000000000010;
            v11 = 0x80000002239B9390;
            break;
          case 0xE:
            v12 = 0x6576697470616461;
            v11 = 0xEE00656D756C6F56;
            break;
          case 0xF:
            v12 = 0x6163696669746F6ELL;
            v13 = 1852795252;
LABEL_27:
            v11 = v13 | 0xED00007300000000;
            break;
          case 0x10:
            v12 = 0xD000000000000019;
            v11 = 0x80000002239B93C0;
            break;
          default:
            break;
        }

        v14 = 0x6C6F56534F63616DLL;
        v15 = 0xEB00000000656D75;
        switch(v5)
        {
          case 1:
            v15 = 0xEC00000072656B72;
            if (v12 == 0x6F57646F50726961)
            {
              goto LABEL_57;
            }

            goto LABEL_58;
          case 2:
            v15 = 0xEA00000000006369;
            if (v12 != 0x74736F6E67616964)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 3:
            v15 = 0xE800000000000000;
            if (v12 != 0x676F4C7265776F70)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 4:
            v15 = 0x80000002239B9310;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 5:
            v15 = 0xEF7972616D6D7553;
            if (v12 != 0x6E6F697461727564)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 6:
            v15 = 0x80000002239B9340;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 7:
            v16 = 0x536E6F6973736573;
            v17 = 0x7972616D6D75;
            goto LABEL_47;
          case 8:
            v18 = 0x6C616E4165726F63;
            v19 = 1667855481;
            goto LABEL_62;
          case 9:
            v15 = 0xE300000000000000;
            if (v12 != 6517874)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 10:
            v15 = 0xE400000000000000;
            v14 = 1852797802;
            goto LABEL_56;
          case 11:
            v15 = 0xE800000000000000;
            if (v12 != 0x6E6970736C696174)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 12:
            v16 = 0x6E53726576697264;
            v17 = 0x746F68737061;
            goto LABEL_47;
          case 13:
            v15 = 0x80000002239B9390;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 14:
            v16 = 0x6576697470616461;
            v17 = 0x656D756C6F56;
LABEL_47:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v12 != v16)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 15:
            v18 = 0x6163696669746F6ELL;
            v19 = 1852795252;
LABEL_62:
            v15 = v19 | 0xED00007300000000;
            if (v12 != v18)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 16:
            v15 = 0x80000002239B93C0;
            if (v12 != 0xD000000000000019)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          default:
LABEL_56:
            if (v12 != v14)
            {
              goto LABEL_58;
            }

LABEL_57:
            if (v11 == v15)
            {
              goto LABEL_67;
            }

LABEL_58:
            v20 = sub_2239B3958();

            if (v20)
            {
              goto LABEL_68;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_64:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v5;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_67:

LABEL_68:
    result = sub_2239B3998();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
  }

  return result;
}

void *sub_2239981C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0360, &qword_2239B7078);
  v2 = *v0;
  v3 = sub_2239B3638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_223998324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0350, &qword_2239B7068);
  v2 = *v0;
  v3 = sub_2239B3638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_223998464(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2239B3638();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_223998594(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0360, &qword_2239B7078);
  result = sub_2239B3648();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2239B3A18();

      sub_2239B3228();
      result = sub_2239B3A78();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2239987CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0A0370, &unk_2239B7088);
  result = sub_2239B3648();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_2239B3A18();
      sub_2239B3228();

      result = sub_2239B3A78();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_223998A04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0350, &qword_2239B7068);
  result = sub_2239B3648();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2239B3A08();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_223998BF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0368, &qword_2239B7080);
  result = sub_2239B3648();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_2239B3A18();
      sub_2239B3228();

      result = sub_2239B3A78();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22399904C(uint64_t a1)
{
  result = sub_2239B3048();
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

unint64_t sub_223999128(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2239B3628();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2239B3A18();
        sub_2239B3228();

        v10 = sub_2239B3A78() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t PeriodicClosure.__allocating_init(at:)(double a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0080, &qword_2239B5DB0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t PeriodicClosure.init(at:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0080, &qword_2239B5DB0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_2239993A8(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 24));
  sub_223960244((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 24));
  v4 = v6;

  if (v4)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_223999430()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t PeriodicClosure.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id static Predicate.build(_:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_2239B3158();
  v4 = [v2 buildPredicate_];

  return v4;
}

AudioAnalyticsBase::PreferenceInformation __swiftcall PreferenceInformation.init(key:applicationID:)(Swift::String key, Swift::String applicationID)
{
  *v2 = key;
  v2[1] = applicationID;
  result.applicationID = applicationID;
  result.key = key;
  return result;
}

uint64_t PreferenceInformation.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PreferenceInformation.applicationID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Preference.set(_:saveToDisk:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_2239B3598();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    result = (*(v13 + 24))(v3 + *(a3 + 28), v3 + *(a3 + 32), v7);
    if (a2)
    {
      return _s18AudioAnalyticsBase17DefaultsUtilitiesO6remove3key13applicationID8userNameySS_S2StFZ_0(*v3, v3[1], v3[2], v3[3], 0x656C69626F6DLL, 0xE600000000000000);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v12, v7);
    (*(v13 + 24))(v3 + *(a3 + 28), v15, v7);
    if (a2)
    {
      static DefaultsUtilities.setGeneric<A>(value:key:applicationID:userName:)(v15, *v3, v3[1], v3[2], v3[3], 0x656C69626F6DLL, 0xE600000000000000, v7);
    }

    return (*(v13 + 8))(v15, v7);
  }

  return result;
}

uint64_t Preference.info.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_2239999A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2239999F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223999A48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223999AC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 32) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_223999C58(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 32) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 32] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void RadarDraft.send(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *(v4 + 88);
  v17 = sub_2239B3158();
  v5 = sub_2239B3158();
  v6 = sub_2239B3158();
  sub_2239B2F28();
  v7 = sub_2239B33A8();
  v8 = sub_2239B3158();
  v9 = sub_2239B3158();
  if (!a2)
  {
    v10 = 0;
    v11 = a3;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v10 = sub_2239B3158();
  v11 = a3;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  aBlock[4] = v11;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22399A0A8;
  aBlock[3] = &block_descriptor_3;
  v12 = _Block_copy(aBlock);

LABEL_6:
  AudioAnalyticsTapToRadarWrapperSend(v17, v5, v6, v7, v8, v9, v16, v10, v12);
  _Block_release(v12);
}

__n128 RadarDraft.init(title:problemDescription:displayReason:attachments:component:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = *a8;
  v10 = *(a8 + 16);
  v11 = *(a8 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = result;
  *(a9 + 72) = v10;
  *(a9 + 88) = v11;
  return result;
}

void sub_22399A0A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void __swiftcall RadarComponent.init(name:version:identifier:)(AudioAnalyticsBase::RadarComponent *__return_ptr retstr, Swift::String name, Swift::String version, Swift::Int identifier)
{
  retstr->name = name;
  retstr->version = version;
  retstr->identifier = identifier;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22399A150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_22399A198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22399A214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22399A25C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_22399A2B4(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399E4C4(a1, 7);
    if (v3)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  CommonConfigFields.init(dict:)(a1, v57);
  if (v3)
  {

    return;
  }

  v7 = v57[0];
  v53 = v57[1];
  v54 = v57[2];
  v10 = v57[4];
  v55 = v57[3];
  v56 = v57[5];
  v60 = BYTE2(v57[0]);
  v8 = sub_22399C9B0(5u, a1);
  v52 = sub_22398455C(v8, v9);
  v49 = v7;
  v50 = v10;

  LOBYTE(v10) = 1;
  v11 = sub_22399C9B0(1u, a1);
  if (v12)
  {
    v13 = v12;
    v10 = v11;
    v14 = sub_2239B0D94(v11, v12);
    v15 = sub_22397247C(a2 & 1, 0xD000000000000016, 0x80000002239BACE0, v10, v13, v14 & 0x1FFFF);

    LODWORD(v10) = HIWORD(v15) & 1;
  }

  else
  {
    LOWORD(v15) = 0;
  }

  v59 = v10;
  v16 = sub_22399C9B0(0, a1);
  if (v17)
  {
    v18 = v17;
    v19 = v16;
    v20 = sub_2239B1DD8(v16, v17);
    v21 = sub_223972728(a2 & 1, 0xD00000000000001ALL, 0x80000002239BACC0, v19, v18, v20 | ((HIDWORD(v20) & 1) << 32));

    v22 = HIDWORD(v21) & 1;
  }

  else
  {
    LODWORD(v21) = 0;
    LOBYTE(v22) = 1;
  }

  v23 = v50;
  v58 = v22;
  v24 = sub_22399CB58(2u, a1);
  v47 = v24 == 2;
  v48 = v24;
  v46 = sub_22399CB58(4u, a1);
  v25 = sub_22399CD00(6u, a1);

  v26 = v49;
  v27 = v56;
  if (!v25)
  {
    goto LABEL_22;
  }

  v28 = *(v25 + 16);
  if (!v28)
  {

LABEL_22:
    v40 = MEMORY[0x277D84FA0];
LABEL_24:
    v41 = v60;
    v42 = v59;
    v43 = v58;
    *a3 = v26;
    *(a3 + 2) = v41;
    *(a3 + 8) = v53;
    *(a3 + 16) = v54;
    *(a3 + 24) = v55;
    *(a3 + 32) = v23;
    *(a3 + 40) = v27;
    *(a3 + 48) = v52;
    *(a3 + 56) = v15;
    *(a3 + 58) = v42;
    *(a3 + 60) = v21;
    *(a3 + 64) = v43;
    *(a3 + 65) = (v47 | v48) & 1;
    *(a3 + 66) = v46 & 1;
    *(a3 + 72) = v40;
    return;
  }

  v44 = v21;
  v45 = v15;
  v57[0] = MEMORY[0x277D84F90];
  v51 = v28;
  sub_223982A50(0, v28, 0);
  v29 = 0;
  v30 = v57[0];
  v31 = (v25 + 40);
  while (v29 < *(v25 + 16))
  {
    v32 = v25;
    v34 = *(v31 - 1);
    v33 = *v31;
    swift_bridgeObjectRetain_n();
    v35._countAndFlagsBits = v34;
    v35._object = v33;
    Config.WorkerConfigs.init(rawValue:)(v35);
    v36 = v61;
    if (v61 == 17)
    {

      sub_223973AD8();
      swift_allocError();
      *v39 = v34;
      *(v39 + 8) = v33;
      *(v39 + 16) = 2;
      swift_willThrow();

      return;
    }

    v57[0] = v30;
    v38 = *(v30 + 16);
    v37 = *(v30 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_223982A50((v37 > 1), v38 + 1, 1);
      v30 = v57[0];
    }

    ++v29;
    *(v30 + 16) = v38 + 1;
    *(v30 + v38 + 32) = v36;
    v31 += 2;
    v25 = v32;
    if (v51 == v29)
    {

      v40 = sub_223991534(v30);

      v27 = v56;
      v23 = v50;
      v26 = v49;
      LOWORD(v15) = v45;
      LODWORD(v21) = v44;
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t RouterConfig.commonFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t sub_22399A7F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22399A838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22399A88C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a1 + 16) || (v7 = sub_223981500(7), (v8 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v7, &v47), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), result = swift_dynamicCast(), (result & 1) == 0))
  {
    v10 = 0x80000002239BACA0;
    sub_223973AD8();
    swift_allocError();
    *v21 = 0xD000000000000018;
    *(v21 + 8) = 0x80000002239BACA0;
    *(v21 + 16) = 0;
    swift_willThrow();
    return v10;
  }

  v10 = v42;
  v11 = *(v42 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    while (v12 < *(v10 + 16))
    {

      sub_22399A2B4(v14, a4 & 1, &v47);
      if (v4)
      {

        return v10;
      }

      v44 = v49;
      v45 = v50;
      v46 = v51;
      v42 = v47;
      v43 = v48;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223981F08(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_223981F08((v15 > 1), v16 + 1, 1, v13);
        v13 = result;
      }

      ++v12;
      *(v13 + 16) = v16 + 1;
      v17 = (v13 + 80 * v16);
      v17[2] = v42;
      v18 = v43;
      v19 = v44;
      v20 = v46;
      v17[5] = v45;
      v17[6] = v20;
      v17[3] = v18;
      v17[4] = v19;
      if (v11 == v12)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_17:

  v22 = *(v13 + 16);
  if (!v22)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_33:

    return v10;
  }

  v23 = 0;
  v10 = MEMORY[0x277D84F90];
  v24 = 32;
LABEL_19:
  v25 = v24;
  v26 = v24 + 80 * v23;
  v27 = v23;
  while (v27 < *(v13 + 16))
  {
    v47 = *(v13 + v26);
    v28 = *(v13 + v26 + 16);
    v29 = *(v13 + v26 + 32);
    v30 = *(v13 + v26 + 64);
    v50 = *(v13 + v26 + 48);
    v51 = v30;
    v48 = v28;
    v49 = v29;
    v41[3] = &type metadata for RouterConfig;
    v41[4] = &protocol witness table for RouterConfig;
    v41[0] = swift_allocObject();
    memmove((v41[0] + 16), (v13 + v26), 0x50uLL);
    sub_22399AC6C(&v47, &v42);
    sub_22399AC6C(&v47, &v42);
    v31 = sub_223984164(v41, a2, a3);
    if (v4)
    {

      sub_22399ACA4(&v47);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);

      return v10;
    }

    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    if (v32)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v52 = v10;
      if ((result & 1) == 0)
      {
        result = sub_2239828F0(0, *(v10 + 16) + 1, 1);
        v10 = v52;
      }

      v34 = *(v10 + 16);
      v33 = *(v10 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_2239828F0((v33 > 1), v34 + 1, 1);
        v10 = v52;
      }

      v23 = v27 + 1;
      *(v10 + 16) = v34 + 1;
      v35 = (v10 + 80 * v34);
      v35[2] = v47;
      v36 = v48;
      v37 = v49;
      v38 = v51;
      v35[5] = v50;
      v35[6] = v38;
      v35[3] = v36;
      v35[4] = v37;
      v24 = v25;
      if (v22 - 1 != v27)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }

    ++v27;
    result = sub_22399ACA4(&v47);
    v26 += 80;
    if (v22 == v27)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void *sub_22399ACD4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_223981500(2);
    if (v6)
    {
      sub_22395E644(*(v3 + 56) + 32 * v5, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
      if (swift_dynamicCast())
      {
        return sub_22399ADD4(v9, a1[40], a2);
      }
    }
  }

  sub_223973AD8();
  swift_allocError();
  *v8 = 0xD00000000000001BLL;
  *(v8 + 8) = 0x80000002239BAD00;
  *(v8 + 16) = 0;
  return swift_willThrow();
}

void *sub_22399ADD4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399DB88(a1);
    if (v3)
    {
      return swift_bridgeObjectRelease_n();
    }
  }

  CommonConfigFields.init(dict:)(a1, &v78);
  if (v3)
  {
  }

  v8 = v78;
  v10 = v79;
  v9 = v80;
  v76 = v81;
  v77 = v82;
  v84 = BYTE2(v78);
  if (a2)
  {
    v11 = 258;
  }

  else
  {
    v11 = 2;
  }

  v75 = v83;
  v12 = sub_22397B4DC(3, a1, v11);
  v74 = sub_22399139C(v12);

  v13 = sub_22397B4DC(1, a1, v11);
  v72 = sub_22399139C(v13);

  v14 = sub_22397B4DC(0, a1, v11);
  v73 = sub_22399139C(v14);

  v15 = sub_22397B6B4(2, a1, v11);
  v16 = sub_22399C550(4u, a1);

  if (!v16)
  {
    result = sub_223974DE4(MEMORY[0x277D84F90]);
    v48 = v74;
    goto LABEL_41;
  }

  v55 = v15;
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  v56 = MEMORY[0x277D84F98];
  v23 = v21;
  v63 = v16 + 64;
  v64 = v16;
  v61 = v9;
  v62 = v21;
  v60 = v10;
  if (v20)
  {
    goto LABEL_16;
  }

LABEL_17:
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      v48 = v74;
      v15 = v55;
      result = v56;
LABEL_41:
      v49 = v84;
      *a3 = v8;
      *(a3 + 2) = v49;
      *(a3 + 8) = v10;
      *(a3 + 16) = v9;
      *(a3 + 24) = v76;
      *(a3 + 32) = v77;
      *(a3 + 40) = v75;
      *(a3 + 48) = v48;
      *(a3 + 56) = v72;
      *(a3 + 64) = v73;
      *(a3 + 72) = v15;
      *(a3 + 80) = result;
      return result;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = v25 | (v24 << 6);
        v27 = (*(v16 + 48) + 16 * v26);
        v28 = *(*(v16 + 56) + 8 * v26);
        v68 = *v27;
        v71 = v27[1];
        v29 = sub_2239B0860(*v27, v71);
        if ((v29 & 0x10000) != 0)
        {
          if ((a2 & 1) == 0)
          {
            v78 = 8315;
            v79 = 0xE200000000000000;

            MEMORY[0x223DEE030](v68, v71);
            MEMORY[0x223DEE030](32032, 0xE200000000000000);
            v50 = v78;
            v51 = v79;
            v78 = 0xD00000000000002BLL;
            v79 = 0x80000002239BAD20;
            MEMORY[0x223DEE030](v50, v51);

            v52 = v78;
            v53 = v79;
            sub_223973AD8();
            swift_allocError();
            *v54 = v52;
            *(v54 + 8) = v53;
            *(v54 + 16) = 1;
            swift_willThrow();
          }

          v30 = qword_2813366C0;

          if (v30 != -1)
          {
            swift_once();
          }

          v31 = sub_2239B3048();
          __swift_project_value_buffer(v31, qword_2813366C8);

          v32 = sub_2239B3028();
          v33 = sub_2239B34E8();

          v65 = v33;
          if (os_log_type_enabled(v32, v33))
          {
            log = v32;
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v78 = v35;
            *v34 = 136446467;
            *(v34 + 4) = sub_223973B2C(0xD00000000000002BLL, 0x80000002239BAD20, &v78);
            *(v34 + 12) = 2081;

            v69 = sub_223973B2C(v68, v71, &v78);

            *(v34 + 14) = v69;
            _os_log_impl(&dword_22395C000, log, v65, "%{public}s %{private}s", v34, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DEF1D0](v35, -1, -1);
            MEMORY[0x223DEF1D0](v34, -1, -1);
          }

          else
          {
          }

          v22 = v24;
          v17 = v63;
          v16 = v64;
          v9 = v61;
          v23 = v62;
          v10 = v60;
          if (!v20)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v70 = v29;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v56;
          v37 = sub_2239815D0(v70);
          v38 = v56[2];
          v39 = (v36 & 1) == 0;
          v40 = v38 + v39;
          if (__OFADD__(v38, v39))
          {
            goto LABEL_44;
          }

          if (v56[3] >= v40)
          {
            v16 = v64;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              logb = v36;
              v67 = v37;
              sub_22397F048();
              v16 = v64;
              v37 = v67;
              v36 = logb;
            }

            v44 = v70;
          }

          else
          {
            loga = v36;
            sub_22397EC48(v40, isUniquelyReferenced_nonNull_native);
            v41 = sub_2239815D0(v70);
            v43 = v42 & 1;
            v36 = loga;
            if ((loga & 1) != v43)
            {
              goto LABEL_46;
            }

            v37 = v41;
            v44 = v70;
            v16 = v64;
          }

          v56 = v78;
          if (v36)
          {
            *(*(v78 + 56) + 8 * v37) = v28;
          }

          else
          {
            *(v78 + 8 * (v37 >> 6) + 64) |= 1 << v37;
            *(v56[6] + 2 * v37) = v44;
            *(v56[7] + 8 * v37) = v28;

            v45 = v56[2];
            v46 = __OFADD__(v45, 1);
            v47 = v45 + 1;
            if (v46)
            {
              goto LABEL_45;
            }

            v56[2] = v47;
          }

          v23 = v62;
          v17 = v63;
          v22 = v24;
          if (!v20)
          {
            goto LABEL_17;
          }
        }

LABEL_16:
        v24 = v22;
      }
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  type metadata accessor for AudioServiceType(0);
  result = sub_2239B39A8();
  __break(1u);
  return result;
}

double RTCConfig.commonFields.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

uint64_t sub_22399B5DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22399B624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22399B688(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 > 3u)
  {
    v4 = 0xD000000000000010;
    v5 = 0x80000002239B9180;
    v6 = 0x80000002239B91A0;
    v7 = 0x6465726975716572;
    if (a1 == 7)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xEF746C7561666544;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x80000002239B9140;
    v9 = 0xD000000000000013;
    if (a1 == 4)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x80000002239B9160;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    if (*(a2 + 16))
    {
      goto LABEL_17;
    }

LABEL_30:

    goto LABEL_31;
  }

  v15 = 0xE700000000000000;
  v16 = 0x64656C62616E65;
  v17 = 0x80000002239B9100;
  v18 = 0xD000000000000014;
  if (a1 != 2)
  {
    v18 = 0xD000000000000012;
    v17 = 0x80000002239B9120;
  }

  if (a1)
  {
    v16 = 0xD000000000000016;
    v15 = 0x80000002239B90E0;
  }

  if (a1 <= 1u)
  {
    v10 = v16;
  }

  else
  {
    v10 = v18;
  }

  if (v3 <= 1)
  {
    v11 = v15;
  }

  else
  {
    v11 = v17;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v12 = sub_22396236C(v10, v11);
  v14 = v13;

  if (v14)
  {
    sub_22395E644(*(a2 + 56) + 32 * v12, v20);
    goto LABEL_32;
  }

LABEL_31:
  memset(v20, 0, sizeof(v20));
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399B88C(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 > 3u)
  {
    v4 = 0xD000000000000010;
    v5 = 0x80000002239B9180;
    v6 = 0x80000002239B91A0;
    v7 = 0x6465726975716572;
    if (a1 == 7)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xEF746C7561666544;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x80000002239B9140;
    v9 = 0xD000000000000013;
    if (a1 == 4)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x80000002239B9160;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    if (*(a2 + 16))
    {
      goto LABEL_17;
    }

LABEL_30:

    goto LABEL_31;
  }

  v15 = 0xE700000000000000;
  v16 = 0x64656C62616E65;
  v17 = 0x80000002239B9100;
  v18 = 0xD000000000000014;
  if (a1 != 2)
  {
    v18 = 0xD000000000000012;
    v17 = 0x80000002239B9120;
  }

  if (a1)
  {
    v16 = 0xD000000000000016;
    v15 = 0x80000002239B90E0;
  }

  if (a1 <= 1u)
  {
    v10 = v16;
  }

  else
  {
    v10 = v18;
  }

  if (v3 <= 1)
  {
    v11 = v15;
  }

  else
  {
    v11 = v17;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v12 = sub_22396236C(v10, v11);
  v14 = v13;

  if (v14)
  {
    sub_22395E644(*(a2 + 56) + 32 * v12, v20);
    goto LABEL_32;
  }

LABEL_31:
  memset(v20, 0, sizeof(v20));
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_22399BA80(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 > 3u)
  {
    v4 = 0xD000000000000010;
    v5 = 0x80000002239B9180;
    v6 = 0x80000002239B91A0;
    v7 = 0x6465726975716572;
    if (a1 == 7)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xEF746C7561666544;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x80000002239B9140;
    v9 = 0xD000000000000013;
    if (a1 == 4)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x80000002239B9160;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    if (*(a2 + 16))
    {
      goto LABEL_17;
    }

LABEL_30:

    goto LABEL_31;
  }

  v15 = 0xE700000000000000;
  v16 = 0x64656C62616E65;
  v17 = 0x80000002239B9100;
  v18 = 0xD000000000000014;
  if (a1 != 2)
  {
    v18 = 0xD000000000000012;
    v17 = 0x80000002239B9120;
  }

  if (a1)
  {
    v16 = 0xD000000000000016;
    v15 = 0x80000002239B90E0;
  }

  if (a1 <= 1u)
  {
    v10 = v16;
  }

  else
  {
    v10 = v18;
  }

  if (v3 <= 1)
  {
    v11 = v15;
  }

  else
  {
    v11 = v17;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v12 = sub_22396236C(v10, v11);
  v14 = v13;

  if (v14)
  {
    sub_22395E644(*(a2 + 56) + 32 * v12, v22);
    goto LABEL_32;
  }

LABEL_31:
  memset(v22, 0, sizeof(v22));
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  v19 = swift_dynamicCast();
  v20 = v23;
  if (!v19)
  {
    v20 = 0;
  }

  return v20 | ((v19 ^ 1u) << 32);
}

uint64_t sub_22399BC80(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 > 3u)
  {
    v4 = 0xD000000000000010;
    v5 = 0x80000002239B9180;
    v6 = 0x80000002239B91A0;
    v7 = 0x6465726975716572;
    if (a1 == 7)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xEF746C7561666544;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x80000002239B9140;
    v9 = 0xD000000000000013;
    if (a1 == 4)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x80000002239B9160;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    if (*(a2 + 16))
    {
      goto LABEL_17;
    }

LABEL_30:

    goto LABEL_31;
  }

  v15 = 0xE700000000000000;
  v16 = 0x64656C62616E65;
  v17 = 0x80000002239B9100;
  v18 = 0xD000000000000014;
  if (a1 != 2)
  {
    v18 = 0xD000000000000012;
    v17 = 0x80000002239B9120;
  }

  if (a1)
  {
    v16 = 0xD000000000000016;
    v15 = 0x80000002239B90E0;
  }

  if (a1 <= 1u)
  {
    v10 = v16;
  }

  else
  {
    v10 = v18;
  }

  if (v3 <= 1)
  {
    v11 = v15;
  }

  else
  {
    v11 = v17;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v12 = sub_22396236C(v10, v11);
  v14 = v13;

  if (v14)
  {
    sub_22395E644(*(a2 + 56) + 32 * v12, v22);
    goto LABEL_32;
  }

LABEL_31:
  memset(v22, 0, sizeof(v22));
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  v19 = swift_dynamicCast();
  v20 = v23;
  if (!v19)
  {
    return 0;
  }

  return v20;
}

uint64_t sub_22399BE78(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1 > 3u)
  {
    v4 = 0xD000000000000010;
    v5 = 0x80000002239B9180;
    v6 = 0x80000002239B91A0;
    v7 = 0x6465726975716572;
    if (a1 == 7)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xEF746C7561666544;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x80000002239B9140;
    v9 = 0xD000000000000013;
    if (a1 == 4)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x80000002239B9160;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    if (*(a2 + 16))
    {
      goto LABEL_17;
    }

LABEL_30:

    goto LABEL_31;
  }

  v15 = 0xE700000000000000;
  v16 = 0x64656C62616E65;
  v17 = 0x80000002239B9100;
  v18 = 0xD000000000000014;
  if (a1 != 2)
  {
    v18 = 0xD000000000000012;
    v17 = 0x80000002239B9120;
  }

  if (a1)
  {
    v16 = 0xD000000000000016;
    v15 = 0x80000002239B90E0;
  }

  if (a1 <= 1u)
  {
    v10 = v16;
  }

  else
  {
    v10 = v18;
  }

  if (v3 <= 1)
  {
    v11 = v15;
  }

  else
  {
    v11 = v17;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v12 = sub_22396236C(v10, v11);
  v14 = v13;

  if (v14)
  {
    sub_22395E644(*(a2 + 56) + 32 * v12, v20);
    goto LABEL_32;
  }

LABEL_31:
  memset(v20, 0, sizeof(v20));
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399C06C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
  v5 = 0x80000002239B9010;
  v6 = 0xD000000000000012;
  if (a1 != 5)
  {
    v6 = 0x746F687370616E73;
    v5 = 0xED000079616C6544;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6570795465736163;
  if (a1 != 3)
  {
    v8 = 0x5462755365736163;
    v7 = 0xEB00000000657079;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65636E6174736E69;
  if (a1 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (*(a2 + 16))
  {
    v14 = sub_22396236C(v11, v12);
    v16 = v15;

    if (v16)
    {
      sub_22395E644(*(a2 + 56) + 32 * v14, v18);
      goto LABEL_22;
    }
  }

  else
  {
  }

  memset(v18, 0, sizeof(v18));
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22399C20C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
  v5 = 0x80000002239B9010;
  v6 = 0xD000000000000012;
  if (a1 != 5)
  {
    v6 = 0x746F687370616E73;
    v5 = 0xED000079616C6544;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6570795465736163;
  if (a1 != 3)
  {
    v8 = 0x5462755365736163;
    v7 = 0xEB00000000657079;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65636E6174736E69;
  if (a1 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (*(a2 + 16))
  {
    v14 = sub_22396236C(v11, v12);
    v16 = v15;

    if (v16)
    {
      sub_22395E644(*(a2 + 56) + 32 * v14, v18);
      goto LABEL_22;
    }
  }

  else
  {
  }

  memset(v18, 0, sizeof(v18));
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399C3AC(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
  v5 = 0x80000002239B9010;
  v6 = 0xD000000000000012;
  if (a1 != 5)
  {
    v6 = 0x746F687370616E73;
    v5 = 0xED000079616C6544;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6570795465736163;
  if (a1 != 3)
  {
    v8 = 0x5462755365736163;
    v7 = 0xEB00000000657079;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65636E6174736E69;
  if (a1 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (*(a2 + 16))
  {
    v14 = sub_22396236C(v11, v12);
    v16 = v15;

    if (v16)
    {
      sub_22395E644(*(a2 + 56) + 32 * v14, v20);
      goto LABEL_22;
    }
  }

  else
  {
  }

  memset(v20, 0, sizeof(v20));
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  v17 = swift_dynamicCast();
  v18 = v21;
  if (!v17)
  {
    return 0;
  }

  return v18;
}

uint64_t sub_22399C550(unsigned __int8 a1, uint64_t a2)
{
  v2 = "Bug";
  v3 = a1;
  v4 = "keepUniqueValueSummaryFields";
  v5 = "maxSummaryValues";
  v6 = 0xD000000000000015;
  if (a1 != 3)
  {
    v6 = 0xD000000000000013;
    v5 = "preserveSummaryFields";
  }

  if (a1 == 2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0xD00000000000001CLL;
  if (a1)
  {
    v2 = "ignoredSummaryFields";
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  if (*(a2 + 16))
  {
    v11 = sub_22396236C(v8, v9 | 0x8000000000000000);
    v13 = v12;

    if (v13)
    {
      sub_22395E644(*(a2 + 56) + 32 * v11, v15);
      goto LABEL_20;
    }
  }

  else
  {
  }

  memset(v15, 0, sizeof(v15));
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0388, &qword_2239B7410);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399C6A0(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    v4 = 0xD000000000000018;
    v5 = "siritts";
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v5 = "monitorClientConnections";
  }

  else
  {
    v5 = "osTransactionTimeout";
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = sub_22396236C(v4, v5 | 0x8000000000000000);
  v8 = v7;

  if (v8)
  {
    sub_22395E644(*(a2 + 56) + 32 * v6, v10);
    goto LABEL_14;
  }

LABEL_13:
  memset(v10, 0, sizeof(v10));
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399C7B8(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    v4 = 0xD000000000000018;
    v5 = "siritts";
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v5 = "monitorClientConnections";
  }

  else
  {
    v5 = "osTransactionTimeout";
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = sub_22396236C(v4, v5 | 0x8000000000000000);
  v8 = v7;

  if (v8)
  {
    sub_22395E644(*(a2 + 56) + 32 * v6, v12);
    goto LABEL_14;
  }

LABEL_13:
  memset(v12, 0, sizeof(v12));
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  v9 = swift_dynamicCast();
  v10 = v13;
  if (!v9)
  {
    return 0;
  }

  return v10;
}

uint64_t sub_22399C8C4(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v4 = 0x70756F7267627573;
    }

    else
    {
      v4 = 0x70756F7267;
    }

    v5 = sub_22396236C(v4, v2);
    v7 = v6;

    if (v7)
    {
      sub_22395E644(*(a2 + 56) + 32 * v5, v9);
      goto LABEL_12;
    }
  }

  else
  {
  }

  memset(v9, 0, sizeof(v9));
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399C9B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEE0065707954746ELL;
  v4 = 0x6576456F69647561;
  v5 = 0x7461636964657270;
  v6 = 0xE700000000000000;
  if (a1 == 5)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x7372656B726F77;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000002239B9060;
  if (a1 != 3)
  {
    v7 = 0x64726163736964;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  if (a1 != 1)
  {
    v4 = 0x73616364616F7262;
    v3 = 0xE900000000000074;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000002239B9290;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (*(a2 + 16))
  {
    v12 = sub_22396236C(v9, v10);
    v14 = v13;

    if (v14)
    {
      sub_22395E644(*(a2 + 56) + 32 * v12, v16);
      goto LABEL_23;
    }
  }

  else
  {
  }

  memset(v16, 0, sizeof(v16));
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399CB58(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEE0065707954746ELL;
  v4 = 0x6576456F69647561;
  v5 = 0x7461636964657270;
  v6 = 0xE700000000000000;
  if (a1 == 5)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x7372656B726F77;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000002239B9060;
  if (a1 != 3)
  {
    v7 = 0x64726163736964;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  if (a1 != 1)
  {
    v4 = 0x73616364616F7262;
    v3 = 0xE900000000000074;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000002239B9290;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (*(a2 + 16))
  {
    v12 = sub_22396236C(v9, v10);
    v14 = v13;

    if (v14)
    {
      sub_22395E644(*(a2 + 56) + 32 * v12, v16);
      goto LABEL_23;
    }
  }

  else
  {
  }

  memset(v16, 0, sizeof(v16));
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22399CD00(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEE0065707954746ELL;
  v4 = 0x6576456F69647561;
  v5 = 0x7461636964657270;
  v6 = 0xE700000000000000;
  if (a1 == 5)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x7372656B726F77;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000002239B9060;
  if (a1 != 3)
  {
    v7 = 0x64726163736964;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  if (a1 != 1)
  {
    v4 = 0x73616364616F7262;
    v3 = 0xE900000000000074;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000002239B9290;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (*(a2 + 16))
  {
    v12 = sub_22396236C(v9, v10);
    v14 = v13;

    if (v14)
    {
      sub_22395E644(*(a2 + 56) + 32 * v12, v16);
      goto LABEL_23;
    }
  }

  else
  {
  }

  memset(v16, 0, sizeof(v16));
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399CEB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2239A59E8(a1);
  if (*(a2 + 16))
  {
    v5 = sub_22396236C(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_22395E644(*(a2 + 56) + 32 * v5, v9);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v9, 0, sizeof(v9));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  if (*(a2 + 16))
  {
    v7 = sub_22396236C(v5, v6);
    v9 = v8;

    if (v9)
    {
      sub_22395E644(*(a2 + 56) + 32 * v7, v11);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v11, 0, sizeof(v11));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22399D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v9 = a4(a1, a2, a3);
  if (*(a2 + 16))
  {
    v11 = sub_22396236C(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_22395E644(*(a2 + 56) + 32 * v11, v15);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v15, 0, sizeof(v15));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void sub_22399D1DC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0108, &unk_2239B6320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B6310;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000002239B9DF0;
  v8 = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000002239B9E30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  *(inited + 96) = &unk_2836FCEB8;
  v9 = sub_223974468(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD78, &unk_2239B4D80);
  swift_arrayDestroy();
  v10 = *(v3 + 40);
  sub_22399F430(v9, *(v3 + 40), v70);
  if (v2)
  {
    return;
  }

  v11 = v5;
  v55 = a2;
  v56 = v6;
  v72 = 0;
  v12 = &v65;
  v67 = v70[2];
  v68 = v70[3];
  v69 = v70[4];
  v65 = v70[0];
  v66 = v70[1];
  v71[0] = *v3;
  v13 = v71[0];
  if (!*(v71[0] + 16) || (v14 = sub_223981500(1), (v15 & 1) == 0) || (sub_22395E644(*(v13 + 56) + 32 * v14, &v58), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_22:
    *(&v54 + 1) = v11;
    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v32 = sub_2239B3048();
    __swift_project_value_buffer(v32, qword_2813366C8);
    v33 = *(v3 + 8);
    v34 = *(v3 + 16);
    v35 = v56;

    sub_22399F690(v71, &v58);

    v36 = sub_2239B3028();
    v37 = sub_2239B34D8();
    sub_22399F700(v71);

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v58 = v39;
      *v38 = 136380931;
      *(v38 + 4) = sub_223973B2C(v33, v34, &v58);
      *(v38 + 12) = 2081;
      *(v38 + 14) = sub_223973B2C(*(&v54 + 1), v35, &v58);
      _os_log_impl(&dword_22395C000, v36, v37, "No server section found. Using default. { configPath=%{private}s, platform=%{private}s }", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DEF1D0](v39, -1, -1);
      MEMORY[0x223DEF1D0](v38, -1, -1);
    }

    v40 = v12[2];
    v41 = v12[3];
    v42 = v55;
    goto LABEL_27;
  }

  v16 = v57[0];
  v17 = *(v57[0] + 16);
  if (!v17)
  {

    v42 = v55;
    goto LABEL_31;
  }

  v18 = 0;
  if (v10)
  {
    v19 = 257;
  }

  else
  {
    v19 = 1;
  }

  v49 = v19;
  v48 = v17 - 1;
  v12 = v11;
  HIDWORD(v47) = v10;
  v50 = v57[0];
  while (1)
  {
    v20 = *(v16 + 8 * v18 + 32);
    swift_bridgeObjectRetain_n();
    if (v10)
    {
      v21 = v72;
    }

    else
    {
      v21 = v72;
      sub_22399DE9C(v20);
      if (v21)
      {

        sub_22397F68C(&v65);
        swift_bridgeObjectRelease_n();
        return;
      }
    }

    CommonConfigFields.init(dict:)(v20, &v58);
    if (v21)
    {

      sub_22397F68C(&v65);
      return;
    }

    v22 = v58;
    v23 = *(&v58 + 1);
    v3 = *(&v59 + 1);
    v24 = v59;
    v54 = v60;
    v64 = BYTE2(v58);
    v25 = sub_22397B840(0, v20, v49);
    v72 = 0;
    v51 = v18;
    v53 = v25 & 1;
    v52 = sub_22399C7B8(1u, v20);
    v63 = v26 & 1;
    v27 = sub_22399C6A0(2u, v20);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v28 = v27;
    }

    v57[0] = v28;
    sub_223983BB4(byte_2836FCE88);

    LOWORD(v58) = v22;
    BYTE2(v58) = v64;
    *(&v58 + 1) = v23;
    *&v59 = v24;
    *(&v59 + 1) = v3;
    v60 = v54;
    LOBYTE(v61) = v53;
    *(&v61 + 1) = v52;
    LOBYTE(v62) = v63;
    *(&v62 + 1) = v57[0];
    if (!v3)
    {
LABEL_32:

      sub_22397F68C(&v65);
LABEL_35:
      v45 = v61;
      v42 = v55;
      v55[2] = v60;
      v42[3] = v45;
      v42[4] = v62;
      v43 = v59;
      v44 = v58;
      goto LABEL_28;
    }

    if (!*(v3 + 16))
    {

      sub_22397F68C(&v65);

      goto LABEL_35;
    }

    v11 = &v47;
    v57[0] = v12;
    v57[1] = v56;
    MEMORY[0x28223BE20](v29);
    v46[2] = v57;

    v30 = v72;
    v31 = sub_223968CB8(sub_223968D9C, v46, v3);
    v72 = v30;

    if (v31)
    {
      goto LABEL_32;
    }

    sub_22397F68C(&v58);
    v16 = v50;
    if (v48 == v51)
    {
      break;
    }

    v18 = v51 + 1;
    LOBYTE(v10) = BYTE4(v47);
    if ((v51 + 1) >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v42 = v55;
  v12 = &v65;
LABEL_31:
  v40 = v67;
  v41 = v68;
LABEL_27:
  v42[2] = v40;
  v42[3] = v41;
  v42[4] = v12[4];
  v44 = v65;
  v43 = v66;
LABEL_28:
  *v42 = v44;
  v42[1] = v43;
}

void sub_22399D854(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v19 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      swift_bridgeObjectRetain_n();
      v14 = sub_2239B37B8();

      if (v14 >= 9)
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v27 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = v17 + 1;
      v26 = v17;
      sub_22396C7F0((v16 > 1), v17 + 1, 1);
      v18 = v20;
      v17 = v26;
      i = v27;
    }

    *(i + 16) = v18;
    v19 = i + 16 * v17;
    *(v19 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v21 = sub_2239B3128();
    v23 = v22;

    sub_2239B3678();

    v24 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v24);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v21, v23);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    *(v25 + 8) = 0x80000002239BA2E0;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_22399DB88(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v19 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      swift_bridgeObjectRetain_n();
      v14 = sub_2239B37B8();

      if (v14 >= 5)
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v27 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = v17 + 1;
      v26 = v17;
      sub_22396C7F0((v16 > 1), v17 + 1, 1);
      v18 = v20;
      v17 = v26;
      i = v27;
    }

    *(i + 16) = v18;
    v19 = i + 16 * v17;
    *(v19 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v21 = sub_2239B3128();
    v23 = v22;

    sub_2239B3678();

    v24 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v24);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v21, v23);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    *(v25 + 8) = 0x80000002239BA2E0;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}