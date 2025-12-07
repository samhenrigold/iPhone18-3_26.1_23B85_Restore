void *TokenDecoder.init(teamIdentifier:keyRetriever:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = v3;
  sub_2581372F4();
  MEMORY[0x28223BE20]();
  sub_2581372D4();
  swift_allocObject();
  v3[2] = sub_2581372C4();
  sub_258137334();
  swift_allocObject();
  v8 = sub_258137324();
  sub_2581372E4();
  sub_258137304();
  v4[3] = v8;
  v4[4] = sub_2581301B8(a1, a2);
  v4[5] = v9;
  sub_2581306DC(a3, (v4 + 6));
  return v4;
}

uint64_t sub_2581301B8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920768, &qword_258137DE0);
  if (swift_dynamicCast())
  {
    sub_2581306DC(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_2581373B4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2581306F4(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2581375E4();
  }

  sub_258130814(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_258135DC8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20]();
  v34[2] = v39;
  v10 = sub_2581354D8(sub_2581360CC, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2581373F4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_258135B20(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_258137524();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_258137554();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2581375E4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_258135B20(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_258137534();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_258137404();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_258137404();
    sub_2581306C8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_2581306C8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2581308DC(*&__src[0], *(&__src[0] + 1));

  sub_258130930(v32, *(&v32 + 1));
  return v32;
}

void sub_2581306C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_258130930(result, a2);
  }
}

uint64_t sub_2581306DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2581306F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920770, &qword_258137DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25813075C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t *sub_258130814@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_25813075C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2581373A4();
      swift_allocObject();
      v8 = sub_258137354();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_2581373D4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_2581308DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_258130930(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t TokenDecoder.__deallocating_deinit()
{

  sub_258130930(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
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

uint64_t sub_258130A84()
{
  v1 = sub_2581374F4();
  SecTaskCopyValueForEntitlement(v0, v1, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9206E0, &unk_258137A10);
  return swift_dynamicCast() & v3;
}

uint64_t sub_258130B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = SecTaskCopyTeamIdentifier();
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = 0;
      v10 = 0;
      sub_258137504();
    }
  }

  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  v7 = sub_2581374F4();
  SecTaskCopyValueForEntitlement(v3, v7, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9206E0, &unk_258137A10);
  if ((swift_dynamicCast() & 1) != 0 && v10)
  {
    return v9;
  }

  return a1;
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

uint64_t dispatch thunk of static TeamIdentifierRetrieving.teamIdentifier(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
}

uint64_t getEnumTagSinglePayload for KeyGenerator(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for KeyGenerator(_WORD *result, int a2, int a3)
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

uint64_t sub_258130E64()
{
  v1 = *v0;
  sub_2581376B4();
  MEMORY[0x259C7A210](v1);
  return sub_2581376D4();
}

uint64_t sub_258130ED8(uint64_t a1)
{
  v2 = *v1;
  sub_2581376B4();
  MEMORY[0x259C7A210](v2);
  return sub_2581376D4();
}

uint64_t sub_258130F1C()
{
  v0 = sub_2581375A4();
  *(v0 + 16) = 32;
  *(v0 + 48) = 0u;
  *(v0 + 32) = 0u;
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, (v0 + 32)))
  {

    sub_2581315D0();
    swift_allocError();
    *v1 = 2;
    return swift_willThrow();
  }

  else
  {
    v3 = sub_258135CEC(v0);

    return v3;
  }
}

void sub_258130FE8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v3 = v3;
LABEL_10:
    if (v3 == 32)
    {
      return;
    }
  }

  sub_2581315D0();
  swift_allocError();
  *v9 = 1;
  swift_willThrow();
  sub_258130930(a1, a2);
}

unint64_t sub_2581310A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6)
{
  v31 = a5;
  v32 = a6;
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v38 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9206E8, &qword_258137AD0);
  MEMORY[0x28223BE20]();
  v33 = &v26 - v9;
  v10 = sub_2581374E4();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v34 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2581374B4();
  v29 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258137474();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = a3;
  *(&v37 + 1) = a4;
  sub_2581308DC(a3, a4);
  sub_258137464();
  v37 = xmmword_258137AA0;
  v19 = sub_258131514();
  sub_2581374A4();
  if (v6)
  {
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    v27 = v16;
    v37 = v30;
    v20 = v29;
    v21 = v33;
    (*(v29 + 16))(v33, v14, v12);
    (*(v20 + 56))(v21, 0, 1, v12);
    v35 = v31;
    v36 = v32;
    sub_258137494();
    v32 = v14;
    sub_258131568(v21);
    v22 = sub_2581374C4();
    if (v23 >> 60 == 15)
    {
      sub_2581315D0();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
    }

    else
    {
      v19 = v22;
    }

    (*(v28 + 8))(v34, v10);
    (*(v20 + 8))(v32, v12);
    (*(v27 + 8))(v18, v15);
  }

  return v19;
}

unint64_t sub_258131514()
{
  result = qword_27F9206F0;
  if (!qword_27F9206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9206F0);
  }

  return result;
}

uint64_t sub_258131568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9206E8, &qword_258137AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2581315D0()
{
  result = qword_27F9206F8;
  if (!qword_27F9206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9206F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CryptorError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2581317B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258131808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_258131868()
{
  result = qword_27F920700;
  if (!qword_27F920700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920700);
  }

  return result;
}

uint64_t sub_2581318C4()
{
  sub_2581376B4();
  MEMORY[0x259C7A210](0);
  return sub_2581376D4();
}

uint64_t sub_258131908(uint64_t a1)
{
  sub_2581376B4();
  MEMORY[0x259C7A210](0);
  return sub_2581376D4();
}

id KeyRetriever.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D26568]) init];
  *a1 = result;
  return result;
}

uint64_t KeyRetriever.retrieveEncodingKeyData()()
{
  v1 = *v0;
  v2 = [*v0 managedSettings];
  v3 = [v2 tokenEncodingKey];

  if (!v3)
  {
    v4 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_6;
  }

  v4 = sub_258137414();
  v6 = v5;

  sub_2581308DC(v4, v6);
  v8 = sub_2581373E4();
  v9 = v7;
  if (v6 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_2581308DC(v4, v6);
      sub_2581308DC(v8, v9);
      v18 = sub_2581323A4(v4, v6, v8, v9);
      sub_2581306C8(v8, v9);
      sub_258130930(v8, v9);
      sub_258130930(v4, v6);
      sub_2581306C8(v4, v6);
      if (!v18)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

LABEL_10:
    sub_2581306C8(v4, v6);
    sub_2581306C8(v8, v9);
    goto LABEL_11;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_10;
  }

  sub_2581306C8(v4, v6);
LABEL_6:
  v10 = [v1 allowedClient];
  v11 = [v10 tokenKeys];

  if (!v11)
  {
    sub_2581306C8(v4, v6);
    v4 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_15;
  }

  sub_258131C7C();
  v12 = sub_2581375B4();

  sub_258131CD0(v12, &v19);

  sub_2581306C8(v4, v6);
  v4 = v19;
  v6 = v20;
  if (v20 >> 60 == 15)
  {
    goto LABEL_15;
  }

LABEL_11:
  sub_2581308DC(v4, v6);
  v13 = sub_2581373E4();
  v15 = v14;
  v16 = sub_2581323A4(v4, v6, v13, v14);
  sub_258130930(v13, v15);
  if (v16)
  {
    sub_258130930(v4, v6);
LABEL_15:
    sub_258131C28();
    swift_allocError();
    swift_willThrow();
    sub_2581306C8(v4, v6);
    return v4;
  }

  sub_2581306C8(v4, v6);
  return v4;
}

unint64_t sub_258131C28()
{
  result = qword_27F920708;
  if (!qword_27F920708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920708);
  }

  return result;
}

unint64_t sub_258131C7C()
{
  result = qword_27F920710;
  if (!qword_27F920710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920710);
  }

  return result;
}

void sub_258131CD0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2581375C4();
  if (v4 == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  else
  {
    sub_258132290(v4, *(a1 + 36), a1, &v7);
    v6 = *(&v7 + 1);
    v5 = v7;
    sub_2581308DC(v7, *(&v7 + 1));
    sub_258130930(v5, v6);
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t KeyRetriever.retrieveDecodingKeyDatas()()
{
  v1 = *v0;
  v2 = [v1 managedSettings];
  v3 = [v2 tokenDecodingKeys];

  if (v3)
  {
    sub_258131C7C();
    v4 = sub_2581375B4();

    result = v4;
    if (*(v4 + 16))
    {
      return result;
    }
  }

  v6 = [v1 allowedClient];
  v7 = [v6 tokenKeys];

  if (v7)
  {
    sub_258131C7C();
    v8 = sub_2581375B4();

    result = v8;
    if (*(v8 + 16))
    {
      return result;
    }
  }

  sub_258131C28();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_258131ED0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_258137364();
    if (v10)
    {
      v11 = sub_258137394();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_258137384();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_258137364();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_258137394();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_258137384();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_258132100(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2581322EC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_258130930(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_258131ED0(v13, a3, a4, &v12);
  v10 = v4;
  sub_258130930(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void sub_258132290(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (a1 < 0 || 1 << *(a3 + 32) <= a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(*(a3 + 48) + 16 * a1);
    *a4 = v4;
    sub_2581308DC(v4, *(&v4 + 1));
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_2581322EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_258137364();
  v11 = result;
  if (result)
  {
    result = sub_258137394();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_258137384();
  sub_258131ED0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2581323A4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2581308DC(a3, a4);
          return sub_258132100(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_258132518(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_258132560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2581325C8()
{
  result = qword_27F920718;
  if (!qword_27F920718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920718);
  }

  return result;
}

uint64_t sub_25813261C()
{
  sub_2581376B4();
  sub_258137514();

  return sub_2581376D4();
}

uint64_t sub_2581326C8(uint64_t a1)
{
  sub_258137514();
}

uint64_t sub_258132760(uint64_t a1)
{
  sub_2581376B4();
  sub_258137514();

  return sub_2581376D4();
}

unint64_t sub_258132808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258135E68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_258132838(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000004449;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 0x69616D6F44626577;
    v4 = 0xE90000000000006ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4449656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_258132950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x79726F6765746163;
  v4 = 0xEA00000000004449;
  if (v2 != 1)
  {
    v3 = 0x69616D6F44626577;
    v4 = 0xE90000000000006ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4449656C646E7562;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x79726F6765746163;
  v8 = 0xEA00000000004449;
  if (*a2 != 1)
  {
    v7 = 0x69616D6F44626577;
    v8 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258137664();
  }

  return v11 & 1;
}

uint64_t sub_258132A64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_258137664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_258137664();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_258132B70(char a1)
{
  sub_2581376B4();
  MEMORY[0x259C7A210](a1 & 1);
  return sub_2581376D4();
}

uint64_t sub_258132BB8(char a1)
{
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_258132C2C(uint64_t a1)
{
  sub_2581376B4();
  sub_258132B48(v3, *v1);
  return sub_2581376D4();
}

uint64_t sub_258132C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258132A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258132CCC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_258135EB4();
  *a2 = result;
  return result;
}

uint64_t sub_258132D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_258132D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_258132DA8(void *a1, uint64_t a2)
{
  v13 = *(a2 + 16);
  v4 = *(a2 + 24);
  v12[0] = *(a2 + 32);
  type metadata accessor for Annotated.CodingKeys(255, v13, v4, v12[0]);
  swift_getWitnessTable();
  v5 = sub_258137654();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v12[1];
  sub_2581376F4();
  v17 = 0;
  v10 = v14;
  sub_258137644();
  if (!v10)
  {
    v16 = *(v9 + *(a2 + 44));
    v15 = 1;
    sub_258136B74();
    sub_258137644();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_258132F68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x28223BE20]();
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Annotated.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v34 = sub_258137624();
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v27 - v13;
  v32 = a2;
  v33 = a3;
  v15 = type metadata accessor for Annotated(0, a2, a3, a4);
  v28 = *(v15 - 8);
  MEMORY[0x28223BE20]();
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v36;
  sub_2581376E4();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v17;
  v36 = a1;
  v27 = v15;
  v20 = v30;
  v21 = v31;
  v39 = 0;
  v22 = v34;
  v23 = v32;
  sub_258137614();
  (*(v21 + 32))(v19, v35, v23);
  v37 = 1;
  sub_258136B20();
  sub_258137614();
  (*(v20 + 8))(v14, v22);
  v24 = v27;
  v25 = v28;
  v19[*(v27 + 44)] = v38;
  (*(v25 + 16))(v29, v19, v24);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return (*(v25 + 8))(v19, v24);
}

void sub_258133344(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_258137334();
  sub_258136084(&qword_27F920758, MEMORY[0x277CC87B8], MEMORY[0x277CC8798]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920738, &qword_258137DD8);
  sub_258136154(&qword_27F920760, &qword_27F920738, &qword_258137DD8, &unk_2581380E0);
  sub_258137444();
  if (!v4)
  {
    v5 = v12;
    v6 = v13;
    v7 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v7 != 2)
      {
        sub_258130930(v12, v13);
        return;
      }

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      sub_258130930(v12, v13);
      if (!__OFSUB__(v8, v9))
      {
        return;
      }

      __break(1u);
    }

    else if (!v7)
    {
      sub_258130930(v12, v13);
      return;
    }

    v10 = HIDWORD(v5);
    v11 = v5;
    sub_258130930(v5, v6);
    if (__OFSUB__(v10, v11))
    {
      __break(1u);
    }
  }
}

uint64_t sub_2581334F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_258137664() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_258137664();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2581335BC(char a1)
{
  if (a1)
  {
    return 0x676E6964646170;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_2581335EC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v11 = *(a2 + 16);
  v12 = v11;
  v13 = v3;
  v10 = *(a2 + 40);
  v14 = v10;
  type metadata accessor for Padded.CodingKeys(255, &v12);
  swift_getWitnessTable();
  v4 = sub_258137654();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2581376F4();
  LOBYTE(v12) = 0;
  v8 = v15;
  sub_258137644();
  if (!v8)
  {
    LOBYTE(v12) = 1;
    sub_258137634();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2581337B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a7;
  v42 = *(a2 - 8);
  MEMORY[0x28223BE20]();
  v46 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = v18;
  type metadata accessor for Padded.CodingKeys(255, &v47);
  swift_getWitnessTable();
  v45 = sub_258137624();
  v41 = *(v45 - 8);
  MEMORY[0x28223BE20]();
  v20 = &v38 - v19;
  v43 = a2;
  v44 = a4;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v21 = type metadata accessor for Padded(0, &v47);
  v39 = *(v21 - 8);
  MEMORY[0x28223BE20]();
  v23 = &v38 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v52;
  sub_2581376E4();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v23;
  v52 = a1;
  v38 = v21;
  v27 = v41;
  v26 = v42;
  LOBYTE(v47) = 0;
  v28 = v45;
  v29 = v43;
  sub_258137614();
  v30 = v25;
  (*(v26 + 32))(v25, v46, v29);
  LOBYTE(v47) = 1;
  v31 = sub_258137604();
  v33 = v32;
  (*(v27 + 8))(v20, v28);
  v34 = v38;
  v35 = &v30[*(v38 + 60)];
  *v35 = v31;
  v35[1] = v33;
  v36 = v39;
  (*(v39 + 16))(v40, v30, v34);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return (*(v36 + 8))(v30, v34);
}

uint64_t sub_258133BAC(uint64_t a1)
{
  sub_2581376B4();
  sub_258132B48(v3, *v1);
  return sub_2581376D4();
}

uint64_t sub_258133C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2581334F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258133C4C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_258135EB4();
  *a2 = result;
  return result;
}

uint64_t sub_258133C84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_258133CD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void *TokenEncoder.__allocating_init(teamIdentifier:keyRetriever:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  sub_2581372F4();
  MEMORY[0x28223BE20]();
  v6 = swift_allocObject();
  sub_258137334();
  swift_allocObject();
  v7 = sub_258137324();
  sub_2581372E4();
  sub_258137304();
  v6[2] = v7;
  v6[3] = sub_2581301B8(a1, a2);
  v6[4] = v8;
  sub_2581306DC(a3, (v6 + 5));
  return v6;
}

void *TokenEncoder.init(teamIdentifier:keyRetriever:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = v3;
  sub_2581372F4();
  MEMORY[0x28223BE20]();
  sub_258137334();
  swift_allocObject();
  v8 = sub_258137324();
  sub_2581372E4();
  sub_258137304();
  v4[2] = v8;
  v4[3] = sub_2581301B8(a1, a2);
  v4[4] = v9;
  sub_2581306DC(a3, (v4 + 5));
  return v4;
}

void sub_258133F80(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v9 = v3[8];
  v10 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v9);
  v11 = (*(v10 + 8))(v9, v10);
  if (!v4)
  {
    v31 = v11;
    v32 = v12;
    v13 = v3[2];

    sub_258133344(a1, a2, a3, v13);
    sub_258137574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920738, &qword_258137DD8);
    sub_258136154(&qword_27F920760, &qword_27F920738, &qword_258137DD8, &unk_2581380E0);
    v14 = sub_258137314();
    v16 = v15;

    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      v18 = v32;
      v19 = v31;
      if (v17 != 2)
      {
LABEL_13:
        v26 = v19;
        sub_2581308DC(v19, v18);
        sub_258130FE8(v26, v18);
        v28 = v27;
        v30 = v29;
        sub_2581310A4(v14, v16, v27, v29, v5[3], v5[4]);
        sub_258137434();
        sub_258130930(v28, v30);
        sub_258130930(v14, v16);
        sub_258130930(v31, v32);
        return;
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
LABEL_11:
        if (__ROR8__(0x8F5C28F5C28F5C29 * v20 + 0x51EB851EB851EB8, 2) >= 0x28F5C28F5C28F5DuLL)
        {
          v24 = v18;
          v25 = v19;
          sub_2581359AC();
          swift_allocError();
          swift_willThrow();
          sub_258130930(v25, v24);
          sub_258130930(v14, v16);
          return;
        }

        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      v18 = v32;
      v19 = v31;
      if (!v17)
      {
        v20 = BYTE6(v16);
        goto LABEL_11;
      }
    }

    LODWORD(v20) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      __break(1u);
      return;
    }

    v20 = v20;
    goto LABEL_11;
  }
}

void *TokenEncoder.deinit()
{

  sub_258130930(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  return v0;
}

uint64_t TokenEncoder.__deallocating_deinit()
{

  sub_258130930(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *TokenDecoder.__allocating_init(teamIdentifier:keyRetriever:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  sub_2581372F4();
  MEMORY[0x28223BE20]();
  v6 = swift_allocObject();
  sub_2581372D4();
  swift_allocObject();
  v6[2] = sub_2581372C4();
  sub_258137334();
  swift_allocObject();
  v7 = sub_258137324();
  sub_2581372E4();
  sub_258137304();
  v6[3] = v7;
  v6[4] = sub_2581301B8(a1, a2);
  v6[5] = v8;
  sub_2581306DC(a3, (v6 + 6));
  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2581344E8(uint64_t a1, unint64_t a2)
{
  v6 = v2[9];
  v7 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v6);
  v8 = (*(v7 + 16))(v6, v7);
  if (!v3)
  {
    a2 = sub_2581345A0(a1, v8, a2);
  }

  return a2;
}

unint64_t sub_2581345A0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v82 = a3;
  v94 = a1;
  v118 = *MEMORY[0x277D85DE8];
  v89 = sub_2581374E4();
  v4 = *(v89 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_258137474();
  MEMORY[0x28223BE20]();
  v100 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v87 = (v4 + 8);
  v90 = (v7 + 8);
  v83 = *MEMORY[0x277CC51E0];

  v85 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0xF000000000000000;
  v92 = a2 + 56;
  v86 = a2;
  v88 = v6;
  v91 = v13;
LABEL_4:
  v17 = v15;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
    v15 = v17;
LABEL_9:
    v18 = (*(a2 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v19 = *v18;
    v9 = v18[1];
    v20 = v9 >> 62;
    v104 = v19;
    v99 = v16;
    if ((v9 >> 62) > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_83;
      }

      v23 = v19 + 16;
      v22 = *(v19 + 16);
      v21 = *(v23 + 8);
      v24 = v21 - v22;
      if (__OFSUB__(v21, v22))
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (!v20)
      {
        if (BYTE6(v9) != 32)
        {
          goto LABEL_83;
        }

        goto LABEL_20;
      }

      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_93;
      }

      v24 = HIDWORD(v19) - v19;
    }

    sub_2581308DC(v104, v9);
    sub_2581308DC(v104, v9);
    v19 = v104;
    if (v24 != 32)
    {
LABEL_83:
      v74 = v19;
      sub_2581315D0();
      swift_allocError();
      *v75 = 1;
      swift_willThrow();

      sub_258130930(v74, v9);
      MEMORY[0x259C7A450](v85);
      sub_2581306C8(v14, v99);
      sub_258130930(v74, v9);
      return v9;
    }

LABEL_20:
    v25 = v14;
    v12 &= v12 - 1;
    v26 = v19;
    sub_258130930(v19, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920720, &qword_258137DD0);
    v102 = sub_258137424();
    v28 = v27;
    v29 = *(v95 + 40);
    v97 = *(v95 + 32);
    v98 = v29;
    v113 = v26;
    v114 = v9;
    sub_2581308DC(v26, v9);
    sub_258137464();
    v103 = v28;
    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      v31 = v102;
      if (v30 != 2)
      {
        goto LABEL_74;
      }

      v33 = *(v102 + 16);
      v32 = *(v102 + 24);
      v34 = v32 - v33;
      if (__OFSUB__(v32, v33))
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!v30)
      {
        v31 = v102;
        if (BYTE6(v103) < 0x1CuLL)
        {
          goto LABEL_74;
        }

        goto LABEL_31;
      }

      v31 = v102;
      if (__OFSUB__(HIDWORD(v102), v102))
      {
        goto LABEL_94;
      }

      v34 = HIDWORD(v102) - v102;
    }

    sub_2581308DC(v31, v103);
    if (v34 < 28)
    {
LABEL_74:
      v60 = v31;
      v61 = v103;
      sub_258130930(v60, v103);
      v62 = sub_258137454();
      sub_258136084(&qword_27F920728, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
      v63 = swift_allocError();
      (*(*(v62 - 8) + 104))(v64, v83, v62);
      swift_willThrow();
      sub_258130930(v104, v9);
      sub_258130930(v102, v61);
      MEMORY[0x259C7A450](v85);
      v9 = v92;
      (*v90)(v100, v93);
      v101 = 0;
      v85 = v63;
      v13 = v91;
      v16 = v99;
      v14 = v25;
      goto LABEL_4;
    }

LABEL_31:
    v116 = MEMORY[0x277CC9318];
    v117 = MEMORY[0x277CC9300];
    v113 = v31;
    v114 = v103;
    v35 = __swift_project_boxed_opaque_existential_1(&v113, MEMORY[0x277CC9318]);
    v36 = *v35;
    v37 = v35[1];
    v38 = v37 >> 62;
    v96 = v9;
    if ((v37 >> 62) > 1)
    {
      v14 = v25;
      if (v38 != 2)
      {
        goto LABEL_67;
      }

      v84 = v25;
      v40 = *(v36 + 16);
      v41 = *(v36 + 24);
      v42 = sub_258137364();
      if (v42)
      {
        v43 = v42;
        v44 = sub_258137394();
        if (__OFSUB__(v40, v44))
        {
          goto LABEL_98;
        }

        v45 = (v40 - v44 + v43);
        v46 = v41 - v40;
        if (__OFSUB__(v41, v40))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
        }
      }

      else
      {
        v45 = 0;
        v46 = v41 - v40;
        if (__OFSUB__(v41, v40))
        {
          goto LABEL_97;
        }
      }

      v51 = sub_258137384();
      if (v51 < v46)
      {
        v46 = v51;
      }

      if (!v45)
      {
        v14 = v84;
LABEL_66:
        a2 = v86;
LABEL_67:
        v53 = v101;
        v39 = v97;
        goto LABEL_71;
      }

      v14 = v84;
      v39 = v97;
      if (!v46)
      {
        goto LABEL_63;
      }

      a2 = v86;
      if (v46 >= 15)
      {
        goto LABEL_61;
      }

      memset(__dst, 0, sizeof(__dst));
      v112 = v46;
      memcpy(__dst, v45, v46);
      v79 = v79 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v112 << 16)) << 32);
    }

    else
    {
      v14 = v25;
      if (!v38)
      {
        __src = v36;
        v106 = v37;
        v107 = BYTE2(v37);
        v108 = BYTE3(v37);
        v109 = BYTE4(v37);
        v110 = BYTE5(v37);
        if (BYTE6(v37))
        {
          v39 = v97;
          if (BYTE6(v37) <= 0xEuLL)
          {
            memset(__dst, 0, sizeof(__dst));
            v112 = BYTE6(v37);
            memcpy(__dst, &__src, BYTE6(v37));
            v81 = v81 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v112 << 16)) << 32);
          }

          else
          {
            sub_2581373A4();
            swift_allocObject();
            sub_258137354();
          }
        }

        else
        {
          v39 = v97;
        }

        goto LABEL_70;
      }

      if (v36 >> 32 < v36)
      {
        goto LABEL_96;
      }

      v47 = sub_258137364();
      if (v47)
      {
        v48 = v47;
        v49 = sub_258137394();
        if (__OFSUB__(v36, v49))
        {
          goto LABEL_99;
        }

        v50 = (v36 - v49 + v48);
      }

      else
      {
        v50 = 0;
      }

      v52 = sub_258137384();
      if (v52 >= (v36 >> 32) - v36)
      {
        v46 = (v36 >> 32) - v36;
      }

      else
      {
        v46 = v52;
      }

      if (!v50)
      {
        goto LABEL_66;
      }

      v39 = v97;
      if (!v46)
      {
LABEL_63:
        a2 = v86;
        goto LABEL_70;
      }

      a2 = v86;
      if (v46 >= 15)
      {
LABEL_61:
        sub_2581373A4();
        swift_allocObject();
        sub_258137354();
        if (v46 >= 0x7FFFFFFF)
        {
          sub_2581373D4();
          v54 = swift_allocObject();
          *(v54 + 16) = 0;
          *(v54 + 24) = v46;
        }

        goto LABEL_70;
      }

      memset(__dst, 0, sizeof(__dst));
      v112 = v46;
      memcpy(__dst, v50, v46);
      v80 = v80 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v112 << 16)) << 32);
    }

LABEL_70:
    v53 = v101;
LABEL_71:
    __swift_destroy_boxed_opaque_existential_1(&v113);
    v55 = v88;
    sub_2581374D4();
    v113 = v39;
    v114 = v98;
    sub_258131514();
    v56 = v100;
    v57 = sub_258137484();
    v101 = v53;
    if (v53)
    {
      sub_258130930(v104, v96);
      sub_258130930(v102, v103);
      MEMORY[0x259C7A450](v85);
      (*v87)(v55, v89);
      (*v90)(v56, v93);
      v85 = v101;
      v101 = 0;
      v9 = v92;
      v13 = v91;
      v16 = v99;
      goto LABEL_4;
    }

    v59 = v57;
    v16 = v58;
    sub_258130930(v104, v96);
    sub_258130930(v102, v103);
    sub_2581306C8(v14, v99);
    (*v87)(v55, v89);
    (*v90)(v56, v93);
    v14 = v59;
    v17 = v15;
    v9 = v92;
    v13 = v91;
  }

  while (v12);
  while (1)
  {
LABEL_6:
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v17;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  if (v16 >> 60 == 15)
  {
    if (!v85)
    {
      sub_258135910();
      swift_allocError();
    }

    swift_willThrow();
  }

  else
  {
    v65 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920738, &qword_258137DD8);
    v9 = v16;
    sub_258136154(&qword_27F920740, &qword_27F920738, &qword_258137DD8, &unk_258138188);
    v66 = v101;
    sub_2581372B4();
    if (v66)
    {
      MEMORY[0x259C7A450](v85);
      sub_2581306C8(v14, v16);
    }

    else
    {
      v67 = v14;
      v69 = v113;
      v68 = v114;
      v70 = v115;
      v71 = v65;
      v72 = v116;
      v9 = v117;
      v73 = *(v71 + 24);
      swift_bridgeObjectRetain_n();
      sub_258133344(v69, v68, v70, v73);
      if (v72 == sub_258137574() && v9 == v77)
      {
      }

      else
      {
        v78 = sub_258137664();

        swift_bridgeObjectRelease_n();
        if ((v78 & 1) == 0)
        {
          sub_2581359AC();
          swift_allocError();
          swift_willThrow();
          sub_2581306C8(v67, v16);

          MEMORY[0x259C7A450](v85);
          return v9;
        }
      }

      v9 = sub_258135EBC(v69, v68, v70, v82);

      MEMORY[0x259C7A450](v85);
      sub_2581306C8(v67, v16);
    }
  }

  return v9;
}

void *TokenDecoder.deinit()
{

  sub_258130930(v0[4], v0[5]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  return v0;
}

char *sub_2581354D8(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_258130930(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_258130930(v7, v6);
    *v4 = xmmword_258137D30;
    sub_258130930(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_258137364() && __OFSUB__(v7, sub_258137394()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2581373A4();
      swift_allocObject();
      v14 = sub_258137344();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_258135A6C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_258130930(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_258137D30;
    sub_258130930(0, 0xC000000000000000);
    sub_2581373C4();
    result = sub_258135A6C(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_25813587C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25813075C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_258135BEC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_258135C68(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_258135910()
{
  result = qword_27F920730;
  if (!qword_27F920730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920730);
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

unint64_t sub_2581359AC()
{
  result = qword_27F920748;
  if (!qword_27F920748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920748);
  }

  return result;
}

void *sub_258135A00(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_258135A6C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_258137364();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_258137394();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_258137384();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_258135B20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_258137564();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C7A090](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_258135B9C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_2581375D4();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_258135BEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2581373A4();
  swift_allocObject();
  result = sub_258137354();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2581373D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_258135C68(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2581373A4();
  swift_allocObject();
  result = sub_258137354();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_258135CEC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F920778, &qword_258137DF0);
  v10 = sub_258136154(qword_27F920780, &qword_27F920778, &qword_258137DF0, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25813587C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_258135DC8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2581373A4();
      swift_allocObject();
      sub_258137374();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2581373D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_258135E68(uint64_t a1, uint64_t a2)
{
  v2 = sub_2581375F4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258135EBC(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  if (!a3)
  {
    v6 = 0xE800000000000000;
    v5 = 0x4449656C646E7562;
    v7 = a4;
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_18:
    v9 = 0xE800000000000000;
    if (v5 != 0x4449656C646E7562)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v5 = 0x79726F6765746163;
  }

  else
  {
    v5 = 0x69616D6F44626577;
  }

  if (a3 == 1)
  {
    v6 = 0xEA00000000004449;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  v7 = a4;
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v7 == 1)
  {
    v8 = 0x79726F6765746163;
  }

  else
  {
    v8 = 0x69616D6F44626577;
  }

  if (v7 == 1)
  {
    v9 = 0xEA00000000004449;
  }

  else
  {
    v9 = 0xE90000000000006ELL;
  }

  if (v5 != v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v6 == v9)
  {

    return a1;
  }

LABEL_21:
  v10 = sub_258137664();

  if ((v10 & 1) == 0)
  {
    sub_258136030();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_258136030()
{
  result = qword_27F920750;
  if (!qword_27F920750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920750);
  }

  return result;
}

uint64_t sub_258136084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2581360CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_258135A00(sub_258136134, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_258136154(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2581361C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25813623C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_2581363A4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_2581365FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_258136674(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2581367B0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_258136994()
{
  result = qword_27F920888;
  if (!qword_27F920888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920888);
  }

  return result;
}

unint64_t sub_2581369EC()
{
  result = qword_27F920890;
  if (!qword_27F920890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920890);
  }

  return result;
}

unint64_t sub_258136A44()
{
  result = qword_27F920898;
  if (!qword_27F920898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920898);
  }

  return result;
}

unint64_t sub_258136A9C()
{
  result = qword_27F9208A0;
  if (!qword_27F9208A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9208A0);
  }

  return result;
}

unint64_t sub_258136B20()
{
  result = qword_27F9208A8;
  if (!qword_27F9208A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9208A8);
  }

  return result;
}

unint64_t sub_258136B74()
{
  result = qword_27F9208B0;
  if (!qword_27F9208B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9208B0);
  }

  return result;
}

unint64_t sub_258136BC8()
{
  result = qword_27F9208B8[0];
  if (!qword_27F9208B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F9208B8);
  }

  return result;
}

uint64_t sub_258136C5C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_258136CEC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TeamIdentifierRetrieverError.hashValue.getter()
{
  v1 = *v0;
  sub_2581376B4();
  MEMORY[0x259C7A210](v1);
  return sub_2581376D4();
}

uint64_t static TeamIdentifierRetriever.teamIdentifierFromCurrentConnection()()
{
  v0 = [objc_opt_self() currentConnection];
  v1 = v0;
  if (v0)
  {
    [v0 auditToken];
    v5 = v8;
    v6 = v7;

    v3 = v5;
    v2 = v6;
  }

  else
  {
    v2 = 0uLL;
    v3 = 0uLL;
  }

  v7 = v2;
  v8 = v3;
  v9 = v1 == 0;
  return sub_258137098(&v7);
}

uint64_t sub_258136FE4()
{
  v0 = [objc_opt_self() currentConnection];
  v1 = v0;
  if (v0)
  {
    [v0 auditToken];
    v5 = v8;
    v6 = v7;

    v3 = v5;
    v2 = v6;
  }

  else
  {
    v2 = 0uLL;
    v3 = 0uLL;
  }

  v7 = v2;
  v8 = v3;
  v9 = v1 == 0;
  return sub_258137098(&v7);
}

uint64_t sub_258137098(uint64_t a1)
{
  if (*(a1 + 32))
  {
    sub_258137260();
    swift_allocError();
    *v2 = 1;
LABEL_7:
    swift_willThrow();
    return v1;
  }

  v3 = *(a1 + 16);
  *v11.val = *a1;
  *&v11.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(*MEMORY[0x277CBECE8], &v11);
  if (!v4)
  {
    sub_258137260();
    swift_allocError();
    *v6 = 0;
    goto LABEL_7;
  }

  v5 = v4;
  v1 = 0x656C707041;
  if ((sub_258130A84() & 1) == 0)
  {
    v8 = sub_258130B04(0x656C707041, 0xE500000000000000);
    if (v9)
    {
      v1 = v8;
    }

    else
    {
      sub_258137260();
      swift_allocError();
      *v10 = 2;
      swift_willThrow();
    }
  }

  return v1;
}

unint64_t sub_2581371EC()
{
  result = qword_27F9209C0;
  if (!qword_27F9209C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9209C0);
  }

  return result;
}

unint64_t sub_258137260()
{
  result = qword_27F9209C8;
  if (!qword_27F9209C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9209C8);
  }

  return result;
}