uint64_t sub_250944258()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_250944290()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2509442D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_250944318()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25094435C()
{
  v0 = sub_25094B054();
  __swift_allocate_value_buffer(v0, qword_27F3DF7D8);
  __swift_project_value_buffer(v0, qword_27F3DF7D8);
  return sub_25094B044();
}

uint64_t sub_2509443DC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2509444C0()
{
  sub_25094B304();
  MEMORY[0x253063B80](v0);
  return sub_25094B334();
}

uint64_t sub_250944550(uint64_t a1)
{
  sub_25094B304();
  sub_250944494();
  return sub_25094B334();
}

HIDRMClientKit::HIDRMClient::HIDRMClientDevice::State_optional __swiftcall HIDRMClient.HIDRMClientDevice.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25094B2C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HIDRMClient.HIDRMClientDevice.State.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E69766F72707041;
  v3 = 0x6465696E6544;
  v4 = 0x6576697463616E49;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E55;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465776F6C6C41;
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

uint64_t sub_2509446AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E69766F72707041;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6465776F6C6C41;
    }

    else
    {
      v5 = 0x6E69766F72707041;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000067;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x6465696E6544;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6576697463616E49;
    }

    else
    {
      v5 = 0x6E776F6E6B6E55;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x6465696E6544;
  v9 = 0xE800000000000000;
  v10 = 0x6576697463616E49;
  if (a2 != 3)
  {
    v10 = 0x6E776F6E6B6E55;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x6465776F6C6C41;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25094B2D4();
  }

  return v13 & 1;
}

uint64_t sub_250944828()
{
  sub_25094B304();
  sub_25094B0B4();

  return sub_25094B334();
}

uint64_t sub_25094490C(uint64_t a1)
{
  sub_25094B0B4();
}

uint64_t sub_2509449DC(uint64_t a1)
{
  sub_25094B304();
  sub_25094B0B4();

  return sub_25094B334();
}

void sub_250944AC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0x6E69766F72707041;
  v5 = 0xE600000000000000;
  v6 = 0x6465696E6544;
  v7 = 0xE800000000000000;
  v8 = 0x6576697463616E49;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E55;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6465776F6C6C41;
    v3 = 0xE700000000000000;
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

uint64_t sub_250944B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25094A758();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_250944BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25094A758();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_250944C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_25094A704();
  v5 = sub_25094A758();
  v6 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_250944CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25094A704();

  return MEMORY[0x282140D48](a1, a2, v4);
}

uint64_t HIDRMClient.HIDRMClientDevice.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HIDRMClient.HIDRMClientDevice.hash.getter()
{
  v1 = *(v0 + 24);
  v2 = sub_25094B084();
  v3 = [v1 propertyForKey_];

  if (v3)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_25094AA28(v8, &qword_27F3DF190, &qword_25094B7F0);
  }

  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

HIDRMClientKit::HIDRMClient::HIDRMClientDevice::State_optional HIDRMClient.HIDRMClientDevice.state.getter@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_25094B084();
  v5 = [v3 propertyForKey_];

  if (v5)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v10;
      v7 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    sub_25094AA28(v14, &qword_27F3DF190, &qword_25094B7F0);
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_9:
  result.value = HIDRMClient.HIDRMClientDevice.State.init(rawValue:)(*&v6).value;
  v9 = v14[0];
  if (LOBYTE(v14[0]) == 5)
  {
    v9 = 4;
  }

  *a1 = v9;
  return result;
}

HIDRMClientKit::HIDRMClient::HIDRMClientDevice::State_optional sub_250944F7C@<W0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  result.value = HIDRMClient.HIDRMClientDevice.state.getter(&v6).value;
  *a2 = v6;
  return result;
}

void HIDRMClient.HIDRMClientDevice.state.setter(_BYTE *a1)
{
  v2 = *(v1 + 24);
  v3 = sub_25094B084();

  v4 = sub_25094B084();
  [v2 setProperty:v3 forKey:v4];
}

void (*HIDRMClient.HIDRMClientDevice.state.modify(uint64_t a1))(void **a1)
{
  *a1 = *(v1 + 24);
  HIDRMClient.HIDRMClientDevice.state.getter((a1 + 8));
  return sub_25094519C;
}

void sub_25094519C(void **a1)
{
  v1 = *a1;
  v3 = sub_25094B084();

  v2 = sub_25094B084();
  [v1 setProperty:v3 forKey:v2];
}

uint64_t sub_2509452D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = sub_25094B084();
  v5 = [v3 propertyForKey_];

  if (v5)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v12;
      v6 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    sub_25094AA28(&v16, &qword_27F3DF190, &qword_25094B7F0);
  }

  v6 = 0xEE006E6F69747069;
  v7 = 0x7263736564206F4ELL;
LABEL_9:
  v8 = sub_25094B084();
  v9 = [v3 propertyForKey_];

  if (v9)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    result = sub_25094AA28(&v16, &qword_27F3DF190, &qword_25094B7F0);
    goto LABEL_16;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = v12;
LABEL_17:
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v11;
  a2[3] = v3;
  return result;
}

Swift::Void __swiftcall HIDRMClient.HIDRMClientDevice.approve()()
{
  v1 = *(v0 + 24);
  sub_25094AF04(0, &qword_27F3DF198, 0x277CCABB0);
  v2 = sub_25094B1C4();
  v3 = sub_25094B084();
  [v1 setProperty:v2 forKey:v3];
}

Swift::Void __swiftcall HIDRMClient.HIDRMClientDevice.revoke()()
{
  v1 = *(v0 + 24);
  sub_25094AF04(0, &qword_27F3DF198, 0x277CCABB0);
  v2 = sub_25094B1C4();
  v3 = sub_25094B084();
  [v1 setProperty:v2 forKey:v3];
}

uint64_t HIDRMClient.HIDRMClientDevice.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25094B304();
  MEMORY[0x253063B90](v1);
  return sub_25094B334();
}

uint64_t sub_25094568C()
{
  v1 = *(v0 + 16);
  sub_25094B304();
  MEMORY[0x253063B90](v1);
  return sub_25094B334();
}

uint64_t sub_250945700(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_25094B304();
  MEMORY[0x253063B90](v2);
  return sub_25094B334();
}

void *sub_250945758()
{
  sub_250946DE0();
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_250948194(*(v1 + 16), 0);
  v4 = sub_250949DC8(&v7, v3 + 4, v2, v1);
  v5 = v7;

  sub_250949F40(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t HIDRMClient.__allocating_init()()
{
  v0 = swift_allocObject();
  HIDRMClient.init()();
  return v0;
}

uint64_t HIDRMClient.init()()
{
  v8 = sub_25094B1A4();
  v1 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25094B194();
  MEMORY[0x28223BE20]();
  sub_25094B074();
  MEMORY[0x28223BE20]();
  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84FA0];
  *(v0 + 112) = MEMORY[0x277D84FA0];
  *(v0 + 120) = v4;
  *(v0 + 128) = 0;
  v5 = sub_25094AF04(0, &qword_28151D570, 0x277D85C78);
  v7[0] = "HIDRMDeviceRevoke";
  v7[1] = v5;
  sub_25094B064();
  v9 = MEMORY[0x277D84F90];
  sub_250949F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1A0, &qword_25094B7F8);
  sub_25094A0C4(qword_28151D580, &qword_27F3DF1A0, &qword_25094B7F8, MEMORY[0x277D83970]);
  sub_25094B1F4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v8);
  *(v0 + 136) = sub_25094B1B4();
  *(v0 + 144) = 0;
  return v0;
}

uint64_t sub_250945AC8(uint64_t *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1D0, &qword_25094BBD8);
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20]();
  v37 = v32 - v4;
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  swift_beginAccess();
  result = sub_250945E7C(v5, v6, v8, v7, *(v1 + 112));
  if ((result & 1) == 0)
  {
    swift_beginAccess();

    v10 = v7;
    v11 = v1;
    v35 = v6;
    v33 = v10;
    sub_250948218(v45, v5, v6, v8, v10);
    v12 = v46;
    swift_endAccess();

    swift_beginAccess();
    v13 = *(v11 + 120);
    v36 = v5;
    v34 = v8;
    if ((v13 & 0xC000000000000001) != 0)
    {

      sub_25094B224();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
      sub_25094A618();
      result = sub_25094B154();
      v13 = v45[0];
      v14 = v45[1];
      v15 = v45[2];
      v16 = v46;
      v17 = v47;
    }

    else
    {
      v18 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v13 + 56);

      v16 = 0;
    }

    v32[1] = v15;
    v21 = (v15 + 64) >> 6;
    v22 = (v3 + 8);
    if (v13 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v23 = v16;
      v24 = v17;
      v25 = v16;
      if (!v17)
      {
        break;
      }

LABEL_13:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v13 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (!v27)
      {
        return sub_250949F40(v13);
      }

      while (1)
      {
        v40 = v36;
        v41 = v35;
        v29 = v33;
        v42 = v34;
        v43 = v33;
        v44 = 0;

        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E8, &qword_25094BBE8);
        v31 = v37;
        sub_25094B134();

        result = (*v22)(v31, v38);
        v16 = v25;
        v17 = v26;
        if ((v13 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v28 = sub_25094B254();
        if (v28)
        {
          v39 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
          swift_dynamicCast();
          v25 = v16;
          v26 = v17;
          if (v40)
          {
            continue;
          }
        }

        return sub_250949F40(v13);
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v21)
      {
        return sub_250949F40(v13);
      }

      v24 = *(v14 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_250945E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  sub_25094B304();
  MEMORY[0x253063B90](a3);
  v7 = sub_25094B334();
  v8 = -1 << *(a5 + 32);
  v9 = v7 & ~v8;
  if (((*(a5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  do
  {
    v11 = *(*(a5 + 48) + 32 * v9 + 16);
    result = v11 == a3;
    if (v11 == a3)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
  }

  while (((*(a5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  return result;
}

void sub_250945F4C(uint64_t a1)
{
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1D0, &qword_25094BBD8);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20]();
  v38 = &v33 - v2;
  swift_beginAccess();
  v37 = v1;
  v3 = *(v1 + 112);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (!v6)
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 56 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  while (1)
  {
    v9 = v8;
LABEL_8:
    v10 = *(v3 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v6))));
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    sub_25094AF04(0, &qword_27F3DF1D8, 0x277D82BB8);

    v13 = v12;
    v14 = sub_25094B1D4();

    if (v14)
    {
      break;
    }

    v6 &= v6 - 1;

    v8 = v9;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v15 = v37;
  swift_beginAccess();
  sub_2509496F4(v11, &v47);
  swift_endAccess();

  v40 = v48;
  if (v48)
  {
    v33 = v47;
    v35 = v49;
    v34 = v50;
    swift_beginAccess();
    v16 = *(v15 + 120);
    if ((v16 & 0xC000000000000001) != 0)
    {

      sub_25094B224();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
      sub_25094A618();
      sub_25094B154();
      v16 = v47;
      v17 = v48;
      v18 = v49;
      v19 = v50;
      v20 = v51;
    }

    else
    {
      v21 = -1 << *(v16 + 32);
      v17 = v16 + 56;
      v18 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v20 = v23 & *(v16 + 56);

      v19 = 0;
    }

    v37 = v18;
    v24 = (v18 + 64) >> 6;
    v25 = (v36 + 8);
    if (v16 < 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v26 = v19;
      v27 = v20;
      v28 = v19;
      if (!v20)
      {
        break;
      }

LABEL_25:
      v29 = (v27 - 1) & v27;
      v30 = *(*(v16 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

      if (!v30)
      {
LABEL_31:
        sub_250949F40(v16);
        sub_25094A67C(v33, v40, v35, v34);
        return;
      }

      while (1)
      {
        v42 = v33;
        v43 = v40;
        v44 = v35;
        v45 = v34;
        v46 = 64;
        sub_25094A6C0(v33, v40, v35, v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E8, &qword_25094BBE8);
        v32 = v38;
        sub_25094B134();

        (*v25)(v32, v39);
        v19 = v28;
        v20 = v29;
        if ((v16 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_27:
        v31 = sub_25094B254();
        if (v31)
        {
          v41 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
          swift_dynamicCast();
          v28 = v19;
          v29 = v20;
          if (v42)
          {
            continue;
          }
        }

        goto LABEL_31;
      }
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
        goto LABEL_31;
      }

      v27 = *(v17 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_25;
      }
    }

LABEL_33:
    __break(1u);
  }
}

void sub_250946410(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1D0, &qword_25094BBD8) - 8);
  v6 = MEMORY[0x28223BE20]();
  v8 = v62 - v7;
  if (!a1)
  {
    return;
  }

  v73 = v6;
  v74 = a1;
  if ([a2 type] != 1 || (v9 = objc_msgSend(a2, sel_integerValueForField_, 65537), objc_msgSend(a2, sel_integerValueForField_, 0x10000) != 65280) || v9 != 91)
  {
    v13 = v74;

    return;
  }

  if (!IOCFUnserialize([a2 dataValueForField_], 0, 0, 0))
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_13:
    v11 = 0;
    v80 = 0u;
    v81 = 0u;
LABEL_14:
    sub_25094AA28(&v80, &qword_27F3DF190, &qword_25094B7F0);
    if (qword_27F3DF240 != -1)
    {
      swift_once();
    }

    v14 = sub_25094B054();
    __swift_project_value_buffer(v14, qword_27F3DF7D8);
    v15 = sub_25094B034();
    v16 = sub_25094B184();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_250943000, v15, v16, "properties", v17, 2u);
      MEMORY[0x253063F50](v17, -1, -1);
    }

    return;
  }

  *&v75 = 0xD000000000000010;
  *(&v75 + 1) = 0x800000025094BC60;
  v11 = v10;
  v12 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v12)
  {
    sub_25094B1E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v75 = 0u;
  }

  v80 = v75;
  v81 = v76;
  if (!*(&v76 + 1))
  {
    goto LABEL_14;
  }

  v71 = v2;
  v66 = v5;
  sub_25094AA28(&v80, &qword_27F3DF190, &qword_25094B7F0);
  v74 = v74;
  sub_2509452D0(v74, &v80);
  v18 = v80;
  v20 = *(&v81 + 1);
  v19 = v81;
  v21 = HIDRMClient.HIDRMClientDevice.hash.getter();
  v70 = v11;
  v67 = 0x800000025094BC60;
  if (v21 || v22 != 0xE000000000000000)
  {
    v23 = sub_25094B2D4();

    if ((v23 & 1) == 0)
    {
      v24 = v71;
      swift_beginAccess();
      if (!sub_250945E7C(v18, *(&v18 + 1), v19, v20, *(v24 + 112)))
      {
        v80 = v18;
        *&v81 = v19;
        *(&v81 + 1) = v20;
        sub_250945AC8(&v80);
      }
    }
  }

  else
  {
  }

  v68 = v20;
  v69 = *(&v18 + 1);
  v25 = v71;
  swift_beginAccess();
  v26 = *(v25 + 112);
  v27 = v26 + 56;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 56);
  v31 = (v28 + 63) >> 6;
  v72 = v26;

  for (i = 0; v30; i = v33)
  {
    v33 = i;
LABEL_34:
    v34 = (*(v72 + 48) + ((v33 << 11) | (32 * __clz(__rbit64(v30)))));
    v35 = *v34;
    v36 = v34[1];
    v38 = v34[2];
    v37 = v34[3];
    sub_25094AF04(0, &qword_27F3DF1D8, 0x277D82BB8);

    v19 = v37;
    v39 = sub_25094B1D4();

    if (v39)
    {
      v65 = v38;
      v64 = v35;
      v40 = v71;
      swift_beginAccess();
      v41 = *(v40 + 120);
      if ((v41 & 0xC000000000000001) != 0)
      {

        sub_25094B224();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
        sub_25094A618();
        sub_25094B154();
        v43 = *(&v80 + 1);
        v42 = v80;
        v45 = *(&v81 + 1);
        v44 = v81;
        v46 = v82;
      }

      else
      {
        v47 = -1 << *(v41 + 32);
        v43 = v41 + 56;
        v44 = ~v47;
        v48 = -v47;
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v46 = v49 & *(v41 + 56);

        v45 = 0;
      }

      v50 = v36;
      v62[1] = v44;
      v51 = (v44 + 64) >> 6;
      ++v66;
      v33 = v42;
      v71 = v43;
      for (j = v51; ; v51 = j)
      {
        if (v42 < 0)
        {
          v58 = sub_25094B254();
          if (!v58)
          {
            goto LABEL_64;
          }

          *&v78 = v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
          swift_dynamicCast();
          v57 = v75;
          v56 = v46;
        }

        else
        {
          v54 = v45;
          v55 = v46;
          if (!v46)
          {
            while (1)
            {
              v45 = v54 + 1;
              if (__OFADD__(v54, 1))
              {
                break;
              }

              if (v45 >= v51)
              {
                goto LABEL_64;
              }

              v55 = *(v43 + 8 * v45);
              ++v54;
              if (v55)
              {
                goto LABEL_55;
              }
            }

            __break(1u);
            return;
          }

LABEL_55:
          v56 = (v55 - 1) & v55;
          v57 = *(*(v42 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v55)))));
        }

        if (!v57)
        {
          goto LABEL_64;
        }

        v59 = v19;
        v60 = sub_25094B084();
        v61 = [v59 propertyForKey_];

        if (v61)
        {
          sub_25094B1E4();
          swift_unknownObjectRelease();
        }

        else
        {
          v78 = 0u;
          v79 = 0u;
        }

        v76 = v79;
        v75 = v78;
        if (*(&v79 + 1))
        {
          swift_dynamicCast();
        }

        else
        {
          sub_25094AA28(&v75, &qword_27F3DF190, &qword_25094B7F0);
        }

        v52 = sub_25094B2C4();

        v53 = v52 | 0x80;
        if (v52 >= 5)
        {
          v53 = -124;
        }

        *&v75 = v64;
        *(&v75 + 1) = v50;
        *&v76 = v65;
        *(&v76 + 1) = v19;
        v77 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E8, &qword_25094BBE8);
        sub_25094B134();

        (*v66)(v8, v73);
        v46 = v56;
        v42 = v33;
        v43 = v71;
      }
    }

    v30 &= v30 - 1;
  }

  while (1)
  {
    v33 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      return;
    }

    v30 = *(v27 + 8 * v33);
    ++i;
    if (v30)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_64:

  sub_250949F40(v33);
}

void sub_250946DE0()
{
  if ((*(v0 + 144) & 1) == 0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277D0EEF0]) initWithType_];
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF228, &qword_25094BC40);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25094B7D0;
    v5 = MEMORY[0x277D837D0];
    *(v4 + 32) = 0x726F70736E617254;
    *(v4 + 40) = 0xE900000000000074;
    *(v4 + 88) = v5;
    *(v4 + 56) = v5;
    *(v4 + 64) = 4346709;
    *(v4 + 72) = 0xE300000000000000;
    if (!*MEMORY[0x277CD2888])
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *(v4 + 96) = sub_25094B094();
    *(v4 + 104) = v6;
    *(v4 + 152) = v5;
    *(v4 + 120) = v5;
    *(v4 + 128) = 42;
    *(v4 + 136) = 0xE100000000000000;
    sub_25094AF04(0, &qword_27F3DF230, 0x277CBEAC0);
    v7 = sub_25094B164();
    v8 = *(v1 + 128);
    if (!v8)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v8 setMatching_];
    v9 = *(v1 + 128);
    if (!v9)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    [v9 setDispatchQueue_];
    v10 = *(v1 + 128);
    if (!v10)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v43 = v7;
    v11 = v10;
    v12 = sub_25094B0D4();
    v13 = sub_25094B084();
    [v11 setProperty:v12 forKey:v13];

    v14 = *(v1 + 128);
    if (!v14)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v53 = sub_25094AE04;
    v54 = v1;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_2509474BC;
    *(&v52 + 1) = &block_descriptor;
    v15 = _Block_copy(&aBlock);

    v16 = v14;

    [v16 setServiceNotificationHandler_];
    _Block_release(v15);

    v17 = *(v1 + 128);
    if (!v17)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v53 = sub_25094AF00;
    v54 = v1;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_250947524;
    *(&v52 + 1) = &block_descriptor_51;
    v18 = _Block_copy(&aBlock);

    v19 = v17;

    [v19 setEventHandler_];
    _Block_release(v18);

    v20 = *(v1 + 128);
    if (!v20)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = [v20 services];
    sub_25094AF04(0, &qword_27F3DF238, 0x277CD2860);
    v22 = sub_25094B0E4();

    v23 = v22;
    if (v22 >> 62)
    {
      v40 = sub_25094B234();
      v23 = v22;
      v24 = v40;
      if (v40)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_11:
        if (v24 >= 1)
        {
          v45 = v23 & 0xC000000000000001;
          v25 = v23;
          swift_beginAccess();
          v26 = v25;
          v27 = 0;
          v44 = &v52;
          v46 = v24;
          v28 = v25;
          while (1)
          {
            v32 = v45 ? MEMORY[0x253063B10](v27, v26) : *(v26 + 8 * v27 + 32);
            v33 = v32;
            sub_2509452D0(v33, &aBlock);
            v34 = aBlock;
            v35 = v52;
            v36 = sub_25094B084();
            v37 = [*(&v35 + 1) propertyForKey_];

            if (v37)
            {
              sub_25094B1E4();
              swift_unknownObjectRelease();
            }

            else
            {
              v49 = 0u;
              v50 = 0u;
            }

            aBlock = v49;
            v52 = v50;
            if (!*(&v50 + 1))
            {
              break;
            }

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_26;
            }

            v38 = v48;
            if (v47)
            {
              goto LABEL_28;
            }

LABEL_27:
            if (v38 != 0xE000000000000000)
            {
LABEL_28:
              v39 = sub_25094B2D4();

              if ((v39 & 1) == 0 && !sub_250945E7C(v34, *(&v34 + 1), v35, *(&v35 + 1), *(v1 + 112)))
              {
                aBlock = v34;
                v52 = v35;
                sub_250945AC8(&aBlock);
              }

              goto LABEL_14;
            }

LABEL_14:
            ++v27;
            v29 = swift_allocObject();
            *(v29 + 16) = v1;
            *(v29 + 24) = v33;
            v53 = sub_25094AFF0;
            v54 = v29;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v52 = sub_250947478;
            *(&v52 + 1) = &block_descriptor_57;
            v30 = _Block_copy(&aBlock);

            v31 = v33;

            [v31 setRemovalHandler_];
            _Block_release(v30);

            v26 = v28;
            if (v46 == v27)
            {
              goto LABEL_32;
            }
          }

          sub_25094AA28(&aBlock, &qword_27F3DF190, &qword_25094B7F0);
LABEL_26:
          v38 = 0xE000000000000000;
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_36;
      }
    }

LABEL_32:

    v41 = *(v1 + 128);
    if (!v41)
    {
LABEL_43:
      __break(1u);
      return;
    }

    v42 = v41;
    [v42 activate];

    *(v1 + 144) = 1;
  }
}

uint64_t sub_250947478(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2509474BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_250947524(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_2509475A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1A8, &qword_25094B800);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v5 - v2;
  sub_250946DE0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85778], v0);
  return sub_25094B144();
}

uint64_t sub_2509476B4(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1D0, &qword_25094BBD8);
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E8, &qword_25094BBE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v29 - v9;
  (*(v8 + 16))(&v29 - v9, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + *(*v11 + 88), v10, v7);
  swift_beginAccess();

  sub_250948380(v36, v11);
  swift_endAccess();

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;

  v29 = v7;
  sub_25094B124();
  swift_beginAccess();
  v14 = *(a2 + 112);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 56);
  v18 = (v15 + 63) >> 6;
  v19 = (v4 + 8);

  for (i = 0; v17; result = (*v19)(v6, v30))
  {
    v22 = i;
LABEL_9:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = (*(v14 + 48) + ((v22 << 11) | (32 * v23)));
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v31 = *v24;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v35 = 0;

    v28 = v27;
    sub_25094B134();
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
    }

    v17 = *(v14 + 56 + 8 * v22);
    ++i;
    if (v17)
    {
      i = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_250947A30(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF208, &qword_25094BBF8);
  MEMORY[0x28223BE20]();
  v5 = &v9 - v4;
  v6 = sub_25094B114();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;

  sub_250947D00(0, 0, v5, &unk_25094BC08, v7);
}

uint64_t sub_250947B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_250947B6C, 0, 0);
}

uint64_t sub_250947B6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_250947C30, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_250947C30()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  sub_250949810(v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_250947CD8, 0, 0);
}

uint64_t sub_250947D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF208, &qword_25094BBF8);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_25094A9B8(a3, v24 - v9);
  v11 = sub_25094B114();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25094AA28(v10, &qword_27F3DF208, &qword_25094BBF8);
  }

  else
  {
    sub_25094B104();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25094B0F4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25094B0A4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF210, &qword_25094BC20);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_25094AA28(a3, &qword_27F3DF208, &qword_25094BBF8);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25094AA28(a3, &qword_27F3DF208, &qword_25094BBF8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF210, &qword_25094BC20);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_250948004()
{
  if (qword_27F3DF240 != -1)
  {
    swift_once();
  }

  v0 = sub_25094B054();
  __swift_project_value_buffer(v0, qword_27F3DF7D8);
  oslog = sub_25094B034();
  v1 = sub_25094B174();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_250943000, oslog, v1, "HIDRMClient revokeAllDevices called; currently a noop", v2, 2u);
    MEMORY[0x253063F50](v2, -1, -1);
  }
}

uint64_t HIDRMClient.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HIDRMClient.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_250948194(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF220, &qword_25094BC38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_250948218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *v5;
  sub_25094B304();
  MEMORY[0x253063B90](a4);
  v12 = sub_25094B334();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 32 * v14 + 16) != a4)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v19 = (*(v11 + 48) + 32 * v14);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    *a1 = *v19;
    a1[1] = v20;
    a1[2] = v21;
    a1[3] = v22;

    v23 = v22;
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    v17 = a5;
    sub_250948CFC(a2, a3, a4, v17, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = v17;
    return 1;
  }
}

uint64_t sub_250948380(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_25094B244();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_25094B234();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_250948590(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_250948A08(v17 + 1);
    }

    sub_250948C58(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_25094B304();
  MEMORY[0x253063B80](a2);
  v10 = sub_25094B334();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_250948E70(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_250948590(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF218, &qword_25094BC30);
    v2 = sub_25094B294();
    v15 = v2;
    sub_25094B224();
    for (; sub_25094B254(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_250948A08(v9 + 1);
        v2 = v15;
      }

      sub_25094B304();
      MEMORY[0x253063B80]();
      result = sub_25094B334();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25094879C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1F0, &qword_25094BBF0);
  result = sub_25094B284();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      v31 = v18[3];
      sub_25094B304();
      MEMORY[0x253063B90](v21);
      result = sub_25094B334();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v20;
      v14[1] = v19;
      v3 = v30;
      v14[2] = v21;
      v14[3] = v31;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_250948A08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF218, &qword_25094BC30);
  result = sub_25094B284();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_25094B304();
      MEMORY[0x253063B80](v17);
      result = sub_25094B334();
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

unint64_t sub_250948C58(uint64_t a1, uint64_t a2)
{
  sub_25094B304();
  MEMORY[0x253063B80](a1);
  sub_25094B334();
  result = sub_25094B214();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_250948CFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = result;
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    sub_25094879C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      v13 = a5;
      result = sub_250948FC8();
      a5 = v13;
      goto LABEL_12;
    }

    sub_250949280(v11 + 1);
  }

  v14 = *v6;
  sub_25094B304();
  MEMORY[0x253063B90](a3);
  result = sub_25094B334();
  v15 = -1 << *(v14 + 32);
  a5 = result & ~v15;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    while (*(*(v14 + 48) + 32 * a5 + 16) != a3)
    {
      a5 = (a5 + 1) & v16;
      if (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v18 = (*(v17 + 48) + 32 * a5);
  *v18 = v10;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25094B2F4();
  __break(1u);
  return result;
}

uint64_t sub_250948E70(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_250948A08(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_250949130();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2509494CC(v5 + 1);
  }

  v8 = *v3;
  sub_25094B304();
  MEMORY[0x253063B80](v4);
  result = sub_25094B334();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1E0, &qword_25094BBE0);
  result = sub_25094B2F4();
  __break(1u);
  return result;
}

id sub_250948FC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1F0, &qword_25094BBF0);
  v2 = *v0;
  v3 = sub_25094B274();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;

        result = v21;
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

void *sub_250949130()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF218, &qword_25094BC30);
  v2 = *v0;
  v3 = sub_25094B274();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_250949280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF1F0, &qword_25094BBF0);
  result = sub_25094B284();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = v18[1];
      v30 = *v18;
      v21 = v18[2];
      v20 = v18[3];
      sub_25094B304();
      MEMORY[0x253063B90](v21);
      result = sub_25094B334();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v30;
      v14[1] = v19;
      v14[2] = v21;
      v14[3] = v20;
      ++*(v5 + 16);

      result = v20;
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_2509494CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF218, &qword_25094BC30);
  result = sub_25094B284();
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
      sub_25094B304();
      MEMORY[0x253063B80](v16);
      result = sub_25094B334();
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

uint64_t sub_2509496F4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_25094B304();
  MEMORY[0x253063B90](a1);
  result = sub_25094B334();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 32 * v8 + 16) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v16 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_250948FC8();
      v11 = v16;
    }

    v12 = *(v11 + 48) + 32 * v8;
    v13 = *v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    *a2 = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v14;
    result = sub_250949A74(v8);
    *v2 = v16;
  }

  else
  {
LABEL_5:
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_250949810(uint64_t a1)
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

    v5 = sub_25094B264();

    if (v5)
    {
      v6 = sub_250949980(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_25094B304();
  MEMORY[0x253063B80](a1);
  v8 = sub_25094B334();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_250949130();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_250949C20(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_250949980(uint64_t a1, uint64_t a2)
{

  v4 = sub_25094B234();
  v5 = swift_unknownObjectRetain();
  v6 = sub_250948590(v5, v4);
  v14 = v6;
  sub_25094B304();
  MEMORY[0x253063B80](a2);
  v7 = sub_25094B334();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
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

  sub_250949C20(v10);
  *v2 = v14;
  return v6;
}

unint64_t sub_250949A74(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25094B204();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = *(*(v3 + 48) + 32 * v6 + 16);
        sub_25094B304();
        MEMORY[0x253063B90](v11);
        v12 = sub_25094B334() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 32 * v2);
          v15 = (v13 + 32 * v6);
          if (v2 != v6 || v14 >= v15 + 2)
          {
            v10 = v15[1];
            *v14 = *v15;
            v14[1] = v10;
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_250949C20(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25094B204();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_25094B304();
        MEMORY[0x253063B80](v10);
        v11 = sub_25094B334() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_250949DC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        v25 = v21;
        goto LABEL_23;
      }

      v11 += 4;

      v22 = v21;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_250949F48()
{
  result = qword_28151D578;
  if (!qword_28151D578)
  {
    sub_25094B194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151D578);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
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

unint64_t sub_25094A02C()
{
  result = qword_27F3DF1B0;
  if (!qword_27F3DF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF1B0);
  }

  return result;
}

uint64_t sub_25094A0C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_25094A110()
{
  result = qword_27F3DF1C8;
  if (!qword_27F3DF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF1C8);
  }

  return result;
}

uint64_t sub_25094A168(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25094A300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 33))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x1C | (*(a1 + 32) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25094A354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 30;
    *(result + 8) = 0;
    if (a3 >= 0x1E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25094A3F0(uint64_t a1, int a2)
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

uint64_t sub_25094A438(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HIDRMClient.HIDRMClientDevice.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HIDRMClient.HIDRMClientDevice.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25094A618()
{
  result = qword_27F3DF7D0;
  if (!qword_27F3DF7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3DF1E0, &qword_25094BBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF7D0);
  }

  return result;
}

void sub_25094A67C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

void sub_25094A6C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    v4 = a4;
  }
}

unint64_t sub_25094A704()
{
  result = qword_27F3DF1F8;
  if (!qword_27F3DF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF1F8);
  }

  return result;
}

unint64_t sub_25094A758()
{
  result = qword_27F3DF200;
  if (!qword_27F3DF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3DF200);
  }

  return result;
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

uint64_t sub_25094A818(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25094A8C4;

  return sub_250947B48(a1, v6, v7, v5, v4);
}

uint64_t sub_25094A8C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25094A9B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3DF208, &qword_25094BBF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25094AA28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25094AA88(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25094AB7C;

  return v5(v2 + 32);
}

uint64_t sub_25094AB7C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25094AC90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25094AFF4;

  return sub_25094AA88(a1, v4);
}

uint64_t sub_25094AD48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25094A8C4;

  return sub_25094AA88(a1, v4);
}

void sub_25094AE04(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v6[4] = sub_25094AF8C;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_250947478;
  v6[3] = &block_descriptor_63;
  v4 = _Block_copy(v6);

  v5 = a1;

  [v5 setRemovalHandler_];
  _Block_release(v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25094AF04(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}