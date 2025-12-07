uint64_t sub_26C0E5094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26C148E9C();
  sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  sub_26C0E6678();
  return sub_26C148CFC();
}

uint64_t sub_26C0E5148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v22 = a5;
  v23 = a4;
  v20 = a2;
  v21 = a3;
  v19[1] = a1;
  v5 = sub_26C148E9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C148B6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_26C148BDC();
  v13 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  sub_26C148B3C();
  sub_26C148B2C();
  (*(v6 + 8))(v8, v5);
  sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
  v16 = sub_26C148E7C();
  sub_26C137650(v20, v21, v16, v15);
  (*(v10 + 8))(v12, v9);
  v17 = sub_26C148E7C();
  sub_26C137650(0x726574726F707865, 0xE800000000000000, v17, v22);
  return (*(v13 + 8))(v15, v19[0]);
}

uint64_t sub_26C0E5438@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v40 = a2;
  v39 = a1;
  v42 = a3;
  v3 = sub_26C148E9C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C148B6C();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - v17;
  v19 = sub_26C148BDC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0D3BA0(v41, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }

    sub_26C0CF55C(v15, v9, &qword_28047A968, &unk_26C14A810);
    (*(v20 + 16))(v18, &v9[*(v7 + 40)], v19);
    v24 = v9;
    v25 = &qword_28047A968;
    v26 = &unk_26C14A810;
  }

  else
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
      v27 = *(v20 + 56);
      v27(v18, 1, 1, v19);
LABEL_9:
      sub_26C0CF5C4(v18, &qword_28047A930, qword_26C14C120);
      return (v27)(v42, 1, 1, v19);
    }

    sub_26C0CF55C(v15, v12, &qword_28047A970, "DG");
    (*(v20 + 16))(v18, &v12[*(v10 + 56)], v19);
    v24 = v12;
    v25 = &qword_28047A970;
    v26 = "DG";
  }

  sub_26C0CF5C4(v24, v25, v26);
  v27 = *(v20 + 56);
  v27(v18, 0, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_9;
  }

  (*(v20 + 32))(v22, v18, v19);
  sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  v29 = v34;
  v30 = v38;
  sub_26C148B3C();
  v31 = v33;
  sub_26C148B2C();
  (*(v37 + 8))(v29, v30);
  v32 = v42;
  sub_26C0E5148(v22, v39, v40, v31, v42);
  (*(v35 + 8))(v31, v36);
  (*(v20 + 8))(v22, v19);
  return (v27)(v32, 0, 1, v19);
}

uint64_t sub_26C0E59EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = a4;
  v27 = sub_26C148B6C();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C148E9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v29 = xmmword_26C14A1B0;
  *&v29[16] = 0;
  sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  result = sub_26C148B3C();
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v16 = 0;
    if (v15 == 2)
    {
      v16 = *(a1 + 24);
    }
  }

  else if (v15)
  {
    v16 = a1 >> 32;
  }

  else
  {
    v16 = BYTE6(a2);
  }

  if (v16 < a3)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_26C14889C();
    v19 = v18;
    sub_26C11E5B4(v17, v18, v13);
    sub_26C0BB9B0(v17, v19);
    v20 = sub_26C148B2C();
    MEMORY[0x28223BE20](v20);
    *(&v26 - 2) = v29;
    sub_26C0E6794(&qword_28047A9D0, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
    v21 = v27;
    sub_26C14880C();
    (*(v7 + 8))(v9, v21);
    (*(v11 + 8))(v13, v10);
    v22 = *v29;
    v23 = v28;
    *v28 = *v29;
    v24 = *&v29[8];
    *(v23 + 1) = *&v29[8];
    v25 = v24;
    sub_26C0BBAA4(v22, v24);
    return sub_26C0BB9B0(v22, v25);
  }

  return result;
}

uint64_t sub_26C0E5D30(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26C0E5DE8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_26C0E5DE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26C0E5F18(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26C0E67DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_26C0E5EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandshakeState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26C0E5F18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26C0E6024(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_26C1490AC();
    a6 = v11;
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

void *sub_26C0E6024(uint64_t a1, unint64_t a2)
{
  v3 = sub_26C0E6070(a1, a2);
  sub_26C0C6548(&unk_287CC9940);
  return v3;
}

void *sub_26C0E6070(uint64_t a1, unint64_t a2)
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

  v6 = sub_26C148520(v5, 0);
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

  result = sub_26C1490AC();
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
        v10 = sub_26C148F6C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26C148520(v10, 0);
        result = sub_26C14907C();
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

uint64_t sub_26C0E61A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0E6208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C0E6284(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_26C0E63BC(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_26C0E63BC(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_26C0E63BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_26C1487BC();
  v7 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_26C1487DC();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

BOOL sub_26C0E6464(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_26C0BBAA4(a3, a4);
          return sub_26C0BE27C(v13, a2, a3, a4) & 1;
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

uint64_t sub_26C0E65F4(uint64_t a1)
{
  result = type metadata accessor for HandshakeStateMachine(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26C0E6678()
{
  result = qword_28047AB30;
  if (!qword_28047AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB30);
  }

  return result;
}

unint64_t sub_26C0E66CC()
{
  result = qword_28047AB40;
  if (!qword_28047AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047AB18, &unk_26C14C110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB40);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26C0E6794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C0E67DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C0E6848()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AB48);
  __swift_project_value_buffer(v0, qword_28047AB48);
  return sub_26C148A8C();
}

uint64_t PAKEClientConfiguration.context.getter()
{
  v1 = *(v0 + 8);
  sub_26C0BBAA4(v1, *(v0 + 16));
  return v1;
}

uint64_t PAKEClientConfiguration.context.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.clientIdentity.getter()
{
  v1 = *(v0 + 24);
  sub_26C0BBAA4(v1, *(v0 + 32));
  return v1;
}

uint64_t PAKEClientConfiguration.clientIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.serverIdentity.getter()
{
  v1 = *(v0 + 40);
  sub_26C0BBAA4(v1, *(v0 + 48));
  return v1;
}

uint64_t PAKEClientConfiguration.serverIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.clientPasswordVerifier.getter()
{
  v1 = *(v0 + 56);
  sub_26C0BBAA4(v1, *(v0 + 64));
  return v1;
}

uint64_t PAKEClientConfiguration.clientPasswordVerifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t PAKEClientConfiguration.description.getter()
{
  sub_26C14908C();
  MEMORY[0x26D69BC90](0xD000000000000020, 0x800000026C15AB60);
  v0 = PAKEScheme.description.getter();
  MEMORY[0x26D69BC90](v0);

  MEMORY[0x26D69BC90](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v1 = sub_26C14883C();
  MEMORY[0x26D69BC90](v1);

  MEMORY[0x26D69BC90](0xD000000000000012, 0x800000026C15AB90);
  v2 = sub_26C14883C();
  MEMORY[0x26D69BC90](v2);

  MEMORY[0x26D69BC90](0xD000000000000012, 0x800000026C15ABB0);
  v3 = sub_26C14883C();
  MEMORY[0x26D69BC90](v3);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0;
}

void _s8SwiftTLS23PAKEClientConfigurationV6scheme7context14clientIdentity06serverH00G16PasswordVerifierAcA10PAKESchemeV_10Foundation4DataVA3MtAA8TLSErrorOYKcfC(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a1;
  if (v17 == 32150 || v17 == 0xFFFF)
  {
    *a9 = v17;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a2;
    *(a9 + 80) = a3;
    *(a9 + 88) = a4;
    *(a9 + 96) = a5;
    *(a9 + 104) = a6;
    *(a9 + 112) = a7;
    *(a9 + 120) = 0;
    sub_26C0BBAA4(a2, a3);
    sub_26C0BBAA4(a4, a5);
    sub_26C0BBAA4(a6, a7);
  }

  else
  {
    sub_26C0BBAA4(a2, a3);
    sub_26C0BBAA4(a4, a5);
    sub_26C0BBAA4(a6, a7);
    sub_26C14908C();

    v19 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v19);

    *a11 = 0xD000000000000018;
    *(a11 + 8) = 0x800000026C15ABD0;
    *(a11 + 16) = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v21 = v17;
    v22 = v39;
    v23 = v40;
    v24 = a2;
    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v31 = a10;
    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = 0;
    sub_26C0E6E80(&v21);
  }
}

void sub_26C0E6EB0()
{
  v1 = *(v0 + 88);
  v14[0] = *(v0 + 72);
  v14[1] = v1;
  v14[2] = *(v0 + 104);
  v15 = *(v0 + 120);
  if (qword_28047A730 != -1)
  {
    swift_once();
  }

  v2 = qword_280480370;
  os_unfair_lock_lock((qword_280480370 + 16));
  v3 = *(v2 + 24);
  if (*(v3 + 16) && (v4 = sub_26C0D84BC(v14), (v5 & 1) != 0) && (v6 = *(*(v3 + 56) + 4 * v4)) != 0)
  {
    v7 = v6 - 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 24);
    sub_26C0D8CCC(v7, v14, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v13;

    os_unfair_lock_unlock((v2 + 16));
  }

  else
  {
    os_unfair_lock_unlock((v2 + 16));
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v9 = sub_26C148A9C();
    __swift_project_value_buffer(v9, qword_28047AB48);
    oslog = sub_26C148A7C();
    v10 = sub_26C14900C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26C0B5000, oslog, v10, "client claiming PAKE attempt failed", v11, 2u);
      MEMORY[0x26D69C3A0](v11, -1, -1);
    }
  }
}

uint64_t PAKEClientConfiguration.hash(into:)(uint64_t a1)
{
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C1491CC();
}

uint64_t PAKEClientConfiguration.hashValue.getter()
{
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7280(uint64_t a1)
{
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C1491CC();
}

uint64_t sub_26C0E7370(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t PAKEServerRecord.context.getter()
{
  v1 = *(v0 + 8);
  sub_26C0BBAA4(v1, *(v0 + 16));
  return v1;
}

uint64_t PAKEServerRecord.context.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PAKEServerRecord.clientIdentity.getter()
{
  v1 = *(v0 + 24);
  sub_26C0BBAA4(v1, *(v0 + 32));
  return v1;
}

uint64_t PAKEServerRecord.clientIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PAKEServerRecord.serverIdentity.getter()
{
  v1 = *(v0 + 40);
  sub_26C0BBAA4(v1, *(v0 + 48));
  return v1;
}

uint64_t PAKEServerRecord.serverIdentity.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PAKEServerRecord.serverPasswordVerifier.getter()
{
  v1 = *(v0 + 56);
  sub_26C0BBAA4(v1, *(v0 + 64));
  return v1;
}

uint64_t PAKEServerRecord.serverPasswordVerifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB9B0(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t PAKEServerRecord.description.getter()
{
  sub_26C14908C();
  MEMORY[0x26D69BC90](0xD000000000000019, 0x800000026C15ABF0);
  v0 = PAKEScheme.description.getter();
  MEMORY[0x26D69BC90](v0);

  MEMORY[0x26D69BC90](0x7865746E6F63202CLL, 0xEB00000000203A74);
  v1 = sub_26C14883C();
  MEMORY[0x26D69BC90](v1);

  MEMORY[0x26D69BC90](0xD000000000000012, 0x800000026C15ABB0);
  v2 = sub_26C14883C();
  MEMORY[0x26D69BC90](v2);

  MEMORY[0x26D69BC90](0xD000000000000012, 0x800000026C15AB90);
  v3 = sub_26C14883C();
  MEMORY[0x26D69BC90](v3);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0;
}

void _s8SwiftTLS16PAKEServerRecordV6scheme7context14clientIdentity06serverH00I16PasswordVerifier9simulatedAcA10PAKESchemeV_10Foundation4DataVA3NSbtAA8TLSErrorOYKcfC(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v18 = *a1;
  if (v18 == 32150 || v18 == 0xFFFF)
  {
    *a9 = v18;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a2;
    *(a9 + 80) = a3;
    *(a9 + 88) = a4;
    *(a9 + 96) = a5;
    *(a9 + 104) = a6;
    *(a9 + 112) = a7;
    *(a9 + 120) = 1;
    *(a9 + 121) = a11 & 1;
    sub_26C0BBAA4(a2, a3);
    sub_26C0BBAA4(a6, a7);
    sub_26C0BBAA4(a4, a5);
  }

  else
  {
    sub_26C0BBAA4(a2, a3);
    sub_26C0BBAA4(a6, a7);
    sub_26C0BBAA4(a4, a5);
    sub_26C14908C();

    v20 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v20);

    *a12 = 0xD000000000000018;
    *(a12 + 8) = 0x800000026C15ABD0;
    *(a12 + 16) = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v22 = v18;
    v23 = v41;
    v24 = v42;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v32 = a10;
    v33 = a2;
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v39 = 1;
    v40 = a11 & 1;
    sub_26C0ECD08(&v22);
  }
}

uint64_t PAKEServerRecord.hash(into:)(uint64_t a1)
{
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C1491CC();
}

uint64_t PAKEServerRecord.hashValue.getter()
{
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7C68(uint64_t a1)
{
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C1491CC();
}

uint64_t sub_26C0E7D64(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7E80()
{
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C14920C();
}

uint64_t sub_26C0E7F00(uint64_t a1)
{
  sub_26C1491DC();
  sub_26C1488BC();

  return sub_26C1488BC();
}

uint64_t sub_26C0E7F70(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C14920C();
}

BOOL sub_26C0E7FEC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if (!sub_26C0E6464(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  return sub_26C0E6464(v2, v3, v4, v5);
}

double sub_26C0E806C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v68[0] = *a1;
  v68[1] = v8;
  v68[2] = v11;
  v68[3] = v10;
  v68[4] = v12;
  v68[5] = v13;
  v68[6] = v14;
  sub_26C0E8500(v68, a2, &v66, v69);
  if (v5)
  {
    v15 = v67;
    result = *&v66;
    *a4 = v66;
    *(a4 + 16) = v15;
    return result;
  }

  v62 = v69[6];
  v63 = v69[7];
  v64 = v69[8];
  v65 = v69[9];
  v58 = v69[2];
  v59 = v69[3];
  v60 = v69[4];
  v61 = v69[5];
  v56 = v69[0];
  v57 = v69[1];
  if (!*(v14 + 16))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v53 = *(v14 + 32);
  v17 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v9 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v9 >> 32;
  }

  else
  {
    v18 = BYTE6(v8);
  }

  if (v18 < v11)
  {
    goto LABEL_30;
  }

  v70 = a5;
  a5 = 0;
  v9 = sub_26C14889C();
  v20 = v19;
  v21 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(v10 + 24);
    }

    else
    {
      v22 = 0;
    }
  }

  else if (v21)
  {
    v22 = v10 >> 32;
  }

  else
  {
    v22 = BYTE6(v12);
  }

  if (v22 < v13)
  {
    goto LABEL_31;
  }

  v23 = sub_26C14889C();
  v25 = v24;
  sub_26C0E8AA8(&v53, v9, v20, v23, v24, &v52, v54);
  sub_26C0BB9B0(v23, v25);
  sub_26C0BB9B0(v9, v20);
  v46 = v54[2];
  v47 = v54[3];
  *(v50 + 10) = *(v55 + 10);
  v49 = v54[5];
  v50[0] = v55[0];
  v48 = v54[4];
  v44 = v54[0];
  v45 = v54[1];
  LOWORD(v9) = *(v14 + 32);
  v12 = *(v14 + 40);
  v10 = *(v14 + 48);
  a5 = *(v14 + 56);
  v51[6] = v62;
  v51[7] = v63;
  v51[8] = v64;
  v51[9] = v65;
  v51[4] = v60;
  v51[5] = v61;
  v51[0] = v56;
  v51[1] = v57;
  v51[2] = v58;
  v51[3] = v59;
  v26 = sub_26C0ED420(v51);
  sub_26C0BBAA4(v12, v10);
  if (v26 == 1)
  {
    if (qword_28047A748 == -1)
    {
LABEL_22:
      v27 = sub_26C148A9C();
      __swift_project_value_buffer(v27, qword_28047AB48);
      v28 = sub_26C148A7C();
      v29 = sub_26C14900C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_26C0B5000, v28, v29, "Yielding dummy PAKE record", v30, 2u);
        MEMORY[0x26D69C3A0](v30, -1, -1);
      }

      goto LABEL_25;
    }

LABEL_32:
    swift_once();
    goto LABEL_22;
  }

LABEL_25:
  v43[6] = v62;
  v43[7] = v63;
  v43[8] = v64;
  v43[9] = v65;
  v43[2] = v58;
  v43[3] = v59;
  v43[4] = v60;
  v43[5] = v61;
  v43[0] = v56;
  v43[1] = v57;
  if (sub_26C0ED420(v43) == 1)
  {
    v40 = v48;
    v41 = v49;
    *v42 = v50[0];
    *&v42[10] = *(v50 + 10);
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
  }

  else
  {
    sub_26C0BB9B0(v12, v10);
    sub_26C0ECD08(&v44);
    v40 = v60;
    v41 = v61;
    *v42 = v62;
    *&v42[16] = v63;
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v39 = v59;
    LOWORD(v9) = v64;
    v35 = WORD3(v64);
    v34 = *(&v64 + 2);
    v12 = *(&v64 + 1);
    a5 = *(&v65 + 1);
    v10 = v65;
  }

  LOWORD(v32) = v9;
  WORD3(v32) = v35;
  *(&v32 + 2) = v34;
  *(&v32 + 1) = v12;
  *&v33 = v10;
  *(&v33 + 1) = a5;
  nullsub_1();
  v31 = v70;
  v70[6] = *v42;
  v31[7] = *&v42[16];
  v31[8] = v32;
  v31[9] = v33;
  v31[2] = v38;
  v31[3] = v39;
  v31[4] = v40;
  v31[5] = v41;
  result = *&v36;
  *v31 = v36;
  v31[1] = v37;
  return result;
}

void sub_26C0E8500(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, __int128 *a4@<X8>)
{
  v59 = a1[6];
  v58 = *(v59 + 16);
  if (!v58)
  {
LABEL_27:
    sub_26C0ED46C(&v69);
LABEL_28:
    v36 = *&v75[16];
    a4[6] = *v75;
    a4[7] = v36;
    v37 = v77;
    a4[8] = v76;
    a4[9] = v37;
    v38 = v72;
    a4[2] = v71;
    a4[3] = v38;
    v39 = v74;
    a4[4] = v73;
    a4[5] = v39;
    v40 = v70;
    *a4 = v69;
    a4[1] = v40;
    return;
  }

  v5 = 0;
  v6 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = v7 >> 62;
  v61 = a1[3];
  v10 = BYTE6(v7);
  v11 = a1[1];
  v12 = v11 >> 62;
  v60 = *a1;
  v54 = *a1 >> 32;
  v55 = BYTE6(v11);
  v56 = v10;
  v13 = (v59 + 56);
  while (1)
  {
    if (v5 >= *(v59 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v14 = *(v61 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = v56;
      if (v9)
      {
        v14 = v61 >> 32;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_44;
    }

    v81 = *(v13 - 12);
    v57 = *v13;
    v62 = *(v13 - 2);
    v63 = *(v13 - 1);
    sub_26C0BBAA4(v62, v63);
    v15 = sub_26C14889C();
    v17 = v16;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v18 = *(v60 + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v55;
      if (v12)
      {
        v18 = v54;
      }
    }

    if (v18 < v6)
    {
      goto LABEL_45;
    }

    v19 = sub_26C14889C();
    LOWORD(v80[0]) = v81;
    v80[1] = v15;
    v80[2] = v17;
    v80[3] = v19;
    v80[4] = v20;
    if (*(a2 + 16))
    {
      v21 = sub_26C0D8418(v80);
      if (v22)
      {
        break;
      }
    }

    ++v5;
    sub_26C0ED43C(v80);
    sub_26C0BB9B0(v62, v63);
    v13 += 4;
    if (v58 == v5)
    {
      goto LABEL_27;
    }
  }

  v23 = (*(a2 + 56) + (v21 << 7));
  v24 = v23[3];
  v26 = *v23;
  v25 = v23[1];
  v66 = v23[2];
  v67 = v24;
  v64 = v26;
  v65 = v25;
  v28 = v23[5];
  v27 = v23[6];
  v29 = v23[4];
  *&v68[42] = *(v23 + 106);
  *&v68[16] = v28;
  *&v68[32] = v27;
  *v68 = v29;
  sub_26C0DA570(&v64, &v69);
  if (qword_28047A730 == -1)
  {
    goto LABEL_22;
  }

LABEL_46:
  swift_once();
LABEL_22:
  v30 = qword_280480370;
  v78[0] = *&v68[8];
  v78[1] = *&v68[24];
  v78[2] = *&v68[40];
  v79 = v68[56];
  if (sub_26C0D8170(v78, 32))
  {
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v31 = sub_26C148A9C();
    __swift_project_value_buffer(v31, qword_28047AB48);
    v32 = sub_26C148A7C();
    v33 = sub_26C148FFC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "new server credential added to PAKE Limiter";
LABEL_33:
      _os_log_impl(&dword_26C0B5000, v32, v33, v35, v34, 2u);
      MEMORY[0x26D69C3A0](v34, -1, -1);
    }
  }

  else
  {
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v41 = sub_26C148A9C();
    __swift_project_value_buffer(v41, qword_28047AB48);
    v32 = sub_26C148A7C();
    v33 = sub_26C148FFC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "server credential already tracked by PAKE Limiter";
      goto LABEL_33;
    }
  }

  os_unfair_lock_lock((v30 + 16));
  v42 = *(v30 + 24);
  if (*(v42 + 16))
  {
    v43 = sub_26C0D84BC(v78);
    if (v44)
    {
      v45 = *(*(v42 + 56) + 4 * v43);
      if (v45)
      {
        v46 = v45 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v69 = *(v30 + 24);
        sub_26C0D8CCC(v46, v78, isUniquelyReferenced_nonNull_native);
        *(v30 + 24) = v69;
        os_unfair_lock_unlock((v30 + 16));
        sub_26C0ED43C(v80);
        v73 = *v68;
        v74 = *&v68[16];
        *v75 = *&v68[32];
        *&v75[10] = *&v68[42];
        v69 = v64;
        v70 = v65;
        v71 = v66;
        v72 = v67;
        LOWORD(v76) = v81;
        *(&v76 + 1) = v62;
        *&v77 = v63;
        *(&v77 + 1) = v57;
        nullsub_1();
        goto LABEL_28;
      }
    }
  }

  os_unfair_lock_unlock((v30 + 16));
  if (qword_28047A748 != -1)
  {
    swift_once();
  }

  v48 = sub_26C148A9C();
  __swift_project_value_buffer(v48, qword_28047AB48);
  v49 = sub_26C148A7C();
  v50 = sub_26C14900C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26C0B5000, v49, v50, "PAKE credential exhausted", v51, 2u);
    MEMORY[0x26D69C3A0](v51, -1, -1);
  }

  *a3 = xmmword_26C14C1B0;
  *(a3 + 16) = 2;
  v69 = xmmword_26C14C1B0;
  LOBYTE(v70) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0ECD08(&v64);
  sub_26C0BB9B0(v62, v63);
  sub_26C0ED43C(v80);
}

uint64_t sub_26C0E8AA8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _WORD *a7@<X8>)
{
  v83 = a4;
  v81 = a3;
  v80 = a2;
  v79 = a7;
  v10 = sub_26C148D1C();
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_26C148D4C();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C148BFC();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_26C148BDC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (v20 != 0xFFFF && v20 != 32150)
  {
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_26C14908C();

    v92 = 0xD000000000000018;
    v93 = 0x800000026C15ABD0;
    LOWORD(v89) = v20;
    v51 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v51);

    v52 = v92;
    v53 = v93;
    *a6 = v92;
    *(a6 + 8) = v53;
    *(a6 + 16) = 1;
    v92 = v52;
    v93 = v53;
    LOBYTE(v94) = 1;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v76 = v20;
  v77 = a5;
  v78 = a6;
  sub_26C148BEC();
  sub_26C148BBC();
  v21 = v84;
  sub_26C148B8C();
  v22 = *(v17 + 8);
  v22(v19, v16);
  v82 = v92;
  v84 = v93;
  sub_26C148BEC();
  sub_26C148BBC();
  sub_26C148B8C();
  v22(v19, v16);
  v24 = v92;
  v23 = v93;
  sub_26C148D3C();
  sub_26C148D2C();
  v25 = (*(v85 + 8))(v14, v86);
  v26 = MEMORY[0x26D69BA40](v25);
  v28 = v27;
  (*(v87 + 8))(v12, v88);
  v89 = v24;
  v90 = v23;
  v95 = MEMORY[0x277CC9318];
  v96 = MEMORY[0x277CC9300];
  v92 = v26;
  v93 = v28;
  v29 = __swift_project_boxed_opaque_existential_1(&v92, MEMORY[0x277CC9318]);
  v30 = *v29;
  v31 = v29[1];
  v88 = v23;
  sub_26C0BBAA4(v24, v23);
  sub_26C0BBAA4(v26, v28);
  sub_26C135114(v30, v31, &v89);
  v87 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(&v92);
  v33 = v89;
  v34 = v90;
  v35 = v90 >> 62;
  if ((v90 >> 62) > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_16;
    }

    v37 = *(v89 + 16);
    v36 = *(v89 + 24);
    v38 = __OFSUB__(v36, v37);
    v39 = v36 - v37;
    if (!v38)
    {
      if (v39 == 97)
      {
        goto LABEL_10;
      }

LABEL_16:
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_26C14908C();
      result = MEMORY[0x26D69BC90](0xD000000000000034, 0x800000026C15AC40);
      if (v35 > 1)
      {
        v54 = v33;
        v55 = 0;
        if (v35 != 2)
        {
          goto LABEL_25;
        }

        v57 = *(v33 + 16);
        v56 = *(v33 + 24);
        v38 = __OFSUB__(v56, v57);
        v55 = v56 - v57;
        if (!v38)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v35)
      {
        v54 = v33;
        v55 = BYTE6(v34);
LABEL_25:
        v89 = v55;
        v58 = sub_26C14911C();
        MEMORY[0x26D69BC90](v58);

        MEMORY[0x26D69BC90](540877088, 0xE400000000000000);
        v89 = 97;
        v59 = sub_26C14911C();
        MEMORY[0x26D69BC90](v59);

        v60 = v92;
        v61 = v93;
        v62 = v78;
        *v78 = v92;
        v62[1] = v61;
        *(v62 + 16) = 1;
        v92 = v60;
        v93 = v61;
        LOBYTE(v94) = 1;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BB9B0(v54, v34);
        sub_26C0BB9B0(v82, v84);
        sub_26C0BB9B0(v26, v28);
        return sub_26C0BB9B0(v24, v88);
      }

      LODWORD(v55) = HIDWORD(v33) - v33;
      if (!__OFSUB__(HIDWORD(v33), v33))
      {
        v54 = v33;
        v55 = v55;
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (v35)
  {
    if (!__OFSUB__(HIDWORD(v89), v89))
    {
      if (HIDWORD(v89) - v89 == 97)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    goto LABEL_28;
  }

  if (BYTE6(v90) != 97)
  {
    goto LABEL_16;
  }

LABEL_10:
  v75 = v89;
  v85 = v90;
  v86 = v24;
  v40 = v76;
  if (v76 == 32150 || v76 == 0xFFFF)
  {
    v41 = v83;
    v42 = v76;
    v43 = v77;
    sub_26C0BBAA4(v83, v77);
    v44 = v80;
    v45 = v81;
    sub_26C0BBAA4(v80, v81);
    sub_26C0BBAA4(v44, v45);
    sub_26C0BBAA4(v41, v43);
    v46 = v82;
    v47 = v84;
    sub_26C0BBAA4(v82, v84);
    sub_26C0BB9B0(v26, v28);
    result = sub_26C0BB9B0(v86, v88);
    v48 = v79;
    *v79 = v42;
    *(v48 + 1) = v46;
    *(v48 + 2) = v47;
    *(v48 + 3) = v44;
    *(v48 + 4) = v45;
    *&v49 = v75;
    *(&v49 + 1) = v85;
    *(v48 + 5) = v41;
    *(v48 + 6) = v43;
    *&v50 = v46;
    *(&v50 + 1) = v47;
    *(v48 + 36) = v50;
    *(v48 + 28) = v49;
    *(v48 + 11) = v44;
    *(v48 + 12) = v45;
    *(v48 + 13) = v41;
    *(v48 + 14) = v43;
    v48[60] = 257;
  }

  else
  {
    v92 = 0;
    v93 = 0xE000000000000000;
    v63 = v83;
    v64 = v77;
    sub_26C0BBAA4(v83, v77);
    v65 = v80;
    v66 = v81;
    sub_26C0BBAA4(v80, v81);
    sub_26C0BBAA4(v65, v66);
    sub_26C0BBAA4(v63, v64);
    v67 = v82;
    sub_26C0BBAA4(v82, v84);
    sub_26C14908C();

    v92 = 0xD000000000000018;
    v93 = 0x800000026C15ABD0;
    LOWORD(v89) = v40;
    v68 = PAKEScheme.description.getter();
    v69 = v40;
    MEMORY[0x26D69BC90](v68);

    v70 = v92;
    v71 = v93;
    v89 = v92;
    v90 = v93;
    v91 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v26, v28);
    sub_26C0BB9B0(v86, v88);
    LOWORD(v92) = v69;
    *(&v92 + 2) = v106;
    HIWORD(v92) = v107;
    v93 = v67;
    v94 = v84;
    v95 = v65;
    v96 = v66;
    *&v72 = v75;
    *(&v72 + 1) = v85;
    v97 = v83;
    v98 = v64;
    *&v73 = v67;
    *(&v73 + 1) = v84;
    v99 = v72;
    v100 = v73;
    v101 = v65;
    v102 = v66;
    v103 = v83;
    v104 = v64;
    v105 = 257;
    result = sub_26C0ECD08(&v92);
    v74 = v78;
    *v78 = v70;
    v74[1] = v71;
    *(v74 + 16) = 1;
  }

  return result;
}

uint64_t sub_26C0E9394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_26C13ECD0(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_26C13ED88(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_26C13EE04(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t PAKEClientState.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[6];
  v4 = v16[0];
  *(v16 + 9) = *(v1 + 105);
  v5 = *(v16 + 9);
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 105) = v5;
  return sub_26C0ECD38(v11, &v10);
}

__n128 PAKEClientState.configuration.setter(uint64_t a1)
{
  v3 = v1[5];
  v10[4] = v1[4];
  v10[5] = v3;
  v11[0] = v1[6];
  *(v11 + 9) = *(v1 + 105);
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = v1[3];
  v10[2] = v1[2];
  v10[3] = v5;
  sub_26C0E6E80(v10);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  v1[6] = *(a1 + 96);
  *(v1 + 105) = *(a1 + 105);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v9;
  return result;
}

uint64_t PAKEClientState.prover.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PAKEClientState(0) + 24);
  v4 = sub_26C148A1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PAKEClientState.prover.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PAKEClientState(0) + 24);
  v4 = sub_26C148A1C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _s8SwiftTLS15PAKEClientStateVyAcA0C13ConfigurationVAA8TLSErrorOYKcfC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v83 = sub_26C1489BC();
  v65 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C148A1C();
  v64 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  *&v66 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[5];
  v80 = a1[4];
  v81 = v11;
  v82[0] = a1[6];
  *(v82 + 9) = *(a1 + 105);
  v12 = a1[1];
  v76 = *a1;
  v77 = v12;
  v13 = a1[3];
  v78 = a1[2];
  v79 = v13;
  v63 = type metadata accessor for PAKEClientState(0);
  v14 = *(v63 + 20);
  v15 = sub_26C148BDC();
  result = (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  v17 = a1[5];
  a3[4] = a1[4];
  a3[5] = v17;
  a3[6] = a1[6];
  *(a3 + 105) = *(a1 + 105);
  v18 = a1[1];
  *a3 = *a1;
  a3[1] = v18;
  v19 = a1[3];
  a3[2] = a1[2];
  a3[3] = v19;
  v20 = v76;
  if (v76 != 0xFFFF && v76 != 32150)
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_26C0ECD38(&v76, &v67);
    sub_26C14908C();

    *&v67 = 0xD000000000000018;
    *(&v67 + 1) = 0x800000026C15ABD0;
    LOWORD(v74) = v20;
    v30 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v30);

    v31 = v67;
    *a2 = v67;
    *(a2 + 16) = 1;
    v67 = v31;
    LOBYTE(v68) = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0E6E80(&v76);
LABEL_30:
    v47 = a3[5];
    v71 = a3[4];
    v72 = v47;
    v73[0] = a3[6];
    *(v73 + 9) = *(a3 + 105);
    v48 = a3[1];
    v67 = *a3;
    v68 = v48;
    v49 = a3[3];
    v69 = a3[2];
    v70 = v49;
    sub_26C0E6E80(&v67);
    return sub_26C0CF5C4(a3 + v14, &qword_28047A930, qword_26C14C120);
  }

  v62 = v3;
  v22 = *(&v79 + 1);
  v21 = BYTE6(v80);
  v23 = v80 >> 62;
  if ((v80 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_16;
    }

    v25 = *(*(&v79 + 1) + 16);
    v24 = *(*(&v79 + 1) + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v27 != 64)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v23)
    {
      if (BYTE6(v80) != 64)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (__OFSUB__(HIDWORD(v79), DWORD2(v79)))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    if (HIDWORD(v79) - DWORD2(v79) != 64)
    {
LABEL_16:
      *a2 = 0xD000000000000020;
      *(a2 + 8) = 0x800000026C15AC10;
      *(a2 + 16) = 1;
      *&v67 = 0xD000000000000020;
      *(&v67 + 1) = 0x800000026C15AC10;
      LOBYTE(v68) = 1;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      goto LABEL_30;
    }
  }

LABEL_10:
  v50 = v9;
  if (v23)
  {
    if (v23 == 2)
    {
      v29 = *(*(&v79 + 1) + 16);
      v28 = *(*(&v79 + 1) + 24);
    }

    else
    {
      v29 = SDWORD2(v79);
      v28 = *(&v79 + 1) >> 32;
    }
  }

  else
  {
    v29 = 0;
    v28 = BYTE6(v80);
  }

  if (v28 < v29 || v29 > 32)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_26C0ECD38(&v76, &v67);
  result = sub_26C14889C();
  v58 = result;
  v59 = v32;
  if (v23)
  {
    if (v23 == 2)
    {
      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
    }

    else
    {
      v34 = v22;
      v33 = v22 >> 32;
    }
  }

  else
  {
    v34 = 0;
    v33 = v21;
  }

  v61 = v8;
  v51 = v14;
  v52 = a2;
  if (v33 < 32 || v33 < v34)
  {
    goto LABEL_35;
  }

  v35 = sub_26C14889C();
  v37 = v36;
  v60 = v36;
  v39 = *(&v76 + 1);
  v38 = v77;
  v53 = v35;
  v54 = *(&v76 + 1);
  v40 = v79;
  v57 = *(&v77 + 1);
  v55 = *(&v78 + 1);
  v56 = v78;
  (*(v65 + 104))(v61, *MEMORY[0x277D02FC0], v83);
  v42 = v58;
  v41 = v59;
  sub_26C0BBAA4(v58, v59);
  sub_26C0BBAA4(v35, v37);
  sub_26C0BBAA4(v39, v38);
  sub_26C0BBAA4(v55, v40);
  sub_26C0BBAA4(v57, v56);
  v43 = v53;
  v44 = v66;
  v45 = v62;
  sub_26C1489DC();
  if (v45)
  {

    sub_26C0E6E80(&v76);
    v66 = xmmword_26C14A900;
    v67 = xmmword_26C14A900;
    LOBYTE(v68) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v42, v41);
    sub_26C0BB9B0(v43, v60);
    v14 = v51;
    v46 = v52;
    *v52 = v66;
    *(v46 + 16) = 2;
    goto LABEL_30;
  }

  sub_26C0E6E80(&v76);
  sub_26C0BB9B0(v42, v41);
  sub_26C0BB9B0(v43, v60);
  return (*(v64 + 32))(a3 + *(v63 + 24), v44, v50);
}

uint64_t sub_26C0E9D0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2;
  if (qword_28047A730 != -1)
  {
    swift_once();
  }

  v7 = *(v2 + 88);
  v29[0] = *(v2 + 72);
  v29[1] = v7;
  v29[2] = *(v2 + 104);
  v30 = *(v2 + 120);
  if (sub_26C0D8170(v29, 32))
  {
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v8 = sub_26C148A9C();
    __swift_project_value_buffer(v8, qword_28047AB48);
    v9 = sub_26C148A7C();
    v10 = sub_26C148FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "new client credential added to PAKE Limiter";
LABEL_12:
      _os_log_impl(&dword_26C0B5000, v9, v10, v12, v11, 2u);
      MEMORY[0x26D69C3A0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v13 = sub_26C148A9C();
    __swift_project_value_buffer(v13, qword_28047AB48);
    v9 = sub_26C148A7C();
    v10 = sub_26C148FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "client credential already tracked by PAKE Limiter";
      goto LABEL_12;
    }
  }

  type metadata accessor for PAKEClientState(0);
  v14 = sub_26C148A0C();
  if (v3)
  {

    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a1 = xmmword_26C14A900;
    *(a1 + 16) = 2;
    return result;
  }

  v17 = v14;
  v18 = v15;
  v19 = 0;
  v20 = *(v5 + 24);
  v21 = *(v5 + 32);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_21;
    }

    v19 = *(v20 + 16);
  }

  else
  {
    if (!v22)
    {
      goto LABEL_21;
    }

    v19 = v20;
  }

  sub_26C0BBAA4(v20, v21);
LABEL_21:
  v31 = v19;
  v23 = 0;
  v24 = *(v5 + 40);
  v25 = *(v5 + 48);
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v23 = *(v24 + 16);
      goto LABEL_26;
    }
  }

  else if (v26)
  {
    v23 = v24;
LABEL_26:
    sub_26C0BBAA4(*(v5 + 40), *(v5 + 48));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A918, &qword_26C14A7C0);
  result = swift_allocObject();
  v27 = 0;
  *(result + 16) = xmmword_26C14A550;
  v28 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v27 = *(v17 + 16);
    }
  }

  else if (v28)
  {
    v27 = v17;
  }

  *(result + 32) = *v5;
  *(result + 40) = v17;
  *(result + 48) = v18;
  *(result + 56) = v27;
  *a2 = v20;
  a2[1] = v21;
  a2[2] = v31;
  a2[3] = v24;
  a2[4] = v25;
  a2[5] = v23;
  a2[6] = result;
  return result;
}

void sub_26C0EA060(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v5 = v4;
  v9 = sub_26C1489CC();
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C1489AC();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v19 = (&v65 - v18);
  v20 = (a2 >> 62);
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v23)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v24 == 97)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!v20)
    {
      if (BYTE6(a2) != 97)
      {
        goto LABEL_13;
      }

LABEL_8:
      v67 = a4;
      if (v20)
      {
        if (v20 == 2)
        {
          v25 = *(a1 + 16);
        }

        else
        {
          v25 = a1;
        }

LABEL_26:
        v31 = v25 + 65;
        if (__OFADD__(v25, 65))
        {
          __break(1u);
        }

        else
        {
          v32 = v16;
          if (v20)
          {
            if (v20 == 2)
            {
              v33 = *(a1 + 16);
              v34 = *(a1 + 24);
            }

            else
            {
              v33 = a1;
              v34 = a1 >> 32;
            }
          }

          else
          {
            v33 = 0;
            v34 = BYTE6(a2);
          }

          if (v34 >= v33 && v31 >= v33)
          {
            v65 = v17;
            v66 = v32;
            v68 = sub_26C14889C();
            v69 = v35;
            if (!v20)
            {
              v37 = 0;
              v36 = BYTE6(a2);
LABEL_38:
              v20 = v5;
              if (v36 < v31)
              {
                goto LABEL_69;
              }

LABEL_41:
              if (v36 >= v37)
              {
                v5 = sub_26C14889C();
                a1 = v38;
                type metadata accessor for PAKEClientState(0);
                v39 = v71;
                v40 = sub_26C1489FC();
                v20 = v39;
                if (!v39)
                {
                  sub_26C0BB9B0(v40, v41);
                  sub_26C1489EC();
                  v56 = v65;
                  v55 = v66;
                  (*(v65 + 16))(v15, v19, v66);
                  sub_26C0ED3C8();
                  sub_26C148BAC();
                  sub_26C0BB9B0(v5, a1);
                  sub_26C0BB9B0(v68, v69);
                  (*(v56 + 8))(v19, v55);
                  return;
                }

                v75 = v39;
                MEMORY[0x26D69C260](v39);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB78, &qword_26C14CA58);
                v42 = swift_dynamicCast();
                v43 = v70;
                if (v42)
                {
                  v44 = (*(v70 + 88))(v11, v9);
                  if (v44 == *MEMORY[0x277D02FC8])
                  {

                    if (qword_28047A748 != -1)
                    {
                      swift_once();
                    }

                    v45 = sub_26C148A9C();
                    __swift_project_value_buffer(v45, qword_28047AB48);
                    v46 = sub_26C148A7C();
                    v47 = sub_26C14900C();
                    if (!os_log_type_enabled(v46, v47))
                    {
                      goto LABEL_55;
                    }

                    v48 = swift_slowAlloc();
                    *v48 = 0;
                    v49 = "SPAKE2 integrity issue";
                    goto LABEL_54;
                  }

                  if (v44 == *MEMORY[0x277D02FD0])
                  {

                    if (qword_28047A748 == -1)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_74;
                  }

                  (*(v43 + 8))(v11, v9);
                }

                a2 = a1;
                if (qword_28047A748 == -1)
                {
LABEL_63:
                  v57 = sub_26C148A9C();
                  __swift_project_value_buffer(v57, qword_28047AB48);
                  MEMORY[0x26D69C260](v20);
                  v58 = sub_26C148A7C();
                  v59 = sub_26C14900C();

                  v60 = v5;
                  if (os_log_type_enabled(v58, v59))
                  {
                    v61 = swift_slowAlloc();
                    v62 = swift_slowAlloc();
                    *v61 = 138412290;
                    MEMORY[0x26D69C260](v20);
                    v63 = _swift_stdlib_bridgeErrorToNSError();
                    *(v61 + 4) = v63;
                    *v62 = v63;
                    _os_log_impl(&dword_26C0B5000, v58, v59, "failed to process server PAKE message: %@", v61, 0xCu);
                    sub_26C0CF5C4(v62, &qword_28047A880, &qword_26C14A5B0);
                    MEMORY[0x26D69C3A0](v62, -1, -1);
                    MEMORY[0x26D69C3A0](v61, -1, -1);
                  }

                  v64 = v72;
                  *v72 = xmmword_26C14A570;
                  *(v64 + 16) = 2;
                  v73 = xmmword_26C14A570;
                  v74 = 2;
                  sub_26C0BBAF8();
                  swift_willThrowTypedImpl();
                  sub_26C0BB9B0(v60, a2);
                  sub_26C0BB9B0(v68, v69);
                  v52 = v20;
                  goto LABEL_66;
                }

LABEL_72:
                swift_once();
                goto LABEL_63;
              }

              goto LABEL_69;
            }

            if (v20 == 2)
            {
              v37 = *(a1 + 16);
              v36 = *(a1 + 24);
              goto LABEL_38;
            }

            v20 = v5;
            v37 = a1;
            v36 = a1 >> 32;
            if (a1 >> 32 >= v31)
            {
              goto LABEL_41;
            }

LABEL_69:
            __break(1u);
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

LABEL_24:
      v25 = v20;
      goto LABEL_26;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (HIDWORD(a1) - a1 == 97)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  if (qword_28047A748 != -1)
  {
    swift_once();
  }

  v26 = sub_26C148A9C();
  __swift_project_value_buffer(v26, qword_28047AB48);
  sub_26C0BBAA4(a1, a2);
  v19 = sub_26C148A7C();
  v27 = sub_26C14900C();
  if (!os_log_type_enabled(v19, v27))
  {
    sub_26C0BB9B0(a1, a2);
LABEL_60:

    v54 = v72;
    *v72 = xmmword_26C14A8E0;
    *(v54 + 16) = 2;
    v73 = xmmword_26C14A8E0;
    v74 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return;
  }

  v16 = swift_slowAlloc();
  *v16 = 134218240;
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      v28 = 0;
      goto LABEL_59;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v23 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (!v23)
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v20)
  {
    v28 = BYTE6(a2);
LABEL_59:
    *(v16 + 4) = v28;
    v53 = v16;
    sub_26C0BB9B0(a1, a2);
    *(v53 + 12) = 2048;
    *(v53 + 14) = 97;
    _os_log_impl(&dword_26C0B5000, v19, v27, "Invalid server PAKE message size, got %ld, expected %ld", v53, 0x16u);
    MEMORY[0x26D69C3A0](v53, -1, -1);
    goto LABEL_60;
  }

  LODWORD(v28) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v28 = v28;
    goto LABEL_59;
  }

  __break(1u);
LABEL_74:
  swift_once();
LABEL_52:
  v50 = sub_26C148A9C();
  __swift_project_value_buffer(v50, qword_28047AB48);
  v46 = sub_26C148A7C();
  v47 = sub_26C14900C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "SPAKE2 invalid input length issue";
LABEL_54:
    _os_log_impl(&dword_26C0B5000, v46, v47, v49, v48, 2u);
    MEMORY[0x26D69C3A0](v48, -1, -1);
  }

LABEL_55:

  v51 = v72;
  *v72 = xmmword_26C14C1C0;
  *(v51 + 16) = 2;
  v73 = xmmword_26C14C1C0;
  v74 = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB9B0(v5, a1);
  sub_26C0BB9B0(v68, v69);
  v52 = v75;
LABEL_66:
}

uint64_t sub_26C0EA90C(void *a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *v2;
  if (*a1 == v11)
  {
    result = a1[3];
    v13 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v14 = *(v9 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13)
    {
      v14 = v9 >> 32;
    }

    else
    {
      v14 = BYTE6(v10);
    }

    if (v14 < result)
    {
      __break(1u);
    }

    else
    {
      v35 = sub_26C14889C();
      v37 = v36;
      sub_26C0EA060(v35, v36, &v45, v8);
      result = sub_26C0BB9B0(v35, v37);
      if (v3)
      {
        v38 = v46;
        *a2 = v45;
        *(a2 + 16) = v38;
      }

      else
      {
        v39 = sub_26C148BDC();
        (*(*(v39 - 8) + 56))(v8, 0, 1, v39);
        v40 = type metadata accessor for PAKEClientState(0);
        return sub_26C0ECD90(v8, v2 + *(v40 + 20));
      }
    }
  }

  else
  {
    v42 = *a1;
    v47 = v11;
    v44 = a2;
    v16 = a1[4];
    v15 = a1[5];
    v43 = a1[7];
    v17 = a1[8];
    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v18 = sub_26C148A9C();
    __swift_project_value_buffer(v18, qword_28047AB48);
    sub_26C0BBAA4(v9, v10);
    sub_26C0BB37C(v16, v15);
    v19 = v43;
    sub_26C0BB37C(v43, v17);
    v20 = v17;
    v21 = sub_26C148A7C();
    v22 = sub_26C14900C();
    v23 = v9;
    v24 = v22;
    sub_26C0BB9B0(v23, v10);
    sub_26C0BB344(v16, v15);
    sub_26C0BB344(v19, v20);
    v25 = v24;
    if (os_log_type_enabled(v21, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v45 = v27;
      *v26 = 136315394;
      v48 = v42;
      v28 = PAKEScheme.description.getter();
      v30 = sub_26C0E5DE8(v28, v29, &v45);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v48 = v47;
      v31 = PAKEScheme.description.getter();
      v33 = sub_26C0E5DE8(v31, v32, &v45);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_26C0B5000, v21, v25, "Server PAKE message scheme mismatch, got %s, expected %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69C3A0](v27, -1, -1);
      MEMORY[0x26D69C3A0](v26, -1, -1);
    }

    v34 = v44;
    *v44 = xmmword_26C14A8E0;
    *(v34 + 16) = 2;
    v45 = xmmword_26C14A8E0;
    v46 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t PAKEServerState.clientShare.getter()
{
  v1 = *v0;
  sub_26C0BB37C(*v0, *(v0 + 8));
  return v1;
}

uint64_t PAKEServerState.clientShare.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26C0BB344(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_26C0EADD4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_26C0ECD90(a1, v4);
}

uint64_t PAKEServerState.verifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PAKEServerState(0) + 36);
  v4 = sub_26C148A6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PAKEServerState.verifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PAKEServerState(0) + 36);
  v4 = sub_26C148A6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_26C0EAFA4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26C1489BC();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  *&v71 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C148A6C();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[5];
  v84 = a1[4];
  v85 = v10;
  v86[0] = a1[6];
  *(v86 + 10) = *(a1 + 106);
  v11 = a1[1];
  v80 = *a1;
  v81 = v11;
  v12 = a1[3];
  v82 = a1[2];
  v83 = v12;
  *a3 = xmmword_26C14A540;
  v13 = type metadata accessor for PAKEServerState(0);
  v14 = v13[5];
  v15 = sub_26C148BDC();
  v16 = *(*(v15 - 8) + 56);
  v87 = v14;
  result = v16(a3 + v14, 1, 1, v15);
  v18 = a3 + v13[6];
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0xF000000000000000;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0;
  *(a3 + v13[7]) = 0;
  v19 = (a3 + v13[8]);
  v20 = a1[5];
  v19[4] = a1[4];
  v19[5] = v20;
  v19[6] = a1[6];
  *(v19 + 106) = *(a1 + 106);
  v21 = a1[1];
  *v19 = *a1;
  v19[1] = v21;
  v22 = a1[3];
  v19[2] = a1[2];
  v19[3] = v22;
  v23 = v80;
  if (v80 != 0xFFFF && v80 != 32150)
  {
    *&v72[0] = 0;
    *(&v72[0] + 1) = 0xE000000000000000;
    sub_26C0DA570(&v80, &v73);
    sub_26C14908C();

    *&v73 = 0xD000000000000018;
    *(&v73 + 1) = 0x800000026C15ABD0;
    LOWORD(v72[0]) = v23;
    v31 = PAKEScheme.description.getter();
    MEMORY[0x26D69BC90](v31);

    v32 = v73;
    *a2 = v73;
    *(a2 + 16) = 1;
    v73 = v32;
    LOBYTE(v74) = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0ECD08(&v80);
LABEL_36:
    sub_26C0BB344(*a3, *(a3 + 8));
    sub_26C0CF5C4(a3 + v87, &qword_28047A930, qword_26C14C120);
    v51 = *(v18 + 48);
    v72[2] = *(v18 + 32);
    v72[3] = v51;
    v72[4] = *(v18 + 64);
    v52 = *(v18 + 16);
    v72[0] = *v18;
    v72[1] = v52;
    sub_26C0CF5C4(v72, &qword_28047AB90, &qword_26C14CA68);
    v53 = v19[5];
    v77 = v19[4];
    v78 = v53;
    v79[0] = v19[6];
    *(v79 + 10) = *(v19 + 106);
    v54 = v19[1];
    v73 = *v19;
    v74 = v54;
    v55 = v19[3];
    v75 = v19[2];
    v76 = v55;
    return sub_26C0ECD08(&v73);
  }

  v66 = a2;
  v24 = *(&v83 + 1);
  v25 = v84 >> 62;
  if ((v84 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_16;
    }

    v27 = *(*(&v83 + 1) + 16);
    v26 = *(*(&v83 + 1) + 24);
    v28 = __OFSUB__(v26, v27);
    v29 = v26 - v27;
    if (v28)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v29 != 97)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v25)
    {
      if (BYTE6(v84) != 97)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (__OFSUB__(HIDWORD(v83), DWORD2(v83)))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    if (HIDWORD(v83) - DWORD2(v83) != 97)
    {
LABEL_16:
      v33 = v66;
      *v66 = 0xD000000000000020;
      v33[1] = 0x800000026C15AC80;
      *(v33 + 16) = 1;
      *&v73 = 0xD000000000000020;
      *(&v73 + 1) = 0x800000026C15AC80;
      LOBYTE(v74) = 1;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      goto LABEL_36;
    }
  }

LABEL_10:
  v63 = v84;
  if (v25)
  {
    if (v25 == 2)
    {
      v30 = *(*(&v83 + 1) + 16);
    }

    else
    {
      v30 = SDWORD2(v83);
    }
  }

  else
  {
    v30 = 0;
  }

  v34 = v30 + 32;
  if (__OFADD__(v30, 32))
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v25)
  {
    if (v25 == 2)
    {
      v36 = *(*(&v83 + 1) + 16);
      v35 = *(*(&v83 + 1) + 24);
    }

    else
    {
      v36 = SDWORD2(v83);
      v35 = *(&v83 + 1) >> 32;
    }
  }

  else
  {
    v36 = 0;
    v35 = BYTE6(v63);
  }

  if (v35 < v36 || v34 < v36)
  {
    goto LABEL_39;
  }

  sub_26C0DA570(&v80, &v73);
  v37 = v34;
  v38 = BYTE6(v63);
  result = sub_26C14889C();
  v61 = v39;
  if (v25)
  {
    if (v25 == 2)
    {
      v41 = *(v24 + 16);
      v40 = *(v24 + 24);
    }

    else
    {
      v41 = v24;
      v40 = v24 >> 32;
    }
  }

  else
  {
    v41 = 0;
    v40 = v38;
  }

  if (v40 < v37 || v40 < v41)
  {
    goto LABEL_40;
  }

  v59 = a3;
  v56[0] = v13;
  v62 = result;
  v42 = sub_26C14889C();
  v60 = v42;
  v63 = v43;
  v44 = *(&v80 + 1);
  v56[1] = *(&v80 + 1);
  v57 = v81;
  v45 = *(&v82 + 1);
  v46 = v83;
  v47 = *(&v81 + 1);
  v58 = v82;
  (*(v67 + 104))(v71, *MEMORY[0x277D02FC0], v68);
  sub_26C0BBAA4(v62, v61);
  sub_26C0BBAA4(v42, v63);
  sub_26C0BBAA4(v44, v57);
  sub_26C0BBAA4(v45, v46);
  sub_26C0BBAA4(v47, v58);
  v49 = v69;
  v48 = v70;
  sub_26C148A3C();
  if (v48)
  {

    sub_26C0ECD08(&v80);
    v71 = xmmword_26C14A900;
    v73 = xmmword_26C14A900;
    LOBYTE(v74) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v62, v61);
    sub_26C0BB9B0(v60, v63);
    v50 = v66;
    *v66 = v71;
    *(v50 + 16) = 2;
    a3 = v59;
    goto LABEL_36;
  }

  sub_26C0ECD08(&v80);
  sub_26C0BB9B0(v62, v61);
  sub_26C0BB9B0(v60, v63);
  return (*(v64 + 32))(v59 + *(v56[0] + 36), v49, v65);
}

id sub_26C0EB64C(uint64_t a1, id a2, uint64_t a3, _OWORD *a4)
{
  v60 = a4;
  v51 = a1;
  v54 = sub_26C1489CC();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C1489AC();
  v50 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  type metadata accessor for PAKEServerState(0);
  v13 = sub_26C148A4C();
  if (v4)
  {
    v59[0] = v4;
    MEMORY[0x26D69C260](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB78, &qword_26C14CA58);
    v27 = v53;
    v26 = v54;
    if (swift_dynamicCast())
    {
      v28 = (*(v52 + 88))(v27, v26);
      if (v28 == *MEMORY[0x277D02FC8])
      {

        if (qword_28047A748 != -1)
        {
          swift_once();
        }

        v29 = sub_26C148A9C();
        __swift_project_value_buffer(v29, qword_28047AB48);
        v30 = sub_26C148A7C();
        v31 = sub_26C14900C();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_15;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "SPAKE2 integrity issue";
LABEL_14:
        _os_log_impl(&dword_26C0B5000, v30, v31, v33, v32, 2u);
        MEMORY[0x26D69C3A0](v32, -1, -1);
LABEL_15:

        v35 = v60;
        *v60 = xmmword_26C14C1C0;
        *(v35 + 16) = 2;
        v55 = xmmword_26C14C1C0;
        v56 = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v36 = v59[0];
LABEL_22:

        return a2;
      }

      if (v28 == *MEMORY[0x277D02FD0])
      {

        if (qword_28047A748 != -1)
        {
          swift_once();
        }

        v34 = sub_26C148A9C();
        __swift_project_value_buffer(v34, qword_28047AB48);
        v30 = sub_26C148A7C();
        v31 = sub_26C14900C();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_15;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "encountered an invalid input length in SPAKE2+ while deriving shared key in PAKE server";
        goto LABEL_14;
      }

      (*(v52 + 8))(v27, v26);
    }

    if (qword_28047A748 != -1)
    {
      swift_once();
    }

    v37 = sub_26C148A9C();
    __swift_project_value_buffer(v37, qword_28047AB48);
    MEMORY[0x26D69C260](v4);
    v38 = sub_26C148A7C();
    v39 = sub_26C14900C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      MEMORY[0x26D69C260](v4);
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&dword_26C0B5000, v38, v39, "error deriving shared key in PAKE server: %@", v40, 0xCu);
      sub_26C0CF5C4(v41, &qword_28047A880, &qword_26C14A5B0);
      MEMORY[0x26D69C3A0](v41, -1, -1);
      MEMORY[0x26D69C3A0](v40, -1, -1);
    }

    v43 = v60;
    *v60 = xmmword_26C14A570;
    *(v43 + 16) = 2;
    v55 = xmmword_26C14A570;
    v56 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v36 = v4;
    goto LABEL_22;
  }

  v15 = v13;
  v16 = v14;
  v48 = v10;
  v49 = v12;
  v47 = v7;
  v59[0] = sub_26C148A5C();
  v59[1] = v17;
  v57 = MEMORY[0x277CC9318];
  v58 = MEMORY[0x277CC9300];
  *&v55 = v15;
  *(&v55 + 1) = v16;
  v18 = v59[0];
  v19 = v16;
  v20 = v17;
  v21 = __swift_project_boxed_opaque_existential_1(&v55, MEMORY[0x277CC9318]);
  v22 = v15;
  v24 = *v21;
  v23 = v21[1];
  sub_26C0BBAA4(v18, v20);
  sub_26C0BBAA4(v22, v19);
  sub_26C135114(v24, v23, v59);
  sub_26C0BB9B0(v18, v20);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  a2 = v59[0];
  v25 = v49;
  sub_26C148A2C();
  v45 = v50;
  v46 = v47;
  (*(v50 + 16))(v48, v25, v47);
  sub_26C0ED3C8();
  sub_26C148BAC();
  sub_26C0BB9B0(v22, v19);
  (*(v45 + 8))(v25, v46);
  return a2;
}

uint64_t sub_26C0EBCE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1[1];
  v9 = a1[2];
  result = a1[3];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v8 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v8 >> 32;
  }

  else
  {
    v12 = BYTE6(v9);
  }

  if (v12 < result)
  {
    __break(1u);
    return result;
  }

  v13 = *a1;
  v14 = sub_26C14889C();
  v16 = v15;
  v17 = sub_26C0EB64C(a3, v14, v15, &v40);
  v19 = v18;
  result = sub_26C0BB9B0(v14, v16);
  if (v4)
  {
    v20 = v41;
    *a2 = v40;
    *(a2 + 16) = v20;
    return result;
  }

  v45 = type metadata accessor for PAKEServerState(0);
  v21 = *(v45 + 20);
  sub_26C0CF5C4(v3 + v21, &qword_28047A930, qword_26C14C120);
  v22 = sub_26C148BDC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v3 + v21, a3, v22);
  (*(v23 + 56))(v3 + v21, 0, 1, v22);
  v24 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    v25 = 0;
    if (v24 == 2)
    {
      v25 = v17[2];
    }
  }

  else if (v24)
  {
    v25 = v17;
  }

  else
  {
    v25 = 0;
  }

  v26 = v45;
  v27 = (v3 + *(v45 + 24));
  v28 = v27[3];
  v42 = v27[2];
  v43 = v28;
  v44 = v27[4];
  v29 = v27[1];
  v40 = *v27;
  v41 = v29;
  result = sub_26C0CF5C4(&v40, &qword_28047AB90, &qword_26C14CA68);
  *v27 = v13;
  *(v27 + 1) = v17;
  *(v27 + 2) = v19;
  *(v27 + 3) = v25;
  v27[2] = xmmword_26C14A540;
  *(v27 + 6) = 0;
  *(v27 + 7) = 0;
  v27[4] = xmmword_26C14C1D0;
  if (v13 != 0xFFFF || v19 >> 60 == 15)
  {
    return result;
  }

  v30 = 0;
  v31 = v3 + *(v26 + 32);
  v32 = *(v31 + 24);
  v33 = *(v31 + 32);
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_26;
    }

    v30 = *(v32 + 16);
  }

  else
  {
    if (!v34)
    {
      goto LABEL_26;
    }

    v30 = v32;
  }

  sub_26C0BBAA4(v32, v33);
LABEL_26:
  result = sub_26C0BB344(*(v27 + 4), *(v27 + 5));
  *(v27 + 4) = v32;
  *(v27 + 5) = v33;
  *(v27 + 6) = v30;
  if (*(v27 + 2) >> 60 != 15)
  {
    v35 = 0;
    v36 = v3 + *(v26 + 32);
    v37 = *(v36 + 40);
    v38 = *(v36 + 48);
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 == 2)
      {
        v35 = *(v37 + 16);
        goto LABEL_32;
      }
    }

    else if (v39)
    {
      v35 = v37;
LABEL_32:
      sub_26C0BBAA4(v37, v38);
    }

    result = sub_26C0BB344(*(v27 + 7), *(v27 + 8));
    *(v27 + 7) = v37;
    *(v27 + 8) = v38;
    *(v27 + 9) = v35;
  }

  return result;
}

uint64_t static PAKEScheme.fromFeatureFlags()@<X0>(__int16 *a1@<X8>)
{
  v5[3] = &type metadata for SwiftTLSFeatureFlags;
  v5[4] = sub_26C0ECE20();
  v2 = sub_26C14897C();
  result = __swift_destroy_boxed_opaque_existential_1(v5);
  if (v2)
  {
    v4 = 32150;
  }

  else
  {
    v4 = -1;
  }

  *a1 = v4;
  return result;
}

void *sub_26C0EC038(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A980, &qword_26C14A828);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_26C0EC0B4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26C0ECA2C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26C14910C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26C148FCC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26C0EC1EC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26C0EC1EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26C0EC918(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_26C0EC73C((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26C0CDBF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26C0CDBF0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_26C0EC73C((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_26C0EC73C(char *__dst, char *__src, char *a3, unsigned __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 2;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 2;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[2 * v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 2;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    v5 -= 2;
    v16 = v12;
    do
    {
      v17 = (v5 + 2);
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      v5 -= 2;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

void *sub_26C0EC92C(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t _s8SwiftTLS16PAKEServerRecordV2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v30 = *(a1 + 8);
  v31 = *(a1 + 7);
  v28 = *(a1 + 10);
  v29 = *(a1 + 9);
  v24 = *(a1 + 12);
  v25 = *(a1 + 11);
  v20 = *(a1 + 14);
  v21 = *(a1 + 13);
  v17 = *(a1 + 120);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  v10 = *(a2 + 7);
  v11 = *(a2 + 8);
  v26 = *(a2 + 10);
  v27 = *(a2 + 9);
  v22 = *(a2 + 12);
  v23 = *(a2 + 11);
  v18 = *(a2 + 14);
  v19 = *(a2 + 13);
  v15 = *(a1 + 121);
  v16 = *(a2 + 120);
  v14 = *(a2 + 121);
  if (!sub_26C0E6464(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) || !sub_26C0E6464(v2, v3, v6, v7) || !sub_26C0E6464(v4, v5, v8, v9) || !sub_26C0E6464(v31, v30, v10, v11) || !sub_26C0E6464(v29, v28, v27, v26) || !sub_26C0E6464(v25, v24, v23, v22))
  {
    return 0;
  }

  v12 = sub_26C0E6464(v21, v20, v19, v18);
  result = 0;
  if (v12 && ((v17 ^ v16) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

BOOL _s8SwiftTLS23PAKEClientConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v27 = *(a1 + 8);
  v28 = *(a1 + 7);
  v25 = *(a1 + 10);
  v26 = *(a1 + 9);
  v21 = *(a1 + 12);
  v22 = *(a1 + 11);
  v17 = *(a1 + 14);
  v18 = *(a1 + 13);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  v10 = *(a2 + 7);
  v11 = *(a2 + 8);
  v23 = *(a2 + 10);
  v24 = *(a2 + 9);
  v19 = *(a2 + 12);
  v20 = *(a2 + 11);
  v15 = *(a2 + 14);
  v16 = *(a2 + 13);
  v13 = *(a2 + 120);
  v14 = *(a1 + 120);
  return sub_26C0E6464(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) && sub_26C0E6464(v2, v3, v6, v7) && sub_26C0E6464(v4, v5, v8, v9) && sub_26C0E6464(v28, v27, v10, v11) && sub_26C0E6464(v26, v25, v24, v23) && sub_26C0E6464(v22, v21, v20, v19) && sub_26C0E6464(v18, v17, v16, v15) && v14 == v13;
}

uint64_t sub_26C0ECD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26C0ECE20()
{
  result = qword_28047AB60;
  if (!qword_28047AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB60);
  }

  return result;
}

unint64_t sub_26C0ECE78()
{
  result = qword_28047AB68;
  if (!qword_28047AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB68);
  }

  return result;
}

unint64_t sub_26C0ECED0()
{
  result = qword_28047AB70;
  if (!qword_28047AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB70);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26C0ECF50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C0ECFA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26C0ED044(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 122))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C0ED098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

void sub_26C0ED134(uint64_t a1)
{
  sub_26C0ED1C8(319);
  if (v1 <= 0x3F)
  {
    sub_26C148A1C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26C0ED1C8(uint64_t a1)
{
  if (!qword_281590338)
  {
    sub_26C148BDC();
    v1 = sub_26C14902C();
    if (!v2)
    {
      atomic_store(v1, &qword_281590338);
    }
  }
}

void sub_26C0ED248(uint64_t a1)
{
  sub_26C0CFD5C(319, &qword_281592480, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_26C0ED1C8(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, qword_281590350, &_s4PAKEO15PAKEServerHelloVN);
      if (v3 <= 0x3F)
      {
        sub_26C148A6C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26C0ED334(uint64_t *a1, int a2)
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

uint64_t sub_26C0ED37C(uint64_t result, int a2, int a3)
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

unint64_t sub_26C0ED3C8()
{
  result = qword_28047AB80;
  if (!qword_28047AB80)
  {
    sub_26C1489AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB80);
  }

  return result;
}

uint64_t sub_26C0ED420(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_26C0ED46C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

unint64_t sub_26C0ED490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAB8, &qword_26C14CA70);
    v3 = sub_26C1490DC();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      *&v26[128] = *(v4 + 128);
      *&v26[144] = v6;
      *&v26[160] = *(v4 + 160);
      v7 = *(v4 + 80);
      *&v26[64] = *(v4 + 64);
      *&v26[80] = v7;
      v8 = *(v4 + 112);
      *&v26[96] = *(v4 + 96);
      *&v26[112] = v8;
      v9 = *(v4 + 16);
      *v26 = *v4;
      *&v26[16] = v9;
      v10 = *(v4 + 48);
      *&v26[32] = *(v4 + 32);
      *&v26[48] = v10;
      *v27 = *v26;
      *&v27[8] = *&v26[8];
      *&v27[24] = *&v26[24];
      sub_26C0CF314(v26, v25, &qword_28047ABA0, &qword_26C14CA78);
      result = sub_26C0D8418(v27);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 40 * result;
      v14 = *&v27[16];
      *v13 = *v27;
      *(v13 + 16) = v14;
      *(v13 + 32) = *&v27[32];
      v15 = (v3[7] + (result << 7));
      v16 = *&v26[104];
      v17 = *&v26[120];
      v18 = *&v26[136];
      *(v15 + 106) = *&v26[146];
      v15[5] = v17;
      v15[6] = v18;
      v15[4] = v16;
      v19 = *&v26[88];
      v20 = *&v26[72];
      v21 = *&v26[56];
      *v15 = *&v26[40];
      v15[1] = v21;
      v15[2] = v20;
      v15[3] = v19;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_11;
      }

      v3[2] = v24;
      if (!i)
      {

        return v3;
      }

      v4 += 168;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26C0ED644(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26C0EDAD4();
  result = MEMORY[0x26D69BD10](v2, &type metadata for PAKEScheme, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26C11D944(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_26C0ED6B8(void *a1)
{
  v2 = sub_26C0ED490(MEMORY[0x277D84F90]);
  v3 = a1[2];
  if (!v3)
  {
LABEL_22:

    v49 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = 0;
  v5 = v3 - 1;
  v6 = 4;
  do
  {
    v7 = *&a1[v6 + 2];
    v63 = *&a1[v6];
    v64 = v7;
    v8 = *&a1[v6 + 6];
    v65 = *&a1[v6 + 4];
    v66 = v8;
    v9 = *&a1[v6 + 10];
    v67 = *&a1[v6 + 8];
    v68 = v9;
    v69[0] = *&a1[v6 + 12];
    *(v69 + 10) = *(&a1[v6 + 13] + 2);
    v10 = *(&v64 + 1);
    v12 = v65;
    v11 = v66;
    LOWORD(v70) = v63;
    *(&v70 + 1) = *(&v65 + 1);
    *&v71 = v66;
    *(&v71 + 1) = *(&v64 + 1);
    v72 = v65;
    sub_26C0DA570(&v63, v61);
    sub_26C0DA570(&v63, v61);
    sub_26C0BBAA4(*(&v12 + 1), v11);
    sub_26C0BBAA4(v10, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v2;
    v14 = sub_26C0D8418(&v70);
    v16 = *(v2 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      sub_26C14914C();
      __break(1u);

      __break(1u);
      return result;
    }

    v20 = v15;
    if (*(v2 + 24) < v19)
    {
      sub_26C0D8550(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_26C0D8418(&v70);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_30;
      }

LABEL_8:
      if (v20)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v35 = v14;
    sub_26C0DA120();
    v14 = v35;
    if (v20)
    {
LABEL_9:
      v2 = v60;
      v22 = (v60[7] + (v14 << 7));
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v61[2] = v22[2];
      v61[3] = v23;
      v61[0] = v25;
      v61[1] = v24;
      v27 = v22[5];
      v26 = v22[6];
      v28 = v22[4];
      *&v62[10] = *(v22 + 106);
      v61[5] = v27;
      *v62 = v26;
      v61[4] = v28;
      v29 = v63;
      v30 = v64;
      v31 = v66;
      v22[2] = v65;
      v22[3] = v31;
      *v22 = v29;
      v22[1] = v30;
      v32 = v67;
      v33 = v68;
      v34 = v69[0];
      *(v22 + 106) = *(v69 + 10);
      v22[5] = v33;
      v22[6] = v34;
      v22[4] = v32;
      sub_26C0ECD08(v61);
      sub_26C0ED43C(&v70);
      sub_26C0ECD08(&v63);
      if (v5 == v4)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_12:
    v2 = v60;
    v60[(v14 >> 6) + 8] |= 1 << v14;
    v36 = v60[6] + 40 * v14;
    v37 = v72;
    v38 = v71;
    *v36 = v70;
    *(v36 + 16) = v38;
    *(v36 + 32) = v37;
    v39 = (v60[7] + (v14 << 7));
    v40 = v67;
    v41 = v68;
    v42 = v69[0];
    *(v39 + 106) = *(v69 + 10);
    v39[5] = v41;
    v39[6] = v42;
    v39[4] = v40;
    v44 = v65;
    v43 = v66;
    v45 = v64;
    *v39 = v63;
    v39[1] = v45;
    v39[2] = v44;
    v39[3] = v43;
    sub_26C0ECD08(&v63);
    v46 = v60[2];
    v18 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v18)
    {
      goto LABEL_29;
    }

    v60[2] = v47;
    if (v5 == v4)
    {
      goto LABEL_16;
    }

LABEL_14:
    ++v4;
    v6 += 16;
  }

  while (v4 < a1[2]);
  __break(1u);
LABEL_16:
  v48 = a1[2];
  if (!v48)
  {
    goto LABEL_22;
  }

  *&v63 = MEMORY[0x277D84F90];
  sub_26C0CEB5C(0, v48, 0);
  v49 = v63;
  v50 = *(v63 + 16);
  v51 = 4;
  do
  {
    v52 = a1[v51];
    *&v63 = v49;
    v53 = *(v49 + 24);
    if (v50 >= v53 >> 1)
    {
      sub_26C0CEB5C((v53 > 1), v50 + 1, 1);
      v49 = v63;
    }

    *(v49 + 16) = v50 + 1;
    *(v49 + 2 * v50 + 32) = v52;
    v51 += 16;
    ++v50;
    --v48;
  }

  while (v48);

LABEL_23:
  v54 = sub_26C0ED644(v49);

  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = sub_26C0EC038(*(v54 + 16), 0);
    v57 = sub_26C0EC92C(&v63, v56 + 16, v55, v54);
    v58 = v63;

    sub_26C0EDACC(v58);
    if (v57 != v55)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
LABEL_26:
    v56 = MEMORY[0x277D84F90];
  }

  *&v63 = v56;
  sub_26C0EC0B4(&v63);

  return v2;
}

unint64_t sub_26C0EDAD4()
{
  result = qword_28047AB98;
  if (!qword_28047AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AB98);
  }

  return result;
}

uint64_t sub_26C0EDB28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C0EDB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_26C0EDBE8()
{
  result = qword_28047ABA8;
  if (!qword_28047ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ABA8);
  }

  return result;
}

void sub_26C0EDC84(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_26C0EDF10(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F40, &type metadata for NamedGroup);
      if (v3 <= 0x3F)
      {
        sub_26C0CFD5C(319, qword_281591458, &type metadata for SignatureScheme);
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_281591658, &type metadata for CertificateType);
          if (v5 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281590348, &_s8KeyShareO13KeyShareEntryVN);
            if (v6 <= 0x3F)
            {
              sub_26C0EDFA4(319, qword_281590500, type metadata accessor for GeneratedEphemeralPrivateKey);
              if (v7 <= 0x3F)
              {
                sub_26C148BDC();
                if (v8 <= 0x3F)
                {
                  sub_26C0CFD5C(319, &qword_281592480, MEMORY[0x277CC9318]);
                  if (v9 <= 0x3F)
                  {
                    sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
                    if (v10 <= 0x3F)
                    {
                      sub_26C0CFD5C(319, qword_281592488, MEMORY[0x277D837D0]);
                      if (v11 <= 0x3F)
                      {
                        sub_26C0EDFA4(319, &qword_281591EF0, type metadata accessor for GeneralEPSK);
                        if (v12 <= 0x3F)
                        {
                          sub_26C0EDFA4(319, qword_2815914B8, type metadata accessor for PAKEServerState);
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

void sub_26C0EDF10(uint64_t a1)
{
  if (!qword_281590730[0])
  {
    v2 = sub_26C148E9C();
    v3 = sub_26C0FF17C(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v5 = type metadata accessor for ServerSessionKeyManager(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_281590730);
    }
  }
}

void sub_26C0EDFA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C14902C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26C0EE040(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_26C0EDF10(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, qword_281591458, &type metadata for SignatureScheme);
      if (v3 <= 0x3F)
      {
        sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_281592488, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F38, &type metadata for PAKEScheme);
            if (v6 <= 0x3F)
            {
              sub_26C0CFD5C(319, &qword_281591F40, &type metadata for NamedGroup);
              if (v7 <= 0x3F)
              {
                sub_26C0CFD5C(319, qword_281591658, &type metadata for CertificateType);
                if (v8 <= 0x3F)
                {
                  sub_26C0EDFA4(319, qword_2815914B8, type metadata accessor for PAKEServerState);
                  if (v9 <= 0x3F)
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

void sub_26C0EE244(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_26C0EDF10(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, qword_281591458, &type metadata for SignatureScheme);
      if (v3 <= 0x3F)
      {
        sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_281592488, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F38, &type metadata for PAKEScheme);
            if (v6 <= 0x3F)
            {
              sub_26C0CFD5C(319, &qword_281591F40, &type metadata for NamedGroup);
              if (v7 <= 0x3F)
              {
                sub_26C0EDFA4(319, qword_2815914B8, type metadata accessor for PAKEServerState);
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

void sub_26C0EE420(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_26C0EDF10(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, qword_281591458, &type metadata for SignatureScheme);
      if (v3 <= 0x3F)
      {
        sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_281592488, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F40, &type metadata for NamedGroup);
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

void sub_26C0EE5AC(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_26C0EDF10(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
      if (v3 <= 0x3F)
      {
        sub_26C0CFD5C(319, qword_281592488, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, &qword_281591F40, &type metadata for NamedGroup);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C0EE710(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_26C0EDF10(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
      if (v3 <= 0x3F)
      {
        sub_26C0CFD5C(319, qword_281592488, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, &qword_281591F38, &type metadata for PAKEScheme);
          if (v5 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F40, &type metadata for NamedGroup);
            if (v6 <= 0x3F)
            {
              sub_26C0EDFA4(319, qword_2815914B8, type metadata accessor for PAKEServerState);
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

uint64_t __swift_get_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_36Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_26C0EEB10(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_26C0EDF10(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
      if (v3 <= 0x3F)
      {
        sub_26C0CFD5C(319, qword_281592488, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, &qword_281591F38, &type metadata for PAKEScheme);
          if (v5 <= 0x3F)
          {
            sub_26C0CFD5C(319, &qword_281591F40, &type metadata for NamedGroup);
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

uint64_t sub_26C0EEC70(uint64_t a1)
{
  result = type metadata accessor for ServerHandshakeState.IdleState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeState.ClientHelloState(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ServerHandshakeState.ServerHelloState(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ServerHandshakeState.ServerCertificateState(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ServerHandshakeState.ServerFinishedState(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ServerHandshakeState.ReadyState(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26C0EEDA4(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_26C0EDF10(319);
    if (v2 <= 0x3F)
    {
      sub_26C0EEEB8(319, &qword_281590310, &qword_28047ABD0, "|>");
      if (v3 <= 0x3F)
      {
        sub_26C0EEEB8(319, &qword_2815902F0, &qword_28047ABD8, "~>");
        if (v4 <= 0x3F)
        {
          sub_26C0CFD5C(319, qword_2815913C0, &type metadata for PAKEServerRecords);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C0EEEB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26C14902C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26C0EEF0C()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0FEE38(v0, v3, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 1701602409;
  v6 = 0x6946726576726573;
  if (EnumCaseMultiPayload != 6)
  {
    v6 = 0x726F467964616572;
  }

  v7 = 0xD000000000000017;
  if (EnumCaseMultiPayload == 4)
  {
    v7 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v6 = v7;
  }

  v8 = 0xD000000000000019;
  if (EnumCaseMultiPayload == 2)
  {
    v8 = 0x6548726576726573;
  }

  if (EnumCaseMultiPayload)
  {
    v5 = 0x6548746E65696C63;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v5 = v8;
  }

  if (EnumCaseMultiPayload <= 3)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  sub_26C0FEEA0(v3, type metadata accessor for ServerHandshakeState);
  return v9;
}

uint64_t sub_26C0EF0D8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X8>)
{
  v58 = a2;
  v4 = v3;
  v54 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = v49 - v9;
  v10 = sub_26C148BDC();
  v57 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v52 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = v49 - v13;
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v49 - v18;
  v20 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v23);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v4;
  sub_26C0FEE38(v4, v25, type metadata accessor for ServerHandshakeState);
  v51 = v23;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = sub_26C0FEEA0(v25, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_26C0FEF5C(v25, v22, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v26 = a1[3];
  v64[2] = a1[2];
  v64[3] = v26;
  v27 = a1[5];
  v64[4] = a1[4];
  v64[5] = v27;
  v28 = a1[1];
  v64[0] = *a1;
  v64[1] = v28;
  v29 = v65;
  sub_26C0F4B6C(v17, &v62, v22, v64, &v60);
  if (v29)
  {
    result = sub_26C0FEEA0(v22, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v31 = v61;
    v32 = v58;
    *v58 = v60;
    *(v32 + 16) = v31;
    return result;
  }

  v58 = *(&v62 + 1);
  v65 = v62;
  v50 = v63;
  sub_26C0FEF5C(v17, v19, type metadata accessor for ServerHandshakeState.ServerHelloState);
  v33 = v56;
  sub_26C0F5558(v56);
  v34 = v57;
  v35 = *(v57 + 48);
  result = v35(v33, 1, v10);
  if (result == 1)
  {
    goto LABEL_9;
  }

  v49[1] = 0;
  v57 = *(v34 + 32);
  (v57)(v59, v33, v10);
  v36 = v55;
  sub_26C0F5890(v55);
  result = v35(v36, 1, v10);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v37 = v53;
  sub_26C0FEEA0(v53, type metadata accessor for ServerHandshakeState);
  sub_26C0FEEA0(v22, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v38 = v52;
  v39 = v36;
  v40 = v57;
  (v57)(v52, v39, v10);
  sub_26C0FEF5C(v19, v37, type metadata accessor for ServerHandshakeState.ServerHelloState);
  swift_storeEnumTagMultiPayload();
  v41 = type metadata accessor for PartialHandshakeResult(0);
  v42 = v41[5];
  v43 = v10;
  v44 = v54;
  v40(&v54[v42], v38, v43);
  v45 = type metadata accessor for EncryptionLevel(0);
  swift_storeEnumTagMultiPayload();
  v46 = *(*(v45 - 8) + 56);
  v46(&v44[v42], 0, 1, v45);
  v47 = v41[6];
  v40(&v44[v47], v59, v43);
  swift_storeEnumTagMultiPayload();
  result = (v46)(&v44[v47], 0, 1, v45);
  v48 = v58;
  *v44 = v65;
  *(v44 + 1) = v48;
  *(v44 + 2) = v50;
  *&v44[v41[7]] = xmmword_26C14A540;
  return result;
}

uint64_t sub_26C0EF6DC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  v51 = a2;
  v4 = v3;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v4;
  sub_26C0FEE38(v4, v19, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C0FEF5C(v19, v16, type metadata accessor for ServerHandshakeState.ServerHelloState);
    sub_26C0CF314(&v16[v11[5]], v7, &qword_28047ABC8, &unk_26C14CCA0);
    v56 = xmmword_26C14A1B0;
    v57 = 0;
    sub_26C100A40(v53);
    v53 = *(&v56 + 1);
    v20 = v56;
    v49 = v57;
    v21 = v58;
    sub_26C108ABC(v56, *(&v56 + 1), v57, &v54);
    if (v21)
    {
      sub_26C0CF5C4(v7, &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C0FEEA0(v16, type metadata accessor for ServerHandshakeState.ServerHelloState);
      result = sub_26C0BB9B0(v20, v53);
      v23 = v55;
      v24 = v51;
      *v51 = v54;
      *(v24 + 16) = v23;
    }

    else
    {
      v58 = 0;
      sub_26C0FEEA0(v52, type metadata accessor for ServerHandshakeState);
      sub_26C0FEF5C(v16, v14, type metadata accessor for ServerHandshakeState.ServerHelloState);
      sub_26C0CF55C(v7, &v10[v8[5]], &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C0FEE38(v14, v10, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v25 = &v14[v11[6]];
      v26 = *v25;
      LOBYTE(v25) = v25[2];
      v27 = &v10[v8[6]];
      *v27 = v26;
      v27[2] = v25;
      v28 = &v14[v11[7]];
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = &v10[v8[7]];
      *v32 = v29;
      v32[1] = v30;
      v32[2] = v31;
      v33 = &v14[v11[8]];
      v51 = v20;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = &v10[v8[8]];
      *v36 = v34;
      *(v36 + 1) = v35;
      *&v10[v8[9]] = *&v14[v11[9]];
      v10[v8[10]] = v14[v11[10]];
      v10[v8[11]] = v14[v11[11]];
      v37 = &v14[v11[12]];
      LOWORD(v34) = *v37;
      LOBYTE(v37) = v37[2];
      v38 = &v10[v8[12]];
      *v38 = v34;
      v38[2] = v37;
      v39 = &v14[v11[13]];
      LOWORD(v34) = *v39;
      LOBYTE(v39) = v39[2];
      v40 = &v10[v8[13]];
      *v40 = v34;
      v40[2] = v39;
      v10[v8[14]] = v14[v11[15]];
      sub_26C0CF314(&v14[v11[16]], &v10[v8[15]], &qword_28047A888, &qword_26C14A5B8);
      v41 = v14[v11[17]];
      sub_26C0BB37C(v29, v30);

      sub_26C0FEEA0(v14, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v10[v8[16]] = v41;
      sub_26C0FEF5C(v10, v52, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      swift_storeEnumTagMultiPayload();
      v42 = type metadata accessor for PartialHandshakeResult(0);
      v43 = v42[5];
      v44 = type metadata accessor for EncryptionLevel(0);
      v45 = *(*(v44 - 8) + 56);
      v46 = v50;
      v45(v50 + v43, 1, 1, v44);
      result = (v45)(v46 + v42[6], 1, 1, v44);
      v47 = v53;
      *v46 = v51;
      v46[1] = v47;
      v46[2] = v49;
      *(v46 + v42[7]) = xmmword_26C14A540;
    }
  }

  else
  {
    result = sub_26C0FEEA0(v19, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0EFC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0FEE38(v2, v14, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_26C0FEF5C(v14, v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    sub_26C0F5BC8(v8, &v25, v11, &v23);
    if (v3)
    {
      result = sub_26C0FEEA0(v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v16 = v24;
      *a1 = v23;
      *(a1 + 16) = v16;
    }

    else
    {
      sub_26C0FEEA0(v2, type metadata accessor for ServerHandshakeState);
      sub_26C0FEEA0(v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v22 = v25;
      v17 = v26;
      sub_26C0FEF5C(v8, v2, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      swift_storeEnumTagMultiPayload();
      v18 = type metadata accessor for PartialHandshakeResult(0);
      v19 = v18[5];
      v20 = type metadata accessor for EncryptionLevel(0);
      v21 = *(*(v20 - 8) + 56);
      v21(a2 + v19, 1, 1, v20);
      result = (v21)(a2 + v18[6], 1, 1, v20);
      *a2 = v22;
      *(a2 + 16) = v17;
      *(a2 + v18[7]) = xmmword_26C14A540;
    }
  }

  else
  {
    result = sub_26C0FEEA0(v14, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0EFF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0FEE38(v2, v14, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_26C0FEF5C(v14, v11, type metadata accessor for ServerHandshakeState.ServerCertificateState);
    sub_26C0F6280(v8, &v25, v11, &v23);
    if (v3)
    {
      result = sub_26C0FEEA0(v11, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v16 = v24;
      *a1 = v23;
      *(a1 + 16) = v16;
    }

    else
    {
      sub_26C0FEEA0(v2, type metadata accessor for ServerHandshakeState);
      sub_26C0FEEA0(v11, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v22 = v25;
      v17 = v26;
      sub_26C0FEF5C(v8, v2, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      swift_storeEnumTagMultiPayload();
      v18 = type metadata accessor for PartialHandshakeResult(0);
      v19 = v18[5];
      v20 = type metadata accessor for EncryptionLevel(0);
      v21 = *(*(v20 - 8) + 56);
      v21(a2 + v19, 1, 1, v20);
      result = (v21)(a2 + v18[6], 1, 1, v20);
      *a2 = v22;
      *(a2 + 16) = v17;
      *(a2 + v18[7]) = xmmword_26C14A540;
    }
  }

  else
  {
    result = sub_26C0FEEA0(v14, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0F0228@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v103 = a1;
  v3 = v2;
  v92 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v93 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v78 - v8;
  v9 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v10 = MEMORY[0x28223BE20](v9);
  v82 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - v16;
  v18 = sub_26C148BDC();
  v90 = *(v18 - 8);
  v91 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v78 - v21;
  v89 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v23 = MEMORY[0x28223BE20](v89);
  v80 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v81 = &v78 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v78 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v78 - v30;
  v32 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v3;
  sub_26C0FEE38(v3, v37, type metadata accessor for ServerHandshakeState);
  v87 = v35;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_26C0FEF5C(v37, v34, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v39 = v96;
      sub_26C0F6B60(v29, &v99, v34, &v97);
      if (v39)
      {
        result = sub_26C0FEEA0(v34, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v41 = v98;
        v42 = v103;
        *v103 = v97;
        *(v42 + 16) = v41;
        return result;
      }

      *&v96 = 0;
      v103 = *(&v99 + 1);
      v48 = v99;
      v93 = v100;
      sub_26C0FEF5C(v29, v31, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      sub_26C0F7068(v17);
      v50 = v90;
      v49 = v91;
      result = (*(v90 + 48))(v17, 1, v91);
      if (result != 1)
      {
        v51 = v88;
        sub_26C0FEEA0(v88, type metadata accessor for ServerHandshakeState);
        sub_26C0FEEA0(v34, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v52 = *(v50 + 32);
        v52(v22, v17, v49);
        sub_26C0FEF5C(v31, v51, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        swift_storeEnumTagMultiPayload();
        v53 = type metadata accessor for PartialHandshakeResult(0);
        v54 = v92;
        v55 = &v92[v53[5]];
        v52(v55, v22, v49);
LABEL_18:
        v75 = type metadata accessor for EncryptionLevel(0);
        swift_storeEnumTagMultiPayload();
        v76 = *(*(v75 - 8) + 56);
        v76(v55, 0, 1, v75);
        result = v76(&v54[v53[6]], 1, 1, v75);
        v77 = v103;
        *v54 = v48;
        *(v54 + 1) = v77;
        *(v54 + 2) = v93;
        *&v54[v53[7]] = xmmword_26C14A540;
        return result;
      }

      goto LABEL_21;
    }

LABEL_20:
    result = sub_26C0FEEA0(v37, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = v95;
  sub_26C0FEF5C(v37, v95, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  if (*(v43 + v9[10]) & 1) == 0 && (*(v43 + v9[12] + 2))
  {
    __break(1u);
    goto LABEL_20;
  }

  v44 = v94;
  sub_26C0CF314(v43 + v9[5], v94, &qword_28047ABC8, &unk_26C14CCA0);
  v45 = v93;
  v46 = v96;
  sub_26C108ECC(&v99, v93);
  if (v46)
  {
    sub_26C0CF5C4(v44, &qword_28047ABC8, &unk_26C14CCA0);
    v96 = v99;
    v47 = v100;
    result = sub_26C0FEEA0(v43, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v63 = v103;
    *v103 = v96;
    *(v63 + 16) = v47;
    return result;
  }

  v56 = v86;
  v101 = v86;
  v102 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
  v58 = v85;
  (*(v85 + 16))(boxed_opaque_existential_1, v45, v56);
  __swift_project_boxed_opaque_existential_1(&v99, v101);
  sub_26C14880C();
  (*(v58 + 8))(v45, v56);
  v60 = *(&v97 + 1);
  v59 = v97;
  __swift_destroy_boxed_opaque_existential_1(&v99);
  v61 = 0;
  v62 = v60 >> 62;
  if ((v60 >> 62) > 1)
  {
    v54 = v92;
    if (v62 == 2)
    {
      v61 = *(v59 + 16);
    }
  }

  else
  {
    v54 = v92;
    if (v62)
    {
      v61 = v59;
    }
  }

  sub_26C0FD540(v59, v60, v61, &v97, &v99);
  *&v96 = 0;
  v103 = *(&v99 + 1);
  v92 = v99;
  v93 = v100;
  v64 = v82;
  sub_26C0FEE38(v43, v82, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  v65 = v83;
  sub_26C0CF314(v44, v83, &qword_28047ABC8, &unk_26C14CCA0);
  v66 = v80;
  sub_26C0FD2A0(v64, v65, v80);
  sub_26C0BB9B0(v59, v60);
  sub_26C0CF5C4(v44, &qword_28047ABC8, &unk_26C14CCA0);
  v67 = v81;
  sub_26C0FEF5C(v66, v81, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  v68 = v84;
  sub_26C0F7068(v84);
  v69 = v68;
  v71 = v90;
  v70 = v91;
  result = (*(v90 + 48))(v68, 1, v91);
  if (result != 1)
  {
    v72 = v88;
    sub_26C0FEEA0(v88, type metadata accessor for ServerHandshakeState);
    sub_26C0FEEA0(v43, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v73 = *(v71 + 32);
    v74 = v79;
    v73(v79, v69, v70);
    sub_26C0FEF5C(v67, v72, type metadata accessor for ServerHandshakeState.ServerFinishedState);
    swift_storeEnumTagMultiPayload();
    v53 = type metadata accessor for PartialHandshakeResult(0);
    v55 = &v54[v53[5]];
    v73(v55, v74, v70);
    v48 = v92;
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_26C0F0D0C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047ABB0);
  __swift_project_value_buffer(v0, qword_28047ABB0);
  return sub_26C148A8C();
}

uint64_t sub_26C0F0D8C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v1;
  v314 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v316 = v2;
  v278 = v15;
  v315 = type metadata accessor for ServerHandshakeState.IdleState(0);
  MEMORY[0x28223BE20](v315);
  v282 = v256 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  MEMORY[0x28223BE20](v17 - 8);
  v287 = v256 - v18;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v291);
  v292 = v256 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v285 = v256 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v306 = v256 - v23;
  v24 = sub_26C14896C();
  v288 = *(v24 - 8);
  v289 = v24;
  MEMORY[0x28223BE20](v24);
  v295 = v256 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v280 = v256 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v305 = v256 - v29;
  v30 = sub_26C148BDC();
  v300 = *(v30 - 8);
  v301 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v281 = v256 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v286 = v256 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v307 = (v256 - v36);
  MEMORY[0x28223BE20](v35);
  v299 = v256 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v293 = v256 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v311 = v256 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v279 = v256 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v309 = (v256 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v302 = v256 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v303 = v256 - v50;
  MEMORY[0x28223BE20](v49);
  v312 = v256 - v51;
  v310 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  v308 = *(v310 - 1);
  MEMORY[0x28223BE20](v310);
  v290 = v256 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABE0, &qword_26C14CDD8);
  v54 = MEMORY[0x28223BE20](v53 - 8);
  v284 = v256 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v283 = v256 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v298 = v256 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v297 = v256 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v296 = v256 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v294 = (v256 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v304 = v256 - v67;
  MEMORY[0x28223BE20](v66);
  v313 = v256 - v68;
  v69 = *v14;
  *&v317 = v14;
  v70 = v14[1];
  if (v69 != 3 || v70 != 3 || (v71 = *v12, v277 = v12[1], v72 = v12[2], (sub_26C0BC82C(*(v317 + 88), &unk_287CC99A8) & 1) == 0))
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v89 = sub_26C148A9C();
    __swift_project_value_buffer(v89, qword_28047ABB0);
    v90 = v317;
    sub_26C0CF298(v317, v534);
    sub_26C0CF298(v90, v534);
    sub_26C0CF298(v90, v534);
    sub_26C0CF298(v90, v534);
    v91 = sub_26C148A7C();
    v92 = sub_26C14900C();
    if (!os_log_type_enabled(v91, v92))
    {
      sub_26C0FED20(v90);
      sub_26C0FED20(v90);
      sub_26C0FED20(v90);
      sub_26C0FED20(v90);

LABEL_22:
      *v4 = xmmword_26C14A8F0;
      *(v4 + 16) = 2;
      v534[0] = xmmword_26C14A8F0;
      LOBYTE(v534[1]) = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    v547 = v4;
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *&v534[0] = v94;
    *v93 = 136315906;
    v95 = sub_26C0D52F0(771);
    v97 = sub_26C0E5DE8(v95, v96, v534);

    *(v93 + 4) = v97;
    *(v93 + 12) = 2080;
    v98 = sub_26C0D52F0(v69 | (v70 << 8));
    v100 = sub_26C0E5DE8(v98, v99, v534);
    v101 = v317;

    *(v93 + 14) = v100;
    *(v93 + 22) = 2048;
    v102 = *(v101 + 88);
    v103 = *(v102 + 16);
    sub_26C0FED20(v101);
    *(v93 + 24) = v103;
    sub_26C0FED20(v101);
    *(v93 + 32) = 1024;
    if (v103)
    {
      v104 = *(v102 + 32);
      sub_26C0FED20(v101);
      if (!v104)
      {
        v105 = 1;
LABEL_21:
        *(v93 + 34) = v105;
        sub_26C0FED20(v101);
        _os_log_impl(&dword_26C0B5000, v91, v92, "client hello legacy version and/or legacy compression methods incorrect. version expected %s, got %s, legacy compression methods expected [0], got array of length %ld with first value == 0? %{BOOL}d.", v93, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x26D69C3A0](v94, -1, -1);
        MEMORY[0x26D69C3A0](v93, -1, -1);

        v4 = v547;
        goto LABEL_22;
      }
    }

    else
    {
      sub_26C0FED20(v101);
    }

    v105 = 0;
    goto LABEL_21;
  }

  v274 = v72;
  v275 = v71;
  v547 = v4;
  v73 = v315;
  v74 = v316;
  if (*(v316 + *(v315 + 24)))
  {
    v75 = *(v316 + *(v315 + 24));
  }

  else
  {
    v75 = MEMORY[0x277D84F90];
  }

  v276 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v76 = *(v74 + v276[10]);
  v77 = (v74 + *(v73 + 32));
  v78 = *v77;
  v79 = v77[1];
  *(v534 + 8) = 0u;
  *(&v534[2] + 8) = 0u;
  *&v534[0] = MEMORY[0x277D84FA0];
  *(&v534[3] + 1) = 0;
  *(&v534[1] + 8) = 0u;
  *&v535[0] = 0xF000000000000000;
  BYTE8(v535[2]) = 0;
  *(&v535[1] + 8) = 0u;
  *(v535 + 8) = 0u;
  *&v539 = 0;
  *(&v539 + 1) = &unk_287CC99D0;
  v538 = 0u;
  *&v540 = &unk_287CC99F8;
  *(&v540 + 1) = &unk_287CC9A20;
  v537 = 0u;
  v536 = 0u;
  *&v541 = &unk_287CC9A48;
  *(&v541 + 1) = v75;
  v273 = v76;
  LOBYTE(v542) = v76;
  *(&v542 + 1) = v10;
  *&v543[0] = v8;
  *(&v543[0] + 1) = v78;
  *&v543[1] = v79;
  v314 &= 1u;
  BYTE8(v543[1]) = v314;
  v80 = *(v317 + 96);
  v81 = *(v80 + 16);

  sub_26C0FED74(v78, v79);
  sub_26C0CEB4C(v10, v8);
  if (v81)
  {
    v82 = (v80 + 32);
    v83 = v547;
    v84 = v317;
    while (1)
    {
      v85 = *v82;
      v505 = v82[1];
      v504 = v85;
      v86 = v82[2];
      v87 = v82[3];
      v88 = v82[4];
      LOBYTE(v509) = *(v82 + 80);
      v508 = v88;
      v507 = v87;
      v506 = v86;
      v489 = v82[2];
      v490 = v82[3];
      v491 = v82[4];
      LOBYTE(v492) = *(v82 + 80);
      v487 = *v82;
      v488 = v82[1];
      sub_26C0BE40C(&v504, &v519);
      sub_26C0F7E30(&v487, &v472);
      if (v5)
      {
        break;
      }

      v5 = 0;
      sub_26C0BE468(&v504);
      v82 = (v82 + 88);
      if (!--v81)
      {
        goto LABEL_24;
      }
    }

    v531 = v541;
    v532 = v542;
    v533[0] = v543[0];
    *(v533 + 9) = *(v543 + 9);
    v527 = v537;
    v528 = v538;
    v529 = v539;
    v530 = v540;
    v523 = v535[0];
    v524 = v535[1];
    v525 = v535[2];
    v526 = v536;
    v519 = v534[0];
    v520 = v534[1];
    v521 = v534[2];
    v522 = v534[3];
    sub_26C0FEDB4(&v519);
    result = sub_26C0BE468(&v504);
    v107 = v473;
    v108 = v472;
LABEL_38:
    *v83 = v108;
    *(v83 + 16) = v107;
    return result;
  }

  v83 = v547;
  v84 = v317;
LABEL_24:
  v531 = v541;
  v532 = v542;
  v533[0] = v543[0];
  *(v533 + 9) = *(v543 + 9);
  v527 = v537;
  v528 = v538;
  v529 = v539;
  v530 = v540;
  v523 = v535[0];
  v524 = v535[1];
  v525 = v535[2];
  v526 = v536;
  v519 = v534[0];
  v520 = v534[1];
  v521 = v534[2];
  v522 = v534[3];
  v516 = v541;
  v517 = v542;
  v518[0] = v543[0];
  *(v518 + 9) = *(v543 + 9);
  v512 = v537;
  v513 = v538;
  v514 = v539;
  v515 = v540;
  v508 = v535[0];
  v509 = v535[1];
  v510 = v535[2];
  v511 = v536;
  v504 = v534[0];
  v505 = v534[1];
  v506 = v534[2];
  v507 = v534[3];
  sub_26C0FEDE4(&v519, &v487);
  sub_26C0FC28C(&v502);
  if (v5)
  {
    v484 = v516;
    v485 = v517;
    v486[0] = v518[0];
    *(v486 + 9) = *(v518 + 9);
    v480 = v512;
    v481 = v513;
    v482 = v514;
    v483 = v515;
    v476 = v508;
    v477 = v509;
    v478 = v510;
    v479 = v511;
    v472 = v504;
    v473 = v505;
    v474 = v506;
    v475 = v507;
    sub_26C0FEDB4(&v472);
    v499 = v541;
    v500 = v542;
    v501[0] = v543[0];
    *(v501 + 9) = *(v543 + 9);
    v495 = v537;
    v496 = v538;
    v497 = v539;
    v498 = v540;
    v491 = v535[0];
    v492 = v535[1];
    v493 = v535[2];
    v494 = v536;
    v487 = v534[0];
    v488 = v534[1];
    v489 = v534[2];
    v490 = v534[3];
    result = sub_26C0FEDB4(&v487);
    v107 = v503;
    v108 = v502;
    goto LABEL_38;
  }

  v499 = v541;
  v500 = v542;
  v501[0] = v543[0];
  *(v501 + 9) = *(v543 + 9);
  v495 = v537;
  v496 = v538;
  v497 = v539;
  v498 = v540;
  v491 = v535[0];
  v492 = v535[1];
  v493 = v535[2];
  v494 = v536;
  v487 = v534[0];
  v488 = v534[1];
  v489 = v534[2];
  v490 = v534[3];
  sub_26C0FEDB4(&v487);
  v109 = sub_26C0FCD7C(*(v84 + 80), &unk_287CC9A70, v468);
  if (*(&v521 + 1) && (v110 = *(*(&v521 + 1) + 16)) != 0)
  {
    v111 = 0;
    do
    {
      v112 = *(*(&v521 + 1) + 32 + v111++);
      v113 = *(*(&v530 + 1) + 16);
      v114 = (*(&v530 + 1) + 32);
      while (v113)
      {
        v115 = *v114++;
        --v113;
        if (v115 == v112)
        {
          v116 = 0;
          goto LABEL_37;
        }
      }

      LOBYTE(v112) = 0;
      v116 = 1;
    }

    while (v111 != v110);
  }

  else
  {
    LOBYTE(v112) = 0;
    v116 = 1;
  }

LABEL_37:
  v271 = v116;
  v272 = v109;
  v484 = v541;
  v485 = v542;
  v486[0] = v543[0];
  *(v486 + 9) = *(v543 + 9);
  v480 = v537;
  v481 = v538;
  v482 = v539;
  v483 = v540;
  v476 = v535[0];
  v477 = v535[1];
  v478 = v535[2];
  v479 = v536;
  v472 = v534[0];
  v473 = v534[1];
  v474 = v534[2];
  v475 = v534[3];
  v468[12] = v541;
  v468[13] = v542;
  *v469 = v543[0];
  *&v469[9] = *(v543 + 9);
  v468[8] = v537;
  v468[9] = v538;
  v468[10] = v539;
  v468[11] = v540;
  v468[4] = v535[0];
  v468[5] = v535[1];
  v468[6] = v535[2];
  v468[7] = v536;
  v468[0] = v534[0];
  v468[1] = v534[1];
  v468[2] = v534[2];
  v468[3] = v534[3];
  sub_26C0FEDE4(&v472, v456);
  sub_26C0FBEE4(&v467, &v470);
  v454[12] = v541;
  v454[13] = v542;
  v455[0] = v543[0];
  *(v455 + 9) = *(v543 + 9);
  v454[8] = v537;
  v454[9] = v538;
  v454[10] = v539;
  v454[11] = v540;
  v454[4] = v535[0];
  v454[5] = v535[1];
  v454[6] = v535[2];
  v454[7] = v536;
  v454[0] = v534[0];
  v454[1] = v534[1];
  v454[2] = v534[2];
  v454[3] = v534[3];
  sub_26C0FEDB4(v454);
  v464 = v541;
  v465 = v542;
  v466[0] = v543[0];
  *(v466 + 9) = *(v543 + 9);
  v460 = v537;
  v461 = v538;
  v462 = v539;
  v463 = v540;
  v456[4] = v535[0];
  v457 = v535[1];
  v458 = v535[2];
  v459 = v536;
  v456[0] = v534[0];
  v456[1] = v534[1];
  v456[2] = v534[2];
  v456[3] = v534[3];
  v452[14] = v541;
  v452[15] = v542;
  v453[0] = v543[0];
  *(v453 + 9) = *(v543 + 9);
  v452[10] = v537;
  v452[11] = v538;
  v452[12] = v539;
  v452[13] = v540;
  v452[6] = v535[0];
  v452[7] = v535[1];
  v452[8] = v535[2];
  v452[9] = v536;
  v452[2] = v534[0];
  v452[3] = v534[1];
  v117 = v470;
  v118 = v471;
  v452[4] = v534[2];
  v452[5] = v534[3];
  sub_26C0FEDE4(v456, v450);
  v268 = sub_26C0FBD44(v452);
  v450[12] = v541;
  v450[13] = v542;
  v451[0] = v543[0];
  *(v451 + 9) = *(v543 + 9);
  v450[8] = v537;
  v450[9] = v538;
  v450[10] = v539;
  v450[11] = v540;
  v450[4] = v535[0];
  v450[5] = v535[1];
  v450[6] = v535[2];
  v450[7] = v536;
  v450[0] = v534[0];
  v450[1] = v534[1];
  v450[2] = v534[2];
  v450[3] = v534[3];
  sub_26C0FEDB4(v450);
  if (v118)
  {
    v266 = v117;
    v267 = v118;
    v119 = 0;
    v120 = 0;
    v269 = 0;
    v270 = 0xF000000000000000;
    v121 = *(&v457 + 1);
    v122 = v313;
  }

  else
  {
    v447 = v541;
    v448 = v542;
    v449[0] = v543[0];
    *(v449 + 9) = *(v543 + 9);
    v443 = v537;
    v444 = v538;
    v445 = v539;
    v446 = v540;
    v439 = v535[0];
    v440 = v535[1];
    v441 = v535[2];
    v442 = v536;
    v435 = v534[0];
    v436 = v534[1];
    v437 = v534[2];
    v438 = v534[3];
    v432 = v541;
    v433 = v542;
    v434[0] = v543[0];
    *(v434 + 9) = *(v543 + 9);
    v428 = v537;
    v429 = v538;
    v430 = v539;
    v431 = v540;
    v424 = v535[0];
    v425 = v535[1];
    v426 = v535[2];
    v427 = v536;
    v420 = v534[0];
    v421 = v534[1];
    v422 = v534[2];
    v423 = v534[3];
    LOWORD(v367) = v117;
    sub_26C0FEDE4(&v435, &v402);
    sub_26C0FC07C(&v367, v382, &v385);
    v123 = v117;
    v122 = v313;
    v266 = v123;
    v267 = 0;
    v121 = *(&v440 + 1);
    v414 = v432;
    v415 = v433;
    v416[0] = v434[0];
    *(v416 + 9) = *(v434 + 9);
    v410 = v428;
    v411 = v429;
    v412 = v430;
    v413 = v431;
    v406 = v424;
    v407 = v425;
    v408 = v426;
    v409 = v427;
    v402 = v420;
    v403 = v421;
    v404 = v422;
    v405 = v423;
    sub_26C0FEDB4(&v402);
    v119 = v385;
    v269 = *(&v385 + 1);
    v120 = *(&v386 + 1);
    v270 = v386;
  }

  if (v272 != 4866)
  {
    v317 = xmmword_26C14CBF0;
    v420 = xmmword_26C14CBF0;
    LOBYTE(v421) = 2;
    v124 = v119;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0FEE1C(v124, v269, v270);
    v447 = v541;
    v448 = v542;
    v449[0] = v543[0];
    *(v449 + 9) = *(v543 + 9);
    v443 = v537;
    v444 = v538;
    v445 = v539;
    v446 = v540;
    v439 = v535[0];
    v440 = v535[1];
    v441 = v535[2];
    v442 = v536;
    v435 = v534[0];
    v436 = v534[1];
    v437 = v534[2];
    v438 = v534[3];
    result = sub_26C0FEDB4(&v435);
    v125 = v547;
    *v547 = v317;
    *(v125 + 16) = 2;
    return result;
  }

  v264 = v121;
  v265 = v119;
  v263 = v539;
  if (qword_28047A630 != -1)
  {
    swift_once();
  }

  v447 = v541;
  v448 = v542;
  v449[0] = v543[0];
  *(v449 + 9) = *(v543 + 9);
  v443 = v537;
  v444 = v538;
  v445 = v539;
  v446 = v540;
  v439 = v535[0];
  v440 = v535[1];
  v441 = v535[2];
  v442 = v536;
  v435 = v534[0];
  v436 = v534[1];
  v437 = v534[2];
  v438 = v534[3];
  v432 = v541;
  v433 = v542;
  v434[0] = v543[0];
  *(v434 + 9) = *(v543 + 9);
  v428 = v537;
  v429 = v538;
  v430 = v539;
  v431 = v540;
  v424 = v535[0];
  v425 = v535[1];
  v426 = v535[2];
  v427 = v536;
  v420 = v534[0];
  v421 = v534[1];
  v422 = v534[2];
  v423 = v534[3];
  v418 = word_280480300;
  v419 = qword_280480308;
  sub_26C0FEDE4(&v435, &v402);
  sub_26C0F8638(&v418, &v417, v122);
  v262 = v120;
  v400[12] = v432;
  v400[13] = v433;
  v401[0] = v434[0];
  *(v401 + 9) = *(v434 + 9);
  v400[8] = v428;
  v400[9] = v429;
  v400[10] = v430;
  v400[11] = v431;
  v400[4] = v424;
  v400[5] = v425;
  v400[6] = v426;
  v400[7] = v427;
  v400[0] = v420;
  v400[1] = v421;
  v400[2] = v422;
  v400[3] = v423;
  sub_26C0FEDB4(v400);
  v414 = v541;
  v415 = v542;
  v416[0] = v543[0];
  *(v416 + 9) = *(v543 + 9);
  v410 = v537;
  v411 = v538;
  v412 = v539;
  v413 = v540;
  v406 = v535[0];
  v407 = v535[1];
  v408 = v535[2];
  v409 = v536;
  v402 = v534[0];
  v403 = v534[1];
  v404 = v534[2];
  v405 = v534[3];
  v388 = v534[3];
  v387 = v534[2];
  v392 = v536;
  v391 = v535[2];
  v390 = v535[1];
  v389 = v535[0];
  v396 = v540;
  v395 = v539;
  v394 = v538;
  v393 = v537;
  *(v399 + 9) = *(v543 + 9);
  v399[0] = v543[0];
  v398 = v542;
  v397 = v541;
  v386 = v534[1];
  v385 = v534[0];
  v126 = *(v316 + v276[7]);
  sub_26C0FEDE4(&v402, v382);
  sub_26C0FC76C(v126, &v384);
  v259 = v127;
  v260 = 0;
  v261 = v128;
  v130 = v129;
  v131 = BYTE8(v408);
  v382[12] = v397;
  v382[13] = v398;
  v383[0] = v399[0];
  *(v383 + 9) = *(v399 + 9);
  v382[8] = v393;
  v382[9] = v394;
  v382[10] = v395;
  v382[11] = v396;
  v382[4] = v389;
  v382[5] = v390;
  v382[6] = v391;
  v382[7] = v392;
  v382[0] = v385;
  v382[1] = v386;
  v382[2] = v387;
  v382[3] = v388;
  sub_26C0FEDB4(v382);
  if (v131 != 1 || *(v316 + v276[8]) != 1)
  {
    goto LABEL_77;
  }

  if (qword_28047A750 != -1)
  {
    goto LABEL_142;
  }

  while (1)
  {
    v132 = sub_26C148A9C();
    __swift_project_value_buffer(v132, qword_28047ABB0);
    v133 = sub_26C148A7C();
    v134 = sub_26C148FFC();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_26C0B5000, v133, v134, "Client requested early data and server configured to allow early data. Checking conditions...", v135, 2u);
      MEMORY[0x26D69C3A0](v135, -1, -1);
    }

    v136 = v304;
    sub_26C0CF314(v313, v304, &qword_28047ABE0, &qword_26C14CDD8);
    v137 = *(v308 + 48);
    if (v137(v136, 1, v310) == 1)
    {
      sub_26C0CF5C4(v304, &qword_28047ABE0, &qword_26C14CDD8);
      goto LABEL_56;
    }

    v138 = v290;
    sub_26C0FEF5C(v304, v290, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
    if (*(v138 + v310[5]))
    {
      sub_26C0FEEA0(v290, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
LABEL_56:
      sub_26C0CF314(v313, v294, &qword_28047ABE0, &qword_26C14CDD8);
      v139 = sub_26C148A7C();
      v140 = sub_26C148FFC();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *&v367 = v142;
        *v141 = 136315138;
        v143 = v294;
        v144 = v137(v294, 1, v310);
        if (v144 == 1)
        {
          v145 = 0xD000000000000012;
        }

        else
        {
          v145 = 0xD00000000000001CLL;
        }

        if (v144 == 1)
        {
          v146 = "assword verifier";
        }

        else
        {
          v146 = "psk not negotiated";
        }

        sub_26C0CF5C4(v143, &qword_28047ABE0, &qword_26C14CDD8);
        v147 = sub_26C0E5DE8(v145, v146 | 0x8000000000000000, &v367);

        *(v141 + 4) = v147;
        _os_log_impl(&dword_26C0B5000, v139, v140, "Early data not authorized: %s", v141, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v142);
        MEMORY[0x26D69C3A0](v142, -1, -1);
        MEMORY[0x26D69C3A0](v141, -1, -1);
      }

      else
      {

        sub_26C0CF5C4(v294, &qword_28047ABE0, &qword_26C14CDD8);
      }

      goto LABEL_77;
    }

    v148 = sub_26C148A7C();
    v149 = sub_26C148FFC();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_26C0B5000, v148, v149, "Early data compatibly psk negotiated. Continuing checks...", v150, 2u);
      MEMORY[0x26D69C3A0](v150, -1, -1);
    }

    if (!v407)
    {
      goto LABEL_76;
    }

    v151 = sub_26C148A7C();
    v152 = sub_26C148FFC();
    v153 = os_log_type_enabled(v151, v152);
    if (!v261 || v130)
    {
      if (v153)
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&dword_26C0B5000, v151, v152, "Server does not support the ALPN protocol associated with early data. Rejecting early data.", v155, 2u);
        MEMORY[0x26D69C3A0](v155, -1, -1);
      }

LABEL_76:
      sub_26C0FEEA0(v290, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
LABEL_77:
      LODWORD(v290) = 0;
      goto LABEL_78;
    }

    if (v153)
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_26C0B5000, v151, v152, "Server supports ALPN protocol associated with early data. Accepting early data.", v154, 2u);
      MEMORY[0x26D69C3A0](v154, -1, -1);
    }

    sub_26C0FEEA0(v290, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
    LODWORD(v290) = 1;
LABEL_78:
    v156 = v267;
    v157 = sub_26C0ED46C(&v357);
    v267 = v156;
    if ((v156 & 1) != 0 && (v268 & 0x10000) != 0 && (*(v308 + 48))(v313, 1, v310, v157) == 1)
    {
      v379 = v541;
      v380 = v542;
      v381[0] = v543[0];
      *(v381 + 9) = *(v543 + 9);
      v375 = v537;
      v376 = v538;
      v377 = v539;
      v378 = v540;
      v371 = v535[0];
      v372 = v535[1];
      v373 = v535[2];
      v374 = v536;
      v367 = v534[0];
      v368 = v534[1];
      v369 = v534[2];
      v370 = v534[3];
      v304 = v539;
      if (v539 && (v294 = *(&v381[0] + 1)) != 0)
      {
        v158 = v374;
        v159 = v375;
        v160 = v376;
        v256[1] = *&v381[1];
        v334 = v374;
        v335 = v375;
        v336 = v376;
        v161 = v304;
        v337 = v304;
        sub_26C0FEDE4(&v367, &v318);
        v257 = v158;
        v276 = v159;
        v258 = v160;
        sub_26C0FEF00(v158, *(&v158 + 1), v159, *(&v159 + 1), v160, *(&v160 + 1), v161);
        v162 = v260;
        sub_26C0E806C(&v334, v294, &v332, &v338);
        v260 = v162;
        if (v162)
        {

          sub_26C0FEE1C(v265, v269, v270);
          v329 = v541;
          v330 = v542;
          v331[0] = v543[0];
          *(v331 + 9) = *(v543 + 9);
          v325 = v537;
          v326 = v538;
          v327 = v539;
          v328 = v540;
          v322 = v535[0];
          v323 = v535[1];
          v324[0] = v535[2];
          v324[1] = v536;
          v318 = v534[0];
          v319 = v534[1];
          v320 = v534[2];
          v321 = v534[3];
          sub_26C0FEDB4(&v318);
          sub_26C0E091C(v257, *(&v257 + 1), v276, *(&v159 + 1), v258, *(&v258 + 1), v304);
          sub_26C0FEDB4(&v367);
          v163 = v333;
          v164 = v547;
          *v547 = v332;
          *(v164 + 16) = v163;
          return sub_26C0CF5C4(v313, &qword_28047ABE0, &qword_26C14CDD8);
        }

        sub_26C0E091C(v257, *(&v257 + 1), v276, *(&v159 + 1), v258, *(&v258 + 1), v304);
        sub_26C0FEDB4(&v367);
      }

      else
      {
        v344[0] = v363;
        v344[1] = v364;
        v345 = v365;
        v346 = v366;
        v340 = v359;
        v341 = v360;
        v342 = v361;
        v343 = v362;
        v338 = v357;
        v339 = v358;
      }

      v353 = v344[0];
      v354 = v344[1];
      v355 = v345;
      v356 = v346;
      v349 = v340;
      v350 = v341;
      v351 = v342;
      v352 = v343;
      v165 = v338;
      v166 = v339;
    }

    else
    {
      v353 = v363;
      v354 = v364;
      v355 = v365;
      v356 = v366;
      v349 = v359;
      v350 = v360;
      v351 = v361;
      v352 = v362;
      v165 = v357;
      v166 = v358;
    }

    v347 = v165;
    v348 = v166;
    v167 = v270;
    v168 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
    v169 = *(v168 - 8);
    v170 = *(v169 + 56);
    v170(v312, 1, 1, v168);
    v171 = type metadata accessor for PAKEServerState(0);
    v304 = *(v171 - 8);
    v294 = *(v304 + 56);
    (v294)(v311, 1, 1, v171);
    v172 = v267;
    if (v167 >> 60 == 15)
    {
      v172 = 1;
    }

    if (v172)
    {
      break;
    }

    LOWORD(v367) = v266;
    sub_26C0BBAA4(v269, v167);
    v178 = v302;
    sub_26C0DDFF0(&v367, v302);
    v179 = *(v169 + 48);
    result = v179(v178, 1, v168);
    if (result == 1)
    {
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v180 = v312;
    sub_26C0CF5C4(v312, &qword_28047A960, "L6");
    v181 = v178;
    v182 = v303;
    sub_26C0FEF5C(v181, v303, type metadata accessor for GeneratedEphemeralPrivateKey);
    v170(v182, 0, 1, v168);
    v183 = v182;
    v130 = "L6";
    sub_26C0CF55C(v183, v180, &qword_28047A960, "L6");
    v184 = v309;
    sub_26C0CF314(v180, v309, &qword_28047A960, "L6");
    result = v179(v184, 1, v168);
    if (result == 1)
    {
      goto LABEL_144;
    }

    v185 = v270 >> 62;
    if ((v270 >> 62) <= 1)
    {
      if (!v185)
      {
        v186 = BYTE6(v270);
        goto LABEL_107;
      }

      v190 = v269;
      v186 = v269 >> 32;
      goto LABEL_105;
    }

    if (v185 == 2)
    {
      v190 = v269;
      v186 = *(v269 + 24);
LABEL_105:
      sub_26C0BBAA4(v190, v270);
      goto LABEL_107;
    }

    v186 = 0;
LABEL_107:
    if (v186 >= v262)
    {
      v192 = v269;
      v191 = v270;
      v193 = sub_26C14889C();
      v195 = v194;
      v196 = v265;
      sub_26C0FEE1C(v265, v192, v191);
      v197 = v309;
      v198 = v260;
      v303 = sub_26C0DBB54(v307, v193, v195, &v318);
      v304 = v199;
      v302 = v198;
      if (v198)
      {
        sub_26C0CF5C4(v312, &qword_28047A960, "L6");
        sub_26C0BB9B0(v193, v195);

        sub_26C0FEE1C(v196, v192, v191);
        sub_26C0CF5C4(&v347, &qword_28047AB88, &qword_26C14CA60);
        sub_26C0FEE1C(v196, v192, v191);
        v379 = v541;
        v380 = v542;
        v381[0] = v543[0];
        *(v381 + 9) = *(v543 + 9);
        v375 = v537;
        v376 = v538;
        v377 = v539;
        v378 = v540;
        v371 = v535[0];
        v372 = v535[1];
        v373 = v535[2];
        v374 = v536;
        v367 = v534[0];
        v368 = v534[1];
        v369 = v534[2];
        v370 = v534[3];
        sub_26C0FEDB4(&v367);
        v200 = v319;
        v201 = v547;
        *v547 = v318;
        *(v201 + 16) = v200;
        sub_26C0FEEA0(v197, type metadata accessor for GeneratedEphemeralPrivateKey);
        goto LABEL_127;
      }

      sub_26C0FEE1C(v196, v192, v191);
      sub_26C0BB9B0(v193, v195);
      sub_26C0FEEA0(v197, type metadata accessor for GeneratedEphemeralPrivateKey);
      v309 = *(v300 + 32);
      (v309)(v299, v307, v301);
LABEL_111:
      sub_26C0CF314(v316 + *(v315 + 20), v305, &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C14895C();
      v202 = v296;
      sub_26C0CF314(v313, v296, &qword_28047ABE0, &qword_26C14CDD8);
      v203 = *(v308 + 48);
      if (v203(v202, 1, v310) == 1)
      {
        sub_26C0CF5C4(v296, &qword_28047ABE0, &qword_26C14CDD8);
        v204 = 1;
      }

      else
      {
        v205 = v296;
        sub_26C0FEE38(v296, v306, type metadata accessor for GeneralEPSK);
        sub_26C0FEEA0(v205, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
        v204 = 0;
      }

      v206 = type metadata accessor for GeneralEPSK(0);
      v207 = *(v206 - 8);
      v307 = *(v207 + 56);
      v308 = v206;
      v296 = v207 + 56;
      v307(v306, v204, 1);
      v208 = v297;
      sub_26C0CF314(v313, v297, &qword_28047ABE0, &qword_26C14CDD8);
      if (v203(v208, 1, v310) == 1)
      {
        sub_26C0CF5C4(v297, &qword_28047ABE0, &qword_26C14CDD8);
        v209 = 0;
        v315 = 0;
        v210 = 0xF000000000000000;
      }

      else
      {
        v211 = v297;
        v212 = (v297 + v310[6]);
        v209 = *v212;
        v210 = v212[1];
        v315 = v212[2];
        sub_26C0BBAA4(v209, v210);
        sub_26C0FEEA0(v211, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
      }

      v213 = v298;
      sub_26C0CF314(v313, v298, &qword_28047ABE0, &qword_26C14CDD8);
      v214 = v203(v213, 1, v310);
      if (v214 == 1)
      {
        sub_26C0CF5C4(v298, &qword_28047ABE0, &qword_26C14CDD8);
        v215 = 0;
      }

      else
      {
        v215 = *(v298 + v310[7]);
        sub_26C0FEEA0(v298, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
      }

      sub_26C0CF314(v305, v292, &qword_28047A870, &qword_26C14A5A0);
      if (swift_getEnumCaseMultiPayload() >= 4)
      {
        v219 = v302;
        sub_26C0FD7EC(v275, v277, v274, v306, v273, v209, v210, v315, v287, v215, v214 == 1, &v318);
        v302 = v219;
        if (!v219)
        {
          sub_26C0BB344(v209, v210);
          sub_26C0CF5C4(&v347, &qword_28047AB88, &qword_26C14CA60);
          sub_26C0CF5C4(v306, &qword_28047A890, &qword_26C14A5C0);
          (*(v288 + 8))(v295, v289);
          v226 = v305;
          sub_26C0CF5C4(v305, &qword_28047A870, &qword_26C14A5A0);
          sub_26C0CF55C(v287, v226, &qword_28047A948, &qword_26C14A7F0);
          swift_storeEnumTagMultiPayload();
          sub_26C0FEE38(v316, v282, type metadata accessor for ServerHandshakeState.IdleState);
          sub_26C0CF55C(v226, v280, &qword_28047ABC8, &unk_26C14CCA0);
          sub_26C0CF55C(v312, v279, &qword_28047A960, "L6");
          v547 = (v300 + 32);
          (v309)(v281, v299, v301);
          v379 = v541;
          v380 = v542;
          v381[0] = v543[0];
          *(v381 + 9) = *(v543 + 9);
          v375 = v537;
          v376 = v538;
          v377 = v539;
          v378 = v540;
          v371 = v535[0];
          v372 = v535[1];
          v373 = v535[2];
          v374 = v536;
          v367 = v534[0];
          v368 = v534[1];
          v369 = v534[2];
          v370 = v534[3];
          v315 = *&v535[0];
          v316 = *(&v534[3] + 1);
          v312 = *(&v535[0] + 1);
          sub_26C0BB37C(*(&v534[3] + 1), *&v535[0]);
          sub_26C0FEDB4(&v367);
          v227 = v259;
          if (!v261)
          {
            v227 = 0;
          }

          v306 = v227;
          v228 = v283;
          sub_26C0CF314(v313, v283, &qword_28047ABE0, &qword_26C14CDD8);
          if (v203(v228, 1, v310) == 1)
          {
            sub_26C0CF5C4(v283, &qword_28047ABE0, &qword_26C14CDD8);
            v229 = 1;
          }

          else
          {
            v230 = v283;
            sub_26C0FEE38(v283, v285, type metadata accessor for GeneralEPSK);
            sub_26C0FEEA0(v230, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
            v229 = 0;
          }

          (v307)(v285, v229, 1, v308);
          v231 = v284;
          sub_26C0CF314(v313, v284, &qword_28047ABE0, &qword_26C14CDD8);
          if (v203(v231, 1, v310) == 1)
          {
            sub_26C0CF5C4(v284, &qword_28047ABE0, &qword_26C14CDD8);
            v232 = 0;
          }

          else
          {
            v232 = *(v284 + v310[5]);
            sub_26C0FEEA0(v284, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
          }

          v233 = v263 != 0;
          v234 = v264 != 0;
          v235 = *(v317 + 56);
          v544 = *(v317 + 40);
          v545 = v235;
          v546 = *(v317 + 72);
          v236 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
          v237 = v278;
          v238 = v311;
          sub_26C0CF314(v311, v278 + v236[21], &qword_28047A888, &qword_26C14A5B8);
          v239 = v282;
          sub_26C0FEE38(v282, v237, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          sub_26C0FEEA0(v239, type metadata accessor for ServerHandshakeState.IdleState);
          sub_26C0CF55C(v280, v237 + v236[5], &qword_28047ABC8, &unk_26C14CCA0);
          *(v237 + v236[6]) = v272;
          v240 = v237 + v236[7];
          v241 = v267;
          *v240 = v266;
          *(v240 + 2) = v241;
          v242 = v237 + v236[8];
          v243 = BYTE2(v268);
          *v242 = v268;
          *(v242 + 2) = v243 & 1;
          v244 = (v237 + v236[9]);
          *v244 = v112;
          v244[1] = v271;
          v245 = (v237 + v236[10]);
          v247 = v269;
          v246 = v270;
          *v245 = v265;
          v245[1] = v247;
          v245[2] = v246;
          v245[3] = v262;
          v248 = v237 + v236[14];
          v249 = v545;
          *v248 = v544;
          *(v248 + 16) = v249;
          *(v248 + 32) = v546;
          sub_26C0CF55C(v279, v237 + v236[11], &qword_28047A960, "L6");
          (v309)(v237 + v236[12], v281, v301);
          v250 = (v237 + v236[13]);
          v251 = v304;
          *v250 = v303;
          v250[1] = v251;
          v252 = (v237 + v236[15]);
          v253 = v315;
          *v252 = v316;
          v252[1] = v253;
          v252[2] = v312;
          v254 = (v237 + v236[16]);
          v255 = v261;
          *v254 = v306;
          v254[1] = v255;
          *(v237 + v236[17]) = v234;
          sub_26C0CF55C(v285, v237 + v236[18], &qword_28047A890, &qword_26C14A5C0);
          *(v237 + v236[19]) = v232;
          *(v237 + v236[20]) = v290;
          *(v237 + v236[22]) = v314;
          *(v237 + v236[23]) = v233;
          sub_26C0CF5C4(v238, &qword_28047A888, &qword_26C14A5B8);
          return sub_26C0CF5C4(v313, &qword_28047ABE0, &qword_26C14CDD8);
        }

        sub_26C0BB344(v303, v304);
        sub_26C0BB344(v209, v210);

        sub_26C0FEE1C(v265, v269, v270);
        sub_26C0CF5C4(&v347, &qword_28047AB88, &qword_26C14CA60);
        sub_26C0CF5C4(v306, &qword_28047A890, &qword_26C14A5C0);
        (*(v288 + 8))(v295, v289);
        (*(v300 + 8))(v299, v301);
        sub_26C0CF5C4(v312, &qword_28047A960, "L6");
        v217 = *(&v318 + 1);
        v216 = v318;
        v218 = v319;
      }

      else
      {

        sub_26C0CF5C4(v292, &qword_28047A870, &qword_26C14A5A0);
        v367 = xmmword_26C14A570;
        v216 = 2;
        LOBYTE(v368) = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BB344(v303, v304);
        sub_26C0BB344(v209, v210);
        sub_26C0FEE1C(v265, v269, v270);
        sub_26C0CF5C4(&v347, &qword_28047AB88, &qword_26C14CA60);
        sub_26C0CF5C4(v306, &qword_28047A890, &qword_26C14A5C0);
        (*(v288 + 8))(v295, v289);
        (*(v300 + 8))(v299, v301);
        sub_26C0CF5C4(v312, &qword_28047A960, "L6");
        v217 = 0;
        v218 = 2;
      }

      sub_26C0CF5C4(v305, &qword_28047ABC8, &unk_26C14CCA0);
      v379 = v541;
      v380 = v542;
      v381[0] = v543[0];
      *(v381 + 9) = *(v543 + 9);
      v375 = v537;
      v376 = v538;
      v377 = v539;
      v378 = v540;
      v371 = v535[0];
      v372 = v535[1];
      v373 = v535[2];
      v374 = v536;
      v367 = v534[0];
      v368 = v534[1];
      v369 = v534[2];
      v370 = v534[3];
      sub_26C0FEDB4(&v367);
      v220 = v547;
      *v547 = v216;
      *(v220 + 1) = v217;
      *(v220 + 16) = v218;
      goto LABEL_127;
    }

    __break(1u);
LABEL_142:
    swift_once();
  }

  v324[0] = v353;
  v324[1] = v354;
  v325 = v355;
  v326 = v356;
  v320 = v349;
  v321 = v350;
  v322 = v351;
  v323 = v352;
  v318 = v347;
  v319 = v348;
  if (sub_26C0ED420(&v318) == 1)
  {

    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v173 = sub_26C148A9C();
    __swift_project_value_buffer(v173, qword_28047ABB0);
    v174 = sub_26C148A7C();
    v175 = sub_26C14900C();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      *v176 = 0;
      _os_log_impl(&dword_26C0B5000, v174, v175, "no group or PAKE negotiated", v176, 2u);
      MEMORY[0x26D69C3A0](v176, -1, -1);
    }

    v177 = v547;
    *v547 = xmmword_26C14A570;
    *(v177 + 16) = 2;
    v338 = xmmword_26C14A570;
    LOBYTE(v339) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0FEE1C(v265, v269, v270);
    sub_26C0CF5C4(&v347, &qword_28047AB88, &qword_26C14CA60);
    sub_26C0CF5C4(v312, &qword_28047A960, "L6");
    v379 = v541;
    v380 = v542;
    v381[0] = v543[0];
    *(v381 + 9) = *(v543 + 9);
    v375 = v537;
    v376 = v538;
    v377 = v539;
    v378 = v540;
    v371 = v535[0];
    v372 = v535[1];
    v373 = v535[2];
    v374 = v536;
    v367 = v534[0];
    v368 = v534[1];
    v369 = v534[2];
    v370 = v534[3];
    sub_26C0FEDB4(&v367);
LABEL_127:
    sub_26C0CF5C4(v311, &qword_28047A888, &qword_26C14A5B8);
    return sub_26C0CF5C4(v313, &qword_28047ABE0, &qword_26C14CDD8);
  }

  v187 = v325;
  v309 = *(&v325 + 1);
  v188 = v326;
  v342 = v322;
  v343 = v323;
  v344[0] = v324[0];
  *(v344 + 10) = *(v324 + 10);
  v338 = v318;
  v339 = v319;
  v340 = v320;
  v341 = v321;
  sub_26C0CF314(&v347, &v367, &qword_28047AB88, &qword_26C14CA60);
  sub_26C0CF314(&v347, &v367, &qword_28047AB88, &qword_26C14CA60);
  sub_26C0DA570(&v318, &v367);
  v189 = v260;
  sub_26C0EAFA4(&v338, &v334, v293);
  if (v189)
  {
    sub_26C0CF5C4(v312, &qword_28047A960, "L6");
    sub_26C0BB9B0(v309, v188);

    sub_26C0ECD08(&v318);
    sub_26C0CF5C4(&v347, &qword_28047AB88, &qword_26C14CA60);
    sub_26C0CF5C4(&v347, &qword_28047AB88, &qword_26C14CA60);
    sub_26C0FEE1C(v265, v269, v270);
    v379 = v541;
    v380 = v542;
    v381[0] = v543[0];
    *(v381 + 9) = *(v543 + 9);
    v375 = v537;
    v376 = v538;
    v377 = v539;
    v378 = v540;
    v371 = v535[0];
    v372 = v535[1];
    v373 = v535[2];
    v374 = v536;
    v367 = v534[0];
    v368 = v534[1];
    v369 = v534[2];
    v370 = v534[3];
    sub_26C0FEDB4(&v367);
    v224 = v335;
    v225 = v547;
    *v547 = v334;
    *(v225 + 16) = v224;
    goto LABEL_127;
  }

  v221 = v293;
  (v294)(v293, 0, 1, v171);
  v222 = v221;
  v223 = v311;
  sub_26C0FF20C(v222, v311, &qword_28047A888, &qword_26C14A5B8);
  LOWORD(v338) = v187;
  *(&v338 + 1) = v309;
  v339 = v188;
  result = (*(v304 + 48))(v223, 1, v171);
  if (result != 1)
  {
    sub_26C0EBCE0(&v338, &v334, v286);
    v302 = 0;
    sub_26C0CF5C4(&v347, &qword_28047AB88, &qword_26C14CA60);
    sub_26C0ECD08(&v318);
    sub_26C0BB9B0(v309, v188);
    v309 = *(v300 + 32);
    (v309)(v299, v286, v301);
    v303 = 0;
    v304 = 0xF000000000000000;
    goto LABEL_111;
  }

LABEL_145:
  __break(1u);
  return result;
}

double sub_26C0F4B6C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v89 = a5;
  v83 = a4;
  v85 = a2;
  v84 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v79 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &v76 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v92);
  v91 = &v76 - v12;
  v13 = sub_26C148BDC();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  *&v93 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  *&v96 = &v76 - v16;
  v17 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v18 = MEMORY[0x28223BE20](v17);
  v80 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v76 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v90 = &v76 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v76 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v88 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v76 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v78 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = a3 + v17[5];
  v101 = &v76 - v36;
  v37 = a3;
  v38 = v17;
  sub_26C0CF314(v35, &v76 - v36, &qword_28047ABC8, &unk_26C14CCA0);
  sub_26C0CF314(v37 + v17[18], v31, &qword_28047A890, &qword_26C14A5C0);
  v39 = type metadata accessor for GeneralEPSK(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  v86 = v40 + 48;
  v87 = v41;
  if (v41(v31, 1, v39) == 1)
  {
    v77 = *(v37 + v17[17]);
  }

  else
  {
    v77 = 0;
  }

  sub_26C0CF5C4(v31, &qword_28047A890, &qword_26C14A5C0);
  v42 = v22;
  v43 = v26;
  if (qword_28047A750 != -1)
  {
    swift_once();
  }

  v44 = sub_26C148A9C();
  __swift_project_value_buffer(v44, qword_28047ABB0);
  sub_26C0FEE38(v37, v26, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v45 = v90;
  sub_26C0FEE38(v37, v90, type metadata accessor for ServerHandshakeState.ClientHelloState);
  sub_26C0FEE38(v37, v42, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v46 = sub_26C148A7C();
  v47 = sub_26C148FFC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v76 = v42;
    v49 = v48;
    *v48 = 67109632;
    v50 = v38;
    v51 = v43 + v38[18];
    v52 = v88;
    sub_26C0CF314(v51, v88, &qword_28047A890, &qword_26C14A5C0);
    v53 = v87(v52, 1, v39) != 1;
    sub_26C0CF5C4(v52, &qword_28047A890, &qword_26C14A5C0);
    sub_26C0FEEA0(v43, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v49[1] = v53;
    *(v49 + 4) = 1024;
    v54 = *(v45 + v50[17]);
    sub_26C0FEEA0(v45, type metadata accessor for ServerHandshakeState.ClientHelloState);
    *(v49 + 10) = v54;
    *(v49 + 7) = 1024;
    v55 = *(v76 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 40));
    sub_26C0FEEA0(v76, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v49[4] = v55;
    _os_log_impl(&dword_26C0B5000, v46, v47, "selectedPSK? = %{BOOL}d, pskNegotiationAttempted? = %{BOOL}d, useRawEPSKs? = %{BOOL}d", v49, 0x14u);
    MEMORY[0x26D69C3A0](v49, -1, -1);
  }

  else
  {
    v50 = v38;
    sub_26C0FEEA0(v42, type metadata accessor for ServerHandshakeState.ClientHelloState);
    sub_26C0FEEA0(v45, type metadata accessor for ServerHandshakeState.ClientHelloState);
    sub_26C0FEEA0(v43, type metadata accessor for ServerHandshakeState.ClientHelloState);
  }

  v57 = v94;
  v56 = v95;
  v58 = *(v94 + 16);
  v59 = v93;
  v58(v93, v37 + v50[12], v95);
  sub_26C0FF17C(&qword_28047AC00, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  sub_26C148BAC();
  v60 = v91;
  sub_26C0CF314(v101, v91, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      v62 = v82;
      sub_26C0CF55C(v60, v82, &qword_28047A948, &qword_26C14A7F0);
      v99 = xmmword_26C14A1B0;
      v100 = 0;
      sub_26C10089C();
      v63 = v79;
      sub_26C0CF314(v62, v79, &qword_28047A948, &qword_26C14A7F0);
      v64 = v59;
      v65 = v96;
      v58(v64, v96, v56);
      v66 = v99;
      v67 = v100;
      sub_26C0BBAA4(v99, *(&v99 + 1));
      v68 = v81;
      sub_26C11C240(v63, v93, v66, *(&v66 + 1), v67, v77, v81);
      sub_26C0CF5C4(v62, &qword_28047A948, &qword_26C14A7F0);
      (*(v94 + 8))(v65, v95);
      v69 = v101;
      sub_26C0CF5C4(v101, &qword_28047A870, &qword_26C14A5A0);
      sub_26C0CF55C(v68, v69, &qword_28047A9C8, &qword_26C14D2A0);
      swift_storeEnumTagMultiPayload();
      v96 = v99;
      v70 = v100;
      v71 = v80;
      sub_26C0FEE38(v37, v80, type metadata accessor for ServerHandshakeState.ClientHelloState);
      v72 = v78;
      sub_26C0CF314(v69, v78, &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C0FCEE0(v71, v72, v84);
      sub_26C0CF5C4(v69, &qword_28047ABC8, &unk_26C14CCA0);
      v73 = v85;
      result = *&v96;
      *v85 = v96;
      *(v73 + 2) = v70;
      return result;
    }
  }

  else
  {
    sub_26C0CF5C4(v60, &qword_28047A870, &qword_26C14A5A0);
  }

  v93 = xmmword_26C14A570;
  v97 = xmmword_26C14A570;
  v98 = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  (*(v57 + 8))(v96, v56);
  sub_26C0CF5C4(v101, &qword_28047ABC8, &unk_26C14CCA0);
  v75 = v89;
  result = *&v93;
  *v89 = v93;
  *(v75 + 16) = 2;
  return result;
}

uint64_t sub_26C0F5558@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_26C0CF314(v2, &v22 - v11, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_7:
      v14 = sub_26C148BDC();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    sub_26C0CF55C(v12, v9, &qword_28047A9C8, &qword_26C14D2A0);
    v19 = *(v7 + 40);
    v20 = sub_26C148BDC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v9[v19], v20);
    sub_26C0CF5C4(v9, &qword_28047A9C8, &qword_26C14D2A0);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26C0CF55C(v12, v6, &qword_28047A970, "DG");
    v16 = *(v4 + 40);
    v17 = sub_26C148BDC();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, &v6[v16], v17);
    sub_26C0CF5C4(v6, &qword_28047A970, "DG");
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t sub_26C0F5890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_26C0CF314(v2, &v22 - v11, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_7:
      v14 = sub_26C148BDC();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    sub_26C0CF55C(v12, v9, &qword_28047A9C8, &qword_26C14D2A0);
    v19 = *(v7 + 44);
    v20 = sub_26C148BDC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v9[v19], v20);
    sub_26C0CF5C4(v9, &qword_28047A9C8, &qword_26C14D2A0);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26C0CF55C(v12, v6, &qword_28047A970, "DG");
    v16 = *(v4 + 44);
    v17 = sub_26C148BDC();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, &v6[v16], v17);
    sub_26C0CF5C4(v6, &qword_28047A970, "DG");
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

double sub_26C0F5BC8(uint64_t a1, __int128 *a2, uint64_t a3, _OWORD *a4)
{
  v68 = a4;
  v62 = a1;
  v63 = a2;
  v73 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v73);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C148E2C();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v59 - v12;
  v14 = sub_26C148D8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  sub_26C0CF314(a3 + *(v18 + 20), v13, &qword_28047AC08, &qword_26C14CDF0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26C0CF5C4(v13, &qword_28047AC08, &qword_26C14CDF0);
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v19 = sub_26C148A9C();
    __swift_project_value_buffer(v19, qword_28047ABB0);
    v20 = sub_26C148A7C();
    v21 = sub_26C14900C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26C0B5000, v20, v21, "server attempting to send Certificate message but was not configured with a signing key. EPSK or PAKE negotiation probably failed.", v22, 2u);
      MEMORY[0x26D69C3A0](v22, -1, -1);
    }

    v23 = v68;
    *v68 = xmmword_26C14CC00;
    *(v23 + 16) = 2;
    v71 = xmmword_26C14CC00;
    LOBYTE(v72) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v25 = a3 + *(v73 + 20);
    v60 = v10;
    sub_26C0CF314(v25, v10, &qword_28047ABC8, &unk_26C14CCA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A928, &unk_26C14A7D0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26C14A550;
    v27 = v64;
    sub_26C148D2C();
    v28 = sub_26C148DDC();
    v30 = v29;
    (*(v65 + 8))(v27, v66);
    v31 = 0;
    v32 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v32 == 2)
      {
        v31 = *(v28 + 16);
      }
    }

    else if (v32)
    {
      v31 = v28;
    }

    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    v33 = MEMORY[0x277D84F90];
    *(v26 + 48) = v31;
    *(v26 + 56) = v33;
    v71 = xmmword_26C14A1B0;
    v72 = 0;
    sub_26C100D6C(0, 0xC000000000000000, 0, v26);
    v34 = v60;
    v35 = v67;
    sub_26C108ABC(v71, *(&v71 + 1), v72, &v69);
    v36 = v73;
    if (v35)
    {
      sub_26C0BB9B0(0, 0xC000000000000000);

      sub_26C0CF5C4(v34, &qword_28047ABC8, &unk_26C14CCA0);
      (*(v15 + 8))(v17, v14);
      sub_26C0BB9B0(v71, *(&v71 + 1));
      v37 = v70;
      result = *&v69;
      v38 = v68;
      *v68 = v69;
      *(v38 + 16) = v37;
    }

    else
    {
      v68 = 0;
      sub_26C0BB9B0(0, 0xC000000000000000);

      (*(v15 + 8))(v17, v14);
      v39 = v61;
      sub_26C0FEE38(a3, v61, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v40 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
      v41 = v62;
      sub_26C0CF55C(v34, v62 + v40[5], &qword_28047ABC8, &unk_26C14CCA0);
      sub_26C0FEE38(v39, v41, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v42 = v39 + v36[6];
      v43 = *v42;
      LOBYTE(v42) = *(v42 + 2);
      v44 = v41 + v40[6];
      *v44 = v43;
      *(v44 + 2) = v42;
      v45 = (v39 + v36[7]);
      v46 = *v45;
      v47 = v45[1];
      v48 = v45[2];
      v49 = (v41 + v40[7]);
      *v49 = v46;
      v49[1] = v47;
      v49[2] = v48;
      v50 = (v39 + v36[8]);
      v51 = *v50;
      v52 = v50[1];
      v53 = (v41 + v40[8]);
      *v53 = v51;
      v53[1] = v52;
      *(v41 + v40[9]) = *(v39 + v36[9]);
      *(v41 + v40[10]) = *(v39 + v36[11]);
      v54 = v39 + v36[13];
      LOWORD(v51) = *v54;
      LOBYTE(v54) = *(v54 + 2);
      v55 = v41 + v40[11];
      *v55 = v51;
      *(v55 + 2) = v54;
      *(v41 + v40[12]) = *(v39 + v36[14]);
      v56 = *(v39 + v36[16]);
      sub_26C0BB37C(v46, v47);

      sub_26C0FEEA0(v39, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      *(v41 + v40[13]) = v56;
      v57 = v72;
      result = *&v71;
      v58 = v63;
      *v63 = v71;
      *(v58 + 2) = v57;
    }
  }

  return result;
}

uint64_t sub_26C0F6280(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v91 = a4;
  v81 = a1;
  v82 = a2;
  v5 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v5);
  v80 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C148DBC();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v85 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v76 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v76 - v13;
  v15 = sub_26C148D8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  sub_26C0CF314(a3 + *(v19 + 20), v14, &qword_28047AC08, &qword_26C14CDF0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26C0CF5C4(v14, &qword_28047AC08, &qword_26C14CDF0);
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v20 = sub_26C148A9C();
    __swift_project_value_buffer(v20, qword_28047ABB0);
    v21 = sub_26C148A7C();
    v22 = sub_26C14900C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26C0B5000, v21, v22, "server attempting to send Certificate message but was not configured with a signing key. shouldn't get here", v23, 2u);
      MEMORY[0x26D69C3A0](v23, -1, -1);
    }

    v24 = v91;
    *v91 = xmmword_26C14CC00;
    *(v24 + 16) = 2;
    v89 = xmmword_26C14CC00;
    LOBYTE(v90) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  (*(v16 + 32))(v18, v14, v15);
  sub_26C0CF314(a3 + *(v5 + 20), v11, &qword_28047ABC8, &unk_26C14CCA0);
  v26 = (a3 + *(v5 + 24));
  if (v26[1])
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v27 = sub_26C148A9C();
    __swift_project_value_buffer(v27, qword_28047ABB0);
    v28 = sub_26C148A7C();
    v29 = sub_26C14900C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v16;
      v31 = v15;
      v32 = v18;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26C0B5000, v28, v29, "missing negotiated signature algorithm in server certificate verify", v33, 2u);
      v34 = v33;
      v18 = v32;
      v15 = v31;
      v16 = v30;
      MEMORY[0x26D69C3A0](v34, -1, -1);
    }

    v35 = v91;
    *v91 = xmmword_26C14A8E0;
    *(v35 + 16) = 2;
    v89 = xmmword_26C14A8E0;
    LOBYTE(v90) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0CF5C4(v11, &qword_28047ABC8, &unk_26C14CCA0);
    return (*(v16 + 8))(v18, v15);
  }

  v36 = *v26;
  v37 = v86;
  sub_26C0D257C(&v87, &v89);
  if (v37)
  {
    sub_26C0CF5C4(v11, &qword_28047ABC8, &unk_26C14CCA0);
    v38 = v88;
    v39 = v91;
    *v91 = v87;
    *(v39 + 16) = v38;
    return (*(v16 + 8))(v18, v15);
  }

  v78 = a3;
  v79 = v36;
  v41 = *(&v89 + 1);
  v40 = v89;
  result = v90;
  v42 = *(&v89 + 1) >> 62;
  if ((*(&v89 + 1) >> 62) > 1)
  {
    v43 = v85;
    if (v42 == 2)
    {
      v44 = *(v89 + 24);
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v43 = v85;
    if (v42)
    {
      v44 = v89 >> 32;
    }

    else
    {
      v44 = BYTE14(v89);
    }
  }

  v85 = v5;
  *&v86 = 0;
  if (v44 < v90)
  {
    __break(1u);
    return result;
  }

  v45 = sub_26C14889C();
  v47 = v46;
  sub_26C0BB9B0(v40, v41);
  *&v89 = v45;
  *(&v89 + 1) = v47;
  sub_26C0BE710();
  v48 = v86;
  sub_26C148D7C();
  if (v48)
  {

    v86 = xmmword_26C14A900;
    v89 = xmmword_26C14A900;
    LOBYTE(v90) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v45, v47);
    sub_26C0CF5C4(v11, &qword_28047ABC8, &unk_26C14CCA0);
    v49 = v91;
    *v91 = v86;
    *(v49 + 16) = 2;
    return (*(v16 + 8))(v18, v15);
  }

  v76 = v45;
  v77 = v47;
  v50 = sub_26C148D9C();
  v52 = v51;
  (*(v83 + 1))(v43, v84);
  v53 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    v54 = 0;
    if (v53 == 2)
    {
      v54 = *(v50 + 16);
    }
  }

  else if (v53)
  {
    v54 = v50;
  }

  else
  {
    v54 = 0;
  }

  v89 = xmmword_26C14A1B0;
  v90 = 0;
  sub_26C100F0C(v79, v50, v52, v54);
  v55 = v52;
  v56 = v90;
  *&v86 = *(&v89 + 1);
  v84 = v89;
  sub_26C108ABC(v89, *(&v89 + 1), v90, &v87);
  v83 = v18;
  v91 = 0;
  sub_26C0BB9B0(v76, v77);
  sub_26C0BB9B0(v50, v55);
  v57 = v56;
  v58 = v85;
  v59 = v80;
  sub_26C0FEE38(v78, v80, type metadata accessor for ServerHandshakeState.ServerCertificateState);
  v60 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v61 = v81;
  sub_26C0CF55C(v11, v81 + v60[5], &qword_28047ABC8, &unk_26C14CCA0);
  v62 = (v61 + v60[7]);
  sub_26C0FEE38(v59, v61, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v63 = (v59 + v58[7]);
  v64 = *v63;
  v65 = v63[1];
  v66 = v63[2];
  v67 = (v61 + v60[6]);
  *v67 = v64;
  v67[1] = v65;
  v67[2] = v66;
  v68 = (v59 + v58[8]);
  v69 = v68[1];
  *v62 = *v68;
  v62[1] = v69;
  *(v61 + v60[8]) = *(v59 + v58[9]);
  *(v61 + v60[9]) = *(v59 + v58[10]);
  v70 = v59 + v58[11];
  v71 = *v70;
  LOBYTE(v70) = *(v70 + 2);
  v72 = v61 + v60[10];
  *v72 = v71;
  *(v72 + 2) = v70;
  *(v61 + v60[11]) = *(v59 + v58[12]);
  LOBYTE(v58) = *(v59 + v58[13]);
  sub_26C0BB37C(v64, v65);

  sub_26C0FEEA0(v59, type metadata accessor for ServerHandshakeState.ServerCertificateState);
  *(v61 + v60[12]) = v58;
  v74 = v82;
  v73 = v83;
  v75 = v86;
  *v82 = v84;
  v74[1] = v75;
  v74[2] = v57;
  return (*(v16 + 8))(v73, v15);
}

double sub_26C0F6B60(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a1;
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  *&v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  sub_26C0CF314(a3 + *(v6 + 20), &v44 - v13, &qword_28047ABC8, &unk_26C14CCA0);
  v15 = v54;
  sub_26C108ECC(&v50, v11);
  if (v15)
  {
    sub_26C0CF5C4(v14, &qword_28047ABC8, &unk_26C14CCA0);
    v16 = v51;
    result = *&v50;
    *a4 = v50;
    *(a4 + 16) = v16;
  }

  else
  {
    v44 = a3;
    v45 = v6;
    v54 = v8;
    v18 = v47;
    v52 = v9;
    v53 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
    v20 = v48;
    (*(v48 + 16))(boxed_opaque_existential_1, v11, v9);
    __swift_project_boxed_opaque_existential_1(&v50, v52);
    sub_26C14880C();
    (*(v20 + 8))(v11, v9);
    v21 = v49;
    __swift_destroy_boxed_opaque_existential_1(&v50);
    v22 = *(&v21 + 1) >> 62;
    if ((*(&v21 + 1) >> 62) > 1)
    {
      v23 = 0;
      v24 = v54;
      v25 = v45;
      if (v22 == 2)
      {
        v23 = *(v21 + 16);
      }
    }

    else
    {
      if (v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }

      v24 = v54;
      v25 = v45;
    }

    sub_26C0FD540(v21, *(&v21 + 1), v23, &v49, &v50);
    sub_26C0BB9B0(v21, *(&v21 + 1));
    v48 = v50;
    v47 = v51;
    v54 = 0;
    sub_26C0FEE38(v44, v24, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
    v26 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
    sub_26C0CF55C(v14, v18 + v26[5], &qword_28047ABC8, &unk_26C14CCA0);
    sub_26C0FEE38(v24, v18, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v27 = (v24 + v25[6]);
    v28 = *v27;
    v29 = v27[1];
    v30 = v25;
    v31 = v27[2];
    v32 = (v18 + v26[6]);
    *v32 = v28;
    v32[1] = v29;
    v32[2] = v31;
    v33 = (v24 + v25[7]);
    v34 = *v33;
    v35 = v33[1];
    v36 = (v18 + v26[7]);
    *v36 = v34;
    v36[1] = v35;
    *(v18 + v26[8]) = *(v24 + v30[8]);
    *(v18 + v26[9]) = *(v24 + v30[9]);
    v37 = v18 + v26[10];
    *v37 = 0;
    *(v37 + 2) = 1;
    v38 = v24 + v30[10];
    LOWORD(v34) = *v38;
    LOBYTE(v38) = *(v38 + 2);
    v39 = v18 + v26[11];
    *v39 = v34;
    *(v39 + 2) = v38;
    *(v18 + v26[12]) = 0;
    *(v18 + v26[13]) = *(v24 + v30[11]);
    v40 = v26[14];
    v41 = type metadata accessor for PAKEServerState(0);
    (*(*(v41 - 8) + 56))(v18 + v40, 1, 1, v41);
    LOBYTE(v40) = *(v24 + v30[12]);
    sub_26C0BB37C(v28, v29);

    sub_26C0FEEA0(v24, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
    *(v18 + v26[15]) = v40;
    v42 = v46;
    v43 = v47;
    result = *&v48;
    *v46 = v48;
    *(v42 + 2) = v43;
  }

  return result;
}

uint64_t sub_26C0F7068@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_26C0CF314(v2, &v22 - v11, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C0CF55C(v12, v6, &qword_28047A968, &unk_26C14A810);
      v14 = *(v4 + 36);
      v15 = sub_26C148BDC();
      v16 = *(v15 - 8);
      (*(v16 + 16))(a1, &v6[v14], v15);
      sub_26C0CF5C4(v6, &qword_28047A968, &unk_26C14A810);
      return (*(v16 + 56))(a1, 0, 1, v15);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
    v18 = sub_26C148BDC();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  sub_26C0CF55C(v12, v9, &qword_28047A970, "DG");
  v19 = *(v7 + 52);
  v20 = sub_26C148BDC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a1, &v9[v19], v20);
  sub_26C0CF5C4(v9, &qword_28047A970, "DG");
  return (*(v21 + 56))(a1, 0, 1, v20);
}

uint64_t sub_26C0F7398@<X0>(uint64_t a1@<X0>, int64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a4;
  v102 = a1;
  v94 = a5;
  v7 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v7);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v87 - v10;
  v11 = type metadata accessor for PAKEServerState(0);
  v90 = *(v11 - 8);
  v91 = v11;
  MEMORY[0x28223BE20](v11);
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v14 = &v87 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  MEMORY[0x28223BE20](v15 - 8);
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a3[1];
  v97 = *a3;
  v98 = v16;
  v20 = a3[2];
  v95 = v7;
  v22 = &v87 - v21;
  sub_26C0CF314(v102 + *(v7 + 20), &v87 - v21, &qword_28047ABC8, &unk_26C14CCA0);
  v112 = v22;
  v23 = v101;
  sub_26C1094C4(&v105, v14);
  if (v23)
  {
    result = sub_26C0CF5C4(v112, &qword_28047ABC8, &unk_26C14CCA0);
    v25 = v106;
    v26 = v100;
    *v100 = v105;
    *(v26 + 16) = v25;
    return result;
  }

  v27 = v18;
  v28 = v97;
  v88 = v20;
  v101 = v14;
  v29 = v99;
  v30 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v98 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v98 >> 32;
  }

  else
  {
    v31 = BYTE6(v17);
  }

  if (v31 < v27)
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = sub_26C14889C();
  v33 = v32;
  *&v105 = v7;
  *(&v105 + 1) = v32;
  sub_26C0FF1C4(&qword_28047ABF0, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C8]);
  sub_26C0BE710();
  v17 = v101;
  if ((sub_26C148C1C() & 1) == 0)
  {
    v29 = v33;
    if (qword_28047A750 == -1)
    {
LABEL_14:
      v34 = sub_26C148A9C();
      __swift_project_value_buffer(v34, qword_28047ABB0);
      v35 = sub_26C148A7C();
      v36 = sub_26C14900C();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v96;
      v39 = v100;
      if (v37)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_26C0B5000, v35, v36, "invalid client finished payload", v40, 2u);
        v41 = v40;
        v17 = v101;
        MEMORY[0x26D69C3A0](v41, -1, -1);
      }

      *v39 = xmmword_26C14A8E0;
      *(v39 + 16) = 2;
      v105 = xmmword_26C14A8E0;
      LOBYTE(v106) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v7, v29);
      (*(v38 + 8))(v17, v99);
      return sub_26C0CF5C4(v112, &qword_28047ABC8, &unk_26C14CCA0);
    }

LABEL_36:
    swift_once();
    goto LABEL_14;
  }

  sub_26C109AA4(v28, v19, v88, &v105);
  v42 = v102;
  v43 = v92;
  sub_26C0CF314(v102 + v95[14], v92, &qword_28047A888, &qword_26C14A5B8);
  v44 = v91;
  if ((*(v90 + 48))(v43, 1, v91) != 1)
  {
    v97 = v7;
    v98 = v33;
    v48 = v89;
    sub_26C0FEF5C(v43, v89, type metadata accessor for PAKEServerState);
    v49 = (v48 + *(v44 + 32));
    *(&v109[2] + 10) = *(v49 + 106);
    v50 = v49[5];
    v109[0] = v49[4];
    v109[1] = v50;
    v109[2] = v49[6];
    v51 = v49[3];
    v107 = v49[2];
    v108 = v51;
    v52 = v49[1];
    v105 = *v49;
    v106 = v52;
    v110[0] = *(v109 + 8);
    v110[1] = *(&v109[1] + 8);
    v110[2] = *(&v109[2] + 8);
    v111 = BYTE8(v109[3]);
    sub_26C0DA570(&v105, v103);
    v46 = v93;
    v45 = v94;
    if (qword_28047A730 != -1)
    {
      swift_once();
    }

    v53 = qword_280480370;
    os_unfair_lock_lock((qword_280480370 + 16));
    v54 = *(v53 + 24);
    if (*(v54 + 16))
    {
      v55 = sub_26C0D84BC(v110);
      if (v56)
      {
        v57 = *(*(v54 + 56) + 4 * v55);
        v58 = v57 + 1;
        if (v57 == -1)
        {
          __break(1u);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103[0] = *(v53 + 24);
          *(v53 + 24) = 0x8000000000000000;
          sub_26C0D8CCC(v58, v110, isUniquelyReferenced_nonNull_native);
          *(v53 + 24) = v103[0];
          os_unfair_lock_unlock((v53 + 16));
          sub_26C0ECD08(&v105);
          if (qword_28047A750 == -1)
          {
LABEL_26:
            v60 = sub_26C148A9C();
            __swift_project_value_buffer(v60, qword_28047ABB0);
            v61 = sub_26C148A7C();
            v62 = sub_26C148FFC();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *v63 = 0;
              _os_log_impl(&dword_26C0B5000, v61, v62, "restored PAKE credential attempt", v63, 2u);
              MEMORY[0x26D69C3A0](v63, -1, -1);
            }

            sub_26C0BB9B0(v97, v98);

            sub_26C0FEEA0(v89, type metadata accessor for PAKEServerState);
            (*(v96 + 8))(v101, v99);
            v47 = v95;
            v42 = v102;
            goto LABEL_29;
          }
        }

        swift_once();
        goto LABEL_26;
      }
    }

    os_unfair_lock_unlock((v53 + 16));
    sub_26C0ECD08(&v105);
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v79 = sub_26C148A9C();
    __swift_project_value_buffer(v79, qword_28047ABB0);
    v80 = sub_26C148A7C();
    v81 = sub_26C14900C();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v96;
    v84 = v100;
    v85 = v89;
    if (v82)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_26C0B5000, v80, v81, "error restoring PAKE Credential Attempt. This should never happen.", v86, 2u);
      MEMORY[0x26D69C3A0](v86, -1, -1);
    }

    *v84 = 0xD000000000000027;
    *(v84 + 1) = 0x800000026C15AD20;
    *(v84 + 16) = 1;
    v103[0] = 0xD000000000000027;
    v103[1] = 0x800000026C15AD20;
    v104 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v97, v98);
    sub_26C0FEEA0(v85, type metadata accessor for PAKEServerState);
    (*(v83 + 8))(v101, v99);
    return sub_26C0CF5C4(v112, &qword_28047ABC8, &unk_26C14CCA0);
  }

  (*(v96 + 8))(v17, v29);
  sub_26C0BB9B0(v7, v33);
  sub_26C0CF5C4(v43, &qword_28047A888, &qword_26C14A5B8);
  v46 = v93;
  v45 = v94;
  v47 = v95;
LABEL_29:
  sub_26C0FEE38(v42, v46, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  sub_26C0FEE38(v42, v45, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  sub_26C0CF55C(v112, v45 + ready[5], &qword_28047ABC8, &unk_26C14CCA0);
  v65 = (v46 + v47[6]);
  v66 = *v65;
  v67 = v65[1];
  v68 = v65[2];
  v69 = (v45 + ready[6]);
  *v69 = v66;
  v69[1] = v67;
  v69[2] = v68;
  v70 = (v46 + v47[7]);
  v71 = *v70;
  v72 = v70[1];
  v73 = (v45 + ready[7]);
  *v73 = v71;
  v73[1] = v72;
  *(v45 + ready[8]) = *(v46 + v47[8]);
  *(v45 + ready[9]) = *(v46 + v47[9]);
  v74 = v46 + v47[10];
  LOWORD(v71) = *v74;
  LOBYTE(v74) = *(v74 + 2);
  v75 = v45 + ready[10];
  *v75 = v71;
  *(v75 + 2) = v74;
  v76 = v46 + v47[11];
  LOWORD(v71) = *v76;
  LOBYTE(v76) = *(v76 + 2);
  v77 = v45 + ready[11];
  *v77 = v71;
  *(v77 + 2) = v76;
  *(v45 + ready[12]) = *(v46 + v47[12]);
  *(v45 + ready[13]) = *(v46 + v47[13]);
  v78 = *(v46 + v47[15]);
  sub_26C0BB37C(v66, v67);

  result = sub_26C0FEEA0(v46, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  *(v45 + ready[14]) = v78;
  return result;
}

void sub_26C0F7E30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v59[16] = *(a1 + 32);
  *&v59[32] = v3;
  v60 = *(a1 + 64);
  v4 = *a1;
  v5 = *(a1 + 16);
  v61 = *(a1 + 80);
  v58 = v4;
  *v59 = v5;
  v7 = 0;
  switch(v61 >> 4)
  {
    case 1:
      v7 = 10;
      break;
    case 2:
      v7 = 43;
      break;
    case 3:
      v7 = 16;
      break;
    case 4:
      v7 = 51;
      break;
    case 5:
      v7 = 42;
      break;
    case 6:
      v7 = 13;
      break;
    case 7:
      v7 = 20;
      break;
    case 8:
      v7 = 57;
      break;
    case 9:
      v7 = 45;
      break;
    case 0xA:
      v7 = 41;
      break;
    case 0xB:
      v7 = 58;
      break;
    case 0xC:
      v7 = 35387;
      break;
    case 0xD:
      v7 = v58;
      break;
    default:
      break;
  }

  if (sub_26C11D960(&v52, v7))
  {
    v8 = v58;
    v9 = BYTE8(v58);
    v10 = *(&v58 + 9) | ((*(&v58 + 13) | (HIBYTE(v58) << 16)) << 32);
    v11 = v59[0];
    v12 = *&v59[1] | ((*&v59[5] | (v59[7] << 16)) << 32);
    switch(v61 >> 4)
    {
      case 1:

        *(v2 + 16) = v8;
        break;
      case 2:
        if (BYTE8(v58))
        {
          goto LABEL_43;
        }

        sub_26C0B8B24(v58, 0);

        *(v2 + 24) = v8;
        break;
      case 3:
        if (v59[0])
        {
          goto LABEL_43;
        }

        sub_26C0FF14C(v58, *(&v58 + 1), 0);

        *(v2 + 80) = v8;
        break;
      case 4:
        if ((v12 & 0x30000000000000) != 0)
        {
          goto LABEL_43;
        }

        sub_26C0FF158(v58, *(&v58 + 1), *v59);

        *(v2 + 8) = v8;
        break;
      case 5:
        *(v2 + 104) = 1;
        break;
      case 6:

        *(v2 + 32) = v8;
        break;
      case 7:
        if (BYTE8(v58))
        {
          goto LABEL_43;
        }

        sub_26C0B8B24(v58, 0);

        *(v2 + 40) = v8;
        break;
      case 8:
        v25 = *(v2 + 56);
        v62 = *(v2 + 64);
        sub_26C0BBAA4(v58, *(&v58 + 1));
        sub_26C0BB344(v25, v62);
        *(v2 + 56) = v8;
        *(v2 + 64) = v9;
        *(v2 + 71) = BYTE6(v10);
        *(v2 + 69) = WORD2(v10);
        *(v2 + 65) = v10;
        *(v2 + 72) = v11;
        *(v2 + 79) = BYTE6(v12);
        *(v2 + 77) = WORD2(v12);
        *(v2 + 73) = v12;
        break;
      case 9:

        *(v2 + 48) = v8;
        break;
      case 0xA:
        if (v59[0])
        {
          goto LABEL_43;
        }

        v19 = *(v2 + 88);
        v20 = *(v2 + 96);

        sub_26C0FF10C(v19, v20);
        *(v2 + 88) = v8;
        *(v2 + 96) = v9 | (v10 << 8);
        break;
      case 0xB:
        if (qword_28047A750 != -1)
        {
          swift_once();
        }

        v21 = sub_26C148A9C();
        __swift_project_value_buffer(v21, qword_28047ABB0);
        v22 = sub_26C148A7C();
        v23 = sub_26C14900C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_26C0B5000, v22, v23, "skipped processing ticket_request in CH", v24, 2u);
          MEMORY[0x26D69C3A0](v24, -1, -1);
        }

        break;
      case 0xC:
        if (v61)
        {
          goto LABEL_43;
        }

        v62 = BYTE8(v58) | (v10 << 8);
        v50 = v59[0] | (v12 << 8);
        v26 = *(v2 + 120);
        v27 = *(v2 + 128);
        v28 = *(v2 + 136);
        v29 = *(v2 + 144);
        v30 = *(v2 + 152);
        v46 = *(v2 + 160);
        v47 = *(v2 + 112);
        v48 = *&v59[24];
        v49 = *&v59[8];
        v55 = *&v59[32];
        v56 = v60;
        v52 = v58;
        v53 = *v59;
        v54 = *&v59[16];
        v57 = v61 & 0xF;
        sub_26C0FF0B0(&v52, v51);
        sub_26C0E091C(v47, v26, v27, v28, v29, v30, v46);
        v31 = v62;
        *(v2 + 112) = v8;
        *(v2 + 120) = v31;
        *(v2 + 128) = v50;
        *(v2 + 152) = v48;
        *(v2 + 136) = v49;
        break;
      case 0xD:
LABEL_43:
        if (qword_28047A750 != -1)
        {
          swift_once();
        }

        v32 = sub_26C148A9C();
        __swift_project_value_buffer(v32, qword_28047ABB0);
        sub_26C0BE40C(&v58, &v52);
        v33 = sub_26C148A7C();
        v34 = sub_26C14900C();
        sub_26C0BE468(&v58);
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v52 = v36;
          *v35 = 136315138;
          v37 = v36;
          switch(v61 >> 4)
          {
            case 1:
              v42 = 10;
              goto LABEL_78;
            case 2:
              v42 = 43;
              goto LABEL_78;
            case 3:
              v42 = 16;
              goto LABEL_78;
            case 4:
              v42 = 51;
              goto LABEL_78;
            case 5:
              v42 = 42;
              goto LABEL_78;
            case 6:
              v42 = 13;
              goto LABEL_78;
            case 7:
              v42 = 20;
              goto LABEL_78;
            case 8:
              v42 = 57;
              goto LABEL_78;
            case 9:
              v42 = 45;
              goto LABEL_78;
            case 0xA:
              v42 = 41;
              goto LABEL_78;
            case 0xB:
              v42 = 58;
              goto LABEL_78;
            case 0xC:
              v42 = -30149;
LABEL_78:
              v51[0] = v42;
              break;
            case 0xD:
              v51[0] = v58;
              break;
            default:
              v51[0] = 0;
              break;
          }

          v43 = ExtensionType.description.getter();
          v45 = sub_26C0E5DE8(v43, v44, &v52);

          *(v35 + 4) = v45;
          _os_log_impl(&dword_26C0B5000, v33, v34, "skipped unknown/unsupported client extension with raw value %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          MEMORY[0x26D69C3A0](v37, -1, -1);
          MEMORY[0x26D69C3A0](v35, -1, -1);
        }

        break;
      default:
        return;
    }
  }

  else
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v13 = sub_26C148A9C();
    __swift_project_value_buffer(v13, qword_28047ABB0);
    sub_26C0BE40C(&v58, &v52);
    v14 = sub_26C148A7C();
    v15 = sub_26C14900C();
    sub_26C0BE468(&v58);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v52 = v17;
      *v16 = 136315138;
      v18 = v17;
      switch(v61 >> 4)
      {
        case 1:
          v38 = 10;
          goto LABEL_61;
        case 2:
          v38 = 43;
          goto LABEL_61;
        case 3:
          v38 = 16;
          goto LABEL_61;
        case 4:
          v38 = 51;
          goto LABEL_61;
        case 5:
          v38 = 42;
          goto LABEL_61;
        case 6:
          v38 = 13;
          goto LABEL_61;
        case 7:
          v38 = 20;
          goto LABEL_61;
        case 8:
          v38 = 57;
          goto LABEL_61;
        case 9:
          v38 = 45;
          goto LABEL_61;
        case 0xA:
          v38 = 41;
          goto LABEL_61;
        case 0xB:
          v38 = 58;
          goto LABEL_61;
        case 0xC:
          v38 = -30149;
LABEL_61:
          v51[0] = v38;
          break;
        case 0xD:
          v51[0] = v58;
          break;
        default:
          v51[0] = 0;
          break;
      }

      v39 = ExtensionType.description.getter();
      v41 = sub_26C0E5DE8(v39, v40, &v52);

      *(v16 + 4) = v41;
      _os_log_impl(&dword_26C0B5000, v14, v15, "client offered duplicate extension of type %s on server hello", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x26D69C3A0](v18, -1, -1);
      MEMORY[0x26D69C3A0](v16, -1, -1);
    }

    *a2 = xmmword_26C14A8F0;
    *(a2 + 16) = 2;
    v52 = xmmword_26C14A8F0;
    LOBYTE(v53) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }
}

void sub_26C0F8638(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v398 = *MEMORY[0x277D85DE8];
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  MEMORY[0x28223BE20](v348);
  v9 = &v317 - v8;
  v10 = type metadata accessor for RawEPSK(0);
  MEMORY[0x28223BE20](v10 - 8);
  v354 = (&v317 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ImportedPSK(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v352 = &v317 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v351 = &v317 - v15;
  v356 = type metadata accessor for PSK(0);
  v16 = MEMORY[0x28223BE20](v356);
  v355 = &v317 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v353 = &v317 - v18;
  v19 = type metadata accessor for GeneralEPSK(0);
  v358 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v317 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v349 = &v317 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v357 = &v317 - v26;
  v27 = *a1;
  v28 = *(a1 + 1);
  v29 = v3[13];
  v395 = v3[12];
  v396 = v29;
  v397[0] = v3[14];
  *(v397 + 9) = *(v3 + 233);
  v30 = v3[9];
  v391 = v3[8];
  v392 = v30;
  v31 = v3[11];
  v393 = v3[10];
  v394 = v31;
  v32 = v3[5];
  v387 = v3[4];
  v388 = v32;
  v33 = v3[7];
  v389 = v3[6];
  v390 = v33;
  v34 = v3[1];
  v383 = *v3;
  v384 = v34;
  v35 = v3[3];
  v385 = v3[2];
  v386 = v35;
  v362 = *(&v388 + 1);
  if (!*(&v388 + 1))
  {
    goto LABEL_349;
  }

  v342 = v28;
  v343 = v27;
  v346 = v25;
  v344 = v9;
  v36 = v389;
  if (qword_28047A750 != -1)
  {
    goto LABEL_373;
  }

LABEL_3:
  v37 = sub_26C148A9C();
  v359 = __swift_project_value_buffer(v37, qword_28047ABB0);
  v38 = sub_26C148A7C();
  v39 = sub_26C148FFC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_26C0B5000, v38, v39, "client offered psks, attempting to negotiate", v40, 2u);
    MEMORY[0x26D69C3A0](v40, -1, -1);
  }

  if (!v386)
  {
    v260 = sub_26C148A7C();
    v261 = sub_26C14900C();
    if (os_log_type_enabled(v260, v261))
    {
      v262 = swift_slowAlloc();
      *v262 = 0;
      _os_log_impl(&dword_26C0B5000, v260, v261, "client sent psk extension without psk_key_exchange_modes", v262, 2u);
      MEMORY[0x26D69C3A0](v262, -1, -1);
    }

    v263 = xmmword_26C14CC20;
    goto LABEL_339;
  }

  if (!sub_26C10C258(1u, v386))
  {
    v264 = sub_26C148A7C();
    v265 = sub_26C148FFC();
    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      *v266 = 0;
      _os_log_impl(&dword_26C0B5000, v264, v265, "server ignoring offererd pre shared keys because it did not offer psk_dhe mode", v266, 2u);
      MEMORY[0x26D69C3A0](v266, -1, -1);
    }

    goto LABEL_349;
  }

  v41 = *(v362 + 16);
  if (v41 != *(v36 + 16))
  {
    v267 = sub_26C148A7C();
    v268 = sub_26C14900C();
    if (os_log_type_enabled(v267, v268))
    {
      v269 = swift_slowAlloc();
      *v269 = 0;
      _os_log_impl(&dword_26C0B5000, v267, v268, "offered psk identities doesn't match number of binders", v269, 2u);
      MEMORY[0x26D69C3A0](v269, -1, -1);
    }

    v263 = xmmword_26C14CC10;
LABEL_339:
    *a2 = v263;
    *(a2 + 16) = 2;
    v364 = v263;
    LOBYTE(v365) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return;
  }

  v330 = a3;
  v331 = v36;
  v42 = 0;
  if (v41)
  {
    v43 = (v331 + 48);
    v44 = v41;
    do
    {
      v45 = *(v43 - 2);
      v46 = *(v43 - 1);
      v47 = v46 >> 62;
      if ((v46 >> 62) > 1)
      {
        if (v47 == 2)
        {
          v49 = *(v45 + 24);
        }

        else
        {
          v49 = 0;
        }
      }

      else
      {
        v48 = BYTE6(v46);
        v49 = v45 >> 32;
        if (!v47)
        {
          v49 = v48;
        }
      }

      v50 = __OFSUB__(v49, *v43);
      v51 = v49 - *v43;
      if (v50)
      {
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        sub_26C0BB9B0(v328, v332);
        sub_26C0BB9B0(v347, v36);
        goto LABEL_357;
      }

      v50 = __OFADD__(v42, v51);
      v42 += v51;
      if (v50)
      {
        goto LABEL_368;
      }

      v43 += 3;
      --v44;
    }

    while (v44);
  }

  v327 = v42;
  v334 = v22;
  if (!v41)
  {
    v337 = MEMORY[0x277D84F90];
    v338 = MEMORY[0x277D84F90];
    goto LABEL_341;
  }

  v52 = 0;
  v350 = v41;
  v325 = v41 - 1;
  v53 = v331 + 48;
  v54 = v362 + 56;
  v321 = xmmword_26C14A540;
  v337 = MEMORY[0x277D84F90];
  v338 = MEMORY[0x277D84F90];
  v323 = v362 + 56;
  v324 = v331 + 48;
LABEL_22:
  v55 = v53 + 24 * v52;
  v22 = (v54 + 32 * v52);
  v56 = v52;
  while (1)
  {
    if (v56 >= *(v362 + 16))
    {
      __break(1u);
LABEL_371:
      sub_26C0BB9B0(v326, v328);
      v316 = v4;
      goto LABEL_376;
    }

    *&v360 = v55;
    v361 = v56;
    v39 = *(v22 - 3);
    a2 = *(v22 - 2);
    v4 = *(v22 - 1);
    v57 = *v22;
    sub_26C0BBAA4(v39, a2);
    if (v57)
    {
      v58 = sub_26C148A7C();
      v59 = sub_26C148FFC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_26C0B5000, v58, v59, "psk has non 0 obfuscated ticket age. still attempting to treat as an epsk.", v60, 2u);
        MEMORY[0x26D69C3A0](v60, -1, -1);
      }
    }

    if (v396)
    {
      v68 = *(&v395 + 1);
      v69 = v355;
      v336 = *(*(&v395 + 1) + 16);
      if (!v336)
      {
        v237 = a2 >> 62;
        goto LABEL_310;
      }

      v341 = v4;
      v70 = 0;
      v335 = *(&v395 + 1) + ((*(v358 + 80) + 32) & ~*(v358 + 80));
      v339 = a2 >> 62;
      v326 = v39 >> 32;
      v329 = BYTE6(a2);
      v22 = v349;
      v333 = *(&v395 + 1);
      while (1)
      {
        if (v70 >= *(v68 + 16))
        {
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
          goto LABEL_396;
        }

        sub_26C0FEE38(v335 + *(v358 + 72) * v70, v22, type metadata accessor for GeneralEPSK);
        sub_26C0FEE38(v22, v69, type metadata accessor for PSK);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v71 = v354;
          sub_26C0FEF5C(v69, v354, type metadata accessor for RawEPSK);
          v72 = v70;
          v73 = v22;
          v75 = *v71;
          v74 = v71[1];
          v76 = v71[2];
          sub_26C0BBAA4(v39, a2);
          sub_26C0BBAA4(v75, v74);
          v77 = v71;
          v78 = v74;
          v79 = v75;
          v22 = v73;
          v70 = v72;
          sub_26C0FEEA0(v77, type metadata accessor for RawEPSK);
        }

        else
        {
          v80 = v352;
          sub_26C0FEF5C(v69, v352, type metadata accessor for ImportedPSK);
          v81 = *(v80 + 16);
          *v378 = *v80;
          *&v378[16] = v81;
          v83 = *v80;
          v82 = *(v80 + 16);
          v379 = *(v80 + 32);
          v380 = *(v80 + 48);
          v374 = v83;
          v375 = v82;
          v376 = *(v80 + 32);
          v377 = *(v80 + 48);
          sub_26C0BBAA4(v39, a2);
          sub_26C0C4BB4(v378, &v364);
          v79 = sub_26C0C2C6C();
          v85 = v84;
          v364 = v374;
          v365 = v375;
          v366 = v376;
          v367 = v377;
          sub_26C0C4BEC(&v364);
          v86 = v80;
          v78 = v85;
          sub_26C0FEEA0(v86, type metadata accessor for ImportedPSK);
          v87 = v85 >> 62;
          if ((v85 >> 62) > 1)
          {
            v76 = 0;
            if (v87 == 2)
            {
              v76 = *(v79 + 16);
            }
          }

          else if (v87)
          {
            v76 = v79;
          }

          else
          {
            v76 = 0;
          }
        }

        if (v339 > 1)
        {
          if (v339 == 2)
          {
            v88 = *(v39 + 24);
          }

          else
          {
            v88 = 0;
          }
        }

        else
        {
          v88 = v329;
          if (v339)
          {
            v88 = v326;
          }
        }

        if (v88 < v341)
        {
          goto LABEL_378;
        }

        *&v347 = sub_26C14889C();
        v36 = v89;
        v90 = v78 >> 62;
        if ((v78 >> 62) > 1)
        {
          if (v90 == 2)
          {
            v91 = *(v79 + 24);
          }

          else
          {
            v91 = 0;
          }
        }

        else if (v90)
        {
          v91 = v79 >> 32;
        }

        else
        {
          v91 = BYTE6(v78);
        }

        if (v91 < v76)
        {
          goto LABEL_379;
        }

        v340 = v79;
        v345 = v78;
        v92 = sub_26C14889C();
        v94 = v36 >> 62;
        v95 = v93 >> 62;
        if (v36 >> 62 == 3)
        {
          break;
        }

        v97 = v347;
        if (v94 <= 1)
        {
          if (!v94)
          {
            v96 = BYTE6(v36);
            if (v95 <= 1)
            {
              goto LABEL_89;
            }

            goto LABEL_94;
          }

          LODWORD(v96) = DWORD1(v347) - v347;
          if (__OFSUB__(DWORD1(v347), v347))
          {
            goto LABEL_388;
          }

          v96 = v96;
          goto LABEL_88;
        }

        if (v94 == 2)
        {
          v99 = *(v347 + 16);
          v98 = *(v347 + 24);
          v50 = __OFSUB__(v98, v99);
          v96 = v98 - v99;
          if (v50)
          {
            goto LABEL_387;
          }

          goto LABEL_88;
        }

        v96 = 0;
        if (v95 <= 1)
        {
LABEL_89:
          if (v95)
          {
            LODWORD(v100) = HIDWORD(v92) - v92;
            if (__OFSUB__(HIDWORD(v92), v92))
            {
              goto LABEL_383;
            }

            v100 = v100;
          }

          else
          {
            v100 = BYTE6(v93);
          }

          goto LABEL_96;
        }

LABEL_94:
        if (v95 != 2)
        {
          if (!v96)
          {
            goto LABEL_354;
          }

LABEL_45:
          sub_26C0BB9B0(v92, v93);
          sub_26C0BB9B0(v97, v36);
          sub_26C0BB9B0(v340, v345);
          sub_26C0BB9B0(v39, a2);
          goto LABEL_46;
        }

        v102 = *(v92 + 16);
        v101 = *(v92 + 24);
        v50 = __OFSUB__(v101, v102);
        v100 = v101 - v102;
        if (v50)
        {
          goto LABEL_384;
        }

LABEL_96:
        if (v96 != v100)
        {
          goto LABEL_45;
        }

        if (v96 < 1)
        {
LABEL_354:
          sub_26C0BB9B0(v92, v93);
          v300 = v97;
          v301 = v36;
LABEL_356:
          sub_26C0BB9B0(v300, v301);
          v4 = v345;
LABEL_357:
          sub_26C0BB9B0(v340, v4);
          sub_26C0BB9B0(v39, a2);
LABEL_358:

          sub_26C0FEE38(v22, v330, type metadata accessor for GeneralEPSK);
          v302 = v361;
          if (v361 < 0x10000)
          {
            if (v361 < *(v331 + 16))
            {
              v303 = *(v360 - 16);
              v304 = *(v360 - 8);
              v305 = *v360;
              sub_26C0BBAA4(v303, v304);
              sub_26C0BB9B0(v39, a2);
              sub_26C0FEEA0(v22, type metadata accessor for GeneralEPSK);
              v306 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
              v307 = v330;
              *(v330 + v306[5]) = v302;
              v308 = (v307 + v306[6]);
              *v308 = v303;
              v308[1] = v304;
              v308[2] = v305;
              goto LABEL_366;
            }

LABEL_402:
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
          }

LABEL_401:
          __break(1u);
          goto LABEL_402;
        }

        if (v94 > 1)
        {
          if (v94 != 2)
          {
            *(&v364 + 6) = 0;
            *&v364 = 0;
            v104 = v92;
            v103 = v93;
LABEL_110:
            v112 = v363;
            sub_26C0BE04C(&v364, v104, v103, v378);
            v363 = v112;
            if (v112)
            {
              goto LABEL_437;
            }

            sub_26C0BB9B0(v97, v36);
            sub_26C0BB9B0(v340, v345);
            sub_26C0BB9B0(v39, a2);
            sub_26C0BB9B0(v104, v103);
            if (v378[0])
            {
              goto LABEL_358;
            }

            goto LABEL_46;
          }

          v328 = v92;
          v332 = v93;
          v105 = *(v97 + 16);
          v106 = sub_26C1487BC();
          if (v106)
          {
            v107 = v106;
            v108 = sub_26C1487EC();
            if (__OFSUB__(v105, v108))
            {
              goto LABEL_397;
            }

            v322 = v105 - v108 + v107;
          }

          else
          {
            v322 = 0;
          }

          sub_26C1487DC();
          if (v95 == 2)
          {
            v125 = *(v328 + 16);
            v320 = *(v328 + 24);
            v126 = sub_26C1487BC();
            if (v126)
            {
              v127 = v126;
              v128 = sub_26C1487EC();
              if (__OFSUB__(v125, v128))
              {
                goto LABEL_412;
              }

              v129 = v125;
              v130 = (v125 - v128 + v127);
            }

            else
            {
              v129 = v125;
              v130 = 0;
            }

            v138 = &v320[-v129];
            if (__OFSUB__(v320, v129))
            {
              goto LABEL_406;
            }

            v139 = sub_26C1487DC();
            if (v139 >= v138)
            {
              v140 = v138;
            }

            else
            {
              v140 = v139;
            }

            v22 = v349;
            if (!v322)
            {
              goto LABEL_424;
            }

            v141 = v345;
            if (!v130)
            {
              goto LABEL_423;
            }

            if (v322 == v130)
            {
              sub_26C0BB9B0(v328, v332);
              sub_26C0BB9B0(v347, v36);
              v4 = v141;
              goto LABEL_357;
            }

            v142 = memcmp(v322, v130, v140);
            sub_26C0BB9B0(v328, v332);
            sub_26C0BB9B0(v347, v36);
            v143 = v340;
            v144 = v141;
            goto LABEL_172;
          }

          v113 = v332;
          v114 = v328;
          if (v95 == 1)
          {
            v115 = v328;
            v116 = (v328 >> 32) - v328;
            if (v328 >> 32 < v328)
            {
              goto LABEL_405;
            }

            v117 = sub_26C1487BC();
            if (v117)
            {
              v118 = v117;
              v119 = sub_26C1487EC();
              if (__OFSUB__(v115, v119))
              {
                goto LABEL_413;
              }

              v320 = (v115 - v119 + v118);
            }

            else
            {
              v320 = 0;
            }

            v4 = v345;
            v145 = v322;
            v146 = sub_26C1487DC();
            if (v146 >= v116)
            {
              v147 = v116;
            }

            else
            {
              v147 = v146;
            }

            if (!v145)
            {
              goto LABEL_421;
            }

            v22 = v349;
            v148 = v320;
            if (!v320)
            {
              goto LABEL_420;
            }

            goto LABEL_169;
          }

          v22 = v349;
          *&v364 = v328;
          DWORD2(v364) = v332;
          WORD6(v364) = WORD2(v332);
          v131 = v345;
          v132 = v322;
          if (!v322)
          {
            goto LABEL_422;
          }
        }

        else
        {
          if (!v94)
          {
            *&v364 = v97;
            WORD4(v364) = v36;
            BYTE10(v364) = BYTE2(v36);
            BYTE11(v364) = BYTE3(v36);
            BYTE12(v364) = BYTE4(v36);
            BYTE13(v364) = BYTE5(v36);
            v103 = v93;
            v104 = v92;
            goto LABEL_110;
          }

          v328 = v92;
          v332 = v93;
          if (v97 > v97 >> 32)
          {
            goto LABEL_391;
          }

          v109 = sub_26C1487BC();
          if (v109)
          {
            v110 = v109;
            v111 = sub_26C1487EC();
            if (__OFSUB__(v97, v111))
            {
              goto LABEL_398;
            }

            v322 = v97 - v111 + v110;
          }

          else
          {
            v322 = 0;
          }

          sub_26C1487DC();
          if (v95 == 2)
          {
            v133 = *(v328 + 16);
            v320 = *(v328 + 24);
            v134 = sub_26C1487BC();
            if (v134)
            {
              v135 = v134;
              v136 = sub_26C1487EC();
              if (__OFSUB__(v133, v136))
              {
                goto LABEL_414;
              }

              v319 = (v133 - v136 + v135);
            }

            else
            {
              v319 = 0;
            }

            v149 = &v320[-v133];
            if (__OFSUB__(v320, v133))
            {
              goto LABEL_408;
            }

            v150 = sub_26C1487DC();
            if (v150 >= v149)
            {
              v151 = v149;
            }

            else
            {
              v151 = v150;
            }

            v22 = v349;
            v152 = v322;
            if (!v322)
            {
              goto LABEL_428;
            }

            v4 = v345;
            v148 = v319;
            if (!v319)
            {
              goto LABEL_427;
            }

            if (v322 == v319)
            {
              goto LABEL_369;
            }

            v153 = v151;
            goto LABEL_171;
          }

          v113 = v332;
          v114 = v328;
          if (v95 == 1)
          {
            v120 = v328;
            v121 = (v328 >> 32) - v328;
            if (v328 >> 32 < v328)
            {
              goto LABEL_407;
            }

            v122 = sub_26C1487BC();
            if (v122)
            {
              v123 = v122;
              v124 = sub_26C1487EC();
              if (__OFSUB__(v120, v124))
              {
                goto LABEL_415;
              }

              v320 = (v120 - v124 + v123);
            }

            else
            {
              v320 = 0;
            }

            v4 = v345;
            v145 = v322;
            v154 = sub_26C1487DC();
            if (v154 >= v121)
            {
              v147 = v121;
            }

            else
            {
              v147 = v154;
            }

            if (!v145)
            {
              goto LABEL_426;
            }

            v22 = v349;
            v148 = v320;
            if (!v320)
            {
              goto LABEL_425;
            }

LABEL_169:
            if (v145 == v148)
            {
              goto LABEL_369;
            }

            v153 = v147;
            v152 = v145;
LABEL_171:
            v142 = memcmp(v152, v148, v153);
            sub_26C0BB9B0(v328, v332);
            sub_26C0BB9B0(v347, v36);
            v143 = v340;
            v144 = v4;
LABEL_172:
            sub_26C0BB9B0(v143, v144);
            sub_26C0BB9B0(v39, a2);
            if (!v142)
            {
              goto LABEL_358;
            }

            goto LABEL_46;
          }

          v22 = v349;
          *&v364 = v328;
          DWORD2(v364) = v332;
          WORD6(v364) = WORD2(v332);
          v131 = v345;
          v132 = v322;
          if (!v322)
          {
            __break(1u);
LABEL_420:
            __break(1u);
LABEL_421:
            __break(1u);
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
LABEL_424:
            __break(1u);
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
LABEL_428:
            __break(1u);
LABEL_429:
            __break(1u);
LABEL_430:
            __break(1u);
LABEL_431:
            __break(1u);
LABEL_432:
            __break(1u);
LABEL_433:
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:

            __break(1u);
            return;
          }
        }

        v137 = v113;
        LODWORD(v322) = memcmp(v132, &v364, BYTE6(v113));
        sub_26C0BB9B0(v114, v137);
        sub_26C0BB9B0(v347, v36);
        sub_26C0BB9B0(v340, v131);
        sub_26C0BB9B0(v39, a2);
        if (!v322)
        {
          goto LABEL_358;
        }

LABEL_46:
        ++v70;
        sub_26C0FEEA0(v22, type metadata accessor for GeneralEPSK);
        v69 = v355;
        v68 = v333;
        if (v336 == v70)
        {
          v4 = v341;
          LODWORD(v237) = v339;
LABEL_310:
          if (v237 > 1)
          {
            if (v237 == 2)
            {
              v248 = *(v39 + 24);
              goto LABEL_316;
            }

            v248 = 0;
          }

          else
          {
            if (!v237)
            {
              v248 = BYTE6(a2);
              goto LABEL_318;
            }

            v248 = v39 >> 32;
LABEL_316:
            sub_26C0BBAA4(v39, a2);
          }

LABEL_318:
          if (v248 < v4)
          {
            goto LABEL_393;
          }

          v249 = sub_26C14889C();
          v251 = v250;
          sub_26C0BB9B0(v39, a2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v338 = sub_26C0CDDF0(0, *(v338 + 2) + 1, 1, v338);
          }

          v253 = *(v338 + 2);
          v252 = *(v338 + 3);
          if (v253 >= v252 >> 1)
          {
            v338 = sub_26C0CDDF0((v252 > 1), v253 + 1, 1, v338);
          }

          v254 = v338;
          *(v338 + 2) = v253 + 1;
          v255 = &v254[32 * v253];
          *(v255 + 4) = v249;
          *(v255 + 5) = v251;
          *(v255 + 3) = v321;
          if (v361 >= 0x10000)
          {
            goto LABEL_394;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = v334;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v337 = sub_26C0CDCF4(0, *(v337 + 2) + 1, 1, v337);
          }

          v246 = *(v337 + 2);
          v257 = *(v337 + 3);
          v247 = v246 + 1;
          if (v246 >= v257 >> 1)
          {
            v337 = sub_26C0CDCF4((v257 > 1), v246 + 1, 1, v337);
          }

LABEL_328:
          sub_26C0BB9B0(v39, a2);
          v258 = v337;
          *(v337 + 2) = v247;
          v259 = v361;
          *&v258[2 * v246 + 32] = v361;
          v52 = v259 + 1;
          v53 = v324;
          v54 = v323;
          if (v325 == v259)
          {
LABEL_341:
            v270 = swift_allocBox();
            v272 = v271;
            (*(v358 + 56))(v271, 1, 1, v346);
            v273 = swift_allocObject();
            *(v273 + 16) = 0;
            *(v273 + 18) = 1;
            v274 = *(&v396 + 1);
            if (*(&v396 + 1))
            {
              v275 = *&v397[0];
              v276 = swift_allocObject();
              v277 = v396;
              *(v276 + 208) = v395;
              *(v276 + 224) = v277;
              *(v276 + 240) = v397[0];
              *(v276 + 249) = *(v397 + 9);
              v278 = v392;
              *(v276 + 144) = v391;
              *(v276 + 160) = v278;
              v279 = v394;
              *(v276 + 176) = v393;
              *(v276 + 192) = v279;
              v280 = v388;
              *(v276 + 80) = v387;
              *(v276 + 96) = v280;
              v281 = v390;
              *(v276 + 112) = v389;
              *(v276 + 128) = v281;
              v282 = v384;
              *(v276 + 16) = v383;
              *(v276 + 32) = v282;
              v283 = v386;
              *(v276 + 48) = v385;
              *(v276 + 64) = v283;
              v284 = v337;
              *(v276 + 272) = v273;
              *(v276 + 280) = v284;
              *(v276 + 288) = v270;
              *(v276 + 296) = v343;
              *(v276 + 304) = v342;
              sub_26C0CEB4C(v274, v275);
              sub_26C0FEDE4(&v383, &v364);

              v274(v338, sub_26C0FF098, v276);

              v22 = v334;

              sub_26C0CEB1C(v274, v275);
            }

            else
            {
            }

            swift_beginAccess();
            v285 = v344;
            sub_26C0CF314(v272, v344, &qword_28047A890, &qword_26C14A5C0);
            if ((*(v358 + 48))(v285, 1, v346) == 1)
            {
              sub_26C0CF5C4(v285, &qword_28047A890, &qword_26C14A5C0);
              goto LABEL_348;
            }

            sub_26C0FEF5C(v285, v22, type metadata accessor for GeneralEPSK);
            swift_beginAccess();
            if (*(v273 + 18) == 1)
            {
              sub_26C0FEEA0(v22, type metadata accessor for GeneralEPSK);
LABEL_348:

              a3 = v330;
LABEL_349:
              v286 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
              (*(*(v286 - 8) + 56))(a3, 1, 1, v286);
              return;
            }

            v287 = *(v273 + 16);
            v288 = sub_26C148A7C();
            v289 = sub_26C148FFC();
            if (os_log_type_enabled(v288, v289))
            {
              v290 = swift_slowAlloc();
              *v290 = 0;
              _os_log_impl(&dword_26C0B5000, v288, v289, "epsk selected", v290, 2u);
              MEMORY[0x26D69C3A0](v290, -1, -1);
            }

            v291 = v22;
            v292 = v22;
            v293 = v330;
            sub_26C0FEE38(v291, v330, type metadata accessor for GeneralEPSK);
            if (*(v331 + 16) > v287)
            {
              v294 = (v331 + 24 * v287);
              v295 = v294[4];
              v296 = v294[5];
              v297 = v294[6];
              sub_26C0BBAA4(v295, v296);
              sub_26C0FEEA0(v292, type metadata accessor for GeneralEPSK);
              v298 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
              *(v293 + v298[5]) = v287;
              v299 = (v293 + v298[6]);
              *v299 = v295;
              v299[1] = v296;
              v299[2] = v297;
              *(v293 + v298[7]) = v327;
              (*(*(v298 - 1) + 56))(v293, 0, 1, v298);

              return;
            }

LABEL_396:
            __break(1u);
LABEL_397:
            __break(1u);
LABEL_398:
            __break(1u);
LABEL_399:
            __break(1u);
LABEL_400:
            __break(1u);
            goto LABEL_401;
          }

          goto LABEL_22;
        }
      }

      v96 = 0;
      v97 = v347;
      if (!v347 && v36 == 0xC000000000000000 && v93 >> 62 == 3)
      {
        v96 = 0;
        if (!v92 && v93 == 0xC000000000000000)
        {
          sub_26C0BB9B0(0, 0xC000000000000000);
          v300 = 0;
          v301 = 0xC000000000000000;
          goto LABEL_356;
        }
      }

LABEL_88:
      if (v95 <= 1)
      {
        goto LABEL_89;
      }

      goto LABEL_94;
    }

    a3 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (a3 == 2)
      {
        v61 = *(v39 + 24);
        goto LABEL_36;
      }

      if (v4 <= 0)
      {
        goto LABEL_39;
      }

LABEL_372:
      __break(1u);
LABEL_373:
      swift_once();
      goto LABEL_3;
    }

    if (!a3)
    {
      if (BYTE6(a2) < v4)
      {
        goto LABEL_372;
      }

      goto LABEL_39;
    }

    v61 = v39 >> 32;
LABEL_36:
    sub_26C0BBAA4(v39, a2);
    if (v61 < v4)
    {
      goto LABEL_372;
    }

LABEL_39:
    v62 = sub_26C14889C();
    v64 = v63;
    sub_26C0BB9B0(v39, a2);
    sub_26C0BBAA4(v62, v64);
    v65 = v363;
    sub_26C0C3C20(v62, v64, v381, &v364);
    if (!v65)
    {
      break;
    }

    v363 = 0;
    v66 = v361 + 1;
    sub_26C0BB9B0(v39, a2);
    v67 = v64;
    v56 = v66;
    sub_26C0BB9B0(v62, v67);
    sub_26C0CF030(v381[0], v381[1], v382);
    v55 = v360 + 24;
    v22 += 8;
    if (v350 == v66)
    {
      v22 = v334;
      goto LABEL_341;
    }
  }

  v363 = 0;
  v341 = v4;
  sub_26C0BB9B0(v62, v64);
  v380 = v367;
  *&v378[16] = v365;
  v379 = v366;
  *v378 = v364;
  v155 = *(&v395 + 1);
  v336 = *(*(&v395 + 1) + 16);
  if (!v336)
  {
    v22 = v334;
LABEL_299:
    v238 = *&v378[24];
    *&v372[0] = *v378;
    *(v372 + 8) = *&v378[8];
    v239 = v379;
    v368 = __PAIR128__(v379, *&v378[24]);
    *&v369 = *(&v379 + 1);
    sub_26C0BBAA4(*v378, *&v378[8]);
    sub_26C0BB37C(v238, v239);
    SwiftOfferedEPSK.init(external_identity:context:)(v372, &v368, &v374);
    v347 = v375;
    v360 = v374;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v338 = sub_26C0CDDF0(0, *(v338 + 2) + 1, 1, v338);
    }

    v241 = *(v338 + 2);
    v240 = *(v338 + 3);
    if (v241 >= v240 >> 1)
    {
      v338 = sub_26C0CDDF0((v240 > 1), v241 + 1, 1, v338);
    }

    v242 = v338;
    *(v338 + 2) = v241 + 1;
    v243 = &v242[32 * v241];
    v244 = v347;
    *(v243 + 2) = v360;
    *(v243 + 3) = v244;
    if (v361 < 0x10000)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v337 = sub_26C0CDCF4(0, *(v337 + 2) + 1, 1, v337);
      }

      v246 = *(v337 + 2);
      v245 = *(v337 + 3);
      v247 = v246 + 1;
      if (v246 >= v245 >> 1)
      {
        v337 = sub_26C0CDCF4((v245 > 1), v246 + 1, 1, v337);
      }

      sub_26C0C4BEC(v378);
      goto LABEL_328;
    }

    goto LABEL_395;
  }

  v156 = 0;
  v335 = *(&v395 + 1) + ((*(v358 + 80) + 32) & ~*(v358 + 80));
  v322 = v39 >> 32;
  v329 = BYTE6(a2);
  v22 = v334;
  v332 = *(&v395 + 1);
  v333 = v39;
  while (2)
  {
    if (v156 >= *(v155 + 16))
    {
      goto LABEL_380;
    }

    v157 = *(v358 + 72);
    v339 = v156;
    v158 = v335 + v157 * v156;
    v159 = v357;
    sub_26C0FEE38(v158, v357, type metadata accessor for GeneralEPSK);
    v160 = v159;
    v161 = v353;
    sub_26C0FEE38(v160, v353, type metadata accessor for PSK);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v162 = v22;
      v163 = v354;
      sub_26C0FEF5C(v161, v354, type metadata accessor for RawEPSK);
      v164 = v163[1];
      v165 = v163[2];
      v166 = *v163;
      sub_26C0BBAA4(*v163, v164);
      sub_26C0FEEA0(v163, type metadata accessor for RawEPSK);
      v345 = v164;
      v167 = v164 >> 62;
      if ((v164 >> 62) > 1)
      {
        goto LABEL_182;
      }

LABEL_192:
      v168 = v166;
      if (v167)
      {
        v169 = v166 >> 32;
      }

      else
      {
        v169 = BYTE6(v345);
      }
    }

    else
    {
      v170 = v351;
      sub_26C0FEF5C(v161, v351, type metadata accessor for ImportedPSK);
      v171 = *(v170 + 16);
      v372[0] = *v170;
      v372[1] = v171;
      v173 = *v170;
      v172 = *(v170 + 16);
      v372[2] = *(v170 + 32);
      v373 = *(v170 + 48);
      v368 = v173;
      v369 = v172;
      v370 = *(v170 + 32);
      v371 = *(v170 + 48);
      sub_26C0C4BB4(v372, &v374);
      v174 = sub_26C0C2C6C();
      v176 = v175;
      v374 = v368;
      v375 = v369;
      v376 = v370;
      v377 = v371;
      sub_26C0C4BEC(&v374);
      sub_26C0FEEA0(v170, type metadata accessor for ImportedPSK);
      v345 = v176;
      v167 = v176 >> 62;
      v162 = v22;
      if ((v176 >> 62) > 1)
      {
        v165 = 0;
        if (v167 == 2)
        {
          v165 = *(v174 + 16);
        }
      }

      else if (v167)
      {
        v165 = v174;
      }

      else
      {
        v165 = 0;
      }

      v166 = v174;
      if (v167 <= 1)
      {
        goto LABEL_192;
      }

LABEL_182:
      v168 = v166;
      if (v167 == 2)
      {
        v169 = *(v166 + 24);
      }

      else
      {
        v169 = 0;
      }
    }

    v22 = v162;
    v39 = v333;
    if (v169 < v165)
    {
      goto LABEL_381;
    }

    sub_26C0BBAA4(v333, a2);
    v340 = v168;
    v177 = v345;
    v4 = sub_26C14889C();
    v36 = v178;
    if (a3 > 1)
    {
      v180 = v341;
      if (a3 == 2)
      {
        v179 = *(v39 + 24);
      }

      else
      {
        v179 = 0;
      }
    }

    else
    {
      v179 = v329;
      v180 = v341;
      if (a3)
      {
        v179 = v322;
      }
    }

    if (v179 < v180)
    {
      goto LABEL_382;
    }

    *&v347 = v4;
    v181 = sub_26C14889C();
    v183 = v36 >> 62;
    v184 = v182 >> 62;
    if (v36 >> 62 == 3)
    {
      v185 = 0;
      if (!v347 && v36 == 0xC000000000000000 && v182 >> 62 == 3)
      {
        v185 = 0;
        if (!v181 && v182 == 0xC000000000000000)
        {
          sub_26C0BB9B0(0, 0xC000000000000000);
          v309 = 0;
          v310 = 0xC000000000000000;
LABEL_361:
          sub_26C0BB9B0(v309, v310);
          goto LABEL_362;
        }
      }

LABEL_220:
      if (v184 <= 1)
      {
        goto LABEL_221;
      }

LABEL_226:
      if (v184 == 2)
      {
        v190 = *(v181 + 16);
        v189 = *(v181 + 24);
        v50 = __OFSUB__(v189, v190);
        v188 = v189 - v190;
        if (v50)
        {
          goto LABEL_386;
        }

        goto LABEL_228;
      }

      if (!v185)
      {
        goto LABEL_355;
      }

LABEL_177:
      sub_26C0BB9B0(v181, v182);
      sub_26C0BB9B0(v347, v36);
      sub_26C0BB9B0(v39, a2);
      sub_26C0BB9B0(v340, v177);
LABEL_178:
      v156 = v339 + 1;
      sub_26C0FEEA0(v357, type metadata accessor for GeneralEPSK);
      v155 = v332;
      if (v336 == v156)
      {
        goto LABEL_299;
      }

      continue;
    }

    break;
  }

  if (v183 > 1)
  {
    if (v183 == 2)
    {
      v187 = *(v347 + 16);
      v186 = *(v347 + 24);
      v50 = __OFSUB__(v186, v187);
      v185 = v186 - v187;
      if (v50)
      {
        goto LABEL_390;
      }

      goto LABEL_220;
    }

    v185 = 0;
    if (v184 <= 1)
    {
      goto LABEL_221;
    }

    goto LABEL_226;
  }

  if (v183)
  {
    LODWORD(v185) = DWORD1(v347) - v347;
    if (__OFSUB__(DWORD1(v347), v347))
    {
      goto LABEL_389;
    }

    v185 = v185;
    goto LABEL_220;
  }

  v185 = BYTE6(v36);
  if (v184 > 1)
  {
    goto LABEL_226;
  }

LABEL_221:
  if (v184)
  {
    LODWORD(v188) = HIDWORD(v181) - v181;
    if (__OFSUB__(HIDWORD(v181), v181))
    {
      goto LABEL_385;
    }

    v188 = v188;
  }

  else
  {
    v188 = BYTE6(v182);
  }

LABEL_228:
  if (v185 != v188)
  {
    goto LABEL_177;
  }

  if (v185 < 1)
  {
LABEL_355:
    sub_26C0BB9B0(v181, v182);
    v309 = v347;
    v310 = v36;
    goto LABEL_361;
  }

  if (v183 > 1)
  {
    if (v183 != 2)
    {
      *(&v374 + 6) = 0;
      *&v374 = 0;
      v4 = v181;
      v202 = v182;
      v203 = v363;
      sub_26C0BE04C(&v374, v181, v182, v372);
      v363 = v203;
      if (v203)
      {
        goto LABEL_437;
      }

      sub_26C0BB9B0(v347, v36);
      sub_26C0BB9B0(v39, a2);
      sub_26C0BB9B0(v340, v177);
      sub_26C0BB9B0(v4, v202);
      if (v372[0])
      {
        goto LABEL_363;
      }

      goto LABEL_178;
    }

    v326 = v181;
    v328 = v182;
    v194 = *(v347 + 16);
    v195 = sub_26C1487BC();
    if (v195)
    {
      v196 = v195;
      v197 = sub_26C1487EC();
      if (__OFSUB__(v194, v197))
      {
        goto LABEL_399;
      }

      v319 = (v194 - v197 + v196);
    }

    else
    {
      v319 = 0;
    }

    v22 = v334;
    sub_26C1487DC();
    if (v184 == 2)
    {
      v4 = v326;
      v219 = v328;
      v220 = v363;
      v221 = sub_26C0FEFE0(*(v326 + 16), *(v326 + 24), v328 & 0x3FFFFFFFFFFFFFFFLL, v319);
      v363 = v220;
      sub_26C0BB9B0(v4, v219);
      sub_26C0BB9B0(v347, v36);
      sub_26C0BB9B0(v39, a2);
      sub_26C0BB9B0(v340, v345);
      if (v221)
      {
        goto LABEL_363;
      }

      goto LABEL_178;
    }

    v320 = v36;
    v204 = v328;
    v36 = v326;
    if (v184 != 1)
    {
      v222 = v319;
      *&v374 = v326;
      DWORD2(v374) = v328;
      WORD6(v374) = WORD2(v328);
      v4 = v347;
      if (!v319)
      {
        goto LABEL_432;
      }

LABEL_275:
      v227 = v204;
      v217 = memcmp(v222, &v374, BYTE6(v204));
      sub_26C0BB9B0(v36, v227);
      v218 = v4;
      v228 = v320;
      goto LABEL_295;
    }

    v205 = v326;
    v206 = (v326 >> 32) - v326;
    if (v326 >> 32 < v326)
    {
      goto LABEL_409;
    }

    v207 = sub_26C1487BC();
    v36 = v320;
    if (v207)
    {
      v208 = v207;
      v209 = sub_26C1487EC();
      if (__OFSUB__(v205, v209))
      {
        goto LABEL_417;
      }

      v210 = (v205 - v209 + v208);
    }

    else
    {
      v210 = 0;
    }

    v4 = v347;
    v229 = sub_26C1487DC();
    if (v229 >= v206)
    {
      v230 = v206;
    }

    else
    {
      v230 = v229;
    }

    v231 = v319;
    if (!v319)
    {
      goto LABEL_434;
    }

    v22 = v334;
    if (!v210)
    {
      goto LABEL_433;
    }

    if (v319 == v210)
    {
      goto LABEL_371;
    }

    v232 = v230;
    v233 = v210;
LABEL_293:
    v217 = memcmp(v231, v233, v232);
    sub_26C0BB9B0(v326, v328);
    v218 = v4;
LABEL_294:
    v228 = v36;
LABEL_295:
    sub_26C0BB9B0(v218, v228);
    sub_26C0BB9B0(v39, a2);
    sub_26C0BB9B0(v340, v345);
    if (!v217)
    {
      goto LABEL_363;
    }

    goto LABEL_178;
  }

  if (!v183)
  {
    v4 = v347;
    *&v374 = v347;
    WORD4(v374) = v36;
    BYTE10(v374) = BYTE2(v36);
    BYTE11(v374) = BYTE3(v36);
    BYTE12(v374) = BYTE4(v36);
    BYTE13(v374) = BYTE5(v36);
    v191 = v182;
    v192 = v181;
    v193 = v363;
    sub_26C0BE04C(&v374, v181, v182, v372);
    v363 = v193;
    if (v193)
    {
      goto LABEL_437;
    }

    sub_26C0BB9B0(v4, v36);
    sub_26C0BB9B0(v39, a2);
    sub_26C0BB9B0(v340, v177);
    sub_26C0BB9B0(v192, v191);
    v22 = v334;
    if (v372[0])
    {
      goto LABEL_363;
    }

    goto LABEL_178;
  }

  v326 = v181;
  v328 = v182;
  v198 = v347;
  if (v347 > v347 >> 32)
  {
    goto LABEL_392;
  }

  v199 = sub_26C1487BC();
  if (v199)
  {
    v200 = v199;
    v201 = sub_26C1487EC();
    if (__OFSUB__(v198, v201))
    {
      goto LABEL_400;
    }

    v319 = (v198 - v201 + v200);
  }

  else
  {
    v319 = 0;
  }

  sub_26C1487DC();
  if (v184 == 2)
  {
    v223 = *(v326 + 16);
    v320 = *(v326 + 24);
    v224 = sub_26C1487BC();
    if (v224)
    {
      v225 = v224;
      v226 = sub_26C1487EC();
      if (__OFSUB__(v223, v226))
      {
        goto LABEL_416;
      }

      v318 = (v223 - v226 + v225);
    }

    else
    {
      v318 = 0;
    }

    v234 = &v320[-v223];
    if (__OFSUB__(v320, v223))
    {
      goto LABEL_411;
    }

    v235 = sub_26C1487DC();
    if (v235 >= v234)
    {
      v236 = v234;
    }

    else
    {
      v236 = v235;
    }

    v22 = v334;
    v231 = v319;
    if (!v319)
    {
      goto LABEL_430;
    }

    v4 = v347;
    v233 = v318;
    if (!v318)
    {
      goto LABEL_429;
    }

    if (v319 == v318)
    {
      goto LABEL_371;
    }

    v232 = v236;
    goto LABEL_293;
  }

  v320 = v36;
  v204 = v328;
  v36 = v326;
  if (v184 != 1)
  {
    v22 = v334;
    v222 = v319;
    *&v374 = v326;
    DWORD2(v374) = v328;
    WORD6(v374) = WORD2(v328);
    v4 = v347;
    if (!v319)
    {
      goto LABEL_431;
    }

    goto LABEL_275;
  }

  v211 = v326;
  v212 = (v326 >> 32) - v326;
  if (v326 >> 32 < v326)
  {
    goto LABEL_410;
  }

  v4 = sub_26C1487BC();
  v36 = v320;
  if (v4)
  {
    v213 = sub_26C1487EC();
    if (__OFSUB__(v211, v213))
    {
      goto LABEL_418;
    }

    v4 += v211 - v213;
  }

  v214 = v347;
  v215 = sub_26C1487DC();
  if (v215 >= v212)
  {
    v216 = v212;
  }

  else
  {
    v216 = v215;
  }

  if (!v319)
  {
    goto LABEL_436;
  }

  v22 = v334;
  if (!v4)
  {
    goto LABEL_435;
  }

  if (v319 != v4)
  {
    v217 = memcmp(v319, v4, v216);
    sub_26C0BB9B0(v326, v328);
    v218 = v214;
    goto LABEL_294;
  }

  sub_26C0BB9B0(v326, v328);
  v316 = v214;
LABEL_376:
  sub_26C0BB9B0(v316, v36);
  v177 = v345;
LABEL_362:
  sub_26C0BB9B0(v39, a2);
  sub_26C0BB9B0(v340, v177);
LABEL_363:

  sub_26C0FEE38(v357, v330, type metadata accessor for GeneralEPSK);
  v311 = v361;
  if (v361 >= 0x10000)
  {
    goto LABEL_403;
  }

  if (v361 >= *(v331 + 16))
  {
    goto LABEL_404;
  }

  v312 = *(v360 - 16);
  v313 = *(v360 - 8);
  v314 = *v360;
  sub_26C0BBAA4(v312, v313);
  sub_26C0C4BEC(v378);
  sub_26C0BB9B0(v39, a2);
  sub_26C0FEEA0(v357, type metadata accessor for GeneralEPSK);
  v306 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  v307 = v330;
  *(v330 + v306[5]) = v311;
  v315 = (v307 + v306[6]);
  *v315 = v312;
  v315[1] = v313;
  v315[2] = v314;
LABEL_366:
  *(v307 + v306[7]) = v327;
  (*(*(v306 - 1) + 56))(v307, 0, 1, v306);
}