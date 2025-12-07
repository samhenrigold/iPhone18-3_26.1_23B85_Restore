__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B775B18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B775B38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
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

uint64_t sub_23B775B80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B775BA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_23B775BE8(uint64_t a1, id *a2)
{
  result = sub_23B7BC7D0();
  *a2 = 0;
  return result;
}

uint64_t sub_23B775C60(uint64_t a1, id *a2)
{
  v3 = sub_23B7BC7E0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23B775CE0@<X0>(uint64_t *a1@<X8>)
{
  sub_23B7BC7F0();
  v2 = sub_23B7BC7C0();

  *a1 = v2;
  return result;
}

uint64_t sub_23B775D24()
{
  v0 = sub_23B7BC7F0();
  v1 = MEMORY[0x23EEA8B00](v0);

  return v1;
}

uint64_t sub_23B775D60(uint64_t a1)
{
  sub_23B7BC7F0();
  sub_23B7BC830();
}

uint64_t sub_23B775DB4(uint64_t a1)
{
  sub_23B7BC7F0();
  sub_23B7BCCD0();
  sub_23B7BC830();
  v1 = sub_23B7BCD10();

  return v1;
}

uint64_t sub_23B775E28(void *a1, uint64_t *a2)
{
  v2 = sub_23B7BC7F0();
  v4 = v3;
  if (v2 == sub_23B7BC7F0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23B7BCC70();
  }

  return v7 & 1;
}

uint64_t sub_23B775EB0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23B7BC7C0();

  *a2 = v3;
  return result;
}

uint64_t sub_23B775EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BC7F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_23B775F4C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23B775F98(uint64_t a1)
{
  v2 = sub_23B776098(&qword_27E1808B8, &unk_23B7BD958);
  v3 = sub_23B776098(&qword_27E1808C0, &unk_23B7BD8AC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23B776098(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B776118(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 8) = v4;

  *(a2 + 16) = sub_23B776798(v3, v4, 10.0);
}

uint64_t sub_23B776164()
{
  sub_23B776230(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_23B7761E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBB80();
  *a1 = result;
  return result;
}

uint64_t sub_23B776230(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

__n128 sub_23B776248@<Q0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  if (v5 <= 1)
  {
    if (!*a1)
    {
      v6 = a3 * 28.0;
      v7 = a3 * 72.0;
      v8 = sub_23B7BC6A0();
      v10 = v9;
      v30 = xmmword_23B7BD9A0;
      v11 = 1;
      v12 = sub_23B7BC6A0();
      v14 = 0;
      v15 = 0;
      v16 = a3 * 28.0;
LABEL_9:
      v20 = 0;
      v18 = a3 + a3;
      v17 = a3 * 17.0;
      goto LABEL_10;
    }

    v14 = 0;
    v15 = *a1;
LABEL_8:
    v6 = a3 * 28.0;
    v7 = a3 * 74.0;
    v16 = a3 * 30.0;
    v8 = sub_23B7BC6B0();
    v10 = v21;
    v30 = xmmword_23B7BD9B0;
    v12 = sub_23B7BC6B0();
    v11 = 0;
    goto LABEL_9;
  }

  if (v5 != 2)
  {
    v15 = 0;
    v14 = 1;
    goto LABEL_8;
  }

  v17 = a3 * 21.0;
  v6 = a3 * 29.0;
  v7 = a3 * 64.0 + -24.0;
  v16 = a3 * 32.0 + -12.0;
  v18 = a3 * 3.0;
  v8 = sub_23B7BC6B0();
  v10 = v19;
  v30 = xmmword_23B7BD9B0;
  v20 = 1;
  v12 = sub_23B7BC6B0();
  v11 = 0;
  v15 = 0;
  v14 = 0;
LABEL_10:
  *a2 = v6;
  *(a2 + 8) = (v6 - v18) * 0.5;
  *(a2 + 16) = v6 * 0.5;
  *(a2 + 24) = v6 * 0.5;
  v22 = (v6 - (v18 + v18)) / 2.5;
  *(a2 + 32) = xmmword_23B7BD9C0;
  *(a2 + 48) = xmmword_23B7BD9D0;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 88) = v18;
  *(a2 + 96) = v22;
  v23 = v6 * 0.5 - v22 * 0.5;
  *(a2 + 104) = v22;
  *(a2 + 112) = v23;
  *(a2 + 120) = v23;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + 128) = _Q0;
  *(a2 + 144) = v17;
  result = v30;
  *(a2 + 168) = v30;
  *(a2 + 152) = v30;
  *(a2 + 184) = v7;
  *(a2 + 192) = v16;
  *(a2 + 200) = v12;
  *(a2 + 208) = v13;
  *(a2 + 216) = v20;
  *(a2 + 217) = v11;
  *(a2 + 218) = v15;
  *(a2 + 219) = v14;
  *(a2 + 220) = v5;
  return result;
}

unint64_t sub_23B776464(uint64_t a1)
{
  sub_23B7BC7F0();
  sub_23B7BCCD0();
  sub_23B7BC830();
  v2 = sub_23B7BCD10();

  return sub_23B7764F8(a1, v2);
}

unint64_t sub_23B7764F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23B7BC7F0();
      v8 = v7;
      if (v6 == sub_23B7BC7F0() && v8 == v9)
      {
        break;
      }

      v11 = sub_23B7BCC70();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23B7765FC()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v6 = (*v0 + 16 * v1 + 32);
    v4 = *v6;
    v5 = v6[1];
    v0[1] = v1 + 1;
    v7 = v0[2];
    v9[0] = v4;
    v9[1] = v5;

    v7(&v8, v9);

    return v8;
  }

  return result;
}

unint64_t sub_23B776690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808E0, &qword_23B7BDAA8);
    v3 = sub_23B7BCBB0();
    v4 = a1 + 32;

    while (1)
    {
      sub_23B776A5C(v4, &v11);
      v5 = v11;
      result = sub_23B776464(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23B776ACC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

double sub_23B776798(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_23B7BC7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808C8, &qword_23B7BDA98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B7BD9E0;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277D743F8];
  v9 = v6;
  v10 = [v7 systemFontOfSize:a3 weight:v8];
  *(inited + 64) = sub_23B776950();
  *(inited + 40) = v10;
  sub_23B776690(inited);
  swift_setDeallocating();
  sub_23B77699C(inited + 32);
  type metadata accessor for Key(0);
  sub_23B776A04();
  v11 = sub_23B7BC770();

  [v4 boundingRectWithSize:1 options:v11 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v13 = v12;

  return v13;
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

unint64_t sub_23B776950()
{
  result = qword_27E1808D0;
  if (!qword_27E1808D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1808D0);
  }

  return result;
}

uint64_t sub_23B77699C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808D8, &qword_23B7BDAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B776A04()
{
  result = qword_27E1808B8;
  if (!qword_27E1808B8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1808B8);
  }

  return result;
}

uint64_t sub_23B776A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808D8, &qword_23B7BDAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23B776ACC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_23B776ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1808E8, &qword_23B7BDAB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23B7BD9F0;

  *(v6 + 32) = sub_23B7A1250(0xD000000000000019, 0x800000023B7C0B50);
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_23B7A1250(0xD000000000000017, 0x800000023B7C0B70);
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_23B7A1250(0xD00000000000001ALL, 0x800000023B7C0B90);
  *(v6 + 72) = v9;
  *(v6 + 80) = sub_23B7A1250(0xD00000000000001CLL, 0x800000023B7C0BB0);
  *(v6 + 88) = v10;
  v41[5] = v6;
  v42 = 0;
  v43 = sub_23B776118;
  v44 = 0;

  v11 = sub_23B7765FC();
  if (!v12)
  {
    swift_bridgeObjectRelease_n();
    v17 = sub_23B7A1250(0xD000000000000019, 0x800000023B7C0B50);
    v14 = v18;
LABEL_15:
    *(v4 + 40) = v17;
    *(v4 + 48) = v14;
    return;
  }

  v14 = v12;
  v15 = *(v6 + 16);
  v16 = v42;
  if (v42 == v15)
  {
    v17 = v11;
LABEL_14:
    swift_bridgeObjectRelease_n();
    goto LABEL_15;
  }

  v37 = v11;
  v19 = v13;
  v20 = *MEMORY[0x277D740A8];
  v21 = *MEMORY[0x277D743F8];
  v38 = v12;
  while ((v16 & 0x8000000000000000) == 0)
  {
    if (v16 >= *(v6 + 16))
    {
      goto LABEL_17;
    }

    v22 = (v6 + 32 + 16 * v16);
    v17 = *v22;
    v14 = v22[1];
    v42 = v16 + 1;

    v23 = sub_23B7BC7C0();
    v41[0] = v20;
    v24 = objc_opt_self();
    v25 = v20;
    v26 = [v24 systemFontOfSize:10.0 weight:v21];
    v41[4] = sub_23B776950();
    v41[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808E0, &qword_23B7BDAA8);
    v27 = sub_23B7BCBB0();
    sub_23B776A5C(v41, &v39);
    v28 = v39;
    v29 = sub_23B776464(v39);
    if (v30)
    {
      goto LABEL_18;
    }

    v27[(v29 >> 6) + 8] |= 1 << v29;
    *(v27[6] + 8 * v29) = v28;
    sub_23B776ACC(&v40, (v27[7] + 32 * v29));
    v31 = v27[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_19;
    }

    v27[2] = v33;
    sub_23B77699C(v41);
    type metadata accessor for Key(0);
    sub_23B776A04();
    v34 = sub_23B7BC770();

    [v23 boundingRectWithSize:1 options:v34 attributes:0 context:{1.79769313e308, 1.79769313e308}];
    v36 = v35;

    if (v36 < v19)
    {

      v16 = v42;
      v19 = v36;
      v37 = v17;
      v38 = v14;
      if (v42 == v15)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v16 = v42;
      if (v42 == v15)
      {
        v17 = v37;
        v14 = v38;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_23B776E90(void *a1)
{
  v2 = sub_23B7BB8A0();
  MEMORY[0x28223BE20](v2 - 8);
  v32[1] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23B7BB970();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegacyAppExtensionHostView.Configuration(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180968, "$:");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809D0, &qword_23B7BDBE8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v32 - v15;
  v36 = 0;
  MEMORY[0x23EEA96E0](&v36, 8);
  v17 = v36;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v18 = type metadata accessor for LegacyAppExtensionHostView(0);
    sub_23B779B38(v34 + *(v18 + 36), v13, &unk_27E180968, "$:");
    if ((*(v8 + 48))(v13, 1, v7) == 1)
    {
      v19 = sub_23B7BCB10();
      (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
      v20 = a1;
    }

    else
    {
      sub_23B779878(v13, v10);
      (*(v33 + 16))(v6, v10, v4);
      v30 = a1;

      sub_23B7BB8B0();
      sub_23B7BCB00();
      sub_23B7798DC(v10, type metadata accessor for LegacyAppExtensionHostView.Configuration);
      v31 = sub_23B7BCB10();
      (*(*(v31 - 8) + 56))(v16, 0, 1, v31);
    }

    sub_23B7BCB20();
  }

  else
  {
    if (qword_27E180870 != -1)
    {
      swift_once();
    }

    v21 = sub_23B7BBB30();
    __swift_project_value_buffer(v21, qword_27E184F18);
    v22 = sub_23B7BBB10();
    v23 = sub_23B7BCA00();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v17;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136315138;
      v36 = 5527621;
      v37 = 0xE300000000000000;
      v38 = v26;
      v35 = v24;
      sub_23B7797D8();
      v27 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v27);

      v28 = sub_23B77C020(v36, v37, &v38);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_23B774000, v22, v23, "[%s]: No HostingViewController found", v25, 0xCu);
      v29 = __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23EEA96D0](v26, -1, -1, v29);
      MEMORY[0x23EEA96D0](v25, -1, -1);
    }
  }
}

id sub_23B7773A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E0, &unk_23B7BDBF0);
  sub_23B7BC200();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_23B777434@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  MEMORY[0x28223BE20](a2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B77954C(v2, v5);
  v6 = type metadata accessor for LegacyAppExtensionHostView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_23B77954C(v5, v7 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_23B7798DC(v5, type metadata accessor for LegacyAppExtensionHostView);
  *a1 = v8;
  return result;
}

uint64_t sub_23B777548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B779508(&qword_27E1809C8, &unk_23B7BDB1C);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B7775C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B779508(&qword_27E1809C8, &unk_23B7BDB1C);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B777664(uint64_t a1)
{
  sub_23B779508(&qword_27E1809C8, &unk_23B7BDB1C);
  sub_23B7BC1C0();
  __break(1u);
}

uint64_t sub_23B7776A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_23B7BC900();
  v5[3] = sub_23B7BC8F0();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_23B777764;

  return sub_23B777900(a5);
}

uint64_t sub_23B777764()
{

  v1 = sub_23B7BC8D0();

  return MEMORY[0x2822009F8](sub_23B7778A0, v1, v0);
}

uint64_t sub_23B7778A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B777900(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_23B7BBFA0();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  sub_23B7BC900();
  v2[37] = sub_23B7BC8F0();
  v5 = sub_23B7BC8D0();

  return MEMORY[0x2822009F8](sub_23B777A28, v5, v4);
}

uint64_t sub_23B777A28()
{
  v56 = v0;
  v55[1] = *MEMORY[0x277D85DE8];
  v1 = v0[32];

  v0[28] = 0;
  MEMORY[0x23EEA96E0](v0 + 28, 8);
  v0[29] = 0;
  v2 = v0[28];
  v3 = [v1 makeXPCConnectionWithError_];
  v4 = v0[29];
  if (v3)
  {
    v5 = v3;
    v51 = v0[33];
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 interfaceWithProtocol_];
    [v5 setRemoteObjectInterface_];

    [v5 resume];
    v9 = swift_allocObject();
    v50 = v2 << 32;
    *(v9 + 16) = v2 << 32;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    v0[13] = sub_23B779D44;
    v0[14] = v9;
    v0[9] = MEMORY[0x277D85DD0];
    v0[10] = 1107296256;
    v0[11] = sub_23B778800;
    v0[12] = &block_descriptor;
    v10 = _Block_copy(v0 + 9);

    v54 = v5;
    v11 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);
    sub_23B7BCB40();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809F0, &qword_23B7BF250);
    v12 = swift_dynamicCast();
    v13 = v0[31];
    if (!v12)
    {
      v13 = 0;
    }

    v53 = v13;
    sub_23B7BB7B0();
    swift_allocObject();
    sub_23B7BB7A0();
    v14 = v51 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent;
    v15 = *(v51 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent + 16);
    v16 = *(v51 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent + 24);
    v17 = *(v51 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent);
    v18 = *(v51 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent + 8);

    if (v18 != 1)
    {
      v20 = v0[35];
      v19 = v0[36];
      v52 = v0[34];
      sub_23B779D68(v17, 0);
      sub_23B7BCA10();
      v21 = sub_23B7BC210();
      sub_23B7BBB00();

      sub_23B7BBF90();
      swift_getAtKeyPath();
      v22 = sub_23B779D74(v17, 0);
      (*(v20 + 8))(v19, v52, v22);
      LOBYTE(v17) = *(v0 + 308);
    }

    v23 = (*(v14 + 32) & 1) == 0;
    v0[2] = v15;
    v0[3] = v16;
    *(v0 + 32) = v17;
    v0[5] = 0;
    v0[6] = v23;
    sub_23B779D80();
    v0[7] = 0;
    v0[8] = 0;
    v24 = sub_23B7BB790();
    v26 = v25;
    v27 = v0[5];
    v28 = v0[6];
    v30 = v0[7];
    v29 = v0[8];

    sub_23B779DD4(v27, v28, v30, v29);

    if (v53)
    {
      swift_unknownObjectRetain();
      v44 = sub_23B7BB820();
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v50;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0;
      *(v46 + 40) = v45;
      v0[19] = sub_23B779EEC;
      v0[20] = v46;
      v0[15] = MEMORY[0x277D85DD0];
      v0[16] = 1107296256;
      v0[17] = sub_23B778C9C;
      v0[18] = &block_descriptor_37;
      v47 = _Block_copy(v0 + 15);

      [v53 setWithManagedAppViewData:v44 reply:v47];
      swift_unknownObjectRelease();
      sub_23B779E1C(v24, v26);
      swift_unknownObjectRelease();

      _Block_release(v47);
    }

    else
    {
      sub_23B779E1C(v24, v26);
    }
  }

  else
  {
    v31 = v4;
    v32 = sub_23B7BB7E0();

    swift_willThrow();
    if (qword_27E180870 != -1)
    {
      swift_once();
    }

    v33 = sub_23B7BBB30();
    __swift_project_value_buffer(v33, qword_27E184F18);
    v34 = v32;
    v35 = sub_23B7BBB10();
    v36 = sub_23B7BCA00();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55[0] = v38;
      *v37 = 136315394;
      *(v0 + 76) = v2;
      sub_23B7797D8();
      v39 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v39);

      v40 = sub_23B77C020(5527621, 0xE300000000000000, v55);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      swift_getErrorValue();
      v41 = sub_23B7BCCC0();
      v43 = sub_23B77C020(v41, v42, v55);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_23B774000, v35, v36, "[%s]: Cannot make connection to extension. %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEA96D0](v38, -1, -1);
      MEMORY[0x23EEA96D0](v37, -1, -1);
    }

    else
    {
    }
  }

  v48 = v0[1];

  return v48();
}

uint64_t sub_23B778154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8, &qword_23B7BEA40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B779B38(a3, v25 - v10, &qword_27E1809E8, &qword_23B7BEA40);
  v12 = sub_23B7BC930();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B779BA0(v11);
  }

  else
  {
    sub_23B7BC920();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B7BC8D0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B7BC820() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23B779BA0(a3);

      return v23;
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

  sub_23B779BA0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_23B778574(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v8 = sub_23B7BBB30();
  __swift_project_value_buffer(v8, qword_27E184F18);
  sub_23B779F50(a2, a3, a4 & 1);
  v9 = a1;
  oslog = sub_23B7BBB10();
  v10 = sub_23B7BCA00();
  sub_23B779D34(a2, a3, a4 & 1);

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    if (a4)
    {
    }

    else
    {
      if (a2)
      {
        v13 = 4144959;
      }

      else
      {
        v13 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v13, 0xE300000000000000);

      sub_23B7797D8();
      v14 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v14);

      a2 = 0;
      a3 = 0xE000000000000000;
    }

    v15 = sub_23B77C020(a2, a3, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_23B7BCCC0();
    v18 = sub_23B77C020(v16, v17, &v20);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_23B774000, oslog, v10, "[%s]: Failed to create proxy to extension. %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v12, -1, -1);
    MEMORY[0x23EEA96D0](v11, -1, -1);
  }

  else
  {
  }
}

void sub_23B778800(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_23B778868(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  v9 = type metadata accessor for LegacyAppExtensionHostView(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BB780();
  swift_allocObject();
  sub_23B7BB770();
  sub_23B779EFC();
  sub_23B7BB760();

  v12 = v35;
  v32 = *&v36[16];
  v33 = *v36;
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v13 = sub_23B7BBB30();
  __swift_project_value_buffer(v13, qword_27E184F18);
  sub_23B779F50(a3, a4, a5 & 1);
  v14 = sub_23B7BBB10();
  v15 = sub_23B7BC9F0();
  sub_23B779D34(a3, a4, a5 & 1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v34[0] = v17;
    *v16 = 136315394;
    if (a5)
    {
    }

    else
    {
      v35 = 0;
      *v36 = 0xE000000000000000;
      if (a3)
      {
        v18 = 4144959;
      }

      else
      {
        v18 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v18, 0xE300000000000000);

      v37 = HIDWORD(a3);
      sub_23B7797D8();
      v19 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v19);

      a3 = v35;
      a4 = *v36;
    }

    v20 = sub_23B77C020(a3, a4, v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_23B7BC980();
    v23 = sub_23B77C020(v21, v22, v34);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_23B774000, v14, v15, "[%s]: Setting cell bounds %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v17, -1, -1);
    MEMORY[0x23EEA96D0](v16, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_23B77954C(Strong + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent, v11);

    v26 = *(v11 + 6);
    v27 = *(v11 + 7);
    v35 = *(v11 + 5);
    *v36 = v26;
    *&v36[8] = v27;
    *&v34[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180A08, &qword_23B7BDC40);
    sub_23B7BC670();
    sub_23B7798DC(v11, type metadata accessor for LegacyAppExtensionHostView);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    sub_23B77954C(result + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent, v11);

    v30 = *(v11 + 9);
    v35 = *(v11 + 8);
    *v36 = v30;
    v31 = *(v11 + 6);
    *&v36[8] = *(v11 + 5);
    *&v36[24] = v31;
    v34[0] = v33;
    v34[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180A10, &qword_23B7BDC48);
    sub_23B7BC670();
    return sub_23B7798DC(v11, type metadata accessor for LegacyAppExtensionHostView);
  }

  return result;
}

double sub_23B778C9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_23B7BB830();
  v7 = v6;

  v3(v5, v7);
  sub_23B779E1C(v5, v7);

  return result;
}

id sub_23B778D54(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23B778DEC(uint64_t a1)
{
  result = type metadata accessor for LegacyAppExtensionHostView(319);
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

uint64_t sub_23B778EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180968, "$:");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B778F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180968, "$:");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B779030(uint64_t a1)
{
  sub_23B7791A4(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23B7791A4(319, &qword_27E180990, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_23B7791F4(319, &qword_27E180998, type metadata accessor for CGRect, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_23B7791F4(319, &qword_27E1809A0, type metadata accessor for LegacyAppExtensionHostView.Configuration, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23B7791A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23B7791F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23B779278(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B7792C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7BB970();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B779398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B7BB970();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B779454(uint64_t a1)
{
  result = sub_23B7BB970();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B779508(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LegacyAppExtensionHostView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B77954C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAppExtensionHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B7795E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B7796E0;

  return v6(a1);
}

uint64_t sub_23B7796E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23B7797D8()
{
  result = qword_27E1809D8;
  if (!qword_27E1809D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1809D8);
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_23B779878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAppExtensionHostView.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7798DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23B77993C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B779984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23B779A44;

  return sub_23B7776A8(a1, v4, v5, v7, v6);
}

uint64_t sub_23B779A44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B779B38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B779BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8, &qword_23B7BEA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B779C08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B779C40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B779A44;

  return sub_23B7795E8(a1, v4);
}

uint64_t sub_23B779CF8()
{
  sub_23B779D34(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

double sub_23B779D34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B779D68(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double sub_23B779D74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_23B779D80()
{
  result = qword_27E1809F8;
  if (!qword_27E1809F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1809F8);
  }

  return result;
}

double sub_23B779DD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_23B779E1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_23B779E70()
{
  MEMORY[0x23EEA9770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B779EA8()
{
  sub_23B779D34(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_23B779EFC()
{
  result = qword_27E180A00;
  if (!qword_27E180A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180A00);
  }

  return result;
}

uint64_t sub_23B779F50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t MADViewServiceExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  (*(a2 + 40))(a1, a2);
  v12 = type metadata accessor for MADViewServiceConfiguration.ExportedObject();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection] = 0;
  v19.receiver = v13;
  v19.super_class = v12;
  v14 = objc_msgSendSuper2(&v19, sel_init, v18[0]);
  (*(v6 + 16))(v9, v11, AssociatedTypeWitness);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  (*(v6 + 32))(v16 + v15, v9, AssociatedTypeWitness);
  v18[1] = v14;
  swift_getAssociatedConformanceWitness();
  sub_23B77A334();
  sub_23B7BB880();
  return (*(v6 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_23B77A1BC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B77A254@<X0>(uint64_t a1@<X8>)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a1, v1 + v4, AssociatedTypeWitness);
}

unint64_t sub_23B77A334()
{
  result = qword_27E180A88;
  if (!qword_27E180A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180A88);
  }

  return result;
}

uint64_t MADViewServiceScene.body.getter(uint64_t a1)
{
  v7 = *v1;
  type metadata accessor for ExportedObject(0);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180A98, &qword_23B7BDC60);
  sub_23B7BBBE0();
  *(v3 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_connection) = 0;
  v4 = (v3 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply);
  *v4 = 0;
  v4[1] = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 32) = v7;
  *(v5 + 48) = v3;

  return sub_23B7BB870();
}

uint64_t type metadata accessor for ExportedObject(uint64_t a1)
{
  result = qword_27E180B60;
  if (!qword_27E180B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B77A520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v13(v12);
  sub_23B7BB698();
  v14 = *(v6 + 8);
  v14(v9, a4);
  sub_23B7BB698();
  return (v14)(v11, a4);
}

uint64_t sub_23B77A65C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B77A6AC(void *a1)
{
  [a1 setExportedObject_];

  return sub_23B77A6F0(a1);
}

uint64_t sub_23B77A6F0(void *a1)
{
  [a1 auditToken];
  v3 = sub_23B77CD3C(v12, v13, v14, v15);
  if (v3)
  {
    [a1 setExportedObject_];
    v4 = [objc_opt_self() interfaceWithProtocol_];
    [a1 setExportedInterface_];

    [a1 resume];
    v5 = *(v1 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_connection);
    *(v1 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_connection) = a1;

    v6 = a1;
  }

  else
  {
    if (qword_27E180870 != -1)
    {
      swift_once();
    }

    v7 = sub_23B7BBB30();
    __swift_project_value_buffer(v7, qword_27E184F18);
    v8 = sub_23B7BBB10();
    v9 = sub_23B7BCA00();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23B774000, v8, v9, "Invalidating ViewService connection due to missing entitlements.", v10, 2u);
      MEMORY[0x23EEA96D0](v10, -1, -1);
    }

    [a1 invalidate];
  }

  return v3 & 1;
}

uint64_t MADViewServiceScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double ExportedObject.managedAppViewConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return result;
}

double sub_23B77A924@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a2 = v4;
  *(a2 + 16) = v5;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_23B77A9B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B77CC90(v2, v3, v4, v5, v6, v7, v8);

  return sub_23B7BBC30();
}

uint64_t ExportedObject.managedAppViewConfiguration.setter(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t (*ExportedObject.managedAppViewConfiguration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B77ABBC;
}

void sub_23B77ABBC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t ExportedObject.$managedAppViewConfiguration.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8, &qword_23B7BDCB0);
  sub_23B7BBBF0();
  return swift_endAccess();
}

uint64_t sub_23B77AC98(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8, &qword_23B7BDCB0);
  sub_23B7BBBF0();
  return swift_endAccess();
}

uint64_t sub_23B77AD10(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AB0, &qword_23B7BDCB8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8, &qword_23B7BDCB0);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ExportedObject.$managedAppViewConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AB0, &qword_23B7BDCB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8, &qword_23B7BDCB0);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ExportedObject.$managedAppViewConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AB0, &qword_23B7BDCB8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject__managedAppViewConfiguration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8, &qword_23B7BDCB0);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B77B13C;
}

void sub_23B77B13C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_23B7BBC00();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_23B7BBC00();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t ExportedObject.set(managedAppViewData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v5 = sub_23B7BC740();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B7BC760();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BB780();
  swift_allocObject();
  sub_23B7BB770();
  sub_23B77B75C();
  sub_23B7BB760();

  v29 = aBlock;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  sub_23B77C5C8();
  v12 = sub_23B7BCA70();
  v13 = swift_allocObject();
  v14 = v30;
  *(v13 + 24) = v29;
  *(v13 + 16) = v4;
  *(v13 + 40) = v14;
  *(v13 + 56) = v31;
  *(v13 + 72) = v32;
  *&v27 = sub_23B77C66C;
  *(&v27 + 1) = v13;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v26 = sub_23B77CEA8;
  *(&v26 + 1) = &block_descriptor_0;
  v15 = _Block_copy(&aBlock);

  sub_23B7BC750();
  v24 = MEMORY[0x277D84F90];
  sub_23B77C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AD0, &qword_23B7BDCC0);
  sub_23B77C6E8();
  sub_23B7BCB50();
  MEMORY[0x23EEA8D20](0, v11, v7, v15);
  _Block_release(v15);

  (*(v21 + 8))(v7, v5);
  (*(v9 + 8))(v11, v8);

  v16 = (v4 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply);
  v17 = *(v4 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply);
  v18 = *(v4 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply + 8);
  v19 = v23;
  *v16 = v22;
  v16[1] = v19;
  sub_23B77C010(v17, v18);
}

unint64_t sub_23B77B75C()
{
  result = qword_27E180AB8;
  if (!qword_27E180AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180AB8);
  }

  return result;
}

uint64_t sub_23B77B7B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  v7 = *(a2 + 5);
  v8 = *(a2 + 3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v8;
  v14 = v7;
  sub_23B77CBD4(a2, v9);

  return sub_23B7BBC30();
}

uint64_t ExportedObject.deinit()
{
  v1 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject__managedAppViewConfiguration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8, &qword_23B7BDCB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23B77C010(*(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply), *(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply + 8));
  return v0;
}

uint64_t ExportedObject.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject__managedAppViewConfiguration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8, &qword_23B7BDCB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23B77C010(*(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply), *(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply + 8));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23B77BA88(void *a1)
{
  v14 = 0;
  MEMORY[0x23EEA96E0](&v14, 8);
  v3 = v14 << 32;
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v18 = sub_23B77CA94;
  v19 = v6;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_23B77CEA8;
  v17 = &block_descriptor_29;
  v7 = _Block_copy(&v14);

  [a1 setInvalidationHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  v18 = sub_23B77CAF8;
  v19 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_23B77CEA8;
  v17 = &block_descriptor_36;
  v10 = _Block_copy(&v14);

  [a1 setInterruptionHandler_];
  _Block_release(v10);
  v11 = *(v1 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection);
  *(v1 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection) = a1;
  v12 = a1;

  [v12 resume];
  return 1;
}

double sub_23B77BCEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_23B77BD30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), const char *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *&Strong[OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection];
    *&Strong[OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection] = 0;
  }

  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v13 = sub_23B7BBB30();
  __swift_project_value_buffer(v13, qword_27E184F18);
  sub_23B779F50(a2, a3, a4 & 1);
  v14 = sub_23B7BBB10();
  v15 = a5();
  sub_23B779D34(a2, a3, a4 & 1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    if (a4)
    {
    }

    else
    {
      if (a2)
      {
        v18 = 4144959;
      }

      else
      {
        v18 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v18, 0xE300000000000000);

      sub_23B7797D8();
      v19 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v19);

      a2 = 0;
      a3 = 0xE000000000000000;
    }

    v20 = sub_23B77C020(a2, a3, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_23B774000, v14, v15, a6, v16, 0xCu);
    v21 = __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23EEA96D0](v17, -1, -1, v21);
    MEMORY[0x23EEA96D0](v16, -1, -1);
  }
}

id sub_23B77BFA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MADViewServiceConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_23B77C010(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_23B77C020(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v7 = sub_23B77C0EC(v12, 0, 0, 1, a1, a2, v6);
  v8 = v12[0];
  if (!v7)
  {
    ObjectType = MEMORY[0x277D840A0];
    v12[0] = a1;
    v12[1] = a2;
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = v7;

  ObjectType = swift_getObjectType();
  v12[0] = v9;
  v10 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23B77CC30(v12, v10);
    *a3 = v10 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v8;
}

unint64_t sub_23B77C0EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6, __n128 a7)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v10 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v10)
        {
          v13[0] = a5;
          v13[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v13, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v10) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23B77C1F8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v12 = a6;
    result = sub_23B7BCB90();
    a6 = v12;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_23B77C1F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B77C244(a1, a2);
  sub_23B77C374(&unk_284E332D0);
  return v3;
}

void *sub_23B77C244(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23B77C460(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23B7BCB90();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23B7BC850();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B77C460(v10, 0);
        result = sub_23B7BCB60();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_23B77C374(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23B77C4D4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_23B77C460(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180B78, &qword_23B7BDEC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B77C4D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180B78, &qword_23B7BDEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23B77C5C8()
{
  result = qword_27E180AC0;
  if (!qword_27E180AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E180AC0);
  }

  return result;
}

uint64_t sub_23B77C614()
{

  if (*(v0 + 56) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23B77C690()
{
  result = qword_27E180AC8;
  if (!qword_27E180AC8)
  {
    sub_23B7BC740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180AC8);
  }

  return result;
}

unint64_t sub_23B77C6E8()
{
  result = qword_27E180AD8[0];
  if (!qword_27E180AD8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180AD0, &qword_23B7BDCC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E180AD8);
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

uint64_t sub_23B77C794(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23B77C830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B77C878(uint64_t *a1, int a2)
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

uint64_t sub_23B77C8C0(uint64_t result, int a2, int a3)
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

void sub_23B77C91C(uint64_t a1)
{
  sub_23B77C9D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23B77C9D8(uint64_t a1)
{
  if (!qword_27E180B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180A98, &qword_23B7BDC60);
    v1 = sub_23B7BBC40();
    if (!v2)
    {
      atomic_store(v1, &qword_27E180B70);
    }
  }
}

uint64_t sub_23B77CA58()
{
  MEMORY[0x23EEA9770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_25Tm()
{

  sub_23B779D34(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23B77CB44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_23B77CB7C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_23B7BB820();
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_23B77CC30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_23B77CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_23B77CCF4(a4, a5, a6, a7);
  }
}

void sub_23B77CCF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
}

SecTaskRef sub_23B77CD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x277CBECE8];
  *v13.val = a1;
  *&v13.val[2] = a2;
  *&v13.val[4] = a3;
  *&v13.val[6] = a4;
  result = SecTaskCreateWithAuditToken(v4, &v13);
  if (result)
  {
    v6 = result;
    v7 = sub_23B7BC7C0();
    v8 = SecTaskCopyValueForEntitlement(v6, v7, 0);

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = sub_23B7BC7C0();
        v12 = [v10 containsObject_];

        swift_unknownObjectRelease();
        return v12;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_23B77CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedAppCellContext(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_23B77DA18(319, &qword_27E180C08, MEMORY[0x277CDF3E0]);
    if (v5 <= 0x3F)
    {
      sub_23B77D9B4(319);
      if (v6 <= 0x3F)
      {
        sub_23B77DA18(319, &qword_27E180C20, MEMORY[0x277CE02A8]);
        if (v7 <= 0x3F)
        {
          sub_23B77DA6C(319);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B77CFD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v38 = *(v4 + 84);
  if (v38 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(sub_23B7BBCE0() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v40 = v7;
  v8 = *(sub_23B7BB810() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_23B7BC050() - 8);
  v12 = *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v39 = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0) - 8);
  v14 = *(v13 + 84);
  v15 = *(v4 + 64);
  if (v14 <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v9)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 + 1;
  }

  v18 = *(v13 + 80);
  if (v17 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 80) & 0xF8 | 7;
  v21 = ((((((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v20 + 16;
  v22 = *(v8 + 80) & 0xF8 | 7;
  v23 = v40 + v22 + 1;
  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = v19 + v24 + 1;
  v26 = v39 + v18 + 1;
  if (a2 <= v16)
  {
    goto LABEL_41;
  }

  v27 = ((*(v13 + 64) + v18 + ((*(v13 + 64) + v18 + ((v26 + ((v25 + ((v23 + (v21 & ~v20)) & ~v22)) & ~v24)) & ~v18)) & ~v18)) & ~v18) + *(v13 + 64);
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v31 = ((a2 - v16 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v31 < 2)
    {
LABEL_41:
      if (v5 >= v14)
      {
        if (v38 < 0x7FFFFFFF)
        {
          v37 = *(((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
          if (v37 >= 0xFFFFFFFF)
          {
            LODWORD(v37) = -1;
          }

          return (v37 + 1);
        }

        else
        {
          v36 = *(v4 + 48);

          return v36(a1);
        }
      }

      else
      {
        v35 = *(v13 + 48);

        return v35((v26 + ((v25 + ((v23 + ((a1 + v21) & ~v20)) & ~v22)) & ~v24)) & ~v18);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_41;
  }

LABEL_28:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 <= 3)
    {
      v33 = ((*(v13 + 64) + v18 + ((*(v13 + 64) + v18 + ((v26 + ((v25 + ((v23 + (v21 & ~v20)) & ~v22)) & ~v24)) & ~v18)) & ~v18)) & ~v18) + *(v13 + 64);
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v34 = *a1;
      }
    }

    else if (v33 == 1)
    {
      v34 = *a1;
    }

    else
    {
      v34 = *a1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v16 + (v34 | v32) + 1;
}

void sub_23B77D45C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v40 = v4;
  v41 = *(v4 + 84);
  if (v41 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(sub_23B7BBCE0() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8;
  v9 = *(sub_23B7BB810() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_23B7BC050() - 8);
  if (*(v12 + 64) > 8uLL)
  {
    v8 = *(v12 + 64);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0) - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v4 + 64);
  if (v15 <= v5)
  {
    v17 = v5;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = ((((((((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = *(v6 + 80) & 0xF8 | 7;
  v20 = *(v9 + 80) & 0xF8 | 7;
  v21 = v7 + v20 + 1;
  if (v10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v11 + 1;
  }

  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v22 + v23 + 1;
  v25 = *(v13 + 80);
  v26 = v8 + v25 + 1;
  v27 = ((*(v13 + 64) + v25 + ((*(v13 + 64) + v25 + ((v26 + ((v24 + ((v21 + ((v18 + v19) & ~v19)) & ~v20)) & ~v23)) & ~v25)) & ~v25)) & ~v25) + *(v13 + 64);
  if (a3 <= v17)
  {
    v29 = 0;
    v28 = a1;
  }

  else
  {
    v28 = a1;
    if (v27 <= 3)
    {
      v32 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v17 < a2)
  {
    v30 = ~v17 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v34 = v30 & ~(-1 << (8 * v27));
        bzero(v28, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v28 = v34;
            if (v29 > 1)
            {
LABEL_63:
              if (v29 == 2)
              {
                *&v28[v27] = v31;
              }

              else
              {
                *&v28[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *v28 = v30;
            if (v29 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v28 = v34;
        v28[2] = BYTE2(v34);
      }

      if (v29 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(v28, v27);
      *v28 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v29)
    {
      v28[v27] = v31;
    }

    return;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&v28[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&v28[v27] = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v29)
  {
    goto LABEL_43;
  }

  v28[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v5 >= v15)
  {
    if (v5 >= a2)
    {
      if (v41 < 0x7FFFFFFF)
      {
        v39 = (&v28[v16 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v39[2] = 0;
          v39[3] = 0;
          *v39 = a2 & 0x7FFFFFFF;
          v39[1] = 0;
        }

        else
        {
          v39[3] = a2 - 1;
        }
      }

      else
      {
        v38 = *(v40 + 56);

        v38(v28, a2);
      }
    }

    else if (((((((((((v16 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(v28, v18);
      *v28 = ~v5 + a2;
    }
  }

  else
  {
    v35 = ~v25;
    v36 = *(v14 + 56);
    v37 = (v26 + ((v24 + ((v21 + (&v28[v18 + v19] & ~v19)) & ~v20)) & ~v23)) & v35;

    v36(v37, a2);
  }
}

void sub_23B77D9B4(uint64_t a1)
{
  if (!qword_27E180C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C18, &unk_23B7C0430);
    v1 = sub_23B7BBCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E180C10);
    }
  }
}

void sub_23B77DA18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B7BBCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B77DA6C(uint64_t a1)
{
  if (!qword_27E180C28)
  {
    sub_23B77DAC8();
    v1 = sub_23B7BBD40();
    if (!v2)
    {
      atomic_store(v1, &qword_27E180C28);
    }
  }
}

unint64_t sub_23B77DAC8()
{
  result = qword_27E180C30;
  if (!qword_27E180C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180C30);
  }

  return result;
}

uint64_t sub_23B77DB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v3 = sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C38, &qword_23B7BDF60);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  v4 = sub_23B7BBE70();
  WitnessTable = swift_getWitnessTable();
  v53 = MEMORY[0x277CDFC60];
  v41 = v4;
  v48 = v4;
  v49 = swift_getWitnessTable();
  v45 = v49;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = *(OpaqueTypeMetadata2 - 8);
  v6 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v34 - v8;
  v48 = v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C40, &qword_23B7BDF68);
  v50 = type metadata accessor for OfferView(255);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48, &unk_23B7BDF70);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50, &qword_23B7BE460);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v9 = sub_23B7BC5D0();
  v43 = swift_getWitnessTable();
  v44 = v9;
  v48 = v9;
  v49 = v43;
  v10 = swift_getOpaqueTypeMetadata2();
  v34 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = sub_23B7BC050();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = OpaqueTypeMetadata2;
  v20 = sub_23B7BC0A0();
  v38 = *(v20 - 8);
  v39 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  sub_23B79A7D4(v19);
  v23 = sub_23B7BC040();
  (*(v17 + 8))(v19, v16);
  if (v23)
  {
    sub_23B77E330(a1, v13);
    v48 = v44;
    v49 = v43;
    swift_getOpaqueTypeConformance2();
    sub_23B7BB698();
    v24 = *(v34 + 8);
    v24(v13, v10);
    sub_23B7BB698();
    v25 = v41;
    v48 = v41;
    v49 = v45;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8A34(v13, v10);
    v24(v13, v10);
    v24(v15, v10);
  }

  else
  {
    v26 = v36;
    sub_23B77E690(a1, v36);
    v25 = v41;
    v48 = v41;
    v49 = v45;
    swift_getOpaqueTypeConformance2();
    v27 = v35;
    v28 = v40;
    sub_23B7BB698();
    v29 = *(v37 + 8);
    v29(v26, v28);
    sub_23B7BB698();
    v48 = v44;
    v49 = v43;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8B2C(v26, v10, v28);
    v29(v26, v28);
    v29(v27, v28);
  }

  v48 = v44;
  v49 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v25;
  v49 = v45;
  v31 = swift_getOpaqueTypeConformance2();
  v46 = OpaqueTypeConformance2;
  v47 = v31;
  v32 = v39;
  swift_getWitnessTable();
  sub_23B7BB698();
  return (*(v38 + 8))(v22, v32);
}

uint64_t sub_23B77E330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = sub_23B7BC150();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v19 = sub_23B7BBE70();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C40, &qword_23B7BDF68);
  v21 = type metadata accessor for OfferView(255);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48, &unk_23B7BDF70);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50, &qword_23B7BE460);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v8 = sub_23B7BC5D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(a1 + 24);
  v16 = v7;
  v17 = v12;
  v18 = v2;
  sub_23B7BBFE0();
  sub_23B7BC5C0();
  sub_23B7BC140();
  swift_getWitnessTable();
  sub_23B7BC430();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23B77E690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_23B7BC150();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23B7BC050();
  v4 = *(v28 - 8);
  v5 = MEMORY[0x28223BE20](v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v23 - v8;
  v9 = *(a1 + 16);
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C38, &qword_23B7BDF60);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v10 = sub_23B7BC5D0();
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = sub_23B7BBE70();
  v25 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_23B7BBFE0();
  v16 = *(a1 + 24);
  v33 = v9;
  v34 = v16;
  v35 = v27;
  sub_23B7BC5C0();
  v17 = v26;
  sub_23B79A7D4(v26);
  v18 = v28;
  (*(v4 + 104))(v7, *MEMORY[0x277CE0290], v28);
  sub_23B782014(v17, v7);
  v19 = *(v4 + 8);
  v19(v7, v18);
  v19(v17, v18);
  sub_23B7BC6A0();
  WitnessTable = swift_getWitnessTable();
  sub_23B7BC470();
  (*(v24 + 8))(v12, v10);
  v20 = v29;
  sub_23B7BC140();
  v36 = WitnessTable;
  v37 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_23B7BC430();
  (*(v30 + 8))(v20, v32);
  return (*(v25 + 8))(v15, v13);
}

uint64_t sub_23B77EBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_23B7BBE70();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  type metadata accessor for PlatformIconClippingViewModifier(255);
  v6 = sub_23B7BBE70();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  sub_23B7BC1F0();
  v9 = sub_23B7BBE70();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = sub_23B7BBE70();
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_23B7BC6A0();
  v16 = *(a1 + 24);
  sub_23B7BC460();
  v37 = v16;
  v38 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_23B79759C(v3, WitnessTable);
  (*(v25 + 8))(v5, v3);
  v18 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v35 = WitnessTable;
  v36 = v18;
  v19 = swift_getWitnessTable();
  sub_23B7BC420();
  (*(v26 + 8))(v8, v6);
  v20 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v33 = v19;
  v34 = v20;
  v21 = swift_getWitnessTable();
  sub_23B7BC450();
  (*(v27 + 8))(v11, v9);
  sub_23B7BC250();
  v22 = sub_23B781950();
  v31 = v21;
  v32 = v22;
  v23 = v28;
  swift_getWitnessTable();
  sub_23B7BC480();
  return (*(v29 + 8))(v15, v23);
}

void sub_23B77F018(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B7BC2D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), v8);
  sub_23B7BC270();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  sub_23B7BC2E0();

  (*(v5 + 8))(v7, v4);
  v9 = sub_23B7BC360();
  v11 = v10;
  LOBYTE(a1) = v12;
  v14 = v13;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = a1 & 1;
  *(a2 + 24) = v14;
}

uint64_t sub_23B77F19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = (v3 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), a3) + 40));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  sub_23B781E88(*v5, v7, v8, v9);
  v10 = sub_23B7BC300();
  KeyPath = swift_getKeyPath();
  result = sub_23B7BC0E0();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v10;
  *(a2 + 48) = result;
  return result;
}

__n128 sub_23B77F230@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D10, &qword_23B7BE5A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_23B7BC050();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v2 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), v12) + 44));
  v14 = *v13;
  v15 = v13[2];
  v16 = v13[3];
  v34 = v13[1];
  v35 = v14;
  v32 = v16;
  v33 = v15;
  sub_23B781E88(v14, v34, v15, v16);
  v36 = v2;
  sub_23B79A7D4(v11);
  v17 = sub_23B7BC040();
  v18 = *(v9 + 8);
  v18(v11, v8);
  if (v17)
  {
    v31 = sub_23B7BC2F0();
  }

  else
  {
    v19 = sub_23B7BC280();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v31 = sub_23B7BC2B0();
    sub_23B7826E8(v7, &qword_27E180D10, &qword_23B7BE5A0);
  }

  KeyPath = swift_getKeyPath();
  v21 = sub_23B7BC520();
  v22 = swift_getKeyPath();
  sub_23B79A7D4(v11);
  sub_23B7BC040();
  v18(v11, v8);
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v23 = swift_getKeyPath();
  v24 = v34;
  *a2 = v35;
  *(a2 + 8) = v24;
  v25 = v32;
  *(a2 + 16) = v33;
  *(a2 + 24) = v25;
  v26 = v31;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v26;
  *(a2 + 48) = v22;
  *(a2 + 56) = v21;
  v27 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v27;
  *(a2 + 160) = v43;
  v28 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v28;
  result = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = result;
  *(a2 + 176) = v23;
  *(a2 + 184) = 2;
  *(a2 + 192) = 0;
  return result;
}

uint64_t sub_23B77F528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = (v3 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), a3) + 48));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  sub_23B781E88(*v5, v7, v8, v9);
  v10 = sub_23B7BC300();
  KeyPath = swift_getKeyPath();
  result = sub_23B7BC0D0();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v10;
  *(a2 + 48) = result;
  return result;
}

void sub_23B77F5BC(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(v5 + 56);
  v7 = v3 + *(v5 + 52);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v13[0] = *v7;
  v13[1] = v8;
  v14 = v9;
  v10 = v3 + v6;
  v11 = *(v3 + v6);
  v12 = *(v10 + 8);
  sub_23B781F9C(v13[0], v8, v9);

  OfferView.init(offerState:action:)(v13, v11, v12, a3);
}

uint64_t sub_23B77F638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v35 = a1;
  v39 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C38, &qword_23B7BDF60);
  v5 = MEMORY[0x28223BE20](v37);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  v36 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  v34[1] = sub_23B7BBE70();
  v9 = sub_23B7BBE70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v16 = a2;
  v17 = v40;
  v19 = type metadata accessor for DefaultManagedAppCell(0, v16, v40, v18);
  sub_23B77EBC8(v19, v13);
  v47[11] = v17;
  v47[12] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v21 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v47[9] = WitnessTable;
  v47[10] = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v47[7] = v22;
  v47[8] = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_23B781950();
  v47[5] = v24;
  v47[6] = v25;
  v47[3] = swift_getWitnessTable();
  v47[4] = MEMORY[0x277CDF918];
  v26 = swift_getWitnessTable();
  sub_23B7BB698();
  v27 = *(v10 + 8);
  v27(v13, v9);
  *v8 = sub_23B7BC070();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D38, &qword_23B7BE070);
  sub_23B77FABC(v35, v36, v40, &v8[*(v28 + 44)]);
  KeyPath = swift_getKeyPath();
  v30 = v37;
  v31 = &v8[*(v37 + 36)];
  *v31 = KeyPath;
  *(v31 + 1) = 2;
  v31[16] = 0;
  (*(v10 + 16))(v13, v15, v9);
  v47[0] = v13;
  v32 = v38;
  sub_23B78242C(v8, v38);
  v45 = 0;
  v46 = 1;
  v47[1] = v32;
  v47[2] = &v45;
  v44[0] = v9;
  v44[1] = v30;
  v44[2] = MEMORY[0x277CE1180];
  v41 = v26;
  v42 = sub_23B78249C();
  v43 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(v47, 3uLL, v44);
  sub_23B782580(v8);
  v27(v15, v9);
  sub_23B782580(v32);
  return (v27)(v13, v9);
}

uint64_t sub_23B77FABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v41[2] = a1;
  v42 = a2;
  v48 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D58, &qword_23B7BE080);
  MEMORY[0x28223BE20](v45);
  v7 = v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D60, &qword_23B7BE088);
  v52 = *(v47 - 8);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = v41 - v10;
  v43 = sub_23B7BC150();
  v11 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C40, &qword_23B7BDF68);
  v51 = *(v44 - 8);
  v14 = MEMORY[0x28223BE20](v44);
  v49 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v41 - v16;
  v18 = sub_23B7BC070();
  v56 = 0;
  sub_23B7811D0(a2, a3, &v64, v19);
  v59 = v66;
  v60 = v67;
  v61[0] = *v68;
  *(v61 + 9) = *&v68[9];
  v57 = v64;
  v58 = v65;
  *(v63 + 9) = *&v68[9];
  v62[2] = v66;
  v62[3] = v67;
  v63[0] = *v68;
  v62[0] = v64;
  v62[1] = v65;
  sub_23B779B38(&v57, &v53, &qword_27E180C78, &qword_23B7BDF80);
  sub_23B7826E8(v62, &qword_27E180C78, &qword_23B7BDF80);
  *(&v55[2] + 7) = v59;
  *(&v55[3] + 7) = v60;
  *(&v55[4] + 7) = v61[0];
  v55[5] = *(v61 + 9);
  *(v55 + 7) = v57;
  *(&v55[1] + 7) = v58;
  *&v54[33] = v55[2];
  *&v54[49] = v55[3];
  *&v54[65] = v55[4];
  *&v54[81] = *(v61 + 9);
  v53 = v18;
  v54[0] = v56;
  *&v54[17] = v55[1];
  *&v54[1] = v55[0];
  sub_23B7BC130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C80, &qword_23B7BDF88);
  sub_23B7826A0(&qword_27E180C88, &qword_27E180C80, &qword_23B7BDF88, MEMORY[0x277CE1198]);
  v41[0] = v17;
  sub_23B7BC430();
  v20 = *(v11 + 8);
  v41[1] = v11 + 8;
  v21 = v43;
  v20(v13, v43);
  *v68 = *&v54[48];
  *&v68[16] = *&v54[64];
  v69 = *&v54[80];
  v70 = v54[96];
  v64 = v53;
  v65 = *v54;
  v66 = *&v54[16];
  v67 = *&v54[32];
  sub_23B7826E8(&v64, &qword_27E180C80, &qword_23B7BDF88);
  *v7 = sub_23B7BBFE0();
  *(v7 + 1) = 0x4020000000000000;
  v7[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D68, &qword_23B7BE090);
  sub_23B7800A0(v42, a3, &v7[*(v22 + 44)]);
  LOBYTE(v18) = sub_23B7BC230();
  sub_23B7BBCC0();
  v23 = &v7[*(v45 + 36)];
  *v23 = v18;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_23B7BC130();
  sub_23B7825E8();
  v28 = v50;
  sub_23B7BC430();
  v20(v13, v21);
  sub_23B7826E8(v7, &qword_27E180D58, &qword_23B7BE080);
  v29 = *(v51 + 16);
  v30 = v49;
  v31 = v17;
  v32 = v44;
  v29(v49, v31, v44);
  v33 = *(v52 + 16);
  v35 = v46;
  v34 = v47;
  v33(v46, v28, v47);
  v36 = v48;
  v29(v48, v30, v32);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D88, &unk_23B7BE0A0);
  v33(&v36[*(v37 + 48)], v35, v34);
  v38 = *(v52 + 8);
  v38(v50, v34);
  v39 = *(v51 + 8);
  v39(v41[0], v32);
  v38(v35, v34);
  return v39(v49, v32);
}

uint64_t sub_23B7800A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D90, &qword_23B7BFD80);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v14 = type metadata accessor for DefaultManagedAppCell(0, a1, a2, v13);
  sub_23B77F5BC(v14, v15, v12);
  *&v12[*(v7 + 44)] = 0x3FF0000000000000;
  v17 = type metadata accessor for ManagedAppCellContext(0, a1, a2, v16);
  if (sub_23B7B4438(v17))
  {
    sub_23B77F230(v14, &v45);
    v68 = v55;
    v69 = v56;
    v70 = v57;
    v64 = v51;
    v65 = v52;
    v66 = v53;
    v67 = v54;
    v60 = v47;
    v61 = v48;
    v62 = v49;
    v63 = v50;
    v58 = v45;
    v59 = v46;
    nullsub_1();
    v81 = v68;
    v82 = v69;
    v83 = v70;
    v77 = v64;
    v78 = v65;
    v79 = v66;
    v80 = v67;
    v73 = v60;
    v74 = v61;
    v75 = v62;
    v76 = v63;
    v71 = v58;
    v72 = v59;
  }

  else
  {
    sub_23B7819A4(&v71);
  }

  sub_23B779B38(v12, v10, &qword_27E180D90, &qword_23B7BFD80);
  v42 = v81;
  v43 = v82;
  v44 = v83;
  v38 = v77;
  v39 = v78;
  v40 = v79;
  v41 = v80;
  v34 = v73;
  v35 = v74;
  v36 = v75;
  v37 = v76;
  v32 = v71;
  v33 = v72;
  sub_23B779B38(v10, a3, &qword_27E180D90, &qword_23B7BFD80);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D98, &unk_23B7BE0B0) + 48);
  v19 = v43;
  v55 = v42;
  v56 = v43;
  v20 = v38;
  v21 = v39;
  v51 = v38;
  v52 = v39;
  v23 = v40;
  v22 = v41;
  v53 = v40;
  v54 = v41;
  v25 = v36;
  v24 = v37;
  v49 = v36;
  v50 = v37;
  v26 = v34;
  v27 = v35;
  v47 = v34;
  v48 = v35;
  v29 = v32;
  v28 = v33;
  v45 = v32;
  v46 = v33;
  v30 = a3 + v18;
  *(v30 + 160) = v42;
  *(v30 + 176) = v19;
  *(v30 + 96) = v20;
  *(v30 + 112) = v21;
  *(v30 + 128) = v23;
  *(v30 + 144) = v22;
  *(v30 + 32) = v26;
  *(v30 + 48) = v27;
  *(v30 + 64) = v25;
  *(v30 + 80) = v24;
  v57 = v44;
  *(v30 + 192) = v44;
  *v30 = v29;
  *(v30 + 16) = v28;
  sub_23B779B38(&v45, &v58, &qword_27E180C48, &unk_23B7BDF70);
  sub_23B7826E8(v12, &qword_27E180D90, &qword_23B7BFD80);
  v68 = v42;
  v69 = v43;
  v70 = v44;
  v64 = v38;
  v65 = v39;
  v66 = v40;
  v67 = v41;
  v60 = v34;
  v61 = v35;
  v62 = v36;
  v63 = v37;
  v58 = v32;
  v59 = v33;
  sub_23B7826E8(&v58, &qword_27E180C48, &unk_23B7BDF70);
  return sub_23B7826E8(v10, &qword_27E180D90, &qword_23B7BFD80);
}

uint64_t sub_23B7803C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v39 = sub_23B7BBE70();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C40, &qword_23B7BDF68);
  v41 = type metadata accessor for OfferView(255);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48, &unk_23B7BDF70);
  swift_getTupleTypeMetadata();
  v26 = sub_23B7BC6F0();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_23B7BC640();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50, &qword_23B7BE460);
  v10 = sub_23B7BBE70();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v24 = &v23 - v15;
  sub_23B7BC070();
  type metadata accessor for DefaultManagedAppCell(0, a2, a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  v29 = a2;
  v30 = a3;
  v31 = a1;
  sub_23B7BC630();
  v17 = swift_getWitnessTable();
  sub_23B7BC4A0();
  (*(v27 + 8))(v9, v7);
  v18 = sub_23B7826A0(&qword_27E180C58, &qword_27E180C50, &qword_23B7BE460, MEMORY[0x277CE0868]);
  v37 = v17;
  v38 = v18;
  v19 = swift_getWitnessTable();
  v20 = v24;
  sub_23B7BB698();
  v21 = *(v11 + 8);
  v21(v14, v10);
  (*(v11 + 16))(v14, v20, v10);
  v35 = 0;
  v36 = 0;
  v39 = v14;
  v40 = &v35;
  v34[0] = v10;
  v34[1] = MEMORY[0x277CE1180];
  v32 = v19;
  v33 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(&v39, 2uLL, v34);
  v21(v20, v10);
  return (v21)(v14, v10);
}

uint64_t sub_23B780834@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v69 = type metadata accessor for OfferView(0);
  v6 = MEMORY[0x28223BE20](v69);
  v74 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v54 - v8;
  v9 = sub_23B7BC150();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C40, &qword_23B7BDF68);
  v71 = *(v73 - 8);
  v11 = MEMORY[0x28223BE20](v73);
  v70 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v54 - v13;
  v57 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  v68 = sub_23B7BBE70();
  v77 = sub_23B7BBE70();
  v14 = sub_23B7BBE70();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v56 = a3;
  v55 = type metadata accessor for DefaultManagedAppCell(0, a2, a3, v21);
  sub_23B77EBC8(v55, v18);
  v119 = a3;
  v120 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v23 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v117 = WitnessTable;
  v118 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v115 = v24;
  v116 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_23B781950();
  v113 = v26;
  v114 = v27;
  v111 = swift_getWitnessTable();
  v112 = MEMORY[0x277CDF918];
  v28 = swift_getWitnessTable();
  v77 = v20;
  v62 = v28;
  sub_23B7BB698();
  v60 = v15;
  v29 = *(v15 + 8);
  v75 = v18;
  v67 = v15 + 8;
  v68 = v14;
  v66 = v29;
  v29(v18, v14);
  v30 = sub_23B7BC070();
  v31 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  v32 = v121;
  LOBYTE(v83) = 0;
  v34 = v56;
  v33 = v57;
  sub_23B7811D0(v57, v56, &v121, v35);
  v130 = v122[1];
  v131 = v122[2];
  v132[0] = v122[3];
  *(v132 + 9) = *(&v122[3] + 9);
  v128 = v121;
  v129 = v122[0];
  *(v134 + 9) = *(&v122[3] + 9);
  v133[2] = v122[1];
  v133[3] = v122[2];
  v134[0] = v122[3];
  v133[0] = v121;
  v133[1] = v122[0];
  sub_23B779B38(&v128, &v97, &qword_27E180C78, &qword_23B7BDF80);
  sub_23B7826E8(v133, &qword_27E180C78, &qword_23B7BDF80);
  *(&v110[2] + 7) = v130;
  *(&v110[3] + 7) = v131;
  *(&v110[4] + 7) = v132[0];
  v110[5] = *(v132 + 9);
  *(v110 + 7) = v128;
  *(&v110[1] + 7) = v129;
  *(&v122[2] + 1) = v110[2];
  *(&v122[3] + 1) = v110[3];
  *(&v122[4] + 1) = v110[4];
  *(&v122[5] + 1) = *(v132 + 9);
  *(&v122[1] + 1) = v110[1];
  *&v121 = v30;
  *(&v121 + 1) = v32;
  LOBYTE(v122[0]) = v83;
  *(v122 + 1) = v110[0];
  v36 = v61;
  sub_23B7BC130();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C80, &qword_23B7BDF88);
  v58 = sub_23B7826A0(&qword_27E180C88, &qword_27E180C80, &qword_23B7BDF88, MEMORY[0x277CE1198]);
  v59 = v37;
  sub_23B7BC430();
  (*(v63 + 8))(v36, v64);
  v135[4] = v122[3];
  v135[5] = v122[4];
  v135[6] = v122[5];
  v136 = v122[6];
  v135[0] = v121;
  v135[1] = v122[0];
  v135[2] = v122[1];
  v135[3] = v122[2];
  sub_23B7826E8(v135, &qword_27E180C80, &qword_23B7BDF88);
  v38 = v65;
  sub_23B77F5BC(v31, v39, v65);
  v41 = type metadata accessor for ManagedAppCellContext(0, v33, v34, v40);
  if (sub_23B7B4438(v41))
  {
    sub_23B77F230(v31, &v83);
    v107 = v93;
    v108 = v94;
    v109 = v95;
    v103 = v89;
    v104 = v90;
    v105 = v91;
    v106 = v92;
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v102 = v88;
    v97 = v83;
    v98 = v84;
    nullsub_1();
    v125 = v107;
    v126 = v108;
    v127 = v109;
    v122[5] = v103;
    v122[6] = v104;
    v123 = v105;
    v124 = v106;
    v122[1] = v99;
    v122[2] = v100;
    v122[3] = v101;
    v122[4] = v102;
    v121 = v97;
    v122[0] = v98;
  }

  else
  {
    sub_23B7819A4(&v121);
  }

  v42 = v75;
  v43 = v68;
  (*(v60 + 16))(v75, v77, v68);
  v96[0] = v42;
  v45 = v70;
  v44 = v71;
  v46 = v76;
  v47 = v73;
  (*(v71 + 16))(v70, v76, v73);
  v96[1] = v45;
  v48 = v38;
  v49 = v38;
  v50 = v74;
  sub_23B7819C8(v49, v74);
  v93 = v125;
  v94 = v126;
  v95 = v127;
  v89 = v122[5];
  v90 = v122[6];
  v91 = v123;
  v92 = v124;
  v85 = v122[1];
  v86 = v122[2];
  v87 = v122[3];
  v88 = v122[4];
  v83 = v121;
  v84 = v122[0];
  v96[2] = v50;
  v96[3] = &v83;
  sub_23B779B38(&v121, &v97, &qword_27E180C48, &unk_23B7BDF70);
  v82[0] = v43;
  v82[1] = v47;
  v82[2] = v69;
  v82[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C48, &unk_23B7BDF70);
  v78 = v62;
  *&v97 = v59;
  *(&v97 + 1) = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = sub_23B781A2C(&qword_27E180C90, type metadata accessor for OfferView, &protocol conformance descriptor for OfferView);
  v81 = sub_23B781A74();
  sub_23B7AE6C8(v96, 4uLL, v82);
  sub_23B7826E8(&v121, &qword_27E180C48, &unk_23B7BDF70);
  sub_23B781E28(v48);
  v51 = *(v44 + 8);
  v51(v46, v47);
  v52 = v66;
  v66(v77, v43);
  v107 = v93;
  v108 = v94;
  v109 = v95;
  v103 = v89;
  v104 = v90;
  v105 = v91;
  v106 = v92;
  v99 = v85;
  v100 = v86;
  v101 = v87;
  v102 = v88;
  v97 = v83;
  v98 = v84;
  sub_23B7826E8(&v97, &qword_27E180C48, &unk_23B7BDF70);
  sub_23B781E28(v50);
  v51(v45, v47);
  return v52(v75, v43);
}

double sub_23B7811D0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for ManagedAppCellContext(0, a1, a2, a4);
  v7 = sub_23B7B4420(v6);
  v9 = type metadata accessor for DefaultManagedAppCell(0, a1, a2, v8);
  v11 = v9;
  if (v7)
  {
    sub_23B77F528(v9, &v42, v10);
    v12 = v42;
    v13 = v43;
    v14 = v44;
    v34 = *v45;
    sub_23B77F018(v11, &v42);
    v15 = v42;
    v16 = v43;
    v32 = *(&v43 + 1);
    sub_23B781E88(v12, *(&v12 + 1), v13, *(&v13 + 1));

    sub_23B781ECC(v15, *(&v15 + 1), v16);

    sub_23B781E88(v12, *(&v12 + 1), v13, *(&v13 + 1));

    sub_23B781ECC(v15, *(&v15 + 1), v16);

    sub_23B781FF8(v15, *(&v15 + 1), v16);

    sub_23B781FB4(v12, *(&v12 + 1), v13, *(&v13 + 1), v17);

    v42 = v12;
    v43 = v13;
    v44 = v14;
    *v45 = v34;
    *&v45[8] = v15;
    v45[24] = v16;
    *&v45[32] = v32;
    v45[40] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D18, &qword_23B7BE060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D20, &qword_23B7BE068);
    v18 = MEMORY[0x277CE14C0];
    sub_23B7826A0(&qword_27E180D28, &qword_27E180D18, &qword_23B7BE060, MEMORY[0x277CE14C0]);
    sub_23B7826A0(&qword_27E180D30, &qword_27E180D20, &qword_23B7BE068, v18);
    sub_23B7BC090();
    sub_23B781FF8(v15, *(&v15 + 1), v16);

    sub_23B781FB4(v12, *(&v12 + 1), v13, *(&v13 + 1), v19);
  }

  else
  {
    sub_23B77F018(v9, &v42);
    v20 = v42;
    v21 = v43;
    v22 = *(&v43 + 1);
    sub_23B77F19C(v11, &v42, v23);
    v24 = v42;
    v25 = v43;
    v26 = *(&v44 + 1);
    v33 = v44;
    v35 = *v45;
    sub_23B781ECC(v20, *(&v20 + 1), v21);

    sub_23B781E88(v24, *(&v24 + 1), v25, *(&v25 + 1));

    sub_23B781ECC(v20, *(&v20 + 1), v21);

    sub_23B781E88(v24, *(&v24 + 1), v25, *(&v25 + 1));

    sub_23B781FB4(v24, *(&v24 + 1), v25, *(&v25 + 1), v27);

    sub_23B781FF8(v20, *(&v20 + 1), v21);

    v42 = v20;
    LOBYTE(v43) = v21;
    *(&v43 + 1) = v22;
    v44 = v24;
    *v45 = v25;
    *&v45[16] = v33;
    *&v45[24] = v26;
    *&v45[32] = v35;
    v45[40] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D18, &qword_23B7BE060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D20, &qword_23B7BE068);
    v28 = MEMORY[0x277CE14C0];
    sub_23B7826A0(&qword_27E180D28, &qword_27E180D18, &qword_23B7BE060, MEMORY[0x277CE14C0]);
    sub_23B7826A0(&qword_27E180D30, &qword_27E180D20, &qword_23B7BE068, v28);
    sub_23B7BC090();
    sub_23B781FB4(v24, *(&v24 + 1), v25, *(&v25 + 1), v29);

    sub_23B781FF8(v20, *(&v20 + 1), v21);
  }

  *&v45[16] = *v41;
  *&v45[25] = *&v41[9];
  v42 = v37;
  v43 = v38;
  a3[2] = v39;
  a3[3] = v40;
  a3[4] = *&v45[16];
  *(a3 + 73) = *&v45[25];
  result = *&v42;
  v31 = v43;
  *a3 = v42;
  a3[1] = v31;
  return result;
}

uint64_t sub_23B781724@<X0>(uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B781788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ManagedAppCellContext(0, a4, a5, a4);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for DefaultManagedAppCell(0, a4, a5, v13);
  sub_23B782748(a2, a6 + v14[9], &qword_27E180DA0, &unk_23B7BEB90);
  sub_23B782748(a3, a6 + v14[10], &qword_27E180DA8, &qword_23B7BE0C0);
  v15 = v14[11];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0, &qword_23B7BFE30);
  swift_storeEnumTagMultiPayload();
  sub_23B77DAC8();
  sub_23B7BBD20();
  sub_23B7BBD20();
  return sub_23B7BBD20();
}

unint64_t sub_23B781950()
{
  result = qword_27E180C70;
  if (!qword_27E180C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180C70);
  }

  return result;
}

double sub_23B7819A4(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_23B7819C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B781A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B781A74()
{
  result = qword_27E180C98;
  if (!qword_27E180C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48, &unk_23B7BDF70);
    sub_23B781AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180C98);
  }

  return result;
}

unint64_t sub_23B781AF8()
{
  result = qword_27E180CA0;
  if (!qword_27E180CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CA8, &qword_23B7BDF90);
    sub_23B781BB0();
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50, &qword_23B7BE460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CA0);
  }

  return result;
}

unint64_t sub_23B781BB0()
{
  result = qword_27E180CB0;
  if (!qword_27E180CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CB8, &qword_23B7BDF98);
    sub_23B781C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CB0);
  }

  return result;
}

unint64_t sub_23B781C3C()
{
  result = qword_27E180CC0;
  if (!qword_27E180CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CC8, &qword_23B7BDFA0);
    sub_23B781CF4();
    sub_23B7826A0(&qword_27E180D00, &qword_27E180D08, &unk_23B7BDFC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CC0);
  }

  return result;
}

unint64_t sub_23B781CF4()
{
  result = qword_27E180CD0;
  if (!qword_27E180CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CD8, &qword_23B7BDFA8);
    sub_23B781DAC();
    sub_23B7826A0(&qword_27E180CF0, &qword_27E180CF8, &qword_23B7BE5E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CD0);
  }

  return result;
}

unint64_t sub_23B781DAC()
{
  result = qword_27E180CE0;
  if (!qword_27E180CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CE8, &unk_23B7BDFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CE0);
  }

  return result;
}

uint64_t sub_23B781E28(uint64_t a1)
{
  v2 = type metadata accessor for OfferView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B781E88(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23B781ECC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23B781ECC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23B781EE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBF10();
  *a1 = result;
  return result;
}

uint64_t sub_23B781F10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBF10();
  *a1 = result;
  return result;
}

uint64_t sub_23B781F9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

double sub_23B781FB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a4)
  {
    sub_23B781FF8(a1, a2, a3 & 1);
  }

  return result;
}

double sub_23B781FF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

BOOL sub_23B782014(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_23B7BC050();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_23B78242C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C38, &qword_23B7BDF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B78249C()
{
  result = qword_27E180D40;
  if (!qword_27E180D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C38, &qword_23B7BDF60);
    sub_23B7826A0(&qword_27E180D48, &qword_27E180D50, &qword_23B7BE078, MEMORY[0x277CE1198]);
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50, &qword_23B7BE460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180D40);
  }

  return result;
}

uint64_t sub_23B782580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C38, &qword_23B7BDF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B7825E8()
{
  result = qword_27E180D70;
  if (!qword_27E180D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180D58, &qword_23B7BE080);
    sub_23B7826A0(&qword_27E180D78, &qword_27E180D80, &qword_23B7BE098, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180D70);
  }

  return result;
}

uint64_t sub_23B7826A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23B7826E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B782748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B7827C8(void *a1)
{
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C40, &qword_23B7BDF68);
  type metadata accessor for OfferView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48, &unk_23B7BDF70);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50, &qword_23B7BE460);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C38, &qword_23B7BDF60);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  sub_23B7BBE70();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23B7BC0A0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void OfferView.init(offerState:action:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v7 = sub_23B7BC310();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v22 = *(a1 + 8);
  HIDWORD(v21) = *(a1 + 16);
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v12 = type metadata accessor for OfferView(0);
  v13 = v12[5];
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0, &qword_23B7BFE30);
  swift_storeEnumTagMultiPayload();
  v14 = a4 + v12[6];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  v15 = a4 + v12[8];
  v27 = 0;
  sub_23B7BC560();
  v16 = v25;
  *v15 = v24;
  *(v15 + 8) = v16;
  v24 = 0x4059000000000000;
  sub_23B77DAC8();
  sub_23B7BBD20();
  v24 = 0x402E000000000000;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A58], v7);
  sub_23B7BBD10();
  v24 = v11;
  v25 = v22;
  v26 = BYTE4(v21);
  type metadata accessor for OfferViewModel();
  swift_allocObject();

  sub_23B776ADC(&v24, v23, a3);

  sub_23B789618(&qword_27E180DC8, type metadata accessor for OfferViewModel, &unk_23B7BDA60);
  v17 = sub_23B7BBE20();
  v19 = v18;

  v20 = (a4 + v12[7]);
  *v20 = v17;
  v20[1] = v19;
}

uint64_t OfferView.Space.hashValue.getter()
{
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](0);
  return sub_23B7BCD10();
}

uint64_t sub_23B782E38()
{
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](0);
  return sub_23B7BCD10();
}

uint64_t sub_23B782EA4(uint64_t a1)
{
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](0);
  return sub_23B7BCD10();
}

uint64_t OfferView.body.getter()
{
  v1 = v0;
  v2 = sub_23B7BC030();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OfferView(0);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = v6;
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DD0, &unk_23B7BE208);
  MEMORY[0x28223BE20](v36);
  v8 = (&v30 - v7);
  v9 = sub_23B7BBFA0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  if (*(v1 + 8) == 1)
  {
    v39 = *v1;
  }

  else
  {
    v31 = v11;

    sub_23B7BCA10();
    v15 = sub_23B7BC210();
    v32 = v2;
    v16 = v15;
    sub_23B7BBB00();

    v2 = v32;
    sub_23B7BBF90();
    swift_getAtKeyPath();
    v17 = sub_23B779D74(v14, 0);
    (*(v10 + 8))(v13, v31, v17);
    LOBYTE(v14) = v39;
  }

  v38 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  sub_23B776248(&v38, v40, *v40 / 100.0);
  sub_23B783394(v1, v40, v8);
  v18 = v35;
  sub_23B7819C8(v1, v35);
  v19 = (*(v33 + 80) + 237) & ~*(v33 + 80);
  v20 = swift_allocObject();
  v21 = v40[11];
  v20[11] = v40[10];
  v20[12] = v21;
  v20[13] = *v41;
  *(v20 + 221) = *&v41[13];
  v22 = v40[7];
  v20[7] = v40[6];
  v20[8] = v22;
  v23 = v40[9];
  v20[9] = v40[8];
  v20[10] = v23;
  v24 = v40[3];
  v20[3] = v40[2];
  v20[4] = v24;
  v25 = v40[5];
  v20[5] = v40[4];
  v20[6] = v25;
  v26 = v40[1];
  v20[1] = v40[0];
  v20[2] = v26;
  sub_23B788C0C(v18, v20 + v19);
  v27 = (v8 + *(v36 + 36));
  *v27 = sub_23B7878F4;
  v27[1] = 0;
  v27[2] = sub_23B788C70;
  v27[3] = v20;
  v28 = v37;
  sub_23B7BC020();
  sub_23B788CE4();
  sub_23B7BC440();
  (*(v3 + 8))(v28, v2);
  return sub_23B7826E8(v8, &qword_27E180DD0, &unk_23B7BE208);
}

uint64_t sub_23B783394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v170 = a3;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E88, &qword_23B7BE268);
  MEMORY[0x28223BE20](v152);
  v136 = &v132 - v5;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FB0, &qword_23B7BE418);
  MEMORY[0x28223BE20](v149);
  v151 = &v132 - v6;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FB8, &qword_23B7BE420);
  MEMORY[0x28223BE20](v145);
  v147 = &v132 - v7;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F38, &qword_23B7BE2B8);
  MEMORY[0x28223BE20](v150);
  v148 = &v132 - v8;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F28, &qword_23B7BE2B0);
  MEMORY[0x28223BE20](v169);
  v153 = &v132 - v9;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FC0, &qword_23B7BE428);
  MEMORY[0x28223BE20](v138);
  v139 = &v132 - v10;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F18, &qword_23B7BE2A8);
  MEMORY[0x28223BE20](v164);
  v140 = &v132 - v11;
  *(&v165 + 1) = type metadata accessor for Style.CapsuleButtonStyle(0);
  MEMORY[0x28223BE20](*(&v165 + 1));
  v157 = (&v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E90, &qword_23B7BE270);
  v159 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v156 = &v132 - v13;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FC8, &qword_23B7BE430);
  v155 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v154 = &v132 - v14;
  v144 = sub_23B7BBE90();
  v134 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v133 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180EF8, &qword_23B7BE2A0);
  v132 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v17 = &v132 - v16;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FD0, &qword_23B7BE438);
  v135 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v137 = &v132 - v18;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FD8, &qword_23B7BE440);
  MEMORY[0x28223BE20](v166);
  v168 = &v132 - v19;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FE0, &qword_23B7BE448);
  MEMORY[0x28223BE20](v158);
  v161 = &v132 - v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FE8, &qword_23B7BE450);
  MEMORY[0x28223BE20](v141);
  v22 = &v132 - v21;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E18, &qword_23B7BE230);
  MEMORY[0x28223BE20](v160);
  v142 = &v132 - v23;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E08, &qword_23B7BE228);
  MEMORY[0x28223BE20](v167);
  v162 = &v132 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E38, &qword_23B7BE240);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = (&v132 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E28, &qword_23B7BE238);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v132 - v32;
  v34 = type metadata accessor for OfferView(0);
  v35 = a1;
  v36 = *(a1 + *(v34 + 28) + 8);
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  if (!*(v36 + 32))
  {
    sub_23B78524C(*(v36 + 16), v38 & 1, v35, a2, v27);
    sub_23B7BC6A0();
    sub_23B7BBEB0();
    sub_23B782748(v27, v31, &qword_27E180E38, &qword_23B7BE240);
    v60 = &v31[*(v28 + 36)];
    v61 = v180;
    *(v60 + 4) = v179;
    *(v60 + 5) = v61;
    *(v60 + 6) = v181;
    v62 = v176;
    *v60 = v175;
    *(v60 + 1) = v62;
    v63 = v178;
    *(v60 + 2) = v177;
    *(v60 + 3) = v63;
    v64 = &qword_23B7BE238;
    sub_23B782748(v31, v33, &qword_27E180E28, &qword_23B7BE238);
    sub_23B779B38(v33, v22, &qword_27E180E28, &qword_23B7BE238);
    swift_storeEnumTagMultiPayload();
    sub_23B78902C();
    v65 = sub_23B7826A0(&qword_27E180F00, &qword_27E180EF8, &qword_23B7BE2A0, MEMORY[0x277CDF028]);
    v66 = sub_23B789618(&qword_27E180F08, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v171 = v143;
    v172 = v144;
    v173 = v65;
    v174 = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v142;
    sub_23B7BC090();
    sub_23B779B38(v67, v161, &qword_27E180E18, &qword_23B7BE230);
    swift_storeEnumTagMultiPayload();
    sub_23B788EE0();
    sub_23B789660();
    v68 = v162;
    sub_23B7BC090();
    sub_23B7826E8(v67, &qword_27E180E18, &qword_23B7BE230);
    sub_23B779B38(v68, v168, &qword_27E180E08, &qword_23B7BE228);
    swift_storeEnumTagMultiPayload();
    sub_23B788E54();
    sub_23B7897A4();
    sub_23B7BC090();
    sub_23B7826E8(v68, &qword_27E180E08, &qword_23B7BE228);
    v69 = v33;
    v70 = &qword_27E180E28;
    return sub_23B7826E8(v69, v70, v64);
  }

  if (*(v36 + 32) == 1)
  {
    v40 = *(a2 + 184);
    v39 = *(a2 + 192);
    v41 = *(a2 + 216);
    MEMORY[0x28223BE20](v34);
    swift_retain_n();
    sub_23B781F9C(v37, v38, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0, &qword_23B7BE458);
    sub_23B78A2B8();
    v42 = v156;
    sub_23B7BC5B0();
    sub_23B776230(v37, v38, 1);
    KeyPath = swift_getKeyPath();
    v44 = v157;
    *v157 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
    swift_storeEnumTagMultiPayload();
    v45 = *(&v165 + 1);
    v46 = v44 + *(*(&v165 + 1) + 20);
    *v46 = swift_getKeyPath();
    *(v46 + 8) = 0;
    *(v44 + v45[6]) = v41;
    v47 = (v44 + v45[7]);
    v48 = *(a2 + 168);
    *v47 = *(a2 + 152);
    v47[1] = v48;
    *(v44 + v45[8]) = v40;
    *(v44 + v45[9]) = v39;
    v49 = sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
    v50 = sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
    v51 = v154;
    v52 = v165;
    sub_23B7BC3D0();

    sub_23B78A3D0(v44);
    (*(v159 + 8))(v42, v52);
    v53 = v155;
    v54 = v51;
    v55 = v163;
    (*(v155 + 16))(v147, v51, v163);
    swift_storeEnumTagMultiPayload();
    *&v175 = v52;
    *(&v175 + 1) = v45;
    *&v176 = v49;
    *(&v176 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    v56 = v148;
    sub_23B7BC090();
    sub_23B779B38(v56, v151, &qword_27E180F38, &qword_23B7BE2B8);
    swift_storeEnumTagMultiPayload();
    sub_23B789830();
    sub_23B7893E8();
    v57 = v153;
    sub_23B7BC090();
    sub_23B7826E8(v56, &qword_27E180F38, &qword_23B7BE2B8);
    v58 = &qword_27E180F28;
    v59 = &qword_23B7BE2B0;
    sub_23B779B38(v57, v168, &qword_27E180F28, &qword_23B7BE2B0);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    sub_23B788E54();
    sub_23B7897A4();
    sub_23B7BC090();
    sub_23B7826E8(v57, v58, v59);
    return (*(v53 + 8))(v54, v55);
  }

  if (v37 > 1)
  {
    if (v37 ^ 2 | v38)
    {
      if (v37 ^ 3 | v38)
      {
        v104 = sub_23B7A1250(0xD00000000000001CLL, 0x800000023B7C0BB0);
        v105 = *(a2 + 168);
        v175 = *(a2 + 152);
        v176 = v105;
        v107 = *(a2 + 184);
        v106 = *(a2 + 192);
        v108 = *(a2 + 216);
        MEMORY[0x28223BE20](v104);
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0, &qword_23B7BE458);
        sub_23B78A2B8();
        v109 = v156;
        sub_23B7BC5B0();

        v110 = swift_getKeyPath();
        v111 = v157;
        *v157 = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
        swift_storeEnumTagMultiPayload();
        v112 = *(&v165 + 1);
        v113 = v111 + *(*(&v165 + 1) + 20);
        *v113 = swift_getKeyPath();
        *(v113 + 8) = 0;
        *(v111 + v112[6]) = v108;
        v114 = (v111 + v112[7]);
        v115 = v176;
        *v114 = v175;
        v114[1] = v115;
        *(v111 + v112[8]) = v107;
        *(v111 + v112[9]) = v106;
        sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
        sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
        v116 = v136;
        v117 = v165;
        sub_23B7BC3D0();

        sub_23B78A3D0(v111);
        (*(v159 + 8))(v109, v117);
        v118 = swift_getKeyPath();
        v119 = swift_allocObject();
        *(v119 + 16) = 1;
        v120 = (v116 + *(v152 + 36));
        *v120 = v118;
        v120[1] = sub_23B78A43C;
        v120[2] = v119;
        v75 = &qword_27E180E88;
        v64 = &qword_23B7BE268;
        sub_23B779B38(v116, v151, &qword_27E180E88, &qword_23B7BE268);
        swift_storeEnumTagMultiPayload();
        sub_23B789830();
        sub_23B7893E8();
        v121 = v153;
        sub_23B7BC090();
        sub_23B779B38(v121, v168, &qword_27E180F28, &qword_23B7BE2B0);
        swift_storeEnumTagMultiPayload();
        sub_23B788E54();
        sub_23B7897A4();
        sub_23B7BC090();
        sub_23B7826E8(v121, &qword_27E180F28, &qword_23B7BE2B0);
        v69 = v116;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v71 = sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
        v72 = sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
        v175 = v165;
        *&v176 = v71;
        *(&v176 + 1) = v72;
        swift_getOpaqueTypeConformance2();
        v73 = v148;
        sub_23B7BC090();
        sub_23B779B38(v73, v151, &qword_27E180F38, &qword_23B7BE2B8);
        swift_storeEnumTagMultiPayload();
        sub_23B789830();
        sub_23B7893E8();
        v74 = v153;
        sub_23B7BC090();
        sub_23B7826E8(v73, &qword_27E180F38, &qword_23B7BE2B8);
        v75 = &qword_27E180F28;
        v64 = &qword_23B7BE2B0;
        sub_23B779B38(v74, v168, &qword_27E180F28, &qword_23B7BE2B0);
        swift_storeEnumTagMultiPayload();
        sub_23B788E54();
        sub_23B7897A4();
        sub_23B7BC090();
        v69 = v74;
      }

      v70 = v75;
      return sub_23B7826E8(v69, v70, v64);
    }

    v91 = sub_23B7A1250(0xD000000000000017, 0x800000023B7C0B70);
    v92 = *(a2 + 168);
    v175 = *(a2 + 152);
    v176 = v92;
    v94 = *(a2 + 184);
    v93 = *(a2 + 192);
    v95 = *(a2 + 216);
    MEMORY[0x28223BE20](v91);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0, &qword_23B7BE458);
    sub_23B78A2B8();
    v96 = v156;
    sub_23B7BC5B0();

    v97 = swift_getKeyPath();
    v98 = v157;
    *v157 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
    swift_storeEnumTagMultiPayload();
    v84 = *(&v165 + 1);
    v99 = v98 + *(*(&v165 + 1) + 20);
    *v99 = swift_getKeyPath();
    *(v99 + 8) = 0;
    *(v98 + v84[6]) = v95;
    v100 = (v98 + v84[7]);
    v101 = v176;
    *v100 = v175;
    v100[1] = v101;
    *(v98 + v84[8]) = v94;
    *(v98 + v84[9]) = v93;
    v88 = sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
    v89 = sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
    v54 = v154;
    v90 = v165;
    sub_23B7BC3D0();

    sub_23B78A3D0(v98);
    (*(v159 + 8))(v96, v90);
    v53 = v155;
    v55 = v163;
    (*(v155 + 16))(v139, v54, v163);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v171 = v90;
    v172 = v84;
    v173 = v88;
    v174 = v89;
    swift_getOpaqueTypeConformance2();
    v102 = v140;
    sub_23B7BC090();
    sub_23B779B38(v102, v161, &qword_27E180F18, &qword_23B7BE2A8);
    swift_storeEnumTagMultiPayload();
    sub_23B788EE0();
    sub_23B789660();
    v57 = v162;
    sub_23B7BC090();
    sub_23B7826E8(v102, &qword_27E180F18, &qword_23B7BE2A8);
    v58 = &qword_27E180E08;
    v59 = &qword_23B7BE228;
    sub_23B779B38(v57, v168, &qword_27E180E08, &qword_23B7BE228);
    goto LABEL_13;
  }

  if (!(v37 | v38))
  {
    v76 = sub_23B7A1250(0xD00000000000001ALL, 0x800000023B7C0B90);
    v77 = *(a2 + 168);
    v175 = *(a2 + 152);
    v176 = v77;
    v79 = *(a2 + 184);
    v78 = *(a2 + 192);
    v80 = *(a2 + 216);
    MEMORY[0x28223BE20](v76);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0, &qword_23B7BE458);
    sub_23B78A2B8();
    v81 = v156;
    sub_23B7BC5B0();

    v82 = swift_getKeyPath();
    v83 = v157;
    *v157 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
    swift_storeEnumTagMultiPayload();
    v84 = *(&v165 + 1);
    v85 = v83 + *(*(&v165 + 1) + 20);
    *v85 = swift_getKeyPath();
    *(v85 + 8) = 0;
    *(v83 + v84[6]) = v80;
    v86 = (v83 + v84[7]);
    v87 = v176;
    *v86 = v175;
    v86[1] = v87;
    *(v83 + v84[8]) = v79;
    *(v83 + v84[9]) = v78;
    v88 = sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
    v89 = sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
    v54 = v154;
    v90 = v165;
    sub_23B7BC3D0();

    sub_23B78A3D0(v83);
    (*(v159 + 8))(v81, v90);
    v53 = v155;
    v55 = v163;
    (*(v155 + 16))(v139, v54, v163);
    goto LABEL_12;
  }

  MEMORY[0x28223BE20](v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181000, &qword_23B7BE500);
  sub_23B78A478();
  sub_23B7BC5B0();
  v122 = v133;
  sub_23B7BBE80();
  v123 = sub_23B7826A0(&qword_27E180F00, &qword_27E180EF8, &qword_23B7BE2A0, MEMORY[0x277CDF028]);
  v124 = sub_23B789618(&qword_27E180F08, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v125 = v137;
  v126 = v143;
  v127 = v144;
  sub_23B7BC3C0();
  (*(v134 + 8))(v122, v127);
  (*(v132 + 8))(v17, v126);
  v128 = v135;
  v129 = v146;
  (*(v135 + 16))(v22, v125, v146);
  swift_storeEnumTagMultiPayload();
  sub_23B78902C();
  *&v175 = v126;
  *(&v175 + 1) = v127;
  *&v176 = v123;
  *(&v176 + 1) = v124;
  swift_getOpaqueTypeConformance2();
  v130 = v142;
  sub_23B7BC090();
  sub_23B779B38(v130, v161, &qword_27E180E18, &qword_23B7BE230);
  swift_storeEnumTagMultiPayload();
  sub_23B788EE0();
  sub_23B789660();
  v131 = v162;
  sub_23B7BC090();
  sub_23B7826E8(v130, &qword_27E180E18, &qword_23B7BE230);
  sub_23B779B38(v131, v168, &qword_27E180E08, &qword_23B7BE228);
  swift_storeEnumTagMultiPayload();
  sub_23B788E54();
  sub_23B7897A4();
  sub_23B7BC090();
  sub_23B7826E8(v131, &qword_27E180E08, &qword_23B7BE228);
  return (*(v128 + 8))(v137, v129);
}

uint64_t sub_23B78524C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v82 = a3;
  LODWORD(v81) = a2;
  v75 = a1;
  v83 = a5;
  v6 = sub_23B7BBE90();
  v80 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v79 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181040, &qword_23B7BE520);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v60 - v8;
  v9 = type metadata accessor for Style.CapsuleButtonStyle(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E90, &qword_23B7BE270);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v60 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E88, &qword_23B7BE268);
  MEMORY[0x28223BE20](v66);
  v68 = &v60 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E78, &qword_23B7BE260);
  MEMORY[0x28223BE20](v69);
  v71 = &v60 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E68, &qword_23B7BE258);
  MEMORY[0x28223BE20](v70);
  v73 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E58, &qword_23B7BE250);
  v18 = MEMORY[0x28223BE20](v17);
  v72 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v60 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181048, &qword_23B7BE528);
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180ED0, &qword_23B7BE288);
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  if (v81)
  {
    sub_23B7867E0(&v60 - v25);
    sub_23B779B38(v26, v23, &qword_27E180ED0, &qword_23B7BE288);
    swift_storeEnumTagMultiPayload();
    sub_23B789218();
    sub_23B78A198(&qword_27E180EC8, &qword_27E180ED0, &qword_23B7BE288, sub_23B789560);
    sub_23B7BC090();
    v27 = v26;
    v28 = &qword_27E180ED0;
    v29 = &qword_23B7BE288;
  }

  else
  {
    v61 = v23;
    v62 = v21;
    v63 = v24;
    v81 = v17;
    v64 = v6;
    v30 = type metadata accessor for OfferView(0);
    v31 = *(a4 + 168);
    v92 = *(a4 + 152);
    v93 = v31;
    v32 = *(a4 + 184);
    v33 = *(a4 + 192);
    v82 = a4;
    v34 = *(a4 + 216);
    MEMORY[0x28223BE20](v30);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0, &qword_23B7BE458);
    sub_23B78A2B8();
    sub_23B7BC5B0();

    *v11 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
    swift_storeEnumTagMultiPayload();
    v35 = v11 + v9[5];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    *(v11 + v9[6]) = v34;
    v36 = (v11 + v9[7]);
    v37 = v93;
    *v36 = v92;
    v36[1] = v37;
    *(v11 + v9[8]) = v32;
    *(v11 + v9[9]) = v33;
    sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
    sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
    v38 = v68;
    v39 = v67;
    sub_23B7BC3D0();
    sub_23B78A3D0(v11);
    (*(v65 + 8))(v13, v39);
    KeyPath = swift_getKeyPath();
    v41 = swift_allocObject();
    *(v41 + 16) = 1;
    v42 = (v38 + *(v66 + 36));
    *v42 = KeyPath;
    v42[1] = sub_23B78ABC8;
    v42[2] = v41;
    sub_23B7BC6A0();
    sub_23B7BBEB0();
    v43 = v71;
    sub_23B782748(v38, v71, &qword_27E180E88, &qword_23B7BE268);
    v44 = (v43 + *(v69 + 36));
    v45 = v89;
    v44[4] = v88;
    v44[5] = v45;
    v44[6] = v90;
    v47 = v85;
    v46 = v86;
    *v44 = v84;
    v44[1] = v47;
    v48 = v87;
    v44[2] = v46;
    v44[3] = v48;
    v49 = v73;
    v50 = sub_23B782748(v43, v73, &qword_27E180E78, &qword_23B7BE260);
    *(v49 + *(v70 + 36)) = 0;
    v91 = *(v82 + 64);
    v51 = v72;
    v52 = &v72[*(v81 + 36)];
    MEMORY[0x28223BE20](v50);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181050, &qword_23B7BE530);
    sub_23B78A198(&qword_27E181058, &qword_27E181050, &qword_23B7BE530, sub_23B78A5F4);
    v53 = v76;
    sub_23B7BC5B0();
    v54 = v79;
    sub_23B7BBE80();
    sub_23B7826A0(&qword_27E181090, &qword_27E181040, &qword_23B7BE520, MEMORY[0x277CDF028]);
    sub_23B789618(&qword_27E180F08, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v55 = v78;
    v56 = v64;
    sub_23B7BC3C0();
    (*(v80 + 8))(v54, v56);
    (*(v77 + 8))(v53, v55);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180EC0, &qword_23B7BE280);
    *&v52[*(v57 + 36)] = v91;
    sub_23B782748(v49, v51, &qword_27E180E68, &qword_23B7BE258);
    v58 = v74;
    sub_23B782748(v51, v74, &qword_27E180E58, &qword_23B7BE250);
    sub_23B779B38(v58, v61, &qword_27E180E58, &qword_23B7BE250);
    swift_storeEnumTagMultiPayload();
    sub_23B789218();
    sub_23B78A198(&qword_27E180EC8, &qword_27E180ED0, &qword_23B7BE288, sub_23B789560);
    sub_23B7BC090();
    v27 = v58;
    v28 = &qword_27E180E58;
    v29 = &qword_23B7BE250;
  }

  return sub_23B7826E8(v27, v28, v29);
}

uint64_t sub_23B785E38(uint64_t *a1, double a2)
{
  v3 = sub_23B7BC6A0();
  v5 = v4;
  sub_23B786204(__dst);
  v27 = __dst[12];
  v28 = __dst[13];
  v29 = __dst[14];
  v30 = __dst[15];
  v23 = __dst[8];
  v24 = __dst[9];
  v25 = __dst[10];
  v26 = __dst[11];
  v19 = __dst[4];
  v20 = __dst[5];
  v21 = __dst[6];
  v22 = __dst[7];
  v15 = __dst[0];
  v16 = __dst[1];
  v17 = __dst[2];
  v18 = __dst[3];
  v31[12] = __dst[12];
  v31[13] = __dst[13];
  v31[14] = __dst[14];
  v31[15] = __dst[15];
  v31[8] = __dst[8];
  v31[9] = __dst[9];
  v31[10] = __dst[10];
  v31[11] = __dst[11];
  v31[4] = __dst[4];
  v31[5] = __dst[5];
  v31[6] = __dst[6];
  v31[7] = __dst[7];
  v31[0] = __dst[0];
  v31[1] = __dst[1];
  v31[2] = __dst[2];
  v31[3] = __dst[3];
  sub_23B779B38(&v15, __src, &qword_27E181098, &qword_23B7BE550);
  sub_23B7826E8(v31, &qword_27E181098, &qword_23B7BE550);
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  LOBYTE(__dst[0]) = 0;
  sub_23B7BC6A0();
  sub_23B7BBD80();
  *&v13[3] = *&v13[27];
  *&v13[11] = *&v13[35];
  *&v13[19] = v14;
  *&__src[0] = v3;
  *(&__src[0] + 1) = v5;
  __src[13] = v44;
  __src[14] = v45;
  __src[15] = v46;
  __src[16] = v47;
  __src[9] = v40;
  __src[10] = v41;
  __src[11] = v42;
  __src[12] = v43;
  __src[5] = v36;
  __src[6] = v37;
  __src[7] = v38;
  __src[8] = v39;
  __src[1] = v32;
  __src[2] = v33;
  __src[3] = v34;
  __src[4] = v35;
  *&__src[17] = 0x3FF0000000000000;
  WORD4(__src[17]) = 0;
  *(&__src[17] + 10) = *v13;
  *(&__src[18] + 10) = *&v13[8];
  *(&__src[19] + 10) = *&v13[16];
  *(&__src[20] + 1) = *(&v14 + 1);
  sub_23B7A1250(0xD00000000000002FLL, 0x800000023B7C0F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810A0, &qword_23B7BE558);
  result = swift_allocObject();
  *(result + 16) = xmmword_23B7BD9E0;
  v7 = a2 * 100.0;
  if (COERCE__INT64(fabs(a2 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    v8 = result;
    *&__dst[0] = v7;
    v9 = sub_23B7BCC60();
    v11 = v10;
    v8[7] = MEMORY[0x277D837D0];
    v8[8] = sub_23B78A738();
    v8[4] = v9;
    v8[5] = v11;
    sub_23B7BC800();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181068, &qword_23B7BE538);
    sub_23B78A5F4();
    sub_23B78A78C();
    sub_23B7BC410();

    memcpy(__dst, __src, sizeof(__dst));
    return sub_23B7826E8(__dst, &qword_27E181068, &qword_23B7BE538);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_23B786204(uint64_t a2@<X8>)
{
  sub_23B7BC4D0();
  v17 = sub_23B7BC4E0();

  sub_23B7BC340();
  sub_23B7BBD00();
  if (qword_27E180850 != -1)
  {
    swift_once();
  }

  v15 = qword_27E184EF0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);

  sub_23B7BC340();
  sub_23B7BBD00();
  *(&v14 + 1) = sub_23B7BC4B0();
  *&v14 = swift_getKeyPath();
  MEMORY[0x28223BE20](v14);
  sub_23B7BC340();
  v4 = sub_23B7BC4B0();
  v5 = swift_getKeyPath();
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v33 = v23;
  v34 = v24;
  *&v38 = KeyPath;
  *(&v38 + 1) = v15;
  v42 = v21;
  v43 = v22;
  v40 = v19;
  v41 = v20;
  v39 = v18;
  v44 = v14;
  *a2 = v17;
  v6 = v33;
  *(a2 + 24) = v34;
  *(a2 + 8) = v6;
  v7 = v35;
  v8 = v36;
  v9 = v37;
  *(a2 + 88) = v38;
  *(a2 + 72) = v9;
  *(a2 + 56) = v8;
  *(a2 + 40) = v7;
  v10 = v39;
  *(a2 + 120) = v40;
  *(a2 + 104) = v10;
  v11 = v41;
  v12 = v42;
  v13 = v43;
  *(a2 + 184) = v44;
  *(a2 + 168) = v13;
  *(a2 + 152) = v12;
  *(a2 + 136) = v11;
  *(a2 + 200) = v28;
  *(a2 + 208) = v29;
  *(a2 + 216) = v30;
  *(a2 + 224) = v31;
  *(a2 + 232) = v32;
  *(a2 + 240) = v5;
  *(a2 + 248) = v4;

  sub_23B779B38(&v33, v46, &qword_27E1810B8, &qword_23B7BE590);
  sub_23B779B38(&v39, v46, &qword_27E1810B8, &qword_23B7BE590);
  sub_23B78A804(v28, v29, v30, v31, v32);

  sub_23B78A81C(v28, v29, v30, v31, v32);

  v45[2] = v20;
  v45[3] = v21;
  v45[4] = v22;
  v45[0] = v18;
  v45[1] = v19;
  v45[5] = v14;
  sub_23B7826E8(v45, &qword_27E1810B8, &qword_23B7BE590);
  v46[2] = v25;
  v46[3] = v26;
  v46[4] = v27;
  v46[0] = v23;
  v46[1] = v24;
  v47 = KeyPath;
  v48 = v15;
  sub_23B7826E8(v46, &qword_27E1810B8, &qword_23B7BE590);
}

uint64_t sub_23B786694(uint64_t a1, double *a2)
{
  v2 = sub_23B7BC010();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0118], v2);
  v7[0] = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  sub_23B7BC320();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23B7867E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for Style.CapsuleButtonStyle(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E90, &qword_23B7BE270);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v44 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E88, &qword_23B7BE268);
  MEMORY[0x28223BE20](v49);
  v52 = &v44 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E78, &qword_23B7BE260);
  MEMORY[0x28223BE20](v51);
  v54 = &v44 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E68, &qword_23B7BE258);
  MEMORY[0x28223BE20](v53);
  v55 = &v44 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180EE0, &qword_23B7BE290);
  MEMORY[0x28223BE20](v57);
  v56 = &v44 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180ED0, &qword_23B7BE288);
  MEMORY[0x28223BE20](v58);
  v59 = &v44 - v11;
  v12 = sub_23B7BBFA0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  if (*(v1 + 8) == 1)
  {
    v62[0] = *v1;
  }

  else
  {
    v45 = v14;

    sub_23B7BCA10();
    v18 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v19 = sub_23B779D74(v17, 0);
    (*(v13 + 8))(v16, v45, v19);
    LOBYTE(v17) = v62[0];
  }

  LOBYTE(v61[0]) = v17;
  type metadata accessor for OfferView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  sub_23B776248(v61, v71, v63[0] / 100.0);
  v20 = v75;
  v21 = v76;
  v22 = v77;
  MEMORY[0x28223BE20](v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0, &qword_23B7BE458);
  sub_23B78A2B8();
  v24 = v46;
  sub_23B7BC5B0();

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
  swift_storeEnumTagMultiPayload();
  v25 = v5 + v3[5];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  *(v5 + v3[6]) = v22;
  v26 = (v5 + v3[7]);
  v27 = v74;
  *v26 = v73;
  v26[1] = v27;
  *(v5 + v3[8]) = v20;
  *(v5 + v3[9]) = v21;
  sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
  sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
  v28 = v52;
  v29 = v50;
  sub_23B7BC3D0();
  sub_23B78A3D0(v5);
  (*(v48 + 8))(v24, v29);
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  v32 = (v28 + *(v49 + 36));
  *v32 = KeyPath;
  v32[1] = sub_23B78ABC8;
  v32[2] = v31;
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v33 = v54;
  sub_23B782748(v28, v54, &qword_27E180E88, &qword_23B7BE268);
  v34 = (v33 + *(v51 + 36));
  v35 = v69;
  v34[4] = v68;
  v34[5] = v35;
  v34[6] = v70;
  v36 = v65;
  *v34 = v64;
  v34[1] = v36;
  v37 = v67;
  v34[2] = v66;
  v34[3] = v37;
  v38 = v33;
  v39 = v55;
  sub_23B782748(v38, v55, &qword_27E180E78, &qword_23B7BE260);
  *(v39 + *(v53 + 36)) = 0;
  v78 = v72;
  sub_23B787D34(v71, v2, v61);
  *&v61[31] = v78;
  memcpy(v62, v61, sizeof(v62));
  v40 = v56;
  sub_23B782748(v39, v56, &qword_27E180E68, &qword_23B7BE258);
  memcpy((v40 + *(v57 + 36)), v62, 0x108uLL);
  memcpy(v63, v61, sizeof(v63));
  sub_23B779B38(v62, &v60, &qword_27E180EF0, &qword_23B7BE298);
  sub_23B7826E8(v63, &qword_27E180EF0, &qword_23B7BE298);
  sub_23B789560();
  v41 = v59;
  sub_23B7BC420();
  sub_23B7826E8(v40, &qword_27E180EE0, &qword_23B7BE290);
  v61[0] = sub_23B7A1250(0xD000000000000028, 0x800000023B7C0F60);
  v61[1] = v42;
  sub_23B78A78C();
  sub_23B7BBE60();

  return sub_23B7826E8(v41, &qword_27E180ED0, &qword_23B7BE288);
}

uint64_t sub_23B7870E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for Style.CapsuleButtonStyle(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E90, &qword_23B7BE270);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v46 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E88, &qword_23B7BE268);
  MEMORY[0x28223BE20](v48);
  v51 = &v46 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E78, &qword_23B7BE260);
  MEMORY[0x28223BE20](v50);
  v53 = &v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E68, &qword_23B7BE258);
  MEMORY[0x28223BE20](v52);
  v55 = &v46 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181018, &qword_23B7BE508);
  MEMORY[0x28223BE20](v54);
  v56 = &v46 - v10;
  v11 = sub_23B7BBFA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(v2 + 8) == 1)
  {
    LOBYTE(v58) = *v2;
  }

  else
  {

    sub_23B7BCA10();
    v16 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v17 = sub_23B779D74(v15, 0);
    (*(v12 + 8))(v14, v11, v17);
    LOBYTE(v15) = v58;
  }

  LOBYTE(v72) = v15;
  type metadata accessor for OfferView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  sub_23B776248(&v72, &v65, v65 / 100.0);
  v18 = v68;
  v19 = v69;
  v20 = v71;
  MEMORY[0x28223BE20](v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0, &qword_23B7BE458);
  sub_23B78A2B8();
  v22 = v46;
  sub_23B7BC5B0();

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
  swift_storeEnumTagMultiPayload();
  v23 = v5 + v3[5];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *(v5 + v3[6]) = v20;
  v24 = (v5 + v3[7]);
  v25 = v67;
  *v24 = v66;
  v24[1] = v25;
  *(v5 + v3[8]) = v18;
  *(v5 + v3[9]) = v19;
  sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
  sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
  v26 = v51;
  v27 = v49;
  sub_23B7BC3D0();
  sub_23B78A3D0(v5);
  (*(v47 + 8))(v22, v27);
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = 1;
  v30 = (v26 + *(v48 + 36));
  *v30 = KeyPath;
  v30[1] = sub_23B78ABC8;
  v30[2] = v29;
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v31 = v53;
  sub_23B782748(v26, v53, &qword_27E180E88, &qword_23B7BE268);
  v32 = (v31 + *(v50 + 36));
  v33 = v63;
  v32[4] = v62;
  v32[5] = v33;
  v32[6] = v64;
  v34 = v59;
  *v32 = v58;
  v32[1] = v34;
  v35 = v61;
  v32[2] = v60;
  v32[3] = v35;
  v36 = v55;
  sub_23B782748(v31, v55, &qword_27E180E78, &qword_23B7BE260);
  *(v36 + *(v52 + 36)) = 0;
  sub_23B7BC4D0();
  v37 = sub_23B7BC4E0();

  LOBYTE(v31) = sub_23B7BC220();
  v38 = v36;
  v39 = v56;
  sub_23B782748(v38, v56, &qword_27E180E68, &qword_23B7BE258);
  v40 = v39 + *(v54 + 36);
  *v40 = v37;
  *(v40 + 8) = v31;
  v72 = v70;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181000, &qword_23B7BE500);
  v42 = v57;
  v43 = v57 + *(v41 + 36);
  sub_23B788148(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181038, &qword_23B7BE518);
  *(v43 + *(v44 + 36)) = v72;
  return sub_23B782748(v39, v42, &qword_27E181018, &qword_23B7BE508);
}

uint64_t sub_23B7878F4@<X0>(double *a1@<X8>)
{
  v2 = sub_23B7BC0B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B78A25C();
  sub_23B7BC0F0();
  sub_23B7BBDA0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

void sub_23B787A10(double *a1, double *a2, uint64_t *a3)
{
  v6 = sub_23B7BBFA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v39 = a1[2];
  v40 = v10;
  v12 = type metadata accessor for OfferView(0);
  v13 = *(a3 + *(v12 + 28) + 8);
  v14 = *(v13 + 40);
  v15 = *(v13 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  v16 = a2[20];
  v38 = a2[19];
  v18 = a2[21];
  v17 = a2[22];
  v19 = a2[23];
  v20 = sub_23B776798(v14, v15, v41[0]);
  v22 = v21;

  v23 = a2[24];
  v24 = *a3;
  if (*(a3 + 8) == 1)
  {
    v25 = *a3;
  }

  else
  {

    sub_23B7BCA10();
    v26 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v27 = sub_23B779D74(v24, 0);
    (*(v7 + 8))(v9, v6, v27);
    v25 = LOBYTE(v41[0]);
  }

  v28 = a3 + *(v12 + 24);
  v30 = *v28;
  v29 = *(v28 + 1);
  if (v28[16] == 1)
  {
  }

  else
  {

    sub_23B7BCA10();
    v31 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v32 = sub_23B788C00(v30, v29, 0);
    (*(v7 + 8))(v9, v6, v32);
    v30 = *&v41[0];
  }

  v33 = v17 + v16 + ceil(v20);
  if (v33 <= v19)
  {
    v33 = v19;
  }

  if ((v25 - 1) >= 3)
  {
    v34 = v11 + v39 - v33;
  }

  else
  {
    v34 = v11;
  }

  v35 = v18 + v38 + ceil(v22);
  v41[0] = v34;
  v41[1] = v40;
  if (v35 > v23)
  {
    v36 = v35;
  }

  else
  {
    v36 = v23;
  }

  v41[2] = v33;
  v41[3] = v36;
  (v30)(v41);
}

double sub_23B787D34@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OfferView(0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = a1;
  sub_23B7BC340();
  sub_23B7BBD00();
  if (qword_27E180850 != -1)
  {
    swift_once();
  }

  v8 = qword_27E184EF0;
  KeyPath = swift_getKeyPath();
  v9 = (a2 + *(v6 + 32));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v30) = *v9;
  *(&v30 + 1) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810C0, &qword_23B7BE598);
  sub_23B7BC570();
  if (v33)
  {
    v12 = 6.28318531;
  }

  else
  {
    v12 = 0.0;
  }

  sub_23B7BC730();
  v14 = v13;
  v16 = v15;
  sub_23B7BC6D0();
  v26 = sub_23B7BC6C0();

  LOBYTE(v30) = v10;
  *(&v30 + 1) = v11;
  sub_23B7BC570();
  v17 = v33;
  sub_23B7819C8(a2, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v19 = swift_allocObject();
  sub_23B788C0C(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_23B7819C8(a2, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  sub_23B788C0C(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18);
  sub_23B7BC6A0();
  sub_23B7BBD80();
  v21 = v37;
  *(a3 + 32) = v36;
  *(a3 + 48) = v21;
  *(a3 + 64) = v38;
  v22 = v35;
  *a3 = v34;
  *(a3 + 16) = v22;
  *(a3 + 80) = KeyPath;
  *(a3 + 88) = v8;
  *(a3 + 96) = v12;
  *(a3 + 104) = v14;
  *(a3 + 112) = v16;
  *(a3 + 120) = v26;
  *(a3 + 128) = v17;
  *(a3 + 136) = sub_23B78A840;
  *(a3 + 144) = v19;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 184) = sub_23B78AA14;
  *(a3 + 192) = v20;
  v23 = v31;
  *(a3 + 200) = v30;
  *(a3 + 216) = v23;
  result = v32[0];
  *(a3 + 232) = *v32;
  return result;
}

uint64_t sub_23B7880D4(uint64_t a1, char a2)
{
  type metadata accessor for OfferView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810C0, &qword_23B7BE598);
  return sub_23B7BC580();
}

uint64_t sub_23B788148@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D10, &qword_23B7BE5A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_23B7BC550();
  sub_23B7BC2A0();
  v7 = sub_23B7BC280();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_23B7BC2B0();
  sub_23B7826E8(v5, &qword_27E180D10, &qword_23B7BE5A0);
  KeyPath = swift_getKeyPath();
  v13[3] = v6;
  v13[4] = KeyPath;
  v13[5] = v8;
  v13[1] = sub_23B7A1250(0xD00000000000002BLL, 0x800000023B7C0FB0);
  v13[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810C8, &qword_23B7BE5D8);
  sub_23B78AA88();
  sub_23B78A78C();
  sub_23B7BC400();

  v11 = sub_23B7BC4B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810D8, &qword_23B7BE5E8);
  *(a2 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_23B788348@<X0>(uint64_t a3@<X8>)
{
  sub_23B78A78C();

  v4 = sub_23B7BC380();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = swift_getKeyPath();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 32) = result;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  return result;
}

uint64_t (*EnvironmentValues.reportOfferButtonFrame.getter())()
{
  sub_23B78997C();
  sub_23B7BBFB0();
  *(swift_allocObject() + 16) = v1;
  return sub_23B789A08;
}

double sub_23B788470@<D0>(_OWORD *a1@<X8>)
{
  sub_23B78997C();
  sub_23B7BBFB0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_23B7884C0(void *a1, uint64_t a2)
{
  sub_23B78997C();

  return sub_23B7BBFC0();
}

uint64_t EnvironmentValues.reportOfferButtonFrame.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_23B78997C();
  return sub_23B7BBFC0();
}

void (*EnvironmentValues.reportOfferButtonFrame.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_23B78997C();
  sub_23B7BBFB0();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_23B78ABB0;
  *(v4 + 8) = v5;
  return sub_23B78865C;
}

void sub_23B78865C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_23B78ABCC;
    v2[3] = v5;

    sub_23B7BBFC0();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_23B78ABCC;
    v2[3] = v6;
    sub_23B7BBFC0();
  }

  free(v2);
}

void *sub_23B788748@<X0>(_BYTE *a1@<X8>)
{
  sub_23B78AB48();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

void *sub_23B788798@<X0>(_BYTE *a1@<X8>)
{
  sub_23B78AB48();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for OfferView(uint64_t a1)
{
  result = qword_27E180F68;
  if (!qword_27E180F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B788914(uint64_t a1)
{
  v2 = sub_23B7BC050();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23B7BBEF0();
}

double sub_23B7889E0@<D0>(_OWORD *a3@<X8>)
{
  sub_23B78997C();
  sub_23B7BBFB0();
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_23B788A34()
{
  v1 = type metadata accessor for OfferView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 237) & ~v2;
  v5 = v0 + v4;
  sub_23B779D74(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0, &qword_23B7BFE30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23B7BC050();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_23B788C00(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));

  v8 = v1[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v1[10], v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_23B788C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23B788C70(double *a1)
{
  v3 = *(type metadata accessor for OfferView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 237) & ~*(v3 + 80)));

  sub_23B787A10(a1, (v1 + 16), v4);
}

unint64_t sub_23B788CE4()
{
  result = qword_27E180DD8;
  if (!qword_27E180DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180DD0, &unk_23B7BE208);
    sub_23B7890E4(&qword_27E180DE0, &qword_27E180DE8, &qword_23B7BE218, sub_23B788DC8);
    sub_23B7826A0(&qword_27E180F40, &qword_27E180F48, &qword_23B7BE2C0, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180DD8);
  }

  return result;
}

unint64_t sub_23B788DC8()
{
  result = qword_27E180DF0;
  if (!qword_27E180DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180DF8, &qword_23B7BE220);
    sub_23B788E54();
    sub_23B7897A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180DF0);
  }

  return result;
}

unint64_t sub_23B788E54()
{
  result = qword_27E180E00;
  if (!qword_27E180E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E08, &qword_23B7BE228);
    sub_23B788EE0();
    sub_23B789660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E00);
  }

  return result;
}

unint64_t sub_23B788EE0()
{
  result = qword_27E180E10;
  if (!qword_27E180E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E18, &qword_23B7BE230);
    sub_23B78902C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180EF8, &qword_23B7BE2A0);
    sub_23B7BBE90();
    sub_23B7826A0(&qword_27E180F00, &qword_27E180EF8, &qword_23B7BE2A0, MEMORY[0x277CDF028]);
    sub_23B789618(&qword_27E180F08, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E10);
  }

  return result;
}

unint64_t sub_23B78902C()
{
  result = qword_27E180E20;
  if (!qword_27E180E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E28, &qword_23B7BE238);
    sub_23B7890E4(&qword_27E180E30, &qword_27E180E38, &qword_23B7BE240, sub_23B789160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E20);
  }

  return result;
}

uint64_t sub_23B7890E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23B789160()
{
  result = qword_27E180E40;
  if (!qword_27E180E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E48, &qword_23B7BE248);
    sub_23B789218();
    sub_23B78A198(&qword_27E180EC8, &qword_27E180ED0, &qword_23B7BE288, sub_23B789560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E40);
  }

  return result;
}

unint64_t sub_23B789218()
{
  result = qword_27E180E50;
  if (!qword_27E180E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E58, &qword_23B7BE250);
    sub_23B7892D0();
    sub_23B7826A0(&qword_27E180EB8, &qword_27E180EC0, &qword_23B7BE280, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E50);
  }

  return result;
}

unint64_t sub_23B7892D0()
{
  result = qword_27E180E60;
  if (!qword_27E180E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E68, &qword_23B7BE258);
    sub_23B78935C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E60);
  }

  return result;
}

unint64_t sub_23B78935C()
{
  result = qword_27E180E70;
  if (!qword_27E180E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E78, &qword_23B7BE260);
    sub_23B7893E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E70);
  }

  return result;
}

unint64_t sub_23B7893E8()
{
  result = qword_27E180E80;
  if (!qword_27E180E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E88, &qword_23B7BE268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E90, &qword_23B7BE270);
    type metadata accessor for Style.CapsuleButtonStyle(255);
    sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
    sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
    swift_getOpaqueTypeConformance2();
    sub_23B7826A0(&qword_27E180EA8, &qword_27E180EB0, &qword_23B7BE278, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E80);
  }

  return result;
}

unint64_t sub_23B789560()
{
  result = qword_27E180ED8;
  if (!qword_27E180ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180EE0, &qword_23B7BE290);
    sub_23B7892D0();
    sub_23B7826A0(&qword_27E180EE8, &qword_27E180EF0, &qword_23B7BE298, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180ED8);
  }

  return result;
}

uint64_t sub_23B789618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B789660()
{
  result = qword_27E180F10;
  if (!qword_27E180F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180F18, &qword_23B7BE2A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E90, &qword_23B7BE270);
    type metadata accessor for Style.CapsuleButtonStyle(255);
    sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
    sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F10);
  }

  return result;
}

unint64_t sub_23B7897A4()
{
  result = qword_27E180F20;
  if (!qword_27E180F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180F28, &qword_23B7BE2B0);
    sub_23B789830();
    sub_23B7893E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F20);
  }

  return result;
}

unint64_t sub_23B789830()
{
  result = qword_27E180F30;
  if (!qword_27E180F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180F38, &qword_23B7BE2B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E90, &qword_23B7BE270);
    type metadata accessor for Style.CapsuleButtonStyle(255);
    sub_23B7826A0(&qword_27E180E98, &qword_27E180E90, &qword_23B7BE270, MEMORY[0x277CDF028]);
    sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle, &unk_23B7BED04);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F30);
  }

  return result;
}

unint64_t sub_23B78997C()
{
  result = qword_27E180F50;
  if (!qword_27E180F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F50);
  }

  return result;
}

uint64_t sub_23B7899D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B789A10(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 16);
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  return v5(v7);
}

unint64_t sub_23B789A80()
{
  result = qword_27E180F58;
  if (!qword_27E180F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F58);
  }

  return result;
}

uint64_t sub_23B789B04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F60, &qword_23B7BE388);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23B789C5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F60, &qword_23B7BE388);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_23B789DA0(uint64_t a1)
{
  sub_23B78A01C(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23B789ECC(319);
    if (v2 <= 0x3F)
    {
      sub_23B789F24(319);
      if (v3 <= 0x3F)
      {
        sub_23B789F88(319);
        if (v4 <= 0x3F)
        {
          sub_23B78A01C(319, &qword_27E180F90, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_23B77DA6C(319);
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

void sub_23B789ECC(uint64_t a1)
{
  if (!qword_27E180C20)
  {
    sub_23B7BC050();
    v1 = sub_23B7BBCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E180C20);
    }
  }
}

void sub_23B789F24(uint64_t a1)
{
  if (!qword_27E180F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180F80, "b>");
    v1 = sub_23B7BBCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E180F78);
    }
  }
}

void sub_23B789F88(uint64_t a1)
{
  if (!qword_27E180F88)
  {
    type metadata accessor for OfferViewModel();
    sub_23B789618(&qword_27E180DC8, type metadata accessor for OfferViewModel, &unk_23B7BDA60);
    v1 = sub_23B7BBE30();
    if (!v2)
    {
      atomic_store(v1, &qword_27E180F88);
    }
  }
}

void sub_23B78A01C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for OfferView.Space(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for OfferView.Space(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23B78A198(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23B789618(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B78A25C()
{
  result = qword_27E180FA8;
  if (!qword_27E180FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180FA8);
  }

  return result;
}

unint64_t sub_23B78A2B8()
{
  result = qword_27E180FF8;
  if (!qword_27E180FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180FF0, &qword_23B7BE458);
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50, &qword_23B7BE460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180FF8);
  }

  return result;
}

uint64_t sub_23B78A378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B7BBF50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B78A3D0(uint64_t a1)
{
  v2 = type metadata accessor for Style.CapsuleButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B78A478()
{
  result = qword_27E181008;
  if (!qword_27E181008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181000, &qword_23B7BE500);
    sub_23B78A530();
    sub_23B7826A0(&qword_27E181030, &qword_27E181038, &qword_23B7BE518, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181008);
  }

  return result;
}

unint64_t sub_23B78A530()
{
  result = qword_27E181010;
  if (!qword_27E181010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181018, &qword_23B7BE508);
    sub_23B7892D0();
    sub_23B7826A0(&qword_27E181020, &qword_27E181028, &qword_23B7BE510, MEMORY[0x277CE0490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181010);
  }

  return result;
}

unint64_t sub_23B78A5F4()
{
  result = qword_27E181060;
  if (!qword_27E181060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181068, &qword_23B7BE538);
    sub_23B78A680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181060);
  }

  return result;
}

unint64_t sub_23B78A680()
{
  result = qword_27E181070;
  if (!qword_27E181070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181078, &qword_23B7BE540);
    sub_23B7826A0(&qword_27E181080, &qword_27E181088, &qword_23B7BE548, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181070);
  }

  return result;
}

unint64_t sub_23B78A738()
{
  result = qword_27E1810A8;
  if (!qword_27E1810A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1810A8);
  }

  return result;
}

unint64_t sub_23B78A78C()
{
  result = qword_27E1810B0;
  if (!qword_27E1810B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1810B0);
  }

  return result;
}

uint64_t sub_23B78A804(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return v5;
}

double sub_23B78A81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{
  v1 = type metadata accessor for OfferView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_23B779D74(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0, &qword_23B7BFE30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23B7BC050();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_23B788C00(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));

  v8 = v1[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v1[10], v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

unint64_t sub_23B78AA88()
{
  result = qword_27E1810D0;
  if (!qword_27E1810D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1810C8, &qword_23B7BE5D8);
    sub_23B7826A0(&qword_27E180CF0, &qword_27E180CF8, &qword_23B7BE5E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1810D0);
  }

  return result;
}

unint64_t sub_23B78AB48()
{
  result = qword_27E1810E0;
  if (!qword_27E1810E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1810E0);
  }

  return result;
}

void (*ManagedAppCellViewModel.name.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78AD40(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110, &qword_23B7BE6D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108, &qword_23B7BE6C8);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ManagedAppCellViewModel.$name.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110, &qword_23B7BE6D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108, &qword_23B7BE6C8);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$name.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110, &qword_23B7BE6D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__name;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108, &qword_23B7BE6C8);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

uint64_t sub_23B78B180(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return v3;
}

void sub_23B78B200(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a4 = v5;
  a4[1] = v6;
}

uint64_t sub_23B78B294(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t sub_23B78B32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.subtitle.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78B464(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110, &qword_23B7BE6D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108, &qword_23B7BE6C8);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ManagedAppCellViewModel.$subtitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110, &qword_23B7BE6D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108, &qword_23B7BE6C8);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$subtitle.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110, &qword_23B7BE6D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__subtitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108, &qword_23B7BE6C8);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

double ManagedAppCellViewModel.iconImageURL.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return result;
}

double sub_23B78B908(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return result;
}

uint64_t sub_23B78B988(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18, &unk_23B7C0430);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_23B779B38(a1, &v10 - v7, &qword_27E180C18, &unk_23B7C0430);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B779B38(v8, v6, &qword_27E180C18, &unk_23B7C0430);

  sub_23B7BBC30();
  return sub_23B7826E8(v8, &qword_27E180C18, &unk_23B7C0430);
}

uint64_t ManagedAppCellViewModel.iconImageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18, &unk_23B7C0430);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B779B38(a1, v4, &qword_27E180C18, &unk_23B7C0430);

  sub_23B7BBC30();
  return sub_23B7826E8(a1, &qword_27E180C18, &unk_23B7C0430);
}

void (*ManagedAppCellViewModel.iconImageURL.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78BC6C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181130, &qword_23B7BE778);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128, &qword_23B7BE770);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ManagedAppCellViewModel.$iconImageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181130, &qword_23B7BE778);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128, &qword_23B7BE770);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$iconImageURL.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181130, &qword_23B7BE778);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__iconImageURL;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128, &qword_23B7BE770);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

double ManagedAppCellViewModel.style.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return result;
}

void sub_23B78C110(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a2 = v3;
}

uint64_t sub_23B78C194(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t ManagedAppCellViewModel.style.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.style.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78C33C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181148, &qword_23B7BE7D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140, &qword_23B7BE7C8);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ManagedAppCellViewModel.$style.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181148, &qword_23B7BE7D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140, &qword_23B7BE7C8);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$style.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181148, &qword_23B7BE7D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__style;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140, &qword_23B7BE7C8);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

double ManagedAppCellViewModel.offerState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return result;
}

double sub_23B78C7E0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_23B78C86C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B781F9C(v2, v3, v4);

  return sub_23B7BBC30();
}

uint64_t ManagedAppCellViewModel.offerState.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.offerState.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B78CA28;
}

uint64_t sub_23B78CA48(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181160, &qword_23B7BE828);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158, &qword_23B7BE820);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ManagedAppCellViewModel.$offerState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181160, &qword_23B7BE828);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158, &qword_23B7BE820);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$offerState.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181160, &qword_23B7BE828);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__offerState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158, &qword_23B7BE820);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

void (*ManagedAppCellViewModel.isInitial.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78CF8C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178, &qword_23B7BE880);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170, &qword_23B7BE878);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ManagedAppCellViewModel.$isInitial.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178, &qword_23B7BE880);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170, &qword_23B7BE878);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$isInitial.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178, &qword_23B7BE880);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isInitial;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170, &qword_23B7BE878);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B78D3B8;
}

uint64_t ManagedAppCellViewModel.packageDisclaimer.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  if (v1 == 1)
  {
    return sub_23B7A1250(0xD000000000000012, 0x800000023B7C1020);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B78D474(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return v3;
}

void sub_23B78D4F4(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a4 = v5;
}

uint64_t sub_23B78D588(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t sub_23B78D610(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.isPackage.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78D73C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178, &qword_23B7BE880);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170, &qword_23B7BE878);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ManagedAppCellViewModel.$isPackage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178, &qword_23B7BE880);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170, &qword_23B7BE878);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$isPackage.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178, &qword_23B7BE880);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isPackage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170, &qword_23B7BE878);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

double ManagedAppCellViewModel.binaryCompatibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return result;
}

void sub_23B78DBE0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a2 = v3;
}

uint64_t sub_23B78DC64(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t ManagedAppCellViewModel.binaryCompatibility.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.binaryCompatibility.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78DE0C(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_23B7BBBF0();
  return swift_endAccess();
}

uint64_t sub_23B78DE84(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_23B7BBBF0();
  return swift_endAccess();
}

uint64_t sub_23B78DF00(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181198, &qword_23B7BE920);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190, &qword_23B7BE918);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t ManagedAppCellViewModel.$binaryCompatibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181198, &qword_23B7BE920);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190, &qword_23B7BE918);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$binaryCompatibility.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181198, &qword_23B7BE920);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__binaryCompatibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190, &qword_23B7BE918);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

uint64_t ManagedAppCellViewModel.offerAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_offerAction);

  return v1;
}

uint64_t sub_23B78E368()
{
  v1 = 0;
  result = MEMORY[0x23EEA96E0](&v1, 8);
  qword_27E1810E8 = v1 << 32;
  qword_27E1810F0 = 0;
  byte_27E1810F8 = 0;
  return result;
}

void *ManagedAppCellViewModel.__allocating_init(exportedObject:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_23B7945D4(a1);

  return v2;
}

void *ManagedAppCellViewModel.init(exportedObject:)(uint64_t a1)
{
  v1 = sub_23B7945D4(a1);

  return v1;
}

uint64_t sub_23B78E42C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8))
  {
    *a2 = *(result + 16);
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_23B78E44C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18, &unk_23B7C0430);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v52 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v51 = &v48[-v8];
  v9 = sub_23B7BBAF0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360, &qword_23B7BEAC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48[-v13];
  v50 = sub_23B7BBA50();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181250, &qword_23B7BEA00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v48[-v18];
  v20 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v48[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v54 = &v48[-v25];
  v26 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23B779B38(a1, v19, &qword_27E181250, &qword_23B7BEA00);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {

      return sub_23B7826E8(v19, &qword_27E181250, &qword_23B7BEA00);
    }

    else
    {
      v49 = v26;
      v28 = v54;
      sub_23B797398(v19, v54);
      sub_23B7973FC(v28, v24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = *v24;
        v30 = v24[1];
        v31 = v24[2];
        v32 = v24[3];
        swift_getKeyPath();
        swift_getKeyPath();
        *&v56 = v29;
        *(&v56 + 1) = v30;

        sub_23B7BBC30();
        swift_getKeyPath();
        swift_getKeyPath();
        *&v56 = v31;
        *(&v56 + 1) = v32;

        sub_23B7BBC30();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v56) = 1;

        sub_23B7BBC30();
        swift_getKeyPath();
        swift_getKeyPath();
        v56 = xmmword_23B7BE650;
        v57 = 2;
        sub_23B7BBC30();
        v33 = v28;
      }

      else
      {
        v34 = v50;
        (*(v53 + 32))(v16, v24, v50);
        v35 = sub_23B7BB9D0();
        v37 = v36;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v56 = v35;
        *(&v56 + 1) = v37;

        sub_23B7BBC30();
        sub_23B7BB9B0();
        sub_23B7BBA30();
        sub_23B7AC6B0(v14, v11, &v56);
        LOBYTE(v35) = v56;
        swift_getKeyPath();
        swift_getKeyPath();
        v55 = v35;

        sub_23B7BBC30();
        if (v49 == 2)
        {
          v38 = sub_23B7BBA10();
        }

        else
        {
          v38 = sub_23B7BBA40();
        }

        v40 = v54;
        v41 = v16;
        if (v39)
        {
          v42 = v38;
        }

        else
        {
          v42 = 0;
        }

        if (v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = 0xE000000000000000;
        }

        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (!v44)
        {

          v45 = *(sub_23B7BBA00() + 16);

          if (v45)
          {
            *&v56 = sub_23B7BBA00();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181368, &qword_23B7BEAC8);
            sub_23B7826A0(&qword_27E181370, &qword_27E181368, &qword_23B7BEAC8, MEMORY[0x277D83970]);
            v42 = sub_23B7BC880();
            v43 = v46;
          }

          else
          {
            v43 = 0xE100000000000000;
            v42 = 32;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        *&v56 = v42;
        *(&v56 + 1) = v43;

        sub_23B7BBC30();
        if (v49 == 2 && qword_27E180840 != -1)
        {
          swift_once();
        }

        v47 = v51;
        sub_23B7BBA20();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23B779B38(v47, v52, &qword_27E180C18, &unk_23B7C0430);

        sub_23B7BBC30();
        sub_23B7826E8(v47, &qword_27E180C18, &unk_23B7C0430);
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v56) = 0;
        sub_23B7BBC30();
        (*(v53 + 8))(v41, v34);
        v33 = v40;
      }

      return sub_23B79733C(v33);
    }
  }

  return result;
}

uint64_t sub_23B78EC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B7BB990();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181248, &qword_23B7BE9F8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_23B779B38(a1, &v15 - v12, &qword_27E181248, &qword_23B7BE9F8);
  result = (*(v5 + 48))(v13, 1, v4);
  if (result == 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v8, v10, v4);
    ManagedContentOfferState.init(appState:)(v8, a2);
    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_23B78EE14@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181248, &qword_23B7BE9F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_23B7BB990();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181250, &qword_23B7BEA00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_23B7BBA50();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BBBC0();
  v17 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    sub_23B7826E8(v12, &qword_27E181250, &qword_23B7BEA00);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B79733C(v12);
  }

  else
  {
    v26 = a2;
    v25 = *(v14 + 32);
    v25(v16, v12, v13);
    sub_23B7BBBC0();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v20 = *(v7 + 32);
      v20(v9, v5, v6);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1812B8, &qword_23B7BEA38);
      v22 = *(v21 + 48);
      v23 = v26;
      v25(v26, v16, v13);
      v20(&v23[v22], v9, v6);
      return (*(*(v21 - 8) + 56))(v23, 0, 1, v21);
    }

    (*(v14 + 8))(v16, v13);
    sub_23B7826E8(v5, &qword_27E181248, &qword_23B7BE9F8);
    a2 = v26;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1812B8, &qword_23B7BEA38);
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_23B78F1F0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8, &qword_23B7BEA40);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1812B8, &qword_23B7BEA38);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v44 = sub_23B7BB990();
  v9 = *(v44 - 8);
  v42 = v9[8];
  v10 = MEMORY[0x28223BE20](v44);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v36 - v12;
  v13 = sub_23B7BBA50();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v46 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_23B779B38(a1, v8, &qword_27E1812B8, &qword_23B7BEA38);
  v19 = *(v6 + 56);
  v41 = *(v14 + 32);
  v39 = v18;
  v41(v18, v8, v13);
  v38 = v9[4];
  v20 = &v8[v19];
  v21 = v44;
  v22 = v45;
  v38(v45, v20, v44);
  v23 = sub_23B7BC930();
  (*(*(v23 - 8) + 56))(v47, 1, 1, v23);
  v24 = v9;
  v37 = v9;
  v25 = v9[2];
  v26 = v40;
  v25(v40, v22, v21);
  (*(v14 + 16))(v46, v18, v13);
  sub_23B7BC900();
  v27 = sub_23B7BC8F0();
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = (v42 + *(v14 + 80) + v28) & ~*(v14 + 80);
  v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v27;
  *(v31 + 24) = v32;
  v33 = v26;
  v34 = v44;
  v38((v31 + v28), v33, v44);
  v41((v31 + v29), v46, v13);
  *(v31 + v30) = v43;
  sub_23B778154(0, 0, v47, &unk_23B7BEAB0, v31);

  (v37[1])(v45, v34);
  return (*(v14 + 8))(v39, v13);
}

uint64_t sub_23B78F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_23B7BBA50();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_23B7BB990();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_23B7BC900();
  v5[19] = sub_23B7BC8F0();
  v9 = sub_23B7BC8D0();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x2822009F8](sub_23B78F7B8, v9, v8);
}

uint64_t sub_23B78F7B8()
{
  v102 = v0;
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = sub_23B7BBB30();
  *(v0 + 176) = __swift_project_value_buffer(v9, qword_27E184F18);
  v10 = *(v3 + 16);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v97 = v10;
  v10(v1, v8, v2);
  v11 = *(v6 + 16);
  *(v0 + 200) = v11;
  *(v0 + 208) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v7, v5);
  v12 = sub_23B7BBB10();
  v13 = sub_23B7BCA20();
  if (os_log_type_enabled(v12, v13))
  {
    v92 = v13;
    v14 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v99 = v91;
    *v14 = 136315650;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v15 = qword_27E1810E8;
    log = v12;
    if (byte_27E1810F8 == 1)
    {
      v16 = qword_27E1810F0;
    }

    else
    {
      v25 = HIDWORD(qword_27E1810E8);
      v100 = 0;
      v101 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v26 = 4144959;
      }

      else
      {
        v26 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v26, 0xE300000000000000);

      *(v0 + 304) = v25;
      sub_23B7797D8();
      v27 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v27);

      v15 = v100;
      v16 = v101;
    }

    v28 = *(v0 + 144);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v31 = *(v0 + 96);
    v32 = *(v0 + 72);
    v90 = *(v0 + 64);
    v33 = sub_23B77C020(v15, v16, &v99);

    *(v14 + 4) = v33;
    *(v14 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
    v34 = sub_23B7BCC60();
    v36 = v35;
    v24 = *(v29 + 8);
    v24(v28, v30);
    v37 = sub_23B77C020(v34, v36, &v99);

    *(v14 + 14) = v37;
    *(v14 + 22) = 2080;
    v38 = sub_23B7BB9D0();
    v40 = v39;
    v23 = *(v32 + 8);
    v23(v31, v90);
    v41 = sub_23B77C020(v38, v40, &v99);

    *(v14 + 24) = v41;
    _os_log_impl(&dword_23B774000, log, v92, "[%s] Receieved offer action for:%s on %s.", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v91, -1, -1);
    MEMORY[0x23EEA96D0](v14, -1, -1);
  }

  else
  {
    v17 = *(v0 + 144);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);

    v23 = *(v22 + 8);
    v23(v20, v21);
    v24 = *(v18 + 8);
    v24(v17, v19);
  }

  *(v0 + 216) = v23;
  *(v0 + 224) = v24;
  v42 = *(v0 + 136);
  v43 = *(v0 + 104);
  v44 = *(v0 + 112);
  v97(v42, *(v0 + 48), v43);
  v45 = (*(v44 + 88))(v42, v43);
  if (v45 == *MEMORY[0x277CD49D8])
  {
    v24(*(v0 + 136), *(v0 + 104));
    sub_23B7BBAA0();
    *(v0 + 248) = sub_23B7BBA60();
    v46 = swift_task_alloc();
    *(v0 + 256) = v46;
    *v46 = v0;
    v46[1] = sub_23B790774;
    v47 = *(v0 + 56);

    return MEMORY[0x282123438](v47);
  }

  if (v45 == *MEMORY[0x277CD49A0])
  {
    goto LABEL_19;
  }

  if (v45 == *MEMORY[0x277CD4998])
  {
    v24(*(v0 + 136), *(v0 + 104));
    sub_23B7BBAA0();
    *(v0 + 272) = sub_23B7BBA60();
    v61 = swift_task_alloc();
    *(v0 + 280) = v61;
    *v61 = v0;
    v61[1] = sub_23B790890;
    v62 = *(v0 + 56);

    return MEMORY[0x282123430](v62);
  }

  else
  {
    if (v45 == *MEMORY[0x277CD49C0])
    {
LABEL_19:
      v48 = *(v0 + 136);
      v49 = *(v0 + 104);

      v50 = v48;
      v51 = v49;
LABEL_20:
      v24(v50, v51);
LABEL_21:
      v52 = *(v0 + 200);
      v53 = *(v0 + 88);
      v55 = *(v0 + 56);
      v54 = *(v0 + 64);
      (*(v0 + 184))(*(v0 + 128), *(v0 + 48), *(v0 + 104));
      v52(v53, v55, v54);
      v56 = sub_23B7BBB10();
      v57 = sub_23B7BCA20();
      if (os_log_type_enabled(v56, v57))
      {
        v98 = v57;
        v58 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v99 = v96;
        *v58 = 136315650;
        if (qword_27E180830 != -1)
        {
          swift_once();
        }

        v59 = qword_27E1810E8;
        if (byte_27E1810F8 == 1)
        {
          v60 = qword_27E1810F0;
        }

        else
        {
          v69 = HIDWORD(qword_27E1810E8);
          v100 = 0;
          v101 = 0xE000000000000000;
          if (qword_27E1810E8)
          {
            v70 = 4144959;
          }

          else
          {
            v70 = 5527621;
          }

          MEMORY[0x23EEA8AE0](v70, 0xE300000000000000);

          *(v0 + 296) = v69;
          sub_23B7797D8();
          v71 = sub_23B7BC870();
          MEMORY[0x23EEA8AE0](v71);

          v59 = v100;
          v60 = v101;
        }

        v72 = *(v0 + 224);
        v73 = *(v0 + 128);
        v74 = *(v0 + 104);
        v75 = *(v0 + 88);
        v93 = *(v0 + 64);
        loga = *(v0 + 216);
        v76 = sub_23B77C020(v59, v60, &v99);

        *(v58 + 4) = v76;
        *(v58 + 12) = 2080;
        sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
        v77 = sub_23B7BCC60();
        v79 = v78;
        v72(v73, v74);
        v80 = sub_23B77C020(v77, v79, &v99);

        *(v58 + 14) = v80;
        *(v58 + 22) = 2080;
        v81 = sub_23B7BB9D0();
        v83 = v82;
        (loga)(v75, v93);
        v84 = sub_23B77C020(v81, v83, &v99);

        *(v58 + 24) = v84;
        _os_log_impl(&dword_23B774000, v56, v98, "[%s] Offer action for:%s on %s completed.", v58, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23EEA96D0](v96, -1, -1);
        MEMORY[0x23EEA96D0](v58, -1, -1);
      }

      else
      {
        v64 = *(v0 + 216);
        v63 = *(v0 + 224);
        v65 = *(v0 + 128);
        v66 = *(v0 + 104);
        v67 = *(v0 + 88);
        v68 = *(v0 + 64);

        v64(v67, v68);
        v63(v65, v66);
      }

      v85 = *(v0 + 8);

      return v85();
    }

    if (v45 == *MEMORY[0x277CD49E0])
    {

      goto LABEL_21;
    }

    if (v45 != *MEMORY[0x277CD49C8])
    {
      v87 = *MEMORY[0x277CD49D0];
      v88 = v45;

      if (v88 == v87)
      {
        goto LABEL_21;
      }

      v50 = *(v0 + 136);
      v51 = *(v0 + 104);
      goto LABEL_20;
    }

    v86 = swift_task_alloc();
    *(v0 + 232) = v86;
    *v86 = v0;
    v86[1] = sub_23B790248;

    return MEMORY[0x2821233C8]();
  }
}

uint64_t sub_23B790248()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_23B7909AC;
  }

  else
  {
    v5 = sub_23B790384;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B790384()
{
  v41 = v0;

  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  (*(v0 + 184))(*(v0 + 128), *(v0 + 48), *(v0 + 104));
  v1(v2, v4, v3);
  v5 = sub_23B7BBB10();
  v6 = sub_23B7BCA20();
  if (os_log_type_enabled(v5, v6))
  {
    v37 = v6;
    v7 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v7 = 136315650;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v8 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v9 = qword_27E1810F0;
    }

    else
    {
      v16 = HIDWORD(qword_27E1810E8);
      v39 = 0;
      v40 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v17 = 4144959;
      }

      else
      {
        v17 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v17, 0xE300000000000000);

      *(v0 + 296) = v16;
      sub_23B7797D8();
      v18 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v18);

      v8 = v39;
      v9 = v40;
    }

    v19 = *(v0 + 224);
    v20 = *(v0 + 128);
    v21 = *(v0 + 104);
    v22 = *(v0 + 88);
    v34 = *(v0 + 64);
    v35 = *(v0 + 216);
    v23 = sub_23B77C020(v8, v9, &v38);

    *(v7 + 4) = v23;
    *(v7 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
    v24 = sub_23B7BCC60();
    v26 = v25;
    v19(v20, v21);
    v27 = sub_23B77C020(v24, v26, &v38);

    *(v7 + 14) = v27;
    *(v7 + 22) = 2080;
    v28 = sub_23B7BB9D0();
    v30 = v29;
    v35(v22, v34);
    v31 = sub_23B77C020(v28, v30, &v38);

    *(v7 + 24) = v31;
    _os_log_impl(&dword_23B774000, v5, v37, "[%s] Offer action for:%s on %s completed.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v36, -1, -1);
    MEMORY[0x23EEA96D0](v7, -1, -1);
  }

  else
  {
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 88);
    v15 = *(v0 + 64);

    v11(v14, v15);
    v10(v12, v13);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_23B790774()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23B790E28;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23B797584;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B790890()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23B7912AC;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23B797584;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B7909AC()
{
  v54 = v0;
  v1 = *(v0 + 240);
  v47 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  v2(v3, v8, v4);
  v9 = v1;
  v47(v5, v7, v6);
  v10 = v1;
  v11 = sub_23B7BBB10();
  v12 = sub_23B7BCA00();

  if (os_log_type_enabled(v11, v12))
  {
    log = v11;
    v13 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v13 = 136315906;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v48 = v12;
    v50 = v9;
    v14 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v15 = qword_27E1810F0;
    }

    else
    {
      v23 = HIDWORD(qword_27E1810E8);
      v52 = 0;
      v53 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v24 = 4144959;
      }

      else
      {
        v24 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v24, 0xE300000000000000);

      *(v0 + 300) = v23;
      sub_23B7797D8();
      v25 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v25);

      v14 = v52;
      v15 = v53;
    }

    v26 = *(v0 + 224);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    v44 = *(v0 + 64);
    v45 = *(v0 + 216);
    v30 = sub_23B77C020(v14, v15, &v51);

    *(v13 + 4) = v30;
    *(v13 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
    v31 = sub_23B7BCC60();
    v33 = v32;
    v26(v27, v28);
    v34 = sub_23B77C020(v31, v33, &v51);

    *(v13 + 14) = v34;
    *(v13 + 22) = 2080;
    v35 = sub_23B7BB9D0();
    v37 = v36;
    v45(v29, v44);
    v38 = sub_23B77C020(v35, v37, &v51);

    *(v13 + 24) = v38;
    *(v13 + 32) = 2080;
    swift_getErrorValue();
    v39 = sub_23B7BCCC0();
    v41 = sub_23B77C020(v39, v40, &v51);

    *(v13 + 34) = v41;
    _os_log_impl(&dword_23B774000, log, v48, "[%s] Offer action for:%s on %s failed. %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v46, -1, -1);
    MEMORY[0x23EEA96D0](v13, -1, -1);
  }

  else
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = v11;
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);

    v17(v21, v22);
    v16(v19, v20);
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_23B790E28()
{
  v54 = v0;

  v1 = *(v0 + 264);
  v47 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  v2(v3, v8, v4);
  v9 = v1;
  v47(v5, v7, v6);
  v10 = v1;
  v11 = sub_23B7BBB10();
  v12 = sub_23B7BCA00();

  if (os_log_type_enabled(v11, v12))
  {
    log = v11;
    v13 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v13 = 136315906;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v48 = v12;
    v50 = v9;
    v14 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v15 = qword_27E1810F0;
    }

    else
    {
      v23 = HIDWORD(qword_27E1810E8);
      v52 = 0;
      v53 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v24 = 4144959;
      }

      else
      {
        v24 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v24, 0xE300000000000000);

      *(v0 + 300) = v23;
      sub_23B7797D8();
      v25 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v25);

      v14 = v52;
      v15 = v53;
    }

    v26 = *(v0 + 224);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    v44 = *(v0 + 64);
    v45 = *(v0 + 216);
    v30 = sub_23B77C020(v14, v15, &v51);

    *(v13 + 4) = v30;
    *(v13 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
    v31 = sub_23B7BCC60();
    v33 = v32;
    v26(v27, v28);
    v34 = sub_23B77C020(v31, v33, &v51);

    *(v13 + 14) = v34;
    *(v13 + 22) = 2080;
    v35 = sub_23B7BB9D0();
    v37 = v36;
    v45(v29, v44);
    v38 = sub_23B77C020(v35, v37, &v51);

    *(v13 + 24) = v38;
    *(v13 + 32) = 2080;
    swift_getErrorValue();
    v39 = sub_23B7BCCC0();
    v41 = sub_23B77C020(v39, v40, &v51);

    *(v13 + 34) = v41;
    _os_log_impl(&dword_23B774000, log, v48, "[%s] Offer action for:%s on %s failed. %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v46, -1, -1);
    MEMORY[0x23EEA96D0](v13, -1, -1);
  }

  else
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = v11;
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);

    v17(v21, v22);
    v16(v19, v20);
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_23B7912AC()
{
  v54 = v0;

  v1 = *(v0 + 288);
  v47 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  v2(v3, v8, v4);
  v9 = v1;
  v47(v5, v7, v6);
  v10 = v1;
  v11 = sub_23B7BBB10();
  v12 = sub_23B7BCA00();

  if (os_log_type_enabled(v11, v12))
  {
    log = v11;
    v13 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v13 = 136315906;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v48 = v12;
    v50 = v9;
    v14 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v15 = qword_27E1810F0;
    }

    else
    {
      v23 = HIDWORD(qword_27E1810E8);
      v52 = 0;
      v53 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v24 = 4144959;
      }

      else
      {
        v24 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v24, 0xE300000000000000);

      *(v0 + 300) = v23;
      sub_23B7797D8();
      v25 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v25);

      v14 = v52;
      v15 = v53;
    }

    v26 = *(v0 + 224);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    v44 = *(v0 + 64);
    v45 = *(v0 + 216);
    v30 = sub_23B77C020(v14, v15, &v51);

    *(v13 + 4) = v30;
    *(v13 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
    v31 = sub_23B7BCC60();
    v33 = v32;
    v26(v27, v28);
    v34 = sub_23B77C020(v31, v33, &v51);

    *(v13 + 14) = v34;
    *(v13 + 22) = 2080;
    v35 = sub_23B7BB9D0();
    v37 = v36;
    v45(v29, v44);
    v38 = sub_23B77C020(v35, v37, &v51);

    *(v13 + 24) = v38;
    *(v13 + 32) = 2080;
    swift_getErrorValue();
    v39 = sub_23B7BCCC0();
    v41 = sub_23B77C020(v39, v40, &v51);

    *(v13 + 34) = v41;
    _os_log_impl(&dword_23B774000, log, v48, "[%s] Offer action for:%s on %s failed. %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v46, -1, -1);
    MEMORY[0x23EEA96D0](v13, -1, -1);
  }

  else
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = v11;
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);

    v17(v21, v22);
    v16(v19, v20);
  }

  v42 = *(v0 + 8);

  return v42();
}