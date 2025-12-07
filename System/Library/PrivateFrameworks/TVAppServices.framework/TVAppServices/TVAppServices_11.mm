void *PlaybackEventQueueService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PlaybackEventQueueService.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26CD13238(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_26CD13308(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_26CCBF508(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_26CD13238(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t dispatch thunk of PlaybackEventQueueService.__allocating_init(directoryName:eventsFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 152) + **(v4 + 152));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26CC65DA8;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PlaybackEventQueueService.enqueue(report:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26CC37110;

  return v6(a1);
}

uint64_t dispatch thunk of PlaybackEventQueueService.deleteReports()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26CC246B8;

  return v4();
}

uint64_t dispatch thunk of PlaybackEventQueueService.dequeue()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26CC65DA8;

  return v4();
}

uint64_t dispatch thunk of PlaybackEventQueueService.getReports()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26CC5C5BC;

  return v4();
}

id sub_26CD13960()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];
  v2 = sub_26CD3A59C();
  v3 = sub_26CD3A59C();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  v5 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v6 = sub_26CD3A59C();
  v7 = [v5 initWithClientIdentifier:v6 bag:v4];

  [v7 setSession_];
  v8 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v1 setProtocolHandler_];

  return v7;
}

id sub_26CD13AD8()
{
  v0 = sub_26CD13960();
  v1 = sub_26CD3A59C();
  v2 = sub_26CD3A59C();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v4 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v0 bag:v3];
  v5 = [objc_opt_self() ams_sharedAccountStore];
  v6 = [v5 ams_activeiTunesAccount];

  [v4 setAccount_];
  return v4;
}

uint64_t sub_26CD13C38(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC5C5BC;

  return v7(a1, a2);
}

uint64_t getEnumTagSinglePayload for NetworkRequestError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkRequestError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26CD13EA4()
{
  result = qword_2804BDBD0;
  if (!qword_2804BDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBD0);
  }

  return result;
}

unint64_t sub_26CD13F44()
{
  result = qword_2804BDBD8;
  if (!qword_2804BDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBD8);
  }

  return result;
}

unint64_t sub_26CD13F9C()
{
  result = qword_2804BDBE0;
  if (!qword_2804BDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBE0);
  }

  return result;
}

uint64_t sub_26CD1403C()
{
  v1 = *(v0 + 16);
  if (!v1 || !*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_26CC181C4(1635017060, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_26CC168C0(*(v1 + 56) + 32 * v2, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v7 + 16) || (v4 = sub_26CC181C4(0xD000000000000010, 0x800000026CD51250), (v5 & 1) == 0))
  {
LABEL_10:

    return 0;
  }

  sub_26CC168C0(*(v7 + 56) + 32 * v4, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

TVAppServices::UTSConfigurationCachePolicy_optional __swiftcall UTSConfigurationCachePolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UTSConfigurationCachePolicy.rawValue.getter()
{
  v1 = 0xD000000000000013;
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
    return 0x616F4C6563726F66;
  }
}

uint64_t sub_26CD14220(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC08, &unk_26CD49838);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1B9A8();
  sub_26CD3B16C();
  v14 = 0;
  sub_26CD3AF2C();
  if (!v5)
  {
    v13 = 1;
    sub_26CD3AF2C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26CD143B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCA0, &qword_26CD49EE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1CDC8();
  sub_26CD3B16C();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC3F22C(&qword_280BB9BE0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_26CD3AF6C();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCA8, &qword_26CD49EE8);
    sub_26CD1CE1C(&qword_280BB9BE8, sub_26CD1CE94, MEMORY[0x277D83948]);
    sub_26CD3AF6C();
    v15 = a4;
    v14 = 2;
    sub_26CD3AF6C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26CD14608(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC88, &qword_26CD49C38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1CB34();
  sub_26CD3B16C();
  v8[15] = 0;
  sub_26CD3AF3C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26CD3AF2C();
  v8[13] = 2;
  sub_26CD3AF2C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26CD147A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC40, &qword_26CD49C10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1BE6C();
  sub_26CD3B16C();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = 0;
  sub_26CD1BEC0();
  v13 = v17;
  sub_26CD3AF6C();
  if (!v13)
  {
    v18 = v16;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC48, &qword_26CD49C18);
    sub_26CD1BF14();
    sub_26CD3AF6C();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26CD14960(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x800000026CD4D100;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = 0x800000026CD4D100;
  }

  else
  {
    v6 = 0x800000026CD4D120;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616F4C6563726F66;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000016;
    v4 = 0x800000026CD4D120;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x616F4C6563726F66;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

unint64_t sub_26CD14A44()
{
  result = qword_2804BDBF0;
  if (!qword_2804BDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBF0);
  }

  return result;
}

uint64_t sub_26CD14A98()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CD14B44(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CD14BDC(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CD14C90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xD000000000000013;
  v5 = 0x800000026CD4D100;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x800000026CD4D120;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x616F4C6563726F66;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26CD14D6C()
{
  if (*v0)
  {
    return 0x6F666E49627573;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

void sub_26CD14DA8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_26CD3AFDC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F666E49627573 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_26CD14E84(uint64_t a1)
{
  v2 = sub_26CD1B9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD14EC0(uint64_t a1)
{
  v2 = sub_26CD1B9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CD14EFC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CD1B7C4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_26CD14F64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CD1C024(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CD14F8C(uint64_t a1)
{
  v2 = sub_26CD1CDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD14FC8(uint64_t a1)
{
  v2 = sub_26CD1CDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CD15004@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CD1C12C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_26CD15054()
{
  v1 = 0x6E69616D6F64;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_26CD150A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CD1C40C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CD150CC(uint64_t a1)
{
  v2 = sub_26CD1CB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD15108(uint64_t a1)
{
  v2 = sub_26CD1CB34();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CD15144@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26CD1C520(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_26CD151A4()
{
  sub_26CD3B0FC();
  sub_26CD3B11C();
  sub_26CD3A54C();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CD15224(uint64_t a1)
{
  sub_26CD3B11C();
  sub_26CD3A54C();

  return sub_26CD3A54C();
}

uint64_t sub_26CD15294(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3B11C();
  sub_26CD3A54C();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CD15310(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_26CD3AFDC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_26CD3AFDC();
}

uint64_t sub_26CD153C4()
{
  if (*v0)
  {
    return 0x4665727574616566;
  }

  else
  {
    return 0x6D656C7469746E65;
  }
}

void sub_26CD15414(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D656C7469746E65 && a2 == 0xEF6F666E49746E65;
  if (v6 || (sub_26CD3AFDC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4665727574616566 && a2 == 0xEC0000007367616CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_26CD154FC(uint64_t a1)
{
  v2 = sub_26CD1BE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD15538(uint64_t a1)
{
  v2 = sub_26CD1BE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CD15574@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CD1C738(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

char *sub_26CD155C4()
{
  type metadata accessor for UTSConfigurationManager(0);
  swift_allocObject();
  result = sub_26CD19B60();
  qword_280BBCC18 = result;
  return result;
}

uint64_t sub_26CD15604(_BYTE *a1, double a2)
{
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 209) = *a1;

  return MEMORY[0x2822009F8](sub_26CD156E4, v2, 0);
}

uint64_t sub_26CD156E4()
{
  v46 = v0;
  v45 = *MEMORY[0x277D85DE8];
  if (!*(v0 + 209))
  {

    goto LABEL_10;
  }

  v1 = sub_26CD3AFDC();

  if (v1)
  {
LABEL_10:
    v20 = *(*(v0 + 48) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v21 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD3C1E0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_26CC19E10();
    *(v22 + 32) = 0xD000000000000017;
    *(v22 + 40) = 0x800000026CD52B70;
    sub_26CD3A3DC(v21, &dword_26CC14000, v20, "%@", 2, 2, v22);

    sub_26CD18348(1);
LABEL_19:
    v27 = *(v0 + 48);
    v28 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
    *(v0 + 152) = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
    v29 = *(v27 + v28);
    *(v0 + 160) = v29;
    if (v29)
    {

      v30 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_26CD3C1E0;
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = sub_26CC19E10();
      *(v31 + 32) = 0xD000000000000027;
      *(v31 + 40) = 0x800000026CD52A40;
      sub_26CD3A3DC(v30, &dword_26CC14000, v20, "%@", 2, 2, v31);

      v32 = swift_task_alloc();
      *(v0 + 168) = v32;
      v33 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      *v32 = v0;
      v32[1] = sub_26CD16CB4;
      v35 = v34;
      v36 = MEMORY[0x277D84950];
      v37 = v0 + 24;
    }

    else
    {
      v38 = *(v0 + 56);
      v39 = sub_26CD3A86C();
      (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
      v40 = sub_26CD1B9FC();
      v41 = swift_allocObject();
      v41[2] = v27;
      v41[3] = v40;
      v41[4] = v27;
      swift_retain_n();
      v29 = sub_26CD27B78(0, 0, v38, &unk_26CD49858, v41);
      *(v0 + 184) = v29;
      *(v27 + v28) = v29;

      v42 = swift_task_alloc();
      *(v0 + 192) = v42;
      v33 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      *v42 = v0;
      v42[1] = sub_26CD16EC4;
      v35 = v43;
      v36 = MEMORY[0x277D84950];
      v37 = v0 + 16;
    }

    return MEMORY[0x282200430](v37, v29, v33, v35, v36);
  }

  v2 = *(v0 + 48);
  if (*(v2 + 176))
  {
    v3 = *(v2 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    *(v0 + 64) = v3;

    v4 = sub_26CD3A99C();
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = MEMORY[0x277D837D0];
    v6 = sub_26CC19E10();
    *(v0 + 80) = v6;
    *(v5 + 64) = v6;
    *(v5 + 32) = 0xD000000000000031;
    *(v5 + 40) = 0x800000026CD52B00;
    sub_26CD3A3DC(v4, &dword_26CC14000, v3, "%@", 2, 2, v5);

    v7 = objc_opt_self();
    v8 = sub_26CD3A4DC();

    *(v0 + 32) = 0;
    v9 = [v7 dataWithJSONObject:v8 options:0 error:v0 + 32];

    v10 = *(v0 + 32);
    if (v9)
    {
      v11 = *(v0 + 209);
      v12 = *(v0 + 40);
      v13 = sub_26CD3A0BC();
      v15 = v14;

      *(v0 + 88) = v13;
      *(v0 + 96) = v15;
      v44[0] = v11;

      v17 = sub_26CD1734C(v16, v44, v12);

      if (v17)
      {
        v18 = swift_task_alloc();
        *(v0 + 104) = v18;
        *v18 = v0;
        v18[1] = sub_26CD15ECC;

        return sub_26CD17C30(v13, v15);
      }

      sub_26CD18348(1);
      sub_26CC18C50(*(v0 + 88), *(v0 + 96));
      v20 = *(v0 + 64);
      goto LABEL_19;
    }

    v26 = v10;
    sub_26CD39F8C();

    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    *(v0 + 208) = *(v0 + 209);
    v24 = swift_task_alloc();
    *(v0 + 128) = v24;
    *v24 = v0;
    v24[1] = sub_26CD16500;
    v25 = *(v0 + 40);

    return sub_26CD184DC((v0 + 208), v25);
  }
}

uint64_t sub_26CD15ECC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_26CD170D8;
  }

  else
  {
    v6 = sub_26CD1602C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD1602C(uint64_t a1, double a2)
{
  v3 = v2[14];
  if (v3)
  {
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];
    v7 = v2[8];
    v8 = sub_26CD3A99C();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = v6;
    *(v9 + 32) = 0xD00000000000002BLL;
    *(v9 + 40) = 0x800000026CD52B40;
    sub_26CD3A3DC(v8, &dword_26CC14000, v7, "%@", 2, 2, v9);

    sub_26CC18C50(v5, v4);

    v10 = v2[1];

    return v10(v3);
  }

  else
  {
    v12 = v2[15];
    sub_26CD18348(1);
    sub_26CC18C50(v2[11], v2[12]);
    if (v12)
    {

      v13 = v2[1];

      return v13();
    }

    else
    {
      v14 = v2[8];
      v15 = v2[6];
      v16 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
      v2[19] = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
      v17 = *(v15 + v16);
      v2[20] = v17;
      if (v17)
      {

        v18 = sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_26CD3C1E0;
        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_26CC19E10();
        *(v19 + 32) = 0xD000000000000027;
        *(v19 + 40) = 0x800000026CD52A40;
        sub_26CD3A3DC(v18, &dword_26CC14000, v14, "%@", 2, 2, v19);

        v20 = swift_task_alloc();
        v2[21] = v20;
        v21 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
        *v20 = v2;
        v20[1] = sub_26CD16CB4;
        v23 = v22;
        v24 = MEMORY[0x277D84950];
        v25 = v2 + 3;
      }

      else
      {
        v26 = v2[7];
        v27 = sub_26CD3A86C();
        (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
        v28 = sub_26CD1B9FC();
        v29 = swift_allocObject();
        v29[2] = v15;
        v29[3] = v28;
        v29[4] = v15;
        swift_retain_n();
        v17 = sub_26CD27B78(0, 0, v26, &unk_26CD49858, v29);
        v2[23] = v17;
        *(v15 + v16) = v17;

        v30 = swift_task_alloc();
        v2[24] = v30;
        v21 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
        *v30 = v2;
        v30[1] = sub_26CD16EC4;
        v23 = v31;
        v24 = MEMORY[0x277D84950];
        v25 = v2 + 2;
      }

      return MEMORY[0x282200430](v25, v17, v21, v23, v24);
    }
  }
}

uint64_t sub_26CD16500(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  v4 = v3[6];
  if (v1)
  {
    v5 = sub_26CD17170;
  }

  else
  {
    v5 = sub_26CD1664C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26CD1664C(uint64_t a1)
{
  v40 = v1;
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 136);
  v3 = MEMORY[0x277D837D0];
  if (v2)
  {
    v37 = *(v1 + 209);
    v4 = *(v1 + 40);
    v5 = *(*(v1 + 48) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v6 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    *(v7 + 56) = v3;
    v8 = sub_26CC19E10();
    *(v7 + 64) = v8;
    *(v7 + 32) = 0xD00000000000002FLL;
    *(v7 + 40) = 0x800000026CD52A70;
    sub_26CD3A3DC(v6, &dword_26CC14000, v5, "%@", 2, 2, v7);

    v9 = sub_26CD3A99C();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = v8;
    *(v10 + 32) = 0xD000000000000020;
    *(v10 + 40) = 0x800000026CD52AA0;
    sub_26CD3A3DC(v9, &dword_26CC14000, v5, "%@", 2, 2, v10);

    sub_26CD18D0C(v2);
    v38 = v37;

    v12 = sub_26CD1734C(v11, &v38, v4);

    if (v12)
    {
      v13 = sub_26CD3A99C();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_26CD3C1E0;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = v8;
      *(v14 + 32) = 0xD000000000000029;
      *(v14 + 40) = 0x800000026CD52AD0;
      sub_26CD3A3DC(v13, &dword_26CC14000, v5, "%@", 2, 2, v14);

      v15 = *(v1 + 8);

      return v15(v2);
    }

    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = *(*(v1 + 48) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v17 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    v19 = v3;
    *(v18 + 56) = v3;
    *(v18 + 64) = sub_26CC19E10();
    *(v18 + 32) = 0xD00000000000002FLL;
    *(v18 + 40) = 0x800000026CD52A10;
    sub_26CD3A3DC(v17, &dword_26CC14000, v5, "%@", 2, 2, v18);
  }

  v20 = *(v1 + 48);
  v21 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
  *(v1 + 152) = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
  v22 = *(v20 + v21);
  *(v1 + 160) = v22;
  if (v22)
  {

    v23 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26CD3C1E0;
    *(v24 + 56) = v19;
    *(v24 + 64) = sub_26CC19E10();
    *(v24 + 32) = 0xD000000000000027;
    *(v24 + 40) = 0x800000026CD52A40;
    sub_26CD3A3DC(v23, &dword_26CC14000, v5, "%@", 2, 2, v24);

    v25 = swift_task_alloc();
    *(v1 + 168) = v25;
    v26 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    *v25 = v1;
    v25[1] = sub_26CD16CB4;
    v28 = v27;
    v29 = MEMORY[0x277D84950];
    v30 = v1 + 24;
  }

  else
  {
    v31 = *(v1 + 56);
    v32 = sub_26CD3A86C();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v33 = sub_26CD1B9FC();
    v34 = swift_allocObject();
    v34[2] = v20;
    v34[3] = v33;
    v34[4] = v20;
    swift_retain_n();
    v22 = sub_26CD27B78(0, 0, v31, &unk_26CD49858, v34);
    *(v1 + 184) = v22;
    *(v20 + v21) = v22;

    v35 = swift_task_alloc();
    *(v1 + 192) = v35;
    v26 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    *v35 = v1;
    v35[1] = sub_26CD16EC4;
    v28 = v36;
    v29 = MEMORY[0x277D84950];
    v30 = v1 + 16;
  }

  return MEMORY[0x282200430](v30, v22, v26, v28, v29);
}

uint64_t sub_26CD16CB4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_26CD17200;
  }

  else
  {
    v4 = sub_26CD16E0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD16E0C()
{
  v1 = v0[19];
  v2 = v0[6];

  v3 = v0[3];
  *(v2 + v1) = 0;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_26CD16EC4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_26CD17298;
  }

  else
  {
    v4 = sub_26CD1701C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD1701C()
{
  v1 = v0[19];
  v2 = v0[6];

  v3 = v0[2];
  *(v2 + v1) = 0;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_26CD170D8()
{
  sub_26CC18C50(v0[11], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CD17170()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD17200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD17298()
{
  v1 = v0[19];
  v2 = v0[6];

  *(v2 + v1) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_26CD1734C(uint64_t a1, unsigned __int8 *a2, double a3)
{
  v7 = sub_26CD3A26C();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26CD39EFC();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_26CD3A1EC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v20 = *a2;
  v21 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
  swift_beginAccess();
  sub_26CC1B4DC(v3 + v21, v13, &qword_2804BCA90, &qword_26CD3C200);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26CC1B544(v13, &qword_2804BCA90, &qword_26CD3C200);
    v22 = *(v3 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v23 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26CD3C1E0;
    *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v24 + 64) = sub_26CC2E6E8();
    *(v24 + 32) = &unk_287DF9730;
    sub_26CD3A3DC(v23, &dword_26CC14000, v22, "%@", 2, 2, v24);

    return 0;
  }

  (*(v15 + 32))(v19, v13, v14);
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v25 = v3;
  v26 = sub_26CC181C4(1635017060, 0xE400000000000000);
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_26CC168C0(*(a1 + 56) + 32 * v26, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v28 = v61;
  if (!*(*&v61 + 16))
  {
    goto LABEL_16;
  }

  v29 = sub_26CC181C4(0x706F72506B737475, 0xE900000000000073);
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_26CC168C0(*(*&v28 + 56) + 32 * v29, v62);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v35 = *(v3 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    *(v37 + 32) = &unk_287DF9700;
    sub_26CD3A3DC(v36, &dword_26CC14000, v35, "%@", 2, 2, v37);

    (*(v15 + 8))(v19, v14);
    return 0;
  }

  v31 = v61;
  if (!*(*&v61 + 16) || (v32 = sub_26CC181C4(0xD000000000000013, 0x800000026CD51230), (v33 & 1) == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_26CC168C0(*(*&v31 + 56) + 32 * v32, v62);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v34 = v61;
  if (v20 > 1)
  {

    goto LABEL_25;
  }

  v39 = sub_26CD3AFDC();

  if (v39)
  {
LABEL_25:
    (*(v15 + 8))(v19, v14);
    return 1;
  }

  sub_26CD3A1DC();
  v40 = v54;
  sub_26CD3A24C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC10, &qword_26CD49878);
  v41 = sub_26CD3A25C();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  v53 = xmmword_26CD3C1E0;
  *(v44 + 16) = xmmword_26CD3C1E0;
  (*(v42 + 104))(v44 + v43, *MEMORY[0x277CC9980], v41);
  sub_26CC789D4(v44);
  swift_setDeallocating();
  (*(v42 + 8))(v44 + v43, v41);
  swift_deallocClassInstance();
  v45 = v57;
  sub_26CD3A23C();

  (*(v55 + 8))(v40, v56);
  v46 = sub_26CD39EEC();
  if ((v47 & 1) != 0 || v34 / 3600.0 + a3 <= v46)
  {
    v49 = *(v25 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v50 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v51 = swift_allocObject();
    *(v51 + 16) = v53;
    *(v51 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v51 + 64) = sub_26CC2E6E8();
    *(v51 + 32) = &unk_287DF96D0;
    sub_26CD3A3DC(v50, &dword_26CC14000, v49, "%@", 2, 2, v51);

    (*(v58 + 8))(v45, v59);
    v52 = *(v15 + 8);
    v52(v60, v14);
    v52(v19, v14);
    return 0;
  }

  (*(v58 + 8))(v45, v59);
  v48 = *(v15 + 8);
  v48(v60, v14);
  v48(v19, v14);
  return 1;
}

uint64_t sub_26CD17C30(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3[7] = swift_task_alloc();
  v4 = sub_26CD39D0C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_26CD3A07C();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD17D88, v2, 0);
}

uint64_t sub_26CD17D88()
{
  v0[14] = [objc_opt_self() sharedSession];
  type metadata accessor for UTSURLRequestFactory();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26CD17E88;
  v2 = v0[10];

  return sub_26CC67CEC(v2, 0x72756769666E6F63, 0xEE00736E6F697461, 0x2F33762F7374752FLL, 0xE800000000000000, 0, 0);
}

uint64_t sub_26CD17E88()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_26CD182BC;
  }

  else
  {
    v4 = sub_26CD17FB4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD17FB4(uint64_t a1)
{
  v2 = v1;
  v3 = v1[12];
  v5 = v2[10];
  v4 = v2[11];
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[7];
  sub_26CD39C9C();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v8, 1, v4) == 1)
  {
    v9 = v2[14];
    v10 = v2[6];
    sub_26CC1B544(v2[7], &qword_2804BCA30, &qword_26CD3DA70);
    v11 = *(v10 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v12 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    *(v13 + 32) = &unk_287DF9760;
    sub_26CD3A3DC(v12, &dword_26CC14000, v11, "%@", 2, 2, v13);

    v14 = 0;
  }

  else
  {
    v15 = v2[13];
    v16 = v2[14];
    v17 = v2[12];
    v30 = v2[11];
    v18 = v2[4];
    v19 = v2[5];
    (*(v17 + 32))(v15, v2[7]);
    v20 = sub_26CD39FCC();
    v21 = [v16 dataTaskWithURL_];

    v22 = objc_allocWithZone(MEMORY[0x277CCAA40]);
    v23 = sub_26CD39FCC();
    v24 = [v22 initWithURL:v23 statusCode:200 HTTPVersion:0 headerFields:0];

    v25 = objc_allocWithZone(MEMORY[0x277CEE6E8]);
    v26 = v24;
    v27 = sub_26CD3A09C();
    v2[2] = v18;
    v2[3] = v19;
    sub_26CCAE954(v18, v19);
    v14 = [v25 initWithTask:v21 response:v26 data:v27 object:sub_26CD3B00C()];

    swift_unknownObjectRelease();
    (*(v17 + 8))(v15, v30);
  }

  v28 = v2[1];

  return v28(v14);
}

uint64_t sub_26CD182BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26CD18348(char a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6 + 16;
  if ((a1 & 1) == 0 || (sub_26CC6F2D0(), !v2))
  {
    memset(v11, 0, sizeof(v11));
    swift_beginAccess();
    sub_26CC86CE0(v11, v3 + 128, &qword_2804BDA30, qword_26CD482E0);
    swift_endAccess();
    *(v3 + 176) = sub_26CC194BC(MEMORY[0x277D84F90]);

    v8 = sub_26CD3A1EC();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
    swift_beginAccess();
    sub_26CC86CE0(v7, v3 + v9, &qword_2804BCA90, &qword_26CD3C200);
    swift_endAccess();
    *(v3 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask) = 0;
  }
}

uint64_t sub_26CD184DC(_BYTE *a1, double a2)
{
  *(v3 + 120) = v2;
  *(v3 + 112) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 192) = *a1;

  return MEMORY[0x2822009F8](sub_26CD1859C, v2, 0);
}

uint64_t sub_26CD1859C()
{
  v32 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = sub_26CC6EA9C();
  v5 = v4;
  *(v0 + 144) = v3;
  *(v0 + 152) = v4;
  sub_26CC6F714(v1);
  v6 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
  swift_beginAccess();
  sub_26CC86CE0(v1, v2 + v6, &qword_2804BCA90, &qword_26CD3C200);
  swift_endAccess();
  if (v5 >> 60 == 15)
  {
    goto LABEL_6;
  }

  sub_26CCAE954(v3, v5);
  v7 = Data.asDictionary()();
  if (!v7)
  {
    sub_26CC1D1B8(v3, v5);
    goto LABEL_6;
  }

  v8 = v7;
  v9 = *(v0 + 128);
  sub_26CC1B4DC(v2 + v6, v9, &qword_2804BCA90, &qword_26CD3C200);
  v10 = sub_26CD3A1EC();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v12 = *(v0 + 128);
  if (v11 == 1)
  {
    sub_26CC1D1B8(v3, v5);

    sub_26CC1B544(v12, &qword_2804BCA90, &qword_26CD3C200);
LABEL_6:
    v13 = *(*(v0 + 120) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v14 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = &unk_287DF98E0;
    sub_26CD3A3DC(v14, &dword_26CC14000, v13, "%@", 2, 2, v15);

LABEL_7:
    sub_26CC1D1B8(*(v0 + 144), *(v0 + 152));

    v16 = *(v0 + 8);

    return v16(0);
  }

  sub_26CC1B544(*(v0 + 128), &qword_2804BCA90, &qword_26CD3C200);
  v18 = Data.asDictionary()();
  if (!v18)
  {
    v25 = *(v0 + 120);

    v26 = *(v25 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v27 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_26CD3C1E0;
    *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 64) = sub_26CC2E6E8();
    v29 = &unk_287DF98B0;
LABEL_17:
    *(v28 + 32) = v29;
    sub_26CD3A3DC(v27, &dword_26CC14000, v26, "%@", 2, 2, v28);

    sub_26CC1D1B8(v3, v5);
    goto LABEL_7;
  }

  v19 = v18;
  v20 = *(v0 + 112);
  LOBYTE(v31[0]) = *(v0 + 192);
  if ((sub_26CD1734C(v18, v31, v20) & 1) == 0)
  {
    v30 = *(v0 + 120);

    v26 = *(v30 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v27 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_26CD3C1E0;
    *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 64) = sub_26CC2E6E8();
    v29 = &unk_287DF9880;
    goto LABEL_17;
  }

  v21 = *(v0 + 120);
  *(v21 + 176) = v8;

  v22 = type metadata accessor for UTSConfigurationResponse();
  v23 = swift_allocObject();
  *(v0 + 160) = v23;
  *(v23 + 16) = v19;
  v31[3] = v22;
  v31[4] = &off_287E05310;
  v31[0] = v23;

  sub_26CD232E4(v31, (v0 + 16));
  swift_beginAccess();
  sub_26CC86CE0(v0 + 16, v21 + 128, &qword_2804BDA30, qword_26CD482E0);
  swift_endAccess();
  v24 = swift_task_alloc();
  *(v0 + 168) = v24;
  *v24 = v0;
  v24[1] = sub_26CD18A94;

  return sub_26CD17C30(v3, v5);
}

uint64_t sub_26CD18A94(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[15];
  if (v1)
  {
    v6 = sub_26CD18C70;
  }

  else
  {
    v4[23] = a1;
    v6 = sub_26CD18BD0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD18BD0()
{
  v1 = v0[19];
  v2 = v0[18];

  sub_26CC1D1B8(v2, v1);
  v3 = v0[23];
  sub_26CC1D1B8(v0[18], v0[19]);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_26CD18C70()
{
  v1 = v0[19];
  v2 = v0[18];

  sub_26CC1D1B8(v2, v1);
  sub_26CC1D1B8(v2, v1);

  v3 = v0[1];

  return v3();
}

void sub_26CD18D0C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - v5;
  v7 = [a1 data];
  v8 = sub_26CD3A0BC();
  v10 = v9;

  v11 = Data.asDictionary()();
  sub_26CC18C50(v8, v10);

  v79 = sub_26CD1B244(v12);
  v80 = v13;

  if (*(v2 + 176))
  {
    v14 = *(v2 + 176);
  }

  else
  {
    v14 = sub_26CC194BC(MEMORY[0x277D84F90]);
  }

  sub_26CCC7DC0(v14);

  v15 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v16 = sub_26CD3A4DC();

  v17 = [v15 initWithDictionary_];

  if (v11)
  {
    v18 = v11;
    v19 = v11;
  }

  else
  {
    v19 = sub_26CC194BC(MEMORY[0x277D84F90]);
    v18 = 0;
  }

  sub_26CCC7DC0(v19);

  v20 = sub_26CD3A4DC();

  v21 = [v17 isEqualToDictionary_];

  v22 = *(v2 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
  v23 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v24 = swift_allocObject();
  v82 = xmmword_26CD3C1E0;
  *(v24 + 16) = xmmword_26CD3C1E0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  v81 = sub_26CC19E10();
  *(v24 + 64) = v81;
  v25 = "Force config specified.";
  if (v21)
  {
    v25 = "new utsk notification:";
  }

  v26 = 0xD00000000000001BLL;
  if (!v21)
  {
    v26 = 0xD000000000000017;
  }

  *(v24 + 32) = v26;
  *(v24 + 40) = v25 | 0x8000000000000000;
  sub_26CD3A3DC(v23, &dword_26CC14000, v22, "%@", 2, 2, v24);

  *(v2 + 176) = v11;

  v27 = type metadata accessor for UTSConfigurationResponse();
  v28 = swift_allocObject();
  *(v28 + 16) = v11;
  v83[3] = v27;
  v83[4] = &off_287E05310;
  v83[0] = v28;

  sub_26CD232E4(v83, v84);
  swift_beginAccess();
  sub_26CC86CE0(v84, v2 + 128, &qword_2804BDA30, qword_26CD482E0);
  swift_endAccess();
  v29 = sub_26CD1403C();
  if (v29)
  {
    v30 = sub_26CCC7710(21, v29);
  }

  else
  {
    v30 = 0;
  }

  qword_2804BDBE8 = v30;

  sub_26CD3A1DC();
  v31 = sub_26CD3A1EC();
  (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
  v32 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
  swift_beginAccess();
  sub_26CC86CE0(v6, v2 + v32, &qword_2804BCA90, &qword_26CD3C200);
  swift_endAccess();
  v33 = [a1 data];
  v34 = sub_26CD3A0BC();
  v36 = v35;

  sub_26CC6EE84(v34, v36);
  sub_26CC18C50(v34, v36);
  v37 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v38 = swift_allocObject();
  *(v38 + 16) = v82;
  v39 = v81;
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = v39;
  *(v38 + 32) = 0xD000000000000016;
  *(v38 + 40) = 0x800000026CD52BB0;
  sub_26CD3A3DC(v37, &dword_26CC14000, v22, "%@", 2, 2, v38);

  if (!v11)
  {
    goto LABEL_30;
  }

  if (!*(v18 + 16) || (v40 = sub_26CC181C4(1635017060, 0xE400000000000000), (v41 & 1) == 0))
  {

    goto LABEL_30;
  }

  sub_26CC168C0(*(v18 + 56) + 32 * v40, v84);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (!swift_dynamicCast())
  {
LABEL_30:

    goto LABEL_31;
  }

  v42 = v83[0];
  v43 = v80;
  if ((v21 & 1) == 0)
  {
    v44 = v83[0];
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v45 = qword_280BBCBE0;
    v46 = sub_26CD3A99C();
    v47 = swift_allocObject();
    *(v47 + 16) = v82;
    v48 = v81;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = v48;
    *(v47 + 32) = 0xD00000000000002BLL;
    *(v47 + 40) = 0x800000026CD52BD0;
    sub_26CD3A3DC(v46, &dword_26CC14000, v45, "%@", 2, 2, v47);

    v49 = [objc_opt_self() defaultCenter];
    if (qword_280BB9BC0 != -1)
    {
      swift_once();
    }

    v50 = qword_280BB9BC8;
    v42 = v44;
    v51 = sub_26CD3A4DC();
    [v49 postNotificationName:v50 object:v51];
  }

  v53 = sub_26CD1B244(v52);
  v55 = v54;

  if (!v43)
  {
    if (v55)
    {

      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (v55)
  {
    if (v79 == v53 && v43 == v55)
    {

LABEL_31:

      return;
    }

    v56 = sub_26CD3AFDC();

    if (v56)
    {

      goto LABEL_31;
    }
  }

LABEL_36:
  v78 = v42;
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v57 = qword_280BBCBE0;
  v58 = sub_26CD3A99C();
  v59 = swift_allocObject();
  *(v59 + 16) = v82;
  v60 = v81;
  *(v59 + 56) = MEMORY[0x277D837D0];
  *(v59 + 64) = v60;
  *(v59 + 32) = 0xD000000000000022;
  *(v59 + 40) = 0x800000026CD52C00;
  sub_26CD3A3DC(v58, &dword_26CC14000, v57, "%@", 2, 2, v59, v78);

  *&v84[0] = 0;
  *(&v84[0] + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v84[0] = 0xD00000000000001BLL;
  *(&v84[0] + 1) = 0x800000026CD52C30;
  if (v43)
  {
    v61 = v79;
  }

  else
  {
    v61 = 0;
  }

  if (v43)
  {
    v62 = v43;
  }

  else
  {
    v62 = 0xE000000000000000;
  }

  MEMORY[0x26D6AD060](v61, v62);

  v63 = v84[0];
  v64 = sub_26CD3A99C();
  v65 = swift_allocObject();
  *(v65 + 16) = v82;
  *(v65 + 56) = MEMORY[0x277D837D0];
  *(v65 + 64) = v60;
  *(v65 + 32) = v63;
  sub_26CD3A3DC(v64, &dword_26CC14000, v57, "%@", 2, 2, v65);

  *&v84[0] = 0;
  *(&v84[0] + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v84[0] = 0xD000000000000016;
  *(&v84[0] + 1) = 0x800000026CD52C50;

  v67 = sub_26CD1B244(v66);
  v69 = v68;

  if (v69)
  {
    v70 = v67;
  }

  else
  {
    v70 = 0;
  }

  if (v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0xE000000000000000;
  }

  MEMORY[0x26D6AD060](v70, v71);

  v72 = v84[0];
  v73 = sub_26CD3A99C();
  v74 = swift_allocObject();
  *(v74 + 16) = v82;
  *(v74 + 56) = MEMORY[0x277D837D0];
  *(v74 + 64) = v60;
  *(v74 + 32) = v72;
  sub_26CD3A3DC(v73, &dword_26CC14000, v57, "%@", 2, 2, v74);

  v75 = [objc_opt_self() defaultCenter];
  if (qword_2804BBAB8 != -1)
  {
    swift_once();
  }

  v76 = qword_2804BDDA8;
  v77 = sub_26CD3A4DC();

  [v75 postNotificationName:v76 object:v77];
}

uint64_t sub_26CD19808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_26CC1B4DC(v2 + 128, v14, &qword_2804BDA30, qword_26CD482E0);
  if (!v14[0])
  {
LABEL_6:
    sub_26CC1B544(v14, &qword_2804BDA30, qword_26CD482E0);
    return 0;
  }

  sub_26CD04534(v14, v12);
  sub_26CC1B544(v14, &qword_2804BDA30, qword_26CD482E0);
  sub_26CD22CB8(a1, a2, v15);
  sub_26CD04590(v12);
  if (v16)
  {
    v7 = v17;
    v6 = v18;

    sub_26CC1B544(v15, &qword_2804BDA38, qword_26CD48278);
    sub_26CC1B4DC(v3 + 128, v14, &qword_2804BDA30, qword_26CD482E0);
    if (v14[0])
    {
      sub_26CD04534(v14, v12);
      sub_26CC1B544(v14, &qword_2804BDA30, qword_26CD482E0);
      sub_26CC19A84(&v13, v11);
      sub_26CD04590(v12);
      v8 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v9 = sub_26CD277F0(v7, v6, *v8);

      __swift_destroy_boxed_opaque_existential_1(v11);
      return v9;
    }

    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_26CD199A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26CCF3448(&unk_287DF9B28);
  sub_26CD04454(&unk_287DF9B48);
  v16[0] = a1;
  v16[1] = a2;
  sub_26CC86D6C();
  sub_26CD3A92C();

  v6 = v17;
  v7 = v18;
  v9 = v19;
  v8 = v20;
  swift_beginAccess();
  sub_26CC1B4DC(v3 + 128, v16, &qword_2804BDA30, qword_26CD482E0);
  if (v16[0])
  {
    sub_26CD04534(v16, v15);
    sub_26CC1B544(v16, &qword_2804BDA30, qword_26CD482E0);
    v10 = MEMORY[0x26D6AD010](v6, v7, v9, v8);
    v12 = v11;

    sub_26CD22CB8(v10, v12, &v17);

    sub_26CD04590(v15);
    if (v18)
    {
      v13 = v17;

      sub_26CC1B544(&v17, &qword_2804BDA38, qword_26CD48278);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    sub_26CC1B544(v16, &qword_2804BDA30, qword_26CD482E0);
    return 0;
  }

  return v13;
}

char *sub_26CD19B60()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 176) = 0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 192) = 0x69666E6F43535455;
  *(v0 + 200) = 0xE900000000000067;
  v2 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
  v3 = sub_26CD3A1EC();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask] = 0;
  v4 = &v1[OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger];
  sub_26CC18080(0, &qword_280BBB710, 0x277D86200);
  *v4 = sub_26CD3AACC();
  *(v4 + 4) = 512;
  v6 = *(v1 + 24);
  v5 = *(v1 + 25);
  type metadata accessor for CacheStorage(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v1 + 23) = v7;

  return v1;
}

void *sub_26CD19D04()
{
  swift_unknownObjectRelease();
  sub_26CC1B544(v0 + 128, &qword_2804BDA30, qword_26CD482E0);

  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate, &qword_2804BCA90, &qword_26CD3C200);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_26CD19D9C()
{
  sub_26CD19D04();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for UTSConfigurationManager(uint64_t a1)
{
  result = qword_280BBA140;
  if (!qword_280BBA140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CD19E1C(uint64_t a1)
{
  sub_26CC16358(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26CD19F04()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for UTSNetworkRequest(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v2 = sub_26CD39D0C();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD1A05C, v0, 0);
}

uint64_t sub_26CD1A05C()
{
  v1 = qword_280BBA168;
  if (qword_280BBA168)
  {
    v2 = v0[13];
    v3 = v0[14];
    v5 = v0[10];
    v4 = v0[11];

    sub_26CD08B34(v4);
    v6 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest;
    swift_beginAccess();
    sub_26CC1B4DC(v1 + v6, v5, &qword_2804BC3F8, &qword_26CD45490);
    v7 = *(v3 + 48);
    v8 = v7(v5, 1, v2);
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    if (v8 == 1)
    {
      sub_26CC1B544(v0[10], &qword_2804BC3F8, &qword_26CD45490);
      sub_26CCFF758(v10, v9);

      sub_26CC1B544(v10, &qword_2804BC3F8, &qword_26CD45490);
    }

    else
    {
      sub_26CC1B544(v0[11], &qword_2804BC3F8, &qword_26CD45490);
      sub_26CC1B544(v11, &qword_2804BC3F8, &qword_26CD45490);
      sub_26CC1B4DC(v1 + v6, v9, &qword_2804BC3F8, &qword_26CD45490);
    }

    v15 = v0[12];
    v14 = v0[13];
    if (v7(v15, 1, v14) == 1)
    {
      sub_26CC1B544(v15, &qword_2804BC3F8, &qword_26CD45490);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v19 = v0[14];
      v18 = v0[15];
      v21 = v0[8];
      v20 = v0[9];
      v22 = v0[6];
      v29 = v0[7];
      (*(v19 + 32))(v18, v15, v14);
      (*(v19 + 16))(&v20[v22[7]], v18, v14);
      v23 = [objc_opt_self() standardUserDefaults];
      v24 = sub_26CD3A59C();
      v25 = [v23 integerForKey_];

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = 91;
      }

      sub_26CD3A1FC();
      v20[v22[6]] = 0;
      *&v20[v22[8]] = v26;
      *v20 = 0;
      sub_26CCC2438(v20, v21);
      type metadata accessor for AMSRequestHandler(0);
      v27 = swift_allocObject();
      sub_26CCC2438(v21, v29);
      v16 = sub_26CD32DB4(v29, v27);
      sub_26CCC249C(v21);
      (*(v19 + 8))(v18, v14);
      sub_26CCC249C(v20);
      v17 = &off_287E05C08;
    }

    v28 = v0[1];

    return v28(v16, v17);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_26CD1A460;

    return sub_26CD01860();
  }
}

uint64_t sub_26CD1A460(uint64_t a1)
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
    v8 = *(v4 + 40);
    *(v4 + 136) = a1;

    return MEMORY[0x2822009F8](sub_26CD1A600, v8, 0);
  }
}

uint64_t sub_26CD1A600()
{
  qword_280BBA168 = v0[17];

  v1 = qword_280BBA168;
  if (qword_280BBA168)
  {
    v2 = v0[13];
    v3 = v0[14];
    v5 = v0[10];
    v4 = v0[11];

    sub_26CD08B34(v4);
    v6 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest;
    swift_beginAccess();
    sub_26CC1B4DC(v1 + v6, v5, &qword_2804BC3F8, &qword_26CD45490);
    v7 = *(v3 + 48);
    v8 = v7(v5, 1, v2);
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    if (v8 == 1)
    {
      sub_26CC1B544(v0[10], &qword_2804BC3F8, &qword_26CD45490);
      sub_26CCFF758(v10, v9);

      sub_26CC1B544(v10, &qword_2804BC3F8, &qword_26CD45490);
    }

    else
    {
      sub_26CC1B544(v0[11], &qword_2804BC3F8, &qword_26CD45490);
      sub_26CC1B544(v11, &qword_2804BC3F8, &qword_26CD45490);
      sub_26CC1B4DC(v1 + v6, v9, &qword_2804BC3F8, &qword_26CD45490);
    }

    v12 = v0[12];
    v13 = v0[13];
    if (v7(v12, 1, v13) != 1)
    {
      v17 = v0[14];
      v16 = v0[15];
      v19 = v0[8];
      v18 = v0[9];
      v20 = v0[6];
      v28 = v0[7];
      (*(v17 + 32))(v16, v12, v13);
      (*(v17 + 16))(&v18[v20[7]], v16, v13);
      v21 = [objc_opt_self() standardUserDefaults];
      v22 = sub_26CD3A59C();
      v23 = [v21 integerForKey_];

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 91;
      }

      sub_26CD3A1FC();
      v18[v20[6]] = 0;
      *&v18[v20[8]] = v24;
      *v18 = 0;
      sub_26CCC2438(v18, v19);
      type metadata accessor for AMSRequestHandler(0);
      v25 = swift_allocObject();
      sub_26CCC2438(v19, v28);
      v14 = sub_26CD32DB4(v28, v25);
      sub_26CCC249C(v19);
      (*(v17 + 8))(v16, v13);
      sub_26CCC249C(v18);
      v15 = &off_287E05C08;
      goto LABEL_12;
    }
  }

  else
  {
    (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
    v12 = v0[12];
  }

  sub_26CC1B544(v12, &qword_2804BC3F8, &qword_26CD45490);
  v14 = 0;
  v15 = 0;
LABEL_12:

  v26 = v0[1];

  return v26(v14, v15);
}

uint64_t sub_26CD1A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_26CD1AA48;

  return sub_26CD19F04();
}

uint64_t sub_26CD1AA48(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[5] = a1;
  v4[6] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[3];

    return MEMORY[0x2822009F8](sub_26CD1AB90, v8, 0);
  }
}

uint64_t sub_26CD1AB90(uint64_t a1)
{
  v2 = v1[3];
  if (*(v2 + 112))
  {
    v3 = (v2 + 120);
    v4 = *(v2 + 112);
LABEL_5:
    v5 = *v3;
    v1[7] = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 40);
    swift_unknownObjectRetain();
    v15 = (v7 + *v7);
    v8 = swift_task_alloc();
    v1[8] = v8;
    *v8 = v1;
    v8[1] = sub_26CD1AE00;

    return v15(ObjectType, v5);
  }

  v4 = v1[5];
  if (v4)
  {
    v3 = v1 + 6;
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  v10 = *(v2 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
  v11 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v12 + 64) = sub_26CC2E6E8();
  *(v12 + 32) = &unk_287DFC850;
  sub_26CD3A3DC(v11, &dword_26CC14000, v10, "%@", 2, 2, v12);

  sub_26CD1BB08();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();
  v14 = v1[1];

  return v14();
}

uint64_t sub_26CD1AE00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_26CD1B1D4;
  }

  else
  {
    v6 = sub_26CD1AF34;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD1AF34()
{
  v1 = [*(v0 + 72) data];
  v2 = sub_26CD3A0BC();
  v4 = v3;

  v5 = Data.asDictionary()();
  sub_26CC18C50(v2, v4);
  if (v5)
  {
    v6 = *(v0 + 72);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);

    v9 = *(v7 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v10 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_26CC19E10();
    *(v11 + 32) = 0xD00000000000001DLL;
    *(v11 + 40) = 0x800000026CD52C90;
    sub_26CD3A3DC(v10, &dword_26CC14000, v9, "%@", 2, 2, v11);

    sub_26CD18D0C(v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *v8 = v6;
  }

  else
  {
    v13 = *(v0 + 72);
    v14 = *(*(v0 + 24) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    v15 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v16 + 64) = sub_26CC2E6E8();
    *(v16 + 32) = &unk_287DFC880;
    sub_26CD3A3DC(v15, &dword_26CC14000, v14, "%@", 2, 2, v16);

    sub_26CD1BB08();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26CD1B1D4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD1B244(uint64_t a1)
{
  if (!a1 || !*(a1 + 16) || (v2 = sub_26CC181C4(1635017060, 0xE400000000000000), (v3 & 1) == 0) || (sub_26CC168C0(*(a1 + 56) + 32 * v2, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v13 = qword_280BBCC98;
    v14 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    v16 = &unk_287DF99D0;
    goto LABEL_21;
  }

  if (!*(v17 + 16) || (v4 = sub_26CC181C4(0xD000000000000010, 0x800000026CD51250), (v5 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_26CC168C0(*(v17 + 56) + 32 * v4, v18);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v13 = qword_280BBCC98;
    v14 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    v16 = &unk_287DF99A0;
    goto LABEL_21;
  }

  if (!*(v17 + 16) || (v6 = sub_26CC181C4(0xD000000000000011, 0x800000026CD51150), (v7 & 1) == 0))
  {

    goto LABEL_27;
  }

  sub_26CC168C0(*(v17 + 56) + 32 * v6, v18);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v13 = qword_280BBCC98;
    v14 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    v16 = &unk_287DF9970;
    goto LABEL_21;
  }

  if (!*(v17 + 16) || (v8 = sub_26CC181C4(0x746C7561666544, 0xE700000000000000), (v9 & 1) == 0))
  {

    goto LABEL_31;
  }

  sub_26CC168C0(*(v17 + 56) + 32 * v8, v18);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v13 = qword_280BBCC98;
    v14 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    v16 = &unk_287DF9940;
    goto LABEL_21;
  }

  if (*(v17 + 16) && (v10 = sub_26CC181C4(1802728565, 0xE400000000000000), (v11 & 1) != 0))
  {
    sub_26CC168C0(*(v17 + 56) + 32 * v10, v18);

    if (swift_dynamicCast())
    {
      return v17;
    }
  }

  else
  {
  }

  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v13 = qword_280BBCC98;
  v14 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26CD3C1E0;
  *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v15 + 64) = sub_26CC2E6E8();
  v16 = &unk_287DF9910;
LABEL_21:
  *(v15 + 32) = v16;
  sub_26CD3A3DC(v14, &dword_26CC14000, v13, "%@", 2, 2, v15);

  return 0;
}

uint64_t sub_26CD1B7C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBF8, &qword_26CD49830);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1B9A8();
  sub_26CD3B15C();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_26CD3AE3C();
    v10 = 1;
    sub_26CD3AE3C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_26CD1B9A8()
{
  result = qword_2804BDC00;
  if (!qword_2804BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC00);
  }

  return result;
}

unint64_t sub_26CD1B9FC()
{
  result = qword_280BBA150;
  if (!qword_280BBA150)
  {
    type metadata accessor for UTSConfigurationManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBA150);
  }

  return result;
}

uint64_t sub_26CD1BA54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC246B8;

  return sub_26CD1A9B4(a1, v4, v5, v6);
}

unint64_t sub_26CD1BB08()
{
  result = qword_2804BDC18;
  if (!qword_2804BDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC18);
  }

  return result;
}

uint64_t sub_26CD1BB5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26CD1BBA4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26CD1BBF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26CD1BC3C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26CD1BCB8()
{
  result = qword_2804BDC20;
  if (!qword_2804BDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC20);
  }

  return result;
}

unint64_t sub_26CD1BD10()
{
  result = qword_2804BDC28;
  if (!qword_2804BDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC28);
  }

  return result;
}

unint64_t sub_26CD1BD68()
{
  result = qword_280BBB0D0;
  if (!qword_280BBB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0D0);
  }

  return result;
}

unint64_t sub_26CD1BDC0()
{
  result = qword_2804BDC30;
  if (!qword_2804BDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC30);
  }

  return result;
}

unint64_t sub_26CD1BE18()
{
  result = qword_2804BDC38;
  if (!qword_2804BDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC38);
  }

  return result;
}

unint64_t sub_26CD1BE6C()
{
  result = qword_280BB9FA0;
  if (!qword_280BB9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9FA0);
  }

  return result;
}

unint64_t sub_26CD1BEC0()
{
  result = qword_280BBAD08;
  if (!qword_280BBAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBAD08);
  }

  return result;
}

unint64_t sub_26CD1BF14()
{
  result = qword_280BB9C00;
  if (!qword_280BB9C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDC48, &qword_26CD49C18);
    sub_26CD1CA68(&qword_280BB9BF0, sub_26CD1BFD0, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9C00);
  }

  return result;
}

unint64_t sub_26CD1BFD0()
{
  result = qword_280BBB0D8;
  if (!qword_280BBB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0D8);
  }

  return result;
}

uint64_t sub_26CD1C024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7364696269 && a2 == 0xE500000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364696273 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364696274 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CD1C12C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCB0, &qword_26CD49EF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1CDC8();
  sub_26CD3B15C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  v9 = 0;
  sub_26CC3F22C(&qword_2804BBE98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_26CD3AE7C();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCA8, &qword_26CD49EE8);
  v9 = 1;
  sub_26CD1CE1C(&qword_2804BDCB8, sub_26CD1CEE8, MEMORY[0x277D83978]);
  sub_26CD3AE7C();
  v9 = 2;
  sub_26CD3AE7C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_26CD1C40C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CD1C520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC80, &qword_26CD49C30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1CB34();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_26CD3AE4C();
  v21 = 1;
  v10 = sub_26CD3AE3C();
  v12 = v11;
  v19 = v10;
  v20 = 2;
  v13 = sub_26CD3AE3C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9 & 1;
  *(a2 + 8) = v19;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_26CD1C738(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC58, &qword_26CD49C28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1BE6C();
  sub_26CD3B15C();
  v9 = 0;
  sub_26CD1C958();
  sub_26CD3AE7C();
  v7 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC48, &qword_26CD49C18);
  v9 = 1;
  sub_26CD1C9AC();
  sub_26CD3AE7C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_26CD1C958()
{
  result = qword_2804BDC60;
  if (!qword_2804BDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC60);
  }

  return result;
}

unint64_t sub_26CD1C9AC()
{
  result = qword_2804BDC68;
  if (!qword_2804BDC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDC48, &qword_26CD49C18);
    sub_26CD1CA68(&qword_2804BDC70, sub_26CD1CAE0, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC68);
  }

  return result;
}

uint64_t sub_26CD1CA68(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDC50, &qword_26CD49C20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CD1CAE0()
{
  result = qword_2804BDC78;
  if (!qword_2804BDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC78);
  }

  return result;
}

unint64_t sub_26CD1CB34()
{
  result = qword_280BBB0F0;
  if (!qword_280BBB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0F0);
  }

  return result;
}

unint64_t sub_26CD1CBBC()
{
  result = qword_2804BDC90;
  if (!qword_2804BDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC90);
  }

  return result;
}

unint64_t sub_26CD1CC14()
{
  result = qword_2804BDC98;
  if (!qword_2804BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC98);
  }

  return result;
}

unint64_t sub_26CD1CC6C()
{
  result = qword_280BBB0E0;
  if (!qword_280BBB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0E0);
  }

  return result;
}

unint64_t sub_26CD1CCC4()
{
  result = qword_280BBB0E8;
  if (!qword_280BBB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0E8);
  }

  return result;
}

unint64_t sub_26CD1CD1C()
{
  result = qword_280BB9F90;
  if (!qword_280BB9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9F90);
  }

  return result;
}

unint64_t sub_26CD1CD74()
{
  result = qword_280BB9F98;
  if (!qword_280BB9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9F98);
  }

  return result;
}

unint64_t sub_26CD1CDC8()
{
  result = qword_280BBAD20;
  if (!qword_280BBAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBAD20);
  }

  return result;
}

uint64_t sub_26CD1CE1C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDCA8, &qword_26CD49EE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CD1CE94()
{
  result = qword_280BBACD0;
  if (!qword_280BBACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBACD0);
  }

  return result;
}

unint64_t sub_26CD1CEE8()
{
  result = qword_2804BDCC0;
  if (!qword_2804BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDCC0);
  }

  return result;
}

unint64_t sub_26CD1CF50()
{
  result = qword_2804BDCC8;
  if (!qword_2804BDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDCC8);
  }

  return result;
}

unint64_t sub_26CD1CFA8()
{
  result = qword_280BBAD10;
  if (!qword_280BBAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBAD10);
  }

  return result;
}

unint64_t sub_26CD1D000()
{
  result = qword_280BBAD18;
  if (!qword_280BBAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBAD18);
  }

  return result;
}

uint64_t OfferStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CD1D0E0()
{
  type metadata accessor for OfferStore();
  v0 = swift_allocObject();
  if (qword_2804BBAA8 != -1)
  {
    swift_once();
  }

  v2 = qword_2804BDCD8;
  v1 = unk_2804BDCE0;
  type metadata accessor for CacheStorage(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[5] = &type metadata for FileArchiverOfferStorageClient;
  v0[6] = &off_282025000;
  v0[2] = v3;
  v0[7] = &type metadata for BadgingStore;
  v0[8] = &off_287E030E8;
  v0[9] = MEMORY[0x277D84FA0];

  result = sub_26CD1D274();
  qword_2804BDCD0 = v0;
  return result;
}

uint64_t static OfferStore.shared.getter()
{
  if (qword_2804BBAA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD1D274()
{
  v0 = sub_26CD3AA3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCF8, &unk_26CD4A1B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = [objc_opt_self() defaultCenter];
  if (qword_2804BBA28 != -1)
  {
    swift_once();
  }

  sub_26CD3AA4C();

  sub_26CC36F24();
  sub_26CD3A47C();
  (*(v1 + 8))(v3, v0);
  swift_allocObject();
  swift_weakInit();
  sub_26CC1DD84(&qword_2804BDD00, &qword_2804BDCF8, &unk_26CD4A1B8, MEMORY[0x277CBCC90]);
  sub_26CD3A48C();

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  sub_26CD3A45C();
  swift_endAccess();
}

uint64_t sub_26CD1D54C()
{
  sub_26CC19A84(v0[7] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26CD1D610(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_26CD1D634, 0, 0);
}

uint64_t sub_26CD1D634()
{
  v1 = *(v0 + 64);
  sub_26CC19A84(v1 + 16, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  (*(v3 + 16))(v2, v3);
  v4 = *(v0 + 56);
  if (v4)
  {
    v5 = *(v0 + 72);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v5 == 1)
    {
      sub_26CC19A84(v1 + 16, v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      (*(v7 + 32))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v8 = qword_280BBCBE0;
    v9 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v10 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v10 + 32) = &unk_287DFC8B0;
    sub_26CD3A3DC(v9, &dword_26CC14000, v8, "%@", 2, 2, v10);

    v4 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 8);

  return v11(v4);
}

uint64_t sub_26CD1DA10(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_26CD1DA30, 0, 0);
}

uint64_t sub_26CD1DA30()
{
  v1 = v0[9];
  sub_26CC19A84(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 16))(v2, v3);
  if (v0[7])
  {
    v4 = v0[7];
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4[2];

  if (v5)
  {
    v25 = v1;
    v6 = v4[2];
    if (v6)
    {
      v7 = 0;
      v8 = v0[8];
      v27 = v8;
      v28 = v4[2];
      v26 = v0;
      while (1)
      {
        v9 = v4[2];
        if (v7 >= v9)
        {
          __break(1u);
          goto LABEL_25;
        }

        v1 = v4[v7 + 4];
        if (*(v8 + 16) == *(v1 + 16))
        {
          v10 = v0[8];

          sub_26CCC7DC0(v11);
          v12 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
          v3 = v4;
          v13 = sub_26CD3A4DC();

          v14 = [v12 initWithDictionary_];

          sub_26CCC7DC0(v10);
          v15 = sub_26CD3A4DC();

          LOBYTE(v10) = [v14 isEqualToDictionary_];

          v8 = v27;
          v6 = v28;
          v0 = v26;
          if (v10)
          {
            break;
          }
        }

        if (v6 == ++v7)
        {
          goto LABEL_14;
        }
      }

      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v16 = qword_280BBCBE0;
      v17 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26CD3C1E0;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_26CC19E10();
      *(v18 + 32) = 0xD00000000000003DLL;
      *(v18 + 40) = 0x800000026CD52CF0;
      sub_26CD3A3DC(v17, &dword_26CC14000, v16, "%@", 2, 2, v18);

      sub_26CD1F3D8();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
      v20 = v26[1];
      goto LABEL_21;
    }

LABEL_14:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26CCBF508(0, v4[2] + 1, 1, v4);
    }

    v1 = v25;
  }

  else
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26CCBF508(0, v4[2] + 1, 1, v4);
    }
  }

  v3 = v4[2];
  v9 = v4[3];
  v7 = v3 + 1;
  if (v3 >= v9 >> 1)
  {
LABEL_25:
    v4 = sub_26CCBF508((v9 > 1), v7, 1, v4);
  }

  v21 = v0[8];
  v4[2] = v7;
  v4[v3 + 4] = v21;
  sub_26CC19A84(v1 + 16, (v0 + 2));
  v22 = v0[5];
  v23 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v22);
  v0[7] = v4;
  (*(v23 + 24))(v0 + 7, v22, v23);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v20 = v0[1];
LABEL_21:

  return v20();
}

uint64_t sub_26CD1DE68(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26CD1DE8C, 0, 0);
}

uint64_t sub_26CD1DE8C()
{
  v1 = v0[11];
  sub_26CC19A84(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 16))(v2, v3);
  if (v0[7])
  {
    v4 = v0[7];
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_16:

    if (qword_280BB9C20 != -1)
    {
LABEL_27:
      swift_once();
    }

    v12 = v0[9];
    v11 = v0[10];
    v13 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0x1000000000000045, 0x800000026CD52D30);
    MEMORY[0x26D6AD060](v12, v11);
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    v15 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v16 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v16 + 32) = v14;
    sub_26CD3A3DC(v15, &dword_26CC14000, v13, "%@", 2, 2, v16);

    sub_26CD1F3D8();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    v18 = v0[1];
    goto LABEL_18;
  }

  v6 = 0;
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v7 = *(v4 + 8 * v6 + 32);
    if (!*(v7 + 16))
    {
      goto LABEL_7;
    }

    v8 = sub_26CC181C4(0x64496567646162, 0xE700000000000000);
    if ((v9 & 1) == 0)
    {

      goto LABEL_7;
    }

    sub_26CC168C0(*(v7 + 56) + 32 * v8, (v0 + 2));

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v0[7] == v0[9] && v0[8] == v0[10])
    {
      break;
    }

    v10 = sub_26CD3AFDC();

    if (v10)
    {
      goto LABEL_22;
    }

LABEL_7:
    if (v5 == ++v6)
    {
      goto LABEL_16;
    }
  }

LABEL_22:
  sub_26CCBE0DC(v6);

  if (*(v4 + 16))
  {
    sub_26CC19A84(v1 + 16, (v0 + 2));
    v20 = v0[5];
    v21 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v20);
    v0[7] = v4;
    (*(v21 + 24))(v0 + 7, v20, v21);
  }

  else
  {

    sub_26CC19A84(v1 + 16, (v0 + 2));
    v22 = v0[5];
    v23 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v22);
    (*(v23 + 32))(v22, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v18 = v0[1];
LABEL_18:

  return v18();
}

uint64_t OfferStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t OfferStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

BOOL sub_26CD1E34C()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (v1)
  {
  }

  return v1 == 0;
}

double sub_26CD1E3B8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_26CD3A86C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_26CCD5E38(0, 0, v4, &unk_26CD4A1D0, v8);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v10 = qword_280BBCBE0;
    v11 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26CD3C1E0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_26CC19E10();
    *(v12 + 32) = 0xD00000000000004FLL;
    *(v12 + 40) = 0x800000026CD52DD0;
    sub_26CD3A3DC(v11, &dword_26CC14000, v10, "%@", 2, 2, v12);
  }

  return result;
}

uint64_t sub_26CD1E5D4()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  v6 = (*(v2 + 8) + **(v2 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_26CD1E6EC;

  return v6(v3, v2);
}

uint64_t sub_26CD1E6EC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CD1E820, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CD1E820(uint64_t a1)
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 32);
  v3 = qword_280BBCBE0;
  v4 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
  *(v5 + 32) = &unk_287DFC8E0;
  sub_26CD3A3DC(v4, &dword_26CC14000, v3, "%@", 2, 2, v5);

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_26CD1E98C()
{
  result = sub_26CD1E9B0();
  qword_2804BDCD8 = result;
  unk_2804BDCE0 = v1;
  return result;
}

uint64_t sub_26CD1E9B0()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (v1)
  {
    v2 = [v1 ams_DSID];

    if (v2)
    {
      v3 = [v2 description];
      v4 = sub_26CD3A5CC();
      v6 = v5;

      MEMORY[0x26D6AD060](v4, v6);
    }
  }

  MEMORY[0x26D6AD060](0x702E73726566666FLL, 0xEC0000007473696CLL);
  return 0;
}

uint64_t sub_26CD1EABC()
{
  v0 = sub_26CC6EA9C();
  if (v1 >> 60 == 15)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v2 = qword_280BBCBE0;
    v3 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26CD3C1E0;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_26CC19E10();
    *(v4 + 32) = 0xD000000000000031;
    *(v4 + 40) = 0x800000026CD52E60;
    sub_26CD3A3DC(v3, &dword_26CC14000, v2, "%@", 2, 2, v4);

    return MEMORY[0x277D84F90];
  }

  else
  {
    v6 = v0;
    v7 = v1;
    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v9 = sub_26CD1FA8C(v6, v7);
    sub_26CD1F42C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD4A020;
    *(inited + 32) = sub_26CC18080(0, &unk_280BBB7A8, 0x277CBEAC0);
    *(inited + 40) = sub_26CC18080(0, &qword_280BBB758, 0x277CBEA60);
    *(inited + 48) = sub_26CC18080(0, &unk_280BBB748, 0x277CCACA8);
    *(inited + 56) = sub_26CC18080(0, &qword_280BB9BA0, 0x277CCABB0);
    *(inited + 64) = sub_26CC18080(0, &qword_2804BDD08, 0x277CBEAA8);
    sub_26CD1EFA8(inited);
    swift_setDeallocating();
    sub_26CD3A5CC();
    sub_26CD3AA7C();

    sub_26CC200FC(v17, v15);
    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA0, &unk_26CD3D4F0);
      if (swift_dynamicCast())
      {
        sub_26CC548D4(v17);

        sub_26CC1D1B8(v6, v7);
        return v14;
      }
    }

    else
    {
      sub_26CC548D4(v15);
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v11 = qword_280BBCBE0;
    v12 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v13 + 32) = &unk_287DFA660;
    sub_26CD3A3DC(v12, &dword_26CC14000, v11, "%@", 2, 2, v13);

    sub_26CC1D1B8(v6, v7);
    sub_26CC548D4(v17);
    return 0;
  }
}

uint64_t sub_26CD1EFA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_26CCEB25C(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD10, &qword_26CD4A238);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD18, &qword_26CD4A240);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26CCEB25C((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_26CD1F0D4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  v2 = sub_26CD3A79C();
  v15 = 0;
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v15];

  v4 = v15;
  if (v3)
  {
    v5 = sub_26CD3A0BC();
    v7 = v6;

    sub_26CC6EE84(v5, v7);
    sub_26CC18C50(v5, v7);
  }

  else
  {
    v8 = v4;
    v9 = sub_26CD39F8C();

    swift_willThrow();
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v10 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000036, 0x800000026CD52E20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v12 = v16;
    *(v11 + 32) = v15;
    *(v11 + 40) = v12;
    v13 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v14 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v14 + 32) = v11;
    sub_26CD3A3DC(v13, &dword_26CC14000, v10, "%@", 2, 2, v14);
  }
}

uint64_t sub_26CD1F3A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26CD1EABC();
  *a1 = result;
  return result;
}

unint64_t sub_26CD1F3D8()
{
  result = qword_2804BDCE8;
  if (!qword_2804BDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDCE8);
  }

  return result;
}

uint64_t sub_26CD1F42C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD10, &qword_26CD4A238);
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
    v2 = &unk_2804BDD20;
    v3 = &unk_26CD4A248;
  }

  else
  {
    v2 = &qword_2804BCA68;
    v3 = &qword_26CD42850;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

unint64_t sub_26CD1F4A8()
{
  result = qword_2804BDCF0;
  if (!qword_2804BDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDCF0);
  }

  return result;
}

uint64_t dispatch thunk of OfferStore.clear()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26CC37110;

  return v4();
}

uint64_t dispatch thunk of OfferStore.fetch(andClear:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26CC5C5BC;

  return v6(a1);
}

uint64_t dispatch thunk of OfferStore.save(offer:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26CC246B8;

  return v6(a1);
}

uint64_t dispatch thunk of OfferStore.remove(badgeId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 208) + **(*v2 + 208));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26CC37110;

  return v8(a1, a2);
}

uint64_t sub_26CD1F9C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC246B8;

  return sub_26CD1E5B4(a1, v4, v5, v6);
}

id sub_26CD1FA8C(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26CD3A09C();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_26CD39F8C();

    swift_willThrow();
  }

  return v4;
}

void sub_26CD1FB4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26CD1FBB4()
{
  v1[17] = v0;
  v2 = sub_26CD3A07C();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_26CD39E2C();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v4 = sub_26CD39D0C();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD1FDAC, 0, 0);
}

uint64_t sub_26CD1FDAC()
{
  v63 = v0;
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[19];
  v59 = v0[18];
  v6 = v0[17];
  v7 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request;
  v8 = *(v3 + 16);
  v0[34] = v8;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6 + v7, v2);
  sub_26CD39C9C();
  v9 = *(v3 + 8);
  v0[36] = v9;
  v0[37] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = v2;
  v11 = v9;
  v9(v1, v10);
  v12 = *(v5 + 48);
  v0[38] = v12;
  v0[39] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = v59;
  v60 = v12;
  LODWORD(v1) = v12(v4, 1, v13);
  sub_26CC3C0E0(v4);
  if (v1 == 1)
  {
    v14 = v6;
    v15 = v8;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v16 = v0[29];
    v17 = v0[27];
    v61 = qword_280BBCC98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    v62[0] = 0x2064696C61766E49;
    v62[1] = 0xEB000000006C7275;
    v15(v16, v14 + v7, v17);
    v19 = sub_26CD39C2C();
    v21 = v20;
    v11(v16, v17);
    MEMORY[0x26D6AD060](v19, v21);

    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    *(v18 + 32) = 0x2064696C61766E49;
    *(v18 + 40) = 0xEB000000006C7275;
    v22 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26CD3C1E0;
    *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v23 + 64) = sub_26CC2E6E8();
    *(v23 + 32) = v18;
    sub_26CD3A3DC(v22, &dword_26CC14000, v61, "%@", 2, 2, v23);

    sub_26CD044E0();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }

  v8(v0[32], v6 + v7, v0[27]);
  v0[16] = MEMORY[0x277D84FA0];
  v27 = [objc_opt_self() standardUserDefaults];
  v28 = sub_26CD3A59C();
  v29 = [v27 BOOLForKey_];

  if (v29)
  {
    v31 = v0[23];
    v30 = v0[24];
    v32 = v0[21];
    v33 = v0[22];
    sub_26CD39DFC();
    sub_26CCDEE64(v30, v31);
    (*(v33 + 8))(v30, v32);
  }

  v34 = v0[25];
  v35 = v0[18];
  sub_26CD39C9C();
  v36 = v60(v34, 1, v35);
  v37 = v0[25];
  if (v36)
  {
    sub_26CC3C0E0(v0[25]);
    goto LABEL_11;
  }

  v44 = v0[19];
  v43 = v0[20];
  v45 = v0[18];
  (*(v44 + 16))(v43, v0[25], v45);
  sub_26CC3C0E0(v37);
  v46 = URL.queryParameters.getter();
  (*(v44 + 8))(v43, v45);
  if (!v46)
  {
    goto LABEL_11;
  }

  if (v46[2])
  {
    sub_26CC181C4(26227, 0xE200000000000000);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_11:
    v38 = v0[18];
    v39 = sub_26CD39C8C();
    v41 = v60(v40, 1, v38);
    v42 = v0[16];
    if (v41)
    {

LABEL_22:
      v39(v0 + 2, 0);
      v8(v0[30], v0[32], v0[27]);
      v54 = [objc_opt_self() defaultSession];
      v55 = [v54 configuration];
      v0[47] = v55;

      v56 = swift_task_alloc();
      v0[48] = v56;
      *v56 = v0;
      v56[1] = sub_26CD20AEC;
      v57 = v0[30];

      return sub_26CD21064(v57, v55);
    }

    v49 = *(v42 + 16);
    if (v49)
    {
      v50 = v0[22];
      v51 = v0[16];
      v52 = sub_26CCDEBD0(*(v42 + 16), 0);
      v53 = sub_26CCE4C98(v62, &v52[(*(v50 + 80) + 32) & ~*(v50 + 80)], v49, v51);
      sub_26CC33234(v62[0]);
      if (v53 == v49)
      {
LABEL_21:
        sub_26CD3A00C();

        goto LABEL_22;
      }

      __break(1u);
    }

    goto LABEL_21;
  }

LABEL_26:
  v58 = swift_task_alloc();
  v0[40] = v58;
  *v58 = v0;
  v58[1] = sub_26CD204E0;

  return sub_26CCCA3E8();
}

uint64_t sub_26CD204E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 328) = v2;

  if (v2)
  {

    v7 = sub_26CD20D7C;
  }

  else
  {
    *(v6 + 336) = a2;
    *(v6 + 344) = a1;
    v7 = sub_26CD2061C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CD2061C()
{
  v22 = v0;
  v1 = *(v0 + 304);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 144);
  sub_26CD39DFC();

  sub_26CCDEE64(v2, v3);
  (*(v4 + 8))(v2, v5);
  v7 = sub_26CD39C8C();
  v9 = v1(v8, 1, v6);
  v10 = *(v0 + 128);
  if (v9)
  {

    goto LABEL_8;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 128);
  v14 = sub_26CCDEBD0(*(v10 + 16), 0);
  v15 = sub_26CCE4C98(&v21, &v14[(*(v12 + 80) + 32) & ~*(v12 + 80)], v11, v13);
  sub_26CC33234(v21);
  if (v15 != v11)
  {
    __break(1u);
LABEL_6:
  }

  sub_26CD3A00C();

LABEL_8:
  v7(v0 + 48, 0);
  (*(v0 + 272))(*(v0 + 248), *(v0 + 256), *(v0 + 216));
  v16 = [objc_opt_self() defaultSession];
  v17 = [v16 configuration];
  *(v0 + 352) = v17;

  v18 = swift_task_alloc();
  *(v0 + 360) = v18;
  *v18 = v0;
  v18[1] = sub_26CD2085C;
  v19 = *(v0 + 248);

  return sub_26CD21064(v19, v17);
}

uint64_t sub_26CD2085C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v4[46] = v1;

  v5 = v3[44];
  (v3[36])(v3[31], v3[27]);

  if (v1)
  {
    v6 = sub_26CD20E74;
  }

  else
  {
    v6 = sub_26CD209EC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26CD209EC()
{
  v3 = *(v0 + 88);
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_26CD20AEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v4[49] = v1;

  v5 = v3[47];
  (v3[36])(v3[30], v3[27]);

  if (v1)
  {
    v6 = sub_26CD20F6C;
  }

  else
  {
    v6 = sub_26CD20C7C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26CD20C7C()
{
  v3 = *(v0 + 112);
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_26CD20D7C()
{
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD20E74()
{
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD20F6C()
{
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD21064(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_26CD21088, 0, 0);
}

uint64_t sub_26CD21088()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA78, &qword_26CD48350);
  *v4 = v0;
  v4[1] = sub_26CD21198;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000031, 0x800000026CD52F50, sub_26CD22840, v2, v5);
}

uint64_t sub_26CD21198()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26CD214B4;
  }

  else
  {

    v2 = sub_26CD212B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD212B4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v3 = qword_280BBCC98;
    sub_26CD3AC6C();

    v4 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v4);

    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    v5 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_26CC19E10();
    *(v6 + 32) = 0xD000000000000013;
    *(v6 + 40) = 0x800000026CD52F90;
    sub_26CD3A3DC(v5, &dword_26CC14000, v3, "%@", 2, 2, v6);

    sub_26CD044E0();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26CD214B4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26CD21518()
{
  v1 = sub_26CD39D0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_sessionTask);
  if (v5)
  {
    v6 = v5;
    if ([v6 state] == 2)
    {
      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      v7 = qword_280BBCC98;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_26CD3AC6C();

      v23 = 0xD00000000000001BLL;
      v24 = 0x800000026CD52F10;
      (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request, v1);
      v8 = sub_26CD39C2C();
      v10 = v9;
      (*(v2 + 8))(v4, v1);
      MEMORY[0x26D6AD060](v8, v10);

      MEMORY[0x26D6AD060](46, 0xE100000000000000);
      v11 = v23;
      v12 = v24;
      v13 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_26CD3C1E0;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = sub_26CC19E10();
      *(v14 + 32) = v11;
      *(v14 + 40) = v12;
      sub_26CD3A3DC(v13, &dword_26CC14000, v7, "%@", 2, 2, v14);
    }

    else
    {
      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      v15 = qword_280BBCC98;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_26CD3AC6C();

      v23 = 0xD000000000000013;
      v24 = 0x800000026CD52EF0;
      (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request, v1);
      v16 = sub_26CD39C2C();
      v18 = v17;
      (*(v2 + 8))(v4, v1);
      MEMORY[0x26D6AD060](v16, v18);

      v19 = v23;
      v20 = v24;
      v21 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_26CD3C1E0;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = sub_26CC19E10();
      *(v22 + 32) = v19;
      *(v22 + 40) = v20;
      sub_26CD3A3DC(v21, &dword_26CC14000, v15, "%@", 2, 2, v22);

      [v6 cancel];
    }
  }
}

uint64_t sub_26CD218D0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request;
  v2 = sub_26CD39D0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AMSRequestHandler(uint64_t a1)
{
  result = qword_280BBACB8;
  if (!qword_280BBACB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CD219E8(uint64_t a1)
{
  result = sub_26CD39D0C();
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

uint64_t sub_26CD21A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request;
  v4 = sub_26CD39D0C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26CD21B18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC30618;

  return sub_26CD1FBB4();
}

uint64_t sub_26CD21BA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_26CD21D88(a3, a4, sub_26CD2284C, v12);
}

uint64_t sub_26CD21D04(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
    return sub_26CD3A81C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
    return sub_26CD3A82C();
  }
}

void sub_26CD21D88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v6 = sub_26CD39D0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x277CEE160];
  v11 = [objc_opt_self() ams_sharedAccountStore];
  v12 = [v11 ams:v10 activeiTunesAccountForMediaType:?];

  v13 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v7 + 32))(v16 + v14, v9, v6);
  *(v16 + v15) = a2;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = v22;
  *v17 = v21;
  v17[1] = v18;
  aBlock[4] = sub_26CD228D8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CD22A98;
  aBlock[3] = &block_descriptor_14;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  [v12 addFinishBlock_];
  _Block_release(v19);
}

double sub_26CD21FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v41 = a1;
  v11 = sub_26CD39D0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v38 = a6;
    v39 = a5;
    v40 = a7;
    v17 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_requestEncoder;
    [*(Strong + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_requestEncoder) setUrlKnownToBeTrusted_];
    sub_26CC19A84(v16 + 16, &aBlock);
    v19 = v45;
    v18 = v46;
    __swift_project_boxed_opaque_existential_1(&aBlock, v45);
    LOBYTE(v18) = v18[3](v19, v18);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if ((v18 & 1) == 0)
    {
      [*(v16 + v17) setAccount_];
    }

    v20 = *(v16 + v17);
    v21 = sub_26CD39C4C();
    v22 = [v20 requestByEncodingRequest:v21 parameters:0];

    (*(v12 + 16))(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v11);
    v23 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v24 = swift_allocObject();
    v25 = v38;
    v26 = v39;
    *(v24 + 2) = v16;
    *(v24 + 3) = v26;
    v27 = v40;
    *(v24 + 4) = v25;
    *(v24 + 5) = v27;
    (*(v12 + 32))(&v24[v23], v14, v11);
    v46 = sub_26CD22998;
    v47 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_26CD22A98;
    v45 = &block_descriptor_39;
    v28 = _Block_copy(&aBlock);

    v29 = v26;

    [v22 addFinishBlock_];
    _Block_release(v28);
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v31 = qword_280BBCC98;
    aBlock = 0;
    v43 = 0xE000000000000000;
    sub_26CD3AC6C();

    aBlock = 0xD000000000000021;
    v43 = 0x800000026CD52FB0;
    v32 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v32);

    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    v33 = aBlock;
    v34 = v43;
    v35 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = sub_26CC19E10();
    *(v36 + 32) = v33;
    *(v36 + 40) = v34;
    sub_26CD3A3DC(v35, &dword_26CC14000, v31, "%@", 2, 2, v36);
  }

  return result;
}

double sub_26CD223E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_26CD39D0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_26CD39C6C();
    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = a6;
    v15 = a1;

    sub_26CD22688(v13, a4, sub_26CD087E4, v14);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v17 = qword_280BBCC98;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_26CD3AC6C();

    v23 = 0xD00000000000001BLL;
    v24 = 0x800000026CD52FE0;
    v18 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v18);

    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    v19 = v23;
    v20 = v24;
    v21 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD3C1E0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_26CC19E10();
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
    sub_26CD3A3DC(v21, &dword_26CC14000, v17, "%@", 2, 2, v22);
  }

  return result;
}

void sub_26CD22688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];
  v9 = sub_26CD39C4C();
  v17 = sub_26CD22A20;
  v18 = v5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26CD1FB4C;
  v16 = &block_descriptor_45_0;
  v10 = _Block_copy(&v13);

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v17 = sub_26CD22A88;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26CD22A98;
  v16 = &block_descriptor_51;
  v12 = _Block_copy(&v13);

  [v8 createDataTaskWithRequest:v9 activity:0 dataTaskCreationCompletionHandler:v10 requestCompletionHandler:v12];
  _Block_release(v12);
  _Block_release(v10);
}

uint64_t sub_26CD2284C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);

  return sub_26CD21D04(a1, a2);
}

double sub_26CD228D8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_26CD39D0C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_26CD21FEC(a1, a2, v8, v2 + v6, v9, v11, v12);
}

double sub_26CD22998(void *a1, uint64_t a2)
{
  sub_26CD39D0C();
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];

  return sub_26CD223E8(a1, a2, v5, v6, v7, v8);
}

id sub_26CD22A20(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_sessionTask);
  *(v1 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_sessionTask) = a1;
  v3 = a1;

  return [v3 resume];
}

uint64_t sub_26CD22A9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26CD22AE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CD22B40()
{
  result = sub_26CD1403C();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_26CC181C4(0x736574756F72, 0xE600000000000000), (v3 & 1) != 0))
    {
      sub_26CC168C0(*(v1 + 56) + 32 * v2, v5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_26CD22BF8()
{
  result = sub_26CD1403C();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_26CC181C4(0xD000000000000011, 0x800000026CD51150), (v3 & 1) != 0))
    {
      sub_26CC168C0(*(v1 + 56) + 32 * v2, v5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_26CD22CB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *v3 + 64;
  v8 = 1 << *(*v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(*v3 + 64);
  v11 = (v8 + 63) >> 6;

  v55 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v12 = 0;
  v13 = 0uLL;
  v14 = 0uLL;
  v65 = v7;
  v66 = v11;
  v67 = v6;
  v69 = a2;
LABEL_4:
  v60 = v14;
  v62 = v13;
  v15 = v12;
  while (v10)
  {
    v12 = v15;
LABEL_10:
    v16 = __clz(__rbit64(v10)) | (v12 << 6);
    v17 = (v6[6] + 16 * v16);
    v18 = v17[1];
    v19 = v6[7] + 56 * v16;
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = v20 == a1 && v21 == a2;
    v64 = *v17;
    if (v22 || (sub_26CD3AFDC() & 1) != 0)
    {

LABEL_41:
      sub_26CD23DE8(v62, *(&v62 + 1), v60, *(&v60 + 1), v58, v57);

      if (v6[2])
      {
        v48 = sub_26CC181C4(v64, v18);
        v50 = v49;

        v45 = a3;
        if (v50)
        {
          v51 = v6[7] + 56 * v48;
          v53 = *(v51 + 16);
          v52 = *(v51 + 32);
          v54 = *v51;
          v75 = *(v51 + 48);
          v73 = v53;
          v74 = v52;
          v72 = v54;
          sub_26CD23E38(&v72, &v70);

          v42 = v72;
          v43 = v73;
          v44 = *(&v74 + 1);
          v47 = v74;
          v46 = v75;
        }

        else
        {

          v47 = 0;
          v44 = 0;
          v46 = 0;
          v42 = 0uLL;
          v43 = 0uLL;
        }
      }

      else
      {

        v47 = 0;
        v44 = 0;
        v46 = 0;
        v42 = 0uLL;
        v43 = 0uLL;
        v45 = a3;
      }

LABEL_38:
      *v45 = v42;
      *(v45 + 16) = v43;
      *(v45 + 32) = v47;
      *(v45 + 40) = v44;
      *(v45 + 48) = v46;
      return;
    }

    *&v72 = 47;
    *(&v72 + 1) = 0xE100000000000000;

    MEMORY[0x26D6AD060](a1, a2);
    if (v20 == v72 && v21 == *(&v72 + 1))
    {

      goto LABEL_41;
    }

    v24 = sub_26CD3AFDC();

    if (v24)
    {
      goto LABEL_41;
    }

    *&v72 = a1;
    *(&v72 + 1) = v69;
    v70 = 0x2F33762F7374752FLL;
    v71 = 0xE800000000000000;
    sub_26CC16DCC();
    if (sub_26CD3AB2C())
    {

      v25 = a1;
      v26 = v69;
    }

    else
    {
      *&v72 = 0x2F33762F7374752FLL;
      *(&v72 + 1) = 0xE800000000000000;
      MEMORY[0x26D6AD060](a1, v69);
      v26 = *(&v72 + 1);
      v25 = v72;
    }

    v10 &= v10 - 1;
    *&v72 = v25;
    *(&v72 + 1) = v26;
    v70 = 47;
    v71 = 0xE100000000000000;
    v27 = sub_26CD3AAFC();

    v68 = sub_26CCF3078(v27);

    *&v72 = v20;
    *(&v72 + 1) = v21;
    v70 = 47;
    v71 = 0xE100000000000000;
    v28 = sub_26CD3AAFC();

    v29 = sub_26CCF3078(v28);

    *&v72 = a1;
    *(&v72 + 1) = v69;
    v70 = 47;
    v71 = 0xE100000000000000;
    v30 = sub_26CD3AAFC();
    if (v30[2])
    {
      v31 = v30[4];
      v32 = v30[5];

      LOBYTE(v31) = sub_26CC2016C(v31, v32, v29);

      v7 = v65;
      v11 = v66;
      if (v31)
      {
        a2 = v69;
        if (*(v29 + 16) == *(v68 + 16))
        {

          v33 = *(sub_26CCF2408(v68, v29) + 2);

          if (v55 < v33)
          {
            sub_26CD23DE8(v62, *(&v62 + 1), v60, *(&v60 + 1), v58, v57);
            if (v67[2])
            {
              v34 = sub_26CC181C4(v64, v18);
              v36 = v35;

              if (v36)
              {
                v37 = v67[7] + 56 * v34;
                v38 = *(v37 + 48);
                v40 = *(v37 + 16);
                v39 = *(v37 + 32);
                v72 = *v37;
                v73 = v40;
                v74 = v39;
                v59 = v38;
                v75 = v38;
                v61 = v40;
                v63 = v72;
                v57 = *(&v39 + 1);
                v58 = v39;
                sub_26CD23E38(&v72, &v70);
              }

              else
              {
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v61 = 0u;
                v63 = 0u;
              }

              a2 = v69;
            }

            else
            {

              v57 = 0;
              v58 = 0;
              v59 = 0;
              v61 = 0u;
              v63 = 0u;
            }

            v41 = sub_26CCF2408(v68, v29);

            v55 = v41[2];

            v6 = v67;
            v14 = v61;
            v13 = v63;
            goto LABEL_4;
          }
        }

        v15 = v12;
        v6 = v67;
      }

      else
      {

        v15 = v12;
        v6 = v67;
        a2 = v69;
      }
    }

    else
    {

      v15 = v12;
      v11 = v66;
      v6 = v67;
      a2 = v69;
      v7 = v65;
    }
  }

  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      v43 = v60;
      v42 = v62;
      v45 = a3;
      v44 = v57;
      v46 = v59;
      v47 = v58;
      goto LABEL_38;
    }

    v10 = *(v7 + 8 * v12);
    ++v15;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_26CD232E4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26CD23474(a1, &v11);
  if (v12)
  {
    sub_26CC2524C(&v11, v13);
    sub_26CC19A84(v13, v14 + 8);
    v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = sub_26CD235D0(*v4);
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v14[0] = v5;
    v6 = v14[1];
    *a2 = v14[0];
    a2[1] = v6;
    result = *&v15;
    a2[2] = v15;
  }

  else
  {
    sub_26CD23E70(&v11);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v8 = qword_280BBCBE0;
    v9 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v10 + 64) = sub_26CC2E6E8();
    *(v10 + 32) = &unk_287DF9850;
    sub_26CD3A3DC(v9, &dword_26CC14000, v8, "%@", 2, 2, v10);

    __swift_destroy_boxed_opaque_existential_1(a1);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_26CD23474@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_26CD22BF8();
  if (v3 && (sub_26CCF5278(v3), v5 = v4, , v5))
  {
    v6 = sub_26CCC7B60(v5);

    *(a2 + 24) = &type metadata for UTSRequiredParameterSource;
    *(a2 + 32) = &off_287E06110;
    *a2 = v6;
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v8 = qword_280BBCBE0;
    v9 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v10 + 64) = sub_26CC2E6E8();
    *(v10 + 32) = &unk_287DF97F0;
    sub_26CD3A3DC(v9, &dword_26CC14000, v8, "%@", 2, 2, v10);

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_26CD235D0(uint64_t *a1)
{
  v72 = *a1;
  v73 = &off_287E05310;
  v71[0] = a1;
  __swift_project_boxed_opaque_existential_1(v71, v72);

  v1 = sub_26CD22B40();
  v2 = &off_26CD3C000;
  if (!v1)
  {
    if (qword_280BB9C20 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v3 = v1;
  v4 = 0;
  v5 = v1 + 64;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  v63 = MEMORY[0x277D84F98];
  while (v8)
  {
    v10 = v4;
LABEL_15:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(v3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_26CC168C0(*(v3 + 56) + 32 * v14, v68);
    *&v64 = v17;
    *(&v64 + 1) = v16;
    sub_26CC331CC(v68, &v65);

LABEL_16:
    v69 = v64;
    v70[0] = v65;
    v70[1] = v66;
    v18 = *(&v64 + 1);
    if (!*(&v64 + 1))
    {

      v51 = v63;
      goto LABEL_55;
    }

    v19 = v69;
    sub_26CC331CC(v70, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    if (swift_dynamicCast())
    {
      v20 = *&v68[0];
      if (!*(*&v68[0] + 16))
      {
        goto LABEL_38;
      }

      v21 = sub_26CC181C4(1752457584, 0xE400000000000000);
      if ((v22 & 1) == 0)
      {
        goto LABEL_38;
      }

      sub_26CC168C0(*(v20 + 56) + 32 * v21, &v64);
      if (!swift_dynamicCast())
      {
        goto LABEL_38;
      }

      v2 = *(&v68[0] + 1);
      if (!*(v20 + 16))
      {
        goto LABEL_37;
      }

      v23 = *&v68[0];
      v24 = sub_26CC181C4(0xD000000000000012, 0x800000026CD53040);
      if ((v25 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_26CC168C0(*(v20 + 56) + 32 * v24, &v64);
      if (!swift_dynamicCast())
      {
        goto LABEL_37;
      }

      if (!*(v20 + 16) || (v62 = v68[0], v26 = sub_26CC181C4(0x636F4C736465656ELL, 0xED00006E6F697461), (v27 & 1) == 0) || (sub_26CC168C0(*(v20 + 56) + 32 * v26, &v64), !swift_dynamicCast()) || !*(v20 + 16) || (v61 = v68[0], v28 = sub_26CC181C4(0x73654D736465656ELL, 0xEB000000006C6163), (v29 & 1) == 0) || (sub_26CC168C0(*(v20 + 56) + 32 * v28, &v64), !swift_dynamicCast()) || !*(v20 + 16) || (v60 = v68[0], v30 = sub_26CC181C4(1953722216, 0xE400000000000000), (v31 & 1) == 0))
      {

LABEL_37:

LABEL_38:

        goto LABEL_39;
      }

      sub_26CC168C0(*(v20 + 56) + 32 * v30, &v64);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_37;
      }

      v57 = v68[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v68[0] = v63;
      v59 = sub_26CC181C4(v19, v18);
      v36 = v63[2];
      v58 = v37;
      v38 = (v37 & 1) == 0;
      v39 = v36 + v38;
      if (__OFADD__(v36, v38))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }

      if (v63[3] >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_47;
        }

        sub_26CD36410();
        if ((v58 & 1) == 0)
        {
          goto LABEL_50;
        }

LABEL_48:

        v63 = *&v68[0];
        v41 = *(*&v68[0] + 56) + 56 * v59;
        v42 = *(v41 + 48);
        v43 = *v41;
        v44 = *(v41 + 32);
        v65 = *(v41 + 16);
        v66 = v44;
        v64 = v43;
        v67 = v42;
        *v41 = v57;
        *(v41 + 16) = v23;
        *(v41 + 24) = v2;
        *(v41 + 32) = v62;
        *(v41 + 48) = v61;
        *(v41 + 49) = v60;
        sub_26CD23ED8(&v64);
      }

      else
      {
        sub_26CD33828(v39, isUniquelyReferenced_nonNull_native);
        v59 = sub_26CC181C4(v19, v18);
        if ((v58 & 1) != (v40 & 1))
        {
          goto LABEL_60;
        }

LABEL_47:
        if (v58)
        {
          goto LABEL_48;
        }

LABEL_50:
        v45 = *&v68[0];
        *(*&v68[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v46 = (v45[6] + 16 * v59);
        *v46 = v19;
        v46[1] = v18;
        v47 = v45[7] + 56 * v59;
        *v47 = v57;
        *(v47 + 16) = v23;
        *(v47 + 24) = v2;
        *(v47 + 32) = v62;
        *(v47 + 48) = v61;
        *(v47 + 49) = v60;
        v63 = v45;
        v48 = v45[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_59;
        }

        v45[2] = v50;
      }
    }

    else
    {
LABEL_39:
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v32 = qword_280BBCBE0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v2 = swift_allocObject();
      *(v2 + 1) = xmmword_26CD3C1E0;
      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD53000);
      MEMORY[0x26D6AD060](v19, v18);

      v33 = *(&v64 + 1);
      *(v2 + 4) = v64;
      *(v2 + 5) = v33;
      v34 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_26CD3C1E0;
      *(v35 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v35 + 64) = sub_26CC2E6E8();
      *(v35 + 32) = v2;
      sub_26CD3A3DC(v34, &dword_26CC14000, v32, "%@", 2, 2, v35);
    }
  }

  if (v9 <= v4 + 1)
  {
    v11 = v4 + 1;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      v8 = 0;
      v65 = 0u;
      v66 = 0u;
      v4 = v12;
      v64 = 0u;
      goto LABEL_16;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_54:
  v52 = qword_280BBCBE0;
  v53 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v54 = swift_allocObject();
  *(v54 + 16) = *(v2 + 30);
  *(v54 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v54 + 64) = sub_26CC2E6E8();
  *(v54 + 32) = &unk_287DF9820;
  sub_26CD3A3DC(v53, &dword_26CC14000, v52, "%@", 2, 2, v54);

  v51 = MEMORY[0x277D84F98];
LABEL_55:
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v51;
}

double sub_26CD23DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26CD23E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD28, "ȿ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CD23F08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_26CD23F50(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_26CD23FB4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_2804BBAB0 != -1)
  {
    swift_once();
  }

  v2 = qword_2804BDD30;
  v3 = sub_26CD3A59C();
  [v2 setBool:v1 forKey:v3];
}

void static PreferencesStore.sportsScoreSpoilersAllowed.setter(char a1)
{
  if (qword_2804BBAB0 != -1)
  {
    swift_once();
  }

  v2 = qword_2804BDD30;
  v3 = sub_26CD3A59C();
  [v2 setBool:a1 & 1 forKey:v3];
}

id sub_26CD24154()
{
  result = sub_26CD24174();
  qword_2804BDD30 = result;
  return result;
}

id sub_26CD24174()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD390A4(1, 0xD00000000000001ALL, 0x800000026CD53060, isUniquelyReferenced_nonNull_native);
  sub_26CCC8340(v1);

  v3 = sub_26CD3A4DC();

  [v0 registerDefaults_];

  return v0;
}

uint64_t _s13TVAppServices16PreferencesStoreV26sportsScoreSpoilersAllowedSbvgZ_0()
{
  if (qword_2804BBAB0 != -1)
  {
    swift_once();
  }

  v0 = qword_2804BDD30;
  v1 = sub_26CD3A59C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_26CC548D4(v7);
    return 0;
  }

  return result;
}

uint64_t sub_26CD24384(uint64_t a1)
{
  v4 = sub_26CD39D0C();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v5 = *(a1 + 16);
  *(v2 + 256) = *a1;
  *(v2 + 272) = v5;
  *(v2 + 400) = *(a1 + 32);
  v6 = v1[1];
  *(v2 + 288) = *v1;
  *(v2 + 304) = v6;

  return MEMORY[0x2822009F8](sub_26CD2447C, 0, 0);
}

uint64_t sub_26CD2447C()
{
  v1 = *(v0 + 264);
  if (*(v0 + 400) == 1)
  {
    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    v4 = *(v0 + 256);
    v5 = *(v0 + 304);
    *(v0 + 152) = *(v0 + 288);
    *(v0 + 168) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD48010;
    *(inited + 32) = 2;
    *(inited + 40) = v4;
    *(inited + 48) = v1;
    *(inited + 56) = 1;
    *(inited + 64) = v3;
    *(inited + 72) = v2;

    v7 = sub_26CC322A0(inited);
    *(v0 + 320) = v7;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD40, &qword_26CD4A3C8);
    swift_arrayDestroy();
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_26CD248B4;
    v9 = *(v0 + 232);
    v10 = 0xD00000000000002BLL;
    v11 = 0x800000026CD53160;
    v12 = v7;
    goto LABEL_18;
  }

  v13 = qword_280BBACD8;

  if (v13 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_280BBACE0 + 1) || !qword_280BBAD00)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v15 = 0x2E6C6F632E737475;
    v17 = qword_280BBCBE0;
    v18 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_26CD3C1E0;
    *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v19 + 64) = sub_26CC2E6E8();
    *(v19 + 32) = &unk_287DFA580;
    sub_26CD3A3DC(v18, &dword_26CC14000, v17, "%@", 2, 2, v19);

    goto LABEL_16;
  }

  v14 = qword_280BBACF8 == 0x746F6D65722D7674 && qword_280BBAD00 == 0xE900000000000065;
  if (!v14 && (sub_26CD3AFDC() & 1) == 0)
  {
    v15 = 0x2E6C6F632E737475;
LABEL_16:
    v16 = 0xEE007478654E7055;
    goto LABEL_17;
  }

  v15 = 0xD000000000000011;
  v16 = 0x800000026CD53190;
LABEL_17:
  v21 = *(v0 + 256);
  v20 = *(v0 + 264);
  v22 = *(v0 + 304);
  *(v0 + 184) = *(v0 + 288);
  *(v0 + 200) = v22;
  MEMORY[0x26D6AD060](v15, v16);

  *(v0 + 344) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_26CD3C1E0;
  *(v23 + 32) = 1;
  v24 = v23 + 32;
  *(v23 + 40) = v21;
  *(v23 + 48) = v20;
  v25 = sub_26CC322A0(v23);
  *(v0 + 352) = v25;
  swift_setDeallocating();
  sub_26CC1B544(v24, &qword_2804BDD40, &qword_26CD4A3C8);
  v26 = swift_task_alloc();
  *(v0 + 360) = v26;
  *v26 = v0;
  v26[1] = sub_26CD249D0;
  v9 = *(v0 + 240);
  v10 = 0x2F7365766C656873;
  v11 = 0xE800000000000000;
  v12 = v25;
LABEL_18:

  return sub_26CD25040(v9, v10, v11, v12);
}

uint64_t sub_26CD248B4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_26CD24F20;
  }

  else
  {

    v2 = sub_26CD24BDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD249D0()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_26CD24E90;
  }

  else
  {

    v2 = sub_26CD24AF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD24AF4()
{
  (*(v0[28] + 32))(v0[31], v0[30], v0[27]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_26CD24CC8;
  v2 = v0[31];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD24BDC()
{
  (*(v0[28] + 32))(v0[31], v0[29], v0[27]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_26CD24CC8;
  v2 = v0[31];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD24CC8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = sub_26CD24FA8;
  }

  else
  {
    *(v4 + 392) = a1;
    v5 = sub_26CD24DF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CD24DF0()
{
  (*(v0[28] + 8))(v0[31], v0[27]);

  v1 = v0[1];
  v2 = v0[49];

  return v1(v2);
}

uint64_t sub_26CD24E90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD24F20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD24FA8()
{
  (*(v0[28] + 8))(v0[31], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CD25040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = sub_26CD3A07C();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = sub_26CD39E2C();
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_26CD39D0C();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v10 = swift_task_alloc();
  v4[14] = v10;
  type metadata accessor for UTSURLRequestFactory();
  v11 = swift_task_alloc();
  v4[15] = v11;
  *v11 = v4;
  v11[1] = sub_26CD2526C;

  return sub_26CD027F0(v10, a2, a3, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CD2526C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26CD277E8;
  }

  else
  {
    v2 = sub_26CD277EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t static UTSRequest.fetchJSON(_:)(uint64_t *a1)
{
  v3 = sub_26CD39D0C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v1[16] = v4;
  v1[17] = v5;
  v1[18] = v6;

  return MEMORY[0x2822009F8](sub_26CD25454, 0, 0);
}

uint64_t sub_26CD25454()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000010, 0x800000026CD53080);
  v0[11] = v2;
  v0[12] = v1;
  sub_26CD3AD1C();
  v5 = v0[10];
  *(v4 + 32) = v0[9];
  *(v4 + 40) = v5;
  v6 = sub_26CD3A97C();
  sub_26CC57EC8(v6, v4, 0xD000000000000075, 0x800000026CD530A0, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD3C1E0;
  *(inited + 32) = 0;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v8 = sub_26CC322A0(inited);
  v0[19] = v8;
  swift_setDeallocating();
  sub_26CC1B544(inited + 32, &qword_2804BDD40, &qword_26CD4A3C8);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_26CD256B0;
  v10 = v0[15];

  return sub_26CD25D90(v10, 0xD000000000000016, 0x800000026CD53120, v8);
}

uint64_t sub_26CD256B0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_26CD25C98;
  }

  else
  {

    v2 = sub_26CD257CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD257CC()
{
  (*(v0[14] + 32))(v0[16], v0[15], v0[13]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_26CD258B4;
  v2 = v0[16];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD258B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26CD25D0C, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[25] = v6;
    *v6 = v5;
    v6[1] = sub_26CD25A34;

    return sub_26CD274F8(a1);
  }
}

uint64_t sub_26CD25A34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_26CD25BFC;
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = sub_26CD25B5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CD25B5C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 216);

  return v4(v5);
}

uint64_t sub_26CD25BFC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26CD25C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD25D0C()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CD25D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = sub_26CD3A07C();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = sub_26CD39E2C();
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_26CD39D0C();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v10 = swift_task_alloc();
  v4[14] = v10;
  type metadata accessor for UTSURLRequestFactory();
  v11 = swift_task_alloc();
  v4[15] = v11;
  *v11 = v4;
  v11[1] = sub_26CD25FBC;

  return sub_26CD027F0(v10, a2, a3, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CD25FBC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26CD26494;
  }

  else
  {
    v2 = sub_26CD260D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_26CD260D0(uint64_t a1)
{
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[10];
    v4 = -1;
    v5 = -1 << *(v2 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v2 + 64);
    v7 = (63 - v5) >> 6;
    v8 = v3 + 32;

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v6)
    {
LABEL_5:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      if (*(*(v2 + 56) + 16 * (v11 | (v9 << 6)) + 8))
      {
        v33 = v8;

        sub_26CD39DFC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26CCBE394(0, v10[2] + 1, 1, v10);
        }

        v14 = v10[2];
        v13 = v10[3];
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v19 = sub_26CCBE394((v13 > 1), v14 + 1, 1, v10);
          v15 = v14 + 1;
          v10 = v19;
        }

        v16 = v1[11];
        v17 = v1[9];
        v10[2] = v15;
        v18 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14;
        v8 = v33;
        (*(v3 + 32))(v18, v16, v17);
      }
    }

    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v12 >= v7)
      {

        goto LABEL_17;
      }

      v6 = *(v2 + 64 + 8 * v12);
      ++v9;
      if (v6)
      {
        v9 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v20 = v1[7];
    v21 = v1[4];
    v22 = v1[5];
    sub_26CD39C9C();
    if ((*(v22 + 48))(v20, 1, v21))
    {
      sub_26CC1B544(v1[7], &qword_2804BCA30, &qword_26CD3DA70);
      v23 = 1;
    }

    else
    {
      v24 = v1[7];
      v26 = v1[5];
      v25 = v1[6];
      v27 = v1[4];
      (*(v26 + 16))(v25, v24, v27);
      sub_26CC1B544(v24, &qword_2804BCA30, &qword_26CD3DA70);
      sub_26CD3A05C();
      (*(v26 + 8))(v25, v27);
      v23 = 0;
    }

    v29 = v1[13];
    v28 = v1[14];
    v30 = v1[12];
    v31 = v1[2];
    (*(v1[5] + 56))(v1[8], v23, 1, v1[4]);
    sub_26CD39CAC();
    (*(v29 + 32))(v31, v28, v30);

    v32 = v1[1];

    v32();
  }
}

uint64_t sub_26CD26494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static UTSRequest.fetchJSON(_:)(uint64_t a1)
{
  v3 = sub_26CD39D0C();
  *(v1 + 208) = v3;
  *(v1 + 216) = *(v3 - 8);
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v4 = *(a1 + 16);
  *(v1 + 248) = *a1;
  *(v1 + 264) = v4;
  *(v1 + 185) = *(a1 + 32);

  return MEMORY[0x2822009F8](sub_26CD2661C, 0, 0);
}

uint64_t sub_26CD2661C()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = 0xD000000000000011;
  v2 = *(v0 + 185);
  v3 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  v29 = *(v0 + 264);
  v30 = *(v0 + 248);
  sub_26CD3AC6C();
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD53140);
  *(v0 + 152) = v30;
  *(v0 + 168) = v29;
  *(v0 + 184) = v2;
  sub_26CD3AD1C();
  v5 = *(v0 + 200);
  *(v4 + 32) = *(v0 + 192);
  *(v4 + 40) = v5;
  v6 = sub_26CD3A97C();
  sub_26CC57EC8(v6, v4, 0xD000000000000075, 0x800000026CD530A0, v3);

  if (v2 == 1)
  {
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD48010;
    *(inited + 32) = 2;
    *(inited + 40) = v10;
    *(inited + 48) = v9;
    *(inited + 56) = 1;
    *(inited + 64) = v8;
    *(inited + 72) = v7;

    v12 = sub_26CC322A0(inited);
    *(v0 + 280) = v12;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD40, &qword_26CD4A3C8);
    swift_arrayDestroy();
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_26CD26B30;
    v14 = *(v0 + 224);
    v15 = 0xD00000000000002BLL;
    v16 = 0x800000026CD53160;
    v17 = v12;
    goto LABEL_16;
  }

  v18 = qword_280BBACD8;

  if (v18 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_280BBACE0 + 1) || !qword_280BBAD00)
  {
    v1 = 0x2E6C6F632E737475;
    v20 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26CD3C1E0;
    *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v21 + 64) = sub_26CC2E6E8();
    *(v21 + 32) = &unk_287DFA580;
    sub_26CD3A3DC(v20, &dword_26CC14000, v3, "%@", 2, 2, v21);

LABEL_14:
    v19 = 0xEE007478654E7055;
    goto LABEL_15;
  }

  if ((qword_280BBACF8 != 0x746F6D65722D7674 || qword_280BBAD00 != 0xE900000000000065) && (sub_26CD3AFDC() & 1) == 0)
  {
    v1 = 0x2E6C6F632E737475;
    goto LABEL_14;
  }

  v19 = 0x800000026CD53190;
LABEL_15:
  v23 = *(v0 + 248);
  v22 = *(v0 + 256);
  MEMORY[0x26D6AD060](v1, v19);

  *(v0 + 304) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD38, &qword_26CD4A3C0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_26CD3C1E0;
  *(v24 + 32) = 1;
  v25 = v24 + 32;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  v26 = sub_26CC322A0(v24);
  *(v0 + 312) = v26;
  swift_setDeallocating();
  sub_26CC1B544(v25, &qword_2804BDD40, &qword_26CD4A3C8);
  v27 = swift_task_alloc();
  *(v0 + 320) = v27;
  *v27 = v0;
  v27[1] = sub_26CD26C4C;
  v14 = *(v0 + 232);
  v15 = 0x2F7365766C656873;
  v16 = 0xE800000000000000;
  v17 = v26;
LABEL_16:

  return sub_26CD25D90(v14, v15, v16, v17);
}

uint64_t sub_26CD26B30()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_26CD273D8;
  }

  else
  {

    v2 = sub_26CD26E58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD26C4C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_26CD27348;
  }

  else
  {

    v2 = sub_26CD26D70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD26D70()
{
  (*(v0[27] + 32))(v0[30], v0[29], v0[26]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_26CD26F44;
  v2 = v0[30];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD26E58()
{
  (*(v0[27] + 32))(v0[30], v0[28], v0[26]);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_26CD26F44;
  v2 = v0[30];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CD26F44(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26CD27460, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[45] = v6;
    *v6 = v5;
    v6[1] = sub_26CD270C4;

    return sub_26CD274F8(a1);
  }
}

uint64_t sub_26CD270C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_26CD272A0;
  }

  else
  {
    *(v4 + 376) = a1;
    v5 = sub_26CD271EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CD271EC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 208);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 376);

  return v4(v5);
}

uint64_t sub_26CD272A0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26CD27348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD273D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD27460()
{
  (*(v0[27] + 8))(v0[30], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CD27518()
{
  v1 = [*(v0 + 16) data];
  v2 = sub_26CD3A0BC();
  v4 = v3;

  v5 = Data.asDictionary()();
  sub_26CC18C50(v2, v4);
  if (v5)
  {
    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v8 = qword_280BBCBE0;
    v9 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v10 + 64) = sub_26CC2E6E8();
    *(v10 + 32) = &unk_287DFC910;
    sub_26CD3A3DC(v9, &dword_26CC14000, v8, "%@", 2, 2, v10);

    sub_26CC2E794();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
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

uint64_t sub_26CD2772C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26CD27774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26CD277F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26CC181C4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a3 + 56) + 32 * v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26CD278B0()
{
  result = qword_2804BDD48;
  if (!qword_2804BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDD48);
  }

  return result;
}

const char *sub_26CD27918()
{
  if (*v0)
  {
    return "plato";
  }

  else
  {
    return "timbuktu";
  }
}

uint64_t sub_26CD27948()
{
  sub_26CC1B544(v0 + 16, &qword_2804BDB98, &unk_26CD48D80);

  return swift_deallocClassInstance();
}

unint64_t sub_26CD279B4(uint64_t a1, uint64_t a2)
{
  sub_26CD3A60C();
  sub_26CC16DCC();
  v2 = sub_26CD3AB2C();

  if ((v2 & 1) == 0)
  {
    sub_26CD3A60C();
    v3 = sub_26CD3AB2C();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = sub_26CC31D94(&unk_287DFC188);
  sub_26CC1B544(&unk_287DFC1A8, &qword_2804BBB68, &qword_26CD3C678);
  return v4;
}

uint64_t sub_26CD27AD8()
{
  v1 = *(v0 + 64);

  *(v1 + 112) = 0;

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26CD27B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26CD28B28(a3, v22 - v9);
  v11 = sub_26CD3A86C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26CC1ED18(v10);
  }

  else
  {
    sub_26CD3A85C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26CD3A80C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_26CD3A61C() + 32;
      sub_26CD28B98();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26CC1ED18(a3);

      return v20;
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

  sub_26CC1ED18(a3);
  sub_26CD28B98();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26CD27DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26CD28B28(a3, v22 - v9);
  v11 = sub_26CD3A86C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26CC1ED18(v10);
  }

  else
  {
    sub_26CD3A85C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26CD3A80C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26CD3A61C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26CC1ED18(a3);

      return v20;
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

  sub_26CC1ED18(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26CD2806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26CD28B28(a3, v22 - v9);
  v11 = sub_26CD3A86C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26CC1ED18(v10);
  }

  else
  {
    sub_26CD3A85C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26CD3A80C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26CD3A61C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26CC1ED18(a3);

      return v20;
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

  sub_26CC1ED18(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26CD282EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v26[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  sub_26CD28B28(a3, v26 - v13);
  v15 = sub_26CD3A86C();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_26CC1ED18(v14);
  }

  else
  {
    sub_26CD3A85C();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_26CD3A80C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_26CD3A61C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_26CC1ED18(a3);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26CC1ED18(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t static TVBagService.shared.getter()
{
  if (qword_280BBB5E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD285C8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t TVBagService.prewarm(with:)(double a1)
{
  *(v2 + 88) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x2822009F8](sub_26CD286E8, v1, 0);
}

uint64_t sub_26CD286E8()
{
  *(v0[11] + 120) = v0[10];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_26CD2878C;

  return TVBagService.bag.getter((v0 + 2));
}

uint64_t sub_26CD2878C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_26CD288B4;
  }

  else
  {
    v5 = *(v2 + 88);
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_26CC24940;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD288B4()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD53230);
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  sub_26CD3AD1C();
  v4 = v0[8];
  *(v3 + 32) = v0[7];
  *(v3 + 40) = v4;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = v0[1];

  return v7();
}

uint64_t TVBagService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TVBagService.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26CD28B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD28B98()
{
  result = qword_280BB9BD8;
  if (!qword_280BB9BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB9BD8);
  }

  return result;
}

uint64_t sub_26CD28C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26CC246B8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t static WidgetCacheService.shouldInvalidate()(uint64_t a1)
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBCBE0;
  v2 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v3 + 64) = sub_26CC2E6E8();
  *(v3 + 32) = &unk_287DFC970;
  sub_26CD3A3DC(v2, &dword_26CC14000, v1, "%@", 2, 2, v3);

  return 0;
}

double sub_26CD28EF4(uint64_t a1)
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBE0;
  v3 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v4 + 64) = sub_26CC2E6E8();
  *(v4 + 32) = a1;
  sub_26CD3A3DC(v3, &dword_26CC14000, v2, "%@", 2, 2, v4);

  return result;
}

uint64_t UTSNetworkRequest.init(urlRequest:isRequestAnonymous:protocolVersion:networkRequestMetricsOverlay:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for UTSNetworkRequest(0);
  sub_26CD3A1FC();
  *(a5 + v10[6]) = a2;
  *(a5 + v10[8]) = a3;
  v11 = v10[7];
  v12 = sub_26CD39D0C();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a1, v12);
  *a5 = a4;
  return result;
}

uint64_t NetworkRequest.init(urlRequest:isRequestAnonymous:networkRequestMetricsOverlay:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for NetworkRequest(0);
  sub_26CD3A1FC();
  v9 = *(v8 + 24);
  v10 = sub_26CD39D0C();
  result = (*(*(v10 - 8) + 32))(a4 + v9, a1, v10);
  *(a4 + 8) = a2;
  *a4 = a3;
  return result;
}

uint64_t URLRequestError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t NetworkRequest.urlRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NetworkRequest(0) + 24);
  v4 = sub_26CD39D0C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26CD292B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26CD39D0C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t UTSNetworkRequest.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UTSNetworkRequest(0) + 20);
  v4 = sub_26CD3A20C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26CD2945C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_26CD29524@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 28);
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_26CD2959C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_26CD3A20C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26CD2961C()
{
  type metadata accessor for NetworkManager();
  swift_allocObject();
  result = sub_26CD2B170();
  qword_280BBB0C8 = result;
  return result;
}

uint64_t static NetworkManager.shared.getter()
{
  if (qword_280BBB0C0 != -1)
  {
    swift_once();
  }
}

uint64_t NetworkManager.executeRequest(from:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_26CD39D0C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD58, &qword_26CD4A7A8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD297B8, v1, 0);
}

uint64_t sub_26CD297B8()
{
  sub_26CC19A84(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD60, &qword_26CD4A7B0);
  v1 = type metadata accessor for UTSNetworkRequest(0);
  v2 = swift_dynamicCast();
  v3 = *(*(v1 - 8) + 56);
  v4 = v0[13];
  if (v2)
  {
    v3(v0[13], 0, 1, v1);
    sub_26CD29F0C(v4);
    if (qword_280BBAA78 != -1)
    {
      swift_once();
    }

    v5 = v0[7];
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 8))(v6, v7);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_26CD29A54;
    v9 = v0[12];

    return UTSNetworkManager.execute(request:)(v9);
  }

  else
  {
    v11 = v0[7];
    v3(v0[13], 1, 1, v1);
    sub_26CD29F0C(v4);
    v12 = v11[3];
    v13 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v13 + 8))(v12, v13);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_26CD29C30;
    v15 = v0[11];

    return sub_26CD2BB90(v15);
  }
}

uint64_t sub_26CD29A54(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  v8 = *v2;
  *(*v2 + 120) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = *(v4 + 64);

    return MEMORY[0x2822009F8](sub_26CD29E8C, v9, 0);
  }

  else
  {

    v10 = *(v8 + 8);

    return v10(a1);
  }
}

uint64_t sub_26CD29C30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  v8 = *v2;
  *(*v2 + 136) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = *(v4 + 64);

    return MEMORY[0x2822009F8](sub_26CD29E0C, v9, 0);
  }

  else
  {

    v10 = *(v8 + 8);

    return v10(a1);
  }
}

uint64_t sub_26CD29E0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD29E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD29F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD58, &qword_26CD4A7A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NetworkManager.cancel(fom:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_26CD39D0C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD58, &qword_26CD4A7A8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2A06C, v1, 0);
}

uint64_t sub_26CD2A06C()
{
  v32 = v0;
  sub_26CC19A84(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD60, &qword_26CD4A7B0);
  v1 = type metadata accessor for UTSNetworkRequest(0);
  v2 = swift_dynamicCast();
  v3 = *(*(v1 - 8) + 56);
  v4 = v0[12];
  if (v2)
  {
    v3(v0[12], 0, 1, v1);
    sub_26CD29F0C(v4);
    if (qword_280BBAA78 != -1)
    {
      swift_once();
    }

    v5 = v0[7];
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 8))(v6, v7);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_26CD2A4B8;
    v9 = v0[11];

    return UTSNetworkManager.cancel(request:)(v9);
  }

  else
  {
    v12 = v0[10];
    v11 = v0[11];
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    v3(v0[12], 1, 1, v1);
    sub_26CD29F0C(v4);
    v16 = *(v14 + 120);
    sub_26CD3AC6C();

    v30 = 0x3A74736575716552;
    v31 = 0xE900000000000020;
    v17 = v15[3];
    v18 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v17);
    (*(v18 + 8))(v17, v18);
    v19 = sub_26CD39C2C();
    v21 = v20;
    (*(v12 + 8))(v11, v13);
    MEMORY[0x26D6AD060](v19, v21);

    MEMORY[0x26D6AD060](0xD000000000000016, 0x800000026CD532C0);
    v22 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26CD3C1E0;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_26CC19E10();
    *(v23 + 32) = 0x3A74736575716552;
    *(v23 + 40) = 0xE900000000000020;
    sub_26CD3A3DC(v22, &dword_26CC14000, v16, "%@", 2, 2, v23);

    v24 = *(v14 + 112);
    *(swift_task_alloc() + 16) = v15;

    os_unfair_lock_lock(v24 + 6);
    sub_26CD2C080(&v30);
    os_unfair_lock_unlock(v24 + 6);
    v25 = v30;
    v26 = v31;

    if (v25)
    {
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 32);
      swift_unknownObjectRetain();
      v28(ObjectType, v26);
      swift_unknownObjectRelease_n();
    }

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_26CD2A4B8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  (*(v2 + 8))(v1, v3);

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_26CD2A634@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_26CD39D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 8))(v8, v9);
  v10 = sub_26CD39CFC();
  (*(v5 + 8))(v7, v4);
  result = sub_26CD2BA48(v10);
  *a2 = result;
  a2[1] = v12;
  return result;
}

uint64_t sub_26CD2A788()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC30618;
  v2 = *(v0 + 24);

  return UTSNetworkManager.fetchConfiguration(forceConfig:)(v2);
}

uint64_t NetworkManager.execute(request:metrics:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CD2C734;

  return sub_26CD2BB90(a1);
}

uint64_t sub_26CD2A904(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_26CD39D0C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2A9C8, v2, 0);
}

uint64_t sub_26CD2A9C8()
{
  v1 = *(*(v0 + 56) + 112);
  *(swift_task_alloc() + 16) = *(v0 + 40);

  os_unfair_lock_lock((v1 + 24));
  sub_26CD2C690((v1 + 16));
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v17 = *(v0 + 48);
  os_unfair_lock_unlock((v1 + 24));

  v6 = *(v4 + 120);
  sub_26CD3AC6C();

  ObjectType = swift_getObjectType();
  (*(v17 + 24))();
  v8 = sub_26CD39C2C();
  v10 = v9;
  (*(v3 + 8))(v2, v5);
  MEMORY[0x26D6AD060](v8, v10);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  v11 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_26CC19E10();
  *(v12 + 32) = 0xD00000000000001FLL;
  *(v12 + 40) = 0x800000026CD53330;
  sub_26CD3A3DC(v11, &dword_26CC14000, v6, "%@", 2, 2, v12);

  v16 = (*(v17 + 40) + **(v17 + 40));
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_26CD2ACC4;
  v14 = *(v0 + 48);

  return v16(ObjectType, v14);
}

uint64_t sub_26CD2ACC4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;
  v3[12] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[7];

    return MEMORY[0x2822009F8](sub_26CD2AE1C, v7, 0);
  }
}

void sub_26CD2AE1C()
{
  v6 = v0;
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 56) + 112);
  *(swift_task_alloc() + 16) = *(v0 + 40);

  os_unfair_lock_lock(v2 + 6);
  sub_26CD2C6AC(v5);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 6);
  }

  else
  {
    v3 = *(v0 + 24);
    os_unfair_lock_unlock(v2 + 6);

    swift_unknownObjectRelease();

    v4 = *(v0 + 8);

    v4(v3);
  }
}

uint64_t NetworkManager.cancel(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26CD2AF4C, v1, 0);
}

uint64_t sub_26CD2AF4C()
{
  v16 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 120);
  sub_26CD3AC6C();

  v14 = 0x3A74736575716552;
  v15 = 0xE900000000000020;
  v4 = sub_26CD39C2C();
  MEMORY[0x26D6AD060](v4);

  MEMORY[0x26D6AD060](0xD000000000000016, 0x800000026CD532C0);
  v5 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_26CC19E10();
  *(v6 + 32) = 0x3A74736575716552;
  *(v6 + 40) = 0xE900000000000020;
  sub_26CD3A3DC(v5, &dword_26CC14000, v3, "%@", 2, 2, v6);

  v7 = *(v2 + 112);
  *(swift_task_alloc() + 16) = v1;

  os_unfair_lock_lock(v7 + 6);
  sub_26CD2C09C(&v14);
  os_unfair_lock_unlock(v7 + 6);
  v8 = v14;
  v9 = v15;

  if (v8)
  {
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 32);
    swift_unknownObjectRetain();
    v11(ObjectType, v9);
    swift_unknownObjectRelease_n();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26CD2B170()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = sub_26CC31EA8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDA0, &qword_26CD4AA98);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 112) = v3;
  sub_26CC1964C();
  *(v1 + 120) = sub_26CD3AACC();
  *(v1 + 128) = 512;
  return v1;
}

uint64_t NetworkManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NetworkManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26CD2B2A0()
{
  if (qword_280BBB0C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD2B304(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26CD2B3B8;

  return sub_26CD2BB90(a2);
}

uint64_t sub_26CD2B3B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_26CD2B4C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26CD39D0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 24))(ObjectType, a3);
  v11 = sub_26CD39CFC();
  (*(v7 + 8))(v9, v6);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a1;
  result = sub_26CD39584(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *a1 = v15;
  return result;
}

uint64_t sub_26CD2B618@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_26CD39D0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(ObjectType, a2);
  v10 = sub_26CD39CFC();
  (*(v6 + 8))(v8, v5);
  result = sub_26CD2BA48(v10);
  *a3 = result;
  a3[1] = v12;
  return result;
}

uint64_t sub_26CD2B738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26CC181C4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26CD37000();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
    v19 = *(v12 - 8);
    sub_26CD2C6C8(v11 + *(v19 + 72) * v8, a3);
    sub_26CD380DC(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_26CD2B890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26CCCA7E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26CD373D8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_26CD3A20C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_26CD38484(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_26CD2BA48(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26CCCA6D8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26CD37A94();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_26CD38790(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_26CD2BADC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26CCCA6D8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26CD37BF8();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 32 * v5);
  sub_26CD38900(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_26CD2BB90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for UTSNetworkRequest(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2BC3C, v1, 0);
}

uint64_t sub_26CD2BC3C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v4[7];
  v7 = sub_26CD39D0C();
  (*(*(v7 - 8) + 16))(&v2[v6], v5, v7);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_26CD3A59C();
  v10 = [v8 integerForKey_];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 91;
  }

  sub_26CD3A1FC();
  v2[v4[6]] = 0;
  *&v2[v4[8]] = v11;
  *v2 = 0;
  sub_26CCC2438(v2, v1);
  type metadata accessor for AMSRequestHandler(0);
  v12 = swift_allocObject();
  sub_26CCC2438(v1, v3);
  v13 = sub_26CD32DB4(v3, v12);
  v0[8] = v13;
  sub_26CCC249C(v1);
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_26CD2BE20;

  return sub_26CD2A904(v13, &off_287E05C08);
}

uint64_t sub_26CD2BE20(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_26CD2BFF0;
  }

  else
  {
    v4[11] = a1;
    v6 = sub_26CD2BF5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD2BF5C()
{
  v1 = v0[7];

  sub_26CCC249C(v1);

  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_26CD2BFF0()
{
  v1 = *(v0 + 56);

  sub_26CCC249C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26CD2C09C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26CD39CFC();
  result = sub_26CD2BA48(v3);
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_26CD2C0E8()
{
  result = qword_2804BDD68;
  if (!qword_2804BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDD68);
  }

  return result;
}

unint64_t sub_26CD2C140(uint64_t a1, uint64_t a2)
{
  result = qword_2804BDD70;
  if (!qword_2804BDD70)
  {
    type metadata accessor for NetworkManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDD70);
  }

  return result;
}

uint64_t sub_26CD2C1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26CC246B8;

  return v11(a1, a2, a3, a4);
}

void sub_26CD2C374(uint64_t a1)
{
  sub_26CD2C418(319);
  if (v1 <= 0x3F)
  {
    sub_26CD39D0C();
    if (v2 <= 0x3F)
    {
      sub_26CD3A20C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26CD2C418(uint64_t a1)
{
  if (!qword_2804BDD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCC30, &qword_26CD46430);
    v1 = sub_26CD3AADC();
    if (!v2)
    {
      atomic_store(v1, &qword_2804BDD88);
    }
  }
}

void sub_26CD2C4A4(uint64_t a1)
{
  sub_26CD2C418(319);
  if (v1 <= 0x3F)
  {
    sub_26CD3A20C();
    if (v2 <= 0x3F)
    {
      sub_26CD39D0C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26CD2C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC246B8;

  return v9(a1, a2, a3);
}

uint64_t sub_26CD2C6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CD2C738(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = type metadata accessor for UTSNetworkRequest(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = sub_26CD39D0C();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2C840, v1, 0);
}

uint64_t sub_26CD2C840()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  v5 = *(v2 + 16);
  v0[19] = v5;
  v0[20] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  if (qword_2804BBA20 != -1)
  {
    swift_once();
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v9 = off_2804BC780;
  v0[21] = off_2804BC780;
  v10 = type metadata accessor for LocationService();
  v0[22] = v10;
  type metadata accessor for UTSNetworkRequestDecorator(0);
  v11 = swift_allocObject();
  v0[23] = v11;
  (*(v7 + 32))(v11 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v6, v8);
  v12 = (v11 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient);
  *v12 = v9;
  v12[3] = v10;
  v12[4] = &off_287DFFFE0;

  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_26CD2C9C8;

  return sub_26CD04640();
}

uint64_t sub_26CD2C9C8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_26CD2CEAC;
  }

  else
  {
    v4 = sub_26CD2CAE4;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD2CAE4()
{
  v1 = *(v0 + 88);
  *(v0 + 208) = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_26CD2CB70, v1, 0);
}

uint64_t sub_26CD2CB70()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  (*(v0 + 152))(&v3[v6[7]], *(v0 + 184) + *(v0 + 208), *(v0 + 128));
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_26CD3A59C();
  v9 = [v7 integerForKey_];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 91;
  }

  sub_26CD3A1FC();
  v3[v6[6]] = 0;
  *&v3[v6[8]] = v10;
  *v3 = 0;
  sub_26CCC2438(v3, v4);
  type metadata accessor for AMSRequestHandler(0);
  v11 = swift_allocObject();
  sub_26CCC2438(v4, v5);
  v12 = sub_26CD32DB4(v5, v11);
  *(v0 + 216) = v12;
  sub_26CCC249C(v4);
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_287DFFFE0;
  *(v0 + 16) = v2;

  v13 = swift_task_alloc();
  *(v0 + 224) = v13;
  *v13 = v0;
  v13[1] = sub_26CD2CD5C;
  v14 = *(v0 + 80);

  return sub_26CD2E0E4(v14, v12, &off_287E05C08);
}

uint64_t sub_26CD2CD5C(uint64_t a1)
{
  v4 = *v2;
  v4[29] = v1;

  v5 = v4[11];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v6 = sub_26CD2D078;
  }

  else
  {
    v4[30] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v6 = sub_26CD2CF40;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD2CEAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD2CF40()
{
  v1 = v0[23];
  v2 = v0[17];
  v4 = v0[15];
  v3 = v0[16];

  swift_setDeallocating();
  (*(v2 + 8))(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v3);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  swift_deallocClassInstance();
  sub_26CCC249C(v4);

  v5 = v0[1];
  v6 = v0[30];

  return v5(v6);
}

uint64_t sub_26CD2D078()
{
  v1 = *(v0 + 120);

  sub_26CCC249C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t UTSNetworkManager.execute(request:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = type metadata accessor for UTSNetworkRequest(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v3 = sub_26CD39D0C();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2D22C, v1, 0);
}

uint64_t sub_26CD2D22C(uint64_t a1)
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && (v2 = qword_280BBAD00) != 0)
  {
    v3 = qword_280BBACF8;
    *(v1 + 40) = &type metadata for FeatureFlagManager;
    *(v1 + 48) = sub_26CC30530();
    *(v1 + 16) = 0;

    v4 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    if (v4 & 1) != 0 || (sub_26CC2016C(v3, v2, *(*(v1 + 144) + 144)))
    {
      v6 = *(v1 + 192);
      v5 = *(v1 + 200);
      v7 = *(v1 + 184);
      v8 = *(v1 + 136);

      v9 = *(v6 + 16);
      *(v1 + 208) = v9;
      *(v1 + 216) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v5, v8, v7);
      if (qword_2804BBA20 != -1)
      {
        swift_once();
      }

      v11 = *(v1 + 192);
      v10 = *(v1 + 200);
      v12 = *(v1 + 184);
      v13 = off_2804BC780;
      *(v1 + 224) = off_2804BC780;
      v14 = type metadata accessor for LocationService();
      *(v1 + 232) = v14;
      type metadata accessor for UTSNetworkRequestDecorator(0);
      v15 = swift_allocObject();
      *(v1 + 240) = v15;
      (*(v11 + 32))(v15 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v10, v12);
      v16 = v15 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient;
      *v16 = v13;
      *(v16 + 8) = *(v1 + 120);
      *(v16 + 24) = v14;
      *(v16 + 32) = &off_287DFFFE0;

      v17 = swift_task_alloc();
      *(v1 + 248) = v17;
      *v17 = v1;
      v17[1] = sub_26CD2D794;

      return sub_26CD04640();
    }

    else
    {
      return sub_26CD3AD2C();
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v19 = *(v1 + 144);
    v20 = qword_280BBCBE0;
    v21 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD3C1E0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v22 + 56) = v23;
    v24 = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v22 + 64) = v24;
    *(v22 + 32) = &unk_287DFA580;
    sub_26CD3A3DC(v21, &dword_26CC14000, v20, "%@", 2, 2, v22);

    v25 = *(v19 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    v27 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v27);

    MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD53350);
    *(v26 + 32) = 0x2074736575716552;
    *(v26 + 40) = 0xE800000000000000;
    v28 = sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26CD3C1E0;
    *(v29 + 56) = v23;
    *(v29 + 64) = v24;
    *(v29 + 32) = v26;
    sub_26CD3A3DC(v28, &dword_26CC14000, v25, "%@", 2, 2, v29);

    sub_26CD044E0();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();

    v31 = *(v1 + 8);

    return v31();
  }
}

uint64_t sub_26CD2D794()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_26CD2DC78;
  }

  else
  {
    v4 = sub_26CD2D8B0;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD2D8B0()
{
  v1 = *(v0 + 144);
  *(v0 + 264) = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_26CD2D93C, v1, 0);
}

uint64_t sub_26CD2D93C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 176);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  (*(v0 + 208))(&v3[v6[7]], *(v0 + 240) + *(v0 + 264), *(v0 + 184));
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_26CD3A59C();
  v9 = [v7 integerForKey_];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 91;
  }

  sub_26CD3A1FC();
  v3[v6[6]] = 0;
  *&v3[v6[8]] = v10;
  *v3 = 0;
  sub_26CCC2438(v3, v4);
  type metadata accessor for AMSRequestHandler(0);
  v11 = swift_allocObject();
  sub_26CCC2438(v4, v5);
  v12 = sub_26CD32DB4(v5, v11);
  *(v0 + 272) = v12;
  sub_26CCC249C(v4);
  *(v0 + 80) = v1;
  *(v0 + 88) = &off_287DFFFE0;
  *(v0 + 56) = v2;

  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_26CD2DB28;
  v14 = *(v0 + 136);

  return sub_26CD2E0E4(v14, v12, &off_287E05C08);
}

uint64_t sub_26CD2DB28(uint64_t a1)
{
  v4 = *v2;
  v4[36] = v1;

  v5 = v4[18];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 7);
    v6 = sub_26CD2DEC4;
  }

  else
  {
    v4[37] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 7);
    v6 = sub_26CD2DD8C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD2DC78()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[24];
  swift_setDeallocating();
  (*(v3 + 8))(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v2);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  swift_deallocClassInstance();

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CD2DD8C()
{
  v1 = v0[30];
  v2 = v0[24];
  v4 = v0[22];
  v3 = v0[23];

  swift_setDeallocating();
  (*(v2 + 8))(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v3);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  swift_deallocClassInstance();
  sub_26CCC249C(v4);

  v5 = v0[1];
  v6 = v0[37];

  return v5(v6);
}

uint64_t sub_26CD2DEC4()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];

  swift_setDeallocating();
  (*(v3 + 8))(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v2);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  swift_deallocClassInstance();
  sub_26CCC249C(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CD2DFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26CD3B0FC();
  sub_26CD3A54C();
  v6 = sub_26CD3B13C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26CD2E0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_26CD39D0C();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2E1E8, v3, 0);
}

uint64_t sub_26CD2E1E8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v25 = v1;
  v26 = v0[7];
  v8 = v0[5];
  v27 = v8;
  v9 = sub_26CD3A86C();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = (*(v4 + 16))(v2, v8, v6);
  v12 = sub_26CD33038(v10, v11);
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = v5;
  *(v15 + 3) = v12;
  *(v15 + 4) = v5;
  (*(v4 + 32))(&v15[v13], v2, v6);
  v16 = &v15[v14];
  *v16 = v7;
  *(v16 + 1) = v26;
  swift_retain_n();
  swift_unknownObjectRetain();
  v17 = sub_26CD27B78(0, 0, v25, &unk_26CD4ACD8, v15);
  v0[14] = v17;
  v18 = *(v5 + 112);
  v19 = swift_task_alloc();
  v19[2] = v27;
  v19[3] = v7;
  v19[4] = v26;
  v19[5] = v17;

  os_unfair_lock_lock((v18 + 24));
  sub_26CD33294((v18 + 16));
  os_unfair_lock_unlock((v18 + 24));

  v20 = swift_task_alloc();
  v0[15] = v20;
  v21 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  v0[16] = v22;
  *v20 = v0;
  v20[1] = sub_26CD2E49C;
  v23 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v17, v21, v22, v23);
}

uint64_t sub_26CD2E49C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_26CD2E650;
  }

  else
  {
    v4 = sub_26CD2E5C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD2E5C8()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26CD2E650()
{
  v9 = v0;
  v1 = *(v0 + 136);
  *(v0 + 24) = v1;
  v2 = v1;
  sub_26CC18080(0, &qword_280BB9BA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);

    v5 = *(v3 + 112);
    *(swift_task_alloc() + 16) = v4;

    os_unfair_lock_lock(v5 + 6);
    sub_26CD33318(v8);
    os_unfair_lock_unlock(v5 + 6);
    sub_26CD330D8(v8[0], v8[1], v8[2], v8[3]);

    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26CD2E7BC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = type metadata accessor for UTSNetworkRequest(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = sub_26CD39D0C();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD2E8D0, v1, 0);
}

uint64_t sub_26CD2E8D0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[10];
  v5 = *(v3 + 16);
  v0[20] = v5;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_2804BBA20 != -1)
  {
    swift_once();
  }

  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = off_2804BC780;
  v0[22] = off_2804BC780;
  v10 = type metadata accessor for LocationService();
  v0[23] = v10;
  type metadata accessor for UTSNetworkRequestDecorator(0);
  v11 = swift_allocObject();
  v0[24] = v11;
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v6, v7);
  v12 = (v11 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient);
  *v12 = v9;
  v12[3] = v10;
  v12[4] = &off_287DFFFE0;

  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = sub_26CD2EA58;

  return sub_26CD04640();
}

uint64_t sub_26CD2EA58()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_26CD2EF68;
  }

  else
  {
    v4 = sub_26CD2EB74;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD2EB74()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  v2(v3, v1 + v6, v4);

  return MEMORY[0x2822009F8](sub_26CD2EC30, v5, 0);
}

uint64_t sub_26CD2EC30()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  (*(v0 + 160))(&v3[v6[7]], *(v0 + 144), *(v0 + 128));
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_26CD3A59C();
  v9 = [v7 integerForKey_];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 91;
  }

  sub_26CD3A1FC();
  v3[v6[6]] = 0;
  *&v3[v6[8]] = v10;
  *v3 = 0;
  sub_26CCC2438(v3, v4);
  type metadata accessor for AMSRequestHandler(0);
  v11 = swift_allocObject();
  sub_26CCC2438(v4, v5);
  v12 = sub_26CD32DB4(v5, v11);
  *(v0 + 216) = v12;
  sub_26CCC249C(v4);
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_287DFFFE0;
  *(v0 + 16) = v1;

  v13 = swift_task_alloc();
  *(v0 + 224) = v13;
  *v13 = v0;
  v13[1] = sub_26CD2EE18;
  v14 = *(v0 + 144);

  return sub_26CD2E0E4(v14, v12, &off_287E05C08);
}

uint64_t sub_26CD2EE18(uint64_t a1)
{
  v4 = *v2;
  v4[29] = v1;

  v5 = v4[11];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v6 = sub_26CD2F16C;
  }

  else
  {
    v4[30] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v6 = sub_26CD2F00C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD2EF68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD2F00C()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];

  swift_setDeallocating();
  v6 = *(v4 + 8);
  v6(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v3);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  swift_deallocClassInstance();
  v6(v2, v3);
  sub_26CCC249C(v5);

  v7 = v0[1];
  v8 = v0[30];

  return v7(v8);
}

uint64_t sub_26CD2F16C()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);
  sub_26CCC249C(v4);

  v5 = v0[1];

  return v5();
}

uint64_t UTSNetworkManager.cancel(request:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26CD2F264, v1, 0);
}

uint64_t sub_26CD2F264(uint64_t a1)
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && (v2 = qword_280BBAD00) != 0)
  {
    v3 = qword_280BBACF8;
    v1[5] = &type metadata for FeatureFlagManager;
    v1[6] = sub_26CC30530();
    *(v1 + 16) = 0;

    v4 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);
    if ((v4 & 1) == 0 && (sub_26CC2016C(v3, v2, *(v1[8] + 144)) & 1) == 0)
    {
      return sub_26CD3AD2C();
    }

    v5 = v1[7];
    v6 = v1[8];

    v7 = *(v6 + 128);
    sub_26CD3AC6C();

    v8 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v8);

    MEMORY[0x26D6AD060](0xD000000000000016, 0x800000026CD532C0);
    v9 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_26CC19E10();
    *(v10 + 32) = 0x3A74736575716552;
    *(v10 + 40) = 0xE900000000000020;
    sub_26CD3A3DC(v9, &dword_26CC14000, v7, "%@", 2, 2, v10);

    v11 = *(v6 + 112);
    *(swift_task_alloc() + 16) = v5;

    os_unfair_lock_lock((v11 + 24));
    sub_26CD32F18((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v12 = v1[8];
    v13 = qword_280BBCBE0;
    v14 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 56) = v16;
    v17 = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v15 + 64) = v17;
    *(v15 + 32) = &unk_287DFA580;
    sub_26CD3A3DC(v14, &dword_26CC14000, v13, "%@", 2, 2, v15);

    v18 = *(v12 + 128);
    v19 = sub_26CD3A98C();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_26CD3C1E0;
    *(v20 + 56) = v16;
    *(v20 + 64) = v17;
    *(v20 + 32) = &unk_287DFC9D0;
    sub_26CD3A3DC(v19, &dword_26CC14000, v18, "%@", 2, 2, v20);
  }

  v21 = v1[1];

  return v21();
}

uint64_t UTSNetworkManager.fetchConfiguration(forceConfig:)(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 89) = a1;
  return MEMORY[0x2822009F8](sub_26CD2F6D8, v1, 0);
}

uint64_t sub_26CD2F6D8(uint64_t a1)
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && (v2 = qword_280BBAD00) != 0)
  {
    v3 = qword_280BBACF8;
    *(v1 + 40) = &type metadata for FeatureFlagManager;
    *(v1 + 48) = sub_26CC30530();
    *(v1 + 16) = 0;

    v4 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    if (v4 & 1) != 0 || (sub_26CC2016C(v3, v2, *(*(v1 + 56) + 144)))
    {
      v5 = *(v1 + 56);
      v6 = *(v1 + 89);

      *(v1 + 64) = *(v5 + 120);
      *(v1 + 88) = (v6 & 1) == 0;

      v7 = swift_task_alloc();
      *(v1 + 72) = v7;
      *v7 = v1;
      v7[1] = sub_26CD2FAAC;

      return sub_26CD15604((v1 + 88), 0.0);
    }

    else
    {
      return sub_26CD3AD2C();
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v9 = *(v1 + 56);
    v10 = qword_280BBCBE0;
    v11 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26CD3C1E0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v12 + 56) = v13;
    v14 = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v12 + 64) = v14;
    *(v12 + 32) = &unk_287DFA580;
    sub_26CD3A3DC(v11, &dword_26CC14000, v10, "%@", 2, 2, v12);

    v15 = *(v9 + 128);
    v16 = sub_26CD3A98C();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26CD3C1E0;
    *(v17 + 56) = v13;
    *(v17 + 64) = v14;
    *(v17 + 32) = &unk_287DFCA00;
    sub_26CD3A3DC(v16, &dword_26CC14000, v15, "%@", 2, 2, v17);

    sub_26CD044E0();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();
    v19 = *(v1 + 8);

    return v19();
  }
}

uint64_t sub_26CD2FAAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v6 = *(v4 + 56);

    return MEMORY[0x2822009F8](sub_26CD2FC0C, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_26CD2FC24()
{
  result = sub_26CD3A59C();
  qword_280BB9BC8 = result;
  return result;
}

uint64_t sub_26CD2FC80()
{
  result = sub_26CD3A59C();
  qword_2804BDDA8 = result;
  return result;
}

void QueryParamKey.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  *a3 = v4 != 0;
}

uint64_t sub_26CD2FD54()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CD2FDA8(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

void sub_26CD2FDEC(BOOL *a2@<X8>)
{
  v3 = sub_26CD3AD9C();

  *a2 = v3 != 0;
}

uint64_t sub_26CD2FE60()
{
  type metadata accessor for UTSNetworkManager();
  swift_allocObject();
  result = sub_26CD314B8();
  qword_280BBAA80 = result;
  return result;
}

uint64_t static UTSNetworkManager.shared.getter()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }
}

uint64_t UTSNetworkManager.execute(from:)(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD58, &qword_26CD4A7A8);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for UTSNetworkRequest(0);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = sub_26CD39D0C();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD30088, v1, 0);
}

uint64_t sub_26CD30088(uint64_t a1)
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && (v2 = qword_280BBAD00) != 0)
  {
    v3 = qword_280BBACF8;
    *(v1 + 40) = &type metadata for FeatureFlagManager;
    *(v1 + 48) = sub_26CC30530();
    *(v1 + 16) = 0;

    v4 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    if (v4 & 1) != 0 || (sub_26CC2016C(v3, v2, *(*(v1 + 184) + 144)))
    {
      v5 = *(v1 + 176);

      v6 = v5[3];
      v7 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v7 + 8))(v6, v7);
      if (qword_2804BBA20 != -1)
      {
        swift_once();
      }

      v8 = *(v1 + 272);
      v9 = *(v1 + 248);
      v10 = *(v1 + 256);
      v11 = off_2804BC780;
      *(v1 + 288) = off_2804BC780;
      v12 = type metadata accessor for LocationService();
      *(v1 + 296) = v12;
      type metadata accessor for UTSNetworkRequestDecorator(0);
      v13 = swift_allocObject();
      *(v1 + 304) = v13;
      (*(v10 + 32))(v13 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v8, v9);
      v14 = v13 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient;
      *v14 = v11;
      *(v14 + 8) = *(v1 + 160);
      *(v14 + 24) = v12;
      *(v14 + 32) = &off_287DFFFE0;

      v15 = swift_task_alloc();
      *(v1 + 312) = v15;
      *v15 = v1;
      v15[1] = sub_26CD30688;

      return sub_26CD04640();
    }

    else
    {
      return sub_26CD3AD2C();
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v17 = *(v1 + 256);
    v18 = *(v1 + 264);
    v36 = *(v1 + 248);
    v20 = *(v1 + 176);
    v19 = *(v1 + 184);
    v21 = qword_280BBCBE0;
    v22 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26CD3C1E0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v23 + 56) = v37;
    v24 = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v23 + 64) = v24;
    *(v23 + 32) = &unk_287DFA580;
    sub_26CD3A3DC(v22, &dword_26CC14000, v21, "%@", 2, 2, v23);

    v25 = *(v19 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    v27 = v20[3];
    v28 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v27);
    (*(v28 + 8))(v27, v28);
    v29 = sub_26CD39C2C();
    v31 = v30;
    (*(v17 + 8))(v18, v36);
    MEMORY[0x26D6AD060](v29, v31);

    MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD53350);
    *(v26 + 32) = 0x2074736575716552;
    *(v26 + 40) = 0xE800000000000000;
    v32 = sub_26CD3A98C();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26CD3C1E0;
    *(v33 + 56) = v37;
    *(v33 + 64) = v24;
    *(v33 + 32) = v26;
    sub_26CD3A3DC(v32, &dword_26CC14000, v25, "%@", 2, 2, v33);

    sub_26CD044E0();
    swift_allocError();
    *v34 = 6;
    swift_willThrow();

    v35 = *(v1 + 8);

    return v35();
  }
}

uint64_t sub_26CD30688()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = sub_26CD30E54;
  }

  else
  {
    v4 = sub_26CD307A4;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD307A4()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[23];
  v6 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[41] = v7;
  v0[42] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);
  swift_setDeallocating();
  v8 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  v9 = *(v4 + 8);
  v0[43] = v9;
  v0[44] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1 + v8, v3);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_26CD308FC, v5, 0);
}

uint64_t sub_26CD308FC()
{
  v1 = v0[26];
  sub_26CC19A84(v0[22], (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD60, &qword_26CD4A7B0);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[41];
    v43 = v0[36];
    v5 = v0[35];
    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[29];
    v39 = v0[28];
    v41 = v0[27];
    v42 = v0[37];
    v10 = v0[24];
    v9 = v0[25];
    v11 = v0[22];
    v3(v10, 0, 1, v9);
    sub_26CD32F34(v10, v7);
    v4(v8 + v9[7], v5, v6);
    v12 = v11[3];
    v13 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v12);
    LOBYTE(v12) = (*(v13 + 24))(v12, v13);
    v14 = *(v7 + v9[8]);
    v15 = v11[3];
    v16 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v15);
    v17 = (*(v16 + 32))(v15, v16);
    sub_26CD3A1FC();
    *(v8 + v9[6]) = v12 & 1;
    *(v8 + v9[8]) = v14;
    *v8 = v17;
    sub_26CCC2438(v8, v39);
    type metadata accessor for AMSRequestHandler(0);
    v18 = swift_allocObject();
    sub_26CCC2438(v39, v41);
    v19 = sub_26CD32DB4(v41, v18);
    v0[45] = v19;
    sub_26CCC249C(v39);
    v0[15] = v42;
    v0[16] = &off_287DFFFE0;
    v0[12] = v43;

    v20 = swift_task_alloc();
    v0[46] = v20;
    *v20 = v0;
    v20[1] = sub_26CD30FA0;
    v21 = v0[35];

    return sub_26CD2E0E4(v21, v19, &off_287E05C08);
  }

  else
  {
    v40 = v0[43];
    v44 = v0[35];
    v23 = v0[33];
    v24 = v0[31];
    v25 = v0[24];
    v27 = v0[22];
    v26 = v0[23];
    v3(v25, 1, 1, v0[25]);
    sub_26CC1B544(v25, &qword_2804BDD58, &qword_26CD4A7A8);
    v28 = *(v26 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0x2074736575716552, 0xE800000000000000);
    v30 = v27[3];
    v31 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v30);
    (*(v31 + 8))(v30, v31);
    v32 = sub_26CD39C2C();
    v34 = v33;
    v40(v23, v24);
    MEMORY[0x26D6AD060](v32, v34);

    MEMORY[0x26D6AD060](0xD000000000000031, 0x800000026CD533B0);
    *(v29 + 32) = 0;
    *(v29 + 40) = 0xE000000000000000;
    v35 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v36 + 32) = v29;
    sub_26CD3A3DC(v35, &dword_26CC14000, v28, "%@", 2, 2, v36);

    sub_26CD044E0();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();
    v40(v44, v24);

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_26CD30E54()
{
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[32];
  swift_setDeallocating();
  (*(v3 + 8))(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request, v2);
  sub_26CC1B544(v1 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  swift_deallocClassInstance();

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CD30FA0(uint64_t a1)
{
  v4 = *v2;
  v4[47] = v1;

  v5 = v4[23];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 12);
    v6 = sub_26CD311F4;
  }

  else
  {
    v4[48] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 12);
    v6 = sub_26CD310F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD310F0()
{
  v1 = v0[43];
  v2 = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];

  sub_26CCC249C(v4);
  v1(v2, v3);
  sub_26CCC249C(v5);

  v6 = v0[1];
  v7 = v0[48];

  return v6(v7);
}

uint64_t sub_26CD311F4()
{
  v1 = v0[43];
  v2 = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];

  sub_26CCC249C(v4);
  v1(v2, v3);
  sub_26CCC249C(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CD312EC(uint64_t *a1)
{
  v2 = sub_26CD39CFC();
  v4 = sub_26CD313F4(v14, v2);
  if (*v3)
  {
    *(v3 + 16) = 1;
  }

  (v4)(v14, 0);
  result = sub_26CD39CFC();
  v6 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_26CCCA6D8(result);
    if (v7)
    {
      v8 = *(v6 + 56) + 32 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      swift_unknownObjectRetain_n();

      sub_26CD330D8(v9, v10, v11, v12);
      ObjectType = swift_getObjectType();
      (*(v10 + 32))(ObjectType, v10);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t (*sub_26CD313F4(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_26CD32A34(v4, a2);
  return sub_26CD3146C;
}

void sub_26CD3146C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26CD314B8()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = sub_26CC31FC0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDD0, &unk_26CD4ACC0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v1 + 112) = v3;
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  *(v1 + 120) = qword_280BBCC18;
  sub_26CC18080(0, &qword_280BBB710, 0x277D86200);

  *(v1 + 128) = sub_26CD3AACC();
  *(v1 + 136) = 512;
  v4 = sub_26CC78CF4(&unk_287DFA5B0);
  swift_arrayDestroy();
  *(v1 + 144) = v4;
  return v1;
}

uint64_t UTSNetworkManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t UTSNetworkManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26CD31694()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD316F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26CD2B3B8;

  return UTSNetworkManager.execute(request:)(a2);
}

unint64_t sub_26CD3178C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_26CD39CFC();
  swift_unknownObjectRetain();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  result = sub_26CD396E4(a3, a4, 0, a5, v9, isUniquelyReferenced_nonNull_native);
  *a1 = v12;
  return result;
}

uint64_t sub_26CD3182C(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return MEMORY[0x2822009F8](sub_26CD3184C, v1, 0);
}

uint64_t sub_26CD3184C()
{
  v1 = *(v0 + 208);
  if (!v1)
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_26CC1B544(v0 + 96, &qword_2804BBDA8, &qword_26CD3D5F0);
    v6 = 0;
    v5 = 0;
    goto LABEL_18;
  }

  strcpy((v0 + 176), "x-apple-utsk");
  *(v0 + 189) = 0;
  *(v0 + 190) = -5120;
  sub_26CD3ABFC();
  if (*(v1 + 16) && (v2 = sub_26CCCA694(v0 + 56), (v3 & 1) != 0))
  {
    sub_26CC168C0(*(v1 + 56) + 32 * v2, v0 + 96);
    sub_26CC579C4(v0 + 56);
    if (*(v0 + 120))
    {
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = *(v0 + 192);
      }

      else
      {
        v5 = 0;
      }

      if (v4)
      {
        v6 = *(v0 + 200);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_26CC579C4(v0 + 56);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_26CC1B544(v0 + 96, &qword_2804BBDA8, &qword_26CD3D5F0);
  v6 = 0;
  v5 = 0;
LABEL_13:
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x800000026CD534C0;
  sub_26CD3ABFC();
  if (*(v1 + 16))
  {
    v7 = sub_26CCCA694(v0 + 16);
    if (v8)
    {
      sub_26CC168C0(*(v1 + 56) + 32 * v7, v0 + 128);
      sub_26CC579C4(v0 + 16);
      v9 = *(v0 + 152) != 0;
      goto LABEL_19;
    }
  }

  sub_26CC579C4(v0 + 16);
LABEL_18:
  v9 = 0;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
LABEL_19:
  *(v0 + 281) = v9;
  *(v0 + 224) = v6;
  *(v0 + 232) = v5;
  sub_26CC1B544(v0 + 128, &qword_2804BBDA8, &qword_26CD3D5F0);
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC18;
  *(v0 + 240) = qword_280BBCC18;

  return MEMORY[0x2822009F8](sub_26CD31AA4, v10, 0);
}

uint64_t sub_26CD31AA4()
{
  v1 = v0[27];

  v3 = sub_26CD1B244(v2);
  v5 = v4;

  v0[31] = v3;
  v0[32] = v5;

  return MEMORY[0x2822009F8](sub_26CD31B38, v1, 0);
}

uint64_t sub_26CD31B38()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 256);
  if (!v1)
  {
LABEL_12:

    if (*(v0 + 281) == 1)
    {
      v6 = 0;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (!v2)
  {

    v6 = 1;
    goto LABEL_14;
  }

  if (v1 == v2 && *(v0 + 232) == *(v0 + 248))
  {

    goto LABEL_12;
  }

  v4 = *(v0 + 281);
  v5 = sub_26CD3AFDC();

  v6 = (v5 & 1) == 0;
  if (v5 & 1) == 0 || (v4)
  {
LABEL_14:
    *(v0 + 282) = v6;
    *(v0 + 280) = 0;
    v7 = swift_task_alloc();
    *(v0 + 264) = v7;
    *v7 = v0;
    v7[1] = sub_26CD31CB8;

    return sub_26CD15604((v0 + 280), 0.0);
  }

LABEL_17:
  v9 = *(v0 + 8);

  return v9(2);
}

uint64_t sub_26CD31CB8(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v6 = *(v4 + 216);

    return MEMORY[0x2822009F8](sub_26CD31E0C, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);
    v8 = *(v4 + 282);

    return v7(v8);
  }
}

uint64_t sub_26CD31E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_26CD31E4C, a4, 0);
}

uint64_t sub_26CD31E4C()
{
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = 1;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26CD31F24;

  return sub_26CD15604((v0 + 88), 0.0);
}

uint64_t sub_26CD31F24(void *a1)
{
  v4 = *v2;
  v4[8] = v1;

  if (v1)
  {
    v5 = v4[3];

    return MEMORY[0x2822009F8](sub_26CD3221C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v4[9] = v6;
    *v6 = v4;
    v6[1] = sub_26CD320AC;
    v7 = v4[5];
    v8 = v4[6];
    v9 = v4[4];

    return sub_26CD32234(v9, v7, v8);
  }
}

uint64_t sub_26CD320AC(uint64_t a1)
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
    v8 = *(v4 + 24);
    *(v4 + 80) = a1;

    return MEMORY[0x2822009F8](sub_26CD321F8, v8, 0);
  }
}

uint64_t sub_26CD32234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26CD32258, v3, 0);
}

uint64_t sub_26CD32258()
{
  v11 = v0[4];
  v1 = *(v0[5] + 128);
  v0[6] = v1;
  sub_26CD3AC6C();

  v2 = sub_26CD39C2C();
  MEMORY[0x26D6AD060](v2);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  v3 = sub_26CD3A99C();
  v0[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  v5 = sub_26CC19E10();
  v0[8] = v5;
  *(v4 + 64) = v5;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x800000026CD53330;
  sub_26CD3A3DC(v3, &dword_26CC14000, v1, "%@", 2, 2, v4);

  ObjectType = swift_getObjectType();
  v10 = (*(v11 + 40) + **(v11 + 40));
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_26CD32488;
  v8 = v0[4];

  return v10(ObjectType, v8);
}

uint64_t sub_26CD32488(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[5];

    return MEMORY[0x2822009F8](sub_26CD325D0, v7, 0);
  }
}

void sub_26CD325D0()
{
  v10 = v0;
  v1 = v0[11];
  v2 = v0[2];
  v3 = *(v0[5] + 112);
  *(swift_task_alloc() + 16) = v2;

  os_unfair_lock_lock(v3 + 6);
  sub_26CD332B4(v9);
  os_unfair_lock_unlock(v3 + 6);
  if (!v1)
  {
    v4 = v0[10];
    sub_26CD330D8(v9[0], v9[1], v9[2], v9[3]);

    v5 = [v4 responseHeaders];
    if (v5)
    {
      v6 = v5;
      v7 = sub_26CD3A4FC();
    }

    else
    {
      v7 = 0;
    }

    v0[12] = v7;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_26CD32748;

    sub_26CD3182C(v7);
  }
}

uint64_t sub_26CD32748()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_26CD329C4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_26CD32870;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CD32870()
{
  v1 = v0[8];
  v2 = v0[6];
  sub_26CD3AC6C();

  v3 = sub_26CD39C2C();
  MEMORY[0x26D6AD060](v3);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  v4 = sub_26CD3A99C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = v1;
  *(v5 + 32) = 0xD000000000000020;
  *(v5 + 40) = 0x800000026CD53490;
  sub_26CD3A3DC(v4, &dword_26CC14000, v2, "%@", 2, 2, v5);

  v6 = v0[1];
  v7 = v0[10];

  return v6(v7);
}

uint64_t sub_26CD329C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void (*sub_26CD32A34(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_26CD32D80(v5);
  v5[9] = sub_26CD32B38(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_26CD32AD8;
}

void sub_26CD32AD8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26CD32B38(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 32) = a2;
  *(v8 + 40) = v3;
  v10 = *v3;
  v11 = sub_26CCCA6D8(a2);
  *(v9 + 56) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_26CD37BF8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_26CD36168(v16, a3 & 1);
    v11 = sub_26CCCA6D8(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_26CD3B02C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 48) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 32 * v11;
    v22 = *v21;
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v22 = 0uLL;
  }

  *v9 = v22;
  *(v9 + 16) = v23;
  *(v9 + 24) = v24;
  return sub_26CD32C98;
}

void sub_26CD32C98(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = *(*a1 + 56);
  if (v2)
  {
    v7 = v1[6];
    v8 = *v1[5];
    if (v6)
    {
      v9 = v8[7] + 32 * v7;
      *v9 = v2;
      *(v9 + 8) = v3;
      *(v9 + 16) = v4 & 1;
      *(v9 + 24) = v5;
    }

    else
    {
      sub_26CD39A80(v7, v1[4], v2, v3, v4 & 1, v5, v8);
    }
  }

  else if ((*a1)[7])
  {
    sub_26CD38900(v1[6], *v1[5]);
  }

  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  sub_26CD33118(v2, v3, v4, v5);
  sub_26CD330D8(v10, v11, v12, v13);

  free(v1);
}

uint64_t (*sub_26CD32D80(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26CD32DA8;
}

uint64_t sub_26CD32DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTSNetworkRequest(0);
  v14[3] = v4;
  v14[4] = &protocol witness table for UTSNetworkRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_26CD32F34(a1, boxed_opaque_existential_1);
  *(a2 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_sessionTask) = 0;
  sub_26CC19A84(v14, a2 + 16);
  v6 = *(v4 + 28);
  v7 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request;
  v8 = sub_26CD39D0C();
  (*(*(v8 - 8) + 16))(a2 + v7, boxed_opaque_existential_1 + v6, v8);
  v9 = sub_26CD3A59C();
  v10 = sub_26CD3A59C();
  v11 = [objc_opt_self() bagForProfile:v9 profileVersion:v10];

  v12 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  *(a2 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_requestEncoder) = v12;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a2;
}

uint64_t sub_26CD32F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTSNetworkRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD32F9C()
{
  result = qword_2804BDDB0;
  if (!qword_2804BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDDB0);
  }

  return result;
}

unint64_t sub_26CD33038(uint64_t a1, uint64_t a2)
{
  result = qword_2804BDDC8;
  if (!qword_2804BDDC8)
  {
    type metadata accessor for UTSNetworkManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDDC8);
  }

  return result;
}

uint64_t sub_26CD330D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26CD33118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_26CD33158(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26CD39D0C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26CC246B8;

  return sub_26CD31E24(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_26CD332CC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26CD39CFC();
  result = sub_26CD2BADC(v3);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

void *URL.queryParameters.getter()
{
  v0 = sub_26CD39E2C();
  v51 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_26CD39EAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CD39E6C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26CD38BF8(v5);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_26CD39E4C();
  if (!v10)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v41 = v9;
  v42 = v7;
  v43 = v6;
  v11 = v10;
  v50 = *(v10 + 16);
  if (!v50)
  {
    v13 = MEMORY[0x277D84F98];
LABEL_29:

    (*(v42 + 8))(v41, v43);
    return v13;
  }

  v12 = 0;
  v49 = v10 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v48 = v51 + 16;
  v46 = (v51 + 8);
  v13 = MEMORY[0x277D84F98];
  v47 = v2;
  v44 = v10;
  v45 = v0;
  while (v12 < *(v11 + 16))
  {
    (*(v51 + 16))(v2, v49 + *(v51 + 72) * v12, v0);
    v14 = sub_26CD39E0C();
    v16 = v15;
    v17 = sub_26CD39E1C();
    if (!v18)
    {
      v30 = sub_26CC181C4(v14, v16);
      v32 = v31;

      if (v32)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v13;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_26CD365C4();
          v13 = v52;
        }

        sub_26CD37D7C(v30, v13);
      }

      v2 = v47;
      (*v46)(v47, v0);
      goto LABEL_8;
    }

    v19 = v18;
    v20 = v17;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v13;
    v23 = sub_26CC181C4(v14, v16);
    v24 = v13[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_32;
    }

    v27 = v22;
    if (v13[3] >= v26)
    {
      if (v21)
      {
        v2 = v47;
        if ((v22 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_26CD365C4();
        v2 = v47;
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_26CD33B94(v26, v21);
      v28 = sub_26CC181C4(v14, v16);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_34;
      }

      v23 = v28;
      v2 = v47;
      if ((v27 & 1) == 0)
      {
LABEL_23:
        v13 = v52;
        v52[(v23 >> 6) + 8] |= 1 << v23;
        v35 = (v13[6] + 16 * v23);
        *v35 = v14;
        v35[1] = v16;
        v36 = (v13[7] + 16 * v23);
        *v36 = v20;
        v36[1] = v19;
        v0 = v45;
        (*v46)(v2, v45);
        v37 = v13[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_33;
        }

        v13[2] = v39;
        goto LABEL_25;
      }
    }

    v13 = v52;
    v34 = (v52[7] + 16 * v23);
    *v34 = v20;
    v34[1] = v19;

    v0 = v45;
    (*v46)(v2, v45);
LABEL_25:
    v11 = v44;
LABEL_8:
    if (v50 == ++v12)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_26CD3B02C();
  __break(1u);
  return result;
}

uint64_t sub_26CD33828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BDE00, &qword_26CD4AD38);
  v37 = v4;
  result = sub_26CD3AD5C();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 56 * v21;
      if (v37)
      {
        v38 = *(v25 + 8);
        v39 = *(v25 + 24);
        v40 = *v25;
        v44 = *(v25 + 32);
        v41 = *(v25 + 40);
        v42 = *(v25 + 16);
        v43 = *(v25 + 48);
        v45 = *(v25 + 49);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 32);
        v47 = *(v25 + 48);
        v46[1] = v27;
        v46[2] = v28;
        v46[0] = v26;
        v45 = HIBYTE(v47);
        v43 = v47;
        v41 = *(&v28 + 1);
        v44 = v28;
        v39 = *(&v27 + 1);
        v42 = v27;
        v38 = *(&v26 + 1);
        v40 = v26;

        sub_26CD23E38(v46, v48);
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 16) = v42;
      *(v17 + 24) = v39;
      *(v17 + 32) = v44;
      *(v17 + 40) = v41;
      *(v17 + 48) = v43;
      *(v17 + 49) = v45;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26CD33B94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD0, &qword_26CD3CF90);
  v37 = v4;
  result = sub_26CD3AD5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26CD33E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD48, &qword_26CD3D010);
  v33 = v4;
  result = sub_26CD3AD5C();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_26CD3410C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDF8, &qword_26CD4AD30);
  v34 = v4;
  result = sub_26CD3AD5C();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_26CD343B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDF0, &qword_26CD4AD28);
  result = sub_26CD3AD5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_26CD3B0EC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26CD34624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
  v33 = v4;
  result = sub_26CD3AD5C();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_26CC331CC(v24, v34);
      }

      else
      {
        sub_26CC168C0(v24, v34);
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_26CC331CC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26CD348DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDD8, &qword_26CD4AD10);
  v35 = v4;
  result = sub_26CD3AD5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26CD34B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCE0, &qword_26CD3CFA0);
  v34 = v4;
  result = sub_26CD3AD5C();
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

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

uint64_t sub_26CD34E20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDE8, &qword_26CD4AD20);
  v40 = v4;
  result = sub_26CD3AD5C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_26CD2C6C8(v28, v41);
      }

      else
      {
        sub_26CD39B98(v28, v41);
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_26CD2C6C8(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_26CD3515C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDE0, &qword_26CD4AD18);
  v33 = v4;
  result = sub_26CD3AD5C();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_26CC2524C(v24, v34);
      }

      else
      {
        sub_26CC19A84(v24, v34);
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_26CC2524C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26CD35420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_26CD3A20C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD28, &unk_26CD3CFF0);
  v47 = v4;
  result = sub_26CD3AD5C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_26CD39B40();
      result = sub_26CD3A52C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_26CD358A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD8, &qword_26CD3CF98);
  v34 = v4;
  result = sub_26CD3AD5C();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_26CD35B48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8F8, &unk_26CD477D8);
  v40 = v4;
  result = sub_26CD3AD5C();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 136 * v21;
      if (v40)
      {
        v55 = *(v25 + 80);
        v56 = *(v25 + 96);
        v57 = *(v25 + 112);
        v58 = *(v25 + 128);
        v51 = *(v25 + 16);
        v52 = *(v25 + 32);
        v53 = *(v25 + 48);
        v54 = *(v25 + 64);
        v50 = *v25;
      }

      else
      {
        v41 = *v25;
        v26 = *(v25 + 64);
        v28 = *(v25 + 16);
        v27 = *(v25 + 32);
        v44 = *(v25 + 48);
        v45 = v26;
        v42 = v28;
        v43 = v27;
        v30 = *(v25 + 96);
        v29 = *(v25 + 112);
        v31 = *(v25 + 80);
        v49 = *(v25 + 128);
        v47 = v30;
        v48 = v29;
        v46 = v31;

        sub_26CD39AD0(&v41, &v50);
        v56 = v47;
        v57 = v48;
        v58 = v49;
        v52 = v43;
        v53 = v44;
        v54 = v45;
        v55 = v46;
        v50 = v41;
        v51 = v42;
      }

      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 136 * v15;
      *(v17 + 80) = v55;
      *(v17 + 96) = v56;
      *(v17 + 112) = v57;
      *(v17 + 128) = v58;
      *(v17 + 16) = v51;
      *(v17 + 32) = v52;
      *(v17 + 48) = v53;
      *(v17 + 64) = v54;
      *v17 = v50;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26CD35EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD38, &qword_26CD3D000);
  result = sub_26CD3AD5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = sub_26CD3B0EC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26CD36168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD18, &qword_26CD3CFE0);
  v34 = v4;
  result = sub_26CD3AD5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v35 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      if ((v34 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = sub_26CD3B0EC();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v35;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void *sub_26CD36410()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BDE00, &qword_26CD4AD38);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        v35 = *(v19 + v17 + 48);
        v33 = v24;
        v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = v34;
        *(v27 + 48) = v35;
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        result = sub_26CD23E38(&v32, v31);
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

void sub_26CD365C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD0, &qword_26CD3CF90);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void *sub_26CD3673C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD48, &qword_26CD3D010);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_26CD368BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDF8, &qword_26CD4AD30);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void sub_26CD36A2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDF0, &qword_26CD4AD28);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_26CD36B88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26CC168C0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26CC331CC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

id sub_26CD36D2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDD8, &qword_26CD4AD10);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void sub_26CD36E98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCE0, &qword_26CD3CFA0);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_26CD37000()
{
  v1 = v0;
  v2 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDE8, &qword_26CD4AD20);
  v4 = *v0;
  v5 = sub_26CD3AD4C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_26CD39B98(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_26CD2C6C8(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_26CD37230()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDDE0, &qword_26CD4AD18);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_26CC19A84(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26CC2524C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

char *sub_26CD373D8()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_26CD3A20C();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD28, &unk_26CD3CFF0);
  v4 = *v0;
  v5 = sub_26CD3AD4C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_26CD37734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD8, &qword_26CD3CF98);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

void *sub_26CD378A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8F8, &unk_26CD477D8);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_26CD39AD0(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 136;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *(v21 + 64);
      v40 = *(v21 + 48);
      v41 = v24;
      v26 = *(v21 + 96);
      v25 = *(v21 + 112);
      v27 = *(v21 + 80);
      v45 = *(v21 + 128);
      v43 = v26;
      v44 = v25;
      v42 = v27;
      v37 = *v21;
      v38 = v23;
      v39 = v22;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      *v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v41;
      *(v29 + 48) = v40;
      *(v29 + 64) = v32;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      *(v29 + 128) = v45;
      *(v29 + 96) = v34;
      *(v29 + 112) = v35;
      *(v29 + 80) = v33;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_26CD37A94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD38, &qword_26CD3D000);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
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

void *sub_26CD37BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD18, &qword_26CD3CFE0);
  v2 = *v0;
  v3 = sub_26CD3AD4C();
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
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v21;
        *(v22 + 16) = v19;
        *(v22 + 24) = v20;
        swift_unknownObjectRetain();
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

void sub_26CD37D7C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v9 = sub_26CD3B13C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_26CD37F2C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v9 = sub_26CD3B13C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_26CD380DC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    while (1)
    {
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v9 = sub_26CD3B13C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for UpNextDelta.ContinuationContentMetadata(0) - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_26CD382C8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v11 = sub_26CD3B13C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

unint64_t sub_26CD38484(int64_t a1, uint64_t a2)
{
  v4 = sub_26CD3A20C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_26CD3AB7C();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_26CD39B40();
      v21 = sub_26CD3A52C();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26CD38790(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_26CD3B0EC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26CD38900(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26CD3AB7C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_26CD3B0EC();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_26CD38A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26CC181C4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_26CD33B94(v18, a5 & 1);
      v13 = sub_26CC181C4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_26CD3B02C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_26CD365C4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_26CD38BF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26CD38C60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26CC181C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26CD3410C(v16, a4 & 1);
      v11 = sub_26CC181C4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26CD3B02C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_26CD368BC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_26CD38DDC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26CC181C4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26CD36B88();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26CD34624(v16, a4 & 1);
    v11 = sub_26CC181C4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_26CD3B02C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_26CC331CC(a1, v22);
  }

  else
  {
    sub_26CD3987C(v11, a2, a3, a1, v21);
  }
}

void sub_26CD38F2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26CC181C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26CD348DC(v16, a4 & 1);
      v11 = sub_26CC181C4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26CD3B02C();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_26CD36D2C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_26CD390A4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26CC181C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26CD34B80(v16, a4 & 1);
      v11 = sub_26CC181C4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_26CD3B02C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_26CD36E98();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + v11) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_26CD39210(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26CC181C4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_26CD37000();
      goto LABEL_7;
    }

    sub_26CD34E20(v15, a4 & 1);
    v21 = sub_26CC181C4(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_26CD3B02C();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for UpNextDelta.ContinuationContentMetadata(0) - 8) + 72) * v12;

    sub_26CC86C7C(a1, v20);
    return;
  }

LABEL_13:
  sub_26CD398E8(v12, a2, a3, a1, v18);
}

uint64_t sub_26CD39374(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26CD3A20C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26CCCA7E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_26CD373D8();
      goto LABEL_7;
    }

    sub_26CD35420(v17, a3 & 1);
    v28 = sub_26CCCA7E8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26CD39980(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_26CD3B02C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_26CD39584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26CCCA6D8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26CD35EF4(v16, a4 & 1);
      result = sub_26CCCA6D8(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26CD37A94();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;

  return swift_unknownObjectRelease();
}

unint64_t sub_26CD396E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_26CCCA6D8(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_26CD36168(v20, a6 & 1);
      result = sub_26CCCA6D8(a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_26CD3B02C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_26CD37BF8();
      result = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a5;
    v27 = v25[7] + 32 * result;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3 & 1;
    *(v27 + 24) = a4;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 32 * result;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3 & 1;
  *(v26 + 24) = a4;

  return swift_unknownObjectRelease();
}

_OWORD *sub_26CD3987C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26CC331CC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26CD398E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  result = sub_26CD2C6C8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_26CD39980(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26CD3A20C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_26CD39A80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_26CD39AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD918, &unk_26CD479A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD39B40()
{
  result = qword_280BBB1C0;
  if (!qword_280BBB1C0)
  {
    sub_26CD3A20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB1C0);
  }

  return result;
}

uint64_t sub_26CD39B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}