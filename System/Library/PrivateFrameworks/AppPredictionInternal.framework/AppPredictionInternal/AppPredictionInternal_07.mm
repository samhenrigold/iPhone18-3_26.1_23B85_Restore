uint64_t sub_2267D2438(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_226836908();

    if (v6)
    {
      v7 = sub_2267D25C0(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_2267D2F1C();
  v10 = sub_2268367D8();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_2268367E8();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2267D20D4();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_2267D2718(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_2267D25C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2268368D8();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2267D1AE8(v5, v4);
  v15 = v6;

  v7 = sub_2268367D8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2267D2F1C();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2268367E8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_2267D2718(v9);
  result = sub_2268367E8();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2267D2718(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2268368A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2268367D8();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2267D28B8(void *a1)
{
  v2 = v1;
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2263B7458();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_226836038();
  v10 = sub_2268366E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v9, v10, "ContextualSuggestionServer: incoming connection", v11, 2u);
    MEMORY[0x22AA821D0](v11, -1, -1);
  }

  v12 = (*(v5 + 8))(v7, v4);
  v13 = *(v2 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock);
  MEMORY[0x28223BE20](v12);
  *(&v25 - 2) = a1;
  os_unfair_lock_lock(v13 + 6);
  sub_2267D2EBC();
  os_unfair_lock_unlock(v13 + 6);
  v14 = sub_226835BC8();
  [a1 setRemoteObjectInterface_];

  v15 = sub_226835BB8();
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v16;
  v30 = sub_2267D2F0C;
  v31 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22679BFD8;
  v29 = &block_descriptor_6;
  v18 = _Block_copy(&aBlock);
  v19 = a1;

  [v19 setInterruptionHandler_];
  _Block_release(v18);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v30 = sub_2267D2F14;
  v31 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22679BFD8;
  v29 = &block_descriptor_25;
  v22 = _Block_copy(&aBlock);
  v23 = v19;

  [v23 setInvalidationHandler_];
  _Block_release(v22);
  [v23 resume];
  return 1;
}

uint64_t sub_2267D2C70(void (*a1)(uint64_t, void))
{
  v2 = v1;
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2263B7458();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_226836038();
  v10 = sub_2268366E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v9, v10, "ContextualSuggestionServer: requestSnapshots(forEndpoints:completion:)", v11, 2u);
    MEMORY[0x22AA821D0](v11, -1, -1);
  }

  v12 = (*(v5 + 8))(v7, v4);
  v13 = (*((*MEMORY[0x277D85000] & **(v2 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_suggestionStore)) + 0xB0))(v12);
  v14 = sub_2263B9870(v13);

  a1(v14, 0);
}

unint64_t sub_2267D2E50()
{
  result = qword_27D7A2338;
  if (!qword_27D7A2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2338);
  }

  return result;
}

unint64_t sub_2267D2F1C()
{
  result = qword_27D7A23D0;
  if (!qword_27D7A23D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A23D0);
  }

  return result;
}

unint64_t sub_2267D2FA0()
{
  result = qword_27D7A23E8;
  if (!qword_27D7A23E8)
  {
    sub_2267D2F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A23E8);
  }

  return result;
}

AppPredictionInternal::EntityActionDataTypes __swiftcall EntityActionDataTypes.init(entities:isSelectedFromUI:isFromPasteboard:)(AppPredictionInternal::EntityActionDataTypes entities, Swift::Bool isSelectedFromUI, Swift::Bool isFromPasteboard)
{
  *v3 = entities.entities._rawValue;
  *(v3 + 8) = isSelectedFromUI;
  *(v3 + 9) = isFromPasteboard;
  entities.isSelectedFromUI = isSelectedFromUI;
  return entities;
}

uint64_t EntityActionDataTypes.debugDescription.getter(double a1)
{
  v53 = sub_2268350D8();
  v2 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EntityActionDataTypes.EntityType(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 9);
  v47 = *(v1 + 8);
  v48 = v9;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v54 = *(v5 + 72);
    v50 = (v2 + 32);
    v51 = 0x80000002268CF430;
    v12 = MEMORY[0x277D84F90];
    v49 = (v2 + 8);
    while (1)
    {
      sub_2267D37CC(v11, v7);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if (EnumCaseMultiPayload > 4)
      {
        v24 = *v7;
        v25 = *(v7 + 1);
        *&v65 = 0;
        *(&v65 + 1) = 0xE000000000000000;
        if (EnumCaseMultiPayload == 5)
        {
          sub_226836968();

          *&v65 = 0xD000000000000011;
          v26 = v51;
        }

        else
        {
          sub_226836968();

          *&v65 = 0x4E20746867696C46;
          v26 = 0xEF203A7265626D75;
        }

LABEL_22:
        *(&v65 + 1) = v26;
        MEMORY[0x22AA7F8E0](v24, v25);
LABEL_23:

        v17 = *(&v65 + 1);
        v16 = v65;
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2267A046C(0, *(v12 + 2) + 1, 1, v12);
        }

        v19 = *(v12 + 2);
        v31 = *(v12 + 3);
        v20 = v19 + 1;
        if (v19 >= v31 >> 1)
        {
          v12 = sub_2267A046C((v31 > 1), v19 + 1, 1, v12);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v24 = *v7;
        v25 = *(v7 + 1);
        *&v65 = 0;
        *(&v65 + 1) = 0xE000000000000000;
        sub_226836968();

        *&v65 = 0x617A696E6167724FLL;
        v26 = 0xEE00203A6E6F6974;
        goto LABEL_22;
      }

      (*v50)(v52, v7, v53);
      *&v65 = 0x203A6B6E694CLL;
      *(&v65 + 1) = 0xE600000000000000;
      v15 = sub_226835078();
      MEMORY[0x22AA7F8E0](v15);

      v17 = *(&v65 + 1);
      v16 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2267A046C(0, *(v12 + 2) + 1, 1, v12);
      }

      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v12 = sub_2267A046C((v18 > 1), v19 + 1, 1, v12);
      }

      (*v49)(v52, v53);
LABEL_4:
      *(v12 + 2) = v20;
      v13 = &v12[16 * v19];
      *(v13 + 4) = v16;
      *(v13 + 5) = v17;
      v11 += v54;
      if (!--v10)
      {
        goto LABEL_29;
      }
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v27 = *(v7 + 5);
        v69 = *(v7 + 4);
        v70 = v27;
        v28 = *(v7 + 7);
        v71 = *(v7 + 6);
        v72 = v28;
        v29 = *(v7 + 1);
        v65 = *v7;
        v66 = v29;
        v30 = *(v7 + 3);
        v67 = *(v7 + 2);
        v68 = v30;
        v63 = 0;
        v64 = 0xE000000000000000;
        MEMORY[0x22AA7F8E0](0x3A73736572646441, 0xE900000000000020);
        v59 = v69;
        v60 = v70;
        v61 = v71;
        v62 = v72;
        v55 = v65;
        v56 = v66;
        v57 = v67;
        v58 = v68;
        sub_226836A48();
        sub_2267D50A0(&v65);
        v16 = v63;
        v17 = v64;
        goto LABEL_24;
      }

      v21 = *v7;
      v22 = *(v7 + 1);
      v23 = 0x3A6C69616D45;
    }

    else
    {
      v21 = *v7;
      v22 = *(v7 + 1);
      v23 = 0x3A656E6F6850;
    }

    *&v65 = v23 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    *(&v65 + 1) = 0xE700000000000000;
    MEMORY[0x22AA7F8E0](v21, v22);
    goto LABEL_23;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_29:
  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  sub_226836968();

  *&v65 = 0xD000000000000012;
  *(&v65 + 1) = 0x80000002268CF3D0;
  if (v47)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v47)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x22AA7F8E0](v32, v33);

  v34 = v65;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_2267A046C(0, *(v12 + 2) + 1, 1, v12);
  }

  v36 = *(v12 + 2);
  v35 = *(v12 + 3);
  if (v36 >= v35 >> 1)
  {
    v12 = sub_2267A046C((v35 > 1), v36 + 1, 1, v12);
  }

  *(v12 + 2) = v36 + 1;
  *&v12[16 * v36 + 32] = v34;
  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  sub_226836968();

  *&v65 = 0xD000000000000011;
  *(&v65 + 1) = 0x80000002268CF3F0;
  if (v48)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v48)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x22AA7F8E0](v37, v38);

  v39 = v65;
  v41 = *(v12 + 2);
  v40 = *(v12 + 3);
  if (v41 >= v40 >> 1)
  {
    v12 = sub_2267A046C((v40 > 1), v41 + 1, 1, v12);
  }

  *(v12 + 2) = v41 + 1;
  *&v12[16 * v41 + 32] = v39;
  *&v65 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267D503C();
  v42 = sub_226836388();
  v44 = v43;

  *&v65 = 0xD000000000000018;
  *(&v65 + 1) = 0x80000002268CF410;
  MEMORY[0x22AA7F8E0](v42, v44);

  MEMORY[0x22AA7F8E0](32032, 0xE200000000000000);

  return v65;
}

uint64_t type metadata accessor for EntityActionDataTypes.EntityType(uint64_t a1)
{
  result = qword_27D7A4150;
  if (!qword_27D7A4150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2267D37CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityActionDataTypes.EntityType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AddressComponents.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AddressComponents.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AddressComponents.jobTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AddressComponents.jobTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AddressComponents.organization.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AddressComponents.organization.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AddressComponents.street.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AddressComponents.street.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AddressComponents.city.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AddressComponents.city.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t AddressComponents.state.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t AddressComponents.state.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t AddressComponents.zipCode.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t AddressComponents.zipCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t AddressComponents.country.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t AddressComponents.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

void __swiftcall AddressComponents.init(name:jobTitle:organization:street:city:state:zipCode:country:)(AppPredictionInternal::AddressComponents *__return_ptr retstr, Swift::String_optional name, Swift::String_optional jobTitle, Swift::String_optional organization, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional zipCode, Swift::String_optional country)
{
  retstr->name = name;
  retstr->jobTitle = jobTitle;
  retstr->organization = organization;
  retstr->street = street;
  retstr->city = city;
  retstr->state = state;
  retstr->zipCode = zipCode;
  retstr->country = country;
}

unint64_t AddressComponents.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v62 = v0[4];
  v63 = v0[6];
  v3 = v0[7];
  v64 = v0[8];
  v4 = v0[9];
  v65 = v0[10];
  v66 = v0[5];
  v5 = v0[12];
  v6 = v0[14];
  v67 = v0[11];
  v68 = v0[13];
  v7 = v0[15];
  if (!v0[1])
  {
    v11 = MEMORY[0x277D84F90];
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v59 = v0[2];
  v60 = v0[7];
  v8 = v0[9];
  v9 = v0[12];
  v10 = v0[15];
  v69[0] = 0x203A656D614ELL;
  v69[1] = 0xE600000000000000;
  MEMORY[0x22AA7F8E0](*v0);
  v11 = sub_2267A046C(0, 1, 1, MEMORY[0x277D84F90]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_2267A046C((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[16 * v13];
  *(v14 + 4) = 0x203A656D614ELL;
  *(v14 + 5) = 0xE600000000000000;
  v7 = v10;
  v5 = v9;
  v4 = v8;
  v1 = v59;
  v3 = v60;
  if (v2)
  {
LABEL_7:
    strcpy(v69, "Job Title: ");
    HIDWORD(v69[1]) = -352321536;
    MEMORY[0x22AA7F8E0](v1, v2);
    v15 = v69[0];
    v16 = v69[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2267A046C(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_2267A046C((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v15;
    *(v19 + 5) = v16;
  }

LABEL_12:
  v20 = v67;
  if (v66)
  {
    v61 = v5;
    v21 = v6;
    v22 = v3;
    sub_226836968();

    strcpy(v69, "Organization: ");
    HIBYTE(v69[1]) = -18;
    MEMORY[0x22AA7F8E0](v62, v66);
    v23 = v69[0];
    v24 = v69[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2267A046C(0, *(v11 + 2) + 1, 1, v11);
    }

    v26 = *(v11 + 2);
    v25 = *(v11 + 3);
    if (v26 >= v25 >> 1)
    {
      v11 = sub_2267A046C((v25 > 1), v26 + 1, 1, v11);
    }

    *(v11 + 2) = v26 + 1;
    v27 = &v11[16 * v26];
    *(v27 + 4) = v23;
    *(v27 + 5) = v24;
    v3 = v22;
    v6 = v21;
    v5 = v61;
  }

  v28 = v68;
  if (v3)
  {
    v29 = v7;
    v30 = v5;
    v31 = v6;
    strcpy(v69, "Street: ");
    BYTE1(v69[1]) = 0;
    WORD1(v69[1]) = 0;
    HIDWORD(v69[1]) = -402653184;
    MEMORY[0x22AA7F8E0](v63, v3);
    v32 = v69[0];
    v33 = v69[1];
    v34 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2267A046C(0, *(v11 + 2) + 1, 1, v11);
    }

    v36 = *(v11 + 2);
    v35 = *(v11 + 3);
    if (v36 >= v35 >> 1)
    {
      v11 = sub_2267A046C((v35 > 1), v36 + 1, 1, v11);
    }

    *(v11 + 2) = v36 + 1;
    v37 = &v11[16 * v36];
    *(v37 + 4) = v32;
    *(v37 + 5) = v33;
    v4 = v34;
    v6 = v31;
    v5 = v30;
    v7 = v29;
    v20 = v67;
    v28 = v68;
  }

  if (v4)
  {
    v69[0] = 0x203A79746943;
    v69[1] = 0xE600000000000000;
    MEMORY[0x22AA7F8E0](v64, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2267A046C(0, *(v11 + 2) + 1, 1, v11);
    }

    v39 = *(v11 + 2);
    v38 = *(v11 + 3);
    if (v39 >= v38 >> 1)
    {
      v11 = sub_2267A046C((v38 > 1), v39 + 1, 1, v11);
    }

    *(v11 + 2) = v39 + 1;
    v40 = &v11[16 * v39];
    *(v40 + 4) = 0x203A79746943;
    *(v40 + 5) = 0xE600000000000000;
  }

  if (v20)
  {
    strcpy(v69, "State: ");
    v69[1] = 0xE700000000000000;
    MEMORY[0x22AA7F8E0](v65, v20);
    v41 = v69[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2267A046C(0, *(v11 + 2) + 1, 1, v11);
    }

    v43 = *(v11 + 2);
    v42 = *(v11 + 3);
    if (v43 >= v42 >> 1)
    {
      v11 = sub_2267A046C((v42 > 1), v43 + 1, 1, v11);
    }

    *(v11 + 2) = v43 + 1;
    v44 = &v11[16 * v43];
    *(v44 + 4) = v41;
    *(v44 + 5) = 0xE700000000000000;
  }

  if (v28)
  {
    strcpy(v69, "Zip Code: ");
    BYTE3(v69[1]) = 0;
    HIDWORD(v69[1]) = -369098752;
    MEMORY[0x22AA7F8E0](v5, v28);
    v45 = v69[0];
    v46 = v69[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2267A046C(0, *(v11 + 2) + 1, 1, v11);
    }

    v48 = *(v11 + 2);
    v47 = *(v11 + 3);
    if (v48 >= v47 >> 1)
    {
      v11 = sub_2267A046C((v47 > 1), v48 + 1, 1, v11);
    }

    *(v11 + 2) = v48 + 1;
    v49 = &v11[16 * v48];
    *(v49 + 4) = v45;
    *(v49 + 5) = v46;
  }

  if (v7)
  {
    strcpy(v69, "Country: ");
    WORD1(v69[1]) = 0;
    HIDWORD(v69[1]) = -385875968;
    MEMORY[0x22AA7F8E0](v6, v7);
    v50 = v69[0];
    v51 = v69[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2267A046C(0, *(v11 + 2) + 1, 1, v11);
    }

    v53 = *(v11 + 2);
    v52 = *(v11 + 3);
    if (v53 >= v52 >> 1)
    {
      v11 = sub_2267A046C((v52 > 1), v53 + 1, 1, v11);
    }

    *(v11 + 2) = v53 + 1;
    v54 = &v11[16 * v53];
    *(v54 + 4) = v50;
    *(v54 + 5) = v51;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267D503C();
  v55 = sub_226836388();
  v57 = v56;

  MEMORY[0x22AA7F8E0](v55, v57);

  MEMORY[0x22AA7F8E0](32032, 0xE200000000000000);

  return 0xD000000000000014;
}

uint64_t sub_2267D432C()
{
  v1 = *v0;
  sub_226836C08();
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t sub_2267D43A0(uint64_t a1)
{
  v2 = *v1;
  sub_226836C08();
  MEMORY[0x22AA80040](v2);
  return sub_226836C48();
}

uint64_t sub_2267D43E4()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x65646F4370697ALL;
  if (v1 != 6)
  {
    v3 = 0x7972746E756F63;
  }

  v4 = 2037672291;
  if (v1 != 4)
  {
    v4 = 0x6574617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x617A696E6167726FLL;
  if (v1 != 2)
  {
    v5 = 0x746565727473;
  }

  if (*v0)
  {
    v2 = 0x656C746954626F6ALL;
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

uint64_t sub_2267D44D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2267D5AF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2267D4510(uint64_t a1)
{
  v2 = sub_2267D5538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2267D454C(uint64_t a1)
{
  v2 = sub_2267D5538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddressComponents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2400, &qword_226874AC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v1[2];
  v18[11] = v1[3];
  v18[12] = v5;
  v6 = v1[4];
  v18[9] = v1[5];
  v18[10] = v6;
  v7 = v1[6];
  v18[7] = v1[7];
  v18[8] = v7;
  v8 = v1[9];
  v18[4] = v1[8];
  v18[5] = v8;
  v9 = v1[11];
  v18[2] = v1[10];
  v18[3] = v9;
  v10 = v1[13];
  v18[0] = v1[12];
  v18[1] = v10;
  v11 = v1[15];
  v18[6] = v1[14];
  v12 = a1[3];
  v13 = a1;
  v15 = v18 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_2267D5538();
  sub_226836C78();
  v27 = 0;
  v16 = v19;
  sub_226836B08();
  if (v16)
  {
    return (*(v4 + 8))(v15, v3);
  }

  v19 = v11;
  v26 = 1;
  sub_226836B08();
  v25 = 2;
  sub_226836B08();
  v24 = 3;
  sub_226836B08();
  v23 = 4;
  sub_226836B08();
  v22 = 5;
  sub_226836B08();
  v21 = 6;
  sub_226836B08();
  v20 = 7;
  sub_226836B08();
  return (*(v4 + 8))(v15, v3);
}

uint64_t AddressComponents.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  v6 = v1[11];
  v7 = v1[13];
  v10 = v1[15];
  if (v1[1])
  {
    sub_226836C28();
    sub_226836498();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_226836C28();
    if (v2)
    {
LABEL_3:
      sub_226836C28();
      sub_226836498();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  sub_226836C28();
  if (v3)
  {
LABEL_4:
    sub_226836C28();
    sub_226836498();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_226836C28();
  if (v4)
  {
LABEL_5:
    sub_226836C28();
    sub_226836498();
    v8 = v10;
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_226836C28();
  v8 = v10;
  if (v5)
  {
LABEL_6:
    sub_226836C28();
    sub_226836498();
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_226836C28();
  if (v6)
  {
LABEL_7:
    sub_226836C28();
    sub_226836498();
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_18:
    sub_226836C28();
    if (v8)
    {
      goto LABEL_9;
    }

    return sub_226836C28();
  }

LABEL_17:
  sub_226836C28();
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_8:
  sub_226836C28();
  sub_226836498();
  if (!v8)
  {
    return sub_226836C28();
  }

LABEL_9:
  sub_226836C28();

  return sub_226836498();
}

uint64_t AddressComponents.hashValue.getter()
{
  sub_226836C08();
  AddressComponents.hash(into:)(v1);
  return sub_226836C48();
}

uint64_t AddressComponents.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2408, &qword_226874AD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2267D5538();
  sub_226836C68();
  if (v2)
  {
    v52 = v2;
    v54 = 0uLL;
    v49 = 0;
    v50 = 0;
    v55 = 0;
    v53 = 0;
    __swift_destroy_boxed_opaque_existential_1(v51);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = v53;
    v73 = v55;
    v74 = v49;
    v75 = v50;
    v76 = v54;
    v77 = 0;
    v78 = 0;
  }

  else
  {
    LOBYTE(v64) = 0;
    v10 = sub_226836AD8();
    v47 = v12;
    v48 = v10;
    LOBYTE(v64) = 1;
    v13 = sub_226836AD8();
    v45 = v14;
    v46 = v13;
    LOBYTE(v64) = 2;
    v15 = sub_226836AD8();
    v44 = v16;
    LOBYTE(v64) = 3;
    v17 = sub_226836AD8();
    v43 = v18;
    LOBYTE(v64) = 4;
    v53 = sub_226836AD8();
    v55 = v19;
    LOBYTE(v64) = 5;
    v20 = sub_226836AD8();
    v50 = v21;
    LOBYTE(v64) = 6;
    v22 = sub_226836AD8();
    v49 = v20;
    *&v54 = v22;
    *(&v54 + 1) = v23;
    v79 = 7;
    v24 = sub_226836AD8();
    v52 = 0;
    v25 = v24;
    v26 = v8;
    v28 = v27;
    (*(v6 + 8))(v26, v5);
    v29 = v47;
    *&v56 = v48;
    *(&v56 + 1) = v47;
    v30 = v45;
    *&v57 = v46;
    *(&v57 + 1) = v45;
    *&v58 = v15;
    v41 = v17;
    v42 = v15;
    v31 = v44;
    *(&v58 + 1) = v44;
    *&v59 = v17;
    v32 = v43;
    *(&v59 + 1) = v43;
    *&v60 = v53;
    *(&v60 + 1) = v55;
    *&v61 = v20;
    v33 = v50;
    *(&v61 + 1) = v50;
    v62 = v54;
    *&v63 = v25;
    *(&v63 + 1) = v28;
    v34 = v56;
    v35 = v57;
    v36 = v59;
    a2[2] = v58;
    a2[3] = v36;
    *a2 = v34;
    a2[1] = v35;
    v37 = v60;
    v38 = v61;
    v39 = v63;
    a2[6] = v62;
    a2[7] = v39;
    a2[4] = v37;
    a2[5] = v38;
    sub_2267D558C(&v56, &v64);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v64 = v48;
    v65 = v29;
    v66 = v46;
    v67 = v30;
    v68 = v42;
    v69 = v31;
    v70 = v41;
    v71 = v32;
    v72 = v53;
    v73 = v55;
    v74 = v49;
    v75 = v33;
    v76 = v54;
    v77 = v25;
    v78 = v28;
  }

  return sub_2267D50A0(&v64);
}

uint64_t sub_2267D4F88()
{
  sub_226836C08();
  AddressComponents.hash(into:)(v1);
  return sub_226836C48();
}

uint64_t sub_2267D4FCC(uint64_t a1)
{
  sub_226836C08();
  AddressComponents.hash(into:)(v2);
  return sub_226836C48();
}

unint64_t sub_2267D503C()
{
  result = qword_27D7A1A90;
  if (!qword_27D7A1A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A1CC0, qword_226873D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1A90);
  }

  return result;
}

uint64_t _s21AppPredictionInternal17AddressComponentsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v103 = a1[12];
  v107 = a1[13];
  v14 = a1[14];
  v106 = a1[15];
  v15 = a2[1];
  v16 = a2[2];
  v18 = a2[3];
  v17 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v25 = a2[11];
  v104 = a2[12];
  v26 = a2[13];
  v102 = a2[14];
  v105 = a2[15];
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v95 = a2[7];
      v98 = a2[8];
      v79 = a1[11];
      v80 = a2[13];
      v77 = a2[2];
      v78 = a1[2];
      v27 = a1[14];
      v84 = a2[5];
      v86 = a1[4];
      v28 = a1[10];
      v90 = a1[6];
      v92 = a2[6];
      v29 = a2[11];
      v30 = a2[10];
      v88 = a1[5];
      v31 = a1[8];
      v32 = a1[9];
      v82 = a2[4];
      v33 = a2[9];
      v34 = a1[7];
      v35 = sub_226836B58();
      v22 = v95;
      v21 = v98;
      v9 = v34;
      v24 = v33;
      v12 = v32;
      v5 = v86;
      v10 = v31;
      v8 = v88;
      v7 = v90;
      v23 = v30;
      v4 = v78;
      v13 = v79;
      v25 = v29;
      v19 = v92;
      v11 = v28;
      v17 = v82;
      v20 = v84;
      v14 = v27;
      v16 = v77;
      v26 = v80;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v4 != v16 || v6 != v18)
    {
      v96 = v22;
      v99 = v21;
      v36 = v14;
      v83 = v17;
      v85 = v20;
      v37 = v11;
      v38 = v13;
      v39 = v25;
      v40 = v23;
      v87 = v5;
      v89 = v8;
      v41 = v10;
      v42 = v12;
      v43 = v24;
      v91 = v7;
      v93 = v19;
      v44 = v9;
      v45 = sub_226836B58();
      v9 = v44;
      v19 = v93;
      v22 = v96;
      v21 = v99;
      v24 = v43;
      v12 = v42;
      v20 = v85;
      v5 = v87;
      v10 = v41;
      v8 = v89;
      v7 = v91;
      v23 = v40;
      v25 = v39;
      v13 = v38;
      v11 = v37;
      v17 = v83;
      v14 = v36;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v5 != v17 || v8 != v20)
    {
      v97 = v22;
      v100 = v21;
      v81 = v26;
      v94 = v19;
      v46 = v14;
      v47 = v11;
      v48 = v13;
      v49 = v25;
      v50 = v23;
      v51 = v10;
      v52 = v12;
      v53 = v24;
      v54 = v7;
      v55 = v9;
      v56 = sub_226836B58();
      v22 = v97;
      v21 = v100;
      v9 = v55;
      v7 = v54;
      v24 = v53;
      v12 = v52;
      v10 = v51;
      v23 = v50;
      v25 = v49;
      v13 = v48;
      v11 = v47;
      v14 = v46;
      v19 = v94;
      v26 = v81;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v19 || v9 != v22)
    {
      v101 = v21;
      v57 = v14;
      v58 = v11;
      v59 = v13;
      v60 = v25;
      v61 = v23;
      v62 = v10;
      v63 = v12;
      v64 = v24;
      v65 = sub_226836B58();
      v21 = v101;
      v24 = v64;
      v12 = v63;
      v10 = v62;
      v23 = v61;
      v25 = v60;
      v13 = v59;
      v11 = v58;
      v14 = v57;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v24)
    {
      v66 = v14;
      v67 = v11;
      v68 = v13;
      v69 = v25;
      v70 = v23;
      v71 = sub_226836B58();
      v23 = v70;
      v25 = v69;
      v13 = v68;
      v11 = v67;
      v14 = v66;
      if ((v71 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }

    if (v11 != v23 || v13 != v25)
    {
      v72 = v14;
      v73 = sub_226836B58();
      v14 = v72;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v107)
  {
    if (!v26)
    {
      return 0;
    }

    if (v103 != v104 || v107 != v26)
    {
      v74 = v14;
      v75 = sub_226836B58();
      v14 = v74;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v106)
  {
    if (v105 && (v14 == v102 && v106 == v105 || (sub_226836B58() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v105)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2267D5538()
{
  result = qword_27D7A3F40[0];
  if (!qword_27D7A3F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A3F40);
  }

  return result;
}

unint64_t sub_2267D55C8()
{
  result = qword_27D7A2410;
  if (!qword_27D7A2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A2410);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2267D5630(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_2267D5678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2267D5718(uint64_t a1, double a2)
{
  result = sub_2268350D8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2267D57B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_2267D5814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddressComponents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AddressComponents.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2267D59F4()
{
  result = qword_27D7A4260[0];
  if (!qword_27D7A4260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A4260);
  }

  return result;
}

unint64_t sub_2267D5A4C()
{
  result = qword_27D7A4370;
  if (!qword_27D7A4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A4370);
  }

  return result;
}

unint64_t sub_2267D5AA4()
{
  result = qword_27D7A4378;
  if (!qword_27D7A4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A4378);
  }

  return result;
}

uint64_t sub_2267D5AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_226836B58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617A696E6167726FLL && a2 == 0xEC0000006E6F6974 || (sub_226836B58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746565727473 && a2 == 0xE600000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F4370697ALL && a2 == 0xE700000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_226836B58();

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

uint64_t sub_2267D5D88()
{
  type metadata accessor for MeetingContextDependencies(0);
}

id sub_2267D5E54()
{
  v1 = *(v0 + *(type metadata accessor for MeetingContext.Dependencies(0) + 20));

  return v1;
}

uint64_t sub_2267D5EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226835228();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = a3(0);
  *(a4 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2267D5F24(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2267D6FEC(a1, v2 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
  return v2;
}

uint64_t sub_2267D60AC()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);

  return swift_deallocClassInstance();
}

uint64_t sub_2267D6204@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_2267D623C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MeetingContext(0);
  sub_2267D79FC(&qword_27D7A1A40, type metadata accessor for MeetingContext, &unk_226874DE8);
  result = sub_2263B92B0(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2267D62B4()
{
  sub_2267D895C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226872800;
  result = type metadata accessor for MeetingContextStore.GenericMeetingContext(0);
  *(v0 + 32) = result;
  qword_27D7A51B8 = v0;
  return result;
}

uint64_t *sub_2267D6314()
{
  if (qword_27D7A4400 != -1)
  {
    swift_once();
  }

  return &qword_27D7A51B8;
}

uint64_t sub_2267D6364()
{
  if (qword_27D7A4400 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2267D63C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies;
  swift_beginAccess();
  return sub_2267D642C(v1 + v3, a1, type metadata accessor for MeetingContextDependencies);
}

uint64_t sub_2267D642C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2267D6494(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies;
  swift_beginAccess();
  sub_2267D64F4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2267D64F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeetingContextDependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267D65B8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2267D642C(a1, v2 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies, type metadata accessor for MeetingContextDependencies);
  v3 = *(a1 + *(type metadata accessor for MeetingContextDependencies(0) + 20));
  v5[2] = a1;
  *(v2 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts) = sub_2267D6960(sub_2267D68F4, v5, v3);
  sub_2267D6AD4(a1, type metadata accessor for MeetingContextDependencies);
  return v2;
}

uint64_t sub_2267D66E8(uint64_t a1)
{
  sub_2267D642C(a1, v1 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies, type metadata accessor for MeetingContextDependencies);
  v3 = *(a1 + *(type metadata accessor for MeetingContextDependencies(0) + 20));
  v5[2] = a1;
  *(v1 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts) = sub_2267D6960(sub_2267D8B3C, v5, v3);
  sub_2267D6AD4(a1, type metadata accessor for MeetingContextDependencies);
  return v1;
}

id sub_2267D6800@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MeetingContext.Dependencies(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_226835228();
  (*(*(v11 - 8) + 16))(v9, a2, v11);
  *&v9[*(v7 + 28)] = v10;
  type metadata accessor for MeetingContextStore.GenericMeetingContext(0);
  v12 = swift_allocObject();
  v13 = v10;
  result = sub_2267D6C54(v9);
  *a3 = v12;
  return result;
}

uint64_t sub_2267D6920(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2267D6C54(a1);
  return v2;
}

uint64_t sub_2267D6960(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2268368D8())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_226836A08();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA7FDD0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_2268369E8();
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_2267D6AD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2267D6B9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_contexts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_2267D6C54(uint64_t a1)
{
  v3 = sub_226835228();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + *(type metadata accessor for MeetingContext.Dependencies(0) + 20));
  result = [v13 title];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = result;
  v31 = v3;
  v32 = a1;
  v16 = sub_226836408();
  v29 = v17;
  v30 = v16;

  v18 = [v13 location];
  if (v18)
  {
    v19 = v18;
    v20 = sub_226836408();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  result = [v13 startDate];
  if (!result)
  {
    goto LABEL_9;
  }

  v23 = result;
  sub_2268351F8();

  result = [v13 endDate];
  if (result)
  {
    v24 = result;
    sub_2268351F8();

    v25 = v29;
    *v12 = v30;
    v12[1] = v25;
    v12[2] = v20;
    v12[3] = v22;
    v26 = *(v4 + 32);
    v27 = v9;
    v28 = v31;
    v26(v12 + *(v10 + 24), v27, v31);
    v26(v12 + *(v10 + 28), v6, v28);
    sub_2267D6FEC(v12, v1 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
    sub_2267D6FEC(v32, v1 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
    return v1;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2267D6F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  v11 = *(v10 + 24);
  v12 = sub_226835228();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), &a7[v11], a5, v12);
  v13 = &a7[*(v10 + 28)];

  return v15(v13, a6, v12);
}

uint64_t sub_2267D6FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2267D7090()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2267D70C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0) + 24);
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2267D713C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0) + 28);
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2267D71B8()
{
  v1 = 0x656C746974;
  v2 = 0x7461447472617473;
  if (*v0 != 2)
  {
    v2 = 0x65746144646E65;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

uint64_t sub_2267D7234@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2267D89D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2267D7268(uint64_t a1)
{
  v2 = sub_2267D7534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2267D72A4(uint64_t a1)
{
  v2 = sub_2267D7534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2267D72E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2420, &qword_226874DD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2267D7534();
  sub_226836C78();
  v12 = 0;
  sub_226836B18();
  if (!v1)
  {
    v11 = 1;
    sub_226836B08();
    type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
    v10 = 2;
    sub_226835228();
    sub_2267D79FC(&qword_27D7A2428, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_226836B28();
    v9 = 3;
    sub_226836B28();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2267D7534()
{
  result = qword_27D7A4408[0];
  if (!qword_27D7A4408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A4408);
  }

  return result;
}

uint64_t sub_2267D7588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_226835228();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2430, &qword_226874DE0);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v10 = &v32 - v9;
  v11 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2267D7534();
  v44 = v10;
  v14 = v45;
  sub_226836C68();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v5;
  v38 = v8;
  v16 = v40;
  v15 = v41;
  v45 = v11;
  v17 = v42;
  v49 = 0;
  v18 = sub_226836AE8();
  v20 = v19;
  *v13 = v18;
  v13[1] = v19;
  v48 = 1;
  v21 = sub_226836AD8();
  v36 = v20;
  v13[2] = v21;
  v13[3] = v22;
  v47 = 2;
  v23 = sub_2267D79FC(&qword_27D7A2438, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v24 = v38;
  v34 = v23;
  v35 = 0;
  sub_226836AF8();
  v25 = *(v45 + 24);
  v26 = *(v15 + 32);
  v33 = v13;
  v27 = v24;
  v28 = v26;
  v26(v13 + v25, v27, v17);
  v46 = 3;
  v29 = v37;
  sub_226836AF8();
  (*(v16 + 8))(v44, v43);
  v30 = v33;
  v28(v33 + *(v45 + 28), v29, v17);
  sub_2267D642C(v30, v39, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2267D6AD4(v30, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
}

uint64_t sub_2267D79FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2267D7A74()
{
  v1 = sub_226835228();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v16 = sub_226834F28();
  v8 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata;
  v12 = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  v13 = *(v2 + 16);
  v13(v7, v11 + *(v12 + 24), v1);
  v13(v4, v11 + *(v12 + 28), v1);
  sub_226834F08();
  LOBYTE(v1) = sub_226834F18();
  (*(v8 + 8))(v10, v16);
  return v1 & 1;
}

uint64_t sub_2267D7C84()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v1 setDateStyle_];
  [v1 setTimeStyle_];
  sub_226836968();

  MEMORY[0x22AA7F8E0](*(v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata), *(v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata + 8));
  MEMORY[0x22AA7F8E0](0x6574726174732022, 0xED00002074612064);
  type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(0);
  v2 = sub_2268351A8();
  v3 = [v1 stringFromDate_];

  v4 = sub_226836408();
  v6 = v5;

  MEMORY[0x22AA7F8E0](v4, v6);

  return 34;
}

uint64_t sub_2267D7E0C()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
  sub_2267D6AD4(v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);
  return v0;
}

uint64_t sub_2267D7E6C()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies, type metadata accessor for MeetingContext.Dependencies);
  sub_2267D6AD4(v0 + OBJC_IVAR____TtCC21AppPredictionInternal19MeetingContextStore21GenericMeetingContext_metadata, type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata);

  return swift_deallocClassInstance();
}

uint64_t sub_2267D7F08()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies, type metadata accessor for MeetingContextDependencies);

  return v0;
}

uint64_t sub_2267D7F54()
{
  sub_2267D6AD4(v0 + OBJC_IVAR____TtC21AppPredictionInternal19MeetingContextStore_dependencies, type metadata accessor for MeetingContextDependencies);

  return swift_deallocClassInstance();
}

uint64_t sub_2267D7FDC(uint64_t a1)
{
  result = sub_2267D79FC(&qword_27D7A2440, type metadata accessor for MeetingContext, &unk_226874E04);
  *(a1 + 8) = result;
  return result;
}

void sub_2267D8120(uint64_t a1)
{
  if (!qword_27D7A2448)
  {
    sub_2267D8178();
    v1 = sub_2268365C8();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A2448);
    }
  }
}

unint64_t sub_2267D8178()
{
  result = qword_27D7A2450;
  if (!qword_27D7A2450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A2450);
  }

  return result;
}

uint64_t sub_2267D81CC(uint64_t a1)
{
  result = type metadata accessor for MeetingContext.Dependencies(319);
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226835228();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2267D8410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_226835228();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2267D84A4(uint64_t a1)
{
  result = type metadata accessor for MeetingContextDependencies(319);
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

uint64_t sub_2267D8568(uint64_t a1)
{
  result = type metadata accessor for MeetingContextStore.GenericMeetingContext.Metadata(319);
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

void sub_2267D8620(uint64_t a1)
{
  sub_2267D86B4();
  if (v1 <= 0x3F)
  {
    sub_226835228();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2267D86B4()
{
  if (!qword_27D7A2458)
  {
    v0 = sub_226836828();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A2458);
    }
  }
}

uint64_t getEnumTagSinglePayload for MeetingContextStore.GenericMeetingContext.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MeetingContextStore.GenericMeetingContext.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2267D8858()
{
  result = qword_27D7A47F0[0];
  if (!qword_27D7A47F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A47F0);
  }

  return result;
}

unint64_t sub_2267D88B0()
{
  result = qword_27D7A4900;
  if (!qword_27D7A4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A4900);
  }

  return result;
}

unint64_t sub_2267D8908()
{
  result = qword_27D7A4908[0];
  if (!qword_27D7A4908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7A4908);
  }

  return result;
}

uint64_t sub_2267D895C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2418, &qword_226874DD0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A2460;
    v3 = &unk_226875068;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2267D89D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_226836B58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_226836B58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_226836B58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_226836B58();

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

id sub_2267D8C1C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  type metadata accessor for PListDictionaryUtilities();
  sub_2267CA304();

  sub_2267FB75C(v2, 0x6E69646465626D65, 0xEC00000078644967, sub_2267D8CD0, &v6, MEMORY[0x277D83B88], &v7);

  v3 = v7;
  v4 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  return [v4 initWithInteger_];
}

id sub_2267D8D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_OWORD *))
{
  v14 = a3;
  type metadata accessor for PListDictionaryUtilities();
  sub_2267CA304();

  sub_2267FB75C(v9, a4, a5, a6, &v14, MEMORY[0x277D83E88], &v15);

  v10 = v15;
  v11 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v12 = [v11 initWithUnsignedInteger_];

  return v12;
}

id sub_2267D8E98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  v11 = a1;
  type metadata accessor for PListDictionaryUtilities();
  sub_2267CA304();

  sub_2267FB75C(v7, a2, a3, a4, &v11, MEMORY[0x277D83E88], &v12);

  v8 = v12;
  v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  return [v9 initWithUnsignedInteger_];
}

uint64_t sub_2267D8F48@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_2263B4F20(a1, &v5);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
  }

  *(a3 + 8) = result ^ 1;
  return result;
}

id sub_2267D9084(uint64_t a1, uint64_t a2)
{
  v7 = 1064346583;
  type metadata accessor for PListDictionaryUtilities();
  sub_2267CA304();

  sub_2267FB75C(v2, 0xD000000000000010, 0x80000002268CF550, sub_2267D914C, &v7, MEMORY[0x277D83A90], &v8);

  v3 = v8;
  v4 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v5) = v3;
  return [v4 initWithFloat_];
}

uint64_t sub_2267D914C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2263B4F20(a1, &v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  *(a2 + 4) = result ^ 1;
  return result;
}

id sub_2267D91B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SemanticSearchConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2267D9248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SemanticSearchConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267D9280(uint64_t a1, uint64_t a2)
{
  v5 = sub_226835268();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226835258();
  sub_226835238();
  (*(v6 + 8))(v8, v5);
  (*(a2 + 32))(a1, a2);
  if (v2)
  {
  }

  v10 = objc_allocWithZone(sub_226835BF8());
  return sub_226835BE8();
}

uint64_t sub_2267D943C()
{
  v1 = sub_226836068();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267D94F8, 0, 0);
}

uint64_t sub_2267D94F8()
{
  v43 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[7] = v1;
  v2 = sub_2268363F8();
  [v1 setReason_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2268750E0;
  *(v3 + 32) = sub_226836408();
  *(v3 + 40) = v4;
  *(v3 + 48) = sub_226836408();
  *(v3 + 56) = v5;
  *(v3 + 64) = sub_226836408();
  *(v3 + 72) = v6;
  *(v3 + 80) = sub_226836408();
  *(v3 + 88) = v7;
  *(v3 + 96) = sub_226836408();
  *(v3 + 104) = v8;
  *(v3 + 112) = sub_226836408();
  *(v3 + 120) = v9;
  *(v3 + 128) = sub_226836408();
  *(v3 + 136) = v10;
  *(v3 + 144) = sub_226836408();
  *(v3 + 152) = v11;
  *(v3 + 160) = sub_226836408();
  *(v3 + 168) = v12;
  v13 = sub_226836558();

  v40 = v1;
  [v1 setFetchAttributes_];

  v14 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2268363F8();
    v17 = [v15 integerForKey_];

    if (v17 <= 0)
    {
      v18 = 30;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 30;
  }

  v20 = v0[5];
  v19 = v0[6];
  v21 = v0[4];
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_226836968();
  v22 = sub_226836408();
  MEMORY[0x22AA7F8E0](v22);

  MEMORY[0x22AA7F8E0](0x22203D3D20, 0xE500000000000000);
  MEMORY[0x22AA7F8E0](0xD00000000000001ELL, 0x80000002268CF5C0);
  MEMORY[0x22AA7F8E0](0x6E49282026262022, 0xEE002865676E6152);
  v23 = sub_226836408();
  MEMORY[0x22AA7F8E0](v23);

  MEMORY[0x22AA7F8E0](0x2E656D697424202CLL, 0xED00002D28776F6ELL);
  v0[2] = v18;
  v24 = sub_226836B48();
  MEMORY[0x22AA7F8E0](v24);

  MEMORY[0x22AA7F8E0](0x6D697424202C2973, 0xEF2929776F6E2E65);
  v26 = v41;
  v25 = v42;
  v0[8] = v42;
  v27 = sub_2267FBC24();
  (*(v20 + 16))(v19, v27, v21);

  v28 = sub_226836038();
  v29 = sub_2268366E8();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[5];
  v32 = v0[6];
  v33 = v0[4];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_2263B4D48(v26, v25, &v41);
    _os_log_impl(&dword_2263AA000, v28, v29, "Executing pasteboard query %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x22AA821D0](v35, -1, -1);
    MEMORY[0x22AA821D0](v34, -1, -1);
  }

  (*(v31 + 8))(v32, v33);
  v36 = swift_task_alloc();
  v0[9] = v36;
  v36[2] = v26;
  v36[3] = v25;
  v36[4] = v40;
  v37 = swift_task_alloc();
  v0[10] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2468, &qword_226875100);
  *v37 = v0;
  v37[1] = sub_2267D9A6C;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD000000000000023, 0x80000002268CF5E0, sub_2267DA2C8, v36, v38);
}

uint64_t sub_2267D9A6C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2267D9C64;
  }

  else
  {

    v2 = sub_2267D9B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2267D9B90()
{
  v7 = v0;
  v1 = *(v0 + 88);
  v6 = *(v0 + 24);

  sub_2267DC510(&v6, v2);
  if (v1)
  {
  }

  else
  {

    v4 = v6;

    v5 = *(v0 + 8);

    return v5(v4);
  }
}

uint64_t sub_2267D9C64()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2267D9CE8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_226835228();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for PasteboardItem(0);
  sub_2267A1AF8(a1 + *(v16 + 36), v8, &qword_27D7A2530, qword_2268738A0);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_226835178();
    if (v17(v8, 1, v9) != 1)
    {
      sub_2267A1DC0(v8, &qword_27D7A2530, qword_2268738A0);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  sub_2267A1AF8(v22 + *(v16 + 36), v5, &qword_27D7A2530, qword_2268738A0);
  if (v17(v5, 1, v9) == 1)
  {
    sub_226835178();
    if (v17(v5, 1, v9) != 1)
    {
      sub_2267A1DC0(v5, &qword_27D7A2530, qword_2268738A0);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v5, v9);
  }

  v18 = sub_2268351B8();
  v19 = *(v10 + 8);
  v19(v12, v9);
  v19(v15, v9);
  return v18 & 1;
}

uint64_t sub_2267D9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v12 = sub_2268363F8();
  v13 = [v11 initWithQueryString:v12 queryContext:a4];

  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v24 = sub_2267DF3F8;
  v25 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2267DB430;
  v23 = &block_descriptor_7;
  v15 = _Block_copy(&aBlock);

  [v13 setFoundItemsHandler_];
  _Block_release(v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v24 = sub_2267DF400;
  v25 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2267DB4A4;
  v23 = &block_descriptor_12_0;
  v18 = _Block_copy(&aBlock);

  [v13 setCompletionHandler_];
  _Block_release(v18);
  [v13 start];
}

void sub_2267DA2D4(unint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24B0, qword_226875208);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v23 - v4);
  v29 = type metadata accessor for PasteboardItem(0);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v26 = &v23 - v8;
  v23 = objc_autoreleasePoolPush();
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = (v27 + 48);
    v14 = MEMORY[0x277D84F90];
    v25 = a1;
    while (1)
    {
      if (v11)
      {
        v15 = MEMORY[0x22AA7FDD0](v10, a1);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v10 + 32);
      }

      v16 = v15;
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v30 = v15;
      sub_2267DA5D8(&v30, v5);

      if ((*v13)(v5, 1, v29) == 1)
      {
        sub_2267A1DC0(v5, &qword_27D7A24B0, qword_226875208);
      }

      else
      {
        v18 = v26;
        sub_2267DF394(v5, v26);
        sub_2267DF394(v18, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2267DC338(0, v14[2] + 1, 1, v14, v19);
        }

        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          v14 = sub_2267DC338((v20 > 1), v21 + 1, 1, v14, v19);
        }

        v14[2] = v21 + 1;
        sub_2267DF394(v28, v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21);
        a1 = v25;
      }

      ++v10;
      if (v17 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_21:
  v22 = v24;
  swift_beginAccess();
  *(v22 + 16) = v14;

  objc_autoreleasePoolPop(v23);
}

uint64_t sub_2267DA5D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v82 - v8;
  MEMORY[0x28223BE20](v9);
  v94 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v82 - v14;
  MEMORY[0x28223BE20](v16);
  v95 = &v82 - v17;
  v18 = sub_226834EE8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [*a1 attributeSet];
  v24 = *MEMORY[0x277CC2750];
  v93 = v23;
  if ([v23 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v99 = v97;
  v100 = v98;
  if (!*(&v98 + 1))
  {
    sub_2267A1DC0(&v99, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v90 = 0;
    v25 = 0;
    goto LABEL_10;
  }

  v25 = *(&v96 + 1);
  v90 = v96;
  v99 = v96;

  sub_226834ED8();
  sub_22679BAA8();
  sub_226836848();
  (*(v19 + 8))(v22, v18);

  v26 = sub_2268364A8();

  if (!v26)
  {
    v27 = type metadata accessor for PasteboardItem(0);
    (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }

LABEL_10:
  v29 = v93;
  if ([v93 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v88 = v25;
  v99 = v97;
  v100 = v98;
  if (*(&v98 + 1))
  {
    v30 = sub_2268350D8();
    v31 = v95;
    v32 = swift_dynamicCast();
    (*(*(v30 - 8) + 56))(v31, v32 ^ 1u, 1, v30);
  }

  else
  {
    sub_2267A1DC0(&v99, &qword_27D7A1AA0, &qword_2268732C0);
    v33 = sub_2268350D8();
    (*(*(v33 - 8) + 56))(v95, 1, 1, v33);
  }

  if ([v29 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v99 = v97;
  v100 = v98;
  if (*(&v98 + 1))
  {
    v34 = swift_dynamicCast();
    if (v34)
    {
      v35 = v96;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = *(&v96 + 1);
    }

    else
    {
      v36 = 0;
    }

    v86 = v36;
    v87 = v35;
  }

  else
  {
    sub_2267A1DC0(&v99, &qword_27D7A1AA0, &qword_2268732C0);
    v86 = 0;
    v87 = 0;
  }

  if ([v29 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v99 = v97;
  v100 = v98;
  if (!*(&v98 + 1))
  {
    sub_2267A1DC0(&v99, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_47:
    v92 = 0;
    v53 = v89;
    goto LABEL_50;
  }

  v84 = v6;
  v85 = a2;
  v37 = v96;
  v38 = *(v96 + 16);
  if (v38)
  {
    v39 = 0;
    v40 = v96 + 40;
    v82 = v38 - 1;
    v92 = MEMORY[0x277D84F90];
    v83 = v96 + 40;
    do
    {
      v41 = v40 + 16 * v39;
      v42 = v39;
      while (1)
      {
        if (v42 >= *(v37 + 16))
        {
          __break(1u);
          return result;
        }

        v39 = v42 + 1;

        sub_2268350B8();
        v43 = sub_2268350D8();
        v44 = *(v43 - 8);
        if ((*(v44 + 48))(v15, 1, v43) != 1)
        {
          break;
        }

        result = sub_2267A1DC0(v15, &qword_27D7A1A10, &qword_226873060);
        v41 += 16;
        ++v42;
        if (v38 == v39)
        {
          goto LABEL_49;
        }
      }

      v45 = sub_2268350A8();
      v47 = v46;

      (*(v44 + 8))(v15, v43);
      result = swift_isUniquelyReferenced_nonNull_native();
      v48 = v47;
      if ((result & 1) == 0)
      {
        result = sub_2267A046C(0, *(v92 + 2) + 1, 1, v92);
        v92 = result;
      }

      v50 = *(v92 + 2);
      v49 = *(v92 + 3);
      if (v50 >= v49 >> 1)
      {
        result = sub_2267A046C((v49 > 1), v50 + 1, 1, v92);
        v92 = result;
      }

      v51 = v92;
      *(v92 + 2) = v50 + 1;
      v52 = &v51[16 * v50];
      *(v52 + 4) = v45;
      *(v52 + 5) = v48;
      v40 = v83;
    }

    while (v82 != v42);
  }

  else
  {
    v92 = MEMORY[0x277D84F90];
  }

LABEL_49:

  a2 = v85;
  v6 = v84;
  v29 = v93;
  v53 = v89;
LABEL_50:
  if ([v29 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v99 = v97;
  v100 = v98;
  if (!*(&v98 + 1))
  {
    sub_2267A1DC0(&v99, &qword_27D7A1AA0, &qword_2268732C0);
    v60 = sub_226835228();
    (*(*(v60 - 8) + 56))(v53, 1, 1, v60);
LABEL_57:
    if ([v29 attributeForKey_])
    {
      sub_226836878();
      swift_unknownObjectRelease();
    }

    else
    {
      v97 = 0u;
      v98 = 0u;
    }

    v59 = v91;
    v99 = v97;
    v100 = v98;
    if (*(&v98 + 1))
    {
      v61 = sub_226835228();
      v62 = v94;
      v63 = swift_dynamicCast();
      (*(*(v61 - 8) + 56))(v62, v63 ^ 1u, 1, v61);
    }

    else
    {
      sub_2267A1DC0(&v99, &qword_27D7A1AA0, &qword_2268732C0);
      v61 = sub_226835228();
      (*(*(v61 - 8) + 56))(v94, 1, 1, v61);
    }

    sub_226835228();
    if ((*(*(v61 - 8) + 48))(v53, 1, v61) != 1)
    {
      sub_2267A1DC0(v53, &qword_27D7A2530, qword_2268738A0);
    }

    goto LABEL_65;
  }

  v54 = sub_226835228();
  v55 = swift_dynamicCast();
  v56 = *(v54 - 8);
  v57 = *(v56 + 56);
  v57(v53, v55 ^ 1u, 1, v54);
  if ((*(v56 + 48))(v53, 1, v54) == 1)
  {
    goto LABEL_57;
  }

  v58 = v94;
  (*(v56 + 32))(v94, v53, v54);
  v57(v58, 0, 1, v54);
  v59 = v91;
LABEL_65:
  if ([v29 attributeForKey_])
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v99 = v97;
  v100 = v98;
  if (*(&v98 + 1))
  {
    v64 = sub_226835228();
    v65 = swift_dynamicCast();
    (*(*(v64 - 8) + 56))(v6, v65 ^ 1u, 1, v64);
  }

  else
  {
    sub_2267A1DC0(&v99, &qword_27D7A1AA0, &qword_2268732C0);
    v66 = sub_226835228();
    (*(*(v66 - 8) + 56))(v6, 1, 1, v66);
  }

  sub_2267A1AF8(v95, v59, &qword_27D7A1A10, &qword_226873060);
  v67 = sub_2268350D8();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v59, 1, v67) == 1)
  {
    sub_2267A1DC0(v59, &qword_27D7A1A10, &qword_226873060);
    v69 = 0;
    v70 = 0;
  }

  else
  {
    v69 = sub_226835078();
    v70 = v71;
    (*(v68 + 8))(v59, v67);
  }

  v72 = [v29 relatedAppBundleIdentifier];
  if (v72)
  {
    v73 = v72;
    v74 = sub_226836408();
    v76 = v75;
  }

  else
  {

    v74 = 0;
    v76 = 0;
  }

  v77 = type metadata accessor for PasteboardItem(0);
  v78 = v94;
  sub_2267A1AF8(v94, a2 + *(v77 + 36), &qword_27D7A2530, qword_2268738A0);
  sub_2267A1AF8(v6, a2 + *(v77 + 40), &qword_27D7A2530, qword_2268738A0);
  v79 = v88;
  *a2 = v90;
  a2[1] = v79;
  a2[2] = v92;
  a2[3] = v69;
  a2[4] = v70;
  a2[5] = v74;
  v80 = v86;
  v81 = v87;
  a2[6] = v76;
  a2[7] = v81;
  a2[8] = v80;
  sub_2267A1DC0(v78, &qword_27D7A2530, qword_2268738A0);
  (*(*(v77 - 8) + 56))(a2, 0, 1, v77);
  sub_2267A1DC0(v6, &qword_27D7A2530, qword_2268738A0);
  return sub_2267A1DC0(v95, &qword_27D7A1A10, &qword_226873060);
}

uint64_t sub_2267DB3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a11;
  v14 = type metadata accessor for PasteboardItem(0);
  sub_2267A5C90(a12, a9 + *(v14 + 36));
  v15 = a9 + *(v14 + 40);

  return sub_2267A5C90(a13, v15);
}

uint64_t sub_2267DB430(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2267DF504();
  v3 = sub_226836568();

  v2(v3);
}

void sub_2267DB4A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2267DB528()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2267DB558()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2267DB588()
{
  v1 = *(v0 + 56);

  return v1;
}

id sub_2267DB648()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27D7A4998 = v0;
  return result;
}

uint64_t PasteboardItem.debugDescription.getter()
{
  v1 = v0;
  v38 = 4271950;
  v2 = sub_226835228();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for PasteboardItem(0);
  sub_2267A1AF8(v1 + *(v12 + 36), v11, &qword_27D7A2530, qword_2268738A0);
  v13 = *(v3 + 48);
  v14 = &unk_27D7A4000;
  if (v13(v11, 1, v2) == 1)
  {
    v15 = 0xE300000000000000;
    v37 = 4271950;
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    if (qword_27D7A4990 != -1)
    {
      swift_once();
    }

    v16 = qword_27D7A4998;
    v17 = sub_2268351A8();
    v18 = [v16 stringFromDate_];

    v37 = sub_226836408();
    v15 = v19;

    v14 = &unk_27D7A4000;
    (*(v3 + 8))(v5, v2);
  }

  sub_2267A1AF8(v1 + *(v12 + 40), v8, &qword_27D7A2530, qword_2268738A0);
  if (v13(v8, 1, v2) == 1)
  {
    v20 = 0xE300000000000000;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    if (qword_27D7A4990 != -1)
    {
      swift_once();
    }

    v21 = v14[307];
    v22 = sub_2268351A8();
    v23 = [v21 stringFromDate_];

    v38 = sub_226836408();
    v20 = v24;

    (*(v3 + 8))(v5, v2);
  }

  v25 = 1701736270;
  if (v1[2])
  {
    v39 = v1[2];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
    sub_2267D503C();
    v26 = sub_226836388();
    v28 = v27;
  }

  else
  {
    v28 = 0xE400000000000000;
    v26 = 1701736270;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD00000000000001BLL, 0x80000002268CF630);
  if (v1[1])
  {
    v29 = *v1;
    v30 = v1[1];
  }

  else
  {
    v30 = 0xE400000000000000;
    v29 = 1701736270;
  }

  MEMORY[0x22AA7F8E0](v29, v30);

  MEMORY[0x22AA7F8E0](0xD00000000000001CLL, 0x80000002268CF650);
  MEMORY[0x22AA7F8E0](v26, v28);

  MEMORY[0x22AA7F8E0](0xD000000000000016, 0x80000002268CF670);
  if (v1[4])
  {
    v31 = v1[3];
    v32 = v1[4];
  }

  else
  {
    v32 = 0xE400000000000000;
    v31 = 1701736270;
  }

  MEMORY[0x22AA7F8E0](v31, v32);

  MEMORY[0x22AA7F8E0](0xD00000000000001CLL, 0x80000002268CF690);
  if (v1[6])
  {
    v33 = v1[5];
    v34 = v1[6];
  }

  else
  {
    v34 = 0xE400000000000000;
    v33 = 1701736270;
  }

  MEMORY[0x22AA7F8E0](v33, v34);

  MEMORY[0x22AA7F8E0](0xD000000000000012, 0x80000002268CF6B0);
  if (v1[8])
  {
    v25 = v1[7];
    v35 = v1[8];
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x22AA7F8E0](v25, v35);

  MEMORY[0x22AA7F8E0](0xD000000000000016, 0x80000002268CF6D0);
  MEMORY[0x22AA7F8E0](v37, v15);

  MEMORY[0x22AA7F8E0](0xD000000000000018, 0x80000002268CF6F0);
  MEMORY[0x22AA7F8E0](v38, v20);

  MEMORY[0x22AA7F8E0](2689570, 0xE300000000000000);
  return v39;
}

uint64_t PasteboardItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_226835228();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  if (v1[1])
  {
    sub_226836C28();
    sub_226836498();
    v12 = v1[2];
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_226836C28();
    if (v1[4])
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  sub_226836C28();
  v12 = v1[2];
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_226836C28();
  MEMORY[0x22AA80040](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 40;
    do
    {

      sub_226836498();

      v14 += 16;
      --v13;
    }

    while (v13);
  }

  if (v1[4])
  {
LABEL_7:
    sub_226836C28();
    sub_226836498();
    if (v1[6])
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_226836C28();
    if (v1[8])
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  sub_226836C28();
  if (!v1[6])
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_226836C28();
  sub_226836498();
  if (v1[8])
  {
LABEL_9:
    sub_226836C28();
    sub_226836498();
    goto LABEL_15;
  }

LABEL_14:
  sub_226836C28();
LABEL_15:
  v15 = type metadata accessor for PasteboardItem(0);
  sub_2267A1AF8(v1 + *(v15 + 36), v11, &qword_27D7A2530, qword_2268738A0);
  v16 = v21;
  v17 = *(v21 + 48);
  if (v17(v11, 1, v3) == 1)
  {
    sub_226836C28();
    v18 = v21;
  }

  else
  {
    (*(v16 + 32))(v5, v11, v3);
    sub_226836C28();
    sub_2267DF28C(&qword_27D7A22F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226836368();
    v18 = v21;
    (*(v21 + 8))(v5, v3);
  }

  sub_2267A1AF8(v2 + *(v15 + 40), v8, &qword_27D7A2530, qword_2268738A0);
  if (v17(v8, 1, v3) == 1)
  {
    return sub_226836C28();
  }

  (*(v18 + 32))(v5, v8, v3);
  sub_226836C28();
  sub_2267DF28C(&qword_27D7A22F0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226836368();
  return (*(v18 + 8))(v5, v3);
}

uint64_t PasteboardItem.hashValue.getter()
{
  sub_226836C08();
  PasteboardItem.hash(into:)(v1);
  return sub_226836C48();
}

uint64_t sub_2267DC124()
{
  sub_226836C08();
  PasteboardItem.hash(into:)(v1);
  return sub_226836C48();
}

uint64_t sub_2267DC168(uint64_t a1)
{
  sub_226836C08();
  PasteboardItem.hash(into:)(v2);
  return sub_226836C48();
}

uint64_t sub_2267DC1A4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_226836B58() & 1) == 0)
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

char *sub_2267DC234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2490, "bo\n");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2267DC338(void *result, int64_t a2, char a3, void *a4, double a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2498, "ho\n");
  v11 = *(type metadata accessor for PasteboardItem(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(type metadata accessor for PasteboardItem(0) - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_2267DC510(uint64_t *a1, double a2)
{
  v3 = *(type metadata accessor for PasteboardItem(0) - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2267DE6E8(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_2267DC604(v6);
  *a1 = v4;
}

uint64_t type metadata accessor for PasteboardItem(uint64_t a1)
{
  result = qword_27D7A4AA0;
  if (!qword_27D7A4AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2267DC604(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_226836B38();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PasteboardItem(0);
        v6 = sub_226836598();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PasteboardItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2267DCC0C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2267DC730(0, v2, 1, a1);
  }
}

void sub_2267DC730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v43 - v11;
  v12 = sub_226835228();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v43 - v16;
  v59 = type metadata accessor for PasteboardItem(0);
  MEMORY[0x28223BE20](v59);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v60 = &v43 - v19;
  MEMORY[0x28223BE20](v20);
  v57 = &v43 - v22;
  v45 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v25 = (v13 + 48);
    v53 = (v13 + 32);
    v26 = (v13 + 8);
    v27 = v23 + v24 * (a3 - 1);
    v50 = -v24;
    v51 = v23;
    v28 = a1 - a3;
    v44 = v24;
    v29 = v23 + v24 * a3;
LABEL_5:
    v48 = v27;
    v49 = a3;
    v46 = v29;
    v47 = v28;
    v30 = v56;
    while (1)
    {
      v31 = v57;
      sub_2267DF2D4(v29, v57);
      sub_2267DF2D4(v27, v60);
      sub_2267A1AF8(v31 + *(v59 + 36), v30, &qword_27D7A2530, qword_2268738A0);
      v32 = *v25;
      if ((*v25)(v30, 1, v12) == 1)
      {
        sub_226835178();
        v33 = v32(v30, 1, v12);
        v34 = v55;
        if (v33 != 1)
        {
          sub_2267A1DC0(v56, &qword_27D7A2530, qword_2268738A0);
        }
      }

      else
      {
        (*v53)(v58, v30, v12);
        v34 = v55;
      }

      sub_2267A1AF8(v60 + *(v59 + 36), v34, &qword_27D7A2530, qword_2268738A0);
      if (v32(v34, 1, v12) == 1)
      {
        v35 = v54;
        sub_226835178();
        if (v32(v34, 1, v12) != 1)
        {
          sub_2267A1DC0(v34, &qword_27D7A2530, qword_2268738A0);
        }
      }

      else
      {
        v35 = v54;
        (*v53)(v54, v34, v12);
      }

      v36 = v58;
      v37 = sub_2268351B8();
      v38 = v35;
      v39 = v37;
      v40 = *v26;
      (*v26)(v38, v12);
      v40(v36, v12);
      sub_2267DF338(v60);
      sub_2267DF338(v57);
      v30 = v56;
      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v27 = v48 + v44;
        v28 = v47 - 1;
        v29 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v41 = v52;
      sub_2267DF394(v29, v52);
      swift_arrayInitWithTakeFrontToBack();
      sub_2267DF394(v41, v27);
      v27 += v50;
      v29 += v50;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2267DCC0C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v151 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v6 - 8);
  v174 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v147 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v147 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v147 - v15;
  v177 = sub_226835228();
  v17 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v182 = &v147 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v147 - v22;
  MEMORY[0x28223BE20](v24);
  v166 = &v147 - v25;
  v180 = type metadata accessor for PasteboardItem(0);
  v164 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v153 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v172 = &v147 - v28;
  MEMORY[0x28223BE20](v29);
  v183 = &v147 - v30;
  MEMORY[0x28223BE20](v31);
  v181 = &v147 - v32;
  MEMORY[0x28223BE20](v33);
  v169 = &v147 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v147 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v147 - v39;
  MEMORY[0x28223BE20](v41);
  v162 = &v147 - v42;
  v165 = a3;
  if (a3[1] < 1)
  {
    v45 = MEMORY[0x277D84F90];
LABEL_115:
    v46 = *v151;
    if (!*v151)
    {
      goto LABEL_155;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v168;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_149:
      v45 = sub_2267DE5F0(v45);
    }

    v184 = v45;
    v143 = *(v45 + 2);
    if (v143 >= 2)
    {
      while (*v165)
      {
        v144 = *&v45[16 * v143];
        v145 = *&v45[16 * v143 + 24];
        sub_2267DDB1C((*v165 + *(v164 + 72) * v144), *v165 + *(v164 + 72) * *&v45[16 * v143 + 16], (*v165 + *(v164 + 72) * v145), v46);
        if (v23)
        {
          goto LABEL_127;
        }

        if (v145 < v144)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2267DE5F0(v45);
        }

        if (v143 - 2 >= *(v45 + 2))
        {
          goto LABEL_143;
        }

        v146 = &v45[16 * v143];
        *v146 = v144;
        *(v146 + 1) = v145;
        v184 = v45;
        sub_2267DE564(v143 - 1);
        v45 = v184;
        v143 = *(v184 + 2);
        if (v143 <= 1)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_153;
    }

    goto LABEL_127;
  }

  v43 = a3[1];
  v163 = v16;
  v179 = v10;
  v149 = a4;
  v44 = 0;
  v178 = (v17 + 48);
  v175 = (v17 + 8);
  v176 = (v17 + 32);
  v45 = MEMORY[0x277D84F90];
  v158 = v13;
  v46 = v162;
  v160 = v37;
  v159 = v40;
  while (1)
  {
    v47 = v44;
    v48 = v44 + 1;
    if (v44 + 1 < v43)
    {
      v167 = v43;
      v49 = *v165;
      v50 = *(v164 + 72);
      v51 = v47;
      v52 = *v165 + v50 * v48;
      sub_2267DF2D4(v52, v46);
      sub_2267DF2D4(v49 + v50 * v51, v40);
      LODWORD(v170) = sub_2267D9CE8(v46, v40);
      if (!v168)
      {
        sub_2267DF338(v40);
        sub_2267DF338(v46);
        v150 = v51;
        v46 = v51 + 2;
        v53 = v49 + v50 * (v51 + 2);
        v54 = v50;
        v171 = v50;
        v161 = v45;
        while (1)
        {
          v58 = v167;
          if (v167 == v46)
          {
            break;
          }

          sub_2267DF2D4(v53, v37);
          sub_2267DF2D4(v52, v169);
          v59 = &v37[*(v180 + 36)];
          v60 = v163;
          sub_2267A1AF8(v59, v163, &qword_27D7A2530, qword_2268738A0);
          v61 = v177;
          v62 = *v178;
          v63 = (*v178)(v60, 1, v177);
          v64 = v158;
          if (v63 == 1)
          {
            sub_226835178();
            if (v62(v60, 1, v61) != 1)
            {
              sub_2267A1DC0(v163, &qword_27D7A2530, qword_2268738A0);
            }
          }

          else
          {
            (*v176)(v166, v60, v61);
          }

          sub_2267A1AF8(v169 + *(v180 + 36), v64, &qword_27D7A2530, qword_2268738A0);
          if (v62(v64, 1, v61) == 1)
          {
            sub_226835178();
            if (v62(v64, 1, v61) != 1)
            {
              sub_2267A1DC0(v64, &qword_27D7A2530, qword_2268738A0);
            }
          }

          else
          {
            (*v176)(v23, v64, v61);
          }

          v55 = v166;
          v56 = sub_2268351B8();
          v57 = *v175;
          (*v175)(v23, v61);
          v57(v55, v61);
          sub_2267DF338(v169);
          v37 = v160;
          sub_2267DF338(v160);
          ++v46;
          v54 = v171;
          v53 += v171;
          v52 += v171;
          v45 = v161;
          v40 = v159;
          if ((v170 ^ v56))
          {
            v58 = v46 - 1;
            break;
          }
        }

        v47 = v150;
        if (v170)
        {
          if (v58 < v150)
          {
            goto LABEL_148;
          }

          if (v150 < v58)
          {
            v148 = v23;
            v65 = v168;
            v46 = v54 * (v58 - 1);
            v66 = v58 * v54;
            v67 = v58;
            v68 = v58;
            v69 = v150;
            v70 = v150 * v54;
            do
            {
              if (v69 != --v68)
              {
                v71 = *v165;
                if (!*v165)
                {
                  goto LABEL_152;
                }

                sub_2267DF394(v71 + v70, v153);
                if (v70 < v46 || v71 + v70 >= (v71 + v66))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v70 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_2267DF394(v153, v71 + v46);
                v54 = v171;
              }

              ++v69;
              v46 -= v54;
              v66 -= v54;
              v70 += v54;
            }

            while (v69 < v68);
            v168 = v65;
            v45 = v161;
            v23 = v148;
            v37 = v160;
            v40 = v159;
            v47 = v150;
            v58 = v67;
          }
        }

        goto LABEL_32;
      }

      sub_2267DF338(v40);
      sub_2267DF338(v46);
LABEL_127:

      return;
    }

    v58 = v44 + 1;
LABEL_32:
    v72 = v165[1];
    if (v58 >= v72)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v58, v47))
    {
      goto LABEL_145;
    }

    if (v58 - v47 >= v149)
    {
LABEL_41:
      v74 = v58;
      if (v58 < v47)
      {
        goto LABEL_144;
      }

      goto LABEL_42;
    }

    if (__OFADD__(v47, v149))
    {
      goto LABEL_146;
    }

    if (v47 + v149 >= v72)
    {
      v73 = v165[1];
    }

    else
    {
      v73 = v47 + v149;
    }

    if (v73 < v47)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    if (v58 == v73)
    {
      goto LABEL_41;
    }

    v148 = v23;
    v161 = v45;
    v124 = *v165;
    v125 = *(v164 + 72);
    v126 = *v165 + v125 * (v58 - 1);
    v170 = -v125;
    v150 = v47;
    v127 = v47 - v58;
    v171 = v124;
    v152 = v125;
    v128 = v124 + v58 * v125;
    v129 = v174;
    v130 = v180;
    v154 = v73;
LABEL_98:
    v167 = v58;
    v155 = v128;
    v156 = v127;
    v157 = v126;
    v131 = v126;
LABEL_99:
    v132 = v181;
    sub_2267DF2D4(v128, v181);
    sub_2267DF2D4(v131, v183);
    v133 = v132 + *(v130 + 36);
    v134 = v179;
    sub_2267A1AF8(v133, v179, &qword_27D7A2530, qword_2268738A0);
    v135 = v177;
    v136 = *v178;
    if ((*v178)(v134, 1, v177) == 1)
    {
      sub_226835178();
      if (v136(v134, 1, v135) != 1)
      {
        sub_2267A1DC0(v179, &qword_27D7A2530, qword_2268738A0);
      }
    }

    else
    {
      (*v176)(v182, v134, v135);
    }

    sub_2267A1AF8(v183 + *(v130 + 36), v129, &qword_27D7A2530, qword_2268738A0);
    v137 = v136(v129, 1, v135);
    v46 = v173;
    if (v137 == 1)
    {
      sub_226835178();
      if (v136(v129, 1, v135) != 1)
      {
        sub_2267A1DC0(v129, &qword_27D7A2530, qword_2268738A0);
      }
    }

    else
    {
      (*v176)(v173, v129, v135);
    }

    v138 = v182;
    v139 = sub_2268351B8();
    v140 = *v175;
    (*v175)(v46, v135);
    v140(v138, v135);
    sub_2267DF338(v183);
    sub_2267DF338(v181);
    if (v139)
    {
      break;
    }

    v129 = v174;
    v130 = v180;
LABEL_97:
    v58 = v167 + 1;
    v126 = v157 + v152;
    v127 = v156 - 1;
    v128 = v155 + v152;
    v74 = v154;
    if (v167 + 1 != v154)
    {
      goto LABEL_98;
    }

    v45 = v161;
    v23 = v148;
    v37 = v160;
    v40 = v159;
    v47 = v150;
    if (v154 < v150)
    {
      goto LABEL_144;
    }

LABEL_42:
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v74;
    if ((v75 & 1) == 0)
    {
      v45 = sub_2267DC234(0, *(v45 + 2) + 1, 1, v45);
    }

    v77 = *(v45 + 2);
    v76 = *(v45 + 3);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      v45 = sub_2267DC234((v76 > 1), v77 + 1, 1, v45);
    }

    *(v45 + 2) = v78;
    v79 = &v45[16 * v77];
    v80 = v154;
    *(v79 + 4) = v47;
    *(v79 + 5) = v80;
    if (!*v151)
    {
      goto LABEL_154;
    }

    if (v77)
    {
      v81 = *v151;
      v46 = v162;
      while (1)
      {
        v82 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v83 = *(v45 + 4);
          v84 = *(v45 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_62:
          if (v86)
          {
            goto LABEL_133;
          }

          v99 = &v45[16 * v78];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_136;
          }

          v105 = &v45[16 * v82 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_140;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v82 = v78 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v109 = &v45[16 * v78];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_76:
        if (v104)
        {
          goto LABEL_135;
        }

        v112 = &v45[16 * v82];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_138;
        }

        if (v115 < v103)
        {
          goto LABEL_93;
        }

LABEL_83:
        v46 = v82 - 1;
        if (v82 - 1 >= v78)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v165)
        {
          goto LABEL_151;
        }

        v120 = *&v45[16 * v46 + 32];
        v121 = *&v45[16 * v82 + 40];
        v122 = v168;
        sub_2267DDB1C((*v165 + *(v164 + 72) * v120), *v165 + *(v164 + 72) * *&v45[16 * v82 + 32], (*v165 + *(v164 + 72) * v121), v81);
        v168 = v122;
        if (v122)
        {
          goto LABEL_127;
        }

        if (v121 < v120)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2267DE5F0(v45);
        }

        if (v46 >= *(v45 + 2))
        {
          goto LABEL_130;
        }

        v123 = &v45[16 * v46];
        *(v123 + 4) = v120;
        *(v123 + 5) = v121;
        v184 = v45;
        sub_2267DE564(v82);
        v45 = v184;
        v78 = *(v184 + 2);
        v46 = v162;
        if (v78 <= 1)
        {
          goto LABEL_93;
        }
      }

      v87 = &v45[16 * v78 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_131;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_132;
      }

      v94 = &v45[16 * v78];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_134;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_137;
      }

      if (v98 >= v90)
      {
        v116 = &v45[16 * v82 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_141;
        }

        if (v85 < v119)
        {
          v82 = v78 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

    v46 = v162;
LABEL_93:
    v43 = v165[1];
    v44 = v154;
    if (v154 >= v43)
    {
      goto LABEL_115;
    }
  }

  v130 = v180;
  if (v171)
  {
    v46 = v172;
    sub_2267DF394(v128, v172);
    swift_arrayInitWithTakeFrontToBack();
    sub_2267DF394(v46, v131);
    v131 += v170;
    v128 += v170;
    v141 = __CFADD__(v127++, 1);
    v129 = v174;
    if (v141)
    {
      goto LABEL_97;
    }

    goto LABEL_99;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_2267DDB1C(char *a1, unint64_t a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v84 - v11;
  MEMORY[0x28223BE20](v12);
  v94 = &v84 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  v17 = sub_226835228();
  v87 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v96 = &v84 - v21;
  MEMORY[0x28223BE20](v22);
  v93 = &v84 - v23;
  MEMORY[0x28223BE20](v24);
  v98 = &v84 - v25;
  v101 = type metadata accessor for PasteboardItem(0);
  MEMORY[0x28223BE20](v101);
  v91 = (&v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v95 = &v84 - v28;
  MEMORY[0x28223BE20](v29);
  v99 = &v84 - v30;
  MEMORY[0x28223BE20](v31);
  v97 = &v84 - v32;
  v34 = *(v33 + 72);
  if (!v34)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_77;
  }

  v35 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_78;
  }

  v36 = (a2 - a1) / v34;
  v104 = a1;
  v103 = a4;
  if (v36 >= v35 / v34)
  {
    v38 = v35 / v34 * v34;
    if (a4 < a2 || a2 + v38 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v94 = a2;
    v59 = &a4[v38];
    if (v38 >= 1)
    {
      v100 = a4;
      v60 = -v34;
      v61 = v87;
      v98 = (v87 + 6);
      v99 = -v34;
      ++v87;
      v88 = (v61 + 4);
      v62 = &a4[v38];
      v64 = v91;
      v63 = v92;
      v89 = v19;
      do
      {
        v85 = v59;
        v65 = v94;
        v93 = v94;
        v94 += v60;
        while (1)
        {
          if (v65 <= a1)
          {
            v104 = v65;
            v102 = v85;
            goto LABEL_75;
          }

          v68 = a3;
          v86 = v59;
          v97 = &v62[v60];
          v69 = v95;
          sub_2267DF2D4(&v62[v60], v95);
          sub_2267DF2D4(v94, v64);
          sub_2267A1AF8(&v69[*(v101 + 36)], v63, &qword_27D7A2530, qword_2268738A0);
          v70 = *v98;
          if ((*v98)(v63, 1, v17) == 1)
          {
            sub_226835178();
            v71 = v70(v63, 1, v17);
            v72 = v90;
            if (v71 != 1)
            {
              sub_2267A1DC0(v63, &qword_27D7A2530, qword_2268738A0);
            }
          }

          else
          {
            (*v88)(v96, v63, v17);
            v72 = v90;
          }

          sub_2267A1AF8(v64 + *(v101 + 36), v72, &qword_27D7A2530, qword_2268738A0);
          if (v70(v72, 1, v17) == 1)
          {
            v73 = v89;
            sub_226835178();
            v74 = v70(v72, 1, v17);
            v75 = v73;
            if (v74 != 1)
            {
              sub_2267A1DC0(v72, &qword_27D7A2530, qword_2268738A0);
            }
          }

          else
          {
            v75 = v89;
            (*v88)(v89, v72, v17);
          }

          v76 = &v68[v99];
          v77 = v96;
          v78 = sub_2268351B8();
          v79 = v75;
          v80 = v78;
          v81 = *v87;
          (*v87)(v79, v17);
          v81(v77, v17);
          v64 = v91;
          sub_2267DF338(v91);
          sub_2267DF338(v95);
          if (v80)
          {
            break;
          }

          v82 = v97;
          v59 = v97;
          a3 = v76;
          if (v68 < v62 || v76 >= v62)
          {
            v66 = v97;
            swift_arrayInitWithTakeFrontToBack();
            v59 = v66;
            v63 = v92;
          }

          else
          {
            v63 = v92;
            if (v68 != v62)
            {
              v83 = v97;
              swift_arrayInitWithTakeBackToFront();
              v59 = v83;
            }
          }

          v62 = v59;
          v67 = v82 > v100;
          v60 = v99;
          v65 = v93;
          if (!v67)
          {
            v94 = v93;
            goto LABEL_74;
          }
        }

        a3 = v76;
        if (v68 < v93 || v76 >= v93)
        {
          swift_arrayInitWithTakeFrontToBack();
          v63 = v92;
          v60 = v99;
        }

        else
        {
          v63 = v92;
          v60 = v99;
          if (v68 != v93)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = v86;
      }

      while (v62 > v100);
    }

LABEL_74:
    v104 = v94;
    v102 = v59;
  }

  else
  {
    v37 = v36 * v34;
    if (a4 < a1 || &a1[v37] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v96 = &a4[v37];
    v102 = &a4[v37];
    if (v37 >= 1 && a2 < a3)
    {
      v40 = (v87 + 6);
      v90 = (v87 + 1);
      v91 = (v87 + 4);
      v95 = a3;
      v92 = v34;
      v89 = (v87 + 6);
      do
      {
        v41 = v97;
        sub_2267DF2D4(a2, v97);
        sub_2267DF2D4(a4, v99);
        sub_2267A1AF8(v41 + *(v101 + 36), v16, &qword_27D7A2530, qword_2268738A0);
        v42 = *v40;
        if ((*v40)(v16, 1, v17) == 1)
        {
          sub_226835178();
          if (v42(v16, 1, v17) != 1)
          {
            sub_2267A1DC0(v16, &qword_27D7A2530, qword_2268738A0);
          }
        }

        else
        {
          (*v91)(v98, v16, v17);
        }

        v43 = a1;
        v44 = v16;
        v100 = a4;
        v45 = v94;
        sub_2267A1AF8(v99 + *(v101 + 36), v94, &qword_27D7A2530, qword_2268738A0);
        v46 = a2;
        if (v42(v45, 1, v17) == 1)
        {
          v47 = v93;
          sub_226835178();
          v48 = v17;
          if (v42(v45, 1, v17) != 1)
          {
            sub_2267A1DC0(v45, &qword_27D7A2530, qword_2268738A0);
          }
        }

        else
        {
          v47 = v93;
          (*v91)(v93, v45, v17);
          v48 = v17;
        }

        v49 = v98;
        v50 = sub_2268351B8();
        v51 = v47;
        v52 = *v90;
        (*v90)(v51, v48);
        v53 = v48;
        v52(v49, v48);
        sub_2267DF338(v99);
        sub_2267DF338(v97);
        v16 = v44;
        if (v50)
        {
          v54 = v46;
          v55 = v92;
          a2 = &v92[v46];
          v56 = v43;
          if (v43 < v46 || v43 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a4 = v100;
            v58 = v95;
            v17 = v53;
            goto LABEL_42;
          }

          a4 = v100;
          v17 = v53;
          if (v43 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v55 = v92;
          v57 = &v92[v100];
          v56 = v43;
          a2 = v46;
          if (v43 < v100 || v43 >= v57)
          {
            swift_arrayInitWithTakeFrontToBack();
            v17 = v53;
          }

          else
          {
            v17 = v53;
            if (v43 != v100)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v103 = v57;
          a4 = v57;
        }

        v58 = v95;
LABEL_42:
        v40 = v89;
        a1 = &v55[v56];
        v104 = a1;
      }

      while (a4 < v96 && a2 < v58);
    }
  }

LABEL_75:
  sub_2267DE604(&v104, &v103, &v102);
}

uint64_t sub_2267DE564(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2267DE5F0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2267DE604(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PasteboardItem(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_2267DE6FC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2498, "ho\n");
  v10 = *(type metadata accessor for PasteboardItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PasteboardItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

BOOL _s21AppPredictionInternal14PasteboardItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_226835228();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v39[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2480, "fo\n");
  MEMORY[0x28223BE20](v14);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v39[-v18];
  v20 = a1[1];
  v21 = a2[1];
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (sub_226836B58() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = a1[2];
  v23 = a2[2];
  if (v22)
  {
    if (!v23 || (sub_2267DC1A4(v22, v23) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v24 = a1[4];
  v25 = a2[4];
  if (v24)
  {
    if (!v25 || (a1[3] != a2[3] || v24 != v25) && (sub_226836B58() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = a1[6];
  v27 = a2[6];
  if (v26)
  {
    if (!v27 || (a1[5] != a2[5] || v26 != v27) && (sub_226836B58() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = a1[8];
  v29 = a2[8];
  if (v28)
  {
    if (!v29 || (a1[7] != a2[7] || v28 != v29) && (sub_226836B58() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v42 = type metadata accessor for PasteboardItem(0);
  v30 = *(v14 + 48);
  v44 = *(v42 + 36);
  v45 = v30;
  sub_2267A1AF8(a1 + v44, v19, &qword_27D7A2530, qword_2268738A0);
  sub_2267A1AF8(a2 + v44, &v45[v19], &qword_27D7A2530, qword_2268738A0);
  v43 = *(v5 + 48);
  v44 = v5 + 48;
  if (v43(v19, 1, v4) != 1)
  {
    sub_2267A1AF8(v19, v13, &qword_27D7A2530, qword_2268738A0);
    if (v43(&v45[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v45[v19], v4);
      sub_2267DF28C(&qword_27D7A2488, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v40 = sub_2268363C8();
      v32 = *(v5 + 8);
      v41 = v5 + 8;
      v45 = v32;
      (v32)(v7, v4);
      (v45)(v13, v4);
      sub_2267A1DC0(v19, &qword_27D7A2530, qword_2268738A0);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_41;
    }

    (*(v5 + 8))(v13, v4);
LABEL_39:
    v31 = v19;
LABEL_47:
    sub_2267A1DC0(v31, &qword_27D7A2480, "fo\n");
    return 0;
  }

  if (v43(&v45[v19], 1, v4) != 1)
  {
    goto LABEL_39;
  }

  sub_2267A1DC0(v19, &qword_27D7A2530, qword_2268738A0);
LABEL_41:
  v33 = *(v42 + 40);
  v34 = *(v14 + 48);
  sub_2267A1AF8(a1 + v33, v16, &qword_27D7A2530, qword_2268738A0);
  sub_2267A1AF8(a2 + v33, &v16[v34], &qword_27D7A2530, qword_2268738A0);
  v35 = v43;
  if (v43(v16, 1, v4) == 1)
  {
    if (v35(&v16[v34], 1, v4) == 1)
    {
      sub_2267A1DC0(v16, &qword_27D7A2530, qword_2268738A0);
      return 1;
    }

    goto LABEL_46;
  }

  sub_2267A1AF8(v16, v10, &qword_27D7A2530, qword_2268738A0);
  if (v35(&v16[v34], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_46:
    v31 = v16;
    goto LABEL_47;
  }

  (*(v5 + 32))(v7, &v16[v34], v4);
  sub_2267DF28C(&qword_27D7A2488, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v37 = sub_2268363C8();
  v38 = *(v5 + 8);
  v38(v7, v4);
  v38(v10, v4);
  sub_2267A1DC0(v16, &qword_27D7A2530, qword_2268738A0);
  return (v37 & 1) != 0;
}

uint64_t dispatch thunk of PasteboardManager.retrieveOrderedPasteboardItems()()
{
  v4 = (*(*v0 + 80) + **(*v0 + 80));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2267A1644;

  return v4();
}

void sub_2267DF12C(uint64_t a1)
{
  sub_2267D86B4();
  if (v1 <= 0x3F)
  {
    sub_2267DF1D0(319);
    if (v2 <= 0x3F)
    {
      sub_2267DF234(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2267DF1D0(uint64_t a1)
{
  if (!qword_27D7A2478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A1CC0, qword_226873D50);
    v1 = sub_226836828();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A2478);
    }
  }
}

void sub_2267DF234(uint64_t a1)
{
  if (!qword_28138FCB8)
  {
    sub_226835228();
    v1 = sub_226836828();
    if (!v2)
    {
      atomic_store(v1, &qword_28138FCB8);
    }
  }
}

uint64_t sub_2267DF28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2267DF2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267DF338(uint64_t a1)
{
  v2 = type metadata accessor for PasteboardItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267DF394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267DF400(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
    return sub_2268365E8();
  }

  else
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
    return sub_2268365F8();
  }
}

unint64_t sub_2267DF504()
{
  result = qword_27D7A24A8;
  if (!qword_27D7A24A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A24A8);
  }

  return result;
}

uint64_t sub_2267DF578()
{
  swift_beginAccess();
  v0 = *aSports;

  return v0;
}

uint64_t sub_2267DF5CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aSports = a1;
  qword_27D7A24C0 = a2;
}

uint64_t sub_2267DF63C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226872800;
  v1 = sub_2267D0044();
  v3 = *v1;
  v2 = v1[1];
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  v4 = sub_2267A1368(inited);
  swift_setDeallocating();
  sub_2267A0598(inited + 32);
  return v4;
}

_OWORD *sub_2267DF6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24C8, &qword_226875230);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for SportsDependencies(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2263B4F20(a3, v30);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    sub_2267D042C(v8, v12);

    nullsub_1();
    v16 = v15;
    v18 = v17;
    v19 = sub_2267DF980(&unk_283995EC0);
    v28 = &type metadata for SportsSuggestion;
    v29 = &off_283994230;
    *&v27 = v16;
    *(&v27 + 1) = v18;

    sub_2267CFA38(a1, a2, v19, &v27, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24D0, qword_226875238);
    v20 = swift_allocObject();
    v21 = v30[0];
    v22 = v30[1];
    v20[1] = xmmword_226872800;
    v20[2] = v21;
    v23 = v30[2];
    v24 = v30[3];
    v20[3] = v22;
    v20[4] = v23;
    v20[5] = v24;
    sub_2267DFB1C(v12);
    return v20;
  }

  else
  {
    v14(v8, 1, 1, v9);
    sub_2267DF918(v8);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2267DF918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24C8, &qword_226875230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267DF980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24D8, "6o\n");
    v3 = sub_226836948();
    v4 = v3 + 56;
    v22 = a1 + 32;
    sub_2267DFB9C();
    v5 = 0;
    v21 = v1;
    while (1)
    {
      v10 = (v22 + 16 * v5);
      v11 = *v10;
      v12 = *(v10 + 8);
      result = sub_226836358();
      v14 = -1 << *(v3 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = *(v4 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      if (((1 << v15) & v17) != 0)
      {
        v20 = v11;
        v19 = ~v14;
        sub_2267D0588();
        while (1)
        {
          result = sub_2268363C8();
          if (result)
          {
            break;
          }

          v15 = (v15 + 1) & v19;
          v16 = v15 >> 6;
          v17 = *(v4 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            v11 = v20;
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v16) = v18 | v17;
        v6 = *(v3 + 48) + 16 * v15;
        *v6 = v11;
        *(v6 + 8) = v12;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v5 == v21)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2267DFB1C(uint64_t a1)
{
  v2 = type metadata accessor for SportsDependencies(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2267DFB9C()
{
  result = qword_27D7A24E0;
  if (!qword_27D7A24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A24E0);
  }

  return result;
}

uint64_t BundleIdRedactor.redact(bundleIds:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2267DFC3C, 0, 0);
}

uint64_t sub_2267DFC3C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2267DFCE4;
  v2 = *(v0 + 16);

  return MEMORY[0x2821A2B48](v2);
}

uint64_t sub_2267DFCE4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2267DFE20, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2267DFE20()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2267A0578(0, v1, 0);
    v2 = v10;
    v3 = *(v10 + 16);
    v4 = 16 * v3;
    do
    {
      v5 = *(v10 + 24);
      v6 = v3 + 1;
      if (v3 >= v5 >> 1)
      {
        sub_2267A0578((v5 > 1), v3 + 1, 1);
      }

      *(v10 + 16) = v6;
      v7 = v10 + v4;
      *(v7 + 32) = 0xD000000000000013;
      *(v7 + 40) = 0x80000002268CF7A0;
      v4 += 16;
      v3 = v6;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_2267E00DC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_226836568();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2267E01B0;

  return BundleIdRedactor.redact(bundleIds:)(v5);
}

uint64_t sub_2267E01B0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = sub_226836558();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

id BundleIdRedactor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BundleIdRedactor.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___ATXBundleIdRedactor_summarizationPipelineClient;
  sub_226835F58();
  *&v0[v2] = sub_226835F48();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id BundleIdRedactor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267E04A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_2267E00DC(v2, v3, v4);
}

uint64_t sub_2267E055C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies;
  swift_beginAccess();
  return sub_2267E05B4(v1 + v3, a1);
}

uint64_t sub_2267E05B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityContext.Dependencies(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267E0638(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies;
  swift_beginAccess();
  sub_2267E0698(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2267E0698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityContext.Dependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267E075C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2268352F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2267E07C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2268352F8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2267E0830(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2267E08A4(a1, v2 + OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies);
  return v2;
}

uint64_t sub_2267E08A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityContext.Dependencies(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2267E092C()
{
  v1 = sub_226835398();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226835378();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LiveActivityContext.Dependencies(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 88))(v9);
  sub_2268352E8();
  v12 = sub_2268352F8();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_226835368();
  sub_2267E0C28(v7, MEMORY[0x277CB9790]);
  v13 = sub_226835388();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  v16 = objc_opt_self();
  v17 = sub_2268363F8();
  v18 = [v16 localizedNameForBundle_];

  if (v18)
  {
    v19 = sub_226836408();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_226836968();

  v23 = 0xD000000000000013;
  v24 = 0x80000002268CF830;
  if (v21)
  {

    v15 = v21;
  }

  else
  {
    v19 = v13;
  }

  MEMORY[0x22AA7F8E0](v19, v15);

  return v23;
}

uint64_t sub_2267E0C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2267E0C88()
{
  sub_2267E0C28(v0 + OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies, type metadata accessor for LiveActivityContext.Dependencies);

  return swift_deallocClassInstance();
}

uint64_t sub_2267E0DE4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_2267E0E1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LiveActivityContext(0);
  sub_2267E12E4(&qword_27D7A24F8, &unk_226875340);
  result = sub_2263B92B0(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2267E0E80()
{
  sub_2267E14CC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226872800;
  result = type metadata accessor for LiveActivityContext(0);
  *(v0 + 32) = result;
  qword_27D7A51E0 = v0;
  return result;
}

uint64_t *sub_2267E0EE0()
{
  if (qword_27D7A4AB0 != -1)
  {
    swift_once();
  }

  return &qword_27D7A51E0;
}

uint64_t sub_2267E0F30()
{
  if (qword_27D7A4AB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2267E0F94(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2267E0FD4(a1);
  return v2;
}

uint64_t sub_2267E0FD4(uint64_t a1)
{
  v3 = type metadata accessor for LiveActivityContext.Dependencies(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2268352F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = a1;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v20 = v1;
    v23 = MEMORY[0x277D84F90];

    sub_226836A08();
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v14 = *(v12 + 64);
    v19[1] = a1;
    v15 = a1 + ((v14 + 32) & ~v14);
    v21 = *(v12 + 56);
    v22 = v13;
    v16 = (v12 + 16);
    do
    {
      v22(v9, v15, v6);
      (*v16)(v5, v9, v6);
      type metadata accessor for LiveActivityContext(0);
      v17 = swift_allocObject();
      sub_2267E08A4(v5, v17 + OBJC_IVAR____TtC21AppPredictionInternal19LiveActivityContext_dependencies);
      sub_2268369E8();
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      v15 += v21;
      --v10;
    }

    while (v10);

    v11 = v23;
    v1 = v20;
  }

  *(v1 + 16) = v11;
  return v1;
}

uint64_t sub_2267E1204()
{

  return v0;
}

uint64_t sub_2267E122C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2267E126C(uint64_t a1)
{
  result = sub_2267E12E4(&qword_27D7A24F0, &unk_22687535C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2267E12E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LiveActivityContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267E1384(uint64_t a1)
{
  result = sub_2268352F8();
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

uint64_t sub_2267E143C(uint64_t a1)
{
  result = sub_2268352F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2267E14CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2500, &qword_226875470);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A2508;
    v3 = &unk_226875478;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2267E154C(id *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = [*a1 executableSpecification];
  v14 = [v13 executableObject];

  if (!v14)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v22 = sub_2267F7768();
    (*(v3 + 16))(v12, v22, v2);
    v23 = sub_226836038();
    v24 = sub_2268366B8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2263AA000, v23, v24, "Suggestion is not an ATXAction. Ignoring", v25, 2u);
      MEMORY[0x22AA821D0](v25, -1, -1);
    }

    (*(v3 + 8))(v12, v2);
    return 0;
  }

  v16 = [v15 heuristic];
  if (v16)
  {
    v17 = v16;
    v18 = sub_226836408();
    v20 = v19;

    if (sub_2267B2E88())
    {
      swift_unknownObjectRelease();

      return 1;
    }

    v30 = sub_2267F7768();
    (*(v3 + 16))(v5, v30, v2);

    v31 = sub_226836038();
    v32 = sub_2268366A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v33 = 136315138;
      v35 = sub_2263B4D48(v18, v20, &v37);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_2263AA000, v31, v32, "Event with heuristic %s is not supported on watchOS. Ignoring", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x22AA821D0](v34, -1, -1);
      MEMORY[0x22AA821D0](v33, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v26 = sub_2267F7768();
    (*(v3 + 16))(v8, v26, v2);
    v27 = sub_226836038();
    v28 = sub_2268366B8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2263AA000, v27, v28, "Suggestion has no heuristic. Ignoring", v29, 2u);
      MEMORY[0x22AA821D0](v29, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v3 + 8))(v8, v2);
  }

  return 0;
}

id sub_2267E19F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WatchSmartStackLayoutSelector();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2267E1A64(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WatchSmartStackLayoutSelector();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2267E1A98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_2263B51C8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1D70, &unk_226873820);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2267E1B7C(unint64_t a1)
{
  v1 = a1;
  v41 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2268368D8())
  {
    if (i)
    {
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x22AA7FDD0](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v7 = [v4 executableSpecification];
        v8 = [v7 executableType];

        if (v8 == 2)
        {
          sub_2268369E8();
          sub_226836A18();
          sub_226836A28();
          sub_2268369F8();
        }

        else
        {
        }

        ++v3;
      }

      while (v6 != i);
      v1 = v41;
      v41 = MEMORY[0x277D84F90];
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
      v41 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v1 & 0x4000000000000000) == 0)
        {
          v9 = *(v1 + 16);
          goto LABEL_19;
        }
      }
    }

    v9 = sub_2268368D8();
LABEL_19:
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v11 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AA7FDD0](v11, v1);
        }

        else
        {
          if (v11 >= *(v1 + 16))
          {
            goto LABEL_49;
          }

          v12 = *(v1 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 uiSpecification];
        v16 = [v15 allowedOnLockscreen];

        if (v16)
        {
          sub_2268369E8();
          sub_226836A18();
          sub_226836A28();
          sub_2268369F8();
        }

        else
        {
        }

        ++v11;
        if (v14 == v9)
        {
          v17 = v41;
          v10 = MEMORY[0x277D84F90];
          goto LABEL_32;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_32:

    v41 = v10;
    if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
    {
      v1 = *(v17 + 16);
      if (!v1)
      {
        break;
      }

      goto LABEL_35;
    }

    v1 = sub_2268368D8();
    if (!v1)
    {
      break;
    }

LABEL_35:
    v18 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x22AA7FDD0](v18, v17);
      }

      else
      {
        if (v18 >= *(v17 + 16))
        {
          goto LABEL_51;
        }

        v19 = *(v17 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v40 = v19;
      if (sub_2267E154C(&v40))
      {
        sub_2268369E8();
        sub_226836A18();
        sub_226836A28();
        v10 = &v41;
        sub_2268369F8();
      }

      else
      {
      }

      ++v18;
      if (v21 == v1)
      {
        v22 = v41;
        goto LABEL_56;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_56:

  if (v22 < 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = (v22 >> 62) & 1;
  }

  if (v23 == 1)
  {
    if (sub_2268368D8() <= 0)
    {
      goto LABEL_87;
    }

    v10 = sub_2268368D8();
    result = sub_2268368D8();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v24 = sub_2268368D8();
    v25 = v10 != 0;
LABEL_62:
    v26 = v25;
    if (v24 < v25)
    {
      __break(1u);
    }

    else
    {
      if ((v22 & 0xC000000000000001) != 0 && v25)
      {
        sub_2263B51C8();

        v27 = 0;
        do
        {
          v28 = v27 + 1;
          sub_226836998();
          v27 = v28;
        }

        while (v26 != v28);
      }

      else
      {
      }

      if (v23)
      {
        v29 = sub_226836A88();
        v23 = v30;
        v10 = v31;
        v26 = v32;

        v22 = v29;
        if ((v26 & 1) == 0)
        {
LABEL_76:
          sub_2267E1A98(v22, v23, v10, v26);
          goto LABEL_82;
        }
      }

      else
      {
        v10 = 0;
        v23 = v22 + 32;
        if (v26)
        {
          v26 = 3;
        }

        else
        {
          v26 = 1;
        }
      }

      sub_226836B78();
      swift_unknownObjectRetain_n();
      v33 = swift_dynamicCastClass();
      if (!v33)
      {
        swift_unknownObjectRelease();
        v33 = MEMORY[0x277D84F90];
      }

      v34 = *(v33 + 16);

      if (!__OFSUB__(v26 >> 1, v10))
      {
        if (v34 == (v26 >> 1) - v10)
        {
          v35 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v35)
          {
LABEL_83:
            v36 = objc_allocWithZone(MEMORY[0x277D420E8]);
            sub_2263B51C8();
            v37 = sub_226836558();

            v38 = [v36 initWithLayoutType:17 oneByOneSuggestions:0 oneByTwoSuggestions:v37 twoByTwoSuggestions:0 oneByFourSuggestions:0 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];

            return v38;
          }

LABEL_82:
          swift_unknownObjectRelease();
          goto LABEL_83;
        }

        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_91:
    swift_unknownObjectRelease_n();
    goto LABEL_76;
  }

  v24 = *(v22 + 16);
  if (v24)
  {
    v25 = 1;
    goto LABEL_62;
  }

LABEL_87:

  return [objc_allocWithZone(MEMORY[0x277D420E8]) initWithLayoutType:17 oneByOneSuggestions:0 oneByTwoSuggestions:0 twoByTwoSuggestions:0 oneByFourSuggestions:0 twoByFourSuggestions:0 fourByFourSuggestions:0 fourByEightSuggestions:0];
}

uint64_t sub_2267E216C(double a1)
{
  v8 = sub_226836718();
  v1 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226836708();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2268362B8();
  MEMORY[0x28223BE20](v5 - 8);
  v7[1] = sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
  sub_2268362A8();
  v9 = MEMORY[0x277D84F90];
  sub_2267E7194(&qword_28138FE00, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
  sub_2267A0610(&qword_28138FE20, &unk_27D7A2510, &qword_2268754C0, MEMORY[0x277D83970]);
  sub_226836888();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v8);
  return sub_226836738();
}

id sub_2267E23D8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC1CD0]);

  return [v0 init];
}

uint64_t sub_2267E2410()
{

  sub_2267B840C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2267E2450()
{
  v1 = v0;
  v2 = type metadata accessor for MeetingContextDependencies(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226835228();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeOfDayContextDependencies(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2538, qword_226875520);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226873690;
  v12 = type metadata accessor for TimeOfDayContextStore();
  sub_226835218();
  sub_2267EA0F8(v7, v10);
  v13 = sub_2267EAAC8(v10);
  *(v11 + 56) = v12;
  *(v11 + 64) = sub_2267E7194(&qword_27D7A2540, type metadata accessor for TimeOfDayContextStore, &unk_226875954);
  *(v11 + 32) = v13;
  v14 = type metadata accessor for MeetingContextStore(0);
  sub_226835218();
  sub_2267D5DDC(v7, MEMORY[0x277D84F90], v4);
  v15 = sub_2267D65B8(v4);
  *(v11 + 96) = v14;
  *(v11 + 104) = sub_2267E7194(&qword_27D7A2548, type metadata accessor for MeetingContextStore, &unk_226874E8C);
  *(v11 + 72) = v15;
  v16 = type metadata accessor for LocationOfInterestContextStore();
  nullsub_1();
  v18 = sub_2267AD2A4(v17);
  *(v11 + 136) = v16;
  *(v11 + 144) = sub_2267E7194(&qword_27D7A2550, type metadata accessor for LocationOfInterestContextStore, &unk_2268736F4);
  *(v11 + 112) = v18;
  v19 = type metadata accessor for MotionContextStore();
  nullsub_1();
  v21 = sub_22679A4E4(v20);
  *(v11 + 176) = v19;
  *(v11 + 184) = sub_2267E7194(&qword_27D7A2558, type metadata accessor for MotionContextStore, &unk_226872F34);
  *(v11 + 152) = v21;
  v22 = type metadata accessor for LiveActivityContextStore();
  nullsub_1();
  v24 = sub_2267E0F94(v23);
  *(v11 + 216) = v22;
  *(v11 + 224) = sub_2267E7194(&qword_27D7A2560, type metadata accessor for LiveActivityContextStore, &unk_226875394);
  *(v11 + 192) = v24;
  *(v1 + 16) = v11;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v1;
}

uint64_t sub_2267E2794()
{
  type metadata accessor for ContextualEngineContextStore.GuardedData();
  v0 = swift_allocObject();
  sub_2267E2450();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2520, &qword_2268754C8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t sub_2267E2814()
{
  v1 = *(v0 + 136);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  sub_2267E2944((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

uint64_t sub_2267E28A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2267E28EC(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_2267E295C(uint64_t a1)
{
  v2 = *(v1 + 136);
  os_unfair_lock_lock((v2 + 24));
  sub_2267E29BC((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2267E29D4(uint64_t a1))()
{
  v3 = *(v1 + 136);
  *(a1 + 16) = v3;
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 24));
  sub_2267E75C4((v3 + 16), v5);
  *(a1 + 24) = 0;
  os_unfair_lock_unlock((v3 + 24));

  *a1 = *v5;
  return sub_2267E2A94;
}

uint64_t sub_2267E2A94(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock((v2 + 24));
    sub_2267E75DC((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_2267E75DC((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2267E2B74()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock(v1 + 6);

  v3 = sub_2267E2BDC(v2);

  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

uint64_t sub_2267E2BDC(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v36 = *(a1 + 16);
  if (!v36)
  {
    return v1;
  }

  v2 = 0;
  v35 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = (v35 + 40 * v2);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 24))(v6, v7);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
    v8 = sub_226836A38();

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v3;
      v41 = v1;
      sub_226836A08();
      v11 = v8 + 32;
      do
      {
        sub_22679CBC4(v11, v38);
        v12 = v39;
        v13 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        (*(v13 + 32))(v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v38);
        sub_2268369E8();
        sub_226836A18();
        sub_226836A28();
        sub_2268369F8();
        v11 += 40;
        --v9;
      }

      while (v9);

      v14 = v41;
      v3 = v10;
    }

    else
    {

      v14 = v1;
    }

    v15 = v14 >> 62;
    if (v14 >> 62)
    {
      v16 = sub_2268368D8();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v3 >> 62;
    if (v3 >> 62)
    {
      v33 = sub_2268368D8();
      v19 = v33 + v16;
      if (__OFADD__(v33, v16))
      {
LABEL_37:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_37;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v17)
      {
        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v19 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_2268368D8();
      goto LABEL_20;
    }

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = sub_2268369B8();
    v3 = result;
    v20 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v15)
    {
      break;
    }

    v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (((v22 >> 1) - v21) < v16)
    {
      goto LABEL_41;
    }

    v37 = v3;
    v25 = v20 + 8 * v21 + 32;
    v34 = v20;
    if (v15)
    {
      if (v23 < 1)
      {
        goto LABEL_43;
      }

      sub_2267A0610(&qword_27D7A2678, &qword_27D7A2670, qword_2268756F8, MEMORY[0x277D83988]);
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2670, qword_2268756F8);
        v27 = sub_2267C68AC(v38, i, v14);
        v29 = *v28;
        (v27)(v38, 0);
        *(v25 + 8 * i) = v29;
      }
    }

    else
    {
      sub_226835D28();
      swift_arrayInitWithCopy();
    }

    v3 = v37;
    v1 = MEMORY[0x277D84F90];
    if (v16 >= 1)
    {
      v30 = *(v34 + 16);
      v31 = __OFADD__(v30, v16);
      v32 = v30 + v16;
      if (v31)
      {
        goto LABEL_42;
      }

      *(v34 + 16) = v32;
    }

LABEL_4:
    if (++v2 == v36)
    {
      return v3;
    }
  }

  v24 = v20;
  result = sub_2268368D8();
  v20 = v24;
  v23 = result;
  if (result)
  {
    goto LABEL_25;
  }

LABEL_3:

  if (v16 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

char *sub_2267E2FF8()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_20:
    os_unfair_lock_unlock((v1 + 24));
    return v5;
  }

  v16 = v1;
  v4 = v2 + 32;

  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_22679CBC4(v4, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    swift_getDynamicType();
    (*(v17[4] + 32))();
    swift_getAssociatedTypeWitness();
    swift_getMetatypeMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2660, &qword_2268756E8);
    v7 = sub_226836A38();

    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v8 = *(v7 + 16);
    v9 = *(v5 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v5 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_2267E6F48(result, v11, 1, v5);
      v5 = result;
      if (*(v7 + 16))
      {
LABEL_14:
        v12 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v12 < v8)
        {
          goto LABEL_23;
        }

        memcpy(&v5[16 * v12 + 32], (v7 + 32), 16 * v8);

        if (v8)
        {
          v13 = *(v5 + 2);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_22;
    }

LABEL_4:
    v4 += 40;
    if (!--v3)
    {

      v1 = v16;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_2267E3210()
{
  v1 = *(v0 + 136);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_20:
    os_unfair_lock_unlock((v1 + 24));
    return v5;
  }

  v17 = v1;
  v4 = v2 + 32;

  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_22679CBC4(v4, v18);
    v7 = v19;
    v8 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v9 = sub_2267ADA5C(v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    v10 = *(v9 + 16);
    v11 = v5[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= v5[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_2267E704C(result, v13, 1, v5);
      v5 = result;
      if (*(v9 + 16))
      {
LABEL_14:
        if ((v5[3] >> 1) - v5[2] < v10)
        {
          goto LABEL_23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = v5[2];
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_24;
          }

          v5[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_22;
    }

LABEL_4:
    v4 += 40;
    if (!--v3)
    {

      v1 = v17;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2267E33D0()
{
  v0 = swift_allocObject();
  sub_2267E3408();
  return v0;
}

void *sub_2267E3408()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = v24 - v3;
  v27 = sub_226836068();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v28 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226836718();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226836708();
  MEMORY[0x28223BE20](v8);
  v9 = sub_2268362B8();
  MEMORY[0x28223BE20](v9 - 8);
  swift_defaultActor_initialize();
  v10 = sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
  v24[0] = "chSmartStackLayoutSelector";
  v24[1] = v10;
  sub_2268362A8();
  v30 = MEMORY[0x277D84F90];
  sub_2267E7194(&qword_28138FE00, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
  v11 = v27;
  v12 = v25;
  sub_2267A0610(&qword_28138FE20, &unk_27D7A2510, &qword_2268754C0, MEMORY[0x277D83970]);
  sub_226836888();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v26);
  v13 = v28;
  v0[14] = sub_226836738();
  v0[15] = [objc_allocWithZone(MEMORY[0x277CC1CD0]) init];
  v0[16] = 0;
  type metadata accessor for ContextualEngineContextStore.GuardedData();
  v14 = swift_allocObject();
  sub_2267E2450();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2520, &qword_2268754C8);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  v1[17] = v15;
  *(v1 + 9) = 0u;
  *(v1 + 10) = 0u;
  v16 = sub_2263B7458();
  (*(v12 + 16))(v13, v16, v11);
  v17 = sub_226836038();
  v18 = sub_2268366E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2263AA000, v17, v18, "ContextualEngineContextStore init", v19, 2u);
    MEMORY[0x22AA821D0](v19, -1, -1);
  }

  (*(v12 + 8))(v13, v11);
  v20 = sub_226836628();
  v21 = v29;
  (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v1;

  sub_2267AEA94(0, 0, v21, &unk_226875508, v22);

  return v1;
}

uint64_t sub_2267E392C()
{
  sub_2267E3A20();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267E398C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2263BA0A4;

  return sub_2267E390C(v3, v4, v5, v2);
}

void sub_2267E3A20()
{
  v1 = v0;
  v2 = sub_226836068();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = sub_226835358();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x277CC5948];
  v8 = swift_allocObject();
  swift_weakInit();
  v36 = sub_2267E72E8;
  v37 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2267CDCE8;
  v35 = &block_descriptor_8;
  v9 = _Block_copy(&aBlock);

  v10 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  v11 = v0[15];
  v12 = [objc_opt_self() mainQueue];
  v13 = swift_allocObject();
  swift_weakInit();
  v36 = sub_2267E72F0;
  v37 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2267E4D50;
  v35 = &block_descriptor_40;
  v14 = _Block_copy(&aBlock);

  [v11 startActivityUpdatesToQueue:v12 withHandler:v14];
  _Block_release(v14);

  v15 = v1[14];
  v16 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v17 = sub_2268363F8();
  v18 = [v16 initWithIdentifier:v17 targetQueue:v15];

  v1[18] = v18;
  swift_unknownObjectRelease();
  v19 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v20 = [v19 Intent];
  swift_unknownObjectRelease();
  v21 = [v20 DSLPublisherWithUseCase_];

  if (v1[18])
  {
    v22 = [v21 subscribeOn_];

    v36 = nullsub_1;
    v37 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_2267B2E84;
    v35 = &block_descriptor_43;
    v23 = _Block_copy(&aBlock);
    v24 = swift_allocObject();
    swift_weakInit();
    v36 = sub_2267E72F8;
    v37 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_2267E5340;
    v35 = &block_descriptor_47;
    v25 = _Block_copy(&aBlock);

    v26 = [v22 sinkWithCompletion:v23 receiveInput:v25];
    _Block_release(v25);
    _Block_release(v23);

    v1[19] = v26;
    swift_unknownObjectRelease();
    sub_226835338();
    sub_226835328();
    sub_226835348();
    v27 = sub_226835318();
    (*(v3 + 8))(v5, v31);

    aBlock = v27;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2638, &qword_226875680);
    sub_2267A0610(&unk_27D7A2640, &qword_27D7A2638, &qword_226875680, MEMORY[0x277CBCD90]);
    v28 = sub_226836128();

    v1[21] = v28;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2267E41C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_226836628();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_2267E457C(0, 0, v3, &unk_2268756C0, v7, MEMORY[0x277D839B0]);
  }

  return result;
}

uint64_t sub_2267E42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = (*(*a4 + 352) + **(*a4 + 352));
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2267E4408;

  return v7();
}

uint64_t sub_2267E4408(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2267E4558, 0, 0);
  }
}

uint64_t sub_2267E457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2267ACD9C(a3, v23 - v10);
  v12 = sub_226836628();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2267A1DC0(v11, &unk_27D7A1F30, &qword_226873360);
  }

  else
  {
    sub_226836618();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2268365D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_226836458() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2267E4818(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_226836068();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2263B7458();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a1;
  v12 = sub_226836038();
  v13 = sub_2268366E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v5;
    v15 = a1;
    v16 = v14;
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v11;
    *v17 = v15;
    v18 = v11;
    _os_log_impl(&dword_2263AA000, v12, v13, "activity updated: %@", v16, 0xCu);
    sub_2267A1DC0(v17, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v17, -1, -1);
    v19 = v16;
    a1 = v15;
    v5 = v25;
    MEMORY[0x22AA821D0](v19, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = sub_226836628();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v21;
    v23[5] = a1;
    v24 = v11;
    sub_2267E457C(0, 0, v5, &unk_2268756B0, v23, MEMORY[0x277D84F78] + 8);
  }

  return result;
}

uint64_t sub_2267E4AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2267E4B18, a4, 0);
}

uint64_t sub_2267E4B18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2[16];
  v2[16] = v1;
  v4 = v1;

  v7 = (*(*v2 + 352) + **(*v2 + 352));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2267E4C5C;

  return v7();
}

uint64_t sub_2267E4C5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2267E4D50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2267E4DBC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_unknownObjectRetain();
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v20 = v11;
      v12 = sub_2263B7458();
      (*(v6 + 16))(v8, v12, v5);
      swift_unknownObjectRetain();
      v13 = sub_226836038();
      v14 = sub_2268366E8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = [v20 eventBody];
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&dword_2263AA000, v13, v14, "Intent: %@", v15, 0xCu);
        sub_2267A1DC0(v16, &unk_27D7A1D90, &unk_226873270);
        MEMORY[0x22AA821D0](v16, -1, -1);
        MEMORY[0x22AA821D0](v15, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      v18 = sub_226836628();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v10;
      sub_2267E457C(0, 0, v4, &unk_2268756A0, v19, MEMORY[0x277D839B0]);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2267E50D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = (*(*a4 + 352) + **(*a4 + 352));
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2267E51F0;

  return v7();
}

uint64_t sub_2267E51F0(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2267E75F4, 0, 0);
  }
}

uint64_t sub_2267E5340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2267E53A0(void **a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = *a1;
  if (!*a1)
  {
    v18 = sub_2263B7458();
    (*(v3 + 16))(v8, v18, v2);
    v12 = sub_226836038();
    v19 = sub_2268366E8();
    if (!os_log_type_enabled(v12, v19))
    {
      v5 = v8;
      goto LABEL_8;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2263AA000, v12, v19, "Finished sinking activity descriptors", v14, 2u);
    v5 = v8;
    goto LABEL_6;
  }

  v10 = sub_2263B7458();
  (*(v3 + 16))(v5, v10, v2);
  v11 = v9;
  v12 = sub_226836038();
  v13 = sub_2268366C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_2263AA000, v12, v13, "Error sinking activity descriptors: %@", v14, 0xCu);
    sub_2267A1DC0(v15, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v15, -1, -1);
LABEL_6:
    MEMORY[0x22AA821D0](v14, -1, -1);
  }

LABEL_8:

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2267E5620(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_226836628();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = v6;

    sub_2267E457C(0, 0, v5, &unk_226875690, v10, MEMORY[0x277D84F78] + 8);
  }

  return result;
}

uint64_t sub_2267E5768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2263BA0A4;

  return sub_2267E5804(a5);
}

uint64_t sub_2267E5804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226836068();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267E58C4, v1, 0);
}

uint64_t sub_2267E58C4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_2263B7458();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_226836038();
  v6 = sub_2268366E8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[2];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_2263AA000, v5, v6, "Received %ld activity descriptors", v9, 0xCu);
    MEMORY[0x22AA821D0](v9, -1, -1);
  }

  else
  {
  }

  v10 = v0[3];
  v11 = v0[2];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v10[20] = v11;

  v14 = (*(*v10 + 352) + **(*v10 + 352));
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_2267E5AF8;

  return v14();
}

uint64_t sub_2267E5AF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2267E5C08()
{
  v1[16] = v0;
  type metadata accessor for MeetingContextDependencies(0);
  v1[17] = swift_task_alloc();
  type metadata accessor for TimeOfDayContextDependencies(0);
  v1[18] = swift_task_alloc();
  v2 = sub_226835358();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_226836068();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v4 = sub_2268352B8();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v5 = sub_2268352D8();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v6 = sub_226835228();
  v1[34] = v6;
  v1[35] = *(v6 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267E5F04, v0, 0);
}

uint64_t sub_2267E5F04()
{
  v135 = v0;
  v117 = *(**(v0 + 128) + 216);
  v1 = v117();
  v2 = *(v1 + 16);
  if (v2)
  {
    v134[0] = MEMORY[0x277D84F90];
    sub_2267A0578(0, v2, 0);
    v3 = v134[0];
    v4 = v1 + 32;
    do
    {
      sub_22679CBC4(v4, v0 + 16);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_226836988();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v5 = *(v0 + 96);
      v6 = *(v0 + 104);
      v134[0] = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2267A0578((v7 > 1), v8 + 1, 1);
        v3 = v134[0];
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  sub_226835218();
  v10 = [objc_allocWithZone(MEMORY[0x277CC5A40]) initWithEKOptions_];
  v11 = MEMORY[0x277D84F90];
  v128 = v10;
  if (v10)
  {
    v12 = *(v0 + 280);
    v130 = *(v0 + 272);
    v118 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    v15 = *(v0 + 224);
    v125 = *(v0 + 232);
    v16 = *(v0 + 208);
    v17 = *(v0 + 216);
    sub_2268352A8();
    v115 = *MEMORY[0x277CC9968];
    v114 = *(v17 + 104);
    v114(v15);
    sub_226835298();
    v18 = *(v17 + 8);
    v18(v15, v16);
    v19 = *(v13 + 8);
    v19(v14, v125);
    v20 = *(v12 + 48);
    if (v20(v118, 1, v130) == 1)
    {
      v21 = *(v0 + 264);

      v22 = v21;
LABEL_13:
      sub_2267A1DC0(v22, &qword_27D7A2530, qword_2268738A0);
      v11 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    v121 = v18;
    v112 = *(v0 + 272);
    v23 = *(v0 + 256);
    v24 = *(v0 + 248);
    v25 = *(v0 + 224);
    v119 = *(v0 + 232);
    v26 = *(v0 + 208);
    v110 = *(*(v0 + 280) + 32);
    v110(*(v0 + 304), *(v0 + 264));
    sub_2268352A8();
    (v114)(v25, v115, v26);
    sub_226835298();
    v121(v25, v26);
    v19(v24, v119);
    if (v20(v23, 1, v112) == 1)
    {
      v27 = *(v0 + 256);
      (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));

      v22 = v27;
      goto LABEL_13;
    }

    (v110)(*(v0 + 296), *(v0 + 256), *(v0 + 272));
    v28 = sub_2268351A8();
    v29 = sub_2268351A8();
    v30 = [v128 predicateForEventsWithStartDate:v28 endDate:v29 calendars:0];

    v31 = [v128 eventsMatchingPredicate_];
    sub_2263B5030(0, &qword_27D7A2450, 0x277CC5A28);
    v32 = sub_226836568();

    v134[0] = MEMORY[0x277D84F90];
    if (v32 >> 62)
    {
      goto LABEL_29;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v32; v33; i = v32)
    {
      v122 = v30;
      v34 = 0;
      v35 = v32 & 0xC000000000000001;
      v30 = (v32 & 0xFFFFFFFFFFFFFF8);
      v126 = v32 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v35)
        {
          v36 = MEMORY[0x22AA7FDD0](v34, v32);
        }

        else
        {
          if (v34 >= v30[2])
          {
            goto LABEL_28;
          }

          v36 = *(v32 + 8 * v34 + 32);
        }

        v37 = v36;
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if ([v36 isAllDay])
        {
        }

        else
        {
          sub_2268369E8();
          sub_226836A18();
          v32 = i;
          sub_226836A28();
          sub_2268369F8();
          v30 = v126;
        }

        ++v34;
        if (v38 == v33)
        {
          v11 = v134[0];
          v30 = v122;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v33 = sub_2268368D8();
    }

    v11 = MEMORY[0x277D84F90];
LABEL_31:
    v40 = *(v0 + 296);
    v39 = *(v0 + 304);
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);

    v43 = *(v41 + 8);
    v43(v40, v42);
    v43(v39, v42);
  }

LABEL_32:
  v44 = *(v0 + 200);
  v45 = *(v0 + 176);
  v46 = *(v0 + 184);
  v47 = sub_2263B7458();
  v48 = *(v46 + 16);
  v48(v44, v47, v45);

  v49 = sub_226836038();
  v50 = sub_2268366E8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    if (v11 >> 62)
    {
      v52 = sub_2268368D8();
    }

    else
    {
      v52 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v51 + 4) = v52;

    _os_log_impl(&dword_2263AA000, v49, v50, "event count: %ld", v51, 0xCu);
    MEMORY[0x22AA821D0](v51, -1, -1);
  }

  else
  {
  }

  v53 = *(v0 + 128);
  v116 = *(*(v0 + 184) + 8);
  v116(*(v0 + 200), *(v0 + 176));
  v54 = [objc_opt_self() sharedInstance];
  [v54 updateCurrentLocationOfInterestIfTimeElapsed];
  if (!*(v53 + 160))
  {
    sub_226835338();
    sub_226835328();
    sub_226835348();
    v109 = sub_226835308();
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    *(v53 + 160) = v109;
  }

  v111 = v48;
  v113 = v47;
  v127 = v11;
  v129 = v54;
  v55 = *(v0 + 312);
  v56 = *(v0 + 280);
  v57 = *(v0 + 288);
  v58 = *(v0 + 272);
  v59 = *(v0 + 144);
  v120 = *(v0 + 136);
  v123 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2538, qword_226875520);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_226873690;
  v61 = type metadata accessor for TimeOfDayContextStore();
  v62 = *(v56 + 16);
  v62(v57, v55, v58);
  sub_2267EA0F8(v57, v59);
  v63 = sub_2267EAAC8(v59);
  *(v60 + 56) = v61;
  *(v60 + 64) = sub_2267E7194(&qword_27D7A2540, type metadata accessor for TimeOfDayContextStore, &unk_226875954);
  *(v60 + 32) = v63;
  v64 = type metadata accessor for MeetingContextStore(0);
  v62(v57, v55, v58);
  v65 = v129;

  sub_2267D5DDC(v57, v127, v120);
  v66 = sub_2267D65B8(v120);
  *(v60 + 96) = v64;
  *(v60 + 104) = sub_2267E7194(&qword_27D7A2548, type metadata accessor for MeetingContextStore, &unk_226874E8C);
  *(v60 + 72) = v66;
  v67 = type metadata accessor for LocationOfInterestContextStore();
  v68 = [v129 cachedLocationOfInterestAtCurrentLocation];
  nullsub_1();
  v70 = sub_2267AD2A4(v69);
  *(v60 + 136) = v67;
  *(v60 + 144) = sub_2267E7194(&qword_27D7A2550, type metadata accessor for LocationOfInterestContextStore, &unk_2268736F4);
  *(v60 + 112) = v70;
  v71 = type metadata accessor for MotionContextStore();
  v72 = *(v123 + 128);
  nullsub_1();
  v74 = sub_22679A4E4(v73);
  *(v60 + 176) = v71;
  *(v60 + 184) = sub_2267E7194(&qword_27D7A2558, type metadata accessor for MotionContextStore, &unk_226872F34);
  *(v60 + 152) = v74;
  v75 = type metadata accessor for LiveActivityContextStore();

  nullsub_1();
  v77 = sub_2267E0F94(v76);
  *(v60 + 216) = v75;
  *(v60 + 224) = sub_2267E7194(&qword_27D7A2560, type metadata accessor for LiveActivityContextStore, &unk_226875394);
  *(v60 + 192) = v77;
  v78 = *(v123 + 136);
  *(swift_task_alloc() + 16) = v60;
  os_unfair_lock_lock(v78 + 6);
  sub_2267E71DC(&v78[4]);
  os_unfair_lock_unlock(v78 + 6);
  v79 = *(v0 + 192);
  v80 = *(v0 + 176);

  v82 = (v117)(v81);
  v111(v79, v113, v80);

  v83 = sub_226836038();
  v84 = sub_2268366E8();
  v132 = v78;
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    *(v85 + 4) = *(v82 + 16);

    _os_log_impl(&dword_2263AA000, v83, v84, "new active contexts: %ld", v85, 0xCu);
    MEMORY[0x22AA821D0](v85, -1, -1);
  }

  else
  {
  }

  v116(*(v0 + 192), *(v0 + 176));
  v86 = *(v82 + 16);
  v87 = MEMORY[0x277D84F90];
  if (v86)
  {
    v134[0] = MEMORY[0x277D84F90];
    sub_2267A0578(0, v86, 0);
    v87 = v134[0];
    v124 = v82;
    v88 = v82 + 32;
    do
    {
      sub_22679CBC4(v88, v0 + 56);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      sub_226836988();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      v89 = *(v0 + 112);
      v90 = *(v0 + 120);
      v134[0] = v87;
      v92 = *(v87 + 16);
      v91 = *(v87 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_2267A0578((v91 > 1), v92 + 1, 1);
        v87 = v134[0];
      }

      *(v87 + 16) = v92 + 1;
      v93 = v87 + 16 * v92;
      *(v93 + 32) = v89;
      *(v93 + 40) = v90;
      v88 += 40;
      --v86;
    }

    while (v86);
    v65 = v129;
    v82 = v124;
  }

  v94 = sub_2267DC1A4(v3, v87);

  if (v94)
  {
    v133 = v94;
    v95 = *(v0 + 312);
    v96 = *(v0 + 272);
    v97 = *(v0 + 280);

    (*(v97 + 8))(v95, v96);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v101 = swift_task_alloc();
    *(v101 + 16) = sub_2267E7220;
    *(v101 + 24) = KeyPath;

    os_unfair_lock_lock(v132 + 6);
    sub_2267E75C4(&v132[4]._os_unfair_lock_opaque, v134);
    os_unfair_lock_unlock(v132 + 6);
    v133 = v94;

    v102 = v134[0];
    v103 = v134[1];

    v104 = *(v0 + 312);
    v105 = *(v0 + 272);
    v106 = *(v0 + 280);
    if (v102)
    {
      v107 = *(v0 + 128);
      ObjectType = swift_getObjectType();
      (*(v103 + 8))(v107, v82, ObjectType, v103);
      swift_unknownObjectRelease();

      (*(v106 + 8))(v104, v105);
    }

    else
    {
      (*(v106 + 8))(*(v0 + 312), *(v0 + 272));
    }
  }

  v98 = *(v0 + 8);

  return v98((v133 & 1) == 0);
}

id *sub_2267E6EB0()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2267E6F10()
{
  sub_2267E6EB0();

  return MEMORY[0x282200960](v0);
}

char *sub_2267E6F48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2668, &qword_2268756F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2267E704C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2658, &qword_2268756E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2267E7194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2267E71DC(uint64_t a1)
{
  *(*a1 + 16) = *(v1 + 16);
}

uint64_t sub_2267E7220(uint64_t a1)
{

  swift_getAtKeyPath();

  return v2;
}

uint64_t sub_2267E726C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2267E7308()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1ED0;

  return sub_2267E5768(v4, v5, v6, v2, v3);
}

uint64_t sub_2267E73A0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2267A1ED0;

  return sub_2267E50D0(a1, v5, v6, v4);
}

uint64_t sub_2267E7440()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1ED0;

  return sub_2267E4AF8(v4, v5, v6, v2, v3);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2267E7518(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2263BA0A4;

  return sub_2267E42E8(a1, v5, v6, v4);
}

float static AppPredictionDataHarvesterConstants.actionPredictionSessionDataHarvestSamplingRate.getter(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002ELL, 0x80000002268CFAC0, sub_2267E8C54, &v3, MEMORY[0x277D83A90], &v4);
  return v4;
}

uint64_t sub_2267E7770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2263B4F20(a1, v5);
  v3 = sub_2267E85E0(v5);
  result = sub_2267A1DC0(v5, &qword_27D7A1AA0, &qword_2268732C0);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
  return result;
}

float static AppPredictionDataHarvesterConstants.appPredictionSessionDataHarvestSamplingRate.getter(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002BLL, 0x80000002268CFAF0, sub_2267E8C54, &v3, MEMORY[0x277D83A90], &v4);
  return v4;
}

float static AppPredictionDataHarvesterConstants.documentPredictionSessionDataHarvestSamplingRate.getter(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD000000000000030, 0x80000002268CFB20, sub_2267E8C54, &v3, MEMORY[0x277D83A90], &v4);
  return v4;
}

uint64_t static AppPredictionDataHarvesterConstants.actionPredictionSessionDataHarvestMaxItems.getter(uint64_t a1, uint64_t a2)
{
  v3 = 10;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002ALL, 0x80000002268CFB60, sub_2267E8C58, &v3, MEMORY[0x277D83E88], &v4);
  return v4;
}

uint64_t sub_2267E7C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2263B4F20(a1, v7);
  v3 = sub_2267E86AC(v7);
  v5 = v4;
  result = sub_2267A1DC0(v7, &qword_27D7A1AA0, &qword_2268732C0);
  *a2 = v3;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t static AppPredictionDataHarvesterConstants.appPredictionSessionDataHarvestMaxItems.getter(uint64_t a1, uint64_t a2)
{
  v3 = 13;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD000000000000027, 0x80000002268CFB90, sub_2267E8C58, &v3, MEMORY[0x277D83E88], &v4);
  return v4;
}

uint64_t static AppPredictionDataHarvesterConstants.documentPredictionSessionDataHarvestMaxItems.getter(uint64_t a1, uint64_t a2)
{
  v3 = 11;
  type metadata accessor for PListDictionaryUtilities();
  if (qword_2813904B0 != -1)
  {
    swift_once();
  }

  sub_2267FB75C(qword_281390BF8, 0xD00000000000002CLL, 0x80000002268CFBC0, sub_2267E8C58, &v3, MEMORY[0x277D83E88], &v4);
  return v4;
}