id VASMerchantInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VASMerchantInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611EF8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2611F01C0();

  return MEMORY[0x28211C010](a1, a2, v4);
}

unint64_t sub_2611EF908@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611EFFE8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2611EF93C(uint64_t a1)
{
  v2 = sub_2611F01C0();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_2611EF978(uint64_t a1)
{
  v2 = sub_2611F01C0();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2611EF9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2611F01C0();

  return MEMORY[0x28211C008](a1, a2, v4);
}

unint64_t ReadErrorInternal.description.getter(uint64_t a1)
{
  result = 0x41746F4E64616572;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 33:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 6:
    case 42:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7265646165526F6ELL;
      break;
    case 5:
    case 11:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
    case 25:
    case 35:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x636E614364616572;
      break;
    case 12:
      result = 0x4164696C61766E69;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
    case 19:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x656D695464616572;
      break;
    case 16:
      result = 0x626173694463666ELL;
      break;
    case 17:
      result = 0x6461655264726163;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x4664616552736176;
      break;
    case 21:
      result = 0x4E61746144736176;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 0x6E6F436F4E6E6970;
      break;
    case 27:
      result = 0x7972746E456E6970;
      break;
    case 28:
      result = 0x6E656B6F546E6970;
      break;
    case 29:
      result = 0x7972746E456E6970;
      break;
    case 30:
      result = 0x65636E61436E6970;
      break;
    case 31:
      result = 0x6C41746F4E6E6970;
      break;
    case 32:
      result = 0xD000000000000013;
      break;
    case 34:
      result = 0xD00000000000001ELL;
      break;
    case 36:
      result = 0x696E676953666173;
      break;
    case 37:
      result = 0x7272454244666173;
      break;
    case 38:
      result = 0xD000000000000013;
      break;
    case 39:
      result = 0x7261655464726163;
      break;
    case 40:
      result = 0x4164616552797274;
      break;
    case 41:
      result = 0x5464726143736176;
      break;
    default:
      sub_26121D510();
      __break(1u);
      JUMPOUT(0x2611EFF34);
  }

  return result;
}

unint64_t sub_2611EFFE8(unint64_t result)
{
  if (result > 0x2A)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611EFFFC()
{
  result = qword_27FE87CA0;
  if (!qword_27FE87CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87CA0);
  }

  return result;
}

unint64_t sub_2611F0054()
{
  result = qword_27FE87CA8;
  if (!qword_27FE87CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87CA8);
  }

  return result;
}

unint64_t sub_2611F00AC()
{
  result = qword_27FE87CB0;
  if (!qword_27FE87CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87CB0);
  }

  return result;
}

unint64_t sub_2611F0104()
{
  result = qword_27FE87CB8;
  if (!qword_27FE87CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87CB8);
  }

  return result;
}

unint64_t sub_2611F015C()
{
  result = qword_27FE87CC0;
  if (!qword_27FE87CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87CC0);
  }

  return result;
}

unint64_t sub_2611F01C0()
{
  result = qword_27FE87CC8;
  if (!qword_27FE87CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87CC8);
  }

  return result;
}

unint64_t sub_2611F0238()
{
  result = qword_27FE87CD0;
  if (!qword_27FE87CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87CD0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2611F0360()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  __swift_allocate_value_buffer(v0, qword_27FE9F0B8);
  v1 = __swift_project_value_buffer(v0, qword_27FE9F0B8);
  sub_26121CA50();
  v2 = sub_26121CA60();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_2611F0614(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  sub_26121CA50();
  v7 = sub_26121CA60();
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, 0, 1, v7);
}

uint64_t sub_2611F06E8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_2611F0748()
{
  result = MCGestaltIsInternalBuild();
  byte_27FE9F160 = result;
  return result;
}

void sub_2611F0778(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27FE945C8 != -1)
  {
    v36 = a1;
    v37 = a6;
    v38 = a5;
    swift_once();
    a1 = v36;
    a5 = v38;
    a6 = v37;
  }

  v8 = byte_27FE9F160;
  if (byte_27FE9F160 & 1) != 0 || (a1)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      ObjectType = a3;
      v47 = a4;
      v10 = a6;
      v11 = a5;

      MEMORY[0x2666FBF20](8250, 0xE200000000000000);
      MEMORY[0x2666FBF20](v11, v10);
      a4 = v47;
    }

    else
    {
    }

    swift_unknownObjectRetain();

    oslog = sub_26121CA40();
    v12 = sub_26121CFD0();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v12))
    {
      v40 = v12;
      v41 = a3;
      v13 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v13 = 136446466;
      ObjectType = sub_26121CC10();
      v47 = v14;
      v44[0] = 41;
      v44[1] = 0xE100000000000000;
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      v15 = sub_2611B6988();
      v16 = sub_26121D130(v44, v43, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837D0], v15, v15, v15);
      v18 = v17;

      v19 = sub_2611F0B68(8uLL, v16, v18);
      v21 = v20;
      v23 = v22;
      v25 = v24;

      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87CD8, &qword_261225898);
      ObjectType = sub_26121CCF0();
      v47 = v26;
      MEMORY[0x2666FBF20](45, 0xE100000000000000);
      v27 = MEMORY[0x2666FBEB0](v19, v21, v23, v25);
      v29 = v28;

      MEMORY[0x2666FBF20](v27, v29);

      v30 = ObjectType;
      v31 = v47;
      ObjectType = 2715432;
      v47 = 0xE300000000000000;
      if (v8)
      {
        MEMORY[0x2666FBF20](v30, v31);
      }

      else
      {
        v32 = MEMORY[0x2666FBFB0](v30, v31);

        v44[0] = v32;
        v33 = sub_26121D4C0();
        MEMORY[0x2666FBF20](v33);
      }

      v34 = sub_2611AA228(ObjectType, v47, &v45);

      *(v13 + 4) = v34;
      *(v13 + 12) = 2082;
      v35 = sub_2611AA228(v41, a4, &v45);

      *(v13 + 14) = v35;
      _os_log_impl(&dword_261197000, oslog, v40, "%{public}s.%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666FCF20](v39, -1, -1);
      MEMORY[0x2666FCF20](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_2611F0B68(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_26121CD80();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_26121CE60();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t TransactionInternal.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_id;
  v4 = sub_26121C7B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TransactionInternal.currencyCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_currencyCode);

  return v1;
}

uint64_t TransactionInternal.countryCode.getter()
{
  v1 = OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_countryCode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TransactionInternal.countryCode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_countryCode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TransactionInternal.vasRequestName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasRequestName);

  return v1;
}

uint64_t TransactionInternal.customerPreferredLocaleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_customerPreferredLocaleIdentifier);

  return v1;
}

uint64_t TransactionInternal.transactionDescriptionEncoded.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionDescriptionEncoded);
  sub_26119EA60(v1, *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionDescriptionEncoded + 8));
  return v1;
}

uint64_t TransactionInternal.isStoreAndForward.getter()
{
  v1 = OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_isStoreAndForward;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TransactionInternal.isStoreAndForward.setter(char a1)
{
  v3 = OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_isStoreAndForward;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TransactionInternal.__allocating_init(responseType:transactionType:amount:currencyCode:useISOCurrencySymbol:countryCode:preferredAIDList:vasMode:vasRequestName:vasMerchants:verificationReason:isStoreAndForward:customerPreferredLocaleIdentifier:transactionDescriptionEncoded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v40 = a6;
  v38 = a5;
  v50 = a14;
  v48 = a17;
  v49 = a18;
  v46 = a15;
  v47 = a16;
  v44 = a8;
  v45 = a13;
  v42 = a7;
  v43 = a12;
  v41 = a11;
  v39 = a10;
  v23 = sub_26121C7B0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_allocWithZone(v18);
  sub_26121C7A0();
  (*(v24 + 32))(&v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_id], v26, v23);
  *&v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_dataType] = a1;
  *&v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionType] = a2;
  *&v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_amount] = a3;
  v28 = &v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_currencyCode];
  v29 = v38;
  *v28 = a4;
  v28[1] = v29;
  v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_useISOCurrencySymbol] = v40;
  *&v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_countryCode] = v42;
  *&v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_preferredAIDList] = v44;
  v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMode] = a9;
  v30 = &v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasRequestName];
  v31 = v41;
  *v30 = v39;
  v30[1] = v31;
  *&v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMerchants] = v43;
  v32 = v46;
  *&v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_verificationReason] = v45;
  v33 = &v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_customerPreferredLocaleIdentifier];
  v35 = v47;
  v34 = v48;
  *v33 = v32;
  v33[1] = v35;
  v36 = &v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionDescriptionEncoded];
  *v36 = v34;
  v36[1] = v49;
  v27[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_isStoreAndForward] = v50;
  v51.receiver = v27;
  v51.super_class = v18;
  return objc_msgSendSuper2(&v51, sel_init);
}

id TransactionInternal.init(responseType:transactionType:amount:currencyCode:useISOCurrencySymbol:countryCode:preferredAIDList:vasMode:vasRequestName:vasMerchants:verificationReason:isStoreAndForward:customerPreferredLocaleIdentifier:transactionDescriptionEncoded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v38 = a6;
  v49 = a14;
  v47 = a17;
  v48 = a18;
  v46 = a16;
  v44 = a15;
  v42 = a8;
  v43 = a13;
  v40 = a7;
  v41 = a12;
  v39 = a11;
  v37 = a10;
  ObjectType = swift_getObjectType();
  v24 = sub_26121C7B0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C7A0();
  (*(v25 + 32))(&v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_id], v27, v24);
  *&v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_dataType] = a1;
  *&v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionType] = a2;
  *&v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_amount] = a3;
  v28 = &v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_currencyCode];
  *v28 = a4;
  v28[1] = a5;
  v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_useISOCurrencySymbol] = v38;
  *&v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_countryCode] = v40;
  *&v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_preferredAIDList] = v42;
  v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMode] = a9;
  v29 = &v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasRequestName];
  v30 = v39;
  *v29 = v37;
  v29[1] = v30;
  *&v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMerchants] = v41;
  v31 = v44;
  *&v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_verificationReason] = v43;
  v32 = &v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_customerPreferredLocaleIdentifier];
  v34 = v46;
  v33 = v47;
  *v32 = v31;
  v32[1] = v34;
  v35 = &v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionDescriptionEncoded];
  *v35 = v33;
  v35[1] = v48;
  v18[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_isStoreAndForward] = v49;
  v50.receiver = v18;
  v50.super_class = ObjectType;
  return objc_msgSendSuper2(&v50, sel_init);
}

Swift::Void __swiftcall TransactionInternal.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_26121C780();
  v5 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  ResponseDataType.rawValue.getter();
  v7 = v6;
  v8 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_amount);
  v10 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = sub_26121CC50();
  v12 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_useISOCurrencySymbol);
  v14 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];

  v15 = OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_countryCode;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v17 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v16 forKey:v17];

  v18 = sub_26121CEB0();
  v19 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  TransactionTypeInternal.rawValue.getter();
  v21 = v20;
  v22 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v21 forKey:v22];

  VerificationReason.rawValue.getter();
  v24 = v23;
  v25 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v24 forKey:v25];

  VASMode.rawValue.getter(*(v2 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMode));
  v26 = sub_26121CC50();

  v27 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];

  v28 = sub_26121CC50();
  v29 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

  sub_2611F1A90(*(v2 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMerchants));
  v30 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v31 = sub_26121CEB0();

  v32 = [v30 initWithArray_];

  v33 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v32 forKey:v33];

  if (*(v2 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_customerPreferredLocaleIdentifier + 8))
  {
    v34 = sub_26121CC50();
  }

  else
  {
    v34 = 0;
  }

  v35 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionDescriptionEncoded + 8) >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_26121C660();
  }

  v37 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v36 forKey:v37];
  swift_unknownObjectRelease();

  v38 = OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_isStoreAndForward;
  swift_beginAccess();
  v39 = *(v2 + v38);
  v40 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeBool:v39 forKey:v40];
}

char *sub_2611F1A90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26121D2E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2611E3644(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2666FC380](i, a1);
        type metadata accessor for VASMerchantInternal();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2611E3644((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2611B69DC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for VASMerchantInternal();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2611E3644((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2611B69DC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id TransactionInternal.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v81 - v6;
  v8 = sub_26121C7B0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2611AC98C(0, &qword_27FE87A10, 0x277CCAD78);
  v12 = sub_26121D060();
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  sub_26121C790();

  v14 = sub_26121CC50();
  v15 = [a1 decodeIntegerForKey_];

  v16 = ResponseDataType.init(rawValue:)(v15);
  if ((v17 & 1) != 0 || (v98 = v16, sub_2611AC98C(0, &qword_27FE87CE0, 0x277CCA980), (v18 = sub_26121D060()) == 0))
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v19 = v18;
    v94 = sub_2611AC98C(0, &qword_27FE870A0, 0x277CCACA8);
    v20 = sub_26121D060();
    if (v20)
    {
      v96 = ObjectType;
      v97 = v19;
      v21 = v20;
      v91 = sub_26121CC80();
      v95 = v22;

      v23 = sub_26121CC50();
      v89 = [a1 decodeBoolForKey_];

      v24 = sub_26121CC50();
      v88 = [a1 decodeIntegerForKey_];

      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B00, &qword_2612221F8);
      v25 = swift_allocObject();
      v92 = xmmword_2612221E0;
      *(v25 + 16) = xmmword_2612221E0;
      *(v25 + 32) = sub_2611AC98C(0, &qword_27FE87CE8, 0x277CBEA60);
      v90 = sub_2611AC98C(0, &qword_27FE87280, 0x277CBEA90);
      *(v25 + 40) = v90;
      sub_26121D070();

      if (v102)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87CF0, &qword_2612258C8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          (*(v9 + 8))(v11, v8);

          goto LABEL_32;
        }

        v26 = v100;
        v27 = sub_26121CC50();
        v28 = [a1 decodeIntegerForKey_];

        v29 = TransactionTypeInternal.init(rawValue:)(v28);
        v30 = v97;
        if (v31)
        {
          (*(v9 + 8))(v11, v8);

LABEL_32:

          goto LABEL_10;
        }

        v86 = v29;
        v87 = v26;
        v39 = sub_26121CC50();
        v40 = [a1 decodeIntegerForKey_];

        v41 = VerificationReason.init(rawValue:)(v40);
        if ((v42 & 1) != 0 || ((v43 = v41, (v44 = sub_26121D060()) == 0) ? (v49 = VASMode.rawValue.getter(3u)) : (v45 = v44, v85 = sub_26121CC80(), v47 = v46, v45, v48 = v47, v49 = v85), (LOBYTE(v50) = VASMode.init(rawValue:)(*&v49), v50 == 4) || (v84 = v50, v85 = v43, v51 = sub_26121CC50(), v52 = [a1 decodeBoolForKey_], v51, (v53 = sub_26121D060()) == 0)))
        {
          (*(v9 + 8))(v11, v8);

          goto LABEL_32;
        }

        v83 = v52;
        v54 = v53;
        v82 = sub_26121CC80();
        v56 = v55;

        v57 = swift_allocObject();
        *(v57 + 16) = v92;
        *(v57 + 32) = sub_2611AC98C(0, &qword_27FE87B08, 0x277CBEB70);
        *(v57 + 40) = type metadata accessor for VASMerchantInternal();
        sub_26121D070();

        if (v102)
        {
          v93 = v56;
          if (swift_dynamicCast())
          {
            v58 = v100;
            v59 = [v100 array];

            v60 = sub_26121CEC0();
            v61 = sub_2611F2938(v60);

            v62 = v95;
            if (v61)
            {
              (*(v9 + 16))(&v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_id], v11, v8);
              v63 = v97;
              *&v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_dataType] = v98;
              *&v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_amount] = v63;
              v64 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_currencyCode];
              *v64 = v91;
              v64[1] = v62;
              v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_useISOCurrencySymbol] = v89;
              *&v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_countryCode] = v88;
              *&v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_preferredAIDList] = v87;
              *&v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionType] = v86;
              *&v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_verificationReason] = v85;
              v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMode] = v84;
              v65 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasRequestName];
              v66 = v93;
              *v65 = v82;
              v65[1] = v66;
              *&v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMerchants] = v61;
              v67 = v63;
              v68 = sub_26121D060();
              if (v68)
              {
                v69 = v68;
                v70 = sub_26121CC80();
                v72 = v71;
              }

              else
              {
                v70 = 0;
                v72 = 0;
              }

              v73 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_customerPreferredLocaleIdentifier];
              *v73 = v70;
              v73[1] = v72;
              v74 = sub_26121D060();
              (*(v9 + 8))(v11, v8);
              v75 = v96;
              if (v74)
              {
                v101 = xmmword_2612258B0;
                sub_26121C680();

                v76 = *(&v101 + 1);
                v77 = v83;
                if (*(&v101 + 1) >> 60 == 15)
                {
                  v78 = 0;
                  v76 = 0xF000000000000000;
                }

                else
                {
                  v78 = v101;
                }
              }

              else
              {

                v78 = 0;
                v76 = 0xF000000000000000;
                v77 = v83;
              }

              v79 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_transactionDescriptionEncoded];
              *v79 = v78;
              v79[1] = v76;
              v2[OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_isStoreAndForward] = v77;
              v99.receiver = v2;
              v99.super_class = v75;
              v80 = objc_msgSendSuper2(&v99, sel_init);

              return v80;
            }
          }

          (*(v9 + 8))(v11, v8);

          goto LABEL_32;
        }

        (*(v9 + 8))(v11, v8);
      }

      else
      {
        (*(v9 + 8))(v11, v8);
      }

      sub_2611AC114(&v101, &qword_27FE87B10, &qword_26121F890);
    }

    else
    {
      (*(v9 + 8))(v11, v8);
    }
  }

LABEL_10:
  v32 = sub_2611F02B4();
  sub_2611B8B74(v32, v7);
  v33 = sub_26121CA60();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v7, 1, v33) == 1)
  {

    sub_2611AC114(v7, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v35 = sub_26121CA40();
    v36 = sub_26121CFC0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261197000, v35, v36, "TransactionInternal | Failed to decode object", v37, 2u);
      MEMORY[0x2666FCF20](v37, -1, -1);
    }

    (*(v34 + 8))(v7, v33);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2611F2938(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_26121D270();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2611AC930(i, v5);
    type metadata accessor for VASMerchantInternal();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_26121D240();
    sub_26121D280();
    sub_26121D290();
    sub_26121D250();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

char *sub_2611F2A64(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_vasMerchants);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  v3 = sub_2611F3018(0, 0xE000000000000000, *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26121D2E0())
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2666FC380](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = &v7[*a1];
      v10 = *v9;
      v11 = *(v9 + 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2611B6700(v3);
      }

      if (v6 >= v3[2])
      {
        break;
      }

      v12 = &v3[v5];
      ++v6;
      *(v12 + 4) = v10;
      *(v12 + 5) = v11;

      v5 += 2;
      if (i == v6)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v13 = sub_26121D2E0();
    v3 = sub_2611F3018(0, 0xE000000000000000, v13);
  }

  return v3;
}

uint64_t TransactionInternal.description.getter()
{
  v1 = v0;
  sub_26121D1E0();
  MEMORY[0x2666FBF20](0xD000000000000011, 0x800000026122EA10);
  sub_2611F30B4();
  v2 = sub_26121D4C0();
  MEMORY[0x2666FBF20](v2);

  MEMORY[0x2666FBF20](0x746E756F6D41202CLL, 0xEA0000000000203ALL);
  v3 = [*(v0 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_amount) description];
  v4 = sub_26121CC80();
  v6 = v5;

  MEMORY[0x2666FBF20](v4, v6);

  MEMORY[0x2666FBF20](0xD000000000000010, 0x800000026122EA30);
  MEMORY[0x2666FBF20](*(v1 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_currencyCode), *(v1 + OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_currencyCode + 8));
  MEMORY[0x2666FBF20](0x6F6D20534156202CLL, 0xEC000000203A6564);
  sub_26121D2D0();
  MEMORY[0x2666FBF20](0x646F6D2046415320, 0xEB00000000203A65);
  v7 = OBJC_IVAR____TtC19ProximityReaderCore19TransactionInternal_isStoreAndForward;
  swift_beginAccess();
  if (*(v1 + v7))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + v7))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2666FBF20](v8, v9);

  return 0;
}

id TransactionInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransactionInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2611F3018(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_26121CEE0();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_2611F30B4()
{
  result = qword_27FE87D00;
  if (!qword_27FE87D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87D00);
  }

  return result;
}

uint64_t type metadata accessor for TransactionInternal(uint64_t a1)
{
  result = qword_27FE945D0;
  if (!qword_27FE945D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2611F315C(uint64_t a1)
{
  result = sub_26121C7B0();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t MerchantDetails.hostBundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MerchantDetails.mbn.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MerchantDetails.mbnSubtext.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MerchantDetails.customerLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MerchantDetails(0) + 32);

  return sub_2611F33FC(v3, a1);
}

uint64_t type metadata accessor for MerchantDetails(uint64_t a1)
{
  result = qword_27FE946F0;
  if (!qword_27FE946F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2611F33FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MerchantDetails.init(bundleId:mcc:mbn:mbnSubtext:customerLocale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v10 = a9 + *(type metadata accessor for MerchantDetails(0) + 32);

  return sub_2611F34C4(a8, v10);
}

uint64_t sub_2611F34C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611F3534()
{
  v1 = *v0;
  v2 = 0x646E754274736F68;
  v3 = 7234157;
  v4 = 0x65746275536E626DLL;
  if (v1 != 3)
  {
    v4 = 0x72656D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6513517;
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

uint64_t sub_2611F35D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2611F4228(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2611F3600(uint64_t a1)
{
  v2 = sub_2611F38C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611F363C(uint64_t a1)
{
  v2 = sub_2611F38C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MerchantDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87D18, &qword_261225988);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611F38C0();
  sub_26121D600();
  v8[15] = 0;
  sub_26121D460();
  if (!v1)
  {
    v8[14] = 1;
    sub_26121D490();
    v8[13] = 2;
    sub_26121D460();
    v8[12] = 3;
    sub_26121D420();
    type metadata accessor for MerchantDetails(0);
    v8[11] = 4;
    sub_26121C930();
    sub_2611F3CFC(&qword_27FE87D20, MEMORY[0x277CC9790]);
    sub_26121D450();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2611F38C0()
{
  result = qword_27FE945E0[0];
  if (!qword_27FE945E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE945E0);
  }

  return result;
}

uint64_t MerchantDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87D28, &qword_261225990);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for MerchantDetails(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611F38C0();
  sub_26121D5F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = a1;
  v13 = v6;
  v15 = v23;
  v14 = v24;
  v29 = 0;
  *v12 = sub_26121D3B0();
  v12[1] = v16;
  v20[1] = v16;
  v28 = 1;
  v12[2] = sub_26121D3E0();
  v27 = 2;
  v12[3] = sub_26121D3B0();
  v12[4] = v17;
  v26 = 3;
  v12[5] = sub_26121D370();
  v12[6] = v18;
  sub_26121C930();
  v25 = 4;
  sub_2611F3CFC(&qword_27FE87D30, MEMORY[0x277CC97A8]);
  sub_26121D3A0();
  (*(v15 + 8))(v9, v14);
  sub_2611F34C4(v13, v12 + *(v10 + 32));
  sub_2611F3D40(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_2611F3DA4(v12);
}

uint64_t sub_2611F3CFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26121C930();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2611F3D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611F3DA4(uint64_t a1)
{
  v2 = type metadata accessor for MerchantDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2611F3E44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2611F3F14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2611F3FC4(uint64_t a1)
{
  sub_2611F4068();
  if (v1 <= 0x3F)
  {
    sub_2611F40B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2611F4068()
{
  if (!qword_27FE87D38)
  {
    v0 = sub_26121D0C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE87D38);
    }
  }
}

void sub_2611F40B8(uint64_t a1)
{
  if (!qword_27FE87D40)
  {
    sub_26121C930();
    v1 = sub_26121D0C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE87D40);
    }
  }
}

unint64_t sub_2611F4124()
{
  result = qword_27FE94800[0];
  if (!qword_27FE94800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE94800);
  }

  return result;
}

unint64_t sub_2611F417C()
{
  result = qword_27FE94910;
  if (!qword_27FE94910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE94910);
  }

  return result;
}

unint64_t sub_2611F41D4()
{
  result = qword_27FE94918[0];
  if (!qword_27FE94918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE94918);
  }

  return result;
}

uint64_t sub_2611F4228(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E754274736F68 && a2 == 0xEC0000006449656CLL;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6513517 && a2 == 0xE300000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7234157 && a2 == 0xE300000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746275536E626DLL && a2 == 0xEA00000000007478 || (sub_26121D4D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656D6F74737563 && a2 == 0xEE00656C61636F4CLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t PINConfiguration.digest.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_digest);

  return v1;
}

uint64_t PINConfiguration.merchantName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_merchantName);

  return v1;
}

uint64_t PINConfiguration.currencyCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_currencyCode);

  return v1;
}

uint64_t PINConfiguration.customerLocaleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_customerLocaleIdentifier);

  return v1;
}

uint64_t PINConfiguration.cardPreferredLocaleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_cardPreferredLocaleIdentifier);

  return v1;
}

id PINConfiguration.__allocating_init(digest:allowPINBypass:privacyLock:merchantName:amount:currencyCode:useISOCurrencySymbol:countryCode:customerLocaleIdentifier:cardPreferredLocaleIdentifier:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v23 = objc_allocWithZone(v15);
  v24 = &v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_digest];
  *v24 = a1;
  v24[1] = a2;
  v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_allowPINBypass] = a3;
  v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_privacyLock] = a4;
  v25 = &v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_merchantName];
  *v25 = a5;
  v25[1] = a6;
  *&v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_amount] = a7;
  v26 = &v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_currencyCode];
  *v26 = a8;
  v26[1] = a9;
  v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_useISOCurrencySymbol] = a10;
  *&v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_countryCode] = a11;
  v27 = &v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_customerLocaleIdentifier];
  *v27 = a12;
  v27[1] = a13;
  v28 = &v23[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_cardPreferredLocaleIdentifier];
  *v28 = a14;
  v28[1] = a15;
  v31.receiver = v23;
  v31.super_class = v15;
  return objc_msgSendSuper2(&v31, sel_init);
}

id PINConfiguration.init(digest:allowPINBypass:privacyLock:merchantName:amount:currencyCode:useISOCurrencySymbol:countryCode:customerLocaleIdentifier:cardPreferredLocaleIdentifier:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  ObjectType = swift_getObjectType();
  v24 = &v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_digest];
  *v24 = a1;
  v24[1] = a2;
  v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_allowPINBypass] = a3;
  v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_privacyLock] = a4;
  v25 = &v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_merchantName];
  *v25 = a5;
  v25[1] = a6;
  *&v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_amount] = a7;
  v26 = &v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_currencyCode];
  *v26 = a8;
  v26[1] = a9;
  v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_useISOCurrencySymbol] = a10;
  *&v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_countryCode] = a11;
  v27 = &v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_customerLocaleIdentifier];
  *v27 = a12;
  v27[1] = a13;
  v28 = &v15[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_cardPreferredLocaleIdentifier];
  *v28 = a14;
  v28[1] = a15;
  v31.receiver = v15;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

Swift::Void __swiftcall PINConfiguration.encode(with:)(NSCoder with)
{
  v3 = sub_26121CC50();
  v4 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_allowPINBypass);
  v6 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_privacyLock);
  v8 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = sub_26121CC50();
  v10 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_amount);
  v12 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = sub_26121CC50();
  v14 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_useISOCurrencySymbol);
  v16 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeBool:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_countryCode);
  v18 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeInteger:v17 forKey:v18];

  if (*(v1 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_customerLocaleIdentifier + 8))
  {
    v19 = sub_26121CC50();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_cardPreferredLocaleIdentifier + 8))
  {
    v21 = sub_26121CC50();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();
}

id PINConfiguration.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  sub_2611AC98C(0, &qword_27FE870A0, 0x277CCACA8);
  v8 = sub_26121D060();
  if (v8)
  {
    v63 = ObjectType;
    v9 = v8;
    v10 = sub_26121CC80();
    v12 = v11;

    v13 = sub_26121CC50();
    v14 = [a1 decodeBoolForKey_];

    v15 = sub_26121CC50();
    v16 = [a1 decodeBoolForKey_];

    v17 = sub_26121D060();
    if (v17)
    {
      v61 = v14;
      v62 = v10;
      v18 = v17;
      v60 = sub_26121CC80();
      v20 = v19;

      sub_2611AC98C(0, &qword_27FE87CE0, 0x277CCA980);
      v21 = sub_26121D060();
      if (v21)
      {
        v22 = v21;
        v23 = sub_26121D060();
        if (v23)
        {
          v24 = v23;
          v25 = sub_26121CC80();
          v58 = v26;
          v59 = v25;

          v27 = sub_26121CC50();
          v28 = [a1 decodeBoolForKey_];

          v29 = sub_26121CC50();
          v30 = [a1 decodeIntegerForKey_];

          v31 = &v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_digest];
          *v31 = v62;
          v31[1] = v12;
          v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_allowPINBypass] = v61;
          v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_privacyLock] = v16;
          v32 = &v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_merchantName];
          v33 = v59;
          *v32 = v60;
          v32[1] = v20;
          *&v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_amount] = v22;
          v34 = &v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_currencyCode];
          v35 = v58;
          *v34 = v33;
          v34[1] = v35;
          v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_useISOCurrencySymbol] = v28;
          *&v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_countryCode] = v30;
          v36 = v22;
          v37 = sub_26121D060();
          if (v37)
          {
            v38 = v37;
            v39 = sub_26121CC80();
            v41 = v40;
          }

          else
          {
            v39 = 0;
            v41 = 0;
          }

          v49 = &v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_customerLocaleIdentifier];
          *v49 = v39;
          v49[1] = v41;
          v50 = sub_26121D060();
          v51 = v63;
          if (v50)
          {
            v52 = v50;
            v53 = sub_26121CC80();
            v55 = v54;
          }

          else
          {

            v53 = 0;
            v55 = 0;
          }

          v56 = &v2[OBJC_IVAR____TtC19ProximityReaderCore16PINConfiguration_cardPreferredLocaleIdentifier];
          *v56 = v53;
          v56[1] = v55;
          v64.receiver = v2;
          v64.super_class = v51;
          v57 = objc_msgSendSuper2(&v64, sel_init);

          return v57;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v42 = sub_2611F047C();
  sub_2611B8B74(v42, v7);
  v43 = sub_26121CA60();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v7, 1, v43) == 1)
  {

    sub_2611D57E4(v7);
  }

  else
  {
    v45 = sub_26121CA40();
    v46 = sub_26121CFC0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_261197000, v45, v46, "PINConfiguration | Failed to decode object", v47, 2u);
      MEMORY[0x2666FCF20](v47, -1, -1);
    }

    (*(v44 + 8))(v7, v43);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id PINConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PINConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611F5540()
{
  v0 = sub_2611F5914(&unk_2873AA538);
  result = swift_arrayDestroy();
  qword_27FE949B8 = v0;
  return result;
}

uint64_t sub_2611F56EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = sub_2611F5800(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DA0, &qword_261225BA0);
  result = swift_arrayDestroy();
  *a4 = v5;
  return result;
}

uint64_t sub_2611F5770(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_2611F5800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DA8, &qword_261225BA8);
    v3 = sub_26121D310();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2611B3970(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2611F5914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DB0, &unk_261225BB0);
    v3 = sub_26121D1C0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26121D5B0();

      sub_26121CD50();
      result = sub_26121D5D0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_26121D4D0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2611F5A7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DD8, &qword_261225D08);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DE0, &qword_261225D10);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261225BC0;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  sub_26121C870();
  *(v4 + v5) = &unk_2873AA8D0;
  v6 = *(v0 + 48);
  sub_26121C870();
  *(v4 + v1 + v6) = &unk_2873AA900;
  v7 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 2 * v1 + v7) = &unk_2873AA940;
  v8 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 3 * v1 + v8) = &unk_2873AA970;
  v9 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 4 * v1 + v9) = &unk_2873AA9A0;
  v10 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 5 * v1 + v10) = &unk_2873AA9D0;
  v11 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 6 * v1 + v11) = &unk_2873AAA00;
  v12 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 7 * v1 + v12) = &unk_2873AAA30;
  v13 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 8 * v1 + v13) = &unk_2873AAA60;
  v14 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 9 * v1 + v14) = &unk_2873AAA90;
  v15 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 10 * v1 + v15) = &unk_2873AAAC0;
  v16 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 11 * v1 + v16) = &unk_2873AAAF0;
  v17 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 12 * v1 + v17) = &unk_2873AAB20;
  v18 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 13 * v1 + v18) = &unk_2873AAB50;
  v19 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 14 * v1 + v19) = &unk_2873AAB80;
  v20 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 15 * v1 + v20) = &unk_2873AABB0;
  v21 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 16 * v1 + v21) = &unk_2873AABE0;
  v22 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 17 * v1 + v22) = &unk_2873AAC10;
  v23 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 18 * v1 + v23) = &unk_2873AAC40;
  v24 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 19 * v1 + v24) = &unk_2873AAC70;
  v25 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 20 * v1 + v25) = &unk_2873AACA0;
  v26 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 21 * v1 + v26) = &unk_2873AACF0;
  v27 = *(v0 + 48);
  sub_26121C870();
  *(v4 + 22 * v1 + v27) = &unk_2873AAD20;
  v28 = v4 + 23 * v1;
  v29 = *(v0 + 48);
  sub_26121C890();
  *(v28 + v29) = &unk_2873AAD50;
  v30 = sub_2611F901C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FE9F1E0 = v30;
  return result;
}

uint64_t CurrencyDef.bcdData.getter()
{
  v1 = *v0;
  sub_26119D904(*v0, *(v0 + 8));
  return v1;
}

uint64_t CurrencyDef.supportedLocales.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  return result;
}

uint64_t CurrencyDef.symbol.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CurrencyDef.init(_:_:_:_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double CurrencyDef.init(_:_:_:_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87D10, &unk_261221610);
  v18 = swift_allocObject();
  *&result = 1;
  *(v18 + 16) = xmmword_2612203B0;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v18;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t static CurrencyDefinitions.find(isoCurrencyCode:region:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_26121C8A0();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FE949D8 != -1)
  {
    result = swift_once();
  }

  v16 = qword_27FE949E0;
  if (*(qword_27FE949E0 + 16) && (result = sub_2611B3970(a1, a2), (v17 & 1) != 0))
  {
    v37 = a3;
    v38 = v12;
    v18 = *(v16 + 56) + 56 * result;
    v19 = *v18;
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    v22 = *(v18 + 32);
    v23 = *(v18 + 48);
    v39 = *(v18 + 40);
    v40 = v20;
    v44 = v22;
    v43[0] = a1;
    v43[1] = a2;
    v24 = MEMORY[0x28223BE20](v19);
    *(&v37 - 2) = v43;
    v41 = v25;
    v42 = v24;
    sub_26119D904(v24, v25);

    if (sub_2611F8DC8(sub_2611ABD60, (&v37 - 4), &unk_2873AA8A0))
    {
      if (qword_27FE949D0 != -1)
      {
        swift_once();
      }

      v26 = qword_27FE9F1E0;
      sub_2611ABE1C(v37, v10, &qword_27FE875F0, &qword_261221B80);
      v27 = v38;
      v28 = *(v38 + 48);
      if (v28(v10, 1, v11) == 1)
      {
        sub_26121C890();
        if (v28(v10, 1, v11) != 1)
        {
          sub_2611F8E74(v10);
        }
      }

      else
      {
        (*(v27 + 32))(v15, v10, v11);
      }

      if (*(v26 + 16) && (v29 = sub_2611F8B98(v15), (v30 & 1) != 0))
      {
        v31 = *(*(v26 + 56) + 8 * v29);
        v32 = *(v27 + 8);

        v32(v15, v11);

        v21 = v31;
      }

      else
      {
        (*(v27 + 8))(v15, v11);
      }
    }

    v33 = v44;
    v35 = v41;
    v34 = v42;
    *a4 = v42;
    a4[1] = v35;
    v36 = v40;
    a4[2] = v21;
    a4[3] = v36;
    a4[4] = v33;
    a4[5] = v39;
    a4[6] = v23;
    sub_26119D904(v34, v35);

    sub_26119DA0C(v34, v35);
  }

  else
  {
    a4[6] = 0;
    *(a4 + 1) = 0u;
    *(a4 + 2) = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_2611F6474()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DC0, &qword_261225CE8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_261225BD0;
  *(v0 + 32) = 4477781;
  *(v0 + 40) = 0xE300000000000000;
  *(v0 + 48) = sub_2611C7704(&unk_2873AAD80);
  *(v0 + 56) = v1;
  *(v0 + 64) = &unk_2873AADA8;
  *(v0 + 72) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 4473155;
  *(v0 + 112) = 0xE300000000000000;
  *(v0 + 120) = sub_2611C7704(&unk_2873AADE8);
  *(v0 + 128) = v2;
  *(v0 + 136) = &unk_2873AAE10;
  *(v0 + 144) = 2;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 4478273;
  *(v0 + 184) = 0xE300000000000000;
  *(v0 + 192) = sub_2611C7704(&unk_2873AAE50);
  *(v0 + 200) = v3;
  *(v0 + 208) = &unk_2873AAE78;
  *(v0 + 216) = 2;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 5259847;
  *(v0 + 256) = 0xE300000000000000;
  *(v0 + 264) = sub_2611C7704(&unk_2873AAEA8);
  *(v0 + 272) = v4;
  *(v0 + 280) = &unk_2873AAED0;
  *(v0 + 288) = 2;
  *(v0 + 296) = 0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 5395781;
  *(v0 + 328) = 0xE300000000000000;
  *(v0 + 336) = sub_2611C7704(&unk_2873AAF00);
  *(v0 + 344) = v5;
  *(v0 + 352) = &unk_2873AAF28;
  *(v0 + 360) = 2;
  *(v0 + 368) = 0;
  *(v0 + 376) = 11305698;
  *(v0 + 384) = xmmword_261225BE0;
  *(v0 + 400) = 0xE300000000000000;
  *(v0 + 408) = sub_2611C7704(&unk_2873AAF58);
  *(v0 + 416) = v6;
  *(v0 + 424) = &unk_2873AAF80;
  *(v0 + 432) = 2;
  *(v0 + 440) = 1;
  *(v0 + 448) = xmmword_261225BF0;
  *(v0 + 464) = 4474177;
  *(v0 + 472) = 0xE300000000000000;
  *(v0 + 480) = sub_2611C7704(&unk_2873AAFB0);
  *(v0 + 488) = v7;
  *(v0 + 496) = &unk_2873AAFD8;
  *(v0 + 504) = 2;
  *(v0 + 512) = 0;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 5390675;
  *(v0 + 544) = 0xE300000000000000;
  *(v0 + 552) = sub_2611C7704(&unk_2873AB008);
  *(v0 + 560) = v8;
  *(v0 + 568) = &unk_2873AB030;
  *(v0 + 576) = 2;
  *(v0 + 584) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0x52412E524153;
  *(v0 + 616) = 0xE600000000000000;
  *(v0 + 624) = sub_2611C7704(&unk_2873AB060);
  *(v0 + 632) = v9;
  *(v0 + 640) = &unk_2873AB088;
  *(v0 + 648) = 2;
  *(v0 + 656) = 0;
  *(v0 + 664) = 0u;
  *(v0 + 680) = 5853258;
  *(v0 + 688) = 0xE300000000000000;
  *(v0 + 696) = sub_2611C7704(&unk_2873AB0B8);
  *(v0 + 704) = v10;
  *(v0 + 712) = &unk_2873AB0E0;
  *(v0 + 720) = 0;
  *(v0 + 728) = 0;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 5001794;
  *(v0 + 760) = 0xE300000000000000;
  *(v0 + 768) = sub_2611C7704(&unk_2873AB110);
  *(v0 + 776) = v11;
  *(v0 + 784) = &unk_2873AB138;
  *(v0 + 792) = 2;
  *(v0 + 800) = 0;
  *(v0 + 808) = 0u;
  *(v0 + 824) = 4735317;
  *(v0 + 832) = 0xE300000000000000;
  *(v0 + 840) = sub_2611C7704(&unk_2873AB168);
  *(v0 + 848) = v12;
  *(v0 + 856) = &unk_2873AB190;
  *(v0 + 864) = 2;
  *(v0 + 872) = 0;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 4932947;
  *(v0 + 904) = 0xE300000000000000;
  *(v0 + 912) = sub_2611C7704(&unk_2873AB1C0);
  *(v0 + 920) = v13;
  *(v0 + 928) = &unk_2873AB1E8;
  *(v0 + 936) = 2;
  *(v0 + 944) = 0;
  *(v0 + 952) = 0u;
  *(v0 + 968) = 4606019;
  *(v0 + 976) = 0xE300000000000000;
  *(v0 + 984) = sub_2611C7704(&unk_2873AB218);
  *(v0 + 992) = v14;
  *(v0 + 1000) = &unk_2873AB240;
  *(v0 + 1008) = 2;
  *(v0 + 1016) = 0;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 5262403;
  *(v0 + 1048) = 0xE300000000000000;
  *(v0 + 1056) = sub_2611C7704(&unk_2873AB290);
  *(v0 + 1064) = v15;
  *(v0 + 1072) = &unk_2873AB2B8;
  *(v0 + 1080) = 0;
  *(v0 + 1088) = 0;
  *(v0 + 1096) = 0u;
  *(v0 + 1112) = 5130050;
  *(v0 + 1120) = 0xE300000000000000;
  *(v0 + 1128) = sub_2611C7704(&unk_2873AB2E8);
  *(v0 + 1136) = v16;
  *(v0 + 1144) = &unk_2873AB310;
  *(v0 + 1152) = 2;
  *(v0 + 1160) = 0;
  *(v0 + 1168) = 0u;
  *(v0 + 1184) = 4609352;
  *(v0 + 1192) = 0xE300000000000000;
  *(v0 + 1200) = sub_2611C7704(&unk_2873AB340);
  *(v0 + 1208) = v17;
  *(v0 + 1216) = &unk_2873AB368;
  *(v0 + 1224) = 2;
  *(v0 + 1232) = 1;
  *(v0 + 1240) = 0u;
  *(v0 + 1256) = 4938307;
  *(v0 + 1264) = 0xE300000000000000;
  *(v0 + 1272) = sub_2611C7704(&unk_2873AB398);
  *(v0 + 1280) = v18;
  *(v0 + 1288) = &unk_2873AB3C0;
  *(v0 + 1296) = 2;
  *(v0 + 1304) = 0;
  *(v0 + 1312) = 0u;
  *(v0 + 1328) = 5131344;
  *(v0 + 1336) = 0xE300000000000000;
  *(v0 + 1344) = sub_2611C7704(&unk_2873AB3F0);
  *(v0 + 1352) = v19;
  *(v0 + 1360) = &unk_2873AB418;
  *(v0 + 1368) = 2;
  *(v0 + 1376) = 0;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 5132114;
  *(v0 + 1408) = 0xE300000000000000;
  *(v0 + 1416) = sub_2611C7704(&unk_2873AB448);
  *(v0 + 1424) = v20;
  *(v0 + 1432) = &unk_2873AB470;
  *(v0 + 1440) = 2;
  *(v0 + 1448) = 0;
  *(v0 + 1456) = 0u;
  *(v0 + 1472) = 4479566;
  *(v0 + 1480) = 0xE300000000000000;
  *(v0 + 1488) = sub_2611C7704(&unk_2873AB4A0);
  *(v0 + 1496) = v21;
  *(v0 + 1504) = &unk_2873AB4C8;
  *(v0 + 1512) = 2;
  *(v0 + 1520) = 0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 5263171;
  *(v0 + 1552) = 0xE300000000000000;
  *(v0 + 1560) = sub_2611C7704(&unk_2873AB4F8);
  *(v0 + 1568) = v22;
  *(v0 + 1576) = &unk_2873AB520;
  *(v0 + 1584) = 2;
  *(v0 + 1592) = 0;
  *(v0 + 1600) = 0u;
  *(v0 + 1616) = 5129552;
  *(v0 + 1624) = 0xE300000000000000;
  *(v0 + 1632) = sub_2611C7704(&unk_2873AB550);
  *(v0 + 1640) = v23;
  *(v0 + 1648) = &unk_2873AB578;
  *(v0 + 1656) = 2;
  *(v0 + 1664) = 0;
  *(v0 + 1672) = 0u;
  *(v0 + 1688) = 4934468;
  *(v0 + 1696) = 0xE300000000000000;
  *(v0 + 1704) = sub_2611C7704(&unk_2873AB5A8);
  *(v0 + 1712) = v24;
  *(v0 + 1720) = &unk_2873AB5D0;
  *(v0 + 1728) = 2;
  *(v0 + 1736) = 0;
  *(v0 + 1744) = 0u;
  *(v0 + 1760) = 4473165;
  *(v0 + 1768) = 0xE300000000000000;
  *(v0 + 1776) = sub_2611C7704(&unk_2873AB600);
  *(v0 + 1784) = v25;
  *(v0 + 1792) = &unk_2873AB628;
  *(v0 + 1800) = 2;
  *(v0 + 1808) = 0;
  *(v0 + 1816) = 0u;
  *(v0 + 1832) = 5390682;
  *(v0 + 1840) = 0xE300000000000000;
  *(v0 + 1848) = sub_2611C7704(&unk_2873AB658);
  *(v0 + 1856) = v26;
  *(v0 + 1864) = &unk_2873AB680;
  *(v0 + 1872) = 2;
  *(v0 + 1880) = 0;
  *(v0 + 1888) = 0u;
  *(v0 + 1904) = 4475720;
  *(v0 + 1912) = 0xE300000000000000;
  *(v0 + 1920) = sub_2611C7704(&unk_2873AB6B0);
  *(v0 + 1928) = v27;
  *(v0 + 1936) = &unk_2873AB6D8;
  *(v0 + 1944) = 2;
  *(v0 + 1952) = 0;
  *(v0 + 1960) = 0u;
  *(v0 + 1976) = 5722699;
  *(v0 + 1984) = 0xE300000000000000;
  *(v0 + 1992) = sub_2611C7704(&unk_2873AB708);
  *(v0 + 2000) = v28;
  *(v0 + 2008) = &unk_2873AB730;
  *(v0 + 2016) = 0;
  *(v0 + 2024) = 0;
  *(v0 + 2032) = 0u;
  *(v0 + 2048) = 4476502;
  *(v0 + 2056) = 0xE300000000000000;
  *(v0 + 2064) = sub_2611C7704(&unk_2873AB760);
  *(v0 + 2072) = v29;
  *(v0 + 2080) = &unk_2873AB788;
  *(v0 + 2088) = 0;
  *(v0 + 2096) = 0;
  *(v0 + 2104) = 0;
  *(v0 + 2112) = 0;
  *(v0 + 2120) = 5396813;
  *(v0 + 2128) = 0xE300000000000000;
  *(v0 + 2136) = sub_2611C7704(&unk_2873AB7B8);
  *(v0 + 2144) = v30;
  *(v0 + 2152) = &unk_2873AB7E0;
  *(v0 + 2160) = 2;
  *(v0 + 2168) = 0;
  *(v0 + 2176) = 0;
  *(v0 + 2184) = 0;
  *(v0 + 2192) = 4476225;
  *(v0 + 2200) = 0xE300000000000000;
  *(v0 + 2208) = sub_2611C7704(&unk_2873AB810);
  *(v0 + 2216) = v31;
  *(v0 + 2224) = &unk_2873AB838;
  *(v0 + 2232) = 2;
  *(v0 + 2240) = 0;
  *(v0 + 2248) = 0;
  *(v0 + 2256) = 0;
  *(v0 + 2264) = 5134913;
  *(v0 + 2272) = 0xE300000000000000;
  *(v0 + 2280) = sub_2611C7704(&unk_2873AB868);
  *(v0 + 2288) = v32;
  *(v0 + 2296) = &unk_2873AB890;
  *(v0 + 2304) = 2;
  *(v0 + 2312) = 0;
  *(v0 + 2320) = 0;
  *(v0 + 2328) = 0;
  *(v0 + 2336) = 5134658;
  *(v0 + 2344) = 0xE300000000000000;
  *(v0 + 2352) = sub_2611C7704(&unk_2873AB8C0);
  *(v0 + 2360) = v33;
  *(v0 + 2368) = &unk_2873AB8E8;
  *(v0 + 2376) = 2;
  *(v0 + 2384) = 0;
  *(v0 + 2392) = 0;
  *(v0 + 2400) = 0;
  *(v0 + 2408) = 4998221;
  *(v0 + 2416) = 0xE300000000000000;
  *(v0 + 2424) = sub_2611C7704(&unk_2873AB918);
  *(v0 + 2432) = v34;
  *(v0 + 2440) = &unk_2873AB940;
  *(v0 + 2448) = 2;
  *(v0 + 2456) = 0;
  *(v0 + 2464) = 0;
  *(v0 + 2472) = 0;
  *(v0 + 2480) = 4935502;
  *(v0 + 2488) = 0xE300000000000000;
  *(v0 + 2496) = sub_2611C7704(&unk_2873AB970);
  *(v0 + 2504) = v35;
  *(v0 + 2512) = &unk_2873AB998;
  *(v0 + 2520) = 2;
  *(v0 + 2528) = 0;
  *(v0 + 2536) = 0;
  *(v0 + 2544) = 0;
  *(v0 + 2552) = 4998471;
  *(v0 + 2560) = 0xE300000000000000;
  *(v0 + 2568) = sub_2611C7704(&unk_2873AB9C8);
  *(v0 + 2576) = v36;
  *(v0 + 2584) = &unk_2873AB9F0;
  *(v0 + 2592) = 2;
  *(v0 + 2600) = 0;
  *(v0 + 2608) = 0;
  *(v0 + 2616) = 0;
  *(v0 + 2624) = 5528139;
  *(v0 + 2632) = 0xE300000000000000;
  *(v0 + 2640) = sub_2611C7704(&unk_2873ABA20);
  *(v0 + 2648) = v37;
  *(v0 + 2656) = &unk_2873ABA48;
  *(v0 + 2664) = 2;
  *(v0 + 2672) = 0;
  *(v0 + 2680) = 0;
  *(v0 + 2688) = 0;
  *(v0 + 2696) = 5263181;
  *(v0 + 2704) = 0xE300000000000000;
  *(v0 + 2712) = sub_2611C7704(&unk_2873ABA78);
  *(v0 + 2720) = v38;
  *(v0 + 2728) = &unk_2873ABAA0;
  *(v0 + 2736) = 2;
  *(v0 + 2744) = 0;
  *(v0 + 2752) = 0;
  *(v0 + 2760) = 0;
  *(v0 + 2768) = 5460545;
  *(v0 + 2776) = 0xE300000000000000;
  *(v0 + 2784) = sub_2611C7704(&unk_2873ABAD0);
  *(v0 + 2792) = v39;
  *(v0 + 2800) = &unk_2873ABAF8;
  *(v0 + 2808) = 2;
  *(v0 + 2816) = 0;
  *(v0 + 2824) = 0;
  *(v0 + 2832) = 0;
  *(v0 + 2840) = 5329991;
  *(v0 + 2848) = 0xE300000000000000;
  *(v0 + 2856) = sub_2611C7704(&unk_2873ABB28);
  *(v0 + 2864) = v40;
  *(v0 + 2872) = &unk_2873ABB50;
  *(v0 + 2880) = 2;
  *(v0 + 2888) = 0;
  *(v0 + 2896) = 0;
  *(v0 + 2904) = 0;
  *(v0 + 2912) = 5000776;
  *(v0 + 2920) = 0xE300000000000000;
  *(v0 + 2928) = sub_2611C7704(&unk_2873ABB80);
  *(v0 + 2936) = v41;
  *(v0 + 2944) = &unk_2873ABBA8;
  *(v0 + 2952) = 2;
  *(v0 + 2960) = 0;
  *(v0 + 2968) = 0;
  *(v0 + 2976) = 0;
  *(v0 + 2984) = 4342096;
  *(v0 + 2992) = 0xE300000000000000;
  *(v0 + 3000) = sub_2611C7704(&unk_2873ABBD8);
  *(v0 + 3008) = v42;
  *(v0 + 3016) = &unk_2873ABC00;
  *(v0 + 3024) = 2;
  *(v0 + 3032) = 0;
  *(v0 + 3040) = 0;
  *(v0 + 3048) = 0;
  *(v0 + 3056) = 4411971;
  *(v0 + 3064) = 0xE300000000000000;
  *(v0 + 3072) = sub_2611C7704(&unk_2873ABC30);
  *(v0 + 3080) = v43;
  *(v0 + 3088) = &unk_2873ABC58;
  *(v0 + 3096) = 2;
  *(v0 + 3104) = 0;
  *(v0 + 3112) = 0;
  *(v0 + 3120) = 0;
  *(v0 + 3128) = 4413011;
  *(v0 + 3136) = 0xE300000000000000;
  *(v0 + 3144) = sub_2611C7704(&unk_2873ABC88);
  *(v0 + 3152) = v44;
  *(v0 + 3160) = &unk_2873ABCB0;
  *(v0 + 3168) = 2;
  *(v0 + 3176) = 0;
  *(v0 + 3184) = 0;
  *(v0 + 3192) = 0;
  *(v0 + 3200) = 4474946;
  *(v0 + 3208) = 0xE300000000000000;
  *(v0 + 3216) = sub_2611C7704(&unk_2873ABCE0);
  *(v0 + 3224) = v45;
  *(v0 + 3232) = &unk_2873ABD08;
  *(v0 + 3240) = 3;
  *(v0 + 3248) = 0;
  *(v0 + 3256) = 0;
  *(v0 + 3264) = 0;
  *(v0 + 3272) = 5459017;
  *(v0 + 3280) = 0xE300000000000000;
  *(v0 + 3288) = sub_2611C7704(&unk_2873ABD38);
  *(v0 + 3296) = v46;
  *(v0 + 3304) = &unk_2873ABD60;
  *(v0 + 3312) = 2;
  *(v0 + 3320) = 0;
  *(v0 + 3328) = 0;
  *(v0 + 3336) = 0;
  *(v0 + 3344) = 4476746;
  *(v0 + 3352) = 0xE300000000000000;
  *(v0 + 3360) = sub_2611C7704(&unk_2873ABD90);
  *(v0 + 3368) = v47;
  *(v0 + 3376) = &unk_2873ABDB8;
  *(v0 + 3384) = 3;
  *(v0 + 3392) = 0;
  *(v0 + 3400) = 0;
  *(v0 + 3408) = 0;
  *(v0 + 3416) = 4478795;
  *(v0 + 3424) = 0xE300000000000000;
  *(v0 + 3432) = sub_2611C7704(&unk_2873ABDE8);
  *(v0 + 3440) = v48;
  *(v0 + 3448) = &unk_2873ABE10;
  *(v0 + 3456) = 3;
  *(v0 + 3464) = 0;
  *(v0 + 3472) = 0;
  *(v0 + 3480) = 0;
  *(v0 + 3488) = 5390673;
  *(v0 + 3496) = 0xE300000000000000;
  *(v0 + 3504) = sub_2611C7704(&unk_2873ABE40);
  *(v0 + 3512) = v49;
  *(v0 + 3520) = &unk_2873ABE68;
  *(v0 + 3528) = 2;
  *(v0 + 3536) = 0;
  *(v0 + 3544) = 0;
  *(v0 + 3552) = 0;
  *(v0 + 3560) = 4608088;
  *(v0 + 3568) = 0xE300000000000000;
  *(v0 + 3576) = sub_2611C7704(&unk_2873ABE98);
  *(v0 + 3584) = v50;
  *(v0 + 3592) = &unk_2873ABEC0;
  *(v0 + 3600) = 2;
  *(v0 + 3608) = 0;
  *(v0 + 3616) = 0;
  *(v0 + 3624) = 0;
  *(v0 + 3632) = 4936521;
  *(v0 + 3640) = 0xE300000000000000;
  *(v0 + 3648) = sub_2611C7704(&unk_2873ABEF0);
  *(v0 + 3656) = v51;
  *(v0 + 3664) = &unk_2873ABF18;
  *(v0 + 3672) = 0;
  *(v0 + 3680) = 0;
  *(v0 + 3688) = 0;
  *(v0 + 3696) = 0;
  *(v0 + 3704) = 5134413;
  *(v0 + 3712) = 0xE300000000000000;
  *(v0 + 3720) = sub_2611C7704(&unk_2873ABF48);
  *(v0 + 3728) = v52;
  *(v0 + 3736) = &unk_2873ABF70;
  *(v0 + 3744) = 2;
  *(v0 + 3752) = 0;
  *(v0 + 3760) = 0;
  *(v0 + 3768) = 0;
  *(v0 + 3776) = 4343892;
  *(v0 + 3784) = 0xE300000000000000;
  *(v0 + 3792) = sub_2611C7704(&unk_2873ABFA0);
  *(v0 + 3800) = v53;
  *(v0 + 3808) = &unk_2873ABFC8;
  *(v0 + 3816) = 2;
  *(v0 + 3824) = 0;
  *(v0 + 3832) = 0;
  *(v0 + 3840) = 0;
  *(v0 + 3848) = 5393993;
  *(v0 + 3856) = 0xE300000000000000;
  *(v0 + 3864) = sub_2611C7704(&unk_2873ABFF8);
  *(v0 + 3872) = v54;
  *(v0 + 3880) = &unk_2873AC020;
  *(v0 + 3888) = 2;
  *(v0 + 3896) = 0;
  *(v0 + 3904) = 0;
  *(v0 + 3912) = 0;
  *(v0 + 3920) = 5391433;
  *(v0 + 3928) = 0xE300000000000000;
  *(v0 + 3936) = sub_2611C7704(&unk_2873AC050);
  *(v0 + 3944) = v55;
  *(v0 + 3952) = &unk_2873AC078;
  *(v0 + 3960) = 0;
  *(v0 + 3968) = 0;
  *(v0 + 3976) = 0;
  *(v0 + 3984) = 0;
  *(v0 + 3992) = 5852739;
  *(v0 + 4000) = 0xE300000000000000;
  *(v0 + 4008) = sub_2611C7704(&unk_2873AC0A8);
  *(v0 + 4016) = v56;
  *(v0 + 4024) = &unk_2873AC0D0;
  *(v0 + 4032) = 2;
  *(v0 + 4040) = 0;
  *(v0 + 4048) = 0;
  *(v0 + 4056) = 0;
  *(v0 + 4064) = 5264707;
  *(v0 + 4072) = 0xE300000000000000;
  *(v0 + 4080) = sub_2611C7704(&unk_2873AC100);
  *(v0 + 4088) = v57;
  *(v0 + 4096) = &unk_2873AC128;
  *(v0 + 4104) = 2;
  *(v0 + 4112) = 0;
  *(v0 + 4120) = 0;
  *(v0 + 4128) = 0;
  *(v0 + 4136) = 5263172;
  *(v0 + 4144) = 0xE300000000000000;
  *(v0 + 4152) = sub_2611C7704(&unk_2873AC158);
  *(v0 + 4160) = v58;
  *(v0 + 4168) = &unk_2873AC180;
  *(v0 + 4176) = 2;
  *(v0 + 4184) = 0;
  *(v0 + 4192) = 0;
  *(v0 + 4200) = 0;
  *(v0 + 4208) = 4475462;
  *(v0 + 4216) = 0xE300000000000000;
  *(v0 + 4224) = sub_2611C7704(&unk_2873AC1B0);
  *(v0 + 4232) = v59;
  *(v0 + 4240) = &unk_2873AC1D8;
  *(v0 + 4248) = 2;
  *(v0 + 4256) = 0;
  *(v0 + 4264) = 0;
  *(v0 + 4272) = 0;
  *(v0 + 4280) = 4476234;
  *(v0 + 4288) = 0xE300000000000000;
  *(v0 + 4296) = sub_2611C7704(&unk_2873AC208);
  *(v0 + 4304) = v60;
  *(v0 + 4312) = &unk_2873AC230;
  *(v0 + 4320) = 2;
  *(v0 + 4328) = 0;
  *(v0 + 4336) = 0;
  *(v0 + 4344) = 0;
  *(v0 + 4352) = 4544067;
  *(v0 + 4360) = 0xE300000000000000;
  *(v0 + 4368) = sub_2611C7704(&unk_2873AC260);
  *(v0 + 4376) = v61;
  *(v0 + 4384) = &unk_2873AC288;
  *(v0 + 4392) = 0;
  *(v0 + 4400) = 0;
  *(v0 + 4408) = 0;
  *(v0 + 4416) = 0;
  *(v0 + 4424) = 4479307;
  *(v0 + 4432) = 0xE300000000000000;
  *(v0 + 4440) = sub_2611C7704(&unk_2873AC2B8);
  *(v0 + 4448) = v62;
  *(v0 + 4456) = &unk_2873AC2E0;
  *(v0 + 4464) = 2;
  *(v0 + 4472) = 0;
  *(v0 + 4480) = 0;
  *(v0 + 4488) = 0;
  *(v0 + 4496) = 4479554;
  *(v0 + 4504) = 0xE300000000000000;
  *(v0 + 4512) = sub_2611C7704(&unk_2873AC310);
  *(v0 + 4520) = v63;
  *(v0 + 4528) = &unk_2873AC338;
  *(v0 + 4536) = 2;
  *(v0 + 4544) = 0;
  *(v0 + 4552) = 0;
  *(v0 + 4560) = 0;
  *(v0 + 4568) = 4473427;
  *(v0 + 4576) = 0xE300000000000000;
  *(v0 + 4584) = sub_2611C7704(&unk_2873AC368);
  *(v0 + 4592) = v64;
  *(v0 + 4600) = &unk_2873AC390;
  *(v0 + 4608) = 2;
  *(v0 + 4616) = 0;
  *(v0 + 4624) = 0;
  *(v0 + 4632) = 0;
  *(v0 + 4640) = 4479303;
  *(v0 + 4648) = 0xE300000000000000;
  *(v0 + 4656) = sub_2611C7704(&unk_2873AC3C0);
  *(v0 + 4664) = v65;
  *(v0 + 4672) = &unk_2873AC3E8;
  *(v0 + 4680) = 2;
  *(v0 + 4688) = 0;
  *(v0 + 4696) = 0;
  *(v0 + 4704) = 0;
  *(v0 + 4712) = 4479556;
  *(v0 + 4720) = 0xE300000000000000;
  *(v0 + 4728) = sub_2611C7704(&unk_2873AC418);
  *(v0 + 4736) = v66;
  *(v0 + 4744) = &unk_2873AC440;
  *(v0 + 4752) = 2;
  *(v0 + 4760) = 0;
  *(v0 + 4768) = 0;
  *(v0 + 4776) = 0;
  *(v0 + 4784) = 4674632;
  *(v0 + 4792) = 0xE300000000000000;
  *(v0 + 4800) = sub_2611C7704(&unk_2873AC470);
  *(v0 + 4808) = v67;
  *(v0 + 4816) = &unk_2873AC498;
  *(v0 + 4824) = 2;
  *(v0 + 4832) = 0;
  *(v0 + 4840) = 0;
  *(v0 + 4848) = 0;
  *(v0 + 4856) = 5395017;
  *(v0 + 4864) = 0xE300000000000000;
  *(v0 + 4872) = sub_2611C7704(&unk_2873AC4C8);
  *(v0 + 4880) = v68;
  *(v0 + 4888) = &unk_2873AC4F0;
  *(v0 + 4896) = 2;
  *(v0 + 4904) = 0;
  *(v0 + 4912) = 0;
  *(v0 + 4920) = 0;
  *(v0 + 4928) = 4477257;
  *(v0 + 4936) = 0xE300000000000000;
  *(v0 + 4944) = sub_2611C7704(&unk_2873AC520);
  *(v0 + 4952) = v69;
  *(v0 + 4960) = &unk_2873AC548;
  *(v0 + 4968) = 3;
  *(v0 + 4976) = 0;
  *(v0 + 4984) = 0;
  *(v0 + 4992) = 0;
  *(v0 + 5000) = 5522498;
  *(v0 + 5008) = 0xE300000000000000;
  *(v0 + 5016) = sub_2611C7704(&unk_2873AC578);
  *(v0 + 5024) = v70;
  *(v0 + 5032) = &unk_2873AC5A0;
  *(v0 + 5040) = 2;
  *(v0 + 5048) = 0;
  *(v0 + 5056) = 0;
  *(v0 + 5064) = 0;
  *(v0 + 5072) = 5000257;
  *(v0 + 5080) = 0xE300000000000000;
  *(v0 + 5088) = sub_2611C7704(&unk_2873AC5D0);
  *(v0 + 5096) = v71;
  *(v0 + 5104) = &unk_2873AC5F8;
  *(v0 + 5112) = 2;
  *(v0 + 5120) = 0;
  *(v0 + 5128) = 0;
  *(v0 + 5136) = 0;
  *(v0 + 5144) = 4477762;
  *(v0 + 5152) = 0xE300000000000000;
  *(v0 + 5160) = sub_2611C7704(&unk_2873AC628);
  *(v0 + 5168) = v72;
  *(v0 + 5176) = &unk_2873AC650;
  *(v0 + 5184) = 2;
  *(v0 + 5192) = 0;
  *(v0 + 5200) = 0;
  *(v0 + 5208) = 0;
  *(v0 + 5216) = 4473410;
  *(v0 + 5224) = 0xE300000000000000;
  *(v0 + 5232) = sub_2611C7704(&unk_2873AC680);
  *(v0 + 5240) = v73;
  *(v0 + 5248) = &unk_2873AC6A8;
  *(v0 + 5256) = 2;
  *(v0 + 5264) = 0;
  *(v0 + 5272) = 0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 4476226;
  *(v0 + 5296) = 0xE300000000000000;
  *(v0 + 5304) = sub_2611C7704(&unk_2873AC6D8);
  *(v0 + 5312) = v74;
  *(v0 + 5320) = &unk_2873AC700;
  *(v0 + 5328) = 2;
  *(v0 + 5336) = 0;
  *(v0 + 5344) = 0;
  *(v0 + 5352) = 0;
  *(v0 + 5360) = 5133378;
  *(v0 + 5368) = 0xE300000000000000;
  *(v0 + 5376) = sub_2611C7704(&unk_2873AC730);
  *(v0 + 5384) = v75;
  *(v0 + 5392) = &unk_2873AC758;
  *(v0 + 5400) = 2;
  *(v0 + 5408) = 0;
  *(v0 + 5416) = 0;
  *(v0 + 5424) = 0;
  *(v0 + 5432) = 4345666;
  *(v0 + 5440) = 0xE300000000000000;
  *(v0 + 5448) = sub_2611C7704(&unk_2873AC788);
  *(v0 + 5456) = v76;
  *(v0 + 5464) = &unk_2873AC7B0;
  *(v0 + 5472) = 2;
  *(v0 + 5480) = 0;
  *(v0 + 5488) = 0;
  *(v0 + 5496) = 0;
  *(v0 + 5504) = 5265218;
  *(v0 + 5512) = 0xE300000000000000;
  *(v0 + 5520) = sub_2611C7704(&unk_2873AC7E0);
  *(v0 + 5528) = v77;
  *(v0 + 5536) = &unk_2873AC808;
  *(v0 + 5544) = 2;
  *(v0 + 5552) = 0;
  *(v0 + 5560) = 0;
  *(v0 + 5568) = 0;
  *(v0 + 5576) = 4474707;
  *(v0 + 5584) = 0xE300000000000000;
  *(v0 + 5592) = sub_2611C7704(&unk_2873AC838);
  *(v0 + 5600) = v78;
  *(v0 + 5608) = &unk_2873AC860;
  *(v0 + 5616) = 2;
  *(v0 + 5624) = 0;
  *(v0 + 5632) = 0;
  *(v0 + 5640) = 0;
  *(v0 + 5648) = 4476482;
  *(v0 + 5656) = 0xE300000000000000;
  *(v0 + 5664) = sub_2611C7704(&unk_2873AC890);
  *(v0 + 5672) = v79;
  *(v0 + 5680) = &unk_2873AC8B8;
  *(v0 + 5688) = 2;
  *(v0 + 5696) = 0;
  *(v0 + 5704) = 0;
  *(v0 + 5712) = 0;
  *(v0 + 5720) = 4934989;
  *(v0 + 5728) = 0xE300000000000000;
  *(v0 + 5736) = sub_2611C7704(&unk_2873AC8E8);
  *(v0 + 5744) = v80;
  *(v0 + 5752) = &unk_2873AC910;
  *(v0 + 5760) = 2;
  *(v0 + 5768) = 0;
  *(v0 + 5776) = 0;
  *(v0 + 5784) = 0;
  *(v0 + 5792) = 4606274;
  *(v0 + 5800) = 0xE300000000000000;
  *(v0 + 5808) = sub_2611C7704(&unk_2873AC940);
  *(v0 + 5816) = v81;
  *(v0 + 5824) = &unk_2873AC968;
  *(v0 + 5832) = 0;
  *(v0 + 5840) = 0;
  *(v0 + 5848) = 0;
  *(v0 + 5856) = 0;
  *(v0 + 5864) = 5392459;
  *(v0 + 5872) = 0xE300000000000000;
  *(v0 + 5880) = sub_2611C7704(&unk_2873AC998);
  *(v0 + 5888) = v82;
  *(v0 + 5896) = &unk_2873AC9C0;
  *(v0 + 5904) = 2;
  *(v0 + 5912) = 0;
  *(v0 + 5920) = 0;
  *(v0 + 5928) = 0;
  *(v0 + 5936) = 5393228;
  *(v0 + 5944) = 0xE300000000000000;
  *(v0 + 5952) = sub_2611C7704(&unk_2873AC9F0);
  *(v0 + 5960) = v83;
  *(v0 + 5968) = &unk_2873ACA18;
  *(v0 + 5976) = 2;
  *(v0 + 5984) = 0;
  *(v0 + 5992) = 0;
  *(v0 + 6000) = 0;
  *(v0 + 6008) = 4346949;
  *(v0 + 6016) = 0xE300000000000000;
  *(v0 + 6024) = sub_2611C7704(&unk_2873ACA48);
  *(v0 + 6032) = v84;
  *(v0 + 6040) = &unk_2873ACA70;
  *(v0 + 6048) = 2;
  *(v0 + 6056) = 0;
  *(v0 + 6064) = 0;
  *(v0 + 6072) = 0;
  *(v0 + 6080) = 5132869;
  *(v0 + 6088) = 0xE300000000000000;
  *(v0 + 6096) = sub_2611C7704(&unk_2873ACAA0);
  *(v0 + 6104) = v85;
  *(v0 + 6112) = &unk_2873ACAC8;
  *(v0 + 6120) = 2;
  *(v0 + 6128) = 0;
  *(v0 + 6136) = 0;
  *(v0 + 6144) = 0;
  *(v0 + 6152) = 5262150;
  *(v0 + 6160) = 0xE300000000000000;
  *(v0 + 6168) = sub_2611C7704(&unk_2873ACAF8);
  *(v0 + 6176) = v86;
  *(v0 + 6184) = &unk_2873ACB20;
  *(v0 + 6192) = 2;
  *(v0 + 6200) = 0;
  *(v0 + 6208) = 0;
  *(v0 + 6216) = 0;
  *(v0 + 6224) = 4606532;
  *(v0 + 6232) = 0xE300000000000000;
  *(v0 + 6240) = sub_2611C7704(&unk_2873ACB50);
  *(v0 + 6248) = v87;
  *(v0 + 6256) = &unk_2873ACB78;
  *(v0 + 6264) = 0;
  *(v0 + 6272) = 0;
  *(v0 + 6280) = 0;
  *(v0 + 6288) = 0;
  *(v0 + 6296) = 4476231;
  *(v0 + 6304) = 0xE300000000000000;
  *(v0 + 6312) = sub_2611C7704(&unk_2873ACBB8);
  *(v0 + 6320) = v88;
  *(v0 + 6328) = &unk_2873ACBE0;
  *(v0 + 6336) = 2;
  *(v0 + 6344) = 0;
  *(v0 + 6352) = 0;
  *(v0 + 6360) = 0;
  *(v0 + 6368) = 5261639;
  *(v0 + 6376) = 0xE300000000000000;
  *(v0 + 6384) = sub_2611C7704(&unk_2873ACC10);
  *(v0 + 6392) = v89;
  *(v0 + 6400) = &unk_2873ACC38;
  *(v0 + 6408) = 2;
  *(v0 + 6416) = 0;
  *(v0 + 6424) = 0;
  *(v0 + 6432) = 0;
  *(v0 + 6440) = 4607559;
  *(v0 + 6448) = 0xE300000000000000;
  *(v0 + 6456) = sub_2611C7704(&unk_2873ACC68);
  *(v0 + 6464) = v90;
  *(v0 + 6472) = &unk_2873ACC90;
  *(v0 + 6480) = 0;
  *(v0 + 6488) = 0;
  *(v0 + 6496) = 0;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = 5457227;
  *(v0 + 6520) = 0xE300000000000000;
  *(v0 + 6528) = sub_2611C7704(&unk_2873ACCC0);
  *(v0 + 6536) = v91;
  *(v0 + 6544) = &unk_2873ACCE8;
  *(v0 + 6552) = 2;
  *(v0 + 6560) = 0;
  *(v0 + 6568) = 0;
  *(v0 + 6576) = 0;
  *(v0 + 6584) = 5722187;
  *(v0 + 6592) = 0xE300000000000000;
  *(v0 + 6600) = sub_2611C7704(&unk_2873ACD28);
  *(v0 + 6608) = v92;
  *(v0 + 6616) = &unk_2873ACD50;
  *(v0 + 6624) = 2;
  *(v0 + 6632) = 0;
  *(v0 + 6640) = 0;
  *(v0 + 6648) = 0;
  *(v0 + 6656) = 5457739;
  *(v0 + 6664) = 0xE300000000000000;
  *(v0 + 6672) = sub_2611C7704(&unk_2873ACD80);
  *(v0 + 6680) = v93;
  *(v0 + 6688) = &unk_2873ACDA8;
  *(v0 + 6696) = 2;
  *(v0 + 6704) = 0;
  *(v0 + 6712) = 0;
  *(v0 + 6720) = 0;
  *(v0 + 6728) = 4931916;
  *(v0 + 6736) = 0xE300000000000000;
  *(v0 + 6744) = sub_2611C7704(&unk_2873ACDE8);
  *(v0 + 6752) = v94;
  *(v0 + 6760) = &unk_2873ACE10;
  *(v0 + 6768) = 2;
  *(v0 + 6776) = 0;
  *(v0 + 6784) = 0;
  *(v0 + 6792) = 0;
  *(v0 + 6800) = 5259852;
  *(v0 + 6808) = 0xE300000000000000;
  *(v0 + 6816) = sub_2611C7704(&unk_2873ACE40);
  *(v0 + 6824) = v95;
  *(v0 + 6832) = &unk_2873ACE68;
  *(v0 + 6840) = 2;
  *(v0 + 6848) = 0;
  *(v0 + 6856) = 0;
  *(v0 + 6864) = 0;
  *(v0 + 6872) = 5002060;
  *(v0 + 6880) = 0xE300000000000000;
  *(v0 + 6888) = sub_2611C7704(&unk_2873ACE98);
  *(v0 + 6896) = v96;
  *(v0 + 6904) = &unk_2873ACEC0;
  *(v0 + 6912) = 2;
  *(v0 + 6920) = 0;
  *(v0 + 6928) = 0;
  *(v0 + 6936) = 0;
  *(v0 + 6944) = 4477516;
  *(v0 + 6952) = 0xE300000000000000;
  *(v0 + 6960) = sub_2611C7704(&unk_2873ACEF0);
  *(v0 + 6968) = v97;
  *(v0 + 6976) = &unk_2873ACF18;
  *(v0 + 6984) = 2;
  *(v0 + 6992) = 0;
  *(v0 + 7000) = 0;
  *(v0 + 7008) = 0;
  *(v0 + 7016) = 4479308;
  *(v0 + 7024) = 0xE300000000000000;
  *(v0 + 7032) = sub_2611C7704(&unk_2873ACF48);
  *(v0 + 7040) = v98;
  *(v0 + 7048) = &unk_2873ACF70;
  *(v0 + 7056) = 3;
  *(v0 + 7064) = 0;
  *(v0 + 7072) = 0;
  *(v0 + 7080) = 0;
  *(v0 + 7088) = 4937549;
  *(v0 + 7096) = 0xE300000000000000;
  *(v0 + 7104) = sub_2611C7704(&unk_2873ACFA0);
  *(v0 + 7112) = v99;
  *(v0 + 7120) = &unk_2873ACFC8;
  *(v0 + 7128) = 2;
  *(v0 + 7136) = 0;
  *(v0 + 7144) = 0;
  *(v0 + 7152) = 0;
  *(v0 + 7160) = 5395789;
  *(v0 + 7168) = 0xE300000000000000;
  *(v0 + 7176) = sub_2611C7704(&unk_2873ACFF8);
  *(v0 + 7184) = v100;
  *(v0 + 7192) = &unk_2873AD020;
  *(v0 + 7200) = 2;
  *(v0 + 7208) = 0;
  *(v0 + 7216) = 0;
  *(v0 + 7224) = 0;
  *(v0 + 7232) = 5525069;
  *(v0 + 7240) = 0xE300000000000000;
  *(v0 + 7248) = sub_2611C7704(&unk_2873AD050);
  *(v0 + 7256) = v101;
  *(v0 + 7264) = &unk_2873AD078;
  *(v0 + 7272) = 2;
  *(v0 + 7280) = 0;
  *(v0 + 7288) = 0;
  *(v0 + 7296) = 0;
  *(v0 + 7304) = 5393743;
  *(v0 + 7312) = 0xE300000000000000;
  *(v0 + 7320) = sub_2611C7704(&unk_2873AD0A8);
  *(v0 + 7328) = v102;
  *(v0 + 7336) = &unk_2873AD0D0;
  *(v0 + 7344) = 3;
  *(v0 + 7352) = 0;
  *(v0 + 7360) = 0;
  *(v0 + 7368) = 0;
  *(v0 + 7376) = 4473166;
  *(v0 + 7384) = 0xE300000000000000;
  *(v0 + 7392) = sub_2611C7704(&unk_2873AD100);
  *(v0 + 7400) = v103;
  *(v0 + 7408) = &unk_2873AD128;
  *(v0 + 7416) = 2;
  *(v0 + 7424) = 0;
  *(v0 + 7432) = 0;
  *(v0 + 7440) = 0;
  *(v0 + 7448) = 5394510;
  *(v0 + 7456) = 0xE300000000000000;
  *(v0 + 7464) = sub_2611C7704(&unk_2873AD158);
  *(v0 + 7472) = v104;
  *(v0 + 7480) = &unk_2873AD180;
  *(v0 + 7488) = 2;
  *(v0 + 7496) = 0;
  *(v0 + 7504) = 0;
  *(v0 + 7512) = 0;
  *(v0 + 7520) = 4673089;
  *(v0 + 7528) = 0xE300000000000000;
  *(v0 + 7536) = sub_2611C7704(&unk_2873AD1B0);
  *(v0 + 7544) = v105;
  *(v0 + 7552) = &unk_2873AD1D8;
  *(v0 + 7560) = 2;
  *(v0 + 7568) = 0;
  *(v0 + 7576) = 0;
  *(v0 + 7584) = 0;
  *(v0 + 7592) = 4675393;
  *(v0 + 7600) = 0xE300000000000000;
  *(v0 + 7608) = sub_2611C7704(&unk_2873AD208);
  *(v0 + 7616) = v106;
  *(v0 + 7624) = &unk_2873AD230;
  *(v0 + 7632) = 2;
  *(v0 + 7640) = 0;
  *(v0 + 7648) = 0;
  *(v0 + 7656) = 0;
  *(v0 + 7664) = 5657942;
  *(v0 + 7672) = 0xE300000000000000;
  *(v0 + 7680) = sub_2611C7704(&unk_2873AD260);
  *(v0 + 7688) = v107;
  *(v0 + 7696) = &unk_2873AD288;
  *(v0 + 7704) = 0;
  *(v0 + 7712) = 0;
  *(v0 + 7720) = 0;
  *(v0 + 7728) = 0;
  *(v0 + 7736) = 5196110;
  *(v0 + 7744) = 0xE300000000000000;
  *(v0 + 7752) = sub_2611C7704(&unk_2873AD2B8);
  *(v0 + 7760) = v108;
  *(v0 + 7768) = &unk_2873AD2E0;
  *(v0 + 7776) = 2;
  *(v0 + 7784) = 0;
  *(v0 + 7792) = 0;
  *(v0 + 7800) = 0;
  *(v0 + 7808) = 5130062;
  *(v0 + 7816) = 0xE300000000000000;
  *(v0 + 7824) = sub_2611C7704(&unk_2873AD310);
  *(v0 + 7832) = v109;
  *(v0 + 7840) = &unk_2873AD338;
  *(v0 + 7848) = 2;
  *(v0 + 7856) = 0;
  *(v0 + 7864) = 0;
  *(v0 + 7872) = 0;
  *(v0 + 7880) = 5393232;
  *(v0 + 7888) = 0xE300000000000000;
  *(v0 + 7896) = sub_2611C7704(&unk_2873AD368);
  *(v0 + 7904) = v110;
  *(v0 + 7912) = &unk_2873AD390;
  *(v0 + 7920) = 2;
  *(v0 + 7928) = 0;
  *(v0 + 7936) = 0;
  *(v0 + 7944) = 0;
  *(v0 + 7952) = 4933456;
  *(v0 + 7960) = 0xE300000000000000;
  *(v0 + 7968) = sub_2611C7704(&unk_2873AD3C0);
  *(v0 + 7976) = v111;
  *(v0 + 7984) = &unk_2873AD3E8;
  *(v0 + 7992) = 2;
  *(v0 + 8000) = 0;
  *(v0 + 8008) = 0;
  *(v0 + 8016) = 0;
  *(v0 + 8024) = 4675920;
  *(v0 + 8032) = 0xE300000000000000;
  *(v0 + 8040) = sub_2611C7704(&unk_2873AD418);
  *(v0 + 8048) = v112;
  *(v0 + 8056) = &unk_2873AD440;
  *(v0 + 8064) = 0;
  *(v0 + 8072) = 0;
  *(v0 + 8080) = 0;
  *(v0 + 8088) = 0;
  *(v0 + 8096) = 5261392;
  *(v0 + 8104) = 0xE300000000000000;
  *(v0 + 8112) = sub_2611C7704(&unk_2873AD470);
  *(v0 + 8120) = v113;
  *(v0 + 8128) = &unk_2873AD498;
  *(v0 + 8136) = 2;
  *(v0 + 8144) = 0;
  *(v0 + 8152) = 0;
  *(v0 + 8160) = 0;
  *(v0 + 8168) = 4347218;
  *(v0 + 8176) = 0xE300000000000000;
  *(v0 + 8184) = sub_2611C7704(&unk_2873AD4C8);
  *(v0 + 0x2000) = v114;
  *(v0 + 8200) = &unk_2873AD4F0;
  *(v0 + 8208) = 2;
  *(v0 + 8216) = 0;
  *(v0 + 8224) = 0;
  *(v0 + 8232) = 0;
  *(v0 + 8240) = 4609874;
  *(v0 + 8248) = 0xE300000000000000;
  *(v0 + 8256) = sub_2611C7704(&unk_2873AD520);
  *(v0 + 8264) = v115;
  *(v0 + 8272) = &unk_2873AD548;
  *(v0 + 8280) = 0;
  *(v0 + 8288) = 0;
  *(v0 + 8296) = 0;
  *(v0 + 8304) = 0;
  *(v0 + 8312) = 5391187;
  *(v0 + 8320) = 0xE300000000000000;
  *(v0 + 8328) = sub_2611C7704(&unk_2873AD588);
  *(v0 + 8336) = v116;
  *(v0 + 8344) = &unk_2873AD5B0;
  *(v0 + 8352) = 2;
  *(v0 + 8360) = 0;
  *(v0 + 8368) = 0;
  *(v0 + 8376) = 0;
  *(v0 + 8384) = 5459795;
  *(v0 + 8392) = 0xE300000000000000;
  *(v0 + 8400) = sub_2611C7704(&unk_2873AD5F0);
  *(v0 + 8408) = v117;
  *(v0 + 8416) = &unk_2873AD618;
  *(v0 + 8424) = 2;
  *(v0 + 8432) = 0;
  *(v0 + 8440) = 0;
  *(v0 + 8448) = 0;
  *(v0 + 8456) = 5003859;
  *(v0 + 8464) = 0xE300000000000000;
  *(v0 + 8472) = sub_2611C7704(&unk_2873AD648);
  *(v0 + 8480) = v118;
  *(v0 + 8488) = &unk_2873AD670;
  *(v0 + 8496) = 2;
  *(v0 + 8504) = 0;
  *(v0 + 8512) = 0;
  *(v0 + 8520) = 0;
  *(v0 + 8528) = 5265747;
  *(v0 + 8536) = 0xE300000000000000;
  *(v0 + 8544) = sub_2611C7704(&unk_2873AD6A0);
  *(v0 + 8552) = v119;
  *(v0 + 8560) = &unk_2873AD6C8;
  *(v0 + 8568) = 2;
  *(v0 + 8576) = 0;
  *(v0 + 8584) = 0;
  *(v0 + 8592) = 0;
  *(v0 + 8600) = 5263188;
  *(v0 + 8608) = 0xE300000000000000;
  *(v0 + 8616) = sub_2611C7704(&unk_2873AD6F8);
  *(v0 + 8624) = v120;
  *(v0 + 8632) = &unk_2873AD720;
  *(v0 + 8640) = 2;
  *(v0 + 8648) = 0;
  *(v0 + 8656) = 0;
  *(v0 + 8664) = 0;
  *(v0 + 8672) = 4478036;
  *(v0 + 8680) = 0xE300000000000000;
  *(v0 + 8688) = sub_2611C7704(&unk_2873AD750);
  *(v0 + 8696) = v121;
  *(v0 + 8704) = &unk_2873AD778;
  *(v0 + 8712) = 2;
  *(v0 + 8720) = 0;
  *(v0 + 8728) = 0;
  *(v0 + 8736) = 0;
  *(v0 + 8744) = 4476500;
  *(v0 + 8752) = 0xE300000000000000;
  *(v0 + 8760) = sub_2611C7704(&unk_2873AD7A8);
  *(v0 + 8768) = v122;
  *(v0 + 8776) = &unk_2873AD7D0;
  *(v0 + 8784) = 3;
  *(v0 + 8792) = 0;
  *(v0 + 8800) = 0;
  *(v0 + 8808) = 0;
  *(v0 + 8816) = 5785429;
  *(v0 + 8824) = 0xE300000000000000;
  *(v0 + 8832) = sub_2611C7704(&unk_2873AD800);
  *(v0 + 8840) = v123;
  *(v0 + 8848) = &unk_2873AD828;
  *(v0 + 8856) = 0;
  *(v0 + 8864) = 0;
  *(v0 + 8872) = 0;
  *(v0 + 8880) = 0;
  *(v0 + 8888) = 4475725;
  *(v0 + 8896) = 0xE300000000000000;
  *(v0 + 8904) = sub_2611C7704(&unk_2873AD858);
  *(v0 + 8912) = v124;
  *(v0 + 8920) = &unk_2873AD880;
  *(v0 + 8928) = 2;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = 0;
  *(v0 + 8952) = 0;
  *(v0 + 8960) = 5261125;
  *(v0 + 8968) = 0xE300000000000000;
  *(v0 + 8976) = sub_2611C7704(&unk_2873AD8B0);
  *(v0 + 8984) = v125;
  *(v0 + 8992) = &unk_2873AD8D8;
  *(v0 + 9000) = 2;
  *(v0 + 9008) = 0;
  *(v0 + 9016) = 0;
  *(v0 + 9024) = 0;
  *(v0 + 9032) = 5462612;
  *(v0 + 9040) = 0xE300000000000000;
  *(v0 + 9048) = sub_2611C7704(&unk_2873AD908);
  *(v0 + 9056) = v126;
  *(v0 + 9064) = &unk_2873AD930;
  *(v0 + 9072) = 2;
  *(v0 + 9080) = 0;
  *(v0 + 9088) = 0;
  *(v0 + 9096) = 0;
  *(v0 + 9104) = 5593429;
  *(v0 + 9112) = 0xE300000000000000;
  *(v0 + 9120) = sub_2611C7704(&unk_2873AD960);
  *(v0 + 9128) = v127;
  *(v0 + 9136) = &unk_2873AD988;
  *(v0 + 9144) = 2;
  *(v0 + 9152) = 0;
  *(v0 + 9160) = 0;
  *(v0 + 9168) = 0;
  *(v0 + 9176) = 5462613;
  *(v0 + 9184) = 0xE300000000000000;
  *(v0 + 9192) = sub_2611C7704(&unk_2873AD9B8);
  *(v0 + 9200) = v128;
  *(v0 + 9208) = &unk_2873AD9E0;
  *(v0 + 9216) = 2;
  *(v0 + 9224) = 0;
  *(v0 + 9232) = 0;
  *(v0 + 9240) = 0;
  *(v0 + 9248) = 5526359;
  *(v0 + 9256) = 0xE300000000000000;
  *(v0 + 9264) = sub_2611C7704(&unk_2873ADA10);
  *(v0 + 9272) = v129;
  *(v0 + 9280) = &unk_2873ADA38;
  *(v0 + 9288) = 2;
  *(v0 + 9296) = 0;
  *(v0 + 9304) = 0;
  *(v0 + 9312) = 0;
  *(v0 + 9320) = 5391705;
  *(v0 + 9328) = 0xE300000000000000;
  *(v0 + 9336) = sub_2611C7704(&unk_2873ADA68);
  *(v0 + 9344) = v130;
  *(v0 + 9352) = &unk_2873ADA90;
  *(v0 + 9360) = 2;
  *(v0 + 9368) = 0;
  *(v0 + 9376) = 0;
  *(v0 + 9384) = 0;
  *(v0 + 9392) = 5457238;
  *(v0 + 9400) = 0xE300000000000000;
  *(v0 + 9408) = sub_2611C7704(&unk_2873ADAC0);
  *(v0 + 9416) = v131;
  *(v0 + 9424) = &unk_2873ADAE8;
  *(v0 + 9432) = 2;
  *(v0 + 9440) = 0;
  *(v0 + 9448) = 0;
  *(v0 + 9456) = 0;
  *(v0 + 9464) = 5591629;
  *(v0 + 9472) = 0xE300000000000000;
  *(v0 + 9480) = sub_2611C7704(&unk_2873ADB18);
  *(v0 + 9488) = v132;
  *(v0 + 9496) = &unk_2873ADB40;
  *(v0 + 9504) = 2;
  *(v0 + 9512) = 0;
  *(v0 + 9520) = 0;
  *(v0 + 9528) = 0;
  *(v0 + 9536) = 5133395;
  *(v0 + 9544) = 0xE300000000000000;
  *(v0 + 9552) = sub_2611C7704(&unk_2873ADB70);
  *(v0 + 9560) = v133;
  *(v0 + 9568) = &unk_2873ADB98;
  *(v0 + 9576) = 2;
  *(v0 + 9584) = 0;
  *(v0 + 9592) = 0;
  *(v0 + 9600) = 0;
  *(v0 + 9608) = 5524820;
  *(v0 + 9616) = 0xE300000000000000;
  *(v0 + 9624) = sub_2611C7704(&unk_2873ADBC8);
  *(v0 + 9632) = v134;
  *(v0 + 9640) = &unk_2873ADBF0;
  *(v0 + 9648) = 2;
  *(v0 + 9656) = 0;
  *(v0 + 9664) = 0;
  *(v0 + 9672) = 0;
  *(v0 + 9680) = 5457991;
  *(v0 + 9688) = 0xE300000000000000;
  *(v0 + 9696) = sub_2611C7704(&unk_2873ADC30);
  *(v0 + 9704) = v135;
  *(v0 + 9712) = &unk_2873ADC58;
  *(v0 + 9720) = 2;
  *(v0 + 9728) = 0;
  *(v0 + 9736) = 0;
  *(v0 + 9744) = 0;
  *(v0 + 9752) = 4670547;
  *(v0 + 9760) = 0xE300000000000000;
  *(v0 + 9768) = sub_2611C7704(&unk_2873ADC88);
  *(v0 + 9776) = v136;
  *(v0 + 9784) = &unk_2873ADCB0;
  *(v0 + 9792) = 2;
  *(v0 + 9800) = 0;
  *(v0 + 9808) = 0;
  *(v0 + 9816) = 0;
  *(v0 + 9824) = 4477778;
  *(v0 + 9832) = 0xE300000000000000;
  *(v0 + 9840) = sub_2611C7704(&unk_2873ADCE0);
  *(v0 + 9848) = v137;
  *(v0 + 9856) = &unk_2873ADD08;
  *(v0 + 9864) = 2;
  *(v0 + 9872) = 0;
  *(v0 + 9880) = 0;
  *(v0 + 9888) = 0;
  *(v0 + 9896) = 5134925;
  *(v0 + 9904) = 0xE300000000000000;
  *(v0 + 9912) = sub_2611C7704(&unk_2873ADD38);
  *(v0 + 9920) = v138;
  *(v0 + 9928) = &unk_2873ADD60;
  *(v0 + 9936) = 2;
  *(v0 + 9944) = 0;
  *(v0 + 9952) = 0;
  *(v0 + 9960) = 0;
  *(v0 + 9968) = 5853780;
  *(v0 + 9976) = 0xE300000000000000;
  *(v0 + 9984) = sub_2611C7704(&unk_2873ADD90);
  *(v0 + 9992) = v139;
  *(v0 + 10000) = &unk_2873ADDB8;
  *(v0 + 10008) = 2;
  *(v0 + 10016) = 0;
  *(v0 + 10024) = 0;
  *(v0 + 10032) = 0;
  *(v0 + 10040) = 4604248;
  *(v0 + 10048) = 0xE300000000000000;
  *(v0 + 10056) = sub_2611C7704(&unk_2873ADDE8);
  *(v0 + 10064) = v140;
  *(v0 + 10072) = &unk_2873ADE10;
  *(v0 + 10080) = 0;
  *(v0 + 10088) = 0;
  *(v0 + 10096) = 0;
  *(v0 + 10104) = 0;
  *(v0 + 10112) = 4604995;
  *(v0 + 10120) = 0xE300000000000000;
  *(v0 + 10128) = sub_2611C7704(&unk_2873ADE40);
  *(v0 + 10136) = v141;
  *(v0 + 10144) = &unk_2873ADE68;
  *(v0 + 10152) = 2;
  *(v0 + 10160) = 0;
  *(v0 + 10168) = 0;
  *(v0 + 10176) = 0;
  *(v0 + 10184) = 4473688;
  *(v0 + 10192) = 0xE300000000000000;
  *(v0 + 10200) = sub_2611C7704(&unk_2873ADE98);
  *(v0 + 10208) = v142;
  *(v0 + 10216) = &unk_2873ADEC0;
  *(v0 + 10224) = 2;
  *(v0 + 10232) = 0;
  *(v0 + 10240) = 0;
  *(v0 + 10248) = 0;
  *(v0 + 10256) = 4607832;
  *(v0 + 10264) = 0xE300000000000000;
  *(v0 + 10272) = sub_2611C7704(&unk_2873ADEF0);
  *(v0 + 10280) = v143;
  *(v0 + 10288) = &unk_2873ADF18;
  *(v0 + 10296) = 0;
  *(v0 + 10304) = 0;
  *(v0 + 10312) = 0;
  *(v0 + 10320) = 0;
  *(v0 + 10328) = 5721434;
  *(v0 + 10336) = 0xE300000000000000;
  *(v0 + 10344) = sub_2611C7704(&unk_2873ADF48);
  *(v0 + 10352) = v144;
  *(v0 + 10360) = &unk_2873ADF70;
  *(v0 + 10368) = 2;
  *(v0 + 10376) = 0;
  *(v0 + 10384) = 0;
  *(v0 + 10392) = 0;
  *(v0 + 10400) = 4477523;
  *(v0 + 10408) = 0xE300000000000000;
  *(v0 + 10416) = sub_2611C7704(&unk_2873ADFA0);
  *(v0 + 10424) = v145;
  *(v0 + 10432) = &unk_2873ADFC8;
  *(v0 + 10440) = 2;
  *(v0 + 10448) = 0;
  *(v0 + 10456) = 0;
  *(v0 + 10464) = 0;
  *(v0 + 10472) = 4278093;
  *(v0 + 10480) = 0xE300000000000000;
  *(v0 + 10488) = sub_2611C7704(&unk_2873ADFF8);
  *(v0 + 10496) = v146;
  *(v0 + 10504) = &unk_2873AE020;
  *(v0 + 10512) = 2;
  *(v0 + 10520) = 0;
  *(v0 + 10528) = 0;
  *(v0 + 10536) = 0;
  *(v0 + 10544) = 5129793;
  *(v0 + 10552) = 0xE300000000000000;
  *(v0 + 10560) = sub_2611C7704(&unk_2873AE050);
  *(v0 + 10568) = v147;
  *(v0 + 10576) = &unk_2873AE078;
  *(v0 + 10584) = 2;
  *(v0 + 10592) = 0;
  *(v0 + 10600) = 0;
  *(v0 + 10608) = 0;
  *(v0 + 10616) = 5458516;
  *(v0 + 10624) = 0xE300000000000000;
  *(v0 + 10632) = sub_2611C7704(&unk_2873AE0A8);
  *(v0 + 10640) = v148;
  *(v0 + 10648) = &unk_2873AE0D0;
  *(v0 + 10656) = 2;
  *(v0 + 10664) = 0;
  *(v0 + 10672) = 0;
  *(v0 + 10680) = 0;
  *(v0 + 10688) = 4280129;
  *(v0 + 10696) = 0xE300000000000000;
  *(v0 + 10704) = sub_2611C7704(&unk_2873AE100);
  *(v0 + 10712) = v149;
  *(v0 + 10720) = &unk_2873AE128;
  *(v0 + 10728) = 2;
  *(v0 + 10736) = 0;
  *(v0 + 10744) = 0;
  *(v0 + 10752) = 0;
  *(v0 + 10760) = 5062978;
  *(v0 + 10768) = 0xE300000000000000;
  *(v0 + 10776) = sub_2611C7704(&unk_2873AE158);
  *(v0 + 10784) = v150;
  *(v0 + 10792) = &unk_2873AE180;
  *(v0 + 10800) = 2;
  *(v0 + 10808) = 0;
  *(v0 + 10816) = 0;
  *(v0 + 10824) = 0;
  v151 = sub_2611F9204(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DC8, &qword_261225CF0);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FE949E0 = v151;
  return result;
}

uint64_t static CurrencyDefinitions.list.getter()
{
  if (qword_27FE949D8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_2611F8B98(uint64_t a1)
{
  sub_26121C8A0();
  sub_2611F8FD8(&qword_27FE87DB8, MEMORY[0x277CC96A8]);
  v2 = sub_26121CBC0();

  return sub_2611F8C1C(a1, v2);
}

unint64_t sub_2611F8C1C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26121C8A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2611F8FD8(&qword_27FE87620, MEMORY[0x277CC96B0]);
      v15 = sub_26121CC20();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2611F8DC8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2611F8E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2611F8EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2611F8F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2611F8FD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26121C8A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2611F901C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DE0, &qword_261225D10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DE8, &qword_261225D18);
    v7 = sub_26121D310();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2611ABE1C(v9, v5, &qword_27FE87DE0, &qword_261225D10);
      result = sub_2611F8B98(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26121C8A0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2611F9204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87DD0, &qword_261225CF8);
    v3 = sub_26121D310();

    for (i = a1 + 48; ; i += 72)
    {
      v20 = v1;
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i + 8);
      v9 = *(i + 16);
      v10 = *(i + 24);
      v11 = *(i + 32);
      v12 = *(i + 48);
      v21 = *(i + 40);

      sub_26119D904(v7, v8);

      result = sub_2611B3970(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 56 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      *(v16 + 40) = v21;
      *(v16 + 48) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2611F9364(char a1)
{
  result = 0x726F6D654D727073;
  switch(a1)
  {
    case 1:
    case 23:
    case 43:
    case 46:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
    case 42:
    case 50:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x4970696B53727073;
      break;
    case 5:
    case 34:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x4D49556C61636F6CLL;
      break;
    case 7:
      result = 0x6F46726564616572;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x474D4D6563726F66;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x4C79636176697270;
      break;
    case 12:
      result = 0x4149556563726F66;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x6E41656C62616E65;
      break;
    case 16:
    case 33:
    case 39:
      v3 = 5;
      goto LABEL_33;
    case 17:
    case 27:
    case 28:
    case 51:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x6556534F6B636F6DLL;
      break;
    case 19:
      result = 0x6F676F4C6B636F6DLL;
      break;
    case 20:
      result = 0x4E424D6B636F6DLL;
      break;
    case 21:
      result = 0x43434D6B636F6DLL;
      break;
    case 22:
      result = 0x6E756F436B636F6DLL;
      break;
    case 24:
    case 40:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
    case 37:
      result = 0xD000000000000013;
      break;
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0xD000000000000020;
      break;
    case 31:
      result = 0x6378454244666173;
      break;
    case 32:
      result = 0x726F434244666173;
      break;
    case 35:
      result = 0x447061546B636F6DLL;
      break;
    case 36:
      result = 0xD000000000000012;
      break;
    case 38:
      result = 0x504F434A6B636F6DLL;
      break;
    case 41:
      result = 0xD000000000000012;
      break;
    case 44:
      result = 0x54656C6261736964;
      break;
    case 45:
      result = 0x616C6544656E6F64;
      break;
    case 47:
    case 48:
      v3 = 9;
LABEL_33:
      result = v3 | 0xD000000000000012;
      break;
    case 49:
      result = 0xD00000000000001ALL;
      break;
    case 52:
      result = 0xD000000000000012;
      break;
    case 53:
      result = 0xD000000000000012;
      break;
    case 54:
      result = 0x73726556534F656DLL;
      break;
    case 55:
      result = 0x656369766544656DLL;
      break;
    case 56:
      result = 0x4E49506563726F66;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_2611F9A14(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2611F9364(*a1);
  v5 = v4;
  if (v3 == sub_2611F9364(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26121D4D0();
  }

  return v8 & 1;
}

uint64_t sub_2611F9A9C()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_2611F9364(v1);
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_2611F9B00(uint64_t a1)
{
  sub_2611F9364(*v1);
  sub_26121CD50();
}

uint64_t sub_2611F9B54(uint64_t a1)
{
  v2 = *v1;
  sub_26121D5B0();
  sub_2611F9364(v2);
  sub_26121CD50();

  return sub_26121D5D0();
}

unint64_t sub_2611F9BB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2611F9D2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2611F9BE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2611F9364(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2611F9C10()
{
  sub_26121D5B0();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t sub_2611F9C74(uint64_t a1)
{
  sub_26121D5B0();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t sub_2611F9CC0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26121D340();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2611F9D2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26121D4F0();

  if (v2 >= 0x39)
  {
    return 57;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2611F9D84()
{
  result = qword_27FE87DF0;
  if (!qword_27FE87DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87DF0);
  }

  return result;
}

unint64_t sub_2611F9DDC()
{
  result = qword_27FE87DF8;
  if (!qword_27FE87DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonPrefKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 56;
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

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonPrefKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
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
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2611F9F90()
{
  sub_2611FB7AC();
  result = sub_26121D0B0();
  qword_27FE9F1E8 = result;
  return result;
}

uint64_t type metadata accessor for CRSignpost(uint64_t a1)
{
  result = qword_27FE95648;
  if (!qword_27FE95648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2611FA074()
{
  result = qword_27FE87E08;
  if (!qword_27FE87E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87E00, &qword_261225E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87E08);
  }

  return result;
}

uint64_t sub_2611FA0F0(uint64_t (*a1)(void))
{
  v2 = a1();
  if (qword_27FE94D00 != -1)
  {
    swift_once();
  }

  v3 = qword_27FE9F1E8;
  v4 = (v1 + *(type metadata accessor for CRSignpost(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);

  return MEMORY[0x282200C68](v2, &dword_261197000, v3, v5, v6, v7, v1);
}

uint64_t sub_2611FA1AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5();
  if (qword_27FE94D00 != -1)
  {
    swift_once();
  }

  type metadata accessor for CRSignpost(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F8, &unk_2612203E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2612203B0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87E00, &qword_261225E88);
  *(v6 + 64) = sub_2611FA074();
  *(v6 + 32) = a4;

  sub_26121CA00();
}

uint64_t sub_2611FA33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRSignpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611FB498(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26121CA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRSignpost(0);
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  sub_26121CA20();
  v13 = v12 + *(v11 + 20);
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  return (*(v8 + 32))(v12, v10, v7);
}

uint64_t sub_2611FB5D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CRSignpost(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_2611FA33C(v7, a4);
}

uint64_t sub_2611FB648(uint64_t a1, uint64_t a2)
{
  v4 = sub_26121CA30();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2611FB6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26121CA30();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2611FB738(uint64_t a1)
{
  result = sub_26121CA30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2611FB7AC()
{
  result = qword_27FE87E10;
  if (!qword_27FE87E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE87E10);
  }

  return result;
}

void *UncheckedSendableXPCConnection.connectionError.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t UncheckedSendableXPCConnection.init(wrapped:connectionError:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t UncheckedSendableXPCConnection.performWithRemoteObjectProxy<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *v5;
  return MEMORY[0x2822009F8](sub_2611FB864, 0, 0);
}

{
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *v5;
  return MEMORY[0x2822009F8](sub_2611FC180, 0, 0);
}

uint64_t sub_2611FB864()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2611FB974;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000020, 0x8000000261230050, sub_2611FBAB0, v3, v7);
}

uint64_t sub_2611FB974()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2611FD850, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2611FBAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v14;
  v8[23] = v15;
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v8[24] = swift_task_alloc();
  v9 = sub_26121D0C0();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = *(v14 - 8);
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v10 = sub_26121CF30();
  v8[30] = v10;
  v11 = *(v10 - 8);
  v8[31] = v11;
  v8[32] = *(v11 + 64);
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611FBCB8, 0, 0);
}

uint64_t sub_2611FBCB8()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v38 = v0[28];
  v5 = v0[18];
  v6 = v0[17];
  v39 = *(v0 + 11);
  (*(v4 + 16))(v1, v0[19], v3);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = v39;
  (*(v4 + 32))(v9 + v7, v1, v3);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;
  v0[6] = sub_2611FD84C;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2611FC0E8;
  v0[5] = &block_descriptor_29;
  v11 = _Block_copy(v0 + 2);
  v12 = v6;
  v13 = v5;

  v14 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_26121D150();
  swift_unknownObjectRelease();
  sub_2611AC930((v0 + 8), (v0 + 12));
  v15 = swift_dynamicCast();
  v16 = *(v38 + 56);
  if (v15)
  {
    v18 = v0[28];
    v17 = v0[29];
    v19 = v0[27];
    v20 = v0[22];
    v21 = v0[19];
    v22 = v0[20];
    v16(v19, 0, 1, v20);
    (*(v18 + 32))(v17, v19, v20);
    v22(v17, v21);
    (*(v18 + 8))(v17, v20);
  }

  else
  {
    v24 = v0[26];
    v23 = v0[27];
    v26 = v0[24];
    v25 = v0[25];
    v16(v23, 1, 1, v0[22]);
    (*(v24 + 8))(v23, v25);
    v27 = sub_2611F02B4();
    sub_2611ABE1C(v27, v26, &qword_27FE87700, &unk_2612203D0);
    v28 = sub_26121CA60();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      sub_2611AC114(v0[24], &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v30 = sub_26121CA40();
      v31 = sub_26121CFC0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_261197000, v30, v31, "Service not available to create a session", v32, 2u);
        MEMORY[0x2666FCF20](v32, -1, -1);
      }

      v33 = v0[24];

      (*(v29 + 8))(v33, v28);
    }

    v34 = v0[18];
    v0[16] = v34;
    v35 = v34;
    sub_26121CF20();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v36 = v0[1];

  return v36();
}

void sub_2611FC0E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2611FC180()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2611FC290;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000020, 0x8000000261230050, sub_2611FC670, v3, v7);
}

uint64_t sub_2611FC290()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2611FC3CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2611FC3CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2611FC430(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30[1] = a8;
  v31 = a6;
  v32 = a4;
  v33 = a5;
  v34 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v13 = sub_26121CF30();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v30 - v19;
  v21 = sub_26121CF50();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, a1, v13);
  v22 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v31;
  *(v24 + 5) = a7;
  *(v24 + 6) = a2;
  *(v24 + 7) = a3;
  (*(v14 + 32))(&v24[v22], v17, v13);
  v25 = &v24[v23];
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  v27 = a2;
  v28 = a3;

  sub_2611EC844(0, 0, v20, v34, v24);
}

uint64_t sub_2611FC6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2611FC710(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2611FC758(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2611FC7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v14;
  v8[23] = v15;
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v8[24] = swift_task_alloc();
  v9 = sub_26121D0C0();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = *(v14 - 8);
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v10 = sub_26121CF30();
  v8[30] = v10;
  v11 = *(v10 - 8);
  v8[31] = v11;
  v8[32] = *(v11 + 64);
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611FC994, 0, 0);
}

uint64_t sub_2611FC994()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v40 = v0[28];
  v5 = v0[18];
  v6 = v0[17];
  v41 = *(v0 + 11);
  (*(v4 + 16))(v1, v0[19], v3);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = v41;
  (*(v4 + 32))(v9 + v7, v1, v3);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;
  v0[6] = sub_2611FD3EC;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2611FC0E8;
  v0[5] = &block_descriptor_3;
  v11 = _Block_copy(v0 + 2);
  v12 = v6;
  v13 = v5;

  v14 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_26121D150();
  swift_unknownObjectRelease();
  sub_2611AC930((v0 + 8), (v0 + 12));
  v15 = swift_dynamicCast();
  v16 = *(v40 + 56);
  if (v15)
  {
    v18 = v0[28];
    v17 = v0[29];
    v19 = v0[27];
    v20 = v0[22];
    v21 = v0[20];
    v16(v19, 0, 1, v20);
    (*(v18 + 32))(v17, v19, v20);
    v42 = (v21 + *v21);
    v22 = swift_task_alloc();
    v0[34] = v22;
    *v22 = v0;
    v22[1] = sub_2611FCE74;
    v23 = v0[29];
    v24 = v0[19];

    return v42(v23, v24);
  }

  else
  {
    v27 = v0[26];
    v26 = v0[27];
    v29 = v0[24];
    v28 = v0[25];
    v16(v26, 1, 1, v0[22]);
    (*(v27 + 8))(v26, v28);
    v30 = sub_2611F02B4();
    sub_2611ABE1C(v30, v29, &qword_27FE87700, &unk_2612203D0);
    v31 = sub_26121CA60();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v29, 1, v31) == 1)
    {
      sub_2611AC114(v0[24], &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v33 = sub_26121CA40();
      v34 = sub_26121CFC0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_261197000, v33, v34, "Service not available to create a session", v35, 2u);
        MEMORY[0x2666FCF20](v35, -1, -1);
      }

      v36 = v0[24];

      (*(v32 + 8))(v36, v31);
    }

    v37 = v0[18];
    v0[16] = v37;
    v38 = v37;
    sub_26121CF20();
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_2611FCE74()
{

  return MEMORY[0x2822009F8](sub_2611FCF70, 0, 0);
}

uint64_t sub_2611FCF70()
{
  (*(v0[28] + 8))(v0[29], v0[22]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2611FD020()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v2 = *(sub_26121CF30() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2611BBFEC;

  return sub_2611FC7AC(v9, v10, v11, v4, v5, v0 + v3, v7, v8);
}

uint64_t sub_2611FD178(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = sub_2611F02B4();
  sub_2611ABE1C(v10, v9, &qword_27FE87700, &unk_2612203D0);
  v11 = sub_26121CA60();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_2611AC114(v9, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v13 = a1;
    v14 = sub_26121CA40();
    v15 = sub_26121CFC0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23[0] = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_261197000, v14, v15, "Error using service: [ %@ ]", v17, 0xCu);
      sub_2611AC114(v18, &qword_27FE87528, &qword_261221500);
      MEMORY[0x2666FCF20](v18, -1, -1);
      MEMORY[0x2666FCF20](v17, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  v23[1] = a3;
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  sub_26121CF30();
  return sub_26121CF20();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v1 = sub_26121CF30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2611FD51C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v2 = *(sub_26121CF30() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2611D4F60;

  return sub_2611FBAD0(v9, v10, v11, v4, v5, v0 + v3, v7, v8);
}

uint64_t objectdestroy_17Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v1 = sub_26121CF30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2611FD744(void *a1)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v4 = *(sub_26121CF30() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  return sub_2611FD178(a1, v1 + v5, *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v3);
}

uint64_t TaskSerializer.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t TaskSerializer.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_2611FD8C4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_26121CF50();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = v2[14];
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v12 = *(v5 + 80);
  v11[4] = v12;
  v11[5] = v10;
  v11[6] = a1;
  v11[7] = a2;

  v2[14] = sub_2611FE064(0, 0, v8, &unk_261225F60, v11, v12);
}

uint64_t sub_2611FDA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87550, &qword_261221C30);
  v7[8] = sub_26121D5E0();
  v8 = sub_26121D0C0();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611FDB20, 0, 0);
}

uint64_t sub_2611FDB20()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2611FDD04;
    v3 = v0[11];
    v4 = v0[6];
    v5 = v0[7];
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v3, v1, v4, v5, v6);
  }

  else
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    v10 = v0[4];
    (*(*(v0[8] - 8) + 56))(v7, 1, 1);
    (*(v8 + 8))(v7, v9);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_2611FDF54;
    v12 = v0[2];

    return v14(v12);
  }
}

uint64_t sub_2611FDD04()
{

  return MEMORY[0x2822009F8](sub_2611FDE00, 0, 0);
}

uint64_t sub_2611FDE00()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[4];
  (*(*(v0[8] - 8) + 56))(v1, 0, 1);
  (*(v2 + 8))(v1, v3);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_2611FDF54;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_2611FDF54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2611FE064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_2611FE5AC(a3, &v24[-1] - v11);
  v13 = sub_26121CF50();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2611FE61C(v12);
  }

  else
  {
    sub_26121CF40();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26121CF10();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26121CD20();
      sub_2611FE330(v20 + 32, v24);

      v21 = v24[0];
      sub_2611FE61C(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2611FE61C(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t TaskSerializer.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskSerializer.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2611FE330@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2611FE3EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2611FE434(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2611BBFEC;

  return sub_2611FDA1C(a1, v8, v9, v5, v7, v6, v4);
}

uint64_t sub_2611FE5AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611FE61C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MobileDriversLicenseDataRequestInternal.hostPreferredLocaleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier);

  return v1;
}

uint64_t MobileDriversLicenseDataRequestInternal.sessionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier);

  return v1;
}

uint64_t MobileDriversLicenseDataRequestInternal.description.getter()
{
  v1 = v0;
  sub_26121D1E0();
  MEMORY[0x2666FBF20](0xD00000000000001FLL, 0x80000002612300A0);
  MEMORY[0x2666FBF20](*(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier), *(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier + 8));
  MEMORY[0x2666FBF20](0xD000000000000019, 0x80000002612300C0);
  MEMORY[0x2666FBF20](*(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier), *(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier + 8));
  MEMORY[0x2666FBF20](0x65757165520A5D20, 0xEF205B203A737473);
  type metadata accessor for IdentityDocumentType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87E40, &qword_261225FF8);
  sub_261200568(&unk_27FE87E48, 255, type metadata accessor for IdentityDocumentType, &protocol conformance descriptor for IdentityDocumentType);
  v2 = sub_26121CBB0();
  MEMORY[0x2666FBF20](v2);

  MEMORY[0x2666FBF20](0xD00000000000001ALL, 0x80000002612300E0);
  if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_isRawDataRequest))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_isRawDataRequest))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2666FBF20](v3, v4);

  MEMORY[0x2666FBF20](23840, 0xE200000000000000);
  return 0;
}

id MobileDriversLicenseDataRequestInternal.__allocating_init(requests:isRawDataRequest:hostPreferredLocaleIdentifier:sessionIdentifier:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_requests] = a1;
  v13[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_isRawDataRequest] = a2;
  v14 = &v13[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier];
  *v14 = a3;
  v14[1] = a4;
  v15 = &v13[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier];
  *v15 = a5;
  v15[1] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id MobileDriversLicenseDataRequestInternal.init(requests:isRawDataRequest:hostPreferredLocaleIdentifier:sessionIdentifier:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_requests] = a1;
  v6[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_isRawDataRequest] = a2;
  v14 = &v6[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier];
  *v14 = a3;
  v14[1] = a4;
  v15 = &v6[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier];
  *v15 = a5;
  v15[1] = a6;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id MobileDriversLicenseDataRequestInternal.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_26119FDE8();
  v5 = sub_26121D060();
  if (v5)
  {
    v6 = v5;
    v7 = sub_26121C690();
    v9 = v8;

    v10 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_26119D904(v7, v9);
    v11 = sub_2611A0014(v7, v9);
    sub_26119DA0C(v7, v9);
    if (v11)
    {
      sub_261200568(&qword_27FE87E58, v12, type metadata accessor for MobileDriversLicenseDataRequestInternal, &protocol conformance descriptor for MobileDriversLicenseDataRequestInternal);
      sub_26121CFF0();
      v14 = v22;
      if (v22)
      {
        *&v2[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_requests] = *&v22[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_requests];
        v2[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_isRawDataRequest] = v14[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_isRawDataRequest];
        v15 = *&v14[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier + 8];
        v16 = &v2[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier];
        *v16 = *&v14[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier];
        v16[1] = v15;
        v18 = *&v14[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier];
        v17 = *&v14[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier + 8];

        v19 = &v2[OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier];
        *v19 = v18;
        v19[1] = v17;
        [v11 finishDecoding];

        sub_26119DA0C(v7, v9);
        v21.receiver = v2;
        v21.super_class = ObjectType;
        v20 = objc_msgSendSuper2(&v21, sel_init);

        return v20;
      }

      [v11 finishDecoding];
    }

    sub_26119DA0C(v7, v9);
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall MobileDriversLicenseDataRequestInternal.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_261200568(&qword_27FE87E60, v3, type metadata accessor for MobileDriversLicenseDataRequestInternal, &protocol conformance descriptor for MobileDriversLicenseDataRequestInternal);
  sub_26121CFE0();
  [v2 finishEncoding];
  v4 = [v2 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_26121CC50();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

id MobileDriversLicenseDataRequestInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_2611FEFCC()
{
  v1 = 0x7374736575716572;
  v2 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2611FF058@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261200880(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2611FF080(uint64_t a1)
{
  v2 = sub_2612002D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611FF0BC(uint64_t a1)
{
  v2 = sub_2612002D8();

  return MEMORY[0x2821FE720](a1, v2);
}

id MobileDriversLicenseDataRequestInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MobileDriversLicenseDataRequestInternal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87E68, &qword_261226000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612002D8();
  sub_26121D600();
  v11 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_requests);
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87E70, &qword_261226008);
  sub_26120032C();
  sub_26121D4A0();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_26121D470();
  v10[5] = 2;
  sub_26121D460();
  v10[4] = 3;
  sub_26121D460();
  return (*(v6 + 8))(v8, v5);
}

_BYTE *MobileDriversLicenseDataRequestInternal.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87E98, &qword_261226010);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612002D8();
  sub_26121D5F0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87E70, &qword_261226008);
    v18 = 0;
    sub_261200474();
    sub_26121D3F0();
    *(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_requests) = v19;
    LOBYTE(v19) = 1;
    *(v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_isRawDataRequest) = sub_26121D3C0() & 1;
    LOBYTE(v19) = 2;
    v10 = sub_26121D3B0();
    v11 = (v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_hostPreferredLocaleIdentifier);
    *v11 = v10;
    v11[1] = v12;
    LOBYTE(v19) = 3;
    v13 = sub_26121D3B0();
    v14 = (v1 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier);
    *v14 = v13;
    v14[1] = v15;
    v17.receiver = v1;
    v17.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

_BYTE *sub_2611FF6E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MobileDriversLicenseDataRequestInternal.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequestInternal.isEmpty.getter()
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87EC0, &qword_261226018);
  v1 = MEMORY[0x28223BE20](v30);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v29 = &v28 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_requests);
  if (*(v8 + 16))
  {
    KeyPath = swift_getKeyPath();
    v32 = v8;
    v9 = v8 + 64;
    v10 = 1 << *(v8 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v8 + 64);
    v13 = (v10 + 63) >> 6;

    v15 = 0;
    while (v12)
    {
      v16 = v15;
LABEL_11:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v16 << 6);
      v19 = v32;
      v20 = *(v32 + 48);
      v21 = type metadata accessor for IdentityDocumentType(0);
      sub_2612006E0(v20 + *(*(v21 - 8) + 72) * v18, v7);
      v22 = *(*(v19 + 56) + 8 * v18);
      v24 = v29;
      v23 = v30;
      *&v7[*(v30 + 48)] = v22;
      sub_261200744(v7, v24);
      v25 = *(v23 + 48);
      v26 = *(v24 + v25);
      sub_2612007B4(v24, v3);
      *&v3[v25] = v26;

      swift_getAtKeyPath();
      sub_261200818(v3);
      result = sub_261200818(v7);
      if ((v33 & 1) == 0)
      {
        v27 = 0;
LABEL_14:

        return v27;
      }
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v27 = 1;
        goto LABEL_14;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        v15 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

void *MobileDriversLicenseDataRequestInternal.requestedElements.getter()
{
  v1 = type metadata accessor for IdentityDocumentType(0);
  v63 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v62 = &v56 - v5;
  v6 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_requests);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87ED0, &qword_26122ADF0);
  v7 = sub_26121D2F0();
  v8 = v7;
  v9 = 0;
  v10 = *(v6 + 64);
  v56 = v6 + 64;
  v60 = v4;
  v61 = v6;
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v58 = v7 + 64;
  v59 = v7;
  v57 = v14;
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_5:
  v15 = __clz(__rbit64(v13));
  v64 = (v13 - 1) & v13;
LABEL_11:
  v18 = v15 | (v9 << 6);
  v20 = v61;
  v19 = v62;
  v21 = *(v61 + 48);
  v22 = *(v63 + 72) * v18;
  v65 = v9;
  v66 = v22;
  sub_2612006E0(v21 + v22, v62);
  v23 = *(v20 + 56);
  v67 = v18;
  v24 = *(v23 + 8 * v18);
  sub_2612007B4(v19, v4);

  v25 = sub_2612009EC(MEMORY[0x277D84F90]);
  v26 = v24 + 64;
  v27 = 1 << *(v24 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v24 + 64);
  v30 = (v27 + 63) >> 6;
  v68 = v24;

  v31 = 0;
  if (v29)
  {
    goto LABEL_17;
  }

LABEL_18:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      v52 = v67;
      v8 = v59;
      *(v58 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      v4 = v60;
      sub_2612007B4(v60, v8[6] + v66);
      *(v8[7] + 8 * v52) = v25;
      v53 = v8[2];
      v50 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v50)
      {
        goto LABEL_39;
      }

      v8[2] = v54;
      v13 = v64;
      v9 = v65;
      v14 = v57;
      if (v64)
      {
        goto LABEL_5;
      }

LABEL_6:
      v16 = v9;
      do
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_36;
        }

        if (v9 >= v14)
        {
          return v8;
        }

        v17 = *(v56 + 8 * v9);
        ++v16;
      }

      while (!v17);
      v15 = __clz(__rbit64(v17));
      v64 = (v17 - 1) & v17;
      goto LABEL_11;
    }

    v29 = *(v26 + 8 * v32);
    ++v31;
    if (v29)
    {
      while (1)
      {
        v33 = __clz(__rbit64(v29)) | (v32 << 6);
        v34 = *(v68 + 48) + 16 * v33;
        v35 = *v34;
        LOBYTE(v34) = *(v34 + 8);
        v69 = *(*(v68 + 56) + v33);
        v70 = v35;
        v71 = v34;
        v36 = sub_26121CCF0();
        v38 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v25;
        v41 = sub_2611B3970(v36, v38);
        v42 = v25[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_37;
        }

        v45 = v40;
        if (v25[3] >= v44)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26120014C();
          }
        }

        else
        {
          sub_2611FFEAC(v44, isUniquelyReferenced_nonNull_native);
          v46 = sub_2611B3970(v36, v38);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_40;
          }

          v41 = v46;
        }

        v29 &= v29 - 1;
        if (v45)
        {
          break;
        }

        v25 = v70;
        v70[(v41 >> 6) + 8] |= 1 << v41;
        v48 = (v25[6] + 16 * v41);
        *v48 = v36;
        v48[1] = v38;
        *(v25[7] + v41) = v69;
        v49 = v25[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_38;
        }

        v25[2] = v51;
        v31 = v32;
        if (!v29)
        {
          goto LABEL_18;
        }

LABEL_17:
        v32 = v31;
      }

      v25 = v70;
      *(v70[7] + v41) = v69;
      v31 = v32;
      if (v29)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_26121D520();
  __break(1u);
  return result;
}

uint64_t sub_2611FFE44()
{
  v1 = *(*v0 + OBJC_IVAR____TtC19ProximityReaderCore39MobileDriversLicenseDataRequestInternal_sessionIdentifier);

  return v1;
}

uint64_t sub_2611FFEAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87EE0, &unk_261226240);
  v34 = v4;
  result = sub_26121D300();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_26121D5B0();
      sub_26121CD50();
      result = sub_26121D5D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_26120014C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87EE0, &unk_261226240);
  v2 = *v0;
  v3 = sub_26121D2F0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

unint64_t sub_2612002D8()
{
  result = qword_27FE957E0[0];
  if (!qword_27FE957E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE957E0);
  }

  return result;
}

unint64_t sub_26120032C()
{
  result = qword_27FE87E78;
  if (!qword_27FE87E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87E70, &qword_261226008);
    sub_261200568(&qword_27FE87E80, 255, type metadata accessor for IdentityDocumentType, &protocol conformance descriptor for IdentityDocumentType);
    sub_2612005B0(&qword_27FE87E88, sub_261200420, MEMORY[0x277D839B8], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87E78);
  }

  return result;
}

unint64_t sub_261200420()
{
  result = qword_27FE87E90;
  if (!qword_27FE87E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87E90);
  }

  return result;
}

unint64_t sub_261200474()
{
  result = qword_27FE87EA0;
  if (!qword_27FE87EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87E70, &qword_261226008);
    sub_261200568(&qword_27FE88380, 255, type metadata accessor for IdentityDocumentType, &protocol conformance descriptor for IdentityDocumentType);
    sub_2612005B0(&unk_27FE87EB0, sub_261200634, MEMORY[0x277D839D0], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87EA0);
  }

  return result;
}

uint64_t sub_261200568(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2612005B0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87E40, &qword_261225FF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261200634()
{
  result = qword_27FE88530;
  if (!qword_27FE88530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88530);
  }

  return result;
}

unint64_t sub_26120068C()
{
  result = qword_27FE87EC8;
  if (!qword_27FE87EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87EC8);
  }

  return result;
}

uint64_t sub_2612006E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityDocumentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261200744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87EC0, &qword_261226018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612007B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityDocumentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261200818(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87EC0, &qword_261226018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261200880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374736575716572 && a2 == 0xE800000000000000;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002612301A0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002612301C0 == a2 || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002612301E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_26121D4D0();

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

unint64_t sub_2612009EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87EE0, &unk_261226240);
    v3 = sub_26121D310();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2611B3970(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_261200B64()
{
  result = qword_27FE959F0[0];
  if (!qword_27FE959F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE959F0);
  }

  return result;
}

unint64_t sub_261200BBC()
{
  result = qword_27FE95B00;
  if (!qword_27FE95B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95B00);
  }

  return result;
}

unint64_t sub_261200C14()
{
  result = qword_27FE95B08[0];
  if (!qword_27FE95B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE95B08);
  }

  return result;
}

uint64_t IdentityInternalRequest.merchantDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *v1;
  v6 = *(v1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v5;
  sub_26119D8F8(v2, v6);
}

__n128 IdentityInternalRequest.init(merchantDetails:requestType:validationMode:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *a3;
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  *(a4 + 48) = v6;
  *(a4 + 49) = v7;
  return result;
}

uint64_t sub_261200D0C()
{
  v1 = 0x5474736575716572;
  if (*v0 != 1)
  {
    v1 = 0x69746164696C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E61686372656DLL;
  }
}

uint64_t sub_261200D88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2612045DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261200DB0(uint64_t a1)
{
  v2 = sub_261201090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261200DEC(uint64_t a1)
{
  v2 = sub_261201090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityInternalRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87EF0, &qword_261226280);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v21 = *(v1 + 32);
  v22 = v8;
  v31 = *(v1 + 48);
  v20 = *(v1 + 49);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_26119D8F8(v6, v7);
  sub_261201090();

  sub_26121D600();
  v25 = v6;
  v26 = v7;
  v27 = v22;
  v28 = v9;
  v29 = v21;
  v30 = v10;
  v32 = 0;
  sub_2612010E4();
  v15 = v23;
  sub_26121D4A0();
  sub_26119DA00(v25, v26);

  if (v15)
  {
    return (*(v24 + 8))(v5, v14);
  }

  v17 = v20;
  v18 = v24;
  LOBYTE(v25) = v31;
  v32 = 1;
  sub_261201138();
  sub_26121D4A0();
  LOBYTE(v25) = v17;
  v32 = 2;
  sub_26120118C();
  sub_26121D450();
  return (*(v18 + 8))(v5, v14);
}

unint64_t sub_261201090()
{
  result = qword_27FE95B90;
  if (!qword_27FE95B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95B90);
  }

  return result;
}

unint64_t sub_2612010E4()
{
  result = qword_27FE87EF8;
  if (!qword_27FE87EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87EF8);
  }

  return result;
}

unint64_t sub_261201138()
{
  result = qword_27FE87F00;
  if (!qword_27FE87F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87F00);
  }

  return result;
}

unint64_t sub_26120118C()
{
  result = qword_27FE87F08;
  if (!qword_27FE87F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87F08);
  }

  return result;
}

uint64_t IdentityInternalRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F10, &qword_261226288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261201090();
  sub_26121D5F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  sub_2612014C4();
  sub_26121D3F0();
  v22 = v29;
  v9 = v30;
  v10 = v32;
  v23 = v33;
  v24 = v31;
  LOBYTE(v25) = 1;
  sub_261201518();
  sub_26121D3F0();
  v20 = v10;
  v21 = v9;
  LODWORD(v10) = v29;
  v37 = 2;
  sub_26120156C();
  sub_26121D3A0();
  (*(v6 + 8))(v8, v5);
  v36 = v38;
  v11 = v22;
  v25 = v22;
  v12 = v20;
  v13 = v21;
  v14 = v24;
  *&v26 = v21;
  *(&v26 + 1) = v24;
  v15 = v10;
  HIDWORD(v19) = v10;
  v16 = v23;
  *&v27 = v20;
  *(&v27 + 1) = v23;
  LOBYTE(v28) = v15;
  HIBYTE(v28) = v38;
  v17 = v26;
  *a2 = v22;
  *(a2 + 16) = v17;
  *(a2 + 32) = v27;
  *(a2 + 48) = v28;
  sub_2612015C0(&v25, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v11;
  v30 = v13;
  v31 = v14;
  v32 = v12;
  v33 = v16;
  v34 = BYTE4(v19);
  v35 = v36;
  return sub_2612015F8(&v29);
}

unint64_t sub_2612014C4()
{
  result = qword_27FE87F18;
  if (!qword_27FE87F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87F18);
  }

  return result;
}

unint64_t sub_261201518()
{
  result = qword_27FE87F20;
  if (!qword_27FE87F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87F20);
  }

  return result;
}

unint64_t sub_26120156C()
{
  result = qword_27FE87F28;
  if (!qword_27FE87F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87F28);
  }

  return result;
}

uint64_t sub_26120166C(uint64_t a1)
{
  v2 = sub_2612023E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612016A8(uint64_t a1)
{
  v2 = sub_2612023E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612016E4(uint64_t a1)
{
  v2 = sub_261202488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261201720(uint64_t a1)
{
  v2 = sub_261202488();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26120175C()
{
  v1 = *v0;
  v2 = 6645601;
  v3 = 0x44496F746F6870;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x4C73726576697264;
  if (v1 != 3)
  {
    v4 = 0x6C616E6F6974616ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x614E646E41656761;
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

uint64_t sub_261201848@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261204708(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261201870(uint64_t a1)
{
  v2 = sub_26120223C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612018AC(uint64_t a1)
{
  v2 = sub_26120223C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612018E8(uint64_t a1)
{
  v2 = sub_26120238C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261201924(uint64_t a1)
{
  v2 = sub_26120238C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261201960(uint64_t a1)
{
  v2 = sub_261202290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26120199C(uint64_t a1)
{
  v2 = sub_261202290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612019D8(uint64_t a1)
{
  v2 = sub_261202434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261201A14(uint64_t a1)
{
  v2 = sub_261202434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261201A50(uint64_t a1)
{
  v2 = sub_261202338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261201A8C(uint64_t a1)
{
  v2 = sub_261202338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261201AC8(uint64_t a1)
{
  v2 = sub_2612022E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261201B04(uint64_t a1)
{
  v2 = sub_2612022E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentRequestType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F30, &qword_261226290);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F38, &qword_261226298);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F40, &qword_2612262A0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F48, &qword_2612262A8);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F50, &qword_2612262B0);
  v55 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F58, &qword_2612262B8);
  v53 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F60, &qword_2612262C0);
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F68, &qword_2612262C8);
  v18 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26120223C();
  v56 = v20;
  sub_26121D600();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_261202434();
        v33 = v56;
        v32 = v57;
        sub_26121D410();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_2612023E0();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_26121D410();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_261202488();
      v34 = v56;
      v35 = v57;
      sub_26121D410();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_2612022E4();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_26121D410();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_261202290();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_26121D410();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_26120238C();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_26121D410();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_261202338();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_26121D410();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

unint64_t sub_26120223C()
{
  result = qword_27FE95B98;
  if (!qword_27FE95B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95B98);
  }

  return result;
}

unint64_t sub_261202290()
{
  result = qword_27FE95BA0;
  if (!qword_27FE95BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BA0);
  }

  return result;
}

unint64_t sub_2612022E4()
{
  result = qword_27FE95BA8;
  if (!qword_27FE95BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BA8);
  }

  return result;
}

unint64_t sub_261202338()
{
  result = qword_27FE95BB0;
  if (!qword_27FE95BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BB0);
  }

  return result;
}

unint64_t sub_26120238C()
{
  result = qword_27FE95BB8;
  if (!qword_27FE95BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BB8);
  }

  return result;
}

unint64_t sub_2612023E0()
{
  result = qword_27FE95BC0;
  if (!qword_27FE95BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BC0);
  }

  return result;
}

unint64_t sub_261202434()
{
  result = qword_27FE95BC8;
  if (!qword_27FE95BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BC8);
  }

  return result;
}

unint64_t sub_261202488()
{
  result = qword_27FE95BD0;
  if (!qword_27FE95BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BD0);
  }

  return result;
}

uint64_t IdentityDocumentRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_26121D5B0();
  MEMORY[0x2666FC740](v1);
  return sub_26121D5D0();
}

uint64_t IdentityDocumentRequestType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F70, &qword_2612262D0);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v49[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F78, &qword_2612262D8);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v49[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F80, &qword_2612262E0);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x28223BE20](v7);
  v67 = &v49[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F88, &qword_2612262E8);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v49[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F90, &qword_2612262F0);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13);
  v70 = &v49[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87F98, &qword_2612262F8);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FA0, &qword_261226300);
  v53 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v49[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FA8, &unk_261226308);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v49[-v23];
  v25 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_26120223C();
  v26 = v73;
  sub_26121D5F0();
  if (!v26)
  {
    v51 = v18;
    v27 = v70;
    v28 = v71;
    v52 = v22;
    v73 = v21;
    v29 = sub_26121D400();
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      if (v30 != 7)
      {
        v50 = *(v29 + 32);
        if (v30 > 2)
        {
          if (v30 > 4)
          {
            v31 = v30 == 5;
            v32 = v69;
            v41 = v73;
            if (v31)
            {
              v79 = 5;
              sub_2612022E4();
              sub_26121D350();
              v46 = v52;
              (*(v62 + 8))(v28, v63);
            }

            else
            {
              v80 = 6;
              sub_261202290();
              v45 = v68;
              sub_26121D350();
              v46 = v52;
              (*(v64 + 8))(v45, v65);
            }

            (*(v46 + 8))(v24, v41);
          }

          else
          {
            v31 = v30 == 3;
            v32 = v69;
            v33 = v73;
            if (v31)
            {
              v77 = 3;
              sub_26120238C();
              v34 = v66;
              sub_26121D350();
              v44 = v52;
              (*(v59 + 8))(v34, v58);
            }

            else
            {
              v78 = 4;
              sub_261202338();
              v43 = v67;
              sub_26121D350();
              v44 = v52;
              (*(v61 + 8))(v43, v60);
            }

            (*(v44 + 8))(v24, v33);
          }

          swift_unknownObjectRelease();
          v47 = v72;
          goto LABEL_25;
        }

        if (v30)
        {
          if (v30 == 1)
          {
            v75 = 1;
            sub_261202434();
            v39 = v24;
            v40 = v73;
            sub_26121D350();
            (*(v54 + 8))(v17, v55);
            (*(v52 + 8))(v39, v40);
LABEL_21:
            swift_unknownObjectRelease();
            v47 = v72;
            v32 = v69;
LABEL_25:
            *v32 = v50;
            return __swift_destroy_boxed_opaque_existential_1(v47);
          }

          v76 = 2;
          sub_2612023E0();
          v42 = v73;
          sub_26121D350();
          (*(v56 + 8))(v27, v57);
        }

        else
        {
          v74 = 0;
          sub_261202488();
          v42 = v73;
          sub_26121D350();
          (*(v53 + 8))(v20, v51);
        }

        (*(v52 + 8))(v24, v42);
        goto LABEL_21;
      }
    }

    v35 = sub_26121D220();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470);
    *v37 = &type metadata for IdentityDocumentRequestType;
    v38 = v73;
    sub_26121D360();
    sub_26121D210();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v52 + 8))(v24, v38);
    swift_unknownObjectRelease();
  }

  v47 = v72;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_261202F14()
{
  v1 = 0x6C616E6F6974616ELL;
  if (*v0 != 1)
  {
    v1 = 0x44496F746F6870;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C73726576697264;
  }
}

uint64_t sub_261202F88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261205C00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261202FB0(uint64_t a1)
{
  v2 = sub_261204C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261202FEC(uint64_t a1)
{
  v2 = sub_261204C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261203028(uint64_t a1)
{
  v2 = sub_261204D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261203064(uint64_t a1)
{
  v2 = sub_261204D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612030A0(uint64_t a1)
{
  v2 = sub_261204D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612030DC(uint64_t a1)
{
  v2 = sub_261204D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261203118(uint64_t a1)
{
  v2 = sub_261204CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261203154(uint64_t a1)
{
  v2 = sub_261204CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FB0, &qword_261226318);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v23 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FB8, &qword_261226320);
  v25 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v23 - v4;
  v5 = sub_26121C8A0();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FC0, &qword_261226328);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for IdentityDocumentType(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FC8, &qword_261226330);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261204C5C();
  v17 = v32;
  sub_26121D600();
  sub_2612006E0(v33, v12);
  v18 = (*(v17 + 48))(v12, 2, v5);
  if (v18)
  {
    if (v18 == 1)
    {
      v34 = 0;
      sub_261204D58();
      sub_26121D410();
      (*(v23 + 8))(v9, v24);
    }

    else
    {
      v36 = 2;
      sub_261204CB0();
      v22 = v26;
      sub_26121D410();
      (*(v27 + 8))(v22, v28);
    }

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    v19 = v25;
    (*(v17 + 32))(v30, v12, v5);
    v35 = 1;
    sub_261204D04();
    sub_26121D410();
    sub_261204E4C(&qword_27FE87FD0, MEMORY[0x277CC9698], MEMORY[0x277CC96A0]);
    v20 = v29;
    sub_26121D4A0();
    (*(v19 + 8))(v31, v20);
    (*(v17 + 8))(v30, v5);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t IdentityDocumentType.hash(into:)(uint64_t a1)
{
  v2 = sub_26121C8A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityDocumentType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2612006E0(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    return MEMORY[0x2666FC740](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2666FC740](1);
    sub_261204E4C(&qword_27FE87DB8, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_26121CBD0();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t IdentityDocumentType.hashValue.getter()
{
  v1 = v0;
  v2 = sub_26121C8A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentityDocumentType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121D5B0();
  sub_2612006E0(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x2666FC740](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2666FC740](1);
    sub_261204E4C(&qword_27FE87DB8, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_26121CBD0();
    (*(v3 + 8))(v5, v2);
  }

  return sub_26121D5D0();
}

uint64_t IdentityDocumentType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FD8, &qword_261226338);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FE0, &qword_261226340);
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FE8, &qword_261226348);
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87FF0, &qword_261226350);
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = type metadata accessor for IdentityDocumentType(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_261204C5C();
  v21 = v66;
  sub_26121D5F0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v53 = v17;
  v54 = v19;
  v22 = v62;
  v23 = v63;
  v55 = 0;
  v24 = v64;
  v66 = v13;
  v25 = sub_26121D400();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(v25 + 32);
    if (v26 == 1 && v27 != 3)
    {
      if (*(v25 + 32))
      {
        v33 = v65;
        if (v27 == 1)
        {
          v69 = 1;
          sub_261204D04();
          v34 = v22;
          v35 = v11;
          v36 = v66;
          v37 = v55;
          sub_26121D350();
          if (v37)
          {
            (*(v33 + 8))(v36, v35);
            goto LABEL_17;
          }

          v44 = sub_26121C8A0();
          sub_261204E4C(&qword_27FE87FF8, MEMORY[0x277CC9698], MEMORY[0x277CC96B8]);
          v45 = v61;
          sub_26121D3F0();
          (*(v60 + 8))(v34, v45);
          (*(v33 + 8))(v36, v35);
          swift_unknownObjectRelease();
          v46 = v53;
          (*(*(v44 - 8) + 56))(v53, 0, 2, v44);
          v47 = v46;
          v48 = v54;
          sub_2612007B4(v47, v54);
          v49 = v24;
        }

        else
        {
          v70 = 2;
          sub_261204CB0();
          v41 = v66;
          v42 = v55;
          sub_26121D350();
          if (v42)
          {
            (*(v33 + 8))(v41, v11);
            goto LABEL_17;
          }

          v49 = v24;
          (*(v58 + 8))(v23, v59);
          (*(v33 + 8))(v41, v11);
          swift_unknownObjectRelease();
          v51 = sub_26121C8A0();
          v48 = v54;
          (*(*(v51 - 8) + 56))(v54, 2, 2, v51);
        }
      }

      else
      {
        v68 = 0;
        sub_261204D58();
        v38 = v66;
        v39 = v55;
        sub_26121D350();
        v40 = v65;
        if (v39)
        {
          (*(v65 + 8))(v38, v11);
          goto LABEL_17;
        }

        (*(v57 + 8))(v10, v56);
        (*(v40 + 8))(v38, v11);
        swift_unknownObjectRelease();
        v50 = sub_26121C8A0();
        v48 = v54;
        (*(*(v50 - 8) + 56))(v54, 1, 2, v50);
        v49 = v24;
      }

      sub_2612007B4(v48, v49);
      return __swift_destroy_boxed_opaque_existential_1(v67);
    }
  }

  v29 = sub_26121D220();
  swift_allocError();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470);
  *v31 = v14;
  v32 = v66;
  sub_26121D360();
  sub_26121D210();
  (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
  swift_willThrow();
  (*(v65 + 8))(v32, v11);
LABEL_17:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_261204228(uint64_t a1)
{
  v2 = sub_26121C8A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2612006E0(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    return MEMORY[0x2666FC740](v10);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    MEMORY[0x2666FC740](1);
    sub_261204E4C(&qword_27FE87DB8, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_26121CBD0();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2612043EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26121C8A0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121D5B0();
  sub_2612006E0(v2, v9);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    MEMORY[0x2666FC740](v11);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x2666FC740](1);
    sub_261204E4C(&qword_27FE87DB8, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_26121CBD0();
    (*(v4 + 8))(v7, v3);
  }

  return sub_26121D5D0();
}

uint64_t sub_2612045DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E61686372656DLL && a2 == 0xEF736C6961746544;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746164696C6176 && a2 == 0xEE0065646F4D6E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t sub_261204708(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E646E41656761 && a2 == 0xEA0000000000656DLL || (sub_26121D4D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C73726576697264 && a2 == 0xEE0065736E656369 || (sub_26121D4D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616E6F6974616ELL && a2 == 0xEE00647261434449 || (sub_26121D4D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496F746F6870 && a2 == 0xE700000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000261230200 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t _s19ProximityReaderCore20IdentityDocumentTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26121C8A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentityDocumentType(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88008, &unk_261227110);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_2612006E0(a1, &v21 - v13);
  sub_2612006E0(a2, &v14[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_2612006E0(v14, v10);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = MEMORY[0x2666FBA00](v10, v7);
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_261205D90(v14);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_261205D28(v14);
    v18 = 0;
    return v18 & 1;
  }

  sub_261205D90(v14);
  v18 = 1;
  return v18 & 1;
}

uint64_t type metadata accessor for IdentityDocumentType(uint64_t a1)
{
  result = qword_27FE96100;
  if (!qword_27FE96100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_261204C5C()
{
  result = qword_27FE95BD8;
  if (!qword_27FE95BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BD8);
  }

  return result;
}

unint64_t sub_261204CB0()
{
  result = qword_27FE95BE0;
  if (!qword_27FE95BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BE0);
  }

  return result;
}

unint64_t sub_261204D04()
{
  result = qword_27FE95BE8;
  if (!qword_27FE95BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE95BE8);
  }

  return result;
}

unint64_t sub_261204D58()
{
  result = qword_27FE95BF0[0];
  if (!qword_27FE95BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE95BF0);
  }

  return result;
}

unint64_t sub_261204DB0()
{
  result = qword_27FE88000;
  if (!qword_27FE88000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE88000);
  }

  return result;
}

uint64_t sub_261204E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_261204EB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261204EF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261204F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26121C8A0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261204FFC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26121C8A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_261205080(uint64_t a1)
{
  v1 = sub_26121C8A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_2612051B4()
{
  result = qword_27FE96210[0];
  if (!qword_27FE96210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE96210);
  }

  return result;
}

unint64_t sub_26120520C()
{
  result = qword_27FE96B20[0];
  if (!qword_27FE96B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE96B20);
  }

  return result;
}

unint64_t sub_261205264()
{
  result = qword_27FE96E30[0];
  if (!qword_27FE96E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE96E30);
  }

  return result;
}

unint64_t sub_2612052BC()
{
  result = qword_27FE97140[0];
  if (!qword_27FE97140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97140);
  }

  return result;
}

unint64_t sub_261205314()
{
  result = qword_27FE97250;
  if (!qword_27FE97250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97250);
  }

  return result;
}

unint64_t sub_26120536C()
{
  result = qword_27FE97258[0];
  if (!qword_27FE97258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97258);
  }

  return result;
}

unint64_t sub_2612053C4()
{
  result = qword_27FE972E0;
  if (!qword_27FE972E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE972E0);
  }

  return result;
}

unint64_t sub_26120541C()
{
  result = qword_27FE972E8[0];
  if (!qword_27FE972E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE972E8);
  }

  return result;
}

unint64_t sub_261205474()
{
  result = qword_27FE97370;
  if (!qword_27FE97370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97370);
  }

  return result;
}

unint64_t sub_2612054CC()
{
  result = qword_27FE97378;
  if (!qword_27FE97378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97378);
  }

  return result;
}

unint64_t sub_261205524()
{
  result = qword_27FE97400;
  if (!qword_27FE97400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97400);
  }

  return result;
}

unint64_t sub_26120557C()
{
  result = qword_27FE97408[0];
  if (!qword_27FE97408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97408);
  }

  return result;
}

unint64_t sub_2612055D4()
{
  result = qword_27FE97490;
  if (!qword_27FE97490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97490);
  }

  return result;
}

unint64_t sub_26120562C()
{
  result = qword_27FE97498[0];
  if (!qword_27FE97498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97498);
  }

  return result;
}

unint64_t sub_261205684()
{
  result = qword_27FE97520;
  if (!qword_27FE97520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97520);
  }

  return result;
}

unint64_t sub_2612056DC()
{
  result = qword_27FE97528[0];
  if (!qword_27FE97528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97528);
  }

  return result;
}

unint64_t sub_261205734()
{
  result = qword_27FE975B0;
  if (!qword_27FE975B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE975B0);
  }

  return result;
}

unint64_t sub_26120578C()
{
  result = qword_27FE975B8[0];
  if (!qword_27FE975B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE975B8);
  }

  return result;
}

unint64_t sub_2612057E4()
{
  result = qword_27FE97640;
  if (!qword_27FE97640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97640);
  }

  return result;
}

unint64_t sub_26120583C()
{
  result = qword_27FE97648[0];
  if (!qword_27FE97648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97648);
  }

  return result;
}

unint64_t sub_261205894()
{
  result = qword_27FE976D0;
  if (!qword_27FE976D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE976D0);
  }

  return result;
}

unint64_t sub_2612058EC()
{
  result = qword_27FE976D8[0];
  if (!qword_27FE976D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE976D8);
  }

  return result;
}

unint64_t sub_261205944()
{
  result = qword_27FE97760;
  if (!qword_27FE97760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97760);
  }

  return result;
}

unint64_t sub_26120599C()
{
  result = qword_27FE97768[0];
  if (!qword_27FE97768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97768);
  }

  return result;
}

unint64_t sub_2612059F4()
{
  result = qword_27FE977F0;
  if (!qword_27FE977F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE977F0);
  }

  return result;
}

unint64_t sub_261205A4C()
{
  result = qword_27FE977F8[0];
  if (!qword_27FE977F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE977F8);
  }

  return result;
}

unint64_t sub_261205AA4()
{
  result = qword_27FE97880;
  if (!qword_27FE97880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97880);
  }

  return result;
}

unint64_t sub_261205AFC()
{
  result = qword_27FE97888[0];
  if (!qword_27FE97888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97888);
  }

  return result;
}

unint64_t sub_261205B54()
{
  result = qword_27FE97910;
  if (!qword_27FE97910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE97910);
  }

  return result;
}

unint64_t sub_261205BAC()
{
  result = qword_27FE97918[0];
  if (!qword_27FE97918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE97918);
  }

  return result;
}

uint64_t sub_261205C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C73726576697264 && a2 == 0xEE0065736E656369;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E6F6974616ELL && a2 == 0xEE00647261434449 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496F746F6870 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t sub_261205D28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88008, &unk_261227110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261205D90(uint64_t a1)
{
  v2 = type metadata accessor for IdentityDocumentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261205DF8(uint64_t a1)
{
  v2 = sub_26120BAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261205E34(uint64_t a1)
{
  v2 = sub_26120BAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_261205E70(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x776F6C6C41746F6ELL;
      break;
    case 2:
      result = 0x656C6C65636E6163;
      break;
    case 3:
      result = 0x456B726F7774656ELL;
      break;
    case 4:
    case 5:
      result = 0x5264696C61766E69;
      break;
    case 6:
      result = 0x5464696C61766E69;
      break;
    case 7:
      result = 0x75426D6574737973;
      break;
    case 8:
      result = 0x626173694463666ELL;
      break;
    case 9:
      result = 0x687265764F63666ELL;
      break;
    case 10:
    case 22:
      v3 = 11;
      goto LABEL_21;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x6F70707553746F6ELL;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
    case 21:
      v3 = 5;
LABEL_21:
      result = v3 | 0xD000000000000010;
      break;
    case 17:
      result = 0x6954726564616572;
      break;
    case 18:
      result = 0xD000000000000024;
      break;
    case 19:
      result = 0x456E6F6973736573;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261206180(uint64_t a1)
{
  v2 = sub_26120BB50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612061BC(uint64_t a1)
{
  v2 = sub_26120BB50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612061F8(uint64_t a1)
{
  v2 = sub_26120BBA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206234(uint64_t a1)
{
  v2 = sub_26120BBA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261206270(uint64_t a1)
{
  v2 = sub_26120BE98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612062AC(uint64_t a1)
{
  v2 = sub_26120BE98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612062F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26120D740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_261206324(uint64_t a1)
{
  v2 = sub_26120B7B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206360(uint64_t a1)
{
  v2 = sub_26120B7B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120639C(uint64_t a1)
{
  v2 = sub_26120B808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612063D8(uint64_t a1)
{
  v2 = sub_26120B808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261206414(uint64_t a1)
{
  v2 = sub_26120BDF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206450(uint64_t a1)
{
  v2 = sub_26120BDF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120648C(uint64_t a1)
{
  v2 = sub_26120BD9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612064C8(uint64_t a1)
{
  v2 = sub_26120BD9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261206504(uint64_t a1)
{
  v2 = sub_26120BD48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206540(uint64_t a1)
{
  v2 = sub_26120BD48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120657C(uint64_t a1)
{
  v2 = sub_26120BE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612065B8(uint64_t a1)
{
  v2 = sub_26120BE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612065F4(uint64_t a1)
{
  v2 = sub_26120BCA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206630(uint64_t a1)
{
  v2 = sub_26120BCA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120666C(uint64_t a1)
{
  v2 = sub_26120BBF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612066A8(uint64_t a1)
{
  v2 = sub_26120BBF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612066E4(uint64_t a1)
{
  v2 = sub_26120BC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206720(uint64_t a1)
{
  v2 = sub_26120BC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120675C(uint64_t a1)
{
  v2 = sub_26120BEEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206798(uint64_t a1)
{
  v2 = sub_26120BEEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612067D4(uint64_t a1)
{
  v2 = sub_26120BAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206810(uint64_t a1)
{
  v2 = sub_26120BAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120684C(uint64_t a1)
{
  v2 = sub_26120B85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206888(uint64_t a1)
{
  v2 = sub_26120B85C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612068C4(uint64_t a1)
{
  v2 = sub_26120BA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206900(uint64_t a1)
{
  v2 = sub_26120BA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26120693C(uint64_t a1)
{
  v2 = sub_26120BA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206978(uint64_t a1)
{
  v2 = sub_26120BA00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612069B4(uint64_t a1)
{
  v2 = sub_26120B9AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612069F0(uint64_t a1)
{
  v2 = sub_26120B9AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261206A2C(uint64_t a1)
{
  v2 = sub_26120B8B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206A68(uint64_t a1)
{
  v2 = sub_26120B8B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261206AA4(uint64_t a1)
{
  v2 = sub_26120B904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206AE0(uint64_t a1)
{
  v2 = sub_26120B904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261206B1C(uint64_t a1)
{
  v2 = sub_26120BCF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206B58(uint64_t a1)
{
  v2 = sub_26120BCF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261206BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657A696C61636F6CLL && a2 == 0xEF676E6972745364)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26121D4D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261206C48(uint64_t a1)
{
  v2 = sub_26120B958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206C84(uint64_t a1)
{
  v2 = sub_26120B958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261206CC0(uint64_t a1)
{
  v2 = sub_26120BF40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261206CFC(uint64_t a1)
{
  v2 = sub_26120BF40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityReaderErrorInternal.Code.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88010, &qword_261227120);
  v134 = *(v4 - 8);
  v135 = v4;
  MEMORY[0x28223BE20](v4);
  v133 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88018, &qword_261227128);
  v131 = *(v6 - 8);
  v132 = v6;
  MEMORY[0x28223BE20](v6);
  v130 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88020, &qword_261227130);
  v128 = *(v8 - 8);
  v129 = v8;
  MEMORY[0x28223BE20](v8);
  v127 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88028, &qword_261227138);
  v125 = *(v10 - 8);
  v126 = v10;
  MEMORY[0x28223BE20](v10);
  v124 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88030, &qword_261227140);
  v122 = *(v12 - 8);
  v123 = v12;
  MEMORY[0x28223BE20](v12);
  v121 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88038, &qword_261227148);
  v119 = *(v14 - 8);
  v120 = v14;
  MEMORY[0x28223BE20](v14);
  v118 = &v69 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88040, &qword_261227150);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v69 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88048, &qword_261227158);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v69 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88050, &qword_261227160);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v69 - v18;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88058, &qword_261227168);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v69 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88060, &qword_261227170);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v69 - v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88068, &qword_261227178);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v69 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88070, &qword_261227180);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v69 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88078, &qword_261227188);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v69 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88080, &qword_261227190);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v69 - v24;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88088, &qword_261227198);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v69 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88090, &qword_2612271A0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v69 - v26;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88098, &qword_2612271A8);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v69 - v27;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880A0, &qword_2612271B0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - v28;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880A8, &qword_2612271B8);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v69 - v29;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880B0, &qword_2612271C0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - v30;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880B8, &qword_2612271C8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v32 = &v69 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880C0, &qword_2612271D0);
  v70 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v69 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880C8, &qword_2612271D8);
  v37 = *(v36 - 8);
  v137 = v36;
  v138 = v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v69 - v38;
  v40 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26120B7B4();
  v136 = v39;
  sub_26121D600();
  switch(v40)
  {
    case 0:
      v140 = 0;
      sub_26120BF40();
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      (*(v70 + 8))(v35, v33);
      goto LABEL_28;
    case 1:
      v140 = 1;
      sub_26120BEEC();
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v71 + 8);
      v45 = v32;
      v46 = &v104;
      goto LABEL_23;
    case 2:
      v140 = 2;
      sub_26120BE98();
      v52 = v73;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v74 + 8);
      v45 = v52;
      v46 = &v107;
      goto LABEL_23;
    case 3:
      v140 = 3;
      sub_26120BE44();
      v54 = v76;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v77 + 8);
      v45 = v54;
      v46 = &v110;
      goto LABEL_23;
    case 4:
      v140 = 4;
      sub_26120BDF0();
      v49 = v79;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v80 + 8);
      v45 = v49;
      v46 = &v113;
      goto LABEL_23;
    case 5:
      v140 = 5;
      sub_26120BD9C();
      v59 = v82;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v83 + 8);
      v45 = v59;
      v46 = &v116;
      goto LABEL_23;
    case 6:
      v140 = 6;
      sub_26120BD48();
      v61 = v85;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v86 + 8);
      v45 = v61;
      v46 = &v119;
      goto LABEL_23;
    case 7:
      v140 = 7;
      sub_26120BCF4();
      v55 = v88;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v89 + 8);
      v45 = v55;
      v46 = &v122;
      goto LABEL_23;
    case 8:
      v140 = 8;
      sub_26120BCA0();
      v63 = v91;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v92 + 8);
      v45 = v63;
      v46 = &v125;
      goto LABEL_23;
    case 9:
      v140 = 9;
      sub_26120BC4C();
      v51 = v94;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v95 + 8);
      v45 = v51;
      v46 = &v128;
      goto LABEL_23;
    case 10:
      v140 = 10;
      sub_26120BBF8();
      v62 = v97;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v98 + 8);
      v45 = v62;
      v46 = &v131;
      goto LABEL_23;
    case 11:
      v140 = 11;
      sub_26120BBA4();
      v48 = v100;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v101 + 8);
      v45 = v48;
      v46 = &v134;
      goto LABEL_23;
    case 12:
      v140 = 12;
      sub_26120BB50();
      v50 = v103;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v104 + 8);
      v45 = v50;
      v46 = &v137;
      goto LABEL_23;
    case 13:
      v140 = 13;
      sub_26120BAFC();
      v60 = v106;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v107 + 8);
      v45 = v60;
      v46 = &v139;
      goto LABEL_23;
    case 14:
      v140 = 14;
      sub_26120BAA8();
      v47 = v109;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v110 + 8);
      v45 = v47;
      v46 = &v141;
      goto LABEL_23;
    case 15:
      v140 = 15;
      sub_26120BA54();
      v53 = v112;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v113 + 8);
      v45 = v53;
      v46 = &v142;
      goto LABEL_23;
    case 16:
      v140 = 16;
      sub_26120BA00();
      v43 = v115;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v44 = *(v116 + 8);
      v45 = v43;
      v46 = &v143;
LABEL_23:
      v57 = *(v46 - 32);
      goto LABEL_27;
    case 17:
      v140 = 17;
      sub_26120B9AC();
      v56 = v118;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v58 = v119;
      v57 = v120;
      goto LABEL_26;
    case 18:
      v140 = 19;
      sub_26120B904();
      v56 = v124;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v58 = v125;
      v57 = v126;
      goto LABEL_26;
    case 19:
      v140 = 20;
      sub_26120B8B0();
      v56 = v127;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v58 = v128;
      v57 = v129;
      goto LABEL_26;
    case 20:
      v140 = 21;
      sub_26120B85C();
      v56 = v130;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v58 = v131;
      v57 = v132;
      goto LABEL_26;
    case 21:
      v140 = 22;
      sub_26120B808();
      v56 = v133;
      v42 = v136;
      v41 = v137;
      sub_26121D410();
      v58 = v134;
      v57 = v135;
LABEL_26:
      v44 = *(v58 + 8);
      v45 = v56;
LABEL_27:
      v44(v45, v57);
LABEL_28:
      result = (*(v138 + 8))(v42, v41);
      break;
    default:
      v140 = 18;
      sub_26120B958();
      v64 = v121;
      v66 = v136;
      v65 = v137;
      sub_26121D410();
      v67 = v123;
      sub_26121D460();
      (*(v122 + 8))(v64, v67);
      result = (*(v138 + 8))(v66, v65);
      break;
  }

  return result;
}

uint64_t IdentityReaderErrorInternal.Code.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_27;
    case 1:
      v2 = 1;
      goto LABEL_27;
    case 2:
      v2 = 2;
      goto LABEL_27;
    case 3:
      v2 = 3;
      goto LABEL_27;
    case 4:
      v2 = 4;
      goto LABEL_27;
    case 5:
      v2 = 5;
      goto LABEL_27;
    case 6:
      v2 = 6;
      goto LABEL_27;
    case 7:
      v2 = 7;
      goto LABEL_27;
    case 8:
      v2 = 8;
      goto LABEL_27;
    case 9:
      v2 = 9;
      goto LABEL_27;
    case 0xALL:
      v2 = 10;
      goto LABEL_27;
    case 0xBLL:
      v2 = 11;
      goto LABEL_27;
    case 0xCLL:
      v2 = 12;
      goto LABEL_27;
    case 0xDLL:
      v2 = 13;
      goto LABEL_27;
    case 0xELL:
      v2 = 14;
      goto LABEL_27;
    case 0xFLL:
      v2 = 15;
      goto LABEL_27;
    case 0x10:
      v2 = 16;
      goto LABEL_27;
    case 0x11:
      v2 = 17;
      goto LABEL_27;
    case 0x12:
      v2 = 19;
      goto LABEL_27;
    case 0x13:
      v2 = 20;
      goto LABEL_27;
    case 0x14:
      v2 = 21;
      goto LABEL_27;
    case 0x15:
      v2 = 22;
LABEL_27:
      result = MEMORY[0x2666FC740](v2);
      break;
    default:
      MEMORY[0x2666FC740](18);

      result = sub_26121CD50();
      break;
  }

  return result;
}

uint64_t IdentityReaderErrorInternal.Code.hashValue.getter()
{
  v3 = *v0;
  sub_26121D5B0();
  IdentityReaderErrorInternal.Code.hash(into:)(v2);
  return sub_26121D5D0();
}

uint64_t IdentityReaderErrorInternal.Code.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v177 = a2;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880D0, &qword_2612271E0);
  v172 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v170 = v106 - v3;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880D8, &qword_2612271E8);
  v152 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = v106 - v4;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880E0, &qword_2612271F0);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v168 = v106 - v5;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880E8, &qword_2612271F8);
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v167 = v106 - v6;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880F0, &qword_261227200);
  v111 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v166 = v106 - v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE880F8, &qword_261227208);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v165 = v106 - v8;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88100, &qword_261227210);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v164 = v106 - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88108, &qword_261227218);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v163 = v106 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88110, &qword_261227220);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v162 = v106 - v11;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88118, &qword_261227228);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v161 = v106 - v12;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88120, &qword_261227230);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v160 = v106 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88128, &qword_261227238);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v159 = v106 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88130, &qword_261227240);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v158 = v106 - v15;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88138, &qword_261227248);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v157 = v106 - v16;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88140, &qword_261227250);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v156 = v106 - v17;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88148, &qword_261227258);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v175 = v106 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88150, &qword_261227260);
  v124 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v174 = v106 - v19;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88158, &qword_261227268);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v173 = v106 - v20;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88160, &qword_261227270);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v155 = v106 - v21;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88168, &qword_261227278);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v154 = v106 - v22;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88170, &qword_261227280);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v153 = v106 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88178, &qword_261227288);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v25 = v106 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88180, &qword_261227290);
  v112 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE88188, &qword_261227298);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = v106 - v31;
  v33 = a1[3];
  v178 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_26120B7B4();
  v34 = v179;
  sub_26121D5F0();
  v179 = v34;
  if (v34)
  {
LABEL_53:
    v105 = v178;
    return __swift_destroy_boxed_opaque_existential_1(v105);
  }

  v108 = v28;
  v107 = v26;
  v109 = v25;
  v36 = v173;
  v35 = v174;
  v38 = v175;
  v37 = v176;
  v110 = v30;
  v39 = v177;
  v40 = v32;
  v41 = sub_26121D400();
  if (*(v41 + 16) != 1 || (v42 = *(v41 + 32), v42 == 23))
  {
    v50 = sub_26121D220();
    v51 = v29;
    v52 = swift_allocError();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470);
    *v54 = &type metadata for IdentityReaderErrorInternal.Code;
    sub_26121D360();
    sub_26121D210();
    (*(*(v50 - 8) + 104))(v54, *MEMORY[0x277D84160], v50);
    v179 = v52;
    swift_willThrow();
    (*(v110 + 8))(v32, v51);
LABEL_52:
    swift_unknownObjectRelease();
    goto LABEL_53;
  }

  v106[1] = v41;
  v43 = v37;
  v45 = v171;
  v44 = v172;
  switch(v42)
  {
    case 1:
      v180 = 1;
      sub_26120BEEC();
      v74 = v109;
      v75 = v179;
      sub_26121D350();
      v179 = v75;
      if (v75)
      {
        goto LABEL_51;
      }

      (*(v113 + 8))(v74, v114);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 1;
      goto LABEL_56;
    case 2:
      v180 = 2;
      sub_26120BE98();
      v67 = v153;
      v68 = v179;
      sub_26121D350();
      v179 = v68;
      if (v68)
      {
        goto LABEL_51;
      }

      (*(v115 + 8))(v67, v116);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 2;
      goto LABEL_56;
    case 3:
      v180 = 3;
      sub_26120BE44();
      v71 = v154;
      v72 = v179;
      sub_26121D350();
      v179 = v72;
      if (v72)
      {
        goto LABEL_51;
      }

      (*(v117 + 8))(v71, v118);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 3;
      goto LABEL_56;
    case 4:
      v180 = 4;
      sub_26120BDF0();
      v61 = v155;
      v62 = v179;
      sub_26121D350();
      v179 = v62;
      if (v62)
      {
        goto LABEL_51;
      }

      (*(v119 + 8))(v61, v120);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 4;
      goto LABEL_56;
    case 5:
      v180 = 5;
      sub_26120BD9C();
      v80 = v179;
      sub_26121D350();
      v179 = v80;
      if (v80)
      {
        goto LABEL_51;
      }

      (*(v121 + 8))(v36, v122);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 5;
      goto LABEL_56;
    case 6:
      v180 = 6;
      sub_26120BD48();
      v85 = v179;
      sub_26121D350();
      v179 = v85;
      if (v85)
      {
        goto LABEL_51;
      }

      (*(v124 + 8))(v35, v123);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 6;
      goto LABEL_56;
    case 7:
      v180 = 7;
      sub_26120BCF4();
      v73 = v179;
      sub_26121D350();
      v179 = v73;
      if (v73)
      {
        goto LABEL_51;
      }

      (*(v125 + 8))(v38, v126);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 7;
      goto LABEL_56;
    case 8:
      v180 = 8;
      sub_26120BCA0();
      v97 = v156;
      v98 = v179;
      sub_26121D350();
      v179 = v98;
      if (v98)
      {
        goto LABEL_51;
      }

      (*(v127 + 8))(v97, v128);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 8;
      goto LABEL_56;
    case 9:
      v180 = 9;
      sub_26120BC4C();
      v65 = v157;
      v66 = v179;
      sub_26121D350();
      v179 = v66;
      if (v66)
      {
        goto LABEL_51;
      }

      (*(v129 + 8))(v65, v130);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 9;
      goto LABEL_56;
    case 10:
      v180 = 10;
      sub_26120BBF8();
      v95 = v158;
      v96 = v179;
      sub_26121D350();
      v179 = v96;
      if (v96)
      {
        goto LABEL_51;
      }

      (*(v131 + 8))(v95, v132);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 10;
      goto LABEL_56;
    case 11:
      v180 = 11;
      sub_26120BBA4();
      v59 = v159;
      v60 = v179;
      sub_26121D350();
      v179 = v60;
      if (v60)
      {
        goto LABEL_51;
      }

      (*(v133 + 8))(v59, v134);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 11;
      goto LABEL_56;
    case 12:
      v180 = 12;
      sub_26120BB50();
      v63 = v160;
      v64 = v179;
      sub_26121D350();
      v179 = v64;
      if (v64)
      {
        goto LABEL_51;
      }

      (*(v135 + 8))(v63, v136);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 12;
      goto LABEL_56;
    case 13:
      v180 = 13;
      sub_26120BAFC();
      v83 = v161;
      v84 = v179;
      sub_26121D350();
      v179 = v84;
      if (v84)
      {
        goto LABEL_51;
      }

      (*(v137 + 8))(v83, v138);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 13;
      goto LABEL_56;
    case 14:
      v180 = 14;
      sub_26120BAA8();
      v57 = v162;
      v58 = v179;
      sub_26121D350();
      v179 = v58;
      if (v58)
      {
        goto LABEL_51;
      }

      (*(v139 + 8))(v57, v140);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 14;
      goto LABEL_56;
    case 15:
      v180 = 15;
      sub_26120BA54();
      v69 = v163;
      v70 = v179;
      sub_26121D350();
      v179 = v70;
      if (v70)
      {
        goto LABEL_51;
      }

      (*(v141 + 8))(v69, v142);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 15;
      goto LABEL_56;
    case 16:
      v180 = 16;
      sub_26120BA00();
      v55 = v164;
      v56 = v179;
      sub_26121D350();
      v179 = v56;
      if (v56)
      {
        goto LABEL_51;
      }

      (*(v143 + 8))(v55, v144);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 16;
      goto LABEL_56;
    case 17:
      v180 = 17;
      sub_26120B9AC();
      v76 = v165;
      v77 = v179;
      sub_26121D350();
      v179 = v77;
      if (v77)
      {
        goto LABEL_51;
      }

      (*(v145 + 8))(v76, v146);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 17;
      goto LABEL_56;
    case 18:
      v180 = 18;
      sub_26120B958();
      v86 = v166;
      v87 = v179;
      sub_26121D350();
      v179 = v87;
      if (v87)
      {
        goto LABEL_51;
      }

      v88 = v40;
      v89 = v29;
      v90 = v148;
      v91 = sub_26121D3B0();
      v92 = v86;
      v93 = v178;
      v94 = v110;
      v179 = 0;
      v48 = v91;
      v49 = v104;
      (*(v111 + 8))(v92, v90);
      (*(v94 + 8))(v88, v89);
      swift_unknownObjectRelease();
      v105 = v93;
      goto LABEL_57;
    case 19:
      v180 = 19;
      sub_26120B904();
      v101 = v167;
      v102 = v179;
      sub_26121D350();
      v179 = v102;
      if (v102)
      {
        goto LABEL_51;
      }

      (*(v147 + 8))(v101, v149);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 18;
      goto LABEL_56;
    case 20:
      v180 = 20;
      sub_26120B8B0();
      v78 = v168;
      v79 = v179;
      sub_26121D350();
      v179 = v79;
      if (v79)
      {
        goto LABEL_51;
      }

      (*(v150 + 8))(v78, v151);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 19;
      goto LABEL_56;
    case 21:
      v180 = 21;
      sub_26120B85C();
      v81 = v169;
      v82 = v179;
      sub_26121D350();
      v179 = v82;
      if (v82)
      {
        goto LABEL_51;
      }

      (*(v152 + 8))(v81, v45);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 20;
      goto LABEL_56;
    case 22:
      v180 = 22;
      sub_26120B808();
      v99 = v170;
      v100 = v179;
      sub_26121D350();
      v179 = v100;
      if (v100)
      {
        goto LABEL_51;
      }

      (*(v44 + 8))(v99, v43);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 21;
      goto LABEL_56;
    default:
      v180 = 0;
      sub_26120BF40();
      v46 = v108;
      v47 = v179;
      sub_26121D350();
      v179 = v47;
      if (v47)
      {
LABEL_51:
        (*(v110 + 8))(v40, v29);
        goto LABEL_52;
      }

      (*(v112 + 8))(v46, v107);
      (*(v110 + 8))(v40, v29);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 0;
LABEL_56:
      v105 = v178;
LABEL_57:
      *v39 = v48;
      v39[1] = v49;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v105);
}