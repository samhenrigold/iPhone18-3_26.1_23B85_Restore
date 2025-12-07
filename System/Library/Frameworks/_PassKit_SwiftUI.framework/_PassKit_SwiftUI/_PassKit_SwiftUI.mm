id sub_23B7E0F38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityButton.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23B7E0F80()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D38B40]) initWithLabel:*v0 style:v0[1]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186480, &qword_23B8038E8);
  sub_23B8022E0();
  [v1 addTarget:v3 action:sel_callback forControlEvents:0x2000];

  return v1;
}

void *sub_23B7E1094@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for IdentityButton.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV16_PassKit_SwiftUI14IdentityButton11Coordinator_action];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_23B7E1150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7E1E9C(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B7E11B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7E1E9C(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B7E1234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7E1E9C(a1, a2, a3);
  sub_23B802280();
  __break(1u);
}

uint64_t sub_23B7E1260(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23B802130();
  }

  else
  {
    sub_23B8020F0();
  }

  return sub_23B802140();
}

uint64_t sub_23B7E12C8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23B802130();
    sub_23B802140();
    sub_23B7E13BC();
  }

  else
  {
    sub_23B8020F0();
    sub_23B802140();
    sub_23B7E2054(&qword_27E186418, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_23B7E13BC()
{
  result = qword_27E186410;
  if (!qword_27E186410)
  {
    sub_23B802130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186410);
  }

  return result;
}

uint64_t sub_23B7E1408@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a5;
  v35 = a6;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a8;
    v37 = a3;
    v38 = a7;
    v39 = a9;
    v40 = a10;
    v41 = a11;
    v18 = sub_23B802130();
    v19 = *(v18 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      v33 = v11;
      sub_23B802720();

      strcpy(v43, "View.task @ ");
      BYTE5(v43[1]) = 0;
      HIWORD(v43[1]) = -5120;
      MEMORY[0x23EEAA7E0](a4, v34);
      MEMORY[0x23EEAA7E0](58, 0xE100000000000000);
      v42 = v35;
      v29 = sub_23B802780();
      MEMORY[0x23EEAA7E0](v29);
    }

    v30 = sub_23B802660();
    MEMORY[0x28223BE20](v30);
    (*(v32 + 16))(&v33 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v37);

    sub_23B802120();
    MEMORY[0x23EEAA630](v21, v40, v18, v41);

    return (*(v19 + 8))(v21, v18);
  }

  else
  {
    v22 = sub_23B8020F0();
    v23 = MEMORY[0x28223BE20](v22);
    v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *(v23 + 20);
    v27 = sub_23B802660();
    (*(*(v27 - 8) + 16))(&v25[v26], a3, v27);
    *v25 = a7;
    *(v25 + 1) = a8;
    MEMORY[0x23EEAA630](v25, a10, v22, a11);
    return sub_23B7E1B8C(v25);
  }
}

uint64_t sub_23B7E1778(uint64_t a1, id *a2)
{
  result = sub_23B802580();
  *a2 = 0;
  return result;
}

uint64_t sub_23B7E17F0(uint64_t a1, id *a2)
{
  v3 = sub_23B802590();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23B7E1870@<X0>(uint64_t *a1@<X8>)
{
  sub_23B8025A0();
  v2 = sub_23B802570();

  *a1 = v2;
  return result;
}

void *sub_23B7E18B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B7E18D0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23B802570();

  *a2 = v3;
  return result;
}

uint64_t sub_23B7E1918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B8025A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B7E1944(uint64_t a1)
{
  v2 = sub_23B7E2054(&qword_27E1864B8, type metadata accessor for PKPaymentNetwork, &unk_23B803A10);
  v3 = sub_23B7E2054(&unk_27E1864C0, type metadata accessor for PKPaymentNetwork, &unk_23B8039B0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23B7E1A00()
{
  v0 = sub_23B8025A0();
  v1 = MEMORY[0x23EEAA7F0](v0);

  return v1;
}

uint64_t sub_23B7E1A3C(uint64_t a1)
{
  sub_23B8025A0();
  sub_23B8025C0();
}

uint64_t sub_23B7E1A90(uint64_t a1)
{
  sub_23B8025A0();
  sub_23B8027C0();
  sub_23B8025C0();
  v1 = sub_23B8027E0();

  return v1;
}

uint64_t sub_23B7E1B04(void *a1, uint64_t *a2)
{
  v2 = sub_23B8025A0();
  v4 = v3;
  if (v2 == sub_23B8025A0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23B802790();
  }

  return v7 & 1;
}

uint64_t sub_23B7E1B8C(uint64_t a1)
{
  v2 = sub_23B8020F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B7E1C74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7E1C94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
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

uint64_t sub_23B7E1D1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23B7E1D64(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B7E1DC0(uint64_t a1, int a2)
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

uint64_t sub_23B7E1DE0(uint64_t result, int a2, int a3)
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

unint64_t sub_23B7E1E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186470;
  if (!qword_27E186470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186470);
  }

  return result;
}

unint64_t sub_23B7E1E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B7E1E9C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B7E1E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186478;
  if (!qword_27E186478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186478);
  }

  return result;
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

unint64_t sub_23B7E1F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186488;
  if (!qword_27E186488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186488);
  }

  return result;
}

void sub_23B7E1FC0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_23B7E2054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23B7E2134()
{
  v0 = *MEMORY[0x277D38360];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v2 = v0;
  v3 = [v1 initWithDomain:v2 code:0 userInfo:0];

  qword_27E188F68 = v3;
}

uint64_t AddPassToWalletButton.init(carKeyPassword:supportedRadioTechnologies:issuerIdentifier:onCompletion:fallback:)@<X0>(uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, _OWORD *x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = a6;
  v22 = a7;
  v20[1] = a5;
  v15 = sub_23B8026E0();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v20 - v17;
  a8(v16);
  (*(*(a10 - 8) + 56))(v18, 0, 1, a10);
  return sub_23B7E22C0(a3, v18, v21, v22, x8_0, a10, a11);
}

uint64_t sub_23B7E22C0@<X0>(uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = [objc_allocWithZone(MEMORY[0x277D37CE8]) init];
  v16 = sub_23B802570();

  [v15 setPassword_];

  [v15 setSupportedRadioTechnologies_];
  v17 = v15;
  v18 = sub_23B802570();

  [v17 setIssuerIdentifier_];

  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  *&v22 = v17;
  *(&v22 + 1) = sub_23B7E3320;
  v23 = v19;
  v24 = 0;
  v25 = 0;
  v26 = 2;
  return sub_23B7E7EB4(&v22, a6, a9, a10, x8_0);
}

uint64_t AddPassToWalletButton.init(_:onCompletion:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *x8_0@<X8>)
{
  v15 = sub_23B8026E0();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v20 - v17;
  a4(v16);
  (*(*(a6 - 8) + 56))(v18, 0, 1, a6);
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v22 = 0;
  v23 = 0;
  v21 = a3;
  v24 = 2;
  return sub_23B7E7EB4(&v20, v18, a6, a7, x8_0);
}

void sub_23B7E2538(unint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    goto LABEL_13;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v4 = a1;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_11:
    if (qword_27E1863E0 == -1)
    {
LABEL_12:
      a1 = qword_27E188F68;
LABEL_13:
      a3(a1, 1);
      return;
    }

LABEL_16:
    v8 = a3;
    swift_once();
    a3 = v8;
    goto LABEL_12;
  }

  v4 = a1;
  v10 = a3;
  v7 = sub_23B802760();
  a3 = v10;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = a3;
    v6 = MEMORY[0x23EEAA940](0, v4);
    goto LABEL_7;
  }

  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3;
  v6 = *(v4 + 32);
LABEL_7:
  v9 = v6;
  v5();
}

uint64_t AddPassToWalletButton<>.init(carKeyPassword:supportedRadioTechnologies:issuerIdentifier:onCompletion:)@<X0>(uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D37CE8]) init];
  v13 = sub_23B802570();

  [v12 setPassword_];

  [v12 setSupportedRadioTechnologies_];
  v14 = v12;
  v15 = sub_23B802570();

  [v14 setIssuerIdentifier_];

  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = a7;
  *a8 = v14;
  *(a8 + 8) = sub_23B7E27C4;
  *(a8 + 16) = result;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 40) = 258;
  return result;
}

uint64_t sub_23B7E278C(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t AddPassToWalletButton<>.init(_:onCompletion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = a3;
  *(a4 + 40) = 258;
  return result;
}

{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = a3;
  *(a4 + 40) = 257;
  return result;
}

id sub_23B7E27E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v12, v11);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = *(a4 + 16);
  (*(v8 + 32))(v15 + v13, v10, a4);
  v16 = (v15 + v14);
  *v16 = a2;
  v16[1] = a3;
  v17 = a1;

  v18 = sub_23B7E2F68(v17, sub_23B7E2D58, v15, &v25);
  if (v25)
  {
    v23 = v26;
    v24 = v27;
    v22 = v25;
    sub_23B7E3044(v18, v19, v20);
    return sub_23B802520();
  }

  else
  {
    if (qword_27E1863E0 != -1)
    {
      swift_once();
    }

    return qword_27E188F68;
  }
}

id sub_23B7E2AA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddSecureElementPassViewControllerWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B7E2B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AddPassToWalletButton_iOS(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  sub_23B7E2CBC(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24), *(v4 + v9 + 32), *(v4 + v9 + 40));
  v11 = *(v6 + 36);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_23B7E2D4C(*(v10 + *(v6 + 40)), *(v10 + *(v6 + 40) + 8));

  return MEMORY[0x2821FE8E8](v4, ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v7 | 7);
}

void *sub_23B7E2CBC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_23B7E2D4C(uint64_t result, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_23B7E2D58(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddPassToWalletButton_iOS(0, *(v4 + 16), *(v4 + 24), a4);
  v8 = *(v4 + ((*(*(v7 - 8) + 64) + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_23B7E7F54(0, v7);
  return v8(a1, a2 & 1);
}

id sub_23B7E2E30@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

uint64_t sub_23B7E2E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7E32C8(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B7E2EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7E32C8(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B7E2F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7E32C8(a1, a2, a3);
  sub_23B802350();
  __break(1u);
}

id sub_23B7E2F68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for AddSecureElementPassViewControllerWrapper.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV16_PassKit_SwiftUIP33_541E15F1A3504E1B411D8ADFDBE1A4E241AddSecureElementPassViewControllerWrapper11Coordinator_completion];
  *v10 = a2;
  *(v10 + 1) = a3;
  v14.receiver = v9;
  v14.super_class = v8;

  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = objc_allocWithZone(MEMORY[0x277D38B28]);
  result = [v12 initWithConfiguration:a1 delegate:{v11, v14.receiver, v14.super_class}];
  if (!result)
  {

    a1 = 0;
    a2 = 0;
    a3 = 0;
    result = 0;
    v11 = 0;
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = result;
  a4[4] = v11;
  return result;
}

unint64_t sub_23B7E3044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186540;
  if (!qword_27E186540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186540);
  }

  return result;
}

uint64_t sub_23B7E3098(void *a1, void *a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV16_PassKit_SwiftUIP33_541E15F1A3504E1B411D8ADFDBE1A4E241AddSecureElementPassViewControllerWrapper11Coordinator_completion);
  v4 = *(v2 + OBJC_IVAR____TtCV16_PassKit_SwiftUIP33_541E15F1A3504E1B411D8ADFDBE1A4E241AddSecureElementPassViewControllerWrapper11Coordinator_completion);
  if (v4)
  {
    v5 = v3[1];
    if (a1)
    {

      v4(a1, 0);
      sub_23B7E3200(v4, v5);
    }

    else
    {
      if (a2)
      {

        v8 = a2;
        v9 = a2;
      }

      else
      {
        v10 = qword_27E1863E0;

        if (v10 != -1)
        {
          swift_once();
        }

        v9 = qword_27E188F68;
        v8 = 0;
      }

      v11 = v8;
      v4(v9, 1);
      sub_23B7E3200(v4, v5);
    }
  }

  v12 = *v3;
  v13 = v3[1];
  *v3 = 0;
  v3[1] = 0;

  return sub_23B7E3200(v12, v13);
}

unint64_t sub_23B7E31B4()
{
  result = qword_27E186548;
  if (!qword_27E186548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E186548);
  }

  return result;
}

uint64_t sub_23B7E3200(uint64_t result, uint64_t a2)
{
  if (result)
  {
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

uint64_t sub_23B7E3224(uint64_t *a1, int a2)
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

uint64_t sub_23B7E326C(uint64_t result, int a2, int a3)
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

unint64_t sub_23B7E32C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186550;
  if (!qword_27E186550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186550);
  }

  return result;
}

uint64_t sub_23B7E3324(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  sub_23B802470();
  return v3;
}

double sub_23B7E3364(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867C0, &qword_23B803F58);
  sub_23B802480();
  return v2;
}

uint64_t sub_23B7E3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PayWithApplePayButton.Configuration(255, *(a1 + 16), *(a1 + 24), a4);
  sub_23B8024B0();
  sub_23B802480();
  return v5;
}

uint64_t sub_23B7E3498(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
  sub_23B802480();
  return v2;
}

uint64_t sub_23B7E355C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23B8021A0();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 52);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    *a2 = v11;
  }

  else
  {

    sub_23B802680();
    v12 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E2D4C(v11, 0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23B7E36B8(uint64_t a1)
{
  v3 = sub_23B8021A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_23B802680();
    v9 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E59A8(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return v8;
}

uint64_t sub_23B7E3814(uint64_t a1)
{
  v3 = sub_23B8021A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 60);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_23B802680();
    v9 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E59A8(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return v8;
}

uint64_t sub_23B7E3970(uint64_t a1)
{
  v3 = sub_23B8021A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_23B802680();
    v9 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E59A8(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return v8;
}

uint64_t sub_23B7E3ACC(uint64_t a1)
{
  v3 = sub_23B8021A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_23B802680();
    v9 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E59A8(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return v8;
}

uint64_t sub_23B7E3C28(uint64_t a1)
{
  v3 = sub_23B8021A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 72);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23B802680();
    v9 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E2D4C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_23B7E3D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23B8021A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186630, &qword_23B805280);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_23B7E7D70(v2 + *(a1 + 76), &v15 - v10, &qword_27E186630, &qword_23B805280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23B8020C0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_23B802680();
    v14 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_23B7E3F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23B8021A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E186638, &qword_23B803CB0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_23B7E7D70(v2 + *(a1 + 80), &v15 - v10, qword_27E186638, &qword_23B803CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23B802380();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_23B802680();
    v14 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PayWithApplePayButton.init(_:action:fallback:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *x8_0@<X8>)
{
  v15 = sub_23B8026E0();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v20 - v16;
  v21 = *a1;

  a4(v18);
  (*(*(a6 - 8) + 56))(v17, 0, 1, a6);
  sub_23B7E4470(&v21, a2, a3, 0, v17, a6, a7, x8_0);
}

uint64_t sub_23B7E42AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = a5 & 1;
  type metadata accessor for CGSize(0);
  sub_23B802470();
  *(a6 + 16) = v15;
  *(a6 + 32) = v16;
  sub_23B802470();
  *(a6 + 72) = v15;
  *(a6 + 80) = *(&v15 + 1);
  *(a6 + 88) = swift_getKeyPath();
  *(a6 + 96) = 0;
  *(a6 + 104) = swift_getKeyPath();
  *(a6 + 112) = 0;
  *(a6 + 120) = swift_getKeyPath();
  *(a6 + 128) = 0;
  *(a6 + 136) = swift_getKeyPath();
  *(a6 + 144) = 0;
  *(a6 + 152) = swift_getKeyPath();
  *(a6 + 160) = 0;
  *(a6 + 168) = swift_getKeyPath();
  *(a6 + 176) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B0, &qword_23B803EE8);
  v12 = *(v11 + 76);
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186630, &qword_23B805280);
  swift_storeEnumTagMultiPayload();
  v13 = *(v11 + 80);
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E186638, &qword_23B803CB0);
  result = swift_storeEnumTagMultiPayload();
  *a6 = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4 & 1;
  *(a6 + 64) = 0;
  return result;
}

double sub_23B7E4470@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v11 = a4;
  v15 = *a1;
  v16 = type metadata accessor for PayWithApplePayButton(0, a6, a7, a4);
  v17 = &a8[v16[10]];
  v18 = sub_23B7E3324(0.0, 0.0);
  *v17 = v19;
  *(v17 + 1) = v20;
  *(v17 + 2) = v18;
  v21 = &a8[v16[12]];
  LOBYTE(v39[0]) = 1;
  sub_23B802470();
  v22 = *(&v41 + 1);
  *v21 = v41;
  *(v21 + 1) = v22;
  v23 = &a8[v16[13]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &a8[v16[14]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &a8[v16[15]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = &a8[v16[16]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &a8[v16[17]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &a8[v16[18]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v16[19];
  *&a8[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186630, &qword_23B805280);
  swift_storeEnumTagMultiPayload();
  v30 = v16[20];
  *&a8[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E186638, &qword_23B803CB0);
  swift_storeEnumTagMultiPayload();
  *a8 = v15;
  v31 = v16[9];
  v32 = sub_23B8026E0();
  (*(*(v32 - 8) + 32))(&a8[v31], a5, v32);
  v39[0] = a2;
  v39[1] = a3;
  v40 = v11 & 1;
  v34 = type metadata accessor for PayWithApplePayButton.Configuration(0, a6, a7, v33);
  *(&v41 + *(sub_23B8024B0() + 28)) = 0;
  (*(*(v34 - 8) + 32))(&v41, v39, v34);
  v35 = v42;
  v36 = v43;
  v37 = &a8[v16[11]];
  result = *&v41;
  *v37 = v41;
  v37[16] = v35;
  *(v37 + 3) = v36;
  return result;
}

uint64_t PayWithApplePayButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v4 = sub_23B802660();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a1 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1865C0, &qword_23B803C70);
  v8 = *(a1 + 16);
  v9 = a1;
  v45 = a1;
  v10 = v8;
  v40 = v8;
  sub_23B8026E0();
  sub_23B8022D0();
  v11 = sub_23B7E4CB8();
  v12 = *(v9 + 24);
  v61 = v12;
  v39 = v12;
  WitnessTable = swift_getWitnessTable();
  v59 = v11;
  v60 = WitnessTable;
  swift_getWitnessTable();
  v14 = sub_23B802510();
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v42 = &v38 - v15;
  v43 = swift_getWitnessTable();
  v57 = v14;
  v58 = v43;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v44 = &v38 - v21;
  v54 = v10;
  v55 = v12;
  v56 = v2;
  sub_23B802530();
  sub_23B802500();
  v41 = "v40@0:8@16@24@32";
  v22 = v48;
  v23 = v45;
  v24 = v46;
  (*(v48 + 16))(v46, v2, v45);
  sub_23B802630();
  v25 = sub_23B802620();
  v26 = v22;
  v27 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 2) = v25;
  *(v28 + 3) = v29;
  v30 = v39;
  *(v28 + 4) = v40;
  *(v28 + 5) = v30;
  (*(v26 + 32))(&v28[v27], v24, v23);
  v31 = v50;
  v32 = v43;
  sub_23B7E125C();
  v33 = v42;
  sub_23B7E1408(0, v31, 0xD00000000000002CLL, v41 | 0x8000000000000000, 83, &unk_23B803CB8, v28, v20, v14, v32);
  (*(v51 + 8))(v31, v52);
  (*(v47 + 8))(v33, v14);
  v34 = *(v17 + 16);
  v35 = v44;
  v34(v44, v20, OpaqueTypeMetadata2);
  v36 = *(v17 + 8);
  v36(v20, OpaqueTypeMetadata2);
  v34(v53, v35, OpaqueTypeMetadata2);
  return (v36)(v35, OpaqueTypeMetadata2);
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

unint64_t sub_23B7E4CB8()
{
  result = qword_27E1865C8;
  if (!qword_27E1865C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1865C0, &qword_23B803C70);
    sub_23B7E4D44();
    sub_23B7E4FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1865C8);
  }

  return result;
}

unint64_t sub_23B7E4D44()
{
  result = qword_27E1865D0;
  if (!qword_27E1865D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1865D8, &qword_23B803C78);
    sub_23B7E4DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1865D0);
  }

  return result;
}

unint64_t sub_23B7E4DC8()
{
  result = qword_27E1865E0;
  if (!qword_27E1865E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1865E8, &qword_23B803C80);
    sub_23B7E4F04(&qword_27E1865F0, &qword_27E1865F8, &qword_23B803C88, sub_23B7E4EAC);
    sub_23B7E4F04(&qword_27E186608, &qword_27E186610, &qword_23B803C90, sub_23B7E4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1865E0);
  }

  return result;
}

unint64_t sub_23B7E4EAC()
{
  result = qword_27E186600;
  if (!qword_27E186600)
  {
    type metadata accessor for DynamicPaymentButtonRepresentableSlotView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186600);
  }

  return result;
}

uint64_t sub_23B7E4F04(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_23B7E4F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186618;
  if (!qword_27E186618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186618);
  }

  return result;
}

unint64_t sub_23B7E4FD4()
{
  result = qword_27E186620;
  if (!qword_27E186620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186628, &qword_23B803C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186620);
  }

  return result;
}

uint64_t sub_23B7E5038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = sub_23B8026E0();
  v32 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v31 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1865C0, &qword_23B803C70);
  MEMORY[0x28223BE20](v12);
  v14 = (v30 - v13);
  v33 = sub_23B8022D0();
  v15 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v17 = v30 - v16;
  v35 = a3;
  v19 = type metadata accessor for PayWithApplePayButton(0, a2, a3, v18);
  v20 = a1;
  if (sub_23B7E3498(v19))
  {
    sub_23B7E53F0(v19, v14);
    sub_23B7E4CB8();
    v36 = v35;
    swift_getWitnessTable();
    sub_23B7E7FB8(v14, v12);
    sub_23B7E7D08(v14, &qword_27E1865C0, &qword_23B803C70);
  }

  else
  {
    v21 = *(v19 + 36);
    v40 = v35;
    v30[1] = swift_getWitnessTable();
    v22 = v32;
    v23 = *(v32 + 16);
    v23(v11, v20 + v21, v7);
    v24 = v31;
    v23(v31, v11, v7);
    sub_23B7E4CB8();
    sub_23B7E80B0(v24, v12, v7);
    v25 = *(v22 + 8);
    v25(v24, v7);
    v25(v11, v7);
  }

  v26 = sub_23B7E4CB8();
  v39 = v35;
  WitnessTable = swift_getWitnessTable();
  v37 = v26;
  v38 = WitnessTable;
  v28 = v33;
  swift_getWitnessTable();
  (*(v15 + 16))(v34, v17, v28);
  return (*(v15 + 8))(v17, v28);
}

uint64_t sub_23B7E53F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_23B7E5D1C(v2, v8, v9, a2);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  (*(v5 + 32))(v11 + v10, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1865C0, &qword_23B803C70);
  v13 = (a2 + *(result + 36));
  *v13 = sub_23B7E651C;
  v13[1] = 0;
  v13[2] = sub_23B7E7864;
  v13[3] = v11;
  return result;
}

uint64_t sub_23B7E55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  sub_23B802630();
  v5[5] = sub_23B802620();
  v7 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7E563C, v7, v6);
}

uint64_t sub_23B7E563C(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[3];

  v6 = type metadata accessor for PayWithApplePayButton(0, v4, v3, v5);
  sub_23B7E5BA0(v6);
  v7 = v2[1];

  return v7();
}

uint64_t sub_23B7E56BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for PayWithApplePayButton(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  swift_unknownObjectRelease();
  v10 = v4 + v8;
  v11 = v6[9];
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v8 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_23B7E5998(*(v10 + v6[11]), *(v10 + v6[11] + 8), *(v10 + v6[11] + 16));

  sub_23B7E2D4C(*(v10 + v6[13]), *(v10 + v6[13] + 8));
  sub_23B7E59A8(*(v10 + v6[14]), *(v10 + v6[14] + 8));
  sub_23B7E59A8(*(v10 + v6[15]), *(v10 + v6[15] + 8));
  sub_23B7E59A8(*(v10 + v6[16]), *(v10 + v6[16] + 8));
  sub_23B7E59A8(*(v10 + v6[17]), *(v10 + v6[17] + 8));
  sub_23B7E2D4C(*(v10 + v6[18]), *(v10 + v6[18] + 8));
  v13 = v6[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186630, &qword_23B805280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23B8020C0();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  v15 = v6[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E186638, &qword_23B803CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23B802380();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

void sub_23B7E5998(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23B7E59A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_23B7E59B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for PayWithApplePayButton(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23B7E5AAC;

  return sub_23B7E55A0(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_23B7E5AAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B7E5BA0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_23B8026E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  (*(v5 + 16))(&v19 - v6, v1 + *(a1 + 36), v4);
  v8 = 1;
  LODWORD(v3) = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v3 != 1)
  {
    v13 = sub_23B7E3428(a1, v9, v10, v11);
    v15 = v14;
    if (v14)
    {
      v16 = v12;
      v17 = sub_23B7F18F4();
      v12 = v16;
      v8 = v17;
    }

    sub_23B7E5998(v13, v12, v15 & 1);
  }

  return sub_23B7E34F8(v8 & 1, a1);
}

void *sub_23B7E5D1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v69 = a4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867C8, &qword_23B803F60);
  MEMORY[0x28223BE20](v67);
  v68 = (&v57 - v7);
  v63 = a2;
  v64 = a3;
  v9 = type metadata accessor for PayWithApplePayButton(0, a2, a3, v8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v57 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867D0, &qword_23B803F68);
  MEMORY[0x28223BE20](v62);
  v14 = &v57 - v13;
  v15 = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1865F8, &qword_23B803C88);
  MEMORY[0x28223BE20](v66);
  v65 = &v57 - v18;
  v19 = sub_23B7E3364(v9);
  v21 = sub_23B7E63EC(v9, v19, v20);
  v26 = sub_23B7E3428(v9, v22, v23, v24);
  v28 = v27;
  if (v21)
  {
    if (v25)
    {
      v60 = *a1;
      sub_23B7E355C(v9, v75);
      v59 = *&v75[0];
      v58 = *(v26 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_request);
      v29 = *(v15 + 32);
      v30 = v58;
      sub_23B7E3D7C(v9, &v17[v29]);
      v31 = v61;
      (*(v10 + 16))(v61, a1, v9);
      v32 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v33 = swift_allocObject();
      v34 = v64;
      *(v33 + 16) = v63;
      *(v33 + 24) = v34;
      (*(v10 + 32))(v33 + v32, v31, v9);
      *(v33 + ((v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
      v35 = v59;
      *v17 = v60;
      *(v17 + 1) = v35;
      *(v17 + 4) = v58;
      v36 = &v17[*(v15 + 36)];
      *v36 = sub_23B7E7EB0;
      *(v36 + 1) = v33;
      *(v17 + 1) = xmmword_23B803C60;
      sub_23B7E7C48(v17, v14);
      swift_storeEnumTagMultiPayload();
      sub_23B7E4EAC();
      v37 = v65;
      sub_23B8022C0();
    }

    else
    {
      v47 = *a1;
      sub_23B7E355C(v9, v75);
      v48 = *&v75[0];
      sub_23B7E3D7C(v9, &v17[*(v15 + 32)]);

      v49 = sub_23B7E3364(v9);
      *v17 = v47;
      *(v17 + 1) = v48;
      *(v17 + 4) = 0;
      v50 = &v17[*(v15 + 36)];
      v51 = v26;
      *v50 = v26;
      v50[1] = v28;
      *(v17 + 2) = v49;
      *(v17 + 3) = v52;
      sub_23B7E7C48(v17, v14);
      swift_storeEnumTagMultiPayload();
      sub_23B7E4EAC();
      v37 = v65;
      sub_23B8022C0();
      sub_23B7E5998(v51, v28, 0);
    }

    sub_23B7E7CAC(v17);
    sub_23B7E7D70(v37, v68, &qword_27E1865F8, &qword_23B803C88);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186610, &qword_23B803C90);
    sub_23B7E4F04(&qword_27E1865F0, &qword_27E1865F8, &qword_23B803C88, sub_23B7E4EAC);
    sub_23B7E4F04(&qword_27E186608, &qword_27E186610, &qword_23B803C90, sub_23B7E4F80);
    sub_23B8022C0();
    return sub_23B7E7D08(v37, &qword_27E1865F8, &qword_23B803C88);
  }

  else
  {
    v38 = *a1;
    if (v25)
    {
      sub_23B7E355C(v9, v75);
      v39 = *&v75[0];
      v40 = v61;
      (*(v10 + 16))(v61, a1, v9);
      v41 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v42 = swift_allocObject();
      v43 = v64;
      *(v42 + 16) = v63;
      *(v42 + 24) = v43;
      v44 = (*(v10 + 32))(v42 + v41, v40, v9);
      *(v42 + ((v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
      v70 = v38;
      v71 = v39;
      v72 = sub_23B7E78D0;
      v73 = v42;
      v74 = 1;
    }

    else
    {
      v44 = sub_23B7E355C(v9, &v71);
      v70 = v38;
      v72 = v26;
      v73 = v28;
      v74 = 0;
    }

    sub_23B7E4F80(v44, v45, v46);
    sub_23B8022C0();
    v54 = v75[1];
    v55 = v76;
    v56 = v68;
    *v68 = v75[0];
    v56[1] = v54;
    *(v56 + 32) = v55;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186610, &qword_23B803C90);
    sub_23B7E4F04(&qword_27E1865F0, &qword_27E1865F8, &qword_23B803C88, sub_23B7E4EAC);
    sub_23B7E4F04(&qword_27E186608, &qword_27E186610, &qword_23B803C90, sub_23B7E4F80);
    return sub_23B8022C0();
  }
}

uint64_t sub_23B7E63EC(uint64_t a1, double a2, double a3)
{
  v6 = sub_23B7E3C28(a1);
  if ((v6 & 1) == 0)
  {
    v13[3] = &type metadata for PaymentButtonFeatureFlag.Wallet;
    v13[4] = sub_23B7E7DD8(v6, v7, v8);
    v9 = sub_23B802060();
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (v9)
    {
      v10 = a3 <= 30.0;
      if (a2 <= 150.0)
      {
        v10 = 1;
      }

      if (*v3 >= 2uLL)
      {
        if (*v3 != 3)
        {
          return 0;
        }

        if (a3 >= 80.0)
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }
      }

      else
      {
        v11 = !v10;
        if (a3 >= 80.0)
        {
          v11 = 0;
        }

        if (!v11)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

void sub_23B7E64D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PayWithApplePayButton(0, a3, a4, a4);
  sub_23B7E732C(a2, v5);
  sub_23B7F15F0();
}

void sub_23B7E651C(void *a1@<X8>)
{
  sub_23B8020E0();
  *a1 = v2;
  a1[1] = v3;
}

void sub_23B7E65B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_23B8026E0();
  if (v3 <= 0x3F)
  {
    sub_23B7E70B8(319, &qword_27E1866C0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
    if (v5 <= 0x3F)
    {
      type metadata accessor for PayWithApplePayButton.Configuration(255, v2, *(a1 + 24), v4);
      sub_23B8024B0();
      if (v6 <= 0x3F)
      {
        sub_23B7E7068(319, &qword_27E1866C8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v7 <= 0x3F)
        {
          sub_23B7E7068(319, &qword_27E1866D0, &type metadata for PayWithApplePayButtonStyle, MEMORY[0x277CDF468]);
          if (v8 <= 0x3F)
          {
            sub_23B7E7014(319, &qword_27E1866D8, &qword_27E1866E0, &qword_23B803D38);
            if (v9 <= 0x3F)
            {
              sub_23B7E7014(319, &qword_27E1866E8, &qword_27E1866F0, &qword_23B803D40);
              if (v10 <= 0x3F)
              {
                sub_23B7E7014(319, &qword_27E1866F8, &qword_27E186700, &qword_23B803D48);
                if (v11 <= 0x3F)
                {
                  sub_23B7E7014(319, &qword_27E186708, &qword_27E186710, qword_23B803D50);
                  if (v12 <= 0x3F)
                  {
                    sub_23B7E7068(319, &qword_27E186718, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                    if (v13 <= 0x3F)
                    {
                      sub_23B7E70B8(319, &qword_27E186720, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                      if (v14 <= 0x3F)
                      {
                        sub_23B7E70B8(319, qword_27E186728, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
                        if (v15 <= 0x3F)
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

uint64_t sub_23B7E68AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(a3 + 16);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_23B8020C0() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v29 = v10;
  v11 = *(sub_23B802380() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  if (!v6)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + 7;
  if (a2 > v8)
  {
    v16 = *(v9 + 80) & 0xF8 | 7;
    v17 = *(v11 + 80) & 0xF8 | 7;
    v18 = v12 + ((v29 + v17 + ((v16 + ((((((((v15 + ((v13 + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v16) + 1) & ~v17) + 1;
    v19 = 8 * v18;
    if (v18 > 3)
    {
      goto LABEL_17;
    }

    v22 = ((a2 - v8 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v22 >= 2)
    {
LABEL_17:
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_36;
      }

LABEL_25:
      v23 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v23 = 0;
      }

      if (v18)
      {
        if (v18 > 3)
        {
          LODWORD(v18) = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v18) = *a1;
          }
        }

        else if (v18 == 1)
        {
          LODWORD(v18) = *a1;
        }

        else
        {
          LODWORD(v18) = *a1;
        }
      }

      v27 = v8 + (v18 | v23);
      return (v27 + 1);
    }
  }

LABEL_36:
  v24 = (a1 + v13 + 8) & ~v13;
  if (v7 < 0x7FFFFFFE)
  {
    v26 = *(((v15 + v24) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    v27 = v26 - 1;
    if (v27 < 0)
    {
      v27 = -1;
    }

    return (v27 + 1);
  }

  v25 = (*(v5 + 48))(v24, v6, v28);
  if (v25 >= 2)
  {
    return v25 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_23B7E6BBC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v30 = *(a4 + 16);
  v5 = *(v30 - 8);
  v31 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_23B8020C0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = 0;
  v12 = *(sub_23B802380() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 80);
  if (v6)
  {
    v15 = *(v5 + 64);
  }

  else
  {
    v15 = *(v5 + 64) + 1;
  }

  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = v13 + ((v10 + v17 + ((v16 + ((((((((v15 + 7 + ((v14 + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v16) + 1) & ~v17) + 1;
  if (a3 > v8)
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v8 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v19))
      {
        v11 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v11 = v20;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v8 < a2)
  {
    v21 = ~v8 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> (8 * v18)) + 1;
      if (v18)
      {
        v23 = v21 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v23;
            if (v11 > 1)
            {
LABEL_68:
              if (v11 == 2)
              {
                *&a1[v18] = v22;
              }

              else
              {
                *&a1[v18] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v11 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v11 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
      if (v11 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v11)
    {
      a1[v18] = v22;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *&a1[v18] = 0;
LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!v11)
  {
    goto LABEL_42;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  v24 = &a1[v14 + 8] & ~v14;
  if (v7 < 0x7FFFFFFE)
  {
    v28 = ((v15 + 7 + v24) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      v28[1] = 0;
      v28[2] = 0;
      *v28 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v28[2] = a2;
    }
  }

  else if (v7 >= a2)
  {
    v29 = *(v31 + 56);

    v29(&a1[v14 + 8] & ~v14, a2 + 1, v6, v30);
  }

  else
  {
    if (v15 <= 3)
    {
      v25 = ~(-1 << (8 * v15));
    }

    else
    {
      v25 = -1;
    }

    if (v15)
    {
      v26 = v25 & (~v7 + a2);
      if (v15 <= 3)
      {
        v27 = v15;
      }

      else
      {
        v27 = 4;
      }

      bzero((&a1[v14 + 8] & ~v14), v15);
      if (v27 > 2)
      {
        if (v27 == 3)
        {
          *v24 = v26;
          *(v24 + 2) = BYTE2(v26);
        }

        else
        {
          *v24 = v26;
        }
      }

      else if (v27 == 1)
      {
        *v24 = v26;
      }

      else
      {
        *v24 = v26;
      }
    }
  }
}

void sub_23B7E7014(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23B8020D0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23B7E7068(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23B7E70B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23B7E711C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1865C0, &qword_23B803C70);
  sub_23B8026E0();
  sub_23B8022D0();
  sub_23B7E4CB8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B802510();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B7E722C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B7E7294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23B7E72DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B7E732C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B802380();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(a1 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentMethodChange) = sub_23B7E36B8(a2);

  *(a1 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onShippingContactChange) = sub_23B7E3814(a2);

  *(a1 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onShippingChange) = sub_23B7E3970(a2);

  *(a1 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onCouponCodeChange) = sub_23B7E3ACC(a2);

  sub_23B7E3F80(a2, v7);
  v10 = a1;
  sub_23B802370();
  return (*(v5 + 8))(v7, v4);
}

void sub_23B7E74B8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    v5 = [v3 window];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_activeWindow);
  *(a2 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_activeWindow) = v5;
}

uint64_t sub_23B7E75A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PayWithApplePayButton(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  v11 = v6[9];
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_23B7E5998(*(v10 + v6[11]), *(v10 + v6[11] + 8), *(v10 + v6[11] + 16));

  sub_23B7E2D4C(*(v10 + v6[13]), *(v10 + v6[13] + 8));
  sub_23B7E59A8(*(v10 + v6[14]), *(v10 + v6[14] + 8));
  sub_23B7E59A8(*(v10 + v6[15]), *(v10 + v6[15] + 8));
  sub_23B7E59A8(*(v10 + v6[16]), *(v10 + v6[16] + 8));
  sub_23B7E59A8(*(v10 + v6[17]), *(v10 + v6[17] + 8));
  sub_23B7E2D4C(*(v10 + v6[18]), *(v10 + v6[18] + 8));
  v13 = v6[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186630, &qword_23B805280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23B8020C0();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  v15 = v6[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E186638, &qword_23B803CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23B802380();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v9 + v8, v7 | 7);
}

uint64_t objectdestroy_41Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PayWithApplePayButton(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  v11 = v6[9];
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_23B7E5998(*(v10 + v6[11]), *(v10 + v6[11] + 8), *(v10 + v6[11] + 16));

  sub_23B7E2D4C(*(v10 + v6[13]), *(v10 + v6[13] + 8));
  sub_23B7E59A8(*(v10 + v6[14]), *(v10 + v6[14] + 8));
  sub_23B7E59A8(*(v10 + v6[15]), *(v10 + v6[15] + 8));
  sub_23B7E59A8(*(v10 + v6[16]), *(v10 + v6[16] + 8));
  sub_23B7E59A8(*(v10 + v6[17]), *(v10 + v6[17] + 8));
  sub_23B7E2D4C(*(v10 + v6[18]), *(v10 + v6[18] + 8));
  v13 = v6[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186630, &qword_23B805280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23B8020C0();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  v15 = v6[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E186638, &qword_23B803CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23B802380();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  else
  {
  }

  v17 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v4, v17 + 8, v7 | 7);
}

void sub_23B7E7BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for PayWithApplePayButton(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  sub_23B7E64D4(v4 + v8, *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_23B7E7C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7E7CAC(uint64_t a1)
{
  v2 = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7E7D08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B7E7D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_23B7E7DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E1867D8[0];
  if (!qword_27E1867D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1867D8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23B7E7EB4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v7 = a1[1];
  *a5 = *a1;
  a5[1] = v7;
  *(a5 + 25) = *(a1 + 25);
  v8 = *(type metadata accessor for AddPassToWalletButton(0, a3, a4, a4) + 36);
  v9 = sub_23B8026E0();
  v10 = *(*(v9 - 8) + 32);

  return v10(a5 + v8, a2, v9);
}

void *sub_23B7E7FB8(uint64_t a1, uint64_t a2)
{
  v8 = sub_23B8022B0();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23B8022C0();
}

void *sub_23B7E80B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_23B8022B0();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23B8022C0();
}

uint64_t AddPassToWalletButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = *(a1 + 16);
  v20[0] = sub_23B8026E0();
  v5 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v7 = v20 - v6;
  v8 = *(a1 + 24);
  v10 = type metadata accessor for AddPassToWalletButton_iOS(0, v4, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  v17 = v2[1];
  v22 = *v2;
  v23[0] = v17;
  *(v23 + 9) = *(v2 + 25);
  (*(v5 + 16))(v7, v2 + *(a1 + 36), v20[0]);
  sub_23B7E8580(&v22, v21);
  sub_23B7E83F4(&v22, v7, v4, v8, v14);
  swift_getWitnessTable();
  sub_23B7E7EA8();
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_23B7E7EA8();
  return v18(v16, v10);
}

uint64_t sub_23B7E83F4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = type metadata accessor for AddPassToWalletButton_iOS(0, a3, a4, a4);
  v9 = a5 + v8[10];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a5 + v8[11];
  sub_23B802470();
  *v10 = v18;
  *(v10 + 1) = v19;
  v11 = a5 + v8[12];
  sub_23B802470();
  *v11 = v18;
  *(v11 + 1) = v19;
  v12 = a5 + v8[13];
  sub_23B802470();
  *v12 = v18;
  *(v12 + 1) = v19;
  v13 = a5 + v8[14];
  sub_23B802470();
  *v13 = v18;
  *(v13 + 1) = v19;
  v14 = a1[1];
  *a5 = *a1;
  a5[1] = v14;
  *(a5 + 25) = *(a1 + 25);
  v15 = v8[9];
  v16 = sub_23B8026E0();
  return (*(*(v16 - 8) + 32))(a5 + v15, a2, v16);
}

uint64_t sub_23B7E85BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
  sub_23B802480();
  return v2;
}

uint64_t sub_23B7E861C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
  sub_23B8024A0();
  return v2;
}

uint64_t sub_23B7E8680(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
  sub_23B8024A0();
  return v2;
}

uint64_t sub_23B7E86E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
  sub_23B802480();
  return v2;
}

uint64_t sub_23B7E87A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
  sub_23B802480();
  return v2;
}

uint64_t sub_23B7E886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_23B802660();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v36 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1868E8, &qword_23B804160);
  v32 = *(a1 + 16);
  v9 = v32;
  sub_23B8026E0();
  sub_23B8022D0();
  v10 = sub_23B802460();
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v31 - v11;
  sub_23B8020F0();
  v12 = sub_23B802140();
  v38 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v31 - v15;
  v16 = *(a1 + 24);
  v43 = v9;
  v44 = v16;
  v45 = v2;
  v17 = sub_23B7EB5EC();
  v51 = v16;
  WitnessTable = swift_getWitnessTable();
  v49 = v17;
  v50 = WitnessTable;
  v19 = swift_getWitnessTable();
  sub_23B802450();
  v20 = v34;
  (*(v7 + 16))(v34, v2, a1);
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  *(v22 + 24) = v16;
  (*(v7 + 32))(v22 + v21, v20, a1);
  v48 = v19;
  v23 = swift_getWitnessTable();
  v24 = v39;
  sub_23B7E125C();
  v25 = v33;
  v26 = v31;
  sub_23B802400();

  (*(v40 + 8))(v24, v41);
  (*(v37 + 8))(v26, v10);
  v27 = sub_23B7EBC1C();
  v46 = v23;
  v47 = v27;
  swift_getWitnessTable();
  v28 = v35;
  sub_23B7E7EA8();
  v29 = *(v38 + 8);
  v29(v25, v12);
  sub_23B7E7EA8();
  return (v29)(v28, v12);
}

uint64_t sub_23B7E8D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v7 = sub_23B8026E0();
  v63 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186910, &qword_23B804170);
  MEMORY[0x28223BE20](v69);
  v59 = (&v54 - v13);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186970, &qword_23B8041B8);
  v61 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v54 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186978, &qword_23B8041C0);
  MEMORY[0x28223BE20](v65);
  v68 = (&v54 - v15);
  v66 = a2;
  v16 = a3;
  v18 = type metadata accessor for AddPassToWalletButton_iOS(0, a2, a3, v17);
  v64 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v62 = &v54 - v19;
  v58 = sub_23B8021A0();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1868E8, &qword_23B804160);
  MEMORY[0x28223BE20](v22);
  v67 = &v54 - v23;
  v24 = sub_23B8022D0();
  v71 = *(v24 - 8);
  v72 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  if (sub_23B7E86E4(v18))
  {
    v56 = v7;
    v55 = v22;
    v63 = v26;
    if (sub_23B7E87A8(v18))
    {
      v27 = a1 + *(v18 + 40);
      v28 = *v27;
      if (*(v27 + 8) != 1)
      {

        sub_23B802680();
        v43 = sub_23B802390();
        sub_23B802070();

        sub_23B802190();
        swift_getAtKeyPath();
        sub_23B7E2D4C(v28, 0);
        (*(v57 + 8))(v21, v58);
        LOBYTE(v28) = v75;
      }

      v42 = v55;
      v44 = v64;
      v45 = v62;
      (*(v64 + 16))(v62, a1, v18);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = v66;
      *(v47 + 24) = v16;
      (*(v44 + 32))(v47 + v46, v45, v18);
      v48 = v68;
      *v68 = v28 & 1;
      v48[1] = nullsub_1;
      v48[2] = 0;
      v48[3] = sub_23B7EBD10;
      v48[4] = v47;
      v48[5] = 0;
      v48[6] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186900, &qword_23B804168);
      sub_23B7EB6D0();
      v49 = sub_23B7EB7B0();
      v75 = v69;
      v76 = MEMORY[0x277D839B0];
      v77 = v49;
      v78 = MEMORY[0x277D839C8];
      swift_getOpaqueTypeConformance2();
      v41 = v67;
      sub_23B8022C0();
    }

    else
    {
      v30 = v59;
      sub_23B7E96F4(v18, v59);
      LOBYTE(v75) = sub_23B7E85BC(v18) & 1;
      v31 = v64;
      v32 = v62;
      (*(v64 + 16))(v62, a1, v18);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v66;
      *(v34 + 24) = v16;
      (*(v31 + 32))(v34 + v33, v32, v18);
      v35 = sub_23B7EB7B0();
      v36 = MEMORY[0x277D839B0];
      v37 = v60;
      v38 = v69;
      sub_23B802440();

      sub_23B7E7D08(v30, &qword_27E186910, &qword_23B804170);
      v39 = v61;
      v40 = v70;
      (*(v61 + 16))(v68, v37, v70);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186900, &qword_23B804168);
      sub_23B7EB6D0();
      v75 = v38;
      v76 = v36;
      v77 = v35;
      v78 = MEMORY[0x277D839C8];
      swift_getOpaqueTypeConformance2();
      v41 = v67;
      sub_23B8022C0();
      (*(v39 + 8))(v37, v40);
      v42 = v55;
    }

    sub_23B7EB5EC();
    v74 = v16;
    swift_getWitnessTable();
    v26 = v63;
    sub_23B7E7FB8(v41, v42);
    sub_23B7E7D08(v41, &qword_27E1868E8, &qword_23B804160);
  }

  else
  {
    v82 = v16;
    swift_getWitnessTable();
    sub_23B7E7EA8();
    sub_23B7E7EA8();
    sub_23B7EB5EC();
    sub_23B7E80B0(v10, v22, v7);
    v29 = *(v63 + 1);
    v29(v10, v7);
    v29(v12, v7);
  }

  v50 = sub_23B7EB5EC();
  v81 = v16;
  WitnessTable = swift_getWitnessTable();
  v79 = v50;
  v80 = WitnessTable;
  v52 = v72;
  swift_getWitnessTable();
  sub_23B7E7EA8();
  return (*(v71 + 8))(v26, v52);
}

void *sub_23B7E96F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186980, &qword_23B8041C8);
  v6 = MEMORY[0x28223BE20](v93);
  v8 = (v82 - v7);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186930, &qword_23B804180);
  v89 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v88 = v82 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186988, &qword_23B8041D0);
  v91 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v90 = v82 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186928, &qword_23B804178);
  MEMORY[0x28223BE20](v98);
  v14 = v82 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186990, &qword_23B8041D8);
  MEMORY[0x28223BE20](v96);
  v97 = (v82 - v15);
  v16 = sub_23B8021A0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 40))
  {
    v84 = v18;
    v86 = v8;
    v92 = sub_23B7EA6EC(a1);
    v87 = a2;
    v85 = v14;
    if (v21)
    {
      v22 = v3 + *(a1 + 40);
      v23 = *v22;
      if (*(v22 + 8))
      {
        LOBYTE(v101) = v23 & 1;
      }

      else
      {

        sub_23B802680();
        v37 = sub_23B802390();
        sub_23B802070();

        sub_23B802190();
        swift_getAtKeyPath();
        sub_23B7E2D4C(v23, 0);
        (*(v17 + 8))(v20, v84);
        LOBYTE(v23) = v101;
      }

      (*(v9 + 16))(v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
      v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = *(a1 + 16);
      (*(v9 + 32))(v39 + v38, v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
      *(v39 + ((v10 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v92;
      v40 = v86;
      *v86 = v23 & 1;
      v40[1] = sub_23B7EBF1C;
      v40[2] = v39;
      swift_storeEnumTagMultiPayload();
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186938, &qword_23B804188);
      v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186940, &qword_23B804190);
      v45 = sub_23B7EB75C(v42, v43, v44);
      v46 = sub_23B7EB9DC();
      v101 = &type metadata for AddPassButtonView;
      v102 = v42;
      v103 = v45;
      v104 = v46;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v50 = sub_23B7EBA94(OpaqueTypeConformance2, v48, v49);
      v51 = sub_23B7EBAE8(&qword_27E186968, &qword_27E186938, &qword_23B804188, MEMORY[0x277CE14C0]);
      v101 = v94;
      v102 = MEMORY[0x277D837D0];
      v103 = v41;
      v104 = MEMORY[0x277CE0BD8];
      v105 = OpaqueTypeConformance2;
      v106 = v50;
      v107 = v51;
      v108 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v52 = v85;
      sub_23B8022C0();
    }

    else
    {
      v28 = v3 + *(a1 + 40);
      v29 = *v28;
      if (*(v28 + 8))
      {
        LOBYTE(v101) = v29 & 1;
      }

      else
      {

        sub_23B802680();
        v53 = sub_23B802390();
        sub_23B802070();

        sub_23B802190();
        swift_getAtKeyPath();
        sub_23B7E2D4C(v29, 0);
        (*(v17 + 8))(v20, v84);
        LOBYTE(v29) = v101;
      }

      (*(v9 + 16))(v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
      v54 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = *(a1 + 16);
      (*(v9 + 32))(v55 + v54, v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
      v101 = (v29 & 1);
      v102 = sub_23B7EC1CC;
      v103 = v55;
      sub_23B7E861C(a1);

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186940, &qword_23B804190);
      v59 = sub_23B7EB75C(v56, v57, v58);
      v83 = sub_23B7EB9DC();
      v82[4] = v59;
      v60 = v88;
      sub_23B8023F0();

      v82[2] = sub_23B7E8680(a1);
      LODWORD(v84) = v61;
      v62 = objc_opt_self();
      v63 = sub_23B802570();
      v64 = [v62 localizedDeletableWalletStringFor_];

      v65 = sub_23B8025A0();
      v67 = v66;
      v82[1] = v66;

      v82[3] = v82;
      v99 = v65;
      v100 = v67;
      v69 = MEMORY[0x28223BE20](v68);
      MEMORY[0x28223BE20](v69);
      v82[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186938, &qword_23B804188);
      v101 = &type metadata for AddPassButtonView;
      v102 = v56;
      v103 = v59;
      v104 = v83;
      v70 = swift_getOpaqueTypeConformance2();
      v73 = sub_23B7EBA94(v70, v71, v72);
      v81 = sub_23B7EBAE8(&qword_27E186968, &qword_27E186938, &qword_23B804188, MEMORY[0x277CE14C0]);
      v74 = v94;
      v75 = v90;
      sub_23B802410();

      (*(v89 + 8))(v60, v74);
      v76 = v91;
      v77 = v95;
      (*(v91 + 16))(v86, v75, v95);
      swift_storeEnumTagMultiPayload();
      v101 = v74;
      v102 = MEMORY[0x277D837D0];
      v103 = v82[0];
      v104 = MEMORY[0x277CE0BD8];
      v105 = v70;
      v106 = v73;
      v107 = v81;
      v108 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v52 = v85;
      sub_23B8022C0();
      sub_23B7EC73C(v92, 0);
      (*(v76 + 8))(v75, v77);
    }

    sub_23B7EBFCC(v52, v97);
    v78 = swift_storeEnumTagMultiPayload();
    sub_23B7EB75C(v78, v79, v80);
    sub_23B7EB83C();
    sub_23B8022C0();
    return sub_23B7E7D08(v52, &qword_27E186928, &qword_23B804178);
  }

  else
  {
    v24 = *v3;
    v25 = *(v3 + 8);
    v26 = v3 + *(a1 + 40);
    v27 = *v26;
    if (*(v26 + 8) == 1)
    {
    }

    else
    {
      v30 = v18;
      sub_23B7EC748(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), 0);
      sub_23B7EC7D8(v27, 0);
      sub_23B802680();
      v31 = sub_23B802390();
      sub_23B802070();

      sub_23B802190();
      swift_getAtKeyPath();
      sub_23B7E2D4C(v27, 0);
      (*(v17 + 8))(v20, v30);
      LOBYTE(v27) = v101;
    }

    v32 = v97;
    *v97 = v27 & 1;
    v32[1] = v24;
    v32[2] = v25;
    v33 = swift_storeEnumTagMultiPayload();
    sub_23B7EB75C(v33, v34, v35);
    sub_23B7EB83C();
    return sub_23B8022C0();
  }
}

_BYTE *sub_23B7EA39C(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result == 1 && (*a2 & 1) == 0)
  {
    v5 = type metadata accessor for AddPassToWalletButton_iOS(0, a4, a5, a4);
    return sub_23B7E8808(1, v5);
  }

  return result;
}

uint64_t sub_23B7EA3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23B802630();
  v3[5] = sub_23B802620();
  v5 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7EA48C, v5, v4);
}

uint64_t sub_23B7EA48C(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[3];

  v6 = type metadata accessor for AddPassToWalletButton_iOS(0, v4, v3, v5);
  sub_23B7EA50C(v6);
  v7 = v2[1];

  return v7();
}

uint64_t sub_23B7EA50C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_23B8026E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, v1 + *(a1 + 36), v4);
  v8 = 1;
  LODWORD(v3) = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v3 != 1)
  {
    if (*(v1 + 40) > 1u)
    {
      if (*(v1 + 40) != 2)
      {
        v9 = [objc_opt_self() canAddPaymentPass];
        goto LABEL_10;
      }

      v10 = *v1;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v8 = [objc_opt_self() canAddSecureElementPassWithConfiguration_];
      }
    }

    else if (*(v1 + 40))
    {
      v9 = [objc_opt_self() canAddPasses];
LABEL_10:
      v8 = v9;
    }
  }

  return sub_23B7E8744(v8, a1);
}

id sub_23B7EA6EC(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  if (v6 > 2)
  {
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = v4;

    v7 = sub_23B7FDE20(v10, v3, v5, v9, v8, a1);

    goto LABEL_7;
  }

  if (v6 == 1)
  {

    v7 = sub_23B7F779C(v4, v3, v5, a1);

LABEL_7:

    return v7;
  }

  if (v6 == 2)
  {
    v11 = v4;

    v7 = sub_23B7E27E8(v11, v3, v5, a1);

    goto LABEL_7;
  }

  result = sub_23B802750();
  __break(1u);
  return result;
}

uint64_t sub_23B7EA858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() passbookHasBeenDeleted];
  v7 = type metadata accessor for AddPassToWalletButton_iOS(0, a2, a3, v6);
  if (v5)
  {
    return sub_23B7E34F8(1, v7);
  }

  else
  {
    return sub_23B7E7F54(1, v7);
  }
}

uint64_t sub_23B7EA8CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*(result + 40) > 1u)
  {
    if (*(result + 40) != 2)
    {
      v2 = *(result + 24);
    }

    return v2(a2, 1);
  }

  else if (*(result + 40))
  {
    return v2(0, a2);
  }

  return result;
}

uint64_t AddPassToWalletButton<>.init(action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 256;
  return result;
}

uint64_t sub_23B7EA990(uint64_t a1)
{
  result = sub_23B8026E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B7EAA10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 41) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xFC)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 41) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 40);
        if (v17 > 3)
        {
          return (v17 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_23B7EABC8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFC)
  {
    v10 = 252;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 41) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xFC)
  {
    v21 = (&a1[v11 + 41] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 41] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if (a2 > 0xFC)
  {
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[40] = 0;
    *a1 = a2 - 253;
  }

  else
  {
    a1[40] = -a2;
  }
}

uint64_t sub_23B7EAEEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AddPassToWalletButton_iOS(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B7EAF54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B7EAF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_23B7EB00C(uint64_t a1)
{
  sub_23B8026E0();
  if (v1 <= 0x3F)
  {
    sub_23B7EB54C(319, &qword_27E1868E0, &type metadata for AddPassToWalletButtonStyle, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23B7EB54C(319, &qword_27E1866C8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B7EB108(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 23;
  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((((((((v11 + ((v9 + 41) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    v21 = (a1 + v9 + 41) & ~v9;
    if (v7 < 0x7FFFFFFE)
    {
      v23 = *(((v11 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      v24 = v23 - 1;
      if (v24 < 0)
      {
        v24 = -1;
      }

      return (v24 + 1);
    }

    else
    {
      v22 = (*(v5 + 48))(v21);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void sub_23B7EB2B8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((v11 + 23 + ((v10 + 41) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((v11 + 23 + ((v10 + 41) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((v11 + 23 + ((v10 + 41) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((v11 + 23 + ((v10 + 41) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = (a1 + v10 + 41) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    v23 = ((v11 + 23 + v19) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v23 = a2 - 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      v23[1] = a2;
    }
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);
    v25 = a2 + 1;
    v26 = (a1 + v10 + 41) & ~v10;

    v24(v26, v25);
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v8 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(((a1 + v10 + 41) & ~v10), v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *v19 = v21;
          *(v19 + 2) = BYTE2(v21);
        }

        else
        {
          *v19 = v21;
        }
      }

      else if (v22 == 1)
      {
        *v19 = v21;
      }

      else
      {
        *v19 = v21;
      }
    }
  }
}

void sub_23B7EB54C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_23B7EB5EC()
{
  result = qword_27E1868F0;
  if (!qword_27E1868F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1868E8, &qword_23B804160);
    sub_23B7EB6D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186910, &qword_23B804170);
    sub_23B7EB7B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1868F0);
  }

  return result;
}

unint64_t sub_23B7EB6D0()
{
  result = qword_27E1868F8;
  if (!qword_27E1868F8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186900, &qword_23B804168);
    sub_23B7EB75C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1868F8);
  }

  return result;
}

unint64_t sub_23B7EB75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186908;
  if (!qword_27E186908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186908);
  }

  return result;
}

unint64_t sub_23B7EB7B0()
{
  result = qword_27E186918;
  if (!qword_27E186918)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186910, &qword_23B804170);
    sub_23B7EB75C(v1, v2, v3);
    sub_23B7EB83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186918);
  }

  return result;
}

unint64_t sub_23B7EB83C()
{
  result = qword_27E186920;
  if (!qword_27E186920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186928, &qword_23B804178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186930, &qword_23B804180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186938, &qword_23B804188);
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186940, &qword_23B804190);
    sub_23B7EB75C(v1, v2, v3);
    sub_23B7EB9DC();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_23B7EBA94(OpaqueTypeConformance2, v5, v6);
    sub_23B7EBAE8(&qword_27E186968, &qword_27E186938, &qword_23B804188, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186920);
  }

  return result;
}

unint64_t sub_23B7EB9DC()
{
  result = qword_27E186948;
  if (!qword_27E186948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186940, &qword_23B804190);
    sub_23B7EBAE8(&qword_27E186950, &qword_27E186958, &qword_23B804198, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186948);
  }

  return result;
}

unint64_t sub_23B7EBA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186960;
  if (!qword_27E186960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186960);
  }

  return result;
}

uint64_t sub_23B7EBAE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23B7EBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for AddPassToWalletButton_iOS(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_23B7E5AAC;

  return sub_23B7EA3F0(v4 + v9, v6, v7);
}

unint64_t sub_23B7EBC1C()
{
  result = qword_27E186418;
  if (!qword_27E186418)
  {
    sub_23B8020F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186418);
  }

  return result;
}

_BYTE *sub_23B7EBC74(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for AddPassToWalletButton_iOS(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_23B7EA39C(a1, a2, v10, v7, v8);
}

uint64_t sub_23B7EBD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AddPassToWalletButton_iOS(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  sub_23B7E2CBC(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24), *(v4 + v9 + 32), *(v4 + v9 + 40));
  v11 = *(v6 + 36);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  v13 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_23B7E2D4C(*(v10 + *(v6 + 40)), *(v10 + *(v6 + 40) + 8));

  return MEMORY[0x2821FE8E8](v4, v13 + 8, v7 | 7);
}

uint64_t sub_23B7EBF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AddPassToWalletButton_iOS(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v4 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23B7EA8CC(v4 + v6, v7);
}

uint64_t sub_23B7EBFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186928, &qword_23B804178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AddPassToWalletButton_iOS(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  sub_23B7E2CBC(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24), *(v4 + v9 + 32), *(v4 + v9 + 40));
  v11 = *(v6 + 36);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_23B7E2D4C(*(v10 + *(v6 + 40)), *(v10 + *(v6 + 40) + 8));

  return MEMORY[0x2821FE8E8](v4, v9 + v8, v7 | 7);
}

uint64_t sub_23B7EC1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for AddPassToWalletButton_iOS(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23B7EA858(v8, v5, v6);
}

uint64_t sub_23B7EC250@<X0>(void *a2@<X8>)
{
  v4 = sub_23B802530();
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_23B7EC290@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186998, &qword_23B8041E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1869A0, &qword_23B8041E8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = objc_opt_self();
  v17 = sub_23B802570();
  v18 = [v16 localizedDeletableWalletStringFor_];

  v19 = sub_23B8025A0();
  v21 = v20;

  v39 = v19;
  v40 = v21;
  sub_23B7EBA94(v22, v23, v24);
  sub_23B8024D0();
  v25 = sub_23B802570();
  v26 = [v16 localizedDeletableWalletStringFor_];

  v27 = sub_23B8025A0();
  v29 = v28;

  v39 = v27;
  v40 = v29;
  sub_23B802090();
  v30 = sub_23B8020A0();
  (*(*(v30 - 8) + 56))(v3, 0, 1, v30);
  sub_23B8024C0();
  v31 = *(v5 + 16);
  v31(v10, v15, v4);
  v32 = v37;
  v31(v37, v13, v4);
  v33 = v38;
  v31(v38, v10, v4);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1869A8, &qword_23B8041F0);
  v31(&v33[*(v34 + 48)], v32, v4);
  v35 = *(v5 + 8);
  v35(v13, v4);
  v35(v15, v4);
  v35(v32, v4);
  return (v35)(v10, v4);
}

uint64_t sub_23B7EC670@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_23B802570();
  v4 = [v2 localizedDeletableWalletStringFor_];

  sub_23B8025A0();
  sub_23B7EBA94(v5, v6, v7);
  result = sub_23B8023A0();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

void sub_23B7EC73C(id a1, uint64_t a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_23B7EC748(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      v7 = result;
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }

      v6 = result;
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_23B7EC7D8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_23B7EC7EC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1868E8, &qword_23B804160);
  sub_23B8026E0();
  sub_23B8022D0();
  sub_23B802460();
  sub_23B8020F0();
  sub_23B802140();
  sub_23B7EB5EC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B7EBC1C();
  return swift_getWitnessTable();
}

uint64_t DynamicPaymentButtonRepresentableSlotView.Coordinator.__deallocating_deinit()
{
  sub_23B7E7CAC(v0 + OBJC_IVAR____TtCV16_PassKit_SwiftUI41DynamicPaymentButtonRepresentableSlotView11Coordinator_parent);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DynamicPaymentButtonRepresentableSlotView.makeCoordinator()()
{
  v1 = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7E7C48(v0, v3);
  type metadata accessor for DynamicPaymentButtonRepresentableSlotView.Coordinator(0);
  v4 = swift_allocObject();
  sub_23B7ECB84(v3, v4 + OBJC_IVAR____TtCV16_PassKit_SwiftUI41DynamicPaymentButtonRepresentableSlotView11Coordinator_parent);
  return v4;
}

uint64_t sub_23B7ECB4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B7ECB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id DynamicPaymentButtonRepresentableSlotView.makeUIView(context:)()
{
  v1 = sub_23B8020C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3C0], v1);
  v6 = sub_23B8020B0();
  (*(v2 + 8))(v4, v1);
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 4);
  if (!v8)
  {
    v11 = *v0;
    v10 = *(v0 + 1);
    v19 = v0[2];
    v20 = v0[3];
    v21 = (v0 + *(v5 + 36));
    if (*v21)
    {
      v22 = v21[1];
      aBlock[4] = *v21;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23B7ECF98;
      aBlock[3] = &block_descriptor;
      v23 = _Block_copy(aBlock);
    }

    else
    {
      v23 = 0;
    }

    v12 = [objc_opt_self() dynamicPaymentButtonForType:*&v11 style:v10 size:v7 interfaceStyle:v23 action:{v19, v20}];
    _Block_release(v23);
    if (v12)
    {
      goto LABEL_6;
    }

    return [objc_allocWithZone(MEMORY[0x277D38B68]) initWithPaymentButtonType:*&v11 paymentButtonStyle:v10];
  }

  v9 = objc_opt_self();
  v11 = *v0;
  v10 = *(v0 + 1);
  v12 = [v9 dynamicPaymentButtonForPaymentRequest:v8 style:v10 size:*v0 type:v7 interfaceStyle:{v0[2], v0[3]}];
  if (!v12)
  {
    return [objc_allocWithZone(MEMORY[0x277D38B68]) initWithPaymentButtonType:*&v11 paymentButtonStyle:v10];
  }

LABEL_6:
  v13 = v12;
  LODWORD(v14) = 1148846080;
  [v13 setContentHuggingPriority:0 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [v13 setContentHuggingPriority:1 forAxis:v15];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1869B0, &qword_23B804230);
    sub_23B8022E0();
    [v17 addTarget:aBlock[0] action:sel_buttonTapped forControlEvents:64];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1869B0, &qword_23B804230);
    sub_23B8022E0();
    v24 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v25 = [v24 initWithTarget:aBlock[0] action:sel_buttonTapped];

    [v13 addGestureRecognizer_];
  }

  [v13 setUserInteractionEnabled_];

  return v13;
}

uint64_t sub_23B7ECF98(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DynamicPaymentButtonRepresentableSlotView.updateUIView(_:context:)()
{
  v1 = v0;
  v2 = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v0 + 32))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1869B0, &qword_23B804230);
    sub_23B8022E0();
    v6 = v9;
    sub_23B7E7C48(v1, v5);
    v7 = OBJC_IVAR____TtCV16_PassKit_SwiftUI41DynamicPaymentButtonRepresentableSlotView11Coordinator_parent;
    swift_beginAccess();
    sub_23B7ED0D8(v5, v6 + v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_23B7ED0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7ED174(uint64_t a1)
{
  v2 = v1;
  result = MEMORY[0x28223BE20](a1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(v1 + 32))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1869B0, &qword_23B804230);
    sub_23B8022E0();
    v6 = v9;
    sub_23B7E7C48(v2, v5);
    v7 = OBJC_IVAR____TtCV16_PassKit_SwiftUI41DynamicPaymentButtonRepresentableSlotView11Coordinator_parent;
    swift_beginAccess();
    sub_23B7ED0D8(v5, v6 + v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_23B7ED250@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7E7C48(v2, v5);
  type metadata accessor for DynamicPaymentButtonRepresentableSlotView.Coordinator(0);
  v6 = swift_allocObject();
  result = sub_23B7ECB84(v5, v6 + OBJC_IVAR____TtCV16_PassKit_SwiftUI41DynamicPaymentButtonRepresentableSlotView11Coordinator_parent);
  *a2 = v6;
  return result;
}

uint64_t sub_23B7ED2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7ED868(&qword_27E1869F8, &protocol conformance descriptor for DynamicPaymentButtonRepresentableSlotView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B7ED374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7ED868(&qword_27E1869F8, &protocol conformance descriptor for DynamicPaymentButtonRepresentableSlotView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B7ED3F4(uint64_t a1)
{
  sub_23B7ED868(&qword_27E1869F8, &protocol conformance descriptor for DynamicPaymentButtonRepresentableSlotView);
  sub_23B802280();
  __break(1u);
}

uint64_t sub_23B7ED44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_23B8020C0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_23B7ED518(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_23B8020C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B7ED5BC(uint64_t a1)
{
  type metadata accessor for PKPaymentButtonType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PKPaymentButtonStyle(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_23B7ED6A0(319);
        if (v4 <= 0x3F)
        {
          sub_23B8020C0();
          if (v5 <= 0x3F)
          {
            sub_23B7ED744(319);
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

void sub_23B7ED6A0(uint64_t a1)
{
  if (!qword_27E1869C8)
  {
    sub_23B7ED6F8();
    v1 = sub_23B8026E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1869C8);
    }
  }
}

unint64_t sub_23B7ED6F8()
{
  result = qword_27E1869D0;
  if (!qword_27E1869D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1869D0);
  }

  return result;
}

void sub_23B7ED744(uint64_t a1)
{
  if (!qword_27E1869D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1869E0, &qword_23B804350);
    v1 = sub_23B8026E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1869D8);
    }
  }
}

uint64_t sub_23B7ED7B0(uint64_t a1)
{
  result = type metadata accessor for DynamicPaymentButtonRepresentableSlotView(319);
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

uint64_t sub_23B7ED858(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B7ED868(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DynamicPaymentButtonRepresentableSlotView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B7ED8F8(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_23B7ED970@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for PaymentButtonView.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;
}

unint64_t sub_23B7ED9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B7ED9F0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B7ED9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186A00;
  if (!qword_27E186A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186A00);
  }

  return result;
}

uint64_t sub_23B7EDA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7ED9F0(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B7EDAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7ED9F0(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B7EDB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7ED9F0(a1, a2, a3);
  sub_23B802280();
  __break(1u);
}

id sub_23B7EDB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  [v5 signpostIntervalBeginRenderSimpleButtonEvent];
  v6 = [objc_allocWithZone(MEMORY[0x277D38B68]) initWithPaymentButtonType:a2 paymentButtonStyle:a3 disableCardArt:1];
  [v5 signpostIntervalEndRenderSimpleButtonEvent];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186A08, &unk_23B8044D0);
  sub_23B8022E0();
  [v6 addTarget:v8 action:sel_callback forControlEvents:0x2000];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  return v6;
}

uint64_t sub_23B7EDC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = objc_opt_self();
  v8 = sub_23B802570();
  v9 = [v7 localizedDeletableWalletStringFor_];

  sub_23B8025A0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186938, &qword_23B804188);
  v13 = sub_23B7E1E20(v10, v11, v12);
  sub_23B7EBA94(v13, v14, v15);
  sub_23B7EEA98();
  sub_23B802410();
}

uint64_t sub_23B7EDDAC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
  sub_23B802480();
  return v2;
}

uint64_t sub_23B7EDE70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23B8021A0();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 56);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    *a2 = v11;
  }

  else
  {

    sub_23B802680();
    v12 = sub_23B802390();
    sub_23B802070();

    sub_23B802190();
    swift_getAtKeyPath();
    sub_23B7E2D4C(v11, 0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23B7EDFCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a1;
  v15 = type metadata accessor for VerifyIdentityWithWalletButton(0, a7, a8, a4);
  v16 = a9 + v15[10];
  sub_23B802470();
  *v16 = v24;
  *(v16 + 8) = v25;
  v17 = a9 + v15[11];
  sub_23B802470();
  *v17 = v24;
  *(v17 + 8) = v25;
  v18 = v15[12];
  *(a9 + v18) = [objc_allocWithZone(MEMORY[0x277D37F00]) init];
  v19 = a9 + v15[14];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(a9 + v15[13]) = v14;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5 & 1;
  v20 = v15[9];
  v21 = sub_23B8026E0();
  return (*(*(v21 - 8) + 32))(a9 + v20, a6, v21);
}

uint64_t VerifyIdentityWithWalletButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_23B802660();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v36 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186A10, &unk_23B8044E0);
  v32 = *(a1 + 16);
  v9 = v32;
  sub_23B8026E0();
  sub_23B8022D0();
  v10 = sub_23B802460();
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v31 - v11;
  sub_23B8020F0();
  v12 = sub_23B802140();
  v38 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v31 - v15;
  v16 = *(a1 + 24);
  v43 = v9;
  v44 = v16;
  v45 = v2;
  v17 = sub_23B7EE994();
  v51 = v16;
  WitnessTable = swift_getWitnessTable();
  v49 = v17;
  v50 = WitnessTable;
  v19 = swift_getWitnessTable();
  sub_23B802450();
  v20 = v34;
  (*(v7 + 16))(v34, v2, a1);
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  *(v22 + 24) = v16;
  (*(v7 + 32))(v22 + v21, v20, a1);
  v48 = v19;
  v23 = swift_getWitnessTable();
  v24 = v39;
  sub_23B802640();
  v25 = v33;
  v26 = v31;
  sub_23B802400();

  (*(v40 + 8))(v24, v41);
  (*(v37 + 8))(v26, v10);
  v27 = sub_23B7EBC1C();
  v46 = v23;
  v47 = v27;
  swift_getWitnessTable();
  v28 = v35;
  sub_23B7E7EA8();
  v29 = *(v38 + 8);
  v29(v25, v12);
  sub_23B7E7EA8();
  return (v29)(v28, v12);
}

uint64_t sub_23B7EE61C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_23B8026E0();
  v24 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186A10, &unk_23B8044E0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v23 - v12);
  v14 = sub_23B8022D0();
  v25 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v27 = a2;
  v18 = type metadata accessor for VerifyIdentityWithWalletButton(0, a1, a2, v17);
  if (sub_23B7EDDAC(v18))
  {
    sub_23B7EEAFC(v18, v13);
    sub_23B7EE994();
    v28 = v27;
    swift_getWitnessTable();
    sub_23B7E7FB8(v13, v11);
    sub_23B7F06FC(v13);
  }

  else
  {
    v32 = v27;
    swift_getWitnessTable();
    sub_23B7E7EA8();
    sub_23B7E7EA8();
    sub_23B7EE994();
    sub_23B7E80B0(v8, v11, v5);
    v19 = *(v24 + 8);
    v19(v8, v5);
    v19(v10, v5);
  }

  v20 = sub_23B7EE994();
  v31 = v27;
  WitnessTable = swift_getWitnessTable();
  v29 = v20;
  v30 = WitnessTable;
  swift_getWitnessTable();
  sub_23B7E7EA8();
  return (*(v25 + 8))(v16, v14);
}

unint64_t sub_23B7EE994()
{
  result = qword_27E186A18[0];
  if (!qword_27E186A18[0])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186A10, &unk_23B8044E0);
    sub_23B7E1E20(v1, v2, v3);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186938, &qword_23B804188);
    sub_23B7EBA94(v4, v5, v6);
    sub_23B7EEA98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E186A18);
  }

  return result;
}

unint64_t sub_23B7EEA98()
{
  result = qword_27E186968;
  if (!qword_27E186968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186938, &qword_23B804188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186968);
  }

  return result;
}

void *sub_23B7EEAFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186B38, &qword_23B804668);
  v7 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v48 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186B40, &unk_23B804670);
  MEMORY[0x28223BE20](v56);
  v10 = (&v48 - v9);
  v12 = *v2;
  v11 = *(v2 + 8);
  if (*(v2 + 24))
  {
    v13 = *(v2 + 16);
    v52 = *(v2 + *(a1 + 52));
    v53 = v13;
    v49 = v12;

    sub_23B7EDE70(a1, &v58);
    v50 = v58;
    (*(v4 + 16))(&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    v14 = *(v4 + 80);
    v51 = v7;
    v15 = (v14 + 32) & ~v14;
    v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = *(a1 + 16);
    (*(v4 + 32))(v17 + v15, v6, a1);
    v18 = v49;
    *(v17 + v16) = v49;
    v19 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v19 = v11;
    v19[1] = v53;
    v20 = v18;

    v21 = sub_23B7E861C(a1);
    v23 = v54;
    sub_23B7EDC28(v21, v24, v22 & 1, v52, v50, sub_23B7F0904, v17);

    v25 = v51;
    v26 = v57;
    (*(v51 + 16))(v10, v23, v57);
    v27 = swift_storeEnumTagMultiPayload();
    v30 = sub_23B7E1E20(v27, v28, v29);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186938, &qword_23B804188);
    v34 = sub_23B7EBA94(v31, v32, v33);
    v35 = sub_23B7EEA98();
    v58 = &type metadata for IdentityButton;
    v59 = MEMORY[0x277D837D0];
    v60 = v31;
    v61 = MEMORY[0x277CE0BD8];
    v62 = v30;
    v63 = v34;
    v64 = v35;
    v65 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_23B8022C0();

    return (*(v25 + 8))(v23, v26);
  }

  else
  {
    v37 = *(v2 + *(a1 + 52));

    sub_23B7EDE70(a1, &v58);
    v38 = v58;
    *v10 = v37;
    v10[1] = v38;
    v10[2] = v12;
    v10[3] = v11;
    v39 = swift_storeEnumTagMultiPayload();
    v42 = sub_23B7E1E20(v39, v40, v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186938, &qword_23B804188);
    v46 = sub_23B7EBA94(v43, v44, v45);
    v47 = sub_23B7EEA98();
    v58 = &type metadata for IdentityButton;
    v59 = MEMORY[0x277D837D0];
    v60 = v43;
    v61 = MEMORY[0x277CE0BD8];
    v62 = v42;
    v63 = v46;
    v64 = v47;
    v65 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    return sub_23B8022C0();
  }
}

uint64_t sub_23B7EEF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_23B802630();
  v3[3] = sub_23B802620();
  v6 = swift_task_alloc();
  v3[4] = v6;
  v8 = type metadata accessor for VerifyIdentityWithWalletButton(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_23B7EF068;

  return sub_23B7EF500(v8);
}

uint64_t sub_23B7EF068()
{

  v1 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7EF1A4, v1, v0);
}

uint64_t sub_23B7EF1A4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_23B7EF204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for VerifyIdentityWithWalletButton(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  sub_23B7EF394(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24));
  v11 = v6[9];
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_23B7E2D4C(*(v10 + v6[14]), *(v10 + v6[14] + 8));

  return MEMORY[0x2821FE8E8](v4, v9 + v8, v7 | 7);
}

uint64_t sub_23B7EF394(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t sub_23B7EF3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for VerifyIdentityWithWalletButton(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_23B7E5AAC;

  return sub_23B7EEF98(v4 + v9, v6, v7);
}

uint64_t sub_23B7EF500(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = *(a1 + 16);
  v3 = sub_23B8026E0();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  sub_23B802630();
  v2[24] = sub_23B802620();
  v5 = sub_23B802610();
  v2[25] = v5;
  v2[26] = v4;

  return MEMORY[0x2822009F8](sub_23B7EF5FC, v5, v4);
}

uint64_t sub_23B7EF5FC()
{
  v1 = v0[23];
  v2 = v0[20];
  (*(v0[22] + 16))(v1, v0[19] + *(v0[18] + 36), v0[21]);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[23];
    v4 = v0[21];
    v5 = v0[22];

    (*(v5 + 8))(v3, v4);
    v6 = 1;
LABEL_10:
    sub_23B7EDE0C(v6, v0[18]);

    v14 = v0[1];

    return v14();
  }

  v7 = v0[19];
  (*(v0[22] + 8))(v0[23], v0[21]);
  if (*(v7 + 24) != 1)
  {

    v6 = 1;
    goto LABEL_10;
  }

  v8 = *v0[19];
  v0[27] = v8;
  v9 = v8;
  v10 = [v9 descriptor];
  v0[28] = v10;
  if (!v10)
  {

    v6 = 0;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = *(v0[19] + *(v0[18] + 48));
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_23B7EF884;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186B30, &unk_23B804658);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B7EFBAC;
  v0[13] = &block_descriptor_0;
  v0[14] = v13;
  [v12 checkCanRequestDocument:v11 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23B7EF884()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_23B7EF98C, v2, v1);
}

uint64_t sub_23B7EF98C()
{
  v1 = *(v0 + 216);
  swift_unknownObjectRelease();

  sub_23B7EDE0C(*(v0 + 232), *(v0 + 144));

  v2 = *(v0 + 8);

  return v2();
}

void sub_23B7EFA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_opt_self() passbookHasBeenDeleted];
  v13 = type metadata accessor for VerifyIdentityWithWalletButton(0, a5, a6, v12);
  if (v11)
  {
    sub_23B7E7F54(1, v13);
  }

  else
  {
    sub_23B7EFAB4(a2, a3, a4, v13);
  }
}

void sub_23B7EFAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + *(a4 + 48));
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_23B7F0A0C;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23B7EFD08;
  v11[3] = &block_descriptor_19;
  v10 = _Block_copy(v11);

  [v8 requestDocument:a1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_23B7EFBAC(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

void sub_23B7EFC08(void *a1, id a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v10 = a1;
    a3(a1, 0);
    v5 = v10;
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D38640] code:0 userInfo:0];
      a2 = 0;
      v6 = v7;
    }

    v8 = a2;
    v9 = v6;
    a3(v6, 1);

    v5 = v6;
  }
}

void sub_23B7EFD08(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_23B7EFD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VerifyIdentityWithWalletButton.Configuration(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_23B8026E0();
    if (v5 <= 0x3F)
    {
      sub_23B7F03B4(319, &qword_27E1866C8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v6 <= 0x3F)
      {
        sub_23B7F0368();
        if (v7 <= 0x3F)
        {
          sub_23B7F03B4(319, qword_27E186AA8, &type metadata for VerifyIdentityWithWalletButtonStyle, MEMORY[0x277CDF468]);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B7EFEC0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v9 + 7;
  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v11 = ((((((((((v10 + ((v8 + 25) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v12 = (a2 - v7 + 255) >> 8;
  if (v11 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *&a1[v11];
      if (!v16)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v18 = (v16 - 1) << (8 * v11);
    if (v11 <= 3)
    {
      v19 = *a1;
    }

    else
    {
      v18 = 0;
      v19 = *a1;
    }

    return v7 + (v19 | v18) + 1;
  }

  if (v15)
  {
    v16 = a1[v11];
    if (a1[v11])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v20 = &a1[v8 + 25] & ~v8;
  if (v6 < 0x7FFFFFFF)
  {
    v22 = *((((((v10 + v20) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = (*(v4 + 48))(v20);
    if (v21 >= 2)
    {
      return v21 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23B7F0094(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((((((((v12 + 7 + ((v11 + 25) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      v19 = &a1[v11 + 25] & ~v11;
      if (v9 < 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = a2 - 1;
        }

        *((((((v12 + 7 + v19) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) = v23;
      }

      else if (v9 >= a2)
      {
        v24 = *(v7 + 56);
        v25 = a2 + 1;
        v26 = &a1[v11 + 25] & ~v11;

        v24(v26, v25);
      }

      else
      {
        if (v12 <= 3)
        {
          v20 = ~(-1 << (8 * v12));
        }

        else
        {
          v20 = -1;
        }

        if (v12)
        {
          v21 = v20 & (~v9 + a2);
          if (v12 <= 3)
          {
            v22 = v12;
          }

          else
          {
            v22 = 4;
          }

          bzero((&a1[v11 + 25] & ~v11), v12);
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              *v19 = v21;
              *(v19 + 2) = BYTE2(v21);
            }

            else
            {
              *v19 = v21;
            }
          }

          else if (v22 == 1)
          {
            *v19 = v21;
          }

          else
          {
            *v19 = v21;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

unint64_t sub_23B7F0368()
{
  result = qword_27E186AA0;
  if (!qword_27E186AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E186AA0);
  }

  return result;
}

void sub_23B7F03B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23B7F0404(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186A10, &unk_23B8044E0);
  sub_23B8026E0();
  sub_23B8022D0();
  sub_23B802460();
  sub_23B8020F0();
  sub_23B802140();
  sub_23B7EE994();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B7EBC1C();
  return swift_getWitnessTable();
}

uint64_t sub_23B7F0544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23B7F05A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_23B7F05E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B7F0654(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23B7F06FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186A10, &unk_23B8044E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7F0764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for VerifyIdentityWithWalletButton(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  sub_23B7EF394(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24));
  v11 = v6[9];
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  v13 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_23B7E2D4C(*(v10 + v6[14]), *(v10 + v6[14] + 8));

  return MEMORY[0x2821FE8E8](v4, ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v7 | 7);
}

void sub_23B7F0904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for VerifyIdentityWithWalletButton(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + v9);
  v11 = (v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_23B7EFA14(v4 + v8, v10, v12, v13, v5, v6);
}

uint64_t sub_23B7F09D4(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23B7F0AB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddPassButtonView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B7F0B34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23B7F0B7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_23B7F0BD0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D38B08]) initWithAddPassButtonStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186B58, &unk_23B8047C0);
  sub_23B8022E0();
  [v1 addTarget:v3 action:sel_callback forControlEvents:0x2000];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

void *sub_23B7F0CF0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for AddPassButtonView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV16_PassKit_SwiftUI17AddPassButtonView11Coordinator_action];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

unint64_t sub_23B7F0D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B7F0D8C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B7F0D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186B50;
  if (!qword_27E186B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186B50);
  }

  return result;
}

uint64_t sub_23B7F0DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7F0D8C(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B7F0E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7F0D8C(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B7F0EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7F0D8C(a1, a2, a3);
  sub_23B802280();
  __break(1u);
}

unint64_t sub_23B7F0ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186B60;
  if (!qword_27E186B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186B60);
  }

  return result;
}

uint64_t sub_23B7F0F50()
{
  v1 = *v0;
  sub_23B8027C0();
  MEMORY[0x23EEAA9E0](v1);
  return sub_23B8027E0();
}

uint64_t sub_23B7F0FC4(uint64_t a1)
{
  v2 = *v1;
  sub_23B8027C0();
  MEMORY[0x23EEAA9E0](v2);
  return sub_23B8027E0();
}

uint64_t View.addPassToWalletButtonStyle(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23B8023D0();
}

uint64_t sub_23B7F107C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7F14B8(a1, a2, a3);

  return sub_23B8021C0();
}

uint64_t sub_23B7F10C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7F14B8(a2, a3, a4);
  result = sub_23B8021C0();
  *a1 = v6;
  return result;
}

uint64_t sub_23B7F1114@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23B7F14B8(a2, a3, a4);
  result = sub_23B8021C0();
  *a1 = v6;
  return result;
}

uint64_t sub_23B7F1218(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186B68, &unk_23B804840);
  sub_23B802140();
  sub_23B7F1290();
  return swift_getWitnessTable();
}

unint64_t sub_23B7F1290()
{
  result = qword_27E186B70;
  if (!qword_27E186B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186B68, &unk_23B804840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186B70);
  }

  return result;
}

uint64_t sub_23B7F12F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B7F138C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B7F1464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186B78;
  if (!qword_27E186B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186B78);
  }

  return result;
}

unint64_t sub_23B7F14B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186B80;
  if (!qword_27E186B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186B80);
  }

  return result;
}

id sub_23B7F1530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onMerchantSessionRequested];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationCompletion];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentMethodChange] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onShippingContactChange] = v6;
  *&v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onShippingChange] = v6;
  *&v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onCouponCodeChange] = v6;
  *&v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_activeWindow] = 0;
  *&v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_underlyingCoordinator] = 0;
  *&v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_request] = a1;
  v7 = &v3[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange];
  *v7 = a2;
  *(v7 + 1) = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PaymentAuthorizationCoordinator();
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_23B7F15F0()
{
  v1 = OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_underlyingCoordinator;
  if (!*(v0 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_underlyingCoordinator))
  {
    if (*(v0 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_activeWindow))
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D38B60]) initWithPaymentRequest_];
      v3 = *(v0 + v1);
      *(v0 + v1) = v2;
      v4 = v2;

      if (v4)
      {
        [v4 setDelegate_];
      }

      v5 = *(v0 + v1);
      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9[4] = sub_23B7F6848;
        v9[5] = v6;
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 1107296256;
        v9[2] = sub_23B7F18A0;
        v9[3] = &block_descriptor_1;
        v7 = _Block_copy(v9);
        v8 = v5;

        [v8 presentWithCompletion_];
        _Block_release(v7);
      }
    }

    else
    {

      sub_23B7F1780();
    }
  }
}

void sub_23B7F1780()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange);
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = 1;
  v2(v8);
  v3 = *(v0 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationCompletion);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationCompletion + 8);

    v3(v5);
    sub_23B7E3200(v3, v4);
  }

  v6 = OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_underlyingCoordinator;
  v7 = *(v1 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_underlyingCoordinator);
  if (v7)
  {
    [v7 dismissWithCompletion_];
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

void sub_23B7F1844(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_23B7F1780();
    }
  }
}

uint64_t sub_23B7F18A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_23B7F18F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_request);
  v2 = [v1 supportedNetworks];
  type metadata accessor for PKPaymentNetwork(0);
  v3 = sub_23B802600();

  v4 = *(v3 + 16);

  if (!v4 && ![v1 merchantCapabilities])
  {
    return [objc_opt_self() canMakePayments];
  }

  v5 = [v1 supportedNetworks];
  if (!v5)
  {
    sub_23B802600();
    v5 = sub_23B8025F0();
  }

  v6 = [objc_opt_self() canMakePaymentsUsingNetworks:v5 capabilities:{objc_msgSend(v1, sel_merchantCapabilities)}];

  return v6;
}

id sub_23B7F1A58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentAuthorizationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B7F1B88(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_23B7F1BA8, 0, 0);
}

uint64_t sub_23B7F1BA8()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentMethodChange);
  v0[7] = v1;
  v2 = *(v1 + 16);
  v0[8] = v2;
  if (v2)
  {
    v0[2] = MEMORY[0x277D84F90];
    v0[9] = 0;
    v3 = *(v1 + 16);

    if (v3)
    {
      v5 = v0[5];
      v0[10] = *(result + 40);
      v6 = *(result + 32);
      v0[3] = v5;

      v12 = (v6 + *v6);
      v7 = swift_task_alloc();
      v0[11] = v7;
      *v7 = v0;
      v7[1] = sub_23B7F1D94;

      return (v12)(v0 + 4, v0 + 3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277D380D0]);
    sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
    v9 = sub_23B8025F0();
    v10 = [v8 initWithErrors:0 paymentSummaryItems:v9];

    v11 = v0[1];

    return v11(v10);
  }

  return result;
}

uint64_t sub_23B7F1D94()
{
  v1 = *v0;

  *(v1 + 96) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23B7F1ECC, 0, 0);
}

void sub_23B7F1ECC()
{
  v1 = [*(v0 + 96) errors];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C50, &qword_23B8049C8);
  v3 = sub_23B802600();

  v4 = *(v3 + 16);

  if (v4)
  {
LABEL_5:

    v7 = *(v0 + 96);
LABEL_6:
    v8 = *(v0 + 8);

    v8(v7);
    return;
  }

  v5 = [*(v0 + 96) status];
  v6 = *(v0 + 96);
  if (v5)
  {

    goto LABEL_5;
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 72) + 1;
  v11 = [*(v0 + 96) paymentSummaryItems];

  sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
  v12 = sub_23B802600();

  sub_23B7F21CC(v12, sub_23B7F5C24);
  if (v10 == v9)
  {

    v13 = objc_allocWithZone(MEMORY[0x277D380D0]);
    v14 = sub_23B8025F0();

    v15 = [v13 initWithErrors:0 paymentSummaryItems:v14];

    v7 = v15;
    goto LABEL_6;
  }

  v16 = *(v0 + 72) + 1;
  *(v0 + 72) = v16;
  v17 = *(v0 + 56);
  if (v16 >= *(v17 + 16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v18 = *(v0 + 40);
  v19 = v17 + 16 * v16;
  *(v0 + 80) = *(v19 + 40);
  v20 = *(v19 + 32);
  *(v0 + 24) = v18;

  v22 = (v20 + *v20);
  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_23B7F1D94;

  v22(v0 + 32, v0 + 24);
}

uint64_t sub_23B7F21CC(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_23B802760();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_23B802760();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23B7F5A7C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_23B7F22C4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23B7FAC18(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1869E0, &qword_23B804350);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23B7F23C8(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_23B7F23E8, 0, 0);
}

uint64_t sub_23B7F23E8()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onShippingContactChange);
  v0[8] = v1;
  v2 = *(v1 + 16);
  v0[9] = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v0[2] = MEMORY[0x277D84F90];
    v0[3] = v3;
    v0[10] = 0;
    v4 = *(v1 + 16);

    if (v4)
    {
      v6 = v0[6];
      v0[11] = *(result + 40);
      v7 = *(result + 32);
      v0[4] = v6;

      v14 = (v7 + *v7);
      v8 = swift_task_alloc();
      v0[12] = v8;
      *v8 = v0;
      v8[1] = sub_23B7F2608;

      return (v14)(v0 + 5, v0 + 4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x277D380D8]);
    sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
    v10 = sub_23B8025F0();
    sub_23B7F5A34(0, &qword_27E186C60, 0x277D382B8);
    v11 = sub_23B8025F0();
    v12 = [v9 initWithErrors:0 paymentSummaryItems:v10 shippingMethods:v11];

    v13 = v0[1];

    return v13(v12);
  }

  return result;
}

uint64_t sub_23B7F2608()
{
  v1 = *v0;

  *(v1 + 104) = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_23B7F2740, 0, 0);
}

void sub_23B7F2740()
{
  v1 = [*(v0 + 104) errors];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C50, &qword_23B8049C8);
  v3 = sub_23B802600();

  v4 = *(v3 + 16);

  if (v4)
  {
LABEL_5:

    v7 = *(v0 + 104);
LABEL_6:
    v8 = *(v0 + 8);

    v8(v7);
    return;
  }

  v5 = [*(v0 + 104) status];
  v6 = *(v0 + 104);
  if (v5)
  {

    goto LABEL_5;
  }

  v9 = *(v0 + 72);
  v10 = *(v0 + 80) + 1;
  v11 = [*(v0 + 104) paymentSummaryItems];

  sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
  v12 = sub_23B802600();

  sub_23B7F21CC(v12, sub_23B7F5C24);
  v13 = [v6 shippingMethods];
  sub_23B7F5A34(0, &qword_27E186C60, 0x277D382B8);
  v14 = sub_23B802600();

  sub_23B7F21CC(v14, sub_23B7F5DC4);
  if (v10 == v9)
  {

    v15 = objc_allocWithZone(MEMORY[0x277D380D8]);
    v16 = sub_23B8025F0();

    v17 = sub_23B8025F0();

    v18 = [v15 initWithErrors:0 paymentSummaryItems:v16 shippingMethods:v17];

    v7 = v18;
    goto LABEL_6;
  }

  v19 = *(v0 + 80) + 1;
  *(v0 + 80) = v19;
  v20 = *(v0 + 64);
  if (v19 >= *(v20 + 16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v21 = *(v0 + 48);
  v22 = v20 + 16 * v19;
  *(v0 + 88) = *(v22 + 40);
  v23 = *(v22 + 32);
  *(v0 + 32) = v21;

  v25 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v0 + 96) = v24;
  *v24 = v0;
  v24[1] = sub_23B7F2608;

  v25(v0 + 40, v0 + 32);
}

uint64_t sub_23B7F2AD8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_23B7F2AF8, 0, 0);
}

uint64_t sub_23B7F2AF8()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onShippingChange);
  v0[7] = v1;
  v2 = *(v1 + 16);
  v0[8] = v2;
  if (v2)
  {
    v0[2] = MEMORY[0x277D84F90];
    v0[9] = 0;
    v3 = *(v1 + 16);

    if (v3)
    {
      v5 = v0[5];
      v0[10] = *(result + 40);
      v6 = *(result + 32);
      v0[3] = v5;

      v12 = (v6 + *v6);
      v7 = swift_task_alloc();
      v0[11] = v7;
      *v7 = v0;
      v7[1] = sub_23B7F2CE0;

      return (v12)(v0 + 4, v0 + 3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277D380E0]);
    sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
    v9 = sub_23B8025F0();
    v10 = [v8 initWithPaymentSummaryItems_];

    v11 = v0[1];

    return v11(v10);
  }

  return result;
}

uint64_t sub_23B7F2CE0()
{
  v1 = *v0;

  *(v1 + 96) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23B7F2E18, 0, 0);
}

void sub_23B7F2E18()
{
  v1 = [*(v0 + 96) status];
  v2 = *(v0 + 96);
  if (v1)
  {

    v3 = *(v0 + 96);
LABEL_5:
    v11 = *(v0 + 8);

    v11(v3);
    return;
  }

  v4 = *(v0 + 64);
  v5 = *(v0 + 72) + 1;
  v6 = [*(v0 + 96) paymentSummaryItems];

  sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
  v7 = sub_23B802600();

  sub_23B7F21CC(v7, sub_23B7F5C24);
  if (v5 == v4)
  {

    v8 = objc_allocWithZone(MEMORY[0x277D380E0]);
    v9 = sub_23B8025F0();

    v10 = [v8 initWithPaymentSummaryItems_];

    v3 = v10;
    goto LABEL_5;
  }

  *(v0 + 72) = v5;
  v12 = *(v0 + 56);
  if (v5 >= *(v12 + 16))
  {
    __break(1u);
  }

  else
  {
    v13 = *(v0 + 40);
    v14 = v12 + 16 * v5;
    *(v0 + 80) = *(v14 + 40);
    v15 = *(v14 + 32);
    *(v0 + 24) = v13;

    v17 = (v15 + *v15);
    v16 = swift_task_alloc();
    *(v0 + 88) = v16;
    *v16 = v0;
    v16[1] = sub_23B7F2CE0;

    v17(v0 + 32, v0 + 24);
  }
}

uint64_t sub_23B7F30A8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_23B7F30CC, 0, 0);
}

uint64_t sub_23B7F30CC()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onCouponCodeChange);
  v0[10] = v1;
  v2 = *(v1 + 16);
  v0[11] = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v0[4] = MEMORY[0x277D84F90];
    v0[5] = v3;
    v0[12] = 0;
    v4 = *(v1 + 16);

    if (v4)
    {
      v7 = v0[7];
      v6 = v0[8];
      v0[13] = *(result + 40);
      v8 = *(result + 32);
      v0[2] = v7;
      v0[3] = v6;

      v15 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[14] = v9;
      *v9 = v0;
      v9[1] = sub_23B7F32F0;

      return (v15)(v0 + 6, v0 + 2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x277D380C0]);
    sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
    v11 = sub_23B8025F0();
    sub_23B7F5A34(0, &qword_27E186C60, 0x277D382B8);
    v12 = sub_23B8025F0();
    v13 = [v10 initWithErrors:0 paymentSummaryItems:v11 shippingMethods:v12];

    v14 = v0[1];

    return v14(v13);
  }

  return result;
}

uint64_t sub_23B7F32F0()
{
  v1 = *v0;

  *(v1 + 120) = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B7F3428, 0, 0);
}

void sub_23B7F3428()
{
  v1 = [*(v0 + 120) errors];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C50, &qword_23B8049C8);
  v3 = sub_23B802600();

  v4 = *(v3 + 16);

  if (v4)
  {
LABEL_5:

    v7 = *(v0 + 120);
LABEL_6:
    v8 = *(v0 + 8);

    v8(v7);
    return;
  }

  v5 = [*(v0 + 120) status];
  v6 = *(v0 + 120);
  if (v5)
  {

    goto LABEL_5;
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 96) + 1;
  v11 = [*(v0 + 120) paymentSummaryItems];

  sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
  v12 = sub_23B802600();

  sub_23B7F21CC(v12, sub_23B7F5C24);
  v13 = [v6 shippingMethods];

  sub_23B7F5A34(0, &qword_27E186C60, 0x277D382B8);
  v14 = sub_23B802600();

  sub_23B7F21CC(v14, sub_23B7F5DC4);
  if (v10 == v9)
  {

    v15 = objc_allocWithZone(MEMORY[0x277D380C0]);
    v16 = sub_23B8025F0();

    v17 = sub_23B8025F0();

    v18 = [v15 initWithErrors:0 paymentSummaryItems:v16 shippingMethods:v17];

    v7 = v18;
    goto LABEL_6;
  }

  v19 = *(v0 + 96) + 1;
  *(v0 + 96) = v19;
  v20 = *(v0 + 80);
  if (v19 >= *(v20 + 16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = v20 + 16 * v19;
  *(v0 + 104) = *(v23 + 40);
  v24 = *(v23 + 32);
  *(v0 + 16) = v22;
  *(v0 + 24) = v21;

  v26 = (v24 + *v24);
  v25 = swift_task_alloc();
  *(v0 + 112) = v25;
  *v25 = v0;
  v25[1] = sub_23B7F32F0;

  v26(v0 + 48, v0 + 16);
}

uint64_t sub_23B7F3AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23B802630();
  v3[5] = sub_23B802620();
  v5 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F3B80, v5, v4);
}

uint64_t sub_23B7F3B80(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v5 = v2[2];
  v4 = v2[3];

  v2[6] = _Block_copy(v4);
  v6 = v5;
  v7 = v3;
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_23B7F3C50;

  return sub_23B7F6388();
}

uint64_t sub_23B7F3C50(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_23B7F3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = sub_23B802630();
  v4[6] = sub_23B802620();
  v6 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F3FE4, v6, v5);
}

uint64_t sub_23B7F3FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];

  v2[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v2[8] = sub_23B802620();
  v8 = swift_task_alloc();
  v2[9] = v8;
  *v8 = v2;
  v8[1] = sub_23B7F40B0;
  v9 = v2[2];

  return sub_23B7F1B88(v9);
}

uint64_t sub_23B7F40B0(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F41F4, v3, v2);
}

uint64_t sub_23B7F41F4(uint64_t a1, uint64_t a2)
{
  v3 = v2[10];
  v4 = v2[7];
  v5 = v2[4];
  v6 = v2[2];

  (v4)[2](v4, v3);
  _Block_release(v4);

  v7 = v2[1];

  return v7();
}

uint64_t sub_23B7F4420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = sub_23B802630();
  v4[6] = sub_23B802620();
  v6 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F44C0, v6, v5);
}

uint64_t sub_23B7F44C0(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];

  v2[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v2[8] = sub_23B802620();
  v8 = swift_task_alloc();
  v2[9] = v8;
  *v8 = v2;
  v8[1] = sub_23B7F458C;
  v9 = v2[2];

  return sub_23B7F23C8(v9);
}

uint64_t sub_23B7F458C(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F68A8, v3, v2);
}

uint64_t sub_23B7F4860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = sub_23B802630();
  v4[6] = sub_23B802620();
  v6 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F4900, v6, v5);
}

uint64_t sub_23B7F4900(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];

  v2[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v2[8] = sub_23B802620();
  v8 = swift_task_alloc();
  v2[9] = v8;
  *v8 = v2;
  v8[1] = sub_23B7F458C;
  v9 = v2[2];

  return sub_23B7F2AD8(v9);
}

uint64_t sub_23B7F4B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = sub_23B802630();
  v4[6] = sub_23B802620();
  v6 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F4BFC, v6, v5);
}

uint64_t sub_23B7F4BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];

  v2[7] = _Block_copy(v3);
  v5 = sub_23B8025A0();
  v7 = v6;
  v2[8] = v6;
  v8 = v4;
  v2[9] = sub_23B802620();
  v9 = swift_task_alloc();
  v2[10] = v9;
  *v9 = v2;
  v9[1] = sub_23B7F4CD8;

  return sub_23B7F30A8(v5, v7);
}

uint64_t sub_23B7F4CD8(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F4E40, v3, v2);
}

uint64_t sub_23B7F4E40(uint64_t a1, uint64_t a2)
{
  v3 = v2[11];
  v4 = v2[7];
  v5 = v2[4];

  (v4)[2](v4, v3);
  _Block_release(v4);

  v6 = v2[1];

  return v6();
}

uint64_t sub_23B7F4EEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B7F689C;

  return sub_23B7F4B5C(v2, v3, v5, v4);
}

uint64_t sub_23B7F4FAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23B7F689C;

  return v6();
}

uint64_t sub_23B7F5094()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B7F689C;

  return sub_23B7F4FAC(v2, v3, v4);
}

uint64_t sub_23B7F5154(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23B7E5AAC;

  return v7();
}

uint64_t sub_23B7F523C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B7F689C;

  return sub_23B7F5154(a1, v4, v5, v6);
}

uint64_t sub_23B7F5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23B7F55C4(a3, v23 - v10);
  v12 = sub_23B802660();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23B7F5634(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23B802650();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23B802610();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23B8025B0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_23B7F5634(a3);

    return v21;
  }

LABEL_8:
  sub_23B7F5634(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_23B7F55C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7F5634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7F569C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B7F5794;

  return v6(a1);
}

uint64_t sub_23B7F5794()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B7F588C(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_23B7F58C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B7F689C;

  return sub_23B7F569C(a1, v4);
}

uint64_t sub_23B7F597C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B7E5AAC;

  return sub_23B7F569C(a1, v4);
}

uint64_t sub_23B7F5A34(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23B7F5A7C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23B802760();
LABEL_9:
  result = sub_23B802740();
  *v2 = result;
  return result;
}

void (*sub_23B7F5B1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEAA940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23B7F68A4;
  }

  __break(1u);
  return result;
}

void (*sub_23B7F5B9C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEAA940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23B7F5C1C;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B7F5C24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23B802760();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23B802760();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23B7F5F64(qword_27E186C80, &qword_27E186C78, &qword_23B8049D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C78, &qword_23B8049D8);
            v9 = sub_23B7F5B1C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23B7F5A34(0, &qword_27E186C58, 0x277D38130);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B7F5DC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23B802760();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23B802760();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23B7F5F64(&qword_27E186C70, &qword_27E186C68, &qword_23B8049D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C68, &qword_23B8049D0);
            v9 = sub_23B7F5B9C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23B7F5A34(0, &qword_27E186C60, 0x277D382B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B7F5F64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23B7F5FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B7F689C;

  return sub_23B7F4860(v2, v3, v5, v4);
}

uint64_t sub_23B7F6078()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B7F689C;

  return sub_23B7F4420(v2, v3, v5, v4);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B7F6188()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B7E5AAC;

  return sub_23B7F3F44(v2, v3, v5, v4);
}

uint64_t sub_23B7F6248()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B7F6290()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B7F689C;

  return sub_23B7F3AE4(v2, v3, v4);
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B7F6388()
{
  v1[2] = v0;
  v1[3] = sub_23B802630();
  v1[4] = sub_23B802620();

  return MEMORY[0x2822009F8](sub_23B7F6404, 0, 0);
}

uint64_t sub_23B7F6404()
{
  v1 = v0[2] + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onMerchantSessionRequested;
  v2 = *v1;
  v0[5] = *v1;
  if (v2)
  {
    v0[6] = *(v1 + 8);

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_23B7F6594;

    return v7();
  }

  else
  {
    v0[9] = [objc_allocWithZone(MEMORY[0x277D380C8]) initWithStatus:0 merchantSession:0];
    v6 = sub_23B802610();

    return MEMORY[0x2822009F8](sub_23B7F671C, v6, v5);
  }
}

uint64_t sub_23B7F6594(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_23B7F6694, 0, 0);
}

uint64_t sub_23B7F6694()
{
  sub_23B7E3200(v0[5], v0[6]);
  v0[9] = v0[8];
  v2 = sub_23B802610();

  return MEMORY[0x2822009F8](sub_23B7F671C, v2, v1);
}

uint64_t sub_23B7F671C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);
  v4 = *(v2 + 72);

  return v3(v4);
}

uint64_t sub_23B7F6780()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_23B7F67CC(void *result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_23B7F6810()
{
  MEMORY[0x23EEAB1E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_23B7F68AC(uint64_t a1, void x1_0, void a3, uint64_t a4)
{
  type metadata accessor for AsyncShareablePassConfiguration.Result(255, *(a1 + 16), *(a1 + 24), a4);
  sub_23B8024B0();
  return sub_23B802480();
}

uint64_t sub_23B7F6910(uint64_t *a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  sub_23B7F777C(v6, v7);
  type metadata accessor for AsyncShareablePassConfiguration.Result(255, *(a2 + 16), *(a2 + 24), v4);
  sub_23B8024B0();

  sub_23B802490();
  sub_23B7F6DC8(v6, v7);
}

void *AsyncShareablePassConfiguration.init(metadata:action:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_23B802470();
  *(a7 + 16) = v16;
  *(a7 + 24) = v17;
  type metadata accessor for AsyncShareablePassConfiguration.Result(0, a5, a6, v14);
  result = sub_23B802470();
  *(a7 + 32) = v16;
  *(a7 + 40) = v17;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 48) = v18;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  return result;
}

uint64_t AsyncShareablePassConfiguration.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v4 = *(a1 + 16);
  v28[0] = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B802140();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = v2[1];
  v15 = v2[3];
  v37 = v2[2];
  v38 = v15;
  v16 = v2[1];
  v35 = *v2;
  v36 = v16;
  v17 = v2[3];
  v33[2] = v37;
  v33[3] = v17;
  v39 = *(v2 + 8);
  v18 = *(&v38 + 1);
  v34 = *(v2 + 8);
  v33[0] = v35;
  v33[1] = v14;
  sub_23B7F68AC(a1, v19, v20, v21);
  v29 = v31;
  v30 = v32;
  v18(&v29);
  sub_23B7F6DC8(v29, v30);
  v22 = swift_allocObject();
  v23 = *(a1 + 24);
  *(v22 + 16) = v4;
  *(v22 + 24) = v23;
  v24 = v38;
  *(v22 + 64) = v37;
  *(v22 + 80) = v24;
  *(v22 + 96) = v39;
  v25 = v36;
  *(v22 + 32) = v35;
  *(v22 + 48) = v25;
  (*(*(a1 - 8) + 16))(v33, &v35, a1);
  sub_23B802430();

  (*(v28[0] + 8))(v6, v4);
  v28[2] = v23;
  v28[3] = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  sub_23B7E7EA8();
  v26 = *(v8 + 8);
  v26(v11, v7);
  sub_23B7E7EA8();
  return (v26)(v13, v7);
}

void sub_23B7F6DC8(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

void sub_23B7F6E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[1];
  v7 = v4[3];
  v41 = v4[2];
  v42 = v7;
  v8 = v4[1];
  v39 = *v4;
  v40 = v8;
  v9 = v4[3];
  v36 = v41;
  v37 = v9;
  v43 = *(v4 + 8);
  v38 = *(v4 + 8);
  v34 = v39;
  v35 = v6;
  sub_23B7F68AC(a1, a2, a3, a4);
  if (BYTE8(v25) != 2 || v25)
  {
    sub_23B7F6DC8(v25, BYTE8(v25));
  }

  else
  {
    v10 = v40;
    v11 = *(&v40 + 1);
    v12 = v40 & 1;
    LOBYTE(v34) = v40 & 1;
    *(&v34 + 1) = *(&v40 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
    sub_23B802480();
    aBlock = v39;
    v33[0] = *(&v40 + 1);
    *(v33 + 3) = DWORD1(v40);
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v13 = *(a1 - 8);
    v14 = *(v13 + 16);
    v14(&v34, &v39, a1);
    LOBYTE(v34) = v12;
    *(&v34 + 1) = v11;
    v44 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1867B8, &qword_23B803F50);
    sub_23B802490();
    v34 = aBlock;
    LOBYTE(v35) = v10;
    *(&v35 + 1) = v33[0];
    DWORD1(v35) = *(v33 + 3);
    *(&v35 + 1) = v11;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    (*(v13 + 8))(&v34, a1);
    v15 = objc_opt_self();
    sub_23B7F76B0();
    v16 = sub_23B8025F0();
    v17 = sub_23B802570();
    v18 = *(&v39 + 1);
    v19 = swift_allocObject();
    v20 = v41;
    v21 = v42;
    v22 = v39;
    *(v19 + 48) = v40;
    *(v19 + 64) = v20;
    *(v19 + 80) = v21;
    v23 = *(a1 + 16);
    *(v19 + 96) = v43;
    *(v19 + 16) = v23;
    *(v19 + 32) = v22;
    v31 = sub_23B7F7758;
    v32 = v19;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v29 = sub_23B7EFD08;
    v30 = &block_descriptor_2;
    v24 = _Block_copy(&aBlock);
    v14(&v25, &v39, a1);

    [v15 configurationForPassMetadata:v16 provisioningPolicyIdentifier:v17 primaryAction:v18 completion:v24];
    _Block_release(v24);
  }
}

uint64_t sub_23B7F7178(void *a1, void *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a3[3];
    v28 = a3[2];
    v29 = v8;
    v30 = *(a3 + 8);
    v9 = a3[1];
    v26 = *a3;
    v27 = v9;
    v24 = a1;
    v25 = 0;
    v10 = a1;
    v12 = type metadata accessor for AsyncShareablePassConfiguration(0, a4, a5, v11);
    v13 = *(v12 - 8);
    (*(v13 + 16))(&v31, a3, v12);
LABEL_3:
    sub_23B7F6910(&v24, v12);
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v31 = v26;
    v32 = v27;
    return (*(v13 + 8))(&v31, v12);
  }

  if (!a2)
  {
    v21 = a3[3];
    v28 = a3[2];
    v29 = v21;
    v30 = *(a3 + 8);
    v22 = a3[1];
    v26 = *a3;
    v27 = v22;
    v12 = type metadata accessor for AsyncShareablePassConfiguration(0, a4, a5, a4);
    v13 = *(v12 - 8);
    (*(v13 + 16))(&v31, a3, v12);
    if (qword_27E1863E0 != -1)
    {
      swift_once();
    }

    v24 = qword_27E188F68;
    v25 = 1;
    v23 = qword_27E188F68;
    goto LABEL_3;
  }

  v15 = a3[3];
  v28 = a3[2];
  v29 = v15;
  v30 = *(a3 + 8);
  v16 = a3[1];
  v26 = *a3;
  v27 = v16;
  v24 = a2;
  v25 = 1;
  v18 = type metadata accessor for AsyncShareablePassConfiguration(0, a4, a5, a4);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v31, a3, v18);
  v20 = a2;
  sub_23B7F6910(&v24, v18);
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v31 = v26;
  v32 = v27;
  return (*(v19 + 8))(&v31, v18);
}

uint64_t sub_23B7F7414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16_PassKit_SwiftUI014AsyncShareableA13ConfigurationV6ResultOyx_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23B7F7490(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_23B7F74D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B7F7540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23B7F7590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B7F75D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B7F761C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_23B7F76B0()
{
  result = qword_27E186D88;
  if (!qword_27E186D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E186D88);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  sub_23B7F6DC8(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23B7F777C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

id sub_23B7F779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v12, v11);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = *(a4 + 16);
  (*(v8 + 32))(v15 + v13, v10, a4);
  v16 = (v15 + v14);
  *v16 = a2;
  v16[1] = a3;

  v17 = sub_23B7F80FC(a1, sub_23B7F7F0C, v15);
  if (!v17)
  {
    return [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D386B8] code:1 userInfo:0];
  }

  v21[1] = v17;
  v21[2] = v18;
  v21[3] = v19;
  sub_23B7F81E0(v17, v18, v19);
  return sub_23B802520();
}

uint64_t AddPassToWalletButton.init(_:onCompletion:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, _OWORD *a7@<X8>)
{
  v14 = sub_23B8026E0();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v19 - v15;
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v21 = 0;
  v22 = 0;
  v20 = a3;
  v23 = 1;

  a4(v17);

  (*(*(a5 - 8) + 56))(v16, 0, 1, a5);
  return sub_23B7E7EB4(&v19, v16, a5, a6, a7);
}

id sub_23B7F7AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186E10, &qword_23B804CD0);
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D837D0];
  *(v1 + 16) = xmmword_23B804C50;
  *(v1 + 56) = v2;
  *(v1 + 32) = 0x74696E696564;
  *(v1 + 40) = 0xE600000000000000;
  sub_23B8027B0();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for AddPassesViewControllerWrapper.AddPassCoordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23B7F7D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AddPassToWalletButton_iOS(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  sub_23B7E2CBC(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24), *(v4 + v9 + 32), *(v4 + v9 + 40));
  v11 = *(v6 + 36);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v4 + v9 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_23B7E2D4C(*(v10 + *(v6 + 40)), *(v10 + *(v6 + 40) + 8));

  return MEMORY[0x2821FE8E8](v4, ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v7 | 7);
}

uint64_t sub_23B7F7F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AddPassToWalletButton_iOS(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v4 + ((*(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_23B7E7F54(0, v6);
  return v7(a1);
}

id sub_23B7F7FC4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  [v2 setDelegate_];
  return v2;
}

id sub_23B7F8000@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t sub_23B7F800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7F8344(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B7F8070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7F8344(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B7F80D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7F8344(a1, a2, a3);
  sub_23B802350();
  __break(1u);
}

uint64_t sub_23B7F80FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D38B18]);
  sub_23B7F8234();
  v7 = sub_23B8025F0();
  v8 = [v6 initWithPasses_];

  if (v8)
  {
    v9 = type metadata accessor for AddPassesViewControllerWrapper.AddPassCoordinator();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtCV16_PassKit_SwiftUIP33_CEF41C66ABDFF5E01A9463BEC59EB36F30AddPassesViewControllerWrapper18AddPassCoordinator_completion];
    *v11 = a2;
    *(v11 + 1) = a3;
    v13.receiver = v10;
    v13.super_class = v9;
    objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    return 0;
  }

  return a1;
}

unint64_t sub_23B7F81E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186E00;
  if (!qword_27E186E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E00);
  }

  return result;
}

unint64_t sub_23B7F8234()
{
  result = qword_27E186E08;
  if (!qword_27E186E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E186E08);
  }

  return result;
}

uint64_t sub_23B7F8280(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23B7F82C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23B7F831C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23B7F8344(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B7F8344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186E18;
  if (!qword_27E186E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E18);
  }

  return result;
}

void sub_23B7F83A8(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 superview];

    if (v3)
    {
      v4 = [objc_opt_self() clearColor];
      [v3 setBackgroundColor_];
    }
  }
}

uint64_t sub_23B7F846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7F89B8(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B7F84D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7F89B8(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B7F8534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B7F89B8(a1, a2, a3);
  sub_23B802280();
  __break(1u);
}

unint64_t sub_23B7F8560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186E20;
  if (!qword_27E186E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E20);
  }

  return result;
}

id sub_23B7F85B4()
{
  v0 = sub_23B802540();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23B802560();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_23B7F8858();
  v8 = sub_23B8026C0();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  aBlock[4] = sub_23B7F88DC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B7ECF98;
  aBlock[3] = &block_descriptor_3;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  sub_23B802550();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23B7F88FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186E38, &qword_23B804EB8);
  sub_23B7F8954();
  sub_23B8026F0();
  MEMORY[0x23EEAA8E0](0, v6, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v14);
  return v11;
}

unint64_t sub_23B7F8858()
{
  result = qword_27E186E28;
  if (!qword_27E186E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E186E28);
  }

  return result;
}

uint64_t sub_23B7F88A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23B7F88FC()
{
  result = qword_27E186E30;
  if (!qword_27E186E30)
  {
    sub_23B802540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E30);
  }

  return result;
}

unint64_t sub_23B7F8954()
{
  result = qword_27E186E40;
  if (!qword_27E186E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E186E38, &qword_23B804EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E40);
  }

  return result;
}

unint64_t sub_23B7F89B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E186E48;
  if (!qword_27E186E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E186E48);
  }

  return result;
}

uint64_t PayWithApplePayButton.init(_:request:onPaymentAuthorizationChange:fallback:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *x8_0@<X8>)
{
  v24 = a8;
  v16 = sub_23B8026E0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  v19 = *a1;
  v20 = objc_allocWithZone(type metadata accessor for PaymentAuthorizationCoordinator());
  v21 = a2;

  v22 = sub_23B7F1530(v21, a3, a4);
  v25 = v19;
  a5();
  (*(*(a7 - 8) + 56))(v18, 0, 1, a7);
  sub_23B7F8B68(&v25, v22, v18, a7, v24, x8_0);
}

uint64_t sub_23B7F8B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_23B8026E0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  v19 = *a1;
  (*(v13 + 16))(&v18 - v14, a3, v12);
  v16 = sub_23B7E4470(&v19, a2, 0, 1, v15, a4, a5, a6);
  return (*(v13 + 8))(a3, v12, v16);
}

uint64_t PayWithApplePayButton.init(_:request:onPaymentAuthorizationChange:onMerchantSessionRequested:fallback:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v29[1] = a8;
  v30 = a7;
  v31 = a9;
  v32 = a11;
  v17 = sub_23B8026E0();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v29 - v18;
  v20 = *a1;
  v21 = objc_allocWithZone(type metadata accessor for PaymentAuthorizationCoordinator());
  v22 = a2;

  v23 = sub_23B7F1530(v22, a3, a4);
  v24 = &v23[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onMerchantSessionRequested];
  v25 = *&v23[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onMerchantSessionRequested];
  v26 = *&v23[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onMerchantSessionRequested + 8];
  *v24 = a5;
  *(v24 + 1) = a6;

  v27 = sub_23B7F68A0(v25, v26);
  v33 = v20;
  v30(v27);
  (*(*(a10 - 8) + 56))(v19, 0, 1, a10);
  sub_23B7F8B68(&v33, v23, v19, a10, v32, v31);
}

uint64_t PayWithApplePayButton<>.init(_:request:onPaymentAuthorizationChange:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = objc_allocWithZone(type metadata accessor for PaymentAuthorizationCoordinator());
  v11 = a2;

  v12 = sub_23B7F1530(v11, a3, a4);
  sub_23B7E42AC(v9, v12, 0, 1, 1, a5);
}

uint64_t PayWithApplePayButton<>.init(_:request:onPaymentAuthorizationChange:onMerchantSessionRequested:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = objc_allocWithZone(type metadata accessor for PaymentAuthorizationCoordinator());
  v15 = a2;

  v16 = sub_23B7F1530(v15, a3, a4);
  v17 = &v16[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onMerchantSessionRequested];
  v18 = *&v16[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onMerchantSessionRequested];
  v19 = *&v16[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onMerchantSessionRequested + 8];
  *v17 = a5;
  *(v17 + 1) = a6;

  sub_23B7F68A0(v18, v19);
  sub_23B7E42AC(v13, v16, 0, 1, 1, a7);
}

uint64_t get_enum_tag_for_layout_string_16_PassKit_SwiftUI012PayWithAppleE31ButtonPaymentAuthorizationPhaseO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B7F8FE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7F903C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_23B7F909C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t VerifyIdentityWithWalletButton.init(_:request:onCompletion:fallback:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16 = sub_23B8026E0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  v23 = *a1;
  v19 = a2;

  a5(v20);
  (*(*(a6 - 8) + 56))(v18, 0, 1, a6);
  sub_23B7EDFCC(&v23, a2, a3, a4, 1, v18, a6, a7, a8);
}

uint64_t VerifyIdentityWithWalletButton<>.init(_:action:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;

  sub_23B802470();
  sub_23B802470();
  v8 = [objc_allocWithZone(MEMORY[0x277D37F00]) init];

  result = swift_getKeyPath();
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 25) = 1;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v8;
  *(a4 + 72) = v7;
  *(a4 + 80) = result;
  *(a4 + 88) = 0;
  return result;
}

uint64_t VerifyIdentityWithWalletButton<>.init(_:request:onCompletion:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *a1;
  v8 = a2;

  sub_23B802470();
  sub_23B802470();
  v9 = [objc_allocWithZone(MEMORY[0x277D37F00]) init];

  result = swift_getKeyPath();
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = 1;
  *(a5 + 25) = 1;
  *(a5 + 32) = v13;
  *(a5 + 40) = v14;
  *(a5 + 48) = v13;
  *(a5 + 56) = v14;
  *(a5 + 64) = v9;
  *(a5 + 72) = v12;
  *(a5 + 80) = result;
  *(a5 + 88) = 0;
  return result;
}