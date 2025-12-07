uint64_t sub_23B9CD524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  type metadata accessor for SubscriptionStoreEntitlementLoadingView(0, a2, a3, v14);
  sub_23BBDBB48();
  v15 = sub_23B97AD88();
  v18[0] = a3;
  v18[1] = v15;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v16 = *(v7 + 8);
  v16(v10, v5);
  sub_23B9D2D88();
  return (v16)(v13, v5);
}

uint64_t sub_23B9CD6AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SubscriptionStoreEntitlementLoadingView.LoadingView(0, a3, a5, v9);
  *(a4 + *(result + 36)) = a2;
  return result;
}

void sub_23B9CD738(uint64_t a1)
{
  sub_23B9CE1B4(319, &qword_27E199C80, &qword_27E199C88, qword_23BBEB260, type metadata accessor for EntitlementTaskState);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9CE218(319, &qword_27E197B20, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23B9CE15C(319);
        if (v4 <= 0x3F)
        {
          sub_23B9CE1B4(319, &qword_27E199C98, qword_27E199BF8, &qword_23BBE8DF0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_23B9CE218(319, &qword_27E199CA0, &_s23MarketingModifierValuesVN, MEMORY[0x277CDF468]);
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

uint64_t sub_23B9CD8C8(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_23BBD9848() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v13 - 1;
  if ((v13 - 1) <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = v14 - 1;
  if (v7 <= v14 - 1)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = v7;
  }

  v17 = *(v6 + 80);
  v18 = *(v11 + 80);
  v19 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + 7;
  v21 = *(v8 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 23;
  v24 = v18 & 0xF8 | 7;
  v25 = v9 + v24 + 1;
  v26 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (a2 <= v16)
  {
    goto LABEL_29;
  }

  v27 = ((((((v26 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + ((v25 + ((v23 + ((v20 + ((v17 + 41) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v24) + 17;
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v29 = ((a2 - v16 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v29))
    {
      v30 = *(a1 + v27);
      if (!v30)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v29 > 0xFF)
    {
      v30 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v29 < 2)
    {
      goto LABEL_29;
    }
  }

  v30 = *(a1 + v27);
  if (!*(a1 + v27))
  {
LABEL_29:
    v34 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v17 + 41) & ~v17;
    if (v7 >= v15)
    {

      return __swift_getEnumTagSinglePayload(v34, v7, v5);
    }

    else
    {
      v35 = (v20 + v34) & 0xFFFFFFFFFFFFFFF8;
      if (v16 > 0x7FFFFFFE)
      {
        v37 = (v25 + ((v23 + v35) & v22)) & ~v24;
        if (v13 <= 0)
        {
          if (v12 < 0xFD)
          {
            v41 = *(((v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v41 >= 2)
            {
              v42 = (v41 + 2147483646) & 0x7FFFFFFF;
            }

            else
            {
              v42 = -1;
            }

            if ((v42 + 1) >= 2)
            {
              EnumTagSinglePayload = v42;
            }

            else
            {
              EnumTagSinglePayload = 0;
            }
          }

          else
          {
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v12, v10);
          }

          v39 = EnumTagSinglePayload - 1;
          if (EnumTagSinglePayload < 2)
          {
            v39 = 0;
          }
        }

        else
        {
          v38 = *(((v26 + 9 + v37) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v38 >= 0xFFFFFFFF)
          {
            LODWORD(v38) = -1;
          }

          v39 = v38 + 1;
        }

        if (v39 >= 2)
        {
          return v39 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v36 = *(v35 + 8);
        if (v36 >= 0xFFFFFFFF)
        {
          LODWORD(v36) = -1;
        }

        if ((v36 + 1) >= 2)
        {
          return v36;
        }

        else
        {
          return 0;
        }
      }
    }
  }

LABEL_22:
  v32 = (v30 - 1) << v28;
  if (v27 >= 4)
  {
    v32 = 0;
  }

  if (((((((v26 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + ((v25 + ((v23 + ((v20 + ((v17 + 41) & ~v17)) & 0xFFFFFFF8)) & v22)) & ~v24) == -16)
  {
    v33 = *a1;
  }

  else
  {
    v33 = *a1;
  }

  return v16 + (v33 | v32) + 1;
}

void sub_23B9CDC64(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(sub_23BBD9848() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = sub_23BBDCDB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= 0xFD)
  {
    v15 = 253;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = v15 - 1;
  if ((v15 - 1) <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v15 - 1;
  }

  v18 = v17 - 1;
  if (v9 <= v17 - 1)
  {
    v19 = v17 - 1;
  }

  else
  {
    v19 = v9;
  }

  v20 = *(v8 + 80);
  v21 = *(v8 + 64) + 7;
  v22 = *(v10 + 80) & 0xF8;
  v23 = ~v22 & 0xFFFFFFFFFFFFFFF8;
  v24 = v22 + 23;
  v25 = *(v13 + 80) & 0xF8 | 7;
  v26 = v11 + v25 + 1;
  v27 = (v26 + ((v22 + 23 + ((v21 + ((v20 + 41) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & v23)) & ~v25;
  v28 = *(*(v12 - 8) + 64);
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((((((v29 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v27 + 17;
  v31 = 8 * v30;
  if (a3 <= v19)
  {
    v32 = 0;
  }

  else if (v30 <= 3)
  {
    v37 = ((a3 - v19 + ~(-1 << v31)) >> v31) + 1;
    if (HIWORD(v37))
    {
      v32 = 4;
    }

    else
    {
      if (v37 < 0x100)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2;
      }

      if (v37 >= 2)
      {
        v32 = v38;
      }

      else
      {
        v32 = 0;
      }
    }
  }

  else
  {
    v32 = 1;
  }

  if (v19 < a2)
  {
    v33 = ~v19 + a2;
    if (v30 < 4)
    {
      v34 = (v33 >> v31) + 1;
      bzero(a1, ((((((v29 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v27 + 17);
      if (v30 == 1)
      {
        *a1 = v33;
LABEL_44:
        switch(v32)
        {
          case 1:
            *(a1 + v30) = v34;
            return;
          case 2:
            *(a1 + v30) = v34;
            return;
          case 3:
            goto LABEL_75;
          case 4:
            *(a1 + v30) = v34;
            return;
          default:
            return;
        }
      }

      v33 &= ~(-1 << v31);
    }

    else
    {
      bzero(a1, ((((((v29 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v27 + 17);
      v34 = 1;
    }

    *a1 = v33;
    goto LABEL_44;
  }

  v35 = v29 + 9;
  v36 = ~v25;
  switch(v32)
  {
    case 1:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 3:
LABEL_75:
      __break(1u);
      JUMPOUT(0x23B9CE134);
    case 4:
      *(a1 + v30) = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (!a2)
      {
        return;
      }

LABEL_34:
      v39 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v20 + 41) & ~v20;
      if (v9 >= v18)
      {
        v41 = a2;
        v14 = v9;
        v12 = v7;
LABEL_38:

        __swift_storeEnumTagSinglePayload(v39, v41, v14, v12);
        return;
      }

      v40 = (v21 + v39) & 0xFFFFFFFFFFFFFFF8;
      if (v19 <= 0x7FFFFFFE)
      {
        *(v40 + 8) = a2;
        return;
      }

      v42 = ((v26 + ((v24 + v40) & v23)) & v36);
      v43 = (((v29 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
      if (v18 < a2)
      {
        v44 = (v43 + 31) & 0xFFFFFFF8;
        if (v44 == -8)
        {
          return;
        }

        v45 = a2 - v17;
        bzero(v42, v44 + 8);
        goto LABEL_53;
      }

      v46 = a2 - v17;
      if (a2 >= v17)
      {
        if (v43 == -24)
        {
          return;
        }

        bzero(v42, (v43 + 24));
        goto LABEL_60;
      }

      v47 = a2 + 1;
      if (v15 > 0)
      {
        if (v47 < 0)
        {
          v48 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          v48 = a2;
        }

        *((&v42[v35] & 0xFFFFFFFFFFFFFFF8) + 8) = v48;
        return;
      }

      v46 = a2 - v16;
      if (a2 >= v16)
      {
        bzero(v42, v29 + 9);
        if (v35 <= 3)
        {
          *v42 = v46;
          return;
        }

LABEL_60:
        *v42 = v46;
        return;
      }

      v41 = (a2 + 2);
      if (v41 <= v15)
      {
        if (v14 < 0xFD)
        {
          v49 = &v42[v28 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFB)
          {
            *v49 = 0;
            *(v49 + 8) = 0;
            *v49 = a2 - 252;
          }

          else
          {
            *(v49 + 8) = ((a2 + 2) & 0xFE | a2 & 1) + 2;
          }

          return;
        }

        v39 = v42;
        goto LABEL_38;
      }

      v45 = v47 - v15;
      bzero(v42, v29 + 9);
      if (v35 > 3)
      {
LABEL_53:
        *v42 = v45;
        return;
      }

      *v42 = v45;
      return;
  }
}

void sub_23B9CE15C(uint64_t a1)
{
  if (!qword_27E199C90)
  {
    sub_23BBD9848();
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E199C90);
    }
  }
}

void sub_23B9CE1B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23B9CE218(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23B9CE2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v61 = a2;
  v3 = sub_23BBD98B8();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199D90, &qword_23BBE8FF8);
  MEMORY[0x28223BE20](v5);
  v41 = &v40 - v6;
  v49 = *(a1 + 16);
  v52 = sub_23BBDA358();
  v7 = *(a1 + 24);
  v8 = sub_23B97AD88();
  v73 = v7;
  v74 = v8;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDACB8();
  v9 = sub_23BBDA358();
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v40 - v10;
  v48 = v9;
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  v11 = sub_23BBDA358();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = &v40 - v12;
  v13 = sub_23B9CF720();
  v42 = v13;
  v14 = swift_getWitnessTable();
  v71 = v13;
  v72 = v14;
  v15 = swift_getWitnessTable();
  v45 = v15;
  v16 = sub_23B9A243C();
  v69 = v15;
  v70 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938, &unk_23BBE8F30, &unk_23BBFBEC0);
  v67 = v17;
  v68 = v18;
  v44 = v11;
  v43 = swift_getWitnessTable();
  v65 = v11;
  v66 = v43;
  v46 = MEMORY[0x277D7ED78];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v25 = v41;
  sub_23BBD9898();
  KeyPath = swift_getKeyPath();
  v27 = v25 + *(v5 + 36);
  *v27 = KeyPath;
  *(v27 + 8) = 1;
  v62 = v49;
  v63 = v7;
  v28 = v56;
  v64 = v56;
  sub_23B9C2924(v29);
  v30 = v51;
  sub_23BBDB6B8();
  sub_23B979910(v25, &qword_27E199D90, &qword_23BBE8FF8);
  v31 = v50;
  v32 = v48;
  sub_23B9A2228(*(v28 + *(v57 + 36)), v48, v45);
  (*(v55 + 8))(v30, v32);
  v34 = v58;
  v33 = v59;
  v35 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277D7EC68], v60);
  v36 = v44;
  v37 = v43;
  sub_23BBDB688();
  (*(v33 + 8))(v34, v35);
  (*(v54 + 8))(v31, v36);
  v65 = v36;
  v66 = v37;
  swift_getOpaqueTypeConformance2();
  sub_23B9D2D88();
  v38 = *(v47 + 8);
  v38(v21, OpaqueTypeMetadata2);
  sub_23B9D2D88();
  return (v38)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_23B9CE954@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23B9CEA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23BBDA358();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  sub_23BBDBB48();
  v11 = sub_23B97AD88();
  v14[0] = a3;
  v14[1] = v11;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_23B9D2D88();
  return (v12)(v10, v4);
}

unint64_t sub_23B9CEBD4()
{
  result = qword_27E199CD8;
  if (!qword_27E199CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199CD8);
  }

  return result;
}

id sub_23B9CEC34(id result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

void sub_23B9CEC50(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

unint64_t sub_23B9CEC6C(double a1)
{
  result = qword_27E199CF8;
  if (!qword_27E199CF8)
  {
    type metadata accessor for SubscriptionEntitlementValidator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199CF8);
  }

  return result;
}

uint64_t sub_23B9CECE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9CED4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B9CEDAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9CEE04(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B9CEE7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_23B9CEFF8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23B9CF224);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v7 < 0xFE)
        {
          a1[v9] = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23B9CF24C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB0, &unk_23BBE8F20);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8, &qword_23BBEF050);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  type metadata accessor for SubscriptionStoreStaticView(255, v2, v1, v3);
  sub_23BBDACE8();
  sub_23BBDA358();
  sub_23B97AD88();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDACB8();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CC0, &unk_23BBF4A10);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for SubscriptionStoreEntitlementLoadingView.LoadingView(255, v2, v1, v4);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDACE8();
  v5 = MEMORY[0x277CE0868];
  sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0, &unk_23BBE8F20, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8, &qword_23BBEF050, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_9();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_6(WitnessTable);
  swift_getWitnessTable();
  sub_23B9CEBD4();
  OUTLINED_FUNCTION_1_12();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9A243C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_11();
  sub_23B97B518(v7, &qword_27E199938, &unk_23BBE8F30, v8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_7();
  sub_23B97B518(v9, &qword_27E199CC0, &unk_23BBF4A10, v10);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  type metadata accessor for SubscriptionEntitlementValidator(255);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8, &unk_23BBE8F40);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  sub_23B9CEC6C(v11);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E199D00, &qword_27E199CE8, &unk_23BBE8F40, v5);
  return swift_getWitnessTable();
}

unint64_t sub_23B9CF720()
{
  result = qword_27E199D98;
  if (!qword_27E199D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199D90, &qword_23BBE8FF8);
    sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8, &unk_23BBE9000, MEMORY[0x277D7EAF0]);
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8, &qword_23BBE6C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199D98);
  }

  return result;
}

uint64_t sub_23B9CF818(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199D90, &qword_23BBE8FF8);
  sub_23BBDA358();
  sub_23B97AD88();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDACB8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938, &unk_23BBE8F30);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23B9CF720();
  OUTLINED_FUNCTION_1_12();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9A243C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_11();
  sub_23B97B518(v1, &qword_27E199938, &unk_23BBE8F30, v2);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t result)
{
  *(v2 - 152) = v1;
  *(v2 - 144) = result;
  return result;
}

uint64_t sub_23B9CFA7C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a2 & 1;
  v25 = a4 & 1;
  v24 = a6 & 1;
  v23 = a8 & 1;
  v13 = a1;
  v14 = a2 & 1;
  v15 = a3;
  v16 = a4 & 1;
  v17 = a5;
  v18 = a6 & 1;
  v19 = a7;
  v20 = a8 & 1;
  v21 = a9;
  v22 = a10;
  return MEMORY[0x23EEB43C0](&v13, a11, &type metadata for CooperativeFrameModifier, a12);
}

uint64_t sub_23B9CFB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 48);
  v5 = *(v2 + 8);
  v15 = *(v2 + 24);
  v14 = *(v2 + 40);
  v13 = *(v2 + 56);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v7;
  *(a2 + 40) = v14;
  *(a2 + 48) = v8;
  *(a2 + 56) = v13;
  *(a2 + 64) = *(v2 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DB0, &qword_23BBE90F0) + 44);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DB8, &qword_23BBE90F8);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2 + v9, a1, v10);
}

uint64_t sub_23B9CFC7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B9CFC9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

unint64_t sub_23B9CFCF0()
{
  result = qword_27E199DC0;
  if (!qword_27E199DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199DB0, &qword_23BBE90F0);
    sub_23B97B518(&qword_27E199DC8, &qword_27E199DD0, &qword_23BBE9118, MEMORY[0x277CDF510]);
    sub_23B97B518(&qword_27E199DD8, &qword_27E199DB8, &qword_23BBE90F8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199DC0);
  }

  return result;
}

double sub_23B9CFDD4(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v48 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_23BBD9F58();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BAC75E4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v47 = v10;
    (*(v10 + 32))(v12, v8, v9);
    sub_23BBDA098();
    sub_23B9D0F30();
    sub_23BBDD438();
    sub_23BBDD4A8();
    if (sub_23BBDD498() != 1)
    {
      if (qword_27E1976D0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for SKLogger(0);
      v46 = __swift_project_value_buffer(v14, qword_27E1BFC88);
      v51 = 0.0;
      v52 = 0xE000000000000000;
      sub_23BBDD768();
      MEMORY[0x23EEB5890](0xD000000000000035, 0x800000023BBE0790);
      sub_23BBDD438();
      sub_23BBDD4A8();
      v50 = sub_23BBDD498();
      v15 = sub_23BBDDA38();
      MEMORY[0x23EEB5890](v15);

      v17 = *&v51;
      v16 = v52;
      v18 = sub_23BBDD5A8();

      v19 = sub_23BBD9988();

      v46 = v19;
      if (os_log_type_enabled(v19, v18))
      {
        v20 = v17;
        v21 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v51 = *&v45;
        *v21 = 136446466;
        *(v21 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v51);
        *(v21 + 12) = 2082;
        v22 = sub_23BA5AB90(v20, v16, &v51);
        LOBYTE(v20) = a2;
        v23 = v18;
        v24 = v22;

        *(v21 + 14) = v24;
        v25 = v23;
        a2 = v20;
        v26 = v46;
        _os_log_impl(&dword_23B970000, v46, v25, "%{public}s%{public}s", v21, 0x16u);
        v27 = v45;
        swift_arrayDestroy();
        MEMORY[0x23EEB6DC0](v27, -1, -1);
        MEMORY[0x23EEB6DC0](v21, -1, -1);
      }

      else
      {
      }
    }

    LOBYTE(v51) = a2 & 1;
    LOBYTE(v50) = v48 & 1;
    sub_23B9D03BC(&v51);
    v28 = v51;
    v29 = v52;
    v30 = v54;
    v31 = v55;
    v32 = v56;
    v33 = v53;
    v34 = v58;
    v35 = v57;
    LOBYTE(v50) = a2 & 1;
    LOBYTE(v49) = v48 & 1;
    sub_23BBD9F18();
    v13 = v36;
    if ((a2 & 1) == 0)
    {
      v39 = 0;
      v40 = 0;
      v38 = v48;
      goto LABEL_20;
    }

    v38 = v48;
    if ((v29 & 1) != 0 || v36 >= v28)
    {
      v40 = 0;
      v39 = 1;
      if ((v32 & 1) != 0 || v31 >= v36)
      {
LABEL_20:
        v41 = v47;
        if (v38)
        {
          if ((v30 & 1) == 0 && v37 < v33)
          {
            v38 = 0;
            goto LABEL_28;
          }

          if ((v34 & 1) == 0 && v35 < v37)
          {
            v38 = 0;
            goto LABEL_28;
          }
        }

        if (!v40)
        {
LABEL_29:
          (*(v41 + 8))(v12, v9);
          return v13;
        }

LABEL_28:
        LOBYTE(v50) = v39;
        LOBYTE(v49) = v38 & 1;
        sub_23BBD9F18();
        v13 = v42;
        goto LABEL_29;
      }

      v39 = 0;
    }

    else
    {
      v39 = 0;
    }

    v40 = 1;
    goto LABEL_20;
  }

  sub_23B9D0EC8(v8);
  if (v4[8])
  {
    return 0.0;
  }

  else
  {
    return *v4;
  }
}

void sub_23B9D03BC(uint64_t a2@<X8>)
{
  v4 = COERCE_DOUBLE(sub_23BBDA418());
  v6 = v5;
  v8 = v7;
  v30 = v9;
  v10 = sub_23BBDA418();
  v31 = v11;
  v29 = v12;
  v28 = v13;
  if ((*(v2 + 8) & 1) == 0)
  {
    v14 = v4;
    v4 = *v2;
    v15 = *v2;
    sub_23BBD9F18();
    if (v16 > v4)
    {
      v4 = v14;
    }

    if (v16 <= v15)
    {
      v6 = 0;
    }
  }

  if ((*(v2 + 24) & 1) == 0)
  {
    v17 = v4;
    v18 = *(v2 + 16);
    v19 = v18;
    sub_23BBD9F18();
    if (v20 <= v18)
    {
      v10 = *&v18;
    }

    v4 = v17;
    v21 = v31;
    if (v20 <= v19)
    {
      v21 = 0;
    }

    v31 = v21;
  }

  v22 = v30;
  if ((*(v2 + 40) & 1) == 0)
  {
    v23 = *(v2 + 32);
    sub_23BBD9F18();
    if (v24 <= v23)
    {
      v8 = v23;
      v22 = 0;
    }
  }

  if ((*(v2 + 56) & 1) != 0 || (v25 = *(v2 + 48), sub_23BBD9F18(), v26 > v25))
  {
    v25 = v29;
    v27 = v28;
  }

  else
  {
    v27 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v8;
  *(a2 + 24) = v22 & 1;
  *(a2 + 32) = v10;
  *(a2 + 40) = v31 & 1;
  *(a2 + 48) = v25;
  *(a2 + 56) = v27 & 1;
}

uint64_t sub_23B9D059C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_23BBDA228();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_23BBD9F58();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BAC75E4();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    return sub_23B9D0EC8(v17);
  }

  v36 = v19;
  v37 = v8;
  (*(v19 + 32))(v21, v17, v18);
  sub_23BBDA098();
  sub_23B9D0F30();
  sub_23BBDD438();
  sub_23BBDD4A8();
  if (sub_23BBDD498() != 1)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for SKLogger(0);
    v35 = __swift_project_value_buffer(v23, qword_27E1BFC88);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD000000000000035, 0x800000023BBE0790);
    sub_23BBDD438();
    sub_23BBDD4A8();
    v41 = sub_23BBDD498();
    v24 = sub_23BBDDA38();
    MEMORY[0x23EEB5890](v24);

    v25 = v39;
    v26 = v40;
    v27 = sub_23BBDD5A8();

    v28 = sub_23BBD9988();

    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v29 = 136446466;
      *(v29 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v39);
      *(v29 + 12) = 2082;
      v30 = sub_23BA5AB90(v25, v26, &v39);

      *(v29 + 14) = v30;
      _os_log_impl(&dword_23B970000, v28, v27, "%{public}s%{public}s", v29, 0x16u);
      v31 = v35;
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v31, -1, -1);
      MEMORY[0x23EEB6DC0](v29, -1, -1);
    }

    else
    {
    }
  }

  LOBYTE(v39) = 0;
  LOBYTE(v41) = 0;
  sub_23BBD9F08();
  v32 = *(v38 + 72);
  MEMORY[0x23EEB2A20](*(v38 + 64));
  sub_23BBDA208();
  sub_23BA87130();
  MEMORY[0x23EEB2A10](v32);
  sub_23BBDA218();
  sub_23BA87130();
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  CGRectGetMinX(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  CGRectGetWidth(v43);
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  CGRectGetMinY(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  CGRectGetHeight(v45);
  v33 = v37;
  (*(v9 + 16))(v11, v14, v37);
  sub_23BBDA208();
  sub_23BBDA218();
  v34 = *(v9 + 8);
  v34(v11, v33);
  LOBYTE(v39) = 0;
  LOBYTE(v41) = 0;
  sub_23BBD9F28();
  v34(v14, v33);
  return (*(v36 + 8))(v21, v18);
}

void (*sub_23B9D0DFC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

unint64_t sub_23B9D0E74()
{
  result = qword_27E199DE0;
  if (!qword_27E199DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199DE0);
  }

  return result;
}

uint64_t sub_23B9D0EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8, &qword_23BBF9BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B9D0F30()
{
  result = qword_27E199DF0;
  if (!qword_27E199DF0)
  {
    sub_23BBDA098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199DF0);
  }

  return result;
}

uint64_t SubscriptionStorePickerOption.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9D1158(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8, &qword_23BBE91F0);
  v4 = a2 + *(v3 + 40);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  v6 = (a2 + *(v3 + 36));
  *v6 = sub_23B9D11BC;
  v6[1] = 0;
  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8, &qword_23BBE91F0);
  v5 = a2 + *(v4 + 40);
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  result = sub_23B9D1158(a1, a2);
  v7 = (a2 + *(v4 + 36));
  *v7 = sub_23B9D11BC;
  v7[1] = 0;
  return result;
}

uint64_t SubscriptionStorePickerOption.init(_:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for SubscriptionStorePickerOption(0, a4, a5, a4);
  v11 = a6 + *(v10 + 40);
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  result = sub_23B9D1158(a1, a6);
  v13 = (a6 + *(v10 + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

{
  v12 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  v13 = OUTLINED_FUNCTION_13_0(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D1158(a1, v15);
  return SubscriptionStorePickerOption.init(_:label:)(v15, a2, a3, a4, a5, a6);
}

uint64_t sub_23B9D1158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9D11BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9D2CE8(a1, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  v3 = type metadata accessor for AutomaticSubscriptionStorePickerOptionLabel(0);
  v4 = a2 + *(v3 + 20);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23B9D1300(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_23B9D1454()
{
  sub_23B9D2C94();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23B9D1490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9D1454();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B9D14C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9D1454();
  *a1 = result & 1;
  return result;
}

uint64_t SubscriptionStorePickerOption.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  v48 = v43 - v7;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  type metadata accessor for SubscriptionStorePickerOption.LabelBuilderContainer(255, v9, v8, v10);
  OUTLINED_FUNCTION_1_13();
  v43[1] = swift_getWitnessTable();
  v11 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v45 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = v43 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E10, &unk_23BBE9EF0);
  v16 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v47 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = v43 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E18, &qword_23BBE9230);
  v21 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v44 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v46 = v43 - v27;
  v53 = v9;
  v54 = v8;
  v55 = v3;
  sub_23BBDAB48();
  sub_23BBDC068();
  v50 = v9;
  v51 = v8;
  v52 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199E20, &qword_23BBE9238);
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D1DF8();
  sub_23BBDC318();
  sub_23BBDBB88();
  (*(v45 + 8))(v15, v11);
  v29 = v48;
  sub_23B9D2CE8(v3, v48, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v30 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  OUTLINED_FUNCTION_0_12();
  v33 = sub_23B97B518(v31, &qword_27E199E10, &unk_23BBE9EF0, v32);
  v58 = WitnessTable;
  v59 = v33;
  v34 = swift_getWitnessTable();
  v35 = v44;
  sub_23B9D1ED0(v29, v16, v34);
  (*(v47 + 8))(v20, v16);
  OUTLINED_FUNCTION_2_9();
  v38 = sub_23B97B518(v36, &qword_27E199E18, &qword_23BBE9230, v37);
  v56 = v34;
  v57 = v38;
  swift_getWitnessTable();
  v39 = *(v23 + 16);
  v40 = v46;
  v39(v46, v35, v21);
  v41 = *(v23 + 8);
  v41(v35, v21);
  v39(v49, v40, v21);
  return (v41)(v40, v21);
}

uint64_t sub_23B9D1A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SubscriptionStorePickerOption.LabelBuilderContainer(0, a2, a3, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_23B9D2CE8(a1, v10, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v20 = (a1 + *(type metadata accessor for SubscriptionStorePickerOption(0, a2, a3, v19) + 36));
  v21 = *v20;
  v22 = v20[1];

  sub_23B9D1C54(v10, v21, v22, a2, a3, v15);
  swift_getWitnessTable();
  v23 = *(v13 + 16);
  v23(v18, v15, v12);
  v24 = *(v13 + 8);
  v24(v15, v12);
  v23(a4, v18, v12);
  return (v24)(v18, v12);
}

uint64_t sub_23B9D1C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_23B9D2CE8(a1, a6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v13 = type metadata accessor for SubscriptionStorePickerOption.LabelBuilderContainer(0, a4, a5, v12);
  v14 = (a6 + *(v13 + 36));
  *v14 = a2;
  v14[1] = a3;
  if (*(a1 + *(type metadata accessor for Subscription(0) + 20) + 8) == 2)
  {
    _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  }

  v15 = sub_23B9D2B98(a1, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  MEMORY[0x28223BE20](v15);
  result = swift_getKeyPath();
  v17 = a6 + *(v13 + 40);
  *v17 = result;
  *(v17 + 8) = 0;
  return result;
}

uint64_t sub_23B9D1D74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for SubscriptionStorePickerOption(0, a1, a2, a3);
  result = sub_23B9D1300(v5);
  if (result)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    result = sub_23BBDBF58();
    v8 = v10;
    v9 = v11;
    v7 = 2;
  }

  *a4 = v7;
  a4[1] = v8;
  a4[2] = v9;
  return result;
}

unint64_t sub_23B9D1DF8()
{
  result = qword_27E199E28;
  if (!qword_27E199E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E20, &qword_23BBE9238);
    sub_23B9D1E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199E28);
  }

  return result;
}

unint64_t sub_23B9D1E7C()
{
  result = qword_27E199E30;
  if (!qword_27E199E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199E30);
  }

  return result;
}

uint64_t sub_23B9D1ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  sub_23BB1106C(KeyPath, a1, a2, a3);

  return sub_23B9D2AC0(a1);
}

uint64_t sub_23B9D1FF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDA928();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  MEMORY[0x28223BE20](v33);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = (v3 + *(a1 + 36));
  v20 = *v19;
  v31 = v19[1];
  v32 = v20;
  sub_23B9D2CE8(v3, v10, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v21 = v3 + *(a1 + 40);
  v22 = *v21;
  if (*(v21 + 8) != 1)
  {

    sub_23BBDD5A8();
    v23 = sub_23BBDB338();
    v29 = v6;
    v24 = a2;
    v25 = v23;
    sub_23BBD9978();

    a2 = v24;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v22, 0);
    (*(v30 + 8))(v8, v29);
    LOBYTE(v22) = v34;
  }

  v10[*(v33 + 20)] = v22 & 1;
  v32(v10);
  sub_23B9D2B98(v10, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  v26 = *(v12 + 16);
  v26(v18, v15, v11);
  v27 = *(v12 + 8);
  v27(v15, v11);
  v26(a2, v18, v11);
  return (v27)(v18, v11);
}

void sub_23B9D2354()
{
  if (!qword_27E197E40)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E197E40);
    }
  }
}

uint64_t sub_23B9D23A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SubscriptionStorePickerOption.LabelBuilderContainer(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E10, &unk_23BBE9EF0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E18, &qword_23BBE9230);
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  sub_23B97B518(v4, &qword_27E199E10, &unk_23BBE9EF0, v5);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_9();
  sub_23B97B518(v6, &qword_27E199E18, &qword_23BBE9230, v7);
  return swift_getWitnessTable();
}

void sub_23B9D24F4(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(319);
  if (v1 <= 0x3F)
  {
    sub_23B975E04();
    if (v2 <= 0x3F)
    {
      sub_23B9D2354();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B9D2764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  __swift_allocate_value_buffer(v0, qword_27E199DF8);
  v1 = __swift_project_value_buffer(v0, qword_27E199DF8);
  v2 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23B9D27E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1976C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  v3 = __swift_project_value_buffer(v2, qword_27E199DF8);

  return sub_23B9D2B28(v3, a1);
}

void *sub_23B9D2864()
{
  sub_23B9D28AC();

  return sub_23BBDA298();
}

unint64_t sub_23B9D28AC()
{
  result = qword_27E199F48;
  if (!qword_27E199F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199F48);
  }

  return result;
}

uint64_t sub_23B9D2900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_8(v4, v6);
  sub_23B9D28AC();
  sub_23BBDA2A8();
  return sub_23B9D2AC0(a1);
}

uint64_t sub_23B9D29B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_8(v3, v5);
  return sub_23B9D2900(v0);
}

double sub_23B9D2A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BBDB748();

  return result;
}

uint64_t sub_23B9D2AC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9D2B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9D2B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_23B9D2C80(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  *a2 = result;
  return result;
}

unint64_t sub_23B9D2C94()
{
  result = qword_27E199F50[0];
  if (!qword_27E199F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E199F50);
  }

  return result;
}

uint64_t sub_23B9D2CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_23B9D2B28(v2, &a2 - a1);
}

unsigned __int8 *sub_23B9D2E20()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_23BBDCE28();
  v3 = sub_23B9F3F0C(0x4C676F4C746E696DLL, 0xEC0000006C657665, v2);
  v5 = v4;

  if (!v5)
  {
    goto LABEL_64;
  }

  v7 = HIBYTE(v5) & 0xF;
  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_64;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {

    v11 = sub_23B9D33D4(v3, v5, 10);
    v32 = v31;
    result = swift_bridgeObjectRelease_n();
    if (v32)
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_23BBDD7C8();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v18 = result + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_62;
              }

              v20 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_62;
              }

              v11 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_62;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_74;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v24 = *result - 48;
            if (v24 > 9)
            {
              goto LABEL_62;
            }

            v25 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_62;
            }

            v11 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v8)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      v11 = 0;
      LOBYTE(v7) = 1;
LABEL_63:
      v34 = v7;
      v29 = v7;

      if (v29)
      {
LABEL_64:
        v30 = 0;
LABEL_70:
        byte_27E1BFC81 = v30;
        return result;
      }

LABEL_67:
      if (v11 >= 3)
      {
        v30 = 0;
      }

      else
      {
        v30 = v11;
      }

      goto LABEL_70;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v11 = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_62;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_62;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_62;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v7) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v33[0] = v3;
  v33[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v7)
      {
        v11 = 0;
        v26 = v33;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v7)
    {
      if (--v7)
      {
        v11 = 0;
        v15 = v33 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_73;
  }

  if (v7)
  {
    if (--v7)
    {
      v11 = 0;
      v21 = v33 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_75:
  __break(1u);
  return result;
}

unint64_t sub_23B9D31D4(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_23B9D31E4(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    if (a2 != 1 || a1 != 2)
    {
      return 1;
    }
  }

  else if (a1 - 1 >= 2)
  {
    return 1;
  }

  return 0;
}

void sub_23B9D322C(uint64_t a1, os_log_type_t a2)
{
  v3 = a1;
  if (qword_27E1976C8 != -1)
  {
    swift_once();
  }

  if (byte_27E1BFC81 >= v3 || sub_23BBDD598() == a2 || sub_23BBDD5A8() == a2)
  {
    log = sub_23BBD9988();
    if (os_log_type_enabled(log, a2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136446466;
      *(v4 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v7);
      *(v4 + 12) = 2082;
      *(v4 + 14) = sub_23BA5AB90(0xD000000000000017, 0x800000023BBE07D0, &v7);
      _os_log_impl(&dword_23B970000, log, a2, "%{public}s%{public}s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v5, -1, -1);
      MEMORY[0x23EEB6DC0](v4, -1, -1);
    }

    else
    {
    }
  }
}

unsigned __int8 *sub_23B9D33D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_23BBDD158();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_23BBA8BB4(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_23BBDD7C8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_23B9D3960(uint64_t a1)
{
  sub_23B9D4B40(319, &qword_27E199FD8, type metadata accessor for SubscriptionOfferViewConfiguration, MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_23B9D4B40(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
      v2 = v5;
      if (v6 <= 0x3F)
      {
        sub_23B9A389C(319, &qword_27E197E40, MEMORY[0x277D839B0]);
        v2 = v7;
        if (v8 <= 0x3F)
        {
          sub_23B9A389C(319, &qword_27E199FE0, &_s38SubscriptionOfferViewButtonsVisibilityVN);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_23B9D4BA4(319, &qword_27E199FE8, &qword_27E199FF0, qword_23BBE9530, MEMORY[0x277CDF468]);
          if (v11 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_23B9D4BA4(319, &qword_27E199FF8, &qword_27E197E38, qword_23BBE4780, MEMORY[0x277CE10B8]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_23B9D4C08(319);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_23B9D3B78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_23BBDCD08() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_23BBDCBE8() - 8);
  v8 = *(v7 + 80);
  v71 = v8 | v5;
  v9 = v8 | v5 | 7;
  v10 = (v6 + 7 + ((*(v7 + 64) + v5 + ((v8 + 16) & ~v8)) & ~v5)) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 10;
  if (v12 <= v11)
  {
    v12 = v11;
  }

  if (v12 <= 3)
  {
    v12 = 3;
  }

  v13 = v12 + ((((v5 + 16) & ~v5) + v6 + v9) & ~v9);
  if (v13 + 1 > ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  v76 = v14 + 1;
  v75 = (v14 + 1 + v9) & ~v9;
  v63 = sub_23BBD96B8();
  v74 = *(v63 - 8);
  v64 = *(v74 + 84);
  if (v64 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v74 + 84);
  }

  v62 = v15;
  v65 = v15 - 1;
  if (v15 - 1 < v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 - 1;
  }

  v61 = sub_23BBDCDB8();
  v17 = *(v61 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v16 > v19)
  {
    v19 = v16;
  }

  v68 = v19;
  v66 = *(a3 + 16);
  v20 = *(v66 - 8);
  v67 = *(v20 + 84);
  v69 = v19 - 1;
  if (v67 <= v19 - 1)
  {
    v21 = v19 - 1;
  }

  else
  {
    v21 = *(v20 + 84);
  }

  v73 = *(sub_23BBDA438() - 8);
  v22 = *(v73 + 64);
  if (v22 <= 8)
  {
    v22 = 8;
  }

  v70 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 84);
  if (v21 <= v25)
  {
    v26 = *(v24 + 84);
  }

  else
  {
    v26 = v21;
  }

  v27 = 32;
  if (v75 + v76 > 0x20)
  {
    v27 = v75 + v76;
  }

  v28 = *(v74 + 64);
  v29 = *(v17 + 80);
  if (v18)
  {
    v30 = *(v17 + 64);
  }

  else
  {
    v30 = *(v17 + 64) + 1;
  }

  v31 = *(v20 + 80);
  v32 = *(v24 + 80);
  if (!a2)
  {
    return 0;
  }

  v33 = *(v74 + 80) & 0xF8 | 7;
  v34 = v28 + 7;
  v35 = ((((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v36 = v30 + v31 + ((v35 + v29 + ((v35 + v33 + ((v27 + ((v71 + 32) & ~v9) + v33 + 2) & ~v33)) & ~v33)) & ~v29);
  v37 = *(v73 + 80) & 0xF8 | 7;
  v38 = *(v20 + 64) + v37;
  v39 = v70 + 88;
  v40 = v32 + 24;
  if (a2 > v26)
  {
    v41 = ((v40 + ((v39 + ((v38 + (v36 & ~v31)) & ~v37)) & 0xFFFFFFFFFFFFFFF8)) & ~v32) + *(*(v23 - 8) + 64);
    v42 = 8 * v41;
    if (v41 > 3)
    {
      goto LABEL_36;
    }

    v45 = ((a2 - v26 + ~(-1 << v42)) >> v42) + 1;
    if (HIWORD(v45))
    {
      v43 = *(a1 + v41);
      if (!v43)
      {
        goto LABEL_54;
      }

      goto LABEL_44;
    }

    if (v45 > 0xFF)
    {
      v43 = *(a1 + v41);
      if (!*(a1 + v41))
      {
        goto LABEL_54;
      }

      goto LABEL_44;
    }

    if (v45 >= 2)
    {
LABEL_36:
      v43 = *(a1 + v41);
      if (!*(a1 + v41))
      {
        goto LABEL_54;
      }

LABEL_44:
      v46 = (v43 - 1) << v42;
      if (v41 > 3)
      {
        v46 = 0;
      }

      if (v41)
      {
        if (v41 <= 3)
        {
          v47 = ((v40 + ((v39 + ((v38 + (v36 & ~v31)) & ~v37)) & 0xFFFFFFF8)) & ~v32) + *(*(v23 - 8) + 64);
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 2:
            v48 = *a1;
            break;
          case 3:
            v48 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v48 = *a1;
            break;
          default:
            v48 = *a1;
            break;
        }
      }

      else
      {
        v48 = 0;
      }

      v54 = v26 + (v48 | v46);
      return (v54 + 1);
    }
  }

LABEL_54:
  if (v69 == v26)
  {
    if ((v68 & 0x80000000) == 0)
    {
      v49 = *(a1 + 1);
      if (v49 >= 0xFFFFFFFF)
      {
        LODWORD(v49) = -1;
      }

      EnumTagSinglePayload = v49 + 1;
      goto LABEL_88;
    }

    v55 = (v27 + 1 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9) + v33 + 1) & ~v33;
    if (v65 == v68)
    {
      v56 = v64;
      if (v64 < 0x7FFFFFFF)
      {
        v59 = *((v34 + v55) & 0xFFFFFFFFFFFFFFF8);
        if (v59 >= 0xFFFFFFFF)
        {
          LODWORD(v59) = -1;
        }

        v60 = v59 + 1;
        goto LABEL_85;
      }

      v57 = v63;
    }

    else
    {
      v58 = (v55 + v33 + v35) & ~v33;
      if (v62 == v68)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, v64, v63);
LABEL_88:
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      v55 = (v35 + v29 + v58) & ~v29;
      v56 = v18;
      v57 = v61;
    }

    v60 = __swift_getEnumTagSinglePayload(v55, v56, v57);
LABEL_85:
    if (v60 >= 2)
    {
      EnumTagSinglePayload = v60 - 1;
    }

    else
    {
      EnumTagSinglePayload = 0;
    }

    goto LABEL_88;
  }

  v51 = (a1 + v36) & ~v31;
  if (v67 != v26)
  {
    v52 = (v39 + ((v38 + v51) & ~v37)) & 0xFFFFFFFFFFFFFFF8;
    if (v26 > 0x7FFFFFFE)
    {
      v51 = (v40 + v52) & ~v32;
      goto LABEL_70;
    }

    v53 = *(v52 + 16);
    if (v53 >= 0xFFFFFFFF)
    {
      LODWORD(v53) = -1;
    }

    v54 = v53 - 1;
    if (v54 < 0)
    {
      v54 = -1;
    }

    return (v54 + 1);
  }

  v25 = v67;
  v23 = v66;
LABEL_70:

  return __swift_getEnumTagSinglePayload(v51, v25, v23);
}

void sub_23B9D425C(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_23BBDCD08() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23BBDCBE8() - 8);
  v9 = *(v8 + 80);
  v83 = v9 | v6;
  v10 = v9 | v6 | 7;
  v11 = (v7 + 7 + ((*(v8 + 64) + v6 + ((v9 + 16) & ~v9)) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v13 = v11 + 10;
  if (v13 <= v12)
  {
    v13 = v12;
  }

  if (v13 <= 3)
  {
    v13 = 3;
  }

  v14 = v13 + ((((v6 + 16) & ~v6) + v7 + v10) & ~v10);
  if (v14 + 1 > ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v15 <= 0x10)
  {
    v15 = 16;
  }

  v79 = v15 + 1;
  v78 = (v15 + 1 + v10) & ~v10;
  v67 = sub_23BBD96B8();
  v82 = *(v67 - 8);
  v68 = *(v82 + 84);
  if (v68 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v82 + 84);
  }

  v69 = v16 - 1;
  v70 = v16;
  if (v16 - 1 < v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 - 1;
  }

  v65 = sub_23BBDCDB8();
  v81 = *(v65 - 8);
  v18 = *(v81 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  v66 = v19;
  if (v17 > v19)
  {
    v19 = v17;
  }

  v74 = v19;
  v72 = *(a4 + 16);
  v20 = *(v72 - 8);
  v73 = *(v20 + 84);
  v75 = v19 - 1;
  if (v73 <= v19 - 1)
  {
    v21 = v19 - 1;
  }

  else
  {
    v21 = *(v20 + 84);
  }

  v77 = *(sub_23BBDA438() - 8);
  v22 = *(v77 + 64);
  if (v22 <= 8)
  {
    v22 = 8;
  }

  v76 = v22;
  v87 = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  v23 = *(v71 - 8);
  v24 = *(v23 + 84);
  if (v21 <= v24)
  {
    v25 = *(v23 + 84);
  }

  else
  {
    v25 = v21;
  }

  if (v78 + v79 <= 0x20)
  {
    v26 = 32;
  }

  else
  {
    v26 = v78 + v79;
  }

  v80 = v18;
  v27 = v10;
  v28 = *(v82 + 80) & 0xF8 | 7;
  v29 = *(v82 + 64) + 7;
  v30 = (((v29 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = *(v81 + 80);
  v32 = v30 + v31;
  v33 = *(v81 + 64);
  if (!v18)
  {
    ++v33;
  }

  v34 = ((v30 + v31 + ((v30 + v28 + ((v26 + ((v83 + 32) & ~v10) + v28 + 2) & ~v28)) & ~v28)) & ~v31) + v33;
  v35 = *(v20 + 80);
  v36 = *(v77 + 80) & 0xF8 | 7;
  v37 = *(v20 + 64) + v36;
  v38 = *(v23 + 80);
  v39 = ((v38 + 24 + ((v76 + 88 + ((v37 + ((v34 + v35) & ~v35)) & ~v36)) & 0xFFFFFFFFFFFFFFF8)) & ~v38) + *(*(v71 - 8) + 64);
  v40 = 8 * v39;
  if (a3 > v25)
  {
    if (v39 <= 3)
    {
      v42 = ((a3 - v25 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = 4;
      }

      else
      {
        if (v42 < 0x100)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (v42 >= 2)
        {
          v41 = v43;
        }

        else
        {
          v41 = 0;
        }
      }
    }

    else
    {
      v41 = 1;
    }

    v87 = v41;
  }

  if (v25 < a2)
  {
    v44 = ~v25 + a2;
    if (v39 < 4)
    {
      v45 = (v44 >> v40) + 1;
      if (v39)
      {
        v50 = v44 & ~(-1 << v40);
        bzero(a1, v39);
        if (v39 == 3)
        {
          *a1 = v50;
          *(a1 + 2) = BYTE2(v50);
        }

        else
        {
          if (v39 != 2)
          {
            v59 = v87;
            *a1 = v44;
            goto LABEL_79;
          }

          *a1 = v50;
        }
      }
    }

    else
    {
      bzero(a1, v39);
      *a1 = v44;
      v45 = 1;
    }

    v59 = v87;
LABEL_79:
    switch(v59)
    {
      case 1:
        *(a1 + v39) = v45;
        return;
      case 2:
        *(a1 + v39) = v45;
        return;
      case 3:
        goto LABEL_119;
      case 4:
        *(a1 + v39) = v45;
        return;
      default:
        return;
    }
  }

  v46 = ~v27;
  v47 = ~v28;
  v48 = v26 + 1;
  v49 = ~v31;
  switch(v87)
  {
    case 1:
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    case 2:
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    case 3:
LABEL_119:
      __break(1u);
      JUMPOUT(0x23B9D4AE0);
    case 4:
      *(a1 + v39) = 0;
      goto LABEL_56;
    default:
LABEL_56:
      if (!a2)
      {
        return;
      }

LABEL_57:
      if (v75 != v25)
      {
        v52 = (a1 + v34 + v35) & ~v35;
        if (v73 == v25)
        {
          v53 = a2;
          v24 = v73;
          v54 = v72;
        }

        else
        {
          v58 = (v76 + 88 + ((v37 + v52) & ~v36)) & 0xFFFFFFFFFFFFFFF8;
          if (v25 <= 0x7FFFFFFE)
          {
            *(v58 + 16) = a2;
            return;
          }

          v52 = (v38 + 24 + v58) & ~v38;
          v53 = a2;
          v54 = v71;
        }

        goto LABEL_102;
      }

      if (a2 >= v74)
      {
        if (v34 <= 3)
        {
          v55 = ~(-1 << (8 * v34));
        }

        else
        {
          v55 = -1;
        }

        if (v34)
        {
          v56 = v55 & (a2 - v74);
          if (v34 <= 3)
          {
            v57 = v34;
          }

          else
          {
            v57 = 4;
          }

          bzero(a1, v34);
          switch(v57)
          {
            case 2:
              *a1 = v56;
              break;
            case 3:
              *a1 = v56;
              *(a1 + 2) = BYTE2(v56);
              break;
            case 4:
              *a1 = v56;
              break;
            default:
              *a1 = v56;
              break;
          }
        }
      }

      else
      {
        v51 = a2 + 1;
        if ((v74 & 0x80000000) == 0)
        {
          if ((v51 & 0x80000000) != 0)
          {
            *a1 = a2 - 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = a2;
          }

          return;
        }

        v60 = ((v48 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v27 + 16) & v46) + v28 + 1) & v47);
        if (v69 == v74)
        {
          v53 = a2 + 2;
          if (v53 > v70)
          {
            if ((((v29 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
            {
              v61 = v51 - v70;
              bzero(((v48 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v27 + 16) & v46) + v28 + 1) & v47), (((v29 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_90:
              *v60 = v61;
            }

            return;
          }

          v24 = v68;
          if (v68 < 0x7FFFFFFF)
          {
            v62 = (&v60[v29] & 0xFFFFFFFFFFFFFFF8);
            if ((v53 & 0x80000000) != 0)
            {
              v51 = a2 - 2147483646;
              v62[1] = 0;
            }

            *v62 = v51;
            return;
          }

          v52 = (v48 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v27 + 16) & v46) + v28 + 1) & v47;
          goto LABEL_99;
        }

        v52 = &v60[v28 + v30] & v47;
        if (v70 == v74)
        {
          v53 = a2 + 1;
          v24 = v68;
LABEL_99:
          v54 = v67;
LABEL_102:

          __swift_storeEnumTagSinglePayload(v52, v53, v24, v54);
          return;
        }

        v60 = ((v32 + v52) & v49);
        if (a2 < v66)
        {
          v53 = a2 + 2;
          v52 = (v32 + v52) & v49;
          v24 = v80;
          v54 = v65;
          goto LABEL_102;
        }

        if (v33 <= 3)
        {
          v63 = ~(-1 << (8 * v33));
        }

        else
        {
          v63 = -1;
        }

        if (v33)
        {
          v61 = v63 & (a2 - v66);
          if (v33 <= 3)
          {
            v64 = v33;
          }

          else
          {
            v64 = 4;
          }

          bzero(v60, v33);
          switch(v64)
          {
            case 2:
              *v60 = v61;
              break;
            case 3:
              *v60 = v61;
              v60[2] = BYTE2(v61);
              break;
            case 4:
              goto LABEL_90;
            default:
              *v60 = v61;
              break;
          }
        }
      }

      return;
  }
}

void sub_23B9D4B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23B9D4BA4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23B9D4C08(uint64_t a1)
{
  if (!qword_27E19A000)
  {
    sub_23B974940();
    v1 = sub_23BBD9D48();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19A000);
    }
  }
}

BOOL sub_23B9D4CA8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  do
  {
    sub_23BBDD0C8();
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_23BBDCE88();
  }

  while ((v5 & 1) != 0);

  return v4;
}

uint64_t sub_23B9D4D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  sub_23BBD9CF8();
  OUTLINED_FUNCTION_4_1();
  v14 = MEMORY[0x28223BE20](v13);
  (*(v9 + 16))(v12, v7, a3, v14);
  sub_23BBD9D08();
  swift_getWitnessTable();
  return sub_23BBDA028();
}

uint64_t sub_23B9D4ED0(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996C0, &qword_23BBE8188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BBE94D0;
  v8 = sub_23B9D5180(a1);
  *(inited + 32) = v8;
  v9 = v1 + *(a1 + 48);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    v11 = v10 & 1;
    *(inited + 33) = v10 & 1;
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v4 + 8))(v6, v3);
    v11 = v20;
    v14 = *(inited + 32);
    *(inited + 33) = v20;
    LOBYTE(v10) = v11;
    if ((v14 & 1) == 0)
    {
LABEL_3:

      v12 = MEMORY[0x277D84F90];
      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  v20 = MEMORY[0x277D84F90];
  sub_23BA92C08();
  v12 = v20;
  v15 = *(v20 + 16);
  if (v15 >= *(v20 + 24) >> 1)
  {
    sub_23BA92C08();
    v12 = v20;
  }

  *(v12 + 16) = v15 + 1;
  *(v12 + v15 + 32) = 1;

  if (v10)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23BA92C08();
      v12 = v20;
    }

    v17 = *(v12 + 16);
    if (v17 >= *(v12 + 24) >> 1)
    {
      sub_23BA92C08();
      v12 = v20;
    }

    *(v12 + 16) = v17 + 1;
    *(v12 + v17 + 32) = v11;
  }

LABEL_14:
  v18 = *(v12 + 16);

  return v18;
}

BOOL sub_23B9D5180(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_23BBDA928();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v1 + *(a1 + 52);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v14, 0);
    (*(v10 + 8))(v12, v9);
    LOBYTE(v14) = v20[14];
  }

  if (!v14)
  {
    sub_23B9A721C(v1, v8, &qword_27E19A030, &qword_23BBE95D0);
    v17 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v17) != 1)
    {
      sub_23B9A721C(&v8[*(v17 + 40)], v5, &qword_27E1987F0, &unk_23BBE5E10);
      v18 = sub_23BBDCDB8();
      v16 = __swift_getEnumTagSinglePayload(v5, 1, v18) != 1;
      sub_23B9846E8(v5, &qword_27E1987F0, &unk_23BBE5E10);
      sub_23B9DC5FC(v8, type metadata accessor for SubscriptionOfferViewConfiguration);
      return v16;
    }

    sub_23B9846E8(v8, &qword_27E19A030, &qword_23BBE95D0);
    return 1;
  }

  return v14 == 1;
}

unint64_t sub_23B9D5468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2 + *(a1 + 44);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v6 + 8))(v8, v5);
    if (v16[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = sub_23BBDAB58();
    v12 = 0x4010000000000000;
    v13 = MEMORY[0x277CDF5C8];
    result = sub_23B9A7330();
    goto LABEL_6;
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_23BBDA9D8();
  v12 = 0x4024000000000000;
  v13 = MEMORY[0x277CDF570];
  result = sub_23B9A70B0();
LABEL_6:
  *(a2 + 24) = v13;
  *(a2 + 32) = result;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  return result;
}

unint64_t sub_23B9D5610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2 + *(a1 + 44);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v11 = sub_23BBDA9D8();
      *(a2 + 24) = MEMORY[0x277CDF570];
      result = sub_23B9A70B0();
      *(a2 + 32) = result;
      *a2 = v11;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v6 + 8))(v8, v5);
    if (v14[15] != 1)
    {
      goto LABEL_3;
    }
  }

  return sub_23B9D5468(a1, a2);
}

uint64_t sub_23B9D57B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v58 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v57 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v56 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D40, &qword_23BBE95A0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  type metadata accessor for ProductViewIconWrapper(255, v9, v10, v11);
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  v73[0] = sub_23BBDA358();
  v73[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A008, &qword_23BBE95A8);
  v73[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A010, &qword_23BBE95B0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A018, &qword_23BBE95B8);
  OUTLINED_FUNCTION_11_4(v74, v12, v73);
  v13 = sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v14, &qword_27E198D40, &qword_23BBE95A0, v15);
  v60 = v13;
  v16 = sub_23BBDA018();
  OUTLINED_FUNCTION_7();
  v61 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  type metadata accessor for LayoutMetricsModifier(255);
  v21 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v63 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v59 = &v55 - v27;
  v62 = a1;
  sub_23B9D5468(a1, v73);
  v28 = __swift_project_boxed_opaque_existential_1(v73, v74);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  (*(v31 + 16))(v30 - v29);
  v32 = sub_23BBDC378();
  v33 = sub_23B9D5DC0(v32, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(v73);
  v66 = v9;
  v67 = v10;
  v68 = v2;
  v33(sub_23B9DA874, v65);

  if (qword_27E197608 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for LayoutMetrics(0);
  v35 = __swift_project_value_buffer(v34, qword_27E1BF7E0);
  v36 = v3 + *(v62 + 44);
  v37 = *v36;
  if (*(v36 + 8) != 1)
  {

    sub_23BBDD5A8();
    v38 = sub_23BBDB338();
    sub_23BBD9978();

    v39 = v56;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v37, 0);
    (*(v57 + 8))(v39, v58);
    LOBYTE(v37) = v73[0];
  }

  OUTLINED_FUNCTION_3_9();
  v44 = sub_23B97B518(v40, v41, v42, v43);
  OUTLINED_FUNCTION_2_5();
  WitnessTable = swift_getWitnessTable();
  v71 = v44;
  v72 = WitnessTable;
  OUTLINED_FUNCTION_1_9();
  v46 = swift_getWitnessTable();
  v47 = sub_23BBDC318();
  sub_23B97462C(v35, v47, v48, (v37 & 1) == 0, v16, v46);
  (*(v61 + 8))(v20, v16);
  OUTLINED_FUNCTION_7_13();
  v51 = sub_23B9DC840(v49, v50, &unk_23BBE3CD8);
  v69 = v46;
  v70 = v51;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  v52 = v59;
  sub_23B9D2D88();
  v53 = *(v63 + 8);
  v53(v25, v21);
  sub_23B9D2D88();
  return (v53)(v52, v21);
}

uint64_t (*sub_23B9D5DC0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_23B9DC978;
}

uint64_t sub_23B9D5E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t x4_0)
{
  type metadata accessor for ProductViewIconWrapper(255, a4, x4_0, a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A008, &qword_23BBE95A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A010, &qword_23BBE95B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A018, &qword_23BBE95B8);
  swift_getTupleTypeMetadata();
  sub_23BBDC3D8();
  sub_23B9A73C8();
  swift_getWitnessTable();
  return sub_23B9D4D38(a1, a2, MEMORY[0x277CE13A0]);
}

uint64_t sub_23B9D5FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A018, &qword_23BBE95B8);
  MEMORY[0x28223BE20](v137);
  v140 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v138 = (&v109 - v9);
  v10 = sub_23BBDB588();
  v131 = *(v10 - 8);
  v132 = v10;
  MEMORY[0x28223BE20](v10);
  v129 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v130 = &v109 - v13;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A010, &qword_23BBE95B0);
  MEMORY[0x28223BE20](v148);
  v136 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v135 = (&v109 - v16);
  v145 = type metadata accessor for CompactSubscriptionOfferView(0, a2, a3, v17);
  v126 = *(v145 - 8);
  v124 = *(v126 + 64);
  MEMORY[0x28223BE20](v145);
  v125 = &v109 - v18;
  v19 = sub_23BBDB148();
  v122 = *(v19 - 8);
  v123 = v19;
  MEMORY[0x28223BE20](v19);
  v118 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A020, &qword_23BBE95C0);
  MEMORY[0x28223BE20](v116);
  v117 = (&v109 - v21);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A028, &qword_23BBE95C8);
  MEMORY[0x28223BE20](v121);
  v128 = &v109 - v22;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A008, &qword_23BBE95A8);
  MEMORY[0x28223BE20](v146);
  v133 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v109 - v25;
  MEMORY[0x28223BE20](v26);
  v147 = &v109 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  MEMORY[0x28223BE20](v28 - 8);
  v115 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - v31;
  v112 = sub_23BBDA438();
  v119 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ProductViewIconWrapper(0, a2, a3, v35);
  v110 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v109 - v37;
  WitnessTable = swift_getWitnessTable();
  v170[0] = v36;
  v111 = WitnessTable;
  v170[1] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v42 = &v109 - v41;
  v120 = v43;
  v144 = sub_23BBDA358();
  v141 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v109 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v109 - v46;
  MEMORY[0x28223BE20](v48);
  v142 = &v109 - v49;
  v151 = a2;
  v152 = a3;
  v153 = a1;
  v149 = a3;
  v150 = a2;
  sub_23BA33338(sub_23B9DA880, a2, v38, a3);
  v134 = a1;
  sub_23B9A721C(a1, v32, &qword_27E19A030, &qword_23BBE95D0);
  v113 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v32, 1, v113);
  sub_23B9846E8(v32, &qword_27E19A030, &qword_23BBE95D0);
  if (a3 == 1)
  {
    sub_23BBDA428();
    v50 = v112;
  }

  else
  {
    v170[0] = MEMORY[0x277D84F90];
    sub_23B9DC840(&qword_27E198E48, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50, &unk_23BBE6CA0);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50, &unk_23BBE6CA0, MEMORY[0x277D83970]);
    v51 = v112;
    sub_23BBDD6C8();
    v50 = v51;
  }

  v52 = v111;
  sub_23BBDBC38();
  (*(v119 + 8))(v34, v50);
  (*(v110 + 8))(v38, v36);
  v168 = 1;
  v167 = 1;
  v166 = 1;
  v165 = 1;
  v164 = 0;
  v163 = 0;
  v169 = 0;
  __src = 0;
  v172 = 1;
  v173 = 0;
  v174 = 1;
  v175 = 0;
  v176 = 1;
  v177 = 0;
  v178 = 1;
  v179 = 0x404E000000000000;
  v180 = 0;
  v181 = 0x404E000000000000;
  v182 = 0;
  v170[0] = v36;
  v170[1] = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_23BBDC318();
  v55 = v120;
  sub_23BA19724(&__src, v54, v56, v120, OpaqueTypeConformance2);
  (*(v114 + 8))(v42, v55);
  v57 = sub_23B9A6A40();
  v161 = OpaqueTypeConformance2;
  v162 = v57;
  v58 = v144;
  v114 = swift_getWitnessTable();
  sub_23B9D2D88();
  v119 = *(v141 + 8);
  v120 = v141 + 8;
  (v119)(v47, v58);
  v59 = sub_23BBDAB58();
  v60 = v117;
  *v117 = v59;
  *(v60 + 8) = 0x4010000000000000;
  *(v60 + 16) = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A038, &qword_23BBE95D8);
  v62 = v134;
  v63 = v149;
  v64 = v150;
  sub_23B9D714C(v134, v150, v149, (v60 + *(v61 + 44)));
  KeyPath = swift_getKeyPath();
  v66 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A040, &qword_23BBE9610) + 36));
  *v66 = KeyPath;
  v66[1] = 0;
  v67 = swift_getKeyPath();
  v68 = v60 + *(v116 + 36);
  *v68 = v67;
  *(v68 + 8) = 0;
  v69 = v118;
  sub_23BBDB128();
  sub_23B9DAEA8();
  v70 = v128;
  sub_23BBDB968();
  (*(v122 + 8))(v69, v123);
  sub_23B9846E8(v60, &qword_27E19A020, &qword_23BBE95C0);
  v72 = v125;
  v71 = v126;
  v73 = v145;
  (*(v126 + 16))(v125, v62, v145);
  v74 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = v64;
  *(v75 + 24) = v63;
  v76 = v62;
  (*(v71 + 32))(v75 + v74, v72, v73);
  v77 = (v70 + *(v121 + 36));
  *v77 = sub_23B9DB6B0;
  v77[1] = v75;
  v78 = v115;
  sub_23B9A721C(v62, v115, &qword_27E19A030, &qword_23BBE95D0);
  LODWORD(v71) = __swift_getEnumTagSinglePayload(v78, 1, v113);
  sub_23B9846E8(v78, &qword_27E19A030, &qword_23BBE95D0);
  if (v71 != 1)
  {
    v79 = v62 + *(v73 + 64);
    v80 = *v79;
    v81 = *(v79 + 8);
    v82 = *(v79 + 16);
    v170[0] = v80;
    LOBYTE(v170[1]) = v81;
    v170[2] = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0D8, &unk_23BBE96C8);
    sub_23BBDBF68();
  }

  sub_23BBDC318();
  v83 = v150;
  sub_23BBDA488();
  v84 = v127;
  sub_23B9A71D0(v70, v127, &qword_27E19A028, &qword_23BBE95C8);
  memcpy((v84 + *(v146 + 36)), v170, 0x70uLL);
  v85 = v147;
  sub_23B9A71D0(v84, v147, &qword_27E19A008, &qword_23BBE95A8);
  v86 = swift_getKeyPath();
  v87 = v135;
  *v135 = v86;
  *(v87 + 8) = 0;
  type metadata accessor for SubscriptionOfferViewAXTypeStyleButtonSpacer(0);
  v89 = v130;
  v88 = v131;
  v90 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x277CE0AA8], v132);
  v159[0] = 0x4024000000000000;
  (*(v88 + 16))(v129, v89, v90);
  sub_23B974940();
  sub_23BBD9D18();
  (*(v88 + 8))(v89, v90);
  *(v87 + *(v148 + 36)) = 0xC000000000000000;
  sub_23B9D5610(v145, v159);
  v91 = __swift_project_boxed_opaque_existential_1(v159, v160);
  v92 = MEMORY[0x28223BE20](v91);
  (*(v94 + 16))(&v109 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0), v92);
  v95 = sub_23BBDC378();
  __swift_destroy_boxed_opaque_existential_1(v159);
  v96 = v76;
  v97 = v138;
  *v138 = v95;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A080, &qword_23BBE96A8);
  sub_23B9D8A58(v96, v83, v149, (v97 + *(v98 + 44)));
  v99 = v137;
  *(v97 + *(v137 + 36)) = 0xBFF0000000000000;
  v100 = v142;
  v101 = v143;
  v102 = v144;
  (*(v141 + 16))(v143, v142, v144);
  v159[0] = v101;
  v103 = v133;
  sub_23B9A721C(v85, v133, &qword_27E19A008, &qword_23BBE95A8);
  v159[1] = v103;
  v104 = v136;
  sub_23B9A721C(v87, v136, &qword_27E19A010, &qword_23BBE95B0);
  v159[2] = v104;
  v105 = v140;
  sub_23B9A721C(v97, v140, &qword_27E19A018, &qword_23BBE95B8);
  v160 = v105;
  v158[0] = v102;
  v158[1] = v146;
  v158[2] = v148;
  v158[3] = v99;
  v154 = v114;
  v155 = sub_23B9DB750();
  v156 = sub_23B9DB8D0();
  v157 = sub_23B9DB9B8();
  sub_23BB6739C(v159, 4, v158);
  sub_23B9846E8(v97, &qword_27E19A018, &qword_23BBE95B8);
  sub_23B9846E8(v87, &qword_27E19A010, &qword_23BBE95B0);
  sub_23B9846E8(v147, &qword_27E19A008, &qword_23BBE95A8);
  v106 = v100;
  v107 = v119;
  (v119)(v106, v102);
  sub_23B9846E8(v105, &qword_27E19A018, &qword_23BBE95B8);
  sub_23B9846E8(v104, &qword_27E19A010, &qword_23BBE95B0);
  sub_23B9846E8(v103, &qword_27E19A008, &qword_23BBE95A8);
  return v107(v143, v102);
}

uint64_t sub_23B9D7054(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompactSubscriptionOfferView(0, v6, v7, v8);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23B9D714C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v155 = a3;
  v154 = a2;
  v173 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8, &qword_23BBE98B0);
  MEMORY[0x28223BE20](v5 - 8);
  v164 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v167 = &v147 - v8;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1B0, &qword_23BBE98B8);
  MEMORY[0x28223BE20](v169);
  v172 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v168 = &v147 - v11;
  MEMORY[0x28223BE20](v12);
  v171 = &v147 - v13;
  v152 = sub_23BBDA928();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  MEMORY[0x28223BE20](v15 - 8);
  v153 = &v147 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E88, &unk_23BBE98C0);
  MEMORY[0x28223BE20](v17 - 8);
  v170 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v183 = &v147 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  MEMORY[0x28223BE20](v21 - 8);
  v162 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v158 = &v147 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = (&v147 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  MEMORY[0x28223BE20](v28 - 8);
  v159 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v147 = &v147 - v31;
  MEMORY[0x28223BE20](v32);
  v149 = &v147 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v147 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = (&v147 - v38);
  v40 = type metadata accessor for ProductViewText(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v147 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v148 = &v147 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v147 - v46;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E98, &unk_23BBE98D0);
  MEMORY[0x28223BE20](v182);
  v161 = &v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v147 - v50;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA0, &qword_23BBE6CE0);
  MEMORY[0x28223BE20](v181);
  v160 = &v147 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v147 - v54;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1B8, &qword_23BBE98E0);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v163 = &v147 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v185 = &v147 - v58;
  v180 = a1;
  sub_23B9A721C(a1, v39, &qword_27E19A030, &qword_23BBE95D0);
  v184 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v184) == 1)
  {
    sub_23B9846E8(v39, &qword_27E19A030, &qword_23BBE95D0);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v59 = *v39;
    v60 = v39[1];

    sub_23B9DC5FC(v39, type metadata accessor for SubscriptionOfferViewConfiguration);
  }

  KeyPath = swift_getKeyPath();
  v156 = swift_getKeyPath();
  if (v60)
  {
    *v27 = v59;
    v27[1] = v60;
    v61 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v62 = v27;
    v63 = 0;
    v64 = v61;
  }

  else
  {
    v64 = type metadata accessor for ProductViewText.Storage(0);
    v62 = v27;
    v63 = 1;
  }

  __swift_storeEnumTagSinglePayload(v62, v63, 1, v64);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for LayoutMetrics(0);
  v179 = __swift_project_value_buffer(v65, &unk_27E1BF7F8);
  sub_23B9DC888(v179, v47, type metadata accessor for LayoutMetrics);
  v66 = type metadata accessor for PlaceholderLayouts(0);
  v67 = *(v66 + 20);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  v177 = __swift_project_value_buffer(v65, &unk_27E1BF810);
  sub_23B9DC888(v177, &v47[v67], type metadata accessor for LayoutMetrics);
  v178 = v66;
  v68 = *(v66 + 24);
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  v176 = __swift_project_value_buffer(v65, &unk_27E1BF828);
  sub_23B9DC888(v176, &v47[v68], type metadata accessor for LayoutMetrics);
  v69 = &v47[v40[10]];
  v70 = v40[13];
  *&v47[v70] = swift_getKeyPath();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v71 = v40[14];
  *&v47[v71] = swift_getKeyPath();
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  sub_23B9A71D0(v27, &v47[v40[5]], &qword_27E198E90, &unk_23BBE6CD0);
  v47[v40[6]] = 0;
  v47[v40[7]] = 0;
  v47[v40[8]] = 0;
  *v69 = 0;
  *(v69 + 1) = 0;
  v202 = 1;
  v200 = 0;
  v198 = 0;
  v196 = 1;
  v194 = 0;
  v192 = 0;
  v72 = &v47[v40[9]];
  *v72 = 0;
  v72[8] = 1;
  *(v72 + 3) = *&v201[3];
  *(v72 + 9) = *v201;
  *(v72 + 2) = 0x405E000000000000;
  v72[24] = 0;
  *(v72 + 7) = *&v199[3];
  *(v72 + 25) = *v199;
  *(v72 + 4) = 0x405E000000000000;
  v72[40] = 0;
  v73 = *v197;
  *(v72 + 11) = *&v197[3];
  *(v72 + 41) = v73;
  *(v72 + 6) = 0;
  v72[56] = v196;
  v74 = *v195;
  *(v72 + 15) = *&v195[3];
  *(v72 + 57) = v74;
  *(v72 + 8) = 0x4032000000000000;
  v72[72] = v194;
  v75 = *v193;
  *(v72 + 19) = *&v193[3];
  *(v72 + 73) = v75;
  *(v72 + 10) = 0x4032000000000000;
  v72[88] = v192;
  *&v47[v40[11]] = KeyPath;
  *&v47[v40[12]] = v156;
  sub_23B9DC888(v47, v51, type metadata accessor for ProductViewText);
  *&v51[*(v182 + 36)] = 0x3FF0000000000000;
  sub_23B9DC5FC(v47, type metadata accessor for ProductViewText);
  v76 = swift_getKeyPath();
  sub_23B9A71D0(v51, v55, &qword_27E198E98, &unk_23BBE98D0);
  v77 = &v55[*(v181 + 36)];
  *v77 = v76;
  v77[8] = 1;
  sub_23BBDB488();
  sub_23B9DC6A0();
  sub_23BBDB6D8();
  sub_23B9846E8(v55, &qword_27E198EA0, &qword_23BBE6CE0);
  v78 = v180;
  sub_23B9A721C(v180, v36, &qword_27E19A030, &qword_23BBE95D0);
  v79 = v184;
  if (__swift_getEnumTagSinglePayload(v36, 1, v184) == 1)
  {
    sub_23B9846E8(v36, &qword_27E19A030, &qword_23BBE95D0);
    v81 = v167;
    v82 = v164;
    v83 = v158;
  }

  else
  {
    v84 = v153;
    sub_23B9A721C(&v36[*(v79 + 40)], v153, &qword_27E1987F0, &unk_23BBE5E10);
    v85 = sub_23BBDCDB8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v85);
    sub_23B9846E8(v84, &qword_27E1987F0, &unk_23BBE5E10);
    sub_23B9DC5FC(v36, type metadata accessor for SubscriptionOfferViewConfiguration);
    v87 = EnumTagSinglePayload == 1;
    v79 = v184;
    v81 = v167;
    v82 = v164;
    v83 = v158;
    if (v87)
    {
      goto LABEL_24;
    }
  }

  v88 = v78 + *(type metadata accessor for CompactSubscriptionOfferView(0, v154, v155, v80) + 60);
  v89 = *v88;
  if (*(v88 + 8) != 1)
  {

    sub_23BBDD5A8();
    v90 = sub_23BBDB338();
    sub_23BBD9978();

    v79 = v184;
    v91 = v150;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v89, 0);
    (*(v151 + 8))(v91, v152);
    if (v191 == 1)
    {
      goto LABEL_20;
    }

LABEL_24:
    __swift_storeEnumTagSinglePayload(v183, 1, 1, v40);
    goto LABEL_32;
  }

  if ((v89 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v92 = v149;
  sub_23B9A721C(v78, v149, &qword_27E19A030, &qword_23BBE95D0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v79) == 1)
  {
    sub_23B9846E8(v92, &qword_27E19A030, &qword_23BBE95D0);
  }

  else
  {
    v93 = *(v92 + 16);
    v94 = *(v92 + 24);

    sub_23B9DC5FC(v92, type metadata accessor for SubscriptionOfferViewConfiguration);
    if (v94)
    {
      v95 = sub_23B9D4CA8(v93, v94);

      if (v95)
      {
        goto LABEL_24;
      }
    }
  }

  v96 = v147;
  sub_23B9A721C(v78, v147, &qword_27E19A030, &qword_23BBE95D0);
  if (__swift_getEnumTagSinglePayload(v96, 1, v79) == 1)
  {
    sub_23B9846E8(v96, &qword_27E19A030, &qword_23BBE95D0);
    v97 = 0;
    v98 = 0;
  }

  else
  {
    v97 = *(v96 + 16);
    v98 = *(v96 + 24);

    sub_23B9DC5FC(v96, type metadata accessor for SubscriptionOfferViewConfiguration);
  }

  v99 = swift_getKeyPath();
  v100 = swift_getKeyPath();
  if (v98)
  {
    *v83 = v97;
    v83[1] = v98;
    v101 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v102 = v83;
    v103 = 0;
    v104 = v101;
  }

  else
  {
    v104 = type metadata accessor for ProductViewText.Storage(0);
    v102 = v83;
    v103 = 1;
  }

  __swift_storeEnumTagSinglePayload(v102, v103, 1, v104);
  v105 = v148;
  sub_23B9DC888(v179, v148, type metadata accessor for LayoutMetrics);
  v106 = v178;
  sub_23B9DC888(v177, v105 + *(v178 + 20), type metadata accessor for LayoutMetrics);
  sub_23B9DC888(v176, v105 + *(v106 + 24), type metadata accessor for LayoutMetrics);
  v107 = (v105 + v40[10]);
  v108 = v40[13];
  *(v105 + v108) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v109 = v40[14];
  *(v105 + v109) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_23B9A71D0(v83, v105 + v40[5], &qword_27E198E90, &unk_23BBE6CD0);
  *(v105 + v40[6]) = 1;
  *(v105 + v40[7]) = 0;
  *(v105 + v40[8]) = 0;
  *v107 = 0;
  v107[1] = 0;
  LOBYTE(v191) = 1;
  v190 = 0;
  v189 = 0;
  v188 = 1;
  v187 = 0;
  v186 = 0;
  v110 = v105 + v40[9];
  *v110 = 0;
  *(v110 + 8) = 1;
  *(v110 + 16) = 0x4054000000000000;
  *(v110 + 24) = 0;
  *(v110 + 32) = 0x4054000000000000;
  *(v110 + 40) = 0;
  *(v110 + 48) = 0;
  *(v110 + 56) = 1;
  *(v110 + 64) = 0x4024000000000000;
  *(v110 + 72) = 0;
  *(v110 + 80) = 0x4024000000000000;
  *(v110 + 88) = 0;
  *(v105 + v40[11]) = v99;
  *(v105 + v40[12]) = v100;
  v111 = v105;
  v112 = v183;
  sub_23B9DC8E4(v111, v183, type metadata accessor for ProductViewText);
  __swift_storeEnumTagSinglePayload(v112, 0, 1, v40);
  v78 = v180;
  v79 = v184;
LABEL_32:
  v113 = v159;
  sub_23B9A721C(v78, v159, &qword_27E19A030, &qword_23BBE95D0);
  if (__swift_getEnumTagSinglePayload(v113, 1, v79) == 1)
  {
    sub_23B9846E8(v113, &qword_27E19A030, &qword_23BBE95D0);
    v114 = 1;
  }

  else
  {
    sub_23B9DC888(v113 + *(v79 + 24), v81, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
    sub_23B9DC5FC(v113, type metadata accessor for SubscriptionOfferViewConfiguration);
    v114 = 0;
  }

  v115 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  __swift_storeEnumTagSinglePayload(v81, v114, 1, v115);
  v116 = swift_getKeyPath();
  v117 = swift_getKeyPath();
  sub_23B9A721C(v81, v82, &qword_27E19A1A8, &qword_23BBE98B0);
  if (__swift_getEnumTagSinglePayload(v82, 1, v115) == 1)
  {
    v118 = type metadata accessor for ProductViewText.Storage(0);
    v119 = v162;
    v120 = v162;
    v121 = 1;
  }

  else
  {
    v122 = v82;
    v119 = v162;
    sub_23B9DC8E4(v122, v162, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
    v123 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v120 = v119;
    v121 = 0;
    v118 = v123;
  }

  __swift_storeEnumTagSinglePayload(v120, v121, 1, v118);
  sub_23B9DC888(v179, v42, type metadata accessor for LayoutMetrics);
  v124 = v178;
  sub_23B9DC888(v177, &v42[*(v178 + 20)], type metadata accessor for LayoutMetrics);
  sub_23B9DC888(v176, &v42[*(v124 + 24)], type metadata accessor for LayoutMetrics);
  sub_23B9846E8(v81, &qword_27E19A1A8, &qword_23BBE98B0);
  v125 = &v42[v40[10]];
  v126 = v40[13];
  *&v42[v126] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v127 = v40[14];
  *&v42[v127] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_23B9A71D0(v119, &v42[v40[5]], &qword_27E198E90, &unk_23BBE6CD0);
  v42[v40[6]] = 2;
  v42[v40[7]] = 0;
  v42[v40[8]] = 0;
  *v125 = sub_23B9D8780;
  v125[1] = 0;
  LOBYTE(v191) = 1;
  v190 = 0;
  v189 = 0;
  v188 = 1;
  v187 = 0;
  v186 = 0;
  v128 = &v42[v40[9]];
  *v128 = 0;
  v128[8] = 1;
  *(v128 + 2) = 0x4054000000000000;
  v128[24] = 0;
  *(v128 + 4) = 0x4054000000000000;
  v128[40] = 0;
  *(v128 + 6) = 0;
  v128[56] = 1;
  *(v128 + 8) = 0x4024000000000000;
  v128[72] = 0;
  *(v128 + 10) = 0x4024000000000000;
  v128[88] = 0;
  *&v42[v40[11]] = v116;
  *&v42[v40[12]] = v117;
  v129 = v161;
  sub_23B9DC888(v42, v161, type metadata accessor for ProductViewText);
  *(v129 + *(v182 + 36)) = 0x4000000000000000;
  sub_23B9DC5FC(v42, type metadata accessor for ProductViewText);
  v130 = swift_getKeyPath();
  v131 = v129;
  v132 = v160;
  sub_23B9A71D0(v131, v160, &qword_27E198E98, &unk_23BBE98D0);
  v133 = v132 + *(v181 + 36);
  *v133 = v130;
  *(v133 + 8) = 1;
  v134 = v168;
  sub_23B9A71D0(v132, v168, &qword_27E198EA0, &qword_23BBE6CE0);
  *(v134 + *(v169 + 36)) = 256;
  v135 = v171;
  sub_23B9A71D0(v134, v171, &qword_27E19A1B0, &qword_23BBE98B8);
  v136 = v165;
  v137 = *(v165 + 16);
  v138 = v163;
  v139 = v166;
  v137(v163, v185, v166);
  v140 = v183;
  v141 = v170;
  sub_23B9A721C(v183, v170, &qword_27E198E88, &unk_23BBE98C0);
  v142 = v172;
  sub_23B9A721C(v135, v172, &qword_27E19A1B0, &qword_23BBE98B8);
  v143 = v173;
  v137(v173, v138, v139);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1E8, &qword_23BBE9980);
  sub_23B9A721C(v141, &v143[*(v144 + 48)], &qword_27E198E88, &unk_23BBE98C0);
  sub_23B9A721C(v142, &v143[*(v144 + 64)], &qword_27E19A1B0, &qword_23BBE98B8);
  sub_23B9846E8(v135, &qword_27E19A1B0, &qword_23BBE98B8);
  sub_23B9846E8(v140, &qword_27E198E88, &unk_23BBE98C0);
  v145 = *(v136 + 8);
  v145(v185, v139);
  sub_23B9846E8(v142, &qword_27E19A1B0, &qword_23BBE98B8);
  sub_23B9846E8(v141, &qword_27E198E88, &unk_23BBE98C0);
  return (v145)(v138, v139);
}

uint64_t sub_23B9D878C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v27 = a1;
  v8 = sub_23BBD9E98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CompactSubscriptionOfferView(0, a3, a4, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v24 - v17;
  (*(v14 + 16))(&v24 - v17, v24, v13, v16);
  (*(v9 + 16))(v11, v27, v8);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = (v15 + *(v9 + 80) + v19) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v25;
  *(v21 + 24) = v22;
  (*(v14 + 32))(v21 + v19, v18, v13);
  result = (*(v9 + 32))(v21 + v20, v11, v8);
  *a5 = sub_23B9DC514;
  a5[1] = v21;
  a5[2] = 0;
  a5[3] = 0;
  return result;
}

uint64_t sub_23B9D89B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23BBD9E68();
  type metadata accessor for CompactSubscriptionOfferView(0, a3, a4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0D8, &unk_23BBE96C8);
  return sub_23BBDBF78();
}

uint64_t sub_23B9D8A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0E0, &qword_23BBE96D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0E8, &qword_23BBE96E0);
  MEMORY[0x28223BE20](v59);
  v60 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v50 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v18 = sub_23BBDA928();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a2;
  v57 = a3;
  v53 = type metadata accessor for CompactSubscriptionOfferView(0, a2, a3, v22);
  v54 = v19;
  v23 = a1 + *(v53 + 44);
  v24 = *v23;
  v25 = *(v23 + 8);
  if (v25 == 1)
  {
    v26 = v18;
    if (v24)
    {
      v55 = 1;
LABEL_5:
      v30 = sub_23BBDAB58();
      goto LABEL_8;
    }

    v55 = 0;
  }

  else
  {

    sub_23BBDD5A8();
    v27 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v24, 0);
    v50 = a1;
    v51 = v17;
    v28 = *(v19 + 8);
    v28(v21, v18);
    v55 = v66;

    sub_23BBDD5A8();
    v29 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v24, 0);
    v26 = v18;
    v28(v21, v18);
    a1 = v50;
    v17 = v51;
    if (v65 == 1)
    {
      goto LABEL_5;
    }
  }

  v30 = sub_23BBDAB48();
LABEL_8:
  v31 = v30;
  if (v25)
  {
    v32 = v24;
  }

  else
  {

    sub_23BBDD5A8();
    v33 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v24, 0);
    (*(v54 + 8))(v21, v26);
    v32 = v64;
  }

  v34 = (v32 & 1) == 0;
  v35 = 0x4014000000000000;
  if (!v34)
  {
    v35 = 0x4018000000000000;
  }

  *v11 = v31;
  *(v11 + 1) = v35;
  v11[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0F0, &qword_23BBE96E8);
  sub_23B9D90DC(a1, v56, v57, &v11[*(v36 + 44)]);
  if (v25)
  {
    v37 = 0;
    if (v24)
    {
      goto LABEL_20;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v38 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v24, 0);
    (*(v54 + 8))(v21, v26);
    v37 = 0;
    if (v63)
    {
      goto LABEL_20;
    }
  }

  if (sub_23B9D4ED0(v53) >= 2)
  {
    v39 = v52;
    sub_23B9A721C(a1, v52, &qword_27E19A030, &qword_23BBE95D0);
    v40 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v40);
    sub_23B9846E8(v39, &qword_27E19A030, &qword_23BBE95D0);
    if (EnumTagSinglePayload != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
      sub_23BBD9D38();
      v37 = v62;
    }
  }

LABEL_20:
  v42 = v55;
  if (v55)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0x4018000000000000;
  }

  v44 = v58;
  sub_23B9A71D0(v11, v58, &qword_27E19A0E0, &qword_23BBE96D8);
  v45 = (v44 + *(v59 + 36));
  *v45 = 0;
  v45[1] = v37;
  sub_23B9A71D0(v44, v17, &qword_27E19A0E8, &qword_23BBE96E0);
  v46 = v60;
  sub_23B9A721C(v17, v60, &qword_27E19A0E8, &qword_23BBE96E0);
  v47 = v61;
  *v61 = v43;
  *(v47 + 8) = 0;
  *(v47 + 9) = v42;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0F8, &qword_23BBE96F0);
  sub_23B9A721C(v46, v47 + *(v48 + 48), &qword_27E19A0E8, &qword_23BBE96E0);
  sub_23B9846E8(v17, &qword_27E19A0E8, &qword_23BBE96E0);
  return sub_23B9846E8(v46, &qword_27E19A0E8, &qword_23BBE96E0);
}

uint64_t sub_23B9D90DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a4;
  v7 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v7);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for SubscriptionOfferViewDetailLink(0);
  MEMORY[0x28223BE20](v121);
  v120 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A100, &qword_23BBE96F8);
  MEMORY[0x28223BE20](v123);
  v113 = &v96 - v10;
  v11 = sub_23BBDA928();
  v110 = *(v11 - 8);
  v111 = v11;
  MEMORY[0x28223BE20](v11);
  v109 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A108, &qword_23BBE9700);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v122 = &v96 - v16;
  v17 = type metadata accessor for InAppStoreButtonStyle(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A110, &unk_23BBE9708);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v96 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  MEMORY[0x28223BE20](v23 - 8);
  v108 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v96 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
  MEMORY[0x28223BE20](v28 - 8);
  v112 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v118 = &v96 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v96 - v33;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A118, &qword_23BBE9718);
  MEMORY[0x28223BE20](v98);
  v36 = (&v96 - v35);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A120, &qword_23BBE9720);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v96 - v37;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A128, &qword_23BBE9728);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v96 - v38;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A130, &qword_23BBE9730);
  MEMORY[0x28223BE20](v115);
  v100 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v99 = &v96 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A138, &qword_23BBE9738);
  MEMORY[0x28223BE20](v42 - 8);
  v117 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v116 = &v96 - v45;
  v105 = a2;
  v114 = type metadata accessor for CompactSubscriptionOfferView(0, a2, a3, v46);
  v47 = sub_23B9D5180(v114);
  v119 = v7;
  v126 = a1;
  if (v47)
  {
    sub_23B9A721C(a1, v27, &qword_27E19A030, &qword_23BBE95D0);
    v48 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v27, 1, v48) == 1)
    {
      sub_23B9846E8(v27, &qword_27E19A030, &qword_23BBE95D0);
      __swift_storeEnumTagSinglePayload(v34, 1, 1, v7);
    }

    else
    {
      sub_23B9A721C(&v27[*(v48 + 32)], v34, &qword_27E198800, qword_23BBE5E20);
      sub_23B9DC5FC(v27, type metadata accessor for SubscriptionOfferViewConfiguration);
    }

    *v36 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
    swift_storeEnumTagMultiPayload();
    v52 = v98;
    v53 = *(v98 + 56);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A150, &qword_23BBE9778);
    __swift_storeEnumTagSinglePayload(v36 + v53, 1, 1, v54);
    *(v36 + *(v52 + 60)) = 8;
    sub_23B9DA06C(v126, v22);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v54);
    sub_23B9DBB5C(v22, v36 + v53);
    sub_23B9A71D0(v34, v36 + *(v52 + 52), &qword_27E198800, qword_23BBE5E20);
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v55 = v17[5];
    *&v19[v55] = swift_getKeyPath();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
    swift_storeEnumTagMultiPayload();
    v56 = v17[6];
    *&v19[v56] = swift_getKeyPath();
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
    swift_storeEnumTagMultiPayload();
    v57 = v17[7];
    *&v19[v57] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199730, &unk_23BBE9850);
    swift_storeEnumTagMultiPayload();
    v19[v17[8]] = 1;
    v58 = sub_23B97B518(&qword_27E19A158, &qword_27E19A118, &qword_23BBE9718, &unk_23BBF3B18);
    v59 = sub_23B9DC840(&qword_27E19A160, type metadata accessor for InAppStoreButtonStyle, &unk_23BBFF8D4);
    v60 = v104;
    sub_23BBDB988();
    sub_23B9DC5FC(v19, type metadata accessor for InAppStoreButtonStyle);
    sub_23B9846E8(v36, &qword_27E19A118, &qword_23BBE9718);
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v61 = v17[5];
    *&v19[v61] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v62 = v17[6];
    *&v19[v62] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v63 = v17[7];
    *&v19[v63] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v19[v17[8]] = 1;
    v127 = v52;
    v128 = v17;
    v129 = v58;
    v130 = v59;
    swift_getOpaqueTypeConformance2();
    v64 = v101;
    v65 = v107;
    sub_23BBDBA48();
    sub_23B9DC5FC(v19, type metadata accessor for InAppStoreButtonStyle);
    (*(v106 + 8))(v60, v65);
    v66 = v100;
    (*(v102 + 32))(v100, v64, v103);
    v50 = v115;
    *(v66 + *(v115 + 36)) = 1;
    v67 = v99;
    sub_23B9A71D0(v66, v99, &qword_27E19A130, &qword_23BBE9730);
    v51 = v116;
    a1 = v126;
    sub_23B9A71D0(v67, v116, &qword_27E19A130, &qword_23BBE9730);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v50 = v115;
    v51 = v116;
  }

  __swift_storeEnumTagSinglePayload(v51, v49, 1, v50);
  v68 = a1 + *(v114 + 48);
  v69 = *v68;
  v70 = v122;
  v71 = v120;
  v72 = v118;
  if (*(v68 + 8) == 1)
  {
    if ((v69 & 1) == 0)
    {
LABEL_9:
      v73 = 1;
      goto LABEL_18;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v74 = sub_23BBDB338();
    sub_23BBD9978();

    v75 = v109;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v69, 0);
    (*(v110 + 8))(v75, v111);
    if (v127 != 1)
    {
      goto LABEL_9;
    }
  }

  v76 = v108;
  sub_23B9A721C(v126, v108, &qword_27E19A030, &qword_23BBE95D0);
  v77 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v77);
  v79 = v119;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v76, &qword_27E19A030, &qword_23BBE95D0);
    v80 = 1;
  }

  else
  {
    sub_23B9DC888(v76 + *(v77 + 36), v72, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
    sub_23B9DC5FC(v76, type metadata accessor for SubscriptionOfferViewConfiguration);
    v80 = 0;
  }

  __swift_storeEnumTagSinglePayload(v72, v80, 1, v79);
  v81 = v121;
  v82 = *(v121 + 20);
  *(v71 + v82) = 0;
  v83 = *(v81 + 24);
  *(v71 + v83) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v84 = sub_23BBDC2A8();
  v85 = v119;
  *(v71 + *(v81 + 28)) = v84 & 1;
  v86 = v112;
  sub_23B9A721C(v72, v112, &qword_27E198800, qword_23BBE5E20);
  if (__swift_getEnumTagSinglePayload(v86, 1, v85) == 1)
  {
    sub_23B9846E8(v86, &qword_27E198800, qword_23BBE5E20);
  }

  else
  {
    v87 = v86;
    v88 = v97;
    sub_23B9DC8E4(v87, v97, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
    v89 = *(v88 + *(v85 + 24));
    sub_23B9DC5FC(v88, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
    *(v71 + v82) = v89;
  }

  sub_23B9A71D0(v72, v71, &qword_27E198800, qword_23BBE5E20);
  sub_23B9DC840(&qword_27E19A148, type metadata accessor for SubscriptionOfferViewDetailLink, &unk_23BBEAE80);
  v90 = v113;
  sub_23BBDBC78();
  sub_23B9DC5FC(v71, type metadata accessor for SubscriptionOfferViewDetailLink);
  sub_23B9A71D0(v90, v70, &qword_27E19A100, &qword_23BBE96F8);
  v73 = 0;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v70, v73, 1, v123);
  v91 = v117;
  sub_23B9A721C(v51, v117, &qword_27E19A138, &qword_23BBE9738);
  v92 = v124;
  sub_23B9A721C(v70, v124, &qword_27E19A108, &qword_23BBE9700);
  v93 = v125;
  sub_23B9A721C(v91, v125, &qword_27E19A138, &qword_23BBE9738);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A140, &qword_23BBE9740);
  sub_23B9A721C(v92, v93 + *(v94 + 48), &qword_27E19A108, &qword_23BBE9700);
  sub_23B9846E8(v70, &qword_27E19A108, &qword_23BBE9700);
  sub_23B9846E8(v51, &qword_27E19A138, &qword_23BBE9738);
  sub_23B9846E8(v92, &qword_27E19A108, &qword_23BBE9700);
  return sub_23B9846E8(v91, &qword_27E19A138, &qword_23BBE9738);
}

uint64_t sub_23B9DA06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A168, &qword_23BBEAFB0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A170, &unk_23BBE9860);
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800, qword_23BBE5E20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9A721C(a1, v15, &qword_27E19A030, &qword_23BBE95D0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v19 = &qword_27E19A030;
    v20 = &qword_23BBE95D0;
    v21 = v15;
LABEL_5:
    sub_23B9846E8(v21, v19, v20);
    return __swift_storeEnumTagSinglePayload(v35, 1, 1, v5);
  }

  sub_23B9DC8E4(v15, v18, type metadata accessor for SubscriptionOfferViewConfiguration);
  sub_23B9A721C(&v18[*(v16 + 32)], v9, &qword_27E198800, qword_23BBE5E20);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B9DC5FC(v18, type metadata accessor for SubscriptionOfferViewConfiguration);
    v19 = &qword_27E198800;
    v20 = qword_23BBE5E20;
    v21 = v9;
    goto LABEL_5;
  }

  v23 = sub_23B9DC8E4(v9, v12, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
  if (v18[*(v16 + 28)] != 2)
  {
    MEMORY[0x28223BE20](v23);
    *(&v30 - 2) = v12;
    MEMORY[0x28223BE20](v24);
    *(&v30 - 16) = v25 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A178, &qword_23BBEB060);
    sub_23B9DBBEC();
    v26 = v31;
    sub_23BBDBE98();
    sub_23B97B518(&qword_27E19A198, &qword_27E19A168, &qword_23BBEAFB0, MEMORY[0x277CDEFF0]);
    sub_23B9DBD28();
    v27 = v30;
    v28 = v34;
    sub_23BBDB6E8();
    (*(v33 + 8))(v26, v28);
    sub_23B9DC5FC(v18, type metadata accessor for SubscriptionOfferViewConfiguration);
    v29 = v35;
    (*(v32 + 32))(v35, v27, v5);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v5);
    return sub_23B9DC5FC(v12, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
  }

  sub_23B9DC5FC(v18, type metadata accessor for SubscriptionOfferViewConfiguration);
  sub_23B9DC5FC(v12, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
  return __swift_storeEnumTagSinglePayload(v35, 1, 1, v5);
}

uint64_t sub_23B9DA5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBD96B8();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_23BBDB668();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_23B9DA6D0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A190, &unk_23BBE9870);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - v5);
  if (a1)
  {
    v7 = sub_23BBDBE38();
    v8 = (v6 + *(v4 + 36));
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F48, &qword_23BBE7130) + 28);
    v10 = *MEMORY[0x277CE1050];
    v11 = sub_23BBDBE58();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    *v8 = swift_getKeyPath();
    *v6 = v7;
    sub_23B9A71D0(v6, a2, &qword_27E19A190, &unk_23BBE9870);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

BOOL sub_23B9DA88C()
{
  sub_23B9DC9E8();
  sub_23BBDA958();
  if (v2)
  {
    return v2 == 1;
  }

  sub_23B9DCA3C();
  sub_23BBDA958();
  result = v1;
  if (v1)
  {

    return 1;
  }

  return result;
}

uint64_t sub_23B9DA908()
{
  sub_23B9DC994();
  sub_23BBDA958();
  return sub_23BBD9BD8() & 1;
}

uint64_t sub_23B9DA950@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23BBDA9D8();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A208, &qword_23BBE9A10);
  return sub_23B9DA9A8((a2 + *(v3 + 44)));
}

uint64_t sub_23B9DA9A8@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_23BBDAFD8();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_23BBDAFB8();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_23BBDAFC8();
  sub_23BBDAFE8();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A210, &qword_23BBE9A18) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_23B9DAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_23B9D2D88();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_23B9D2D88();
  return (v13)(v11, a4);
}

void sub_23B9DAD70()
{
  OUTLINED_FUNCTION_13_1();
  sub_23BBDA618();
  *v0 = v1;
}

void sub_23B9DAD98()
{
  OUTLINED_FUNCTION_13_1();
  sub_23BBDA618();
  *v0 = v1;
}

uint64_t sub_23B9DAE10()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA7A8();
  *v0 = result;
  return result;
}

uint64_t sub_23B9DAE38()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA7A8();
  *v0 = result;
  return result;
}

unint64_t sub_23B9DAEA8()
{
  result = qword_27E19A048;
  if (!qword_27E19A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A020, &qword_23BBE95C0);
    sub_23B9DAF60();
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8, &qword_23BBE6C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A048);
  }

  return result;
}

unint64_t sub_23B9DAF60()
{
  result = qword_27E19A050;
  if (!qword_27E19A050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A040, &qword_23BBE9610);
    sub_23B9DB018();
    sub_23B97B518(&qword_27E198DE0, &qword_27E198DE8, &qword_23BC03DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A050);
  }

  return result;
}

unint64_t sub_23B9DB018()
{
  result = qword_27E19A058;
  if (!qword_27E19A058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A038, &qword_23BBE95D8);
    sub_23B97B518(&qword_27E19A060, &qword_27E19A068, &qword_23BBE9648, MEMORY[0x277CDF510]);
    sub_23B97B518(&qword_27E19A070, &qword_27E19A078, &unk_23BBE9650, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A058);
  }

  return result;
}

uint64_t sub_23B9DB0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  type metadata accessor for CompactSubscriptionOfferView(0, v7, *(v4 + 24), a4);
  OUTLINED_FUNCTION_17_5();
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    goto LABEL_19;
  }

  v11 = v9 + v10[6];
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_8:

    goto LABEL_15;
  }

  v12 = _s11PriceStringOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_23BBDCD08();
    OUTLINED_FUNCTION_12_1();
    v28 = *(v29 + 8);
    v27 = v11;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
    }

    goto LABEL_14;
  }

  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_12_1();
  (*(v14 + 8))(v11 + v67);
  v15 = v11 + *(v6 + 24);
  _s22LocalizedPriceResourceV6FormatOMa(0);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 == 3 || v16 == 2)
  {

    v17 = _s15PricePropertiesVMa(0);
    v64 = *(v17 + 20);
    v65 = v17;
    sub_23BBDCBE8();
    OUTLINED_FUNCTION_12_1();
    v19 = (*(v18 + 8))(v15 + v64);
    v27 = OUTLINED_FUNCTION_19_3(v19, v20, v21, v22, v23, v24, v25, v26, v64, v65);
LABEL_13:
    v28(v27);
  }

LABEL_14:
  v30 = v11 + *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v30, 1, v12))
  {
    v52 = swift_getEnumCaseMultiPayload();
    switch(v52)
    {
      case 2:
        sub_23BBDCD08();
        OUTLINED_FUNCTION_12_1();
        (*(v62 + 8))(v30, v63);
        break;
      case 1:

        v53 = _s22LocalizedPriceResourceVMa(0);
        v54 = *(v53 + 20);
        sub_23BBDCD08();
        OUTLINED_FUNCTION_12_1();
        v66 = *(v55 + 8);
        v68 = v56;
        v66(v30 + v54);
        v57 = v30 + *(v53 + 24);
        _s22LocalizedPriceResourceV6FormatOMa(0);
        v58 = swift_getEnumCaseMultiPayload();
        if (v58 == 3 || v58 == 2)
        {

          v59 = _s15PricePropertiesVMa(0);
          v60 = *(v59 + 20);
          sub_23BBDCBE8();
          OUTLINED_FUNCTION_12_1();
          (*(v61 + 8))(v57 + v60);
          (v66)(v57 + *(v59 + 24), v68);
        }

        break;
      case 0:
        goto LABEL_8;
    }
  }

LABEL_15:
  v31 = v9 + v10[8];
  v32 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  if (!__swift_getEnumTagSinglePayload(v31, 1, v32))
  {
    sub_23BBD96B8();
    OUTLINED_FUNCTION_12_1();
    (*(v33 + 8))(v31);
  }

  v34 = v9 + v10[9];
  sub_23BBD96B8();
  OUTLINED_FUNCTION_12_1();
  (*(v35 + 8))(v34);

  v36 = v10[10];
  v37 = sub_23BBDCDB8();
  if (!__swift_getEnumTagSinglePayload(v9 + v36, 1, v37))
  {
    (*(*(v37 - 8) + 8))(v9 + v36, v37);
  }

LABEL_19:
  (*(*(v7 - 8) + 8))(v9 + v5[9], v7);
  v38 = v5[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDA438();
    OUTLINED_FUNCTION_12_1();
    (*(v39 + 8))(v9 + v38);
  }

  else
  {
  }

  v40 = OUTLINED_FUNCTION_3_12(v5[11]);
  sub_23B97B450(v40, v41);
  v42 = OUTLINED_FUNCTION_3_12(v5[12]);
  sub_23B97B450(v42, v43);
  v44 = OUTLINED_FUNCTION_3_12(v5[13]);
  sub_23B97B450(v44, v45);
  v46 = OUTLINED_FUNCTION_3_12(v5[14]);
  j__swift_release(v46);
  v47 = OUTLINED_FUNCTION_3_12(v5[15]);
  sub_23B97B450(v47, v48);

  v49 = v5[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  OUTLINED_FUNCTION_12_1();
  (*(v50 + 8))(v9 + v49);

  return swift_deallocObject();
}

uint64_t sub_23B9DB6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (**a3)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for CompactSubscriptionOfferView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23B9D878C(a1, v9, v6, v7, a3);
}

unint64_t sub_23B9DB750()
{
  result = qword_27E19A088;
  if (!qword_27E19A088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A008, &qword_23BBE95A8);
    sub_23B9DB7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A088);
  }

  return result;
}

unint64_t sub_23B9DB7DC()
{
  result = qword_27E19A090;
  if (!qword_27E19A090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A028, &qword_23BBE95C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A020, &qword_23BBE95C0);
    sub_23B9DAEA8();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E19A098, &qword_27E19A0A0, &unk_23BBE96B0, &unk_23BC04960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A090);
  }

  return result;
}

unint64_t sub_23B9DB8D0()
{
  result = qword_27E19A0A8;
  if (!qword_27E19A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A010, &qword_23BBE95B0);
    sub_23B9DC840(&qword_27E19A0B0, type metadata accessor for SubscriptionOfferViewAXTypeStyleButtonSpacer, &unk_23BC07670);
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20, &qword_23BBE6C90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A0A8);
  }

  return result;
}

unint64_t sub_23B9DB9B8()
{
  result = qword_27E19A0B8;
  if (!qword_27E19A0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A018, &qword_23BBE95B8);
    sub_23B9DBA70();
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20, &qword_23BBE6C90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A0B8);
  }

  return result;
}

unint64_t sub_23B9DBA70()
{
  result = qword_27E19A0C0;
  if (!qword_27E19A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A080, &qword_23BBE96A8);
    sub_23B97B518(&qword_27E198D68, &qword_27E198D40, &qword_23BBE95A0, MEMORY[0x277CDF510]);
    sub_23B97B518(&qword_27E19A0C8, &qword_27E19A0D0, &qword_23BBE96C0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A0C0);
  }

  return result;
}

uint64_t sub_23B9DBB5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A110, &unk_23BBE9708);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_17_0();
  v4(v3);
  return a2;
}

unint64_t sub_23B9DBBEC()
{
  result = qword_27E19A180;
  if (!qword_27E19A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A178, &qword_23BBEB060);
    sub_23B9DBC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A180);
  }

  return result;
}

unint64_t sub_23B9DBC70()
{
  result = qword_27E19A188;
  if (!qword_27E19A188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A190, &unk_23BBE9870);
    sub_23B97B518(&qword_27E198F78, &qword_27E198F48, &qword_23BBE7130, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A188);
  }

  return result;
}

unint64_t sub_23B9DBD28()
{
  result = qword_27E19A1A0;
  if (!qword_27E19A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1A0);
  }

  return result;
}

uint64_t sub_23B9DBD7C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA6D8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_23B9DBE14(uint64_t a1)
{
  sub_23BBDBE58();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_23BBDA5B8();
}

uint64_t sub_23B9DBECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  type metadata accessor for CompactSubscriptionOfferView(0, v6, *(v4 + 24), a4);
  OUTLINED_FUNCTION_17_5();
  v8 = *(v7 + 80);
  v76 = *(v9 + 64);
  v10 = sub_23BBD9E98();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  v13 = *(v11 + 80);
  v14 = v4 + ((v8 + 32) & ~v8);
  v15 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    goto LABEL_19;
  }

  v16 = v14 + v15[6];
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  v75 = v10;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_8:

    goto LABEL_15;
  }

  v72 = _s11PriceStringOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_23BBDCD08();
    OUTLINED_FUNCTION_12_1();
    v32 = *(v33 + 8);
    v31 = v16;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
    }

    goto LABEL_14;
  }

  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_12_1();
  (*(v18 + 8))(v16 + v70);
  v19 = v16 + *(v10 + 24);
  _s22LocalizedPriceResourceV6FormatOMa(0);
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 == 3 || v20 == 2)
  {

    v21 = _s15PricePropertiesVMa(0);
    v67 = *(v21 + 20);
    v68 = v21;
    sub_23BBDCBE8();
    OUTLINED_FUNCTION_12_1();
    v23 = (*(v22 + 8))(v19 + v67);
    v31 = OUTLINED_FUNCTION_19_3(v23, v24, v25, v26, v27, v28, v29, v30, v67, v68);
LABEL_13:
    v32(v31);
  }

LABEL_14:
  v34 = v16 + *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v34, 1, v72))
  {
    v56 = swift_getEnumCaseMultiPayload();
    switch(v56)
    {
      case 2:
        sub_23BBDCD08();
        OUTLINED_FUNCTION_12_1();
        (*(v65 + 8))(v34, v66);
        break;
      case 1:

        v57 = _s22LocalizedPriceResourceVMa(0);
        v73 = *(v57 + 20);
        sub_23BBDCD08();
        OUTLINED_FUNCTION_12_1();
        v59 = v34 + v73;
        v71 = *(v58 + 8);
        v74 = v60;
        v71(v59);
        v61 = v34 + *(v57 + 24);
        _s22LocalizedPriceResourceV6FormatOMa(0);
        v62 = swift_getEnumCaseMultiPayload();
        if (v62 == 3 || v62 == 2)
        {

          v63 = _s15PricePropertiesVMa(0);
          v69 = *(v63 + 20);
          sub_23BBDCBE8();
          OUTLINED_FUNCTION_12_1();
          (*(v64 + 8))(v61 + v69);
          (v71)(v61 + *(v63 + 24), v74);
        }

        break;
      case 0:
        goto LABEL_8;
    }
  }

LABEL_15:
  v35 = v14 + v15[8];
  v36 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  if (!__swift_getEnumTagSinglePayload(v35, 1, v36))
  {
    sub_23BBD96B8();
    OUTLINED_FUNCTION_12_1();
    (*(v37 + 8))(v35);
  }

  v38 = v14 + v15[9];
  sub_23BBD96B8();
  OUTLINED_FUNCTION_12_1();
  (*(v39 + 8))(v38);

  v40 = v15[10];
  v41 = sub_23BBDCDB8();
  v10 = v75;
  if (!__swift_getEnumTagSinglePayload(v14 + v40, 1, v41))
  {
    (*(*(v41 - 8) + 8))(v14 + v40, v41);
  }

LABEL_19:
  (*(*(v6 - 8) + 8))(v14 + v5[9], v6);
  v42 = v5[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDA438();
    OUTLINED_FUNCTION_12_1();
    (*(v43 + 8))(v14 + v42);
  }

  else
  {
  }

  v44 = OUTLINED_FUNCTION_4_10(v5[11]);
  sub_23B97B450(v44, v45);
  v46 = OUTLINED_FUNCTION_4_10(v5[12]);
  sub_23B97B450(v46, v47);
  v48 = OUTLINED_FUNCTION_4_10(v5[13]);
  sub_23B97B450(v48, v49);
  v50 = OUTLINED_FUNCTION_4_10(v5[14]);
  j__swift_release(v50);
  v51 = OUTLINED_FUNCTION_4_10(v5[15]);
  sub_23B97B450(v51, v52);

  v53 = v5[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  OUTLINED_FUNCTION_12_1();
  (*(v54 + 8))(v14 + v53);
  (*(v12 + 8))(v4 + ((((v8 + 32) & ~v8) + v76 + v13) & ~v13), v10);

  return swift_deallocObject();
}

uint64_t sub_23B9DC514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for CompactSubscriptionOfferView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_23BBD9E98() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_23B9D89B0(v4 + v8, v11, v5, v6);
}

uint64_t sub_23B9DC5FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9DC650()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA6D8();
  *v0 = result & 1;
  return result;
}

unint64_t sub_23B9DC6A0()
{
  result = qword_27E19A1C0;
  if (!qword_27E19A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198EA0, &qword_23BBE6CE0);
    sub_23B9DC758();
    sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1C0);
  }

  return result;
}

unint64_t sub_23B9DC758()
{
  result = qword_27E19A1C8;
  if (!qword_27E19A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E98, &unk_23BBE98D0);
    sub_23B9DC840(&qword_27E19A1D0, type metadata accessor for ProductViewText, &unk_23BBF1100);
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20, &qword_23BBE6C90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1C8);
  }

  return result;
}

uint64_t sub_23B9DC840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B9DC888(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23B9DC8E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23B9DC940()
{

  return swift_deallocObject();
}

unint64_t sub_23B9DC994()
{
  result = qword_27E19A1F0;
  if (!qword_27E19A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1F0);
  }

  return result;
}

unint64_t sub_23B9DC9E8()
{
  result = qword_27E19A1F8;
  if (!qword_27E19A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1F8);
  }

  return result;
}

unint64_t sub_23B9DCA3C()
{
  result = qword_27E19A200;
  if (!qword_27E19A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A200);
  }

  return result;
}

uint64_t sub_23B9DCAA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
  type metadata accessor for ProductViewIconWrapper(255, v1, v2, v5);
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  v14[0] = sub_23BBDA358();
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A008, &qword_23BBE95A8);
  v14[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A010, &qword_23BBE95B0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A018, &qword_23BBE95B8);
  OUTLINED_FUNCTION_11_4(v15, v6, v14);
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v7, &qword_27E198D40, &qword_23BBE95A0, v8);
  sub_23BBDA018();
  type metadata accessor for LayoutMetricsModifier(255);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_9();
  sub_23B97B518(v9, &qword_27E198D40, &qword_23BBE95A0, v10);
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_13();
  sub_23B9DC840(v11, v12, &unk_23BBE3CD8);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_23BBDCD08();
}

void sub_23B9DCD64(uint64_t a1)
{
  sub_23B9DD1EC(319, &qword_27E19A2A8, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9DD1EC(319, &qword_27E197E40, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B9DCE3C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 17) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    switch(v13)
    {
      case 1:
        v14 = a1[v9];
        if (!a1[v9])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *&a1[v9];
        if (*&a1[v9])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9DCF9CLL);
      case 4:
        v14 = *&a1[v9];
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v17 = *a1;
        }

        else
        {
          v16 = 0;
          v17 = *a1;
        }

        return v8 + (v17 | v16) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload(&a1[v7 + 17] & ~v7, v6, v4);
  }

  v18 = *(a1 + 1);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23B9DCFB0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
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
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23B9DD1ACLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if ((v8 & 0x80000000) != 0)
        {
          v18 = &a1[v10 + 17] & ~v10;

          __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          a1[16] = 0;
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

void sub_23B9DD1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B9DD284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  return v1;
}

uint64_t sub_23B9DD2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a1;
  v81 = a3;
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v67 = v8;
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_11();
  swift_getWitnessTable();
  v9 = sub_23BBDAE98();
  v10 = *(a2 + 16);
  OUTLINED_FUNCTION_11_1();
  WitnessTable = swift_getWitnessTable();
  v12 = *(a2 + 24);
  v85 = v9;
  v86 = v10;
  v87 = WitnessTable;
  v88 = v12;
  v13 = OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_3_2();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_5();
  v70 = v16;
  MEMORY[0x28223BE20](v17);
  v69 = &v64 - v18;
  v82 = v9;
  v85 = v9;
  v86 = v10;
  v79 = WitnessTable;
  v80 = v10;
  v87 = WitnessTable;
  v88 = v12;
  v72 = v12;
  v19 = OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_3_2();
  v66 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_5();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v65 = &v64 - v25;
  v26 = sub_23BBDA928();
  OUTLINED_FUNCTION_3_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v19;
  v78 = v13;
  sub_23BBDACE8();
  OUTLINED_FUNCTION_3_2();
  v76 = v33;
  v77 = v32;
  MEMORY[0x28223BE20](v32);
  v75 = &v64 - v34;
  v35 = v3 + *(a2 + 40);
  v36 = *v35;
  if (*(v35 + 8) != 1)
  {

    sub_23BBDD5A8();
    v51 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v36, 0);
    (*(v28 + 8))(v31, v26);
    if (v85 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v52 = sub_23B9DD284();
    MEMORY[0x28223BE20](v52);
    v40 = v80;
    v50 = v72;
    v63 = v72;
    v53 = v23;
    v54 = swift_checkMetadataState();
    v43 = v79;
    sub_23BBDB9C8();

    v85 = v54;
    v86 = v40;
    v87 = v43;
    v88 = v63;
    OUTLINED_FUNCTION_1_14();
    v55 = v65;
    v56 = v74;
    sub_23B9D2D88();
    v57 = *(v66 + 8);
    v57(v53, v56);
    sub_23B9D2D88();
    v85 = v54;
    v86 = v40;
    v87 = v43;
    v88 = v63;
    OUTLINED_FUNCTION_0_13();
    v48 = v75;
    sub_23BA82D64();
    v57(v53, v56);
    v57(v55, v56);
    goto LABEL_6;
  }

  if (v36)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23B9DD284();
  v37 = v68;
  (*(v6 + 16))(v68, v3, a2);
  v38 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v39 = swift_allocObject();
  v40 = v80;
  v41 = v72;
  *(v39 + 16) = v80;
  *(v39 + 24) = v41;
  (*(v6 + 32))(v39 + v38, v37, a2);
  v42 = swift_checkMetadataState();
  v43 = v79;
  v44 = v70;
  sub_23BBDBB28();

  v85 = v42;
  v86 = v40;
  v87 = v43;
  v88 = v41;
  OUTLINED_FUNCTION_0_13();
  v45 = v69;
  v46 = v78;
  sub_23B9D2D88();
  v47 = *(v71 + 8);
  v47(v44, v46);
  sub_23B9D2D88();
  v85 = v42;
  v86 = v40;
  v87 = v43;
  v88 = v41;
  OUTLINED_FUNCTION_1_14();
  v48 = v75;
  sub_23BA82E14();
  v47(v44, v46);
  v49 = v45;
  v50 = v41;
  v47(v49, v46);
LABEL_6:
  v58 = v82;
  v85 = v82;
  v86 = v40;
  v87 = v43;
  v88 = v50;
  v59 = OUTLINED_FUNCTION_1_14();
  v85 = v58;
  v86 = v40;
  v87 = v43;
  v88 = v50;
  v60 = OUTLINED_FUNCTION_0_13();
  v83 = v59;
  v84 = v60;
  OUTLINED_FUNCTION_2_7();
  v61 = v77;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v76 + 8))(v48, v61);
}

uint64_t sub_23B9DDA50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AutomaticNavigationModifier(0, v8, v9, v10);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v4 + 8))(v7, a2);
}

uint64_t sub_23B9DDB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for AutomaticNavigationModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);
  sub_23B97B5C0(*(v7 + v6[12]), *(v7 + v6[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_23B9DDC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for AutomaticNavigationModifier(0, v5, *(v4 + 24), a4) - 8);
  return sub_23B9DDA50(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
}

uint64_t sub_23B9DDCF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AutomaticNavigationModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_5_11();
  swift_getWitnessTable();
  sub_23BBDAE98();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDACE8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_23B9DDEC4()
{
  v1 = v0;
  v2 = sub_23BBDCE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23BBDD018();
    v47 = v1;
    v13 = v12;

    sub_23BB02B28(v11, v13);
    sub_23B9A935C();
    sub_23BBDCDE8();
    v14 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v14, v15);
    v16 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v16, v17, v5);
    v18 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v18, v19);
    sub_23BBDCDD8();
    (*(v3 + 8))(v5, v2);
    v20 = OUTLINED_FUNCTION_0_7();
    v22 = sub_23B9A940C(v20, v21);
    v23 = sub_23BB02FE4(v8, v22);
    v25 = v24;

    v26 = sub_23BBD97D8();
    v28 = v27;
    sub_23B9A940C(v23, v25);
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = sub_23B9D4CA8(v26, v28);

  if (v29)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  type metadata accessor for ProductViewPurchaseEvent(0);
  sub_23BBC9A58();
  if (!v32)
  {
LABEL_16:

    return 0;
  }

  v33 = v32;
  sub_23BBC9CD8();
  if (!v34)
  {

    goto LABEL_16;
  }

  v35 = v34;
  v36 = sub_23BB024A0(v33, v31, 1);
  v37 = sub_23BB024A0(v35, v36, 1);
  v38 = *(off_27E19A2B8 + 2);
  if (v38)
  {

    v39 = (v47 + 40);
    do
    {
      v40 = *(v39 - 1);
      v41 = *v39;

      v42 = sub_23BB03A88(v40, v41);
      v44 = v43;

      if (v44)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v48 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010, qword_23BBE7230);
        sub_23BBDD8D8();
        v37 = v48;

        sub_23B9A9318();
        sub_23BBDD8F8();
      }

      v39 += 2;
      --v38;
    }

    while (v38);
  }

  return v37;
}

uint64_t type metadata accessor for ProductViewPurchaseEvent(uint64_t a1)
{
  result = qword_27E19A2C0;
  if (!qword_27E19A2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B9DE304(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == 2147483646)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = type metadata accessor for ProductViewBaseEvent(0);
    if (*(*(v10 - 8) + 84) == a2)
    {
      v11 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = type metadata accessor for MintViewBasePurchaseEvent(0);
      v12 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_23B9DE3F0(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v9 = type metadata accessor for ProductViewBaseEvent(0);
    if (*(*(v9 - 8) + 84) == a3)
    {
      v10 = v9;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for MintViewBasePurchaseEvent(0);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v6 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_23B9DE4B8(uint64_t a1, double a2)
{
  result = type metadata accessor for ProductViewBaseEvent(319);
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for MintViewBasePurchaseEvent(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_23B9DE54C(void *a1)
{
  v1 = a1;
  v2 = sub_23B9DE590();

  return v2;
}

uint64_t sub_23B9DE590()
{
  v0 = sub_23BBDCE08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23BBDD018();
  v9 = v8;

  sub_23BB02B28(v7, v9);
  sub_23B9A935C();
  sub_23BBDCDE8();
  v10 = OUTLINED_FUNCTION_0_14();
  sub_23B9A93B4(v10, v11);
  v12 = OUTLINED_FUNCTION_0_14();
  sub_23BB05734(v12, v13, v3);
  v14 = OUTLINED_FUNCTION_0_14();
  sub_23B9A940C(v14, v15);
  sub_23BBDCDD8();
  (*(v1 + 8))(v3, v0);
  v16 = OUTLINED_FUNCTION_0_14();
  v18 = sub_23B9A940C(v16, v17);
  v19 = sub_23BB02FE4(v6, v18);
  v21 = v20;

  v22 = sub_23BBD97C8();
  sub_23B9A940C(v19, v21);
  return v22;
}

void sub_23B9DE770(uint64_t a1)
{
  sub_23B9DF2EC(319, &qword_27E198D20, type metadata accessor for ProductViewConfiguration, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9DF2EC(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23B9D2354();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B9DE888(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_23BBDCD08() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_23BBDCBE8() - 8);
  v8 = *(v7 + 80);
  v9 = v5 | v8 | 7;
  v10 = (v6 + 7 + ((*(v7 + 64) + v5 + ((v8 + 16) & ~v8)) & ~v5)) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 10;
  if (v12 <= v11)
  {
    v12 = v11;
  }

  if (v12 <= 3)
  {
    v12 = 3;
  }

  v13 = v12 + ((((v5 + 16) & ~v5) + v6 + v9) & ~v9);
  if (v13 + 1 > ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  v48 = v14;
  v44 = sub_23BBD96B8();
  v15 = *(v44 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v17 >= 0)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v45 = v19;
  v20 = v19 - 1;
  v46 = *(a3 + 16);
  v21 = *(v46 - 8);
  v22 = *(v21 + 84);
  v47 = v20;
  if (v22 <= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = *(v21 + 84);
  }

  v24 = *(sub_23BBDA438() - 8);
  if (*(v24 + 64) <= 8uLL)
  {
    v25 = 8;
  }

  else
  {
    v25 = *(v24 + 64);
  }

  v26 = *(v15 + 80);
  if (v16)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  v28 = *(v21 + 80);
  if (!a2)
  {
    return 0;
  }

  v29 = v48 + v9 + 1;
  v30 = (((v9 | v26) + 32) & ~(v9 | v26)) + v28 + ((v27 + *(v15 + 64) + ((v26 + 16 + ((v48 + 8 + (v29 & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v23 < a2)
  {
    v31 = *(v24 + 80) & 0xF8 | 7;
    v32 = ((v25 + ((*(v21 + 64) + v31 + (v30 & ~v28)) & ~v31) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v32 <= 3)
    {
      v33 = ((a2 - v23 + 255) >> 8) + 1;
    }

    else
    {
      v33 = 2;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    switch(v35)
    {
      case 1:
        v36 = a1[v32];
        if (!a1[v32])
        {
          break;
        }

        goto LABEL_45;
      case 2:
        v36 = *&a1[v32];
        if (*&a1[v32])
        {
          goto LABEL_45;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9DED38);
      case 4:
        v36 = *&a1[v32];
        if (!v36)
        {
          break;
        }

LABEL_45:
        v38 = v32 > 3;
        if (v32 <= 3)
        {
          v39 = (v36 - 1) << (8 * v32);
        }

        else
        {
          v39 = 0;
        }

        if (v38)
        {
          v43 = *a1;
        }

        else
        {
          v43 = *a1;
        }

        return v23 + (v43 | v39) + 1;
      default:
        break;
    }
  }

  if (v47 >= v22)
  {
    if (v45 == 0x7FFFFFFF)
    {
      v40 = *(a1 + 1);
      if (v40 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      v41 = v40 + 1;
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v26 + 16 + ((v48 + 8 + ((v29 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v9 | v26) + 16) & ~(v9 | v26))) & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26, v16, v44);
      v41 = EnumTagSinglePayload - 1;
      if (EnumTagSinglePayload < 2)
      {
        v41 = 0;
      }
    }

    if (v41 >= 2)
    {
      return v41 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return __swift_getEnumTagSinglePayload(&a1[v30] & ~v28, v22, v46);
  }
}

void sub_23B9DED4C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_23BBDCD08() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23BBDCBE8() - 8);
  v9 = *(v8 + 80);
  v10 = v6 | v9 | 7;
  v11 = (v7 + 7 + ((*(v8 + 64) + v6 + ((v9 + 16) & ~v9)) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v13 = v11 + 10;
  if (v13 <= v12)
  {
    v13 = v12;
  }

  if (v13 <= 3)
  {
    v13 = 3;
  }

  v14 = v13 + ((((v6 + 16) & ~v6) + v7 + v10) & ~v10);
  if (v14 + 1 > ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v54 = sub_23BBD96B8();
  v17 = *(v54 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v19 >= 0)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v55 = v20;
  v56 = v21;
  v22 = v21 - 1;
  v57 = *(a4 + 16);
  v23 = *(v57 - 8);
  v58 = *(v23 + 84);
  v59 = v22;
  if (v58 <= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = *(v23 + 84);
  }

  v25 = sub_23BBDA438();
  v26 = v18;
  v27 = 0;
  v28 = *(v25 - 8);
  if (*(v28 + 64) <= 8uLL)
  {
    v29 = 8;
  }

  else
  {
    v29 = *(v28 + 64);
  }

  v30 = *(v17 + 80);
  v31 = v16 + v10 + 1;
  v32 = v16 + 8 + (v31 & ~v10);
  v33 = v30 + 16;
  v34 = *(v17 + 64);
  if (!v26)
  {
    ++v34;
  }

  v35 = v34 + ((v30 + 16 + (v32 & 0xFFFFFFFFFFFFFFF8)) & ~v30) + 7;
  v36 = (((v10 | v30) + 32) & ~(v10 | v30)) + 8;
  v37 = *(v23 + 80);
  v38 = v36 + v37 + (v35 & 0xFFFFFFFFFFFFFFF8);
  v39 = *(v28 + 80) & 0xF8 | 7;
  v40 = ((v29 + ((*(v23 + 64) + v39 + (v38 & ~v37)) & ~v39) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v24 < a3)
  {
    if (v40 <= 3)
    {
      v41 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v41 = 2;
    }

    if (v41 >= 0x10000)
    {
      v42 = 4;
    }

    else
    {
      v42 = 2;
    }

    if (v41 < 0x100)
    {
      v42 = 1;
    }

    if (v41 >= 2)
    {
      v27 = v42;
    }

    else
    {
      v27 = 0;
    }
  }

  if (v24 < a2)
  {
    v43 = ~v24 + a2;
    bzero(a1, v40);
    if (v40 <= 3)
    {
      v44 = (v43 >> 8) + 1;
    }

    else
    {
      v44 = 1;
    }

    if (v40 > 3)
    {
      *a1 = v43;
    }

    else
    {
      *a1 = v43;
    }

    switch(v27)
    {
      case 1:
        *(a1 + v40) = v44;
        return;
      case 2:
        *(a1 + v40) = v44;
        return;
      case 3:
        goto LABEL_77;
      case 4:
        *(a1 + v40) = v44;
        return;
      default:
        return;
    }
  }

  v45 = ~v30;
  v46 = ~v37;
  switch(v27)
  {
    case 1:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    case 2:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    case 3:
LABEL_77:
      __break(1u);
      JUMPOUT(0x23B9DF2ACLL);
    case 4:
      *(a1 + v40) = 0;
      goto LABEL_52;
    default:
LABEL_52:
      if (!a2)
      {
        return;
      }

LABEL_53:
      if (v59 < v58)
      {
        v47 = (a1 + v38) & v46;
        v48 = a2;
        v26 = v58;
        v49 = v57;
LABEL_55:

        __swift_storeEnumTagSinglePayload(v47, v48, v26, v49);
        return;
      }

      v50 = v36 + (v35 & 0xFFFFFFF8);
      if (v59 < a2)
      {
        if (!v50)
        {
          return;
        }

        v51 = a2 - v56;
LABEL_70:
        bzero(a1, v50);
        *a1 = v51;
        return;
      }

      v51 = a2 - v56;
      if (a2 >= v56)
      {
        if (!v50)
        {
          return;
        }

        goto LABEL_70;
      }

      if (v56 == 0x7FFFFFFF)
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *a1 = a2 - 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = a2;
        }

        return;
      }

      v52 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v10 | v30) + 16) & ~(v10 | v30));
      if (a2 < v55)
      {
        v47 = (v33 + ((v16 + 8 + ((v52 + v31) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & v45;
        v48 = a2 + 2;
        v49 = v54;
        goto LABEL_55;
      }

      v53 = (((v33 + (v32 & 0xFFFFFFF8)) & v45) + v34 + 7) & 0xFFFFFFF8;
      if (v53 != -8)
      {
        bzero(v52, (v53 + 8));
        *v52 = a2 - v55;
      }

      return;
  }
}

void sub_23B9DF2EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23B9DF394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v32 = a2;
  v4 = *(a1 + 24);
  v30 = *(a1 + 16);
  v5 = type metadata accessor for ProductViewIconWrapper(255, v30, v4, a3);
  v38 = v3;
  v39 = OUTLINED_FUNCTION_5_12(v5);
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20, &qword_23BBE6C90);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A350, &unk_23BBE9BD0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E68, &qword_23BBE6CB0);
  OUTLINED_FUNCTION_8_9(v6);
  v7 = sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  v8 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8, &qword_23BBE6C10);
  v14 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  v33 = v30;
  v34 = v4;
  v35 = v31;
  sub_23B9BE15C(v7);
  sub_23BBDC068();
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBA08();
  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_1_15();
  v26 = sub_23B97B518(v24, &qword_27E198DF8, &qword_23BBE6C10, v25);
  v36 = WitnessTable;
  v37 = v26;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v27 = *(v16 + 8);
  v27(v19, v14);
  sub_23B9D2D88();
  return (v27)(v22, v14);
}

uint64_t sub_23B9DF6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60, &qword_23BBF3AB0);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v88 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E68, &qword_23BBE6CB0);
  MEMORY[0x28223BE20](v116);
  v118 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v117 = (&v88 - v11);
  v12 = sub_23BBDB148();
  v110 = *(v12 - 8);
  v111 = v12;
  MEMORY[0x28223BE20](v12);
  v109 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A358, &unk_23BBE9BE0);
  MEMORY[0x28223BE20](v122);
  v108 = (&v88 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A350, &unk_23BBE9BD0);
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x28223BE20](v15);
  v112 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v88 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80, &qword_23BBE6B80);
  MEMORY[0x28223BE20](v20 - 8);
  v107 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v88 - v23;
  v92 = sub_23BBDA438();
  v99 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v94 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ProductViewIconWrapper(0, a2, a3, v26);
  v90 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v88 - v28;
  WitnessTable = swift_getWitnessTable();
  __src = v27;
  v150 = WitnessTable;
  v91 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v33 = &v88 - v32;
  v100 = v34;
  v35 = sub_23BBDA358();
  v101 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v93 = &v88 - v36;
  v103 = v37;
  v38 = sub_23BBDA358();
  v102 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v95 = &v88 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20, &qword_23BBE6C90);
  v104 = v38;
  v40 = sub_23BBDA358();
  v120 = *(v40 - 8);
  v121 = v40;
  MEMORY[0x28223BE20](v40);
  v106 = &v88 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v96 = &v88 - v43;
  MEMORY[0x28223BE20](v44);
  v123 = &v88 - v45;
  v124 = a2;
  v125 = a3;
  v126 = a1;
  v89 = v29;
  v97 = a2;
  sub_23BA33338(sub_23B9E10F0, a2, v29, a3);
  v46 = a1;
  sub_23B99FCE0(a1, v24, &qword_27E198D80, &qword_23BBE6B80);
  v105 = type metadata accessor for ProductViewConfiguration(0);
  LODWORD(a2) = __swift_getEnumTagSinglePayload(v24, 1, v105);
  sub_23B979910(v24, &qword_27E198D80, &qword_23BBE6B80);
  if (a2 == 1)
  {
    v47 = v94;
    sub_23BBDA428();
    v48 = v92;
  }

  else
  {
    __src = MEMORY[0x277D84F90];
    v88 = sub_23B9E10FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50, &unk_23BBE6CA0);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50, &unk_23BBE6CA0, MEMORY[0x277D83970]);
    v47 = v94;
    v48 = v92;
    sub_23BBDD6C8();
  }

  v49 = v91;
  v50 = v89;
  sub_23BBDBC38();
  (*(v99 + 8))(v47, v48);
  (*(v90 + 8))(v50, v27);
  v147 = 1;
  v146 = 1;
  v145 = 1;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v148 = 0;
  __src = 0;
  LOBYTE(v150) = 1;
  v151 = 0;
  v152 = 1;
  v153 = 0;
  v154 = 1;
  v155 = 0x4054000000000000;
  v156 = 0;
  v157 = 0x4061800000000000;
  v158 = 0;
  v159 = 0x4061800000000000;
  v160 = 0;
  v133 = v27;
  v134 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v100;
  v54 = sub_23B9DCCD0(v53);
  v55 = v93;
  sub_23BA19724(&__src, v54, v56, v52, OpaqueTypeConformance2);
  (*(v98 + 8))(v33, v52);
  v57 = sub_23B9A6A40();
  v140 = OpaqueTypeConformance2;
  v141 = v57;
  v58 = v103;
  v59 = swift_getWitnessTable();
  v60 = v95;
  sub_23BBDB718();
  (*(v101 + 8))(v55, v58);
  v138 = v59;
  v139 = MEMORY[0x277CE01B0];
  v61 = v104;
  v62 = swift_getWitnessTable();
  v63 = v96;
  sub_23BBDB858();
  (*(v102 + 8))(v60, v61);
  v64 = sub_23B97B518(&qword_27E198E18, &qword_27E198E20, &qword_23BBE6C90, MEMORY[0x277CE04A0]);
  v136 = v62;
  v137 = v64;
  v65 = v121;
  v102 = swift_getWitnessTable();
  sub_23B9D2D88();
  v103 = *(v120 + 1);
  v104 = (v120 + 8);
  v103(v63, v65);
  v66 = sub_23BBDAB48();
  v67 = v108;
  *v108 = v66;
  *(v67 + 8) = 0x4010000000000000;
  *(v67 + 16) = 0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A360, &unk_23BBE9BF0);
  v69 = v46;
  sub_23B9E0550(v46, v97, a3, v67 + *(v68 + 44));
  v70 = v109;
  sub_23BBDB128();
  v101 = sub_23B97B518(&qword_27E19A368, &qword_27E19A358, &unk_23BBE9BE0, MEMORY[0x277CE1198]);
  sub_23BBDB968();
  (*(v110 + 8))(v70, v111);
  sub_23B979910(v67, &qword_27E19A358, &unk_23BBE9BE0);
  v71 = v107;
  sub_23B99FCE0(v69, v107, &qword_27E198D80, &qword_23BBE6B80);
  v72 = v105;
  if (__swift_getEnumTagSinglePayload(v71, 1, v105) == 1)
  {
    sub_23B979910(v71, &qword_27E198D80, &qword_23BBE6B80);
    v73 = 1;
  }

  else
  {
    sub_23B9E11D4(v71 + *(v72 + 24), v119, type metadata accessor for ProductViewButtonConfiguration);
    sub_23B9A7170(v71, type metadata accessor for ProductViewConfiguration);
    v73 = 0;
  }

  v74 = type metadata accessor for ProductViewButtonConfiguration(0);
  v75 = v119;
  __swift_storeEnumTagSinglePayload(v119, v73, 1, v74);
  v76 = v117;
  sub_23BA7C678(v75, v117);
  v77 = v121;
  v78 = v106;
  (*(v120 + 2))(v106, v123, v121);
  v133 = v78;
  v79 = v112;
  v80 = v113;
  v81 = *(v113 + 16);
  v82 = v19;
  v120 = v19;
  v83 = v114;
  v81(v112, v82, v114);
  v134 = v79;
  v84 = v118;
  sub_23B99FCE0(v76, v118, &qword_27E198E68, &qword_23BBE6CB0);
  v135 = v84;
  v132[0] = v77;
  v132[1] = v83;
  v132[2] = v116;
  v127 = v122;
  v128 = v101;
  v129 = v102;
  v130 = swift_getOpaqueTypeConformance2();
  v131 = sub_23B97B518(&qword_27E19A370, &qword_27E198E68, &qword_23BBE6CB0, &unk_23BBF3B18);
  sub_23BB6739C(&v133, 3, v132);
  sub_23B979910(v76, &qword_27E198E68, &qword_23BBE6CB0);
  v85 = *(v80 + 8);
  v85(v120, v83);
  v86 = v103;
  v103(v123, v77);
  sub_23B979910(v84, &qword_27E198E68, &qword_23BBE6CB0);
  v85(v79, v83);
  return v86(v78, v77);
}

uint64_t sub_23B9E0458(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LargeProductView(0, v6, v7, v8);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23B9E0550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a2;
  v95 = a3;
  v100 = a4;
  v92 = sub_23BBDA928();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E88, &unk_23BBE98C0);
  MEMORY[0x28223BE20](v6 - 8);
  v99 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = (v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (v84 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80, &qword_23BBE6B80);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v84 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (v84 - v21);
  v23 = type metadata accessor for ProductViewText(0);
  MEMORY[0x28223BE20](v23);
  v97 = v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v84 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v84 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v84 - v32;
  v96 = a1;
  sub_23B99FCE0(a1, v22, &qword_27E198D80, &qword_23BBE6B80);
  v93 = type metadata accessor for ProductViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v93) == 1)
  {
    sub_23B979910(v22, &qword_27E198D80, &qword_23BBE6B80);
  }

  else
  {
    v35 = *v22;
    v34 = v22[1];

    sub_23B9A7170(v22, type metadata accessor for ProductViewConfiguration);
    if (v34)
    {
      *v14 = v35;
      v14[1] = v34;
      v36 = type metadata accessor for ProductViewText.Storage(0);
      swift_storeEnumTagMultiPayload();
      v37 = v14;
      v38 = 0;
      v39 = v36;
      goto LABEL_6;
    }
  }

  v39 = type metadata accessor for ProductViewText.Storage(0);
  v37 = v14;
  v38 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v37, v38, 1, v39);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for LayoutMetrics(0);
  v87 = __swift_project_value_buffer(v40, &unk_27E1BF7F8);
  sub_23B9E11D4(v87, v30, type metadata accessor for LayoutMetrics);
  v41 = type metadata accessor for PlaceholderLayouts(0);
  v42 = *(v41 + 20);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  v86 = __swift_project_value_buffer(v40, &unk_27E1BF810);
  sub_23B9E11D4(v86, &v30[v42], type metadata accessor for LayoutMetrics);
  v43 = *(v41 + 24);
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  v85 = __swift_project_value_buffer(v40, &unk_27E1BF828);
  sub_23B9E11D4(v85, &v30[v43], type metadata accessor for LayoutMetrics);
  v44 = &v30[v23[10]];
  v45 = v23[13];
  *&v30[v45] = swift_getKeyPath();
  v84[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v46 = v23[14];
  *&v30[v46] = swift_getKeyPath();
  v84[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  sub_23B9E1164(v14, &v30[v23[5]]);
  v30[v23[6]] = 0;
  v30[v23[7]] = 1;
  v30[v23[8]] = 0;
  *v44 = 0;
  *(v44 + 1) = 0;
  v117 = 1;
  v115 = 0;
  v113 = 0;
  v111 = 1;
  v109 = 0;
  v107 = 0;
  v47 = &v30[v23[9]];
  *v47 = 0;
  v47[8] = 1;
  *(v47 + 3) = *&v116[3];
  *(v47 + 9) = *v116;
  *(v47 + 2) = 0x405E000000000000;
  v47[24] = 0;
  *(v47 + 7) = *&v114[3];
  *(v47 + 25) = *v114;
  *(v47 + 4) = 0x405E000000000000;
  v47[40] = 0;
  v48 = *v112;
  *(v47 + 11) = *&v112[3];
  *(v47 + 41) = v48;
  *(v47 + 6) = 0;
  v47[56] = v111;
  v49 = *v110;
  *(v47 + 15) = *&v110[3];
  *(v47 + 57) = v49;
  *(v47 + 8) = 0x4032000000000000;
  v47[72] = v109;
  v50 = *v108;
  *(v47 + 19) = *&v108[3];
  *(v47 + 73) = v50;
  *(v47 + 10) = 0x4032000000000000;
  v47[88] = v107;
  *&v30[v23[11]] = swift_getKeyPath();
  *&v30[v23[12]] = swift_getKeyPath();
  sub_23B9A7268(v30, v33, v51);
  v53 = type metadata accessor for LargeProductView(0, v94, v95, v52);
  v54 = v96;
  v55 = v96 + *(v53 + 44);
  v56 = *v55;
  if (*(v55 + 8) == 1)
  {
    v57 = v98;
    if ((v56 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v58 = sub_23BBDB338();
    sub_23BBD9978();

    v59 = v90;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v56, 0);
    (*(v91 + 8))(v59, v92);
    v57 = v98;
    if (v106 != 1)
    {
      goto LABEL_19;
    }
  }

  sub_23B99FCE0(v54, v19, &qword_27E198D80, &qword_23BBE6B80);
  if (__swift_getEnumTagSinglePayload(v19, 1, v93) == 1)
  {
    sub_23B979910(v19, &qword_27E198D80, &qword_23BBE6B80);
    goto LABEL_20;
  }

  v60 = *(v19 + 2);
  v61 = *(v19 + 3);

  sub_23B9A7170(v19, type metadata accessor for ProductViewConfiguration);
  v62 = sub_23B9D4CA8(v60, v61);

  if (!v62)
  {
LABEL_20:
    v65 = v88;
    sub_23B99FCE0(v54, v88, &qword_27E198D80, &qword_23BBE6B80);
    if (__swift_getEnumTagSinglePayload(v65, 1, v93) == 1)
    {
      sub_23B979910(v65, &qword_27E198D80, &qword_23BBE6B80);
    }

    else
    {
      v67 = *(v65 + 16);
      v66 = *(v65 + 24);

      sub_23B9A7170(v65, type metadata accessor for ProductViewConfiguration);
      if (v66)
      {
        v68 = v89;
        *v89 = v67;
        v68[1] = v66;
        v69 = v68;
        v70 = type metadata accessor for ProductViewText.Storage(0);
        swift_storeEnumTagMultiPayload();
        v71 = v69;
        v72 = 0;
        v73 = v70;
LABEL_25:
        __swift_storeEnumTagSinglePayload(v71, v72, 1, v73);
        sub_23B9E11D4(v87, v27, type metadata accessor for LayoutMetrics);
        sub_23B9E11D4(v86, &v27[*(v41 + 20)], type metadata accessor for LayoutMetrics);
        sub_23B9E11D4(v85, &v27[*(v41 + 24)], type metadata accessor for LayoutMetrics);
        v74 = &v27[v23[10]];
        v75 = v23[13];
        *&v27[v75] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v76 = v23[14];
        *&v27[v76] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        sub_23B9E1164(v69, &v27[v23[5]]);
        v27[v23[6]] = 1;
        v27[v23[7]] = 1;
        v27[v23[8]] = 0;
        *v74 = 0;
        *(v74 + 1) = 0;
        LOBYTE(v106) = 1;
        v105 = 0;
        v104 = 0;
        v103 = 1;
        v102 = 0;
        v101 = 0;
        v77 = &v27[v23[9]];
        *v77 = 0;
        v77[8] = 1;
        *(v77 + 2) = 0x4054000000000000;
        v77[24] = 0;
        *(v77 + 4) = 0x4054000000000000;
        v77[40] = 0;
        *(v77 + 6) = 0;
        v77[56] = 1;
        *(v77 + 8) = 0x4024000000000000;
        v77[72] = 0;
        *(v77 + 10) = 0x4024000000000000;
        v77[88] = 0;
        *&v27[v23[11]] = swift_getKeyPath();
        *&v27[v23[12]] = swift_getKeyPath();
        sub_23B9A7268(v27, v57, v78);
        v63 = v57;
        v64 = 0;
        goto LABEL_26;
      }
    }

    v73 = type metadata accessor for ProductViewText.Storage(0);
    v69 = v89;
    v71 = v89;
    v72 = 1;
    goto LABEL_25;
  }

LABEL_19:
  v63 = v57;
  v64 = 1;
LABEL_26:
  __swift_storeEnumTagSinglePayload(v63, v64, 1, v23);
  v79 = v97;
  sub_23B9E11D4(v33, v97, type metadata accessor for ProductViewText);
  v80 = v99;
  sub_23B99FCE0(v57, v99, &qword_27E198E88, &unk_23BBE98C0);
  v81 = v100;
  sub_23B9E11D4(v79, v100, type metadata accessor for ProductViewText);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A378, &qword_23BBE9CB0);
  sub_23B99FCE0(v80, v81 + *(v82 + 48), &qword_27E198E88, &unk_23BBE98C0);
  sub_23B979910(v57, &qword_27E198E88, &unk_23BBE98C0);
  sub_23B9A7170(v33, type metadata accessor for ProductViewText);
  sub_23B979910(v80, &qword_27E198E88, &unk_23BBE98C0);
  return sub_23B9A7170(v79, type metadata accessor for ProductViewText);
}

unint64_t sub_23B9E10FC()
{
  result = qword_27E198E48;
  if (!qword_27E198E48)
  {
    sub_23BBDA438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E48);
  }

  return result;
}

uint64_t sub_23B9E1164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9E11D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B9E1234(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ProductViewIconWrapper(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_5_12(v4);
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20, &qword_23BBE6C90);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A350, &unk_23BBE9BD0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E68, &qword_23BBE6CB0);
  OUTLINED_FUNCTION_8_9(v5);
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8, &qword_23BBE6C10);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v6, &qword_27E198DF8, &qword_23BBE6C10, v7);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1)
{

  return swift_getTupleTypeMetadata3();
}

uint64_t SubscriptionStoreButton.init(_:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreButton(0);
  v5 = a2 + v4[5];
  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 73) = 0;
  v8 = a2 + v4[8];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a2 + v4[9];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  return sub_23B9E7210();
}

uint64_t type metadata accessor for SubscriptionStoreButton(uint64_t a1)
{
  result = qword_27E19A3A0;
  if (!qword_27E19A3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B9E1548@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for SubscriptionStoreButton(0) + 24));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v7 + 32);
  LODWORD(v7) = *(v7 + 33);
  v11 = v9;
  v17 = v9;
  v18 = v8;
  if (v7 == 1)
  {
    result = sub_23B9A165C(v9, *(&v9 + 1), v8);
    v14 = v17;
    v13 = v18;
  }

  else
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v16 = sub_23B9A163C(v11, *(&v17 + 1), v18, *(&v18 + 1), v10, 0);
    result = (*(v4 + 8))(v6, v3, v16);
    v14 = v19;
    v13 = v20;
    LOBYTE(v10) = v21;
  }

  *a1 = v14;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_23B9E1784(void *__src)
{
  memcpy(__dst, __src, 0x49uLL);
  memcpy(__srca, __src, 0x49uLL);
  sub_23B9E6BA4(__dst, &v3);
  return sub_23BBD0308(__srca);
}

uint64_t sub_23B9E17F0()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SubscriptionStoreButton(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_23B9E1948()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SubscriptionStoreButton(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
  }

  else
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v8 = sub_23B9B6460(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v6;
}

uint64_t sub_23B9E1AA8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB2FC88();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9E1AD0()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB2FC88();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9E1AF8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB2FCEC();
  *v0 = result;
  return result;
}

uint64_t sub_23B9E1B20()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB2FCEC();
  *v0 = result;
  return result;
}

void *sub_23B9E1B78@<X0>(uint64_t a1@<X8>)
{
  v21 = sub_23BBDA928();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  MEMORY[0x28223BE20](v7 - 8);
  sub_23B9E7268();
  sub_23B9E1548(v26);
  sub_23BB9494C();
  sub_23B9E1548(v27);
  v9 = v28;
  v8 = v29;
  v10 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  if (v8 >= 2)
  {
    if (v9 == v10 && v8 == v11)
    {

      sub_23B979910(v27, &qword_27E1988B0, &qword_23BBE6660);
      v12 = 1;
    }

    else
    {
      v12 = sub_23BBDDA88();

      sub_23B979910(v27, &qword_27E1988B0, &qword_23BBE6660);
    }
  }

  else
  {

    v12 = 0;
  }

  sub_23B9E1548(v30);
  if (v31 == 1)
  {
    v14 = 0;
  }

  else
  {
    v15 = v30[0];
    sub_23B979910(v30, &qword_27E1988B0, &qword_23BBE6660);
    v14 = v15 ^ 1;
  }

  v16 = *(type metadata accessor for SubscriptionStoreButton(0) + 28);
  memcpy(v25, (v1 + v16), 0x4AuLL);
  if (v25[73])
  {
    memcpy(v24, (v1 + v16), sizeof(v24));
    memcpy(v23, (v1 + v16), 0x4AuLL);
    sub_23B9E6BA4(v23, &v22);
  }

  else
  {

    sub_23BBDD5A8();
    v17 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(v25, &qword_27E19A390, &unk_23BC009F0);
    (*(v3 + 8))(v5, v21);
  }

  memcpy(v23, v24, 0x49uLL);
  sub_23B9E7210();
  v18 = type metadata accessor for SubscriptionOptionButtonModel(0);
  *(a1 + v18[5]) = v12 & 1;
  *(a1 + v18[6]) = v14 & 1;
  return memcpy((a1 + v18[7]), v23, 0x49uLL);
}

void *sub_23B9E1F20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  MEMORY[0x28223BE20](v8 - 8);
  sub_23B9E7268();
  sub_23B9E1548(v17);
  sub_23BB9494C();
  v9 = *(type metadata accessor for SubscriptionStoreButton(0) + 28);
  memcpy(__dst, (v1 + v9), 0x4AuLL);
  if ((__dst[9] & 0x100) != 0)
  {
    memcpy(v16, (v1 + v9), sizeof(v16));
    memcpy(v15, (v1 + v9), 0x4AuLL);
    sub_23B9E6BA4(v15, &v14);
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(__dst, &qword_27E19A390, &unk_23BC009F0);
    (*(v4 + 8))(v6, v3);
  }

  memcpy(v15, v16, 0x49uLL);
  sub_23B9E7210();
  v11 = type metadata accessor for SubscriptionPickerSubscribeButtonModel(0);
  return memcpy((a1 + *(v11 + 20)), v15, 0x49uLL);
}

uint64_t sub_23B9E21D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3E8, &unk_23BBE9F00);
  MEMORY[0x28223BE20](v1 - 8);
  v572 = v468 - v2;
  v539 = sub_23BBDCBE8();
  v3 = *(v539 - 8);
  MEMORY[0x28223BE20](v539);
  v525 = v468 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v524 = v468 - v6;
  v7 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v7 - 8);
  v517 = v468 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v9);
  v551 = v468 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v534 = v468 - v12;
  MEMORY[0x28223BE20](v13);
  v546 = v468 - v14;
  MEMORY[0x28223BE20](v15);
  v533 = v468 - v16;
  MEMORY[0x28223BE20](v17);
  v509 = (v468 - v18);
  MEMORY[0x28223BE20](v19);
  v508 = v468 - v20;
  MEMORY[0x28223BE20](v21);
  v507 = (v468 - v22);
  MEMORY[0x28223BE20](v23);
  v506 = v468 - v24;
  v565 = sub_23BBDCD08();
  v25 = *(v565 - 8);
  MEMORY[0x28223BE20](v565);
  v516 = v468 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v515 = v468 - v28;
  MEMORY[0x28223BE20](v29);
  v492 = v468 - v30;
  MEMORY[0x28223BE20](v31);
  v491 = v468 - v32;
  MEMORY[0x28223BE20](v33);
  v528 = v468 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  MEMORY[0x28223BE20](v35 - 8);
  v532 = v468 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v497 = v468 - v38;
  MEMORY[0x28223BE20](v39);
  v505 = v468 - v40;
  MEMORY[0x28223BE20](v41);
  v550 = v468 - v42;
  MEMORY[0x28223BE20](v43);
  v490 = v468 - v44;
  MEMORY[0x28223BE20](v45);
  v560 = v468 - v46;
  MEMORY[0x28223BE20](v47);
  v504 = v468 - v48;
  MEMORY[0x28223BE20](v49);
  v478 = v468 - v50;
  MEMORY[0x28223BE20](v51);
  v484 = v468 - v52;
  MEMORY[0x28223BE20](v53);
  v526 = v468 - v54;
  MEMORY[0x28223BE20](v55);
  v477 = v468 - v56;
  MEMORY[0x28223BE20](v57);
  v483 = v468 - v58;
  v573 = sub_23BBDCC88();
  v568 = *(v573 - 8);
  MEMORY[0x28223BE20](v573);
  v489 = v468 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v503 = v468 - v61;
  MEMORY[0x28223BE20](v62);
  v527 = v468 - v63;
  MEMORY[0x28223BE20](v64);
  v502 = v468 - v65;
  MEMORY[0x28223BE20](v66);
  v538 = v468 - v67;
  MEMORY[0x28223BE20](v68);
  v476 = v468 - v69;
  MEMORY[0x28223BE20](v70);
  v482 = v468 - v71;
  MEMORY[0x28223BE20](v72);
  v475 = v468 - v73;
  MEMORY[0x28223BE20](v74);
  v481 = v468 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F0, &unk_23BBE9F10);
  MEMORY[0x28223BE20](v76 - 8);
  v514 = (v468 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v78);
  v531 = (v468 - v79);
  MEMORY[0x28223BE20](v80);
  v513 = (v468 - v81);
  MEMORY[0x28223BE20](v82);
  v530 = (v468 - v83);
  MEMORY[0x28223BE20](v84);
  v488 = (v468 - v85);
  MEMORY[0x28223BE20](v86);
  v501 = (v468 - v87);
  MEMORY[0x28223BE20](v88);
  v487 = (v468 - v89);
  MEMORY[0x28223BE20](v90);
  v500 = (v468 - v91);
  v566 = _s22LocalizedPriceResourceVMa(0);
  MEMORY[0x28223BE20](v566);
  v486 = v468 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v499 = v468 - v94;
  MEMORY[0x28223BE20](v95);
  v485 = v468 - v96;
  MEMORY[0x28223BE20](v97);
  v498 = v468 - v98;
  MEMORY[0x28223BE20](v99);
  v474 = v468 - v100;
  MEMORY[0x28223BE20](v101);
  v480 = v468 - v102;
  MEMORY[0x28223BE20](v103);
  v473 = v468 - v104;
  MEMORY[0x28223BE20](v105);
  v479 = v468 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v107 - 8);
  v519 = v468 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v536 = v468 - v110;
  MEMORY[0x28223BE20](v111);
  v518 = v468 - v112;
  MEMORY[0x28223BE20](v113);
  v535 = v468 - v114;
  MEMORY[0x28223BE20](v115);
  v545 = v468 - v116;
  MEMORY[0x28223BE20](v117);
  v544 = v468 - v118;
  MEMORY[0x28223BE20](v119);
  v537 = v468 - v120;
  MEMORY[0x28223BE20](v121);
  v494 = v468 - v122;
  MEMORY[0x28223BE20](v123);
  v512 = v468 - v124;
  MEMORY[0x28223BE20](v125);
  v493 = v468 - v126;
  MEMORY[0x28223BE20](v127);
  v511 = v468 - v128;
  MEMORY[0x28223BE20](v129);
  v523 = v468 - v130;
  MEMORY[0x28223BE20](v131);
  v522 = v468 - v132;
  v558 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v558);
  v561 = (v468 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  v559 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v571 = v468 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v136);
  v570 = v468 - v137;
  v557 = type metadata accessor for SubscriptionPickerSubscribeButtonModel(0);
  MEMORY[0x28223BE20](v557);
  v574 = v468 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199798, qword_23BC04110);
  v555 = *(v556 - 8);
  MEMORY[0x28223BE20](v556);
  v140 = v468 - v139;
  v141 = type metadata accessor for SubscriptionStoreButton(0);
  MEMORY[0x28223BE20](v141);
  v143 = v468 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_23BBDA928();
  MEMORY[0x28223BE20](v144);
  v148 = v468 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v563 = v141;
  v149 = *(v141 + 32);
  v569 = v0;
  v150 = v0 + v149;
  v151 = *v150;
  LODWORD(v150) = *(v150 + 8);
  v564 = v9;
  v567 = v134;
  v496 = v143;
  v542 = v148;
  v543 = v152;
  v552 = v146;
  if (v150 == 1)
  {
    if ((v151 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v153 = v25;
    v154 = v3;
    v155 = v145;
    v156 = v146;

    sub_23BBDD5A8();
    v157 = sub_23BBDB338();
    v143 = v496;
    sub_23BBD9978();

    v134 = v567;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v151, 0);
    v158 = v155;
    v3 = v154;
    v25 = v153;
    (*(v156 + 8))(v148, v158);
    result = MEMORY[0x277D84F90];
    if (LOBYTE(__dst[0]) != 1)
    {
      return result;
    }
  }

  v160 = sub_23B9E1948();
  sub_23B9E7268();
  v161 = *(v160 + 16);
  if (v161)
  {
    v581 = MEMORY[0x277D84F90];
    sub_23BA92C28(0, v161, 0);
    v569 = v581;
    v553 = v160 + ((*(v559 + 80) + 32) & ~*(v559 + 80));
    memcpy(__dst, &v143[*(v563 + 28)], 0x4AuLL);
    v162 = 0;
    v540 = (v552 + 8);
    v549 = (v568 + 32);
    v547 = (v25 + 32);
    v520 = (v25 + 8);
    v521 = (v25 + 16);
    v548 = (v568 + 8);
    v510 = (v3 + 8);
    v495 = "ACTION_SUBSCRIBE";
    v468[2] = "k_sha1Hash";
    v468[3] = "LABEL_CROSSGRADE_DOWNGRADE_";
    v468[1] = "ACTION_CROSSGRADE_DOWNGRADE";
    v552 = v161 - 1;
    v163 = v573;
    v562 = v140;
    v554 = v160;
    while (2)
    {
      if (v162 >= *(v160 + 16))
      {
        __break(1u);
        JUMPOUT(0x23B9E5688);
      }

      sub_23B9E7268();
      sub_23B9E7268();
      if ((__dst[9] & 0x100) != 0)
      {
        memcpy(__src, __dst, 0x49uLL);
        memcpy(v576, __dst, 0x4AuLL);
        sub_23B9E6BA4(v576, v575);
      }

      else
      {

        sub_23BBDD5A8();
        v164 = sub_23BBDB338();
        sub_23BBD9978();

        v165 = v542;
        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B979910(__dst, &qword_27E19A390, &unk_23BC009F0);
        (*v540)(v165, v543);
      }

      v166 = v574;
      memcpy(v576, __src, 0x49uLL);
      sub_23B9E7210();
      v167 = &v166[*(v557 + 20)];
      memcpy(v167, v576, 0x49uLL);
      sub_23B9E71B8(v570, type metadata accessor for SubscriptionStoreCopyWriter);
      v168 = *(v167 + 16);
      v568 = v167;
      switch(v168)
      {
        case 0:
        case 2:
          v169 = v537;
          sub_23B979510();
          if (__swift_getEnumTagSinglePayload(v169, 1, v163) == 1)
          {
            sub_23B979910(v169, &unk_27E19FEF0, &unk_23BBE3E40);
            v170 = v561;
LABEL_14:
            v222 = sub_23BBDAA48();
            v224 = v223;
            v226 = v225;
            v228 = v227;
LABEL_37:
            *v170 = v222;
            v170[1] = v224;
            *(v170 + 16) = v226 & 1;
            v170[3] = v228;
            v195 = v560;
            goto LABEL_38;
          }

          (*v549)(v538, v169, v163);
          v177 = v524;
          sub_23BBDCBF8();
          v178 = v525;
          sub_23BBDCBD8();
          sub_23B9E7160();
          sub_23BBDD218();
          sub_23BBDD218();
          if (v575[0] == v577 && v575[1] == v578)
          {

            v207 = *v510;
            v208 = v539;
            (*v510)(v178, v539);
            v207(v177, v208);
            v170 = v561;
          }

          else
          {
            v180 = sub_23BBDDA88();

            v181 = *v510;
            v182 = v539;
            (*v510)(v178, v539);
            v181(v177, v182);
            v170 = v561;
            if ((v180 & 1) == 0)
            {
              (*v548)(v538, v573);
              goto LABEL_14;
            }
          }

          v222 = sub_23BBDAA48();
          v224 = v209;
          v226 = v210;
          v228 = v211;
          (*v548)(v538, v573);
          goto LABEL_37;
        case 1:
          v171 = *&v166[*(v134 + 36)];
          v172 = v561;
          if ((v171 & 8) != 0 || (v171 & 6) != 0)
          {
            sub_23BBDAA28();
            sub_23BBDAA18();
            sub_23BBDAA08();
            sub_23BBDAA18();
            v196 = sub_23BBDAA58();
          }

          else
          {

            v196 = sub_23BBDAA48();
          }

          *v172 = v196;
          v172[1] = v197;
          *(v172 + 16) = v198 & 1;
          v172[3] = v199;
          v195 = v560;
LABEL_38:
          v194 = v572;
          goto LABEL_71;
        case 3:
          v563 = v162;
          v541 = *(v134 + 40);
          v173 = v522;
          sub_23B979510();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v173, 1, v163);
          sub_23B979910(v173, &unk_27E19FEF0, &unk_23BBE3E40);
          v175 = v526;
          if (EnumTagSinglePayload == 1)
          {
            goto LABEL_19;
          }

          v200 = v511;
          sub_23B979510();
          v201 = 1;
          if (__swift_getEnumTagSinglePayload(v200, 1, v163) != 1)
          {
            v202 = v481;
            (*v549)(v481, v511, v163);
            v203 = v574;
            v204 = v163;
            v205 = v483;
            sub_23B979510();
            v206 = v565;
            if (__swift_getEnumTagSinglePayload(v205, 1, v565) == 1)
            {
              (*v548)(v202, v204);
              v201 = 1;
              v163 = v204;
            }

            else
            {
              v229 = v528;
              (*v547)(v528, v205, v206);
              v230 = *(v203 + 7);
              v231 = *(v203 + 8);
              v529 = v230;
              v232 = v566;
              v233 = v500;
              (*v521)(v500 + *(v566 + 20), v229, v206);
              v234 = (v233 + *(v232 + 24));
              v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
              v236 = *(v235 + 64);
              v471 = *(v235 + 48);
              v472 = v236;

              v237 = v206;
              v238 = sub_23BBDCC18();
              v469 = v239;
              v470 = v238;
              v240 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v241 = sub_23BBDCC08();
              (*v520)(v229, v237);
              v242 = v202;
              v243 = v573;
              (*v548)(v242, v573);
              v244 = v469;
              *v234 = v470;
              v234[1] = v244;
              *(v234 + *(v240 + 28)) = v241;
              *(v234 + v471) = 1;
              *(v234 + v472) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v201 = 0;
              *v233 = v529;
              v233[1] = v231;
              v163 = v243;
            }
          }

          v245 = v201;
          v246 = v500;
          v247 = v566;
          __swift_storeEnumTagSinglePayload(v500, v245, 1, v566);
          if (__swift_getEnumTagSinglePayload(v246, 1, v247) != 1)
          {
            goto LABEL_49;
          }

          sub_23B979910(v246, &qword_27E19A3F0, &unk_23BBE9F10);
          v248 = v493;
          sub_23B979510();
          v249 = 1;
          if (__swift_getEnumTagSinglePayload(v248, 1, v163) != 1)
          {
            v250 = v475;
            (*v549)(v475, v493, v163);
            v251 = v574;
            v252 = v163;
            v253 = v477;
            sub_23B979510();
            v254 = v565;
            if (__swift_getEnumTagSinglePayload(v253, 1, v565) == 1)
            {
              (*v548)(v250, v252);
              v249 = 1;
            }

            else
            {
              v255 = v528;
              (*v547)(v528, v253, v254);
              v256 = *(v251 + 7);
              v257 = *(v251 + 8);
              v529 = v256;
              v258 = v566;
              v259 = v487;
              (*v521)(v487 + *(v566 + 20), v255, v254);
              v260 = (v259 + *(v258 + 24));
              v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
              v262 = *(v261 + 48);
              v471 = *(v261 + 64);
              v472 = v262;

              v263 = v254;
              v264 = sub_23BBDCC18();
              v469 = v265;
              v470 = v264;
              v266 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v267 = sub_23BBDCC08();
              (*v520)(v255, v263);
              (*v548)(v250, v252);
              v268 = v469;
              *v260 = v470;
              v260[1] = v268;
              *(v260 + *(v266 + 28)) = v267;
              v269 = v471;
              *(v260 + v472) = 0;
              *(v260 + v269) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v249 = 0;
              *v259 = v529;
              v259[1] = v257;
            }
          }

          v270 = v249;
          v271 = v487;
          v272 = v566;
          __swift_storeEnumTagSinglePayload(v487, v270, 1, v566);
          if (__swift_getEnumTagSinglePayload(v271, 1, v272) == 1)
          {
            sub_23B979910(v271, &qword_27E19A3F0, &unk_23BBE9F10);
            v166 = v574;
            v175 = v526;
LABEL_19:
            sub_23B979510();
            v176 = v565;
            if (__swift_getEnumTagSinglePayload(v175, 1, v565) == 1)
            {
              sub_23B979910(v175, &qword_27E198848, &qword_23BBFA090);
              sub_23BB96960(v507);
            }

            else
            {
              v212 = *v547;
              v213 = v491;
              (*v547)(v491, v175, v176);
              v214 = v166;
              v215 = *(v166 + 7);
              v216 = v176;
              v217 = *(v214 + 8);
              v218 = v566;
              v219 = v507;
              v212(v507 + *(v566 + 20), v213, v216);
              v220 = v219 + *(v218 + 24);
              *v220 = 257;
              v220[2] = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              *v219 = v215;
              v219[1] = v217;
              swift_storeEnumTagMultiPayload();
            }

            v221 = v561;
            sub_23B9E7210();
            sub_23B9E7210();
          }

          else
          {
LABEL_49:
            sub_23B9E7210();
            v221 = v561;
            sub_23B9E7210();
            swift_storeEnumTagMultiPayload();
          }

          v529 = *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
          v273 = v574;
          v274 = v523;
          sub_23B979510();
          v275 = __swift_getEnumTagSinglePayload(v274, 1, v573);
          sub_23B979910(v274, &unk_27E19FEF0, &unk_23BBE3E40);
          if (v275 == 1)
          {
            goto LABEL_51;
          }

          v278 = v512;
          sub_23B979510();
          v279 = 1;
          v280 = __swift_getEnumTagSinglePayload(v278, 1, v573);
          v195 = v560;
          if (v280 != 1)
          {
            v281 = v482;
            v282 = v573;
            (*v549)(v482, v512, v573);
            v283 = v574;
            v284 = v484;
            sub_23B979510();
            v285 = v565;
            if (__swift_getEnumTagSinglePayload(v284, 1, v565) == 1)
            {
              (*v548)(v281, v282);
              v279 = 1;
            }

            else
            {
              v297 = v528;
              (*v547)(v528, v284, v285);
              v298 = *(v283 + 7);
              v299 = *(v283 + 8);
              v472 = v298;
              v300 = v566;
              v301 = v501;
              (*v521)(v501 + *(v566 + 20), v297, v285);
              v302 = (v301 + *(v300 + 24));
              v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
              v304 = *(v303 + 64);
              v470 = *(v303 + 48);
              v471 = v304;

              v305 = v285;
              v469 = sub_23BBDCC18();
              v468[0] = v306;
              v307 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v308 = sub_23BBDCC08();
              (*v520)(v297, v305);
              (*v548)(v281, v282);
              v309 = v470;
              v310 = v468[0];
              *v302 = v469;
              v302[1] = v310;
              v195 = v560;
              *(v302 + *(v307 + 28)) = v308;
              *(v302 + v309) = 1;
              *(v302 + v471) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v279 = 0;
              *v301 = v472;
              v301[1] = v299;
            }

            v221 = v561;
          }

          v311 = v279;
          v312 = v501;
          v313 = v566;
          __swift_storeEnumTagSinglePayload(v501, v311, 1, v566);
          if (__swift_getEnumTagSinglePayload(v312, 1, v313) != 1)
          {
            goto LABEL_69;
          }

          sub_23B979910(v312, &qword_27E19A3F0, &unk_23BBE9F10);
          v314 = v494;
          sub_23B979510();
          v315 = 1;
          if (__swift_getEnumTagSinglePayload(v314, 1, v573) != 1)
          {
            v316 = v476;
            v317 = v573;
            (*v549)(v476, v494, v573);
            v318 = v574;
            v319 = v478;
            sub_23B979510();
            v320 = v565;
            if (__swift_getEnumTagSinglePayload(v319, 1, v565) == 1)
            {
              (*v548)(v316, v317);
              v315 = 1;
            }

            else
            {
              v321 = v528;
              (*v547)(v528, v319, v320);
              v322 = *(v318 + 7);
              v323 = *(v318 + 8);
              v541 = v322;
              v324 = v566;
              v325 = v488;
              (*v521)(v488 + *(v566 + 20), v321, v320);
              v326 = (v325 + *(v324 + 24));
              v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
              v328 = *(v327 + 48);
              v471 = *(v327 + 64);
              v472 = v328;

              v329 = v320;
              v330 = sub_23BBDCC18();
              v469 = v331;
              v470 = v330;
              v332 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v333 = sub_23BBDCC08();
              (*v520)(v528, v329);
              (*v548)(v316, v317);
              v334 = v469;
              *v326 = v470;
              v326[1] = v334;
              v195 = v560;
              *(v326 + *(v332 + 28)) = v333;
              v335 = v471;
              *(v326 + v472) = 0;
              *(v326 + v335) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v315 = 0;
              *v325 = v541;
              v325[1] = v323;
            }

            v221 = v561;
          }

          v336 = v315;
          v337 = v488;
          v338 = v566;
          __swift_storeEnumTagSinglePayload(v488, v336, 1, v566);
          if (__swift_getEnumTagSinglePayload(v337, 1, v338) == 1)
          {
            sub_23B979910(v337, &qword_27E19A3F0, &unk_23BBE9F10);
            v273 = v574;
LABEL_51:
            v276 = v504;
            sub_23B979510();
            v277 = v565;
            if (__swift_getEnumTagSinglePayload(v276, 1, v565) == 1)
            {
              sub_23B979910(v276, &qword_27E198848, &qword_23BBFA090);
              sub_23BB96960(v509);
            }

            else
            {
              v286 = *v547;
              v287 = v492;
              (*v547)(v492, v276, v277);
              v289 = *(v273 + 7);
              v288 = *(v273 + 8);
              v290 = v277;
              v291 = v566;
              v292 = v509;
              v293 = v287;
              v221 = v561;
              v286(v509 + *(v566 + 20), v293, v290);
              v294 = v292 + *(v291 + 24);
              *v294 = 257;
              v294[2] = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              *v292 = v289;
              v292[1] = v288;
              swift_storeEnumTagMultiPayload();
            }

            v194 = v572;
            v162 = v563;
            sub_23B9E7210();
            v295 = v529;
            sub_23B9E7210();
            v296 = v564;
            v195 = v560;
          }

          else
          {
LABEL_69:
            sub_23B9E7210();
            v295 = v529;
            sub_23B9E7210();
            v339 = v564;
            swift_storeEnumTagMultiPayload();
            v194 = v572;
            v296 = v339;
            v162 = v563;
          }

          __swift_storeEnumTagSinglePayload(v221 + v295, 0, 1, v296);
LABEL_71:
          swift_storeEnumTagMultiPayload();
          sub_23B9E7210();
          if (*(v568 + 16) == 3)
          {
            v340 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
            __swift_storeEnumTagSinglePayload(v194, 1, 1, v340);
            v163 = v573;
            v134 = v567;
            v341 = v574;
            goto LABEL_112;
          }

          v563 = v162;
          v134 = v567;
          v342 = v574;
          v343 = v544;
          sub_23B979510();
          v344 = __swift_getEnumTagSinglePayload(v343, 1, v573);
          sub_23B979910(v343, &unk_27E19FEF0, &unk_23BBE3E40);
          v345 = v546;
          v346 = v550;
          if (v344 == 1)
          {
            goto LABEL_74;
          }

          v349 = v535;
          sub_23B979510();
          v350 = 1;
          if (__swift_getEnumTagSinglePayload(v349, 1, v573) != 1)
          {
            v351 = v502;
            v352 = v573;
            (*v549)(v502, v535, v573);
            v353 = v574;
            sub_23B979510();
            v354 = v565;
            if (__swift_getEnumTagSinglePayload(v195, 1, v565) == 1)
            {
              (*v548)(v351, v352);
              v350 = 1;
              v346 = v550;
            }

            else
            {
              v361 = v528;
              (*v547)(v528, v195, v354);
              v362 = *(v353 + 8);
              v568 = *(v353 + 7);
              v541 = v362;
              v363 = v566;
              v364 = v530;
              (*v521)(v530 + *(v566 + 20), v361, v354);
              v365 = (v364 + *(v363 + 24));
              v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
              v529 = *(v366 + 48);
              v472 = *(v366 + 64);

              v367 = v354;
              v368 = sub_23BBDCC18();
              v470 = v369;
              v471 = v368;
              v370 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v371 = sub_23BBDCC08();
              (*v520)(v361, v367);
              (*v548)(v351, v352);
              v372 = v470;
              *v365 = v471;
              v365[1] = v372;
              v373 = *(v370 + 28);
              v134 = v567;
              *(v365 + v373) = v371;
              *(v365 + v529) = 0;
              *(v365 + v472) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              v346 = v550;
              swift_storeEnumTagMultiPayload();
              v350 = 0;
              v374 = v541;
              *v364 = v568;
              v364[1] = v374;
              v345 = v546;
            }
          }

          v375 = v350;
          v376 = v530;
          v377 = v566;
          __swift_storeEnumTagSinglePayload(v530, v375, 1, v566);
          if (__swift_getEnumTagSinglePayload(v376, 1, v377) != 1)
          {
            goto LABEL_90;
          }

          sub_23B979910(v376, &qword_27E19A3F0, &unk_23BBE9F10);
          v378 = v518;
          sub_23B979510();
          v379 = 1;
          v380 = __swift_getEnumTagSinglePayload(v378, 1, v573);
          v381 = v527;
          if (v380 != 1)
          {
            (*v549)(v527, v518, v573);
            v382 = v574;
            v383 = v490;
            sub_23B979510();
            v384 = v565;
            if (__swift_getEnumTagSinglePayload(v383, 1, v565) == 1)
            {
              (*v548)(v381, v573);
              v379 = 1;
            }

            else
            {
              v385 = v528;
              (*v547)(v528, v383, v384);
              v386 = *(v382 + 8);
              v568 = *(v382 + 7);
              v387 = v566;
              v388 = v513;
              (*v521)(v513 + *(v566 + 20), v385, v384);
              v389 = (v388 + *(v387 + 24));
              v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
              v541 = *(v390 + 48);
              v529 = *(v390 + 64);

              v391 = v384;
              v472 = sub_23BBDCC18();
              v393 = v392;
              v394 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v395 = sub_23BBDCC08();
              (*v520)(v385, v391);
              (*v548)(v527, v573);
              *v389 = v472;
              v389[1] = v393;
              v396 = *(v394 + 28);
              v134 = v567;
              *(v389 + v396) = v395;
              *(v389 + v541) = 0;
              *(v389 + v529) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              v346 = v550;
              swift_storeEnumTagMultiPayload();
              v379 = 0;
              *v388 = v568;
              v388[1] = v386;
              v345 = v546;
            }
          }

          v397 = v379;
          v398 = v513;
          v399 = v566;
          __swift_storeEnumTagSinglePayload(v513, v397, 1, v566);
          if (__swift_getEnumTagSinglePayload(v398, 1, v399) == 1)
          {
            sub_23B979910(v398, &qword_27E19A3F0, &unk_23BBE9F10);
            v342 = v574;
LABEL_74:
            sub_23B979510();
            v347 = v565;
            v348 = v342;
            if (__swift_getEnumTagSinglePayload(v346, 1, v565) == 1)
            {
              sub_23B979910(v346, &qword_27E198848, &qword_23BBFA090);
              sub_23BB96960(v345);
            }

            else
            {
              v355 = *v547;
              v356 = v515;
              (*v547)(v515, v346, v347);
              v358 = *(v348 + 7);
              v357 = *(v348 + 8);
              v359 = v566;
              v355(&v345[*(v566 + 20)], v356, v347);
              v360 = *(v359 + 24);
              v134 = v567;
              v345[v360] = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              *v345 = v358;
              *(v345 + 1) = v357;
              swift_storeEnumTagMultiPayload();
            }

            v163 = v573;
            sub_23B9E7210();
            sub_23B9E7210();
            v341 = v574;
          }

          else
          {
LABEL_90:
            sub_23B9E7210();
            sub_23B9E7210();
            swift_storeEnumTagMultiPayload();
            v163 = v573;
            v341 = v574;
          }

          v568 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
          v400 = *(v568 + 20);
          v401 = v545;
          sub_23B979510();
          v402 = __swift_getEnumTagSinglePayload(v401, 1, v163);
          sub_23B979910(v401, &unk_27E19FEF0, &unk_23BBE3E40);
          if (v402 == 1)
          {
            goto LABEL_92;
          }

          v406 = v536;
          sub_23B979510();
          v407 = 1;
          if (__swift_getEnumTagSinglePayload(v406, 1, v163) != 1)
          {
            v408 = v503;
            (*v549)(v503, v536, v163);
            v409 = v163;
            v410 = v505;
            sub_23B979510();
            v411 = v565;
            if (__swift_getEnumTagSinglePayload(v410, 1, v565) == 1)
            {
              (*v548)(v408, v409);
              v407 = 1;
              v163 = v409;
            }

            else
            {
              v422 = v528;
              (*v547)(v528, v410, v411);
              v541 = *(v574 + 7);
              v529 = *(v574 + 8);
              v423 = v566;
              v424 = v531;
              (*v521)(v531 + *(v566 + 20), v422, v411);
              v425 = (v424 + *(v423 + 24));
              v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
              v427 = *(v426 + 64);
              v471 = *(v426 + 48);
              v472 = v427;

              v428 = sub_23BBDCC18();
              v469 = v429;
              v470 = v428;
              v430 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v431 = sub_23BBDCC08();
              v432 = v422;
              v341 = v574;
              (*v520)(v432, v565);
              v433 = v408;
              v434 = v573;
              (*v548)(v433, v573);
              v435 = v469;
              *v425 = v470;
              v425[1] = v435;
              *(v425 + *(v430 + 28)) = v431;
              *(v425 + v471) = 1;
              *(v425 + v472) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v407 = 0;
              v436 = v529;
              *v424 = v541;
              v424[1] = v436;
              v163 = v434;
            }

            v134 = v567;
          }

          v437 = v407;
          v438 = v531;
          v439 = v566;
          __swift_storeEnumTagSinglePayload(v531, v437, 1, v566);
          if (__swift_getEnumTagSinglePayload(v438, 1, v439) != 1)
          {
            goto LABEL_110;
          }

          sub_23B979910(v438, &qword_27E19A3F0, &unk_23BBE9F10);
          v440 = v519;
          sub_23B979510();
          v441 = 1;
          if (__swift_getEnumTagSinglePayload(v440, 1, v163) != 1)
          {
            v442 = v341;
            v443 = v489;
            (*v549)(v489, v519, v163);
            v444 = v497;
            sub_23B979510();
            v445 = v444;
            v446 = v565;
            if (__swift_getEnumTagSinglePayload(v445, 1, v565) == 1)
            {
              (*v548)(v443, v163);
              v441 = 1;
            }

            else
            {
              v447 = v528;
              (*v547)(v528, v497, v446);
              v448 = *(v442 + 64);
              v541 = *(v442 + 56);
              v529 = v448;
              v449 = v566;
              v450 = v514;
              (*v521)(v514 + *(v566 + 20), v447, v446);
              v451 = (v450 + *(v449 + 24));
              v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
              v453 = *(v452 + 48);
              v471 = *(v452 + 64);
              v472 = v453;

              v454 = sub_23BBDCC18();
              v469 = v455;
              v470 = v454;
              v456 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v457 = sub_23BBDCC08();
              v458 = v447;
              v163 = v573;
              (*v520)(v458, v565);
              (*v548)(v443, v163);
              v459 = v469;
              *v451 = v470;
              v451[1] = v459;
              *(v451 + *(v456 + 28)) = v457;
              v460 = v471;
              *(v451 + v472) = 0;
              *(v451 + v460) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v441 = 0;
              v461 = v529;
              *v450 = v541;
              v450[1] = v461;
              v134 = v567;
            }

            v341 = v442;
          }

          v462 = v514;
          v463 = v441;
          v464 = v566;
          __swift_storeEnumTagSinglePayload(v514, v463, 1, v566);
          if (__swift_getEnumTagSinglePayload(v462, 1, v464) == 1)
          {
            sub_23B979910(v462, &qword_27E19A3F0, &unk_23BBE9F10);
LABEL_92:
            v403 = v341;
            v404 = v532;
            sub_23B979510();
            v405 = v565;
            if (__swift_getEnumTagSinglePayload(v404, 1, v565) == 1)
            {
              sub_23B979910(v404, &qword_27E198848, &qword_23BBFA090);
              sub_23BB96960(v551);
            }

            else
            {
              v412 = *v547;
              v413 = v516;
              (*v547)(v516, v404, v405);
              v414 = v405;
              v416 = *(v403 + 56);
              v415 = *(v403 + 64);
              v417 = v566;
              v412(&v551[*(v566 + 20)], v413, v414);
              v418 = *(v417 + 24);
              v134 = v567;
              v551[v418] = 1;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              v419 = v551;
              swift_storeEnumTagMultiPayload();
              *v419 = v416;
              *(v419 + 1) = v415;
              swift_storeEnumTagMultiPayload();
            }

            v341 = v403;
            sub_23B9E7210();
            v420 = v572;
            sub_23B9E7210();
            v162 = v563;
            v421 = v564;
          }

          else
          {
LABEL_110:
            sub_23B9E7210();
            v420 = v572;
            sub_23B9E7210();
            v421 = v564;
            swift_storeEnumTagMultiPayload();
            v162 = v563;
          }

          __swift_storeEnumTagSinglePayload(v420 + v400, 0, 1, v421);
          __swift_storeEnumTagSinglePayload(v420, 0, 1, v568);
LABEL_112:
          sub_23B979688();
          sub_23B9E71B8(v341, type metadata accessor for SubscriptionPickerSubscribeButtonModel);
          v465 = v569;
          v581 = v569;
          v467 = *(v569 + 16);
          v466 = *(v569 + 24);
          if (v467 >= v466 >> 1)
          {
            sub_23BA92C28(v466 > 1, v467 + 1, 1);
            v465 = v581;
          }

          *(v465 + 16) = v467 + 1;
          v569 = v465;
          sub_23B979688();
          if (v552 == v162)
          {

            sub_23B9E71B8(v496, type metadata accessor for SubscriptionStoreButton);
            return v569;
          }

          ++v162;
          v160 = v554;
          continue;
        default:
          v183 = v162;
          v184 = *(v167 + 24);
          v185 = v167;
          v186 = *(v167 + 64);
          v188 = v185[6];
          v187 = v185[7];
          v189 = v185[4];
          v190 = v185[5];
          v191 = v185[1];

          sub_23B9E711C(v190, v188, v187, v186);
          sub_23B9E67A8(v190, v188, v187, v186);
          v192 = v561;
          *v561 = v191;
          v192[1] = v168;
          v193 = v192;
          LOBYTE(v192) = v184 & 1;
          v162 = v183;
          *(v193 + 16) = v192;
          v193[3] = v189;
          v194 = v572;
          v195 = v560;
          goto LABEL_71;
      }
    }
  }

  sub_23B9E71B8(v143, type metadata accessor for SubscriptionStoreButton);
  return MEMORY[0x277D84F90];
}