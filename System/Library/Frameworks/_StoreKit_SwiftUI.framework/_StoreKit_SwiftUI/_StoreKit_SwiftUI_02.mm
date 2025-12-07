unint64_t sub_23B9A1AA8(double a1)
{
  result = qword_27E198BD8;
  if (!qword_27E198BD8)
  {
    type metadata accessor for StoreKitProminentButtonStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BD8);
  }

  return result;
}

uint64_t sub_23B9A1B00(uint64_t a1, double a2)
{
  v3 = type metadata accessor for StoreKitProminentButtonStyle(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StoreProminentButtonStyle(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23B9A1C14);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B9A1C4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BC8, &qword_23BBE6710);
  type metadata accessor for StoreKitProminentButtonStyle(255);
  sub_23B9A1A44();
  sub_23B9A1AA8(v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for SubscriptionStoreUnavailableBackgroundModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStoreUnavailableBackgroundModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23B9A1E5CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23B9A1EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  sub_23B9A1F14(a1, a2, a3 & 1, a4);
  v5 = sub_23BBDA388();
  v6 = sub_23BBDB398();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C18, &qword_23BBE69F0);
  v8 = a4 + *(result + 36);
  *v8 = v5;
  v8[8] = v6;
  return result;
}

uint64_t sub_23B9A1F14@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = sub_23BBDA928();
  v21[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C20, &qword_23BBE69F8);
  MEMORY[0x28223BE20](v11);
  v13 = (v21 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C28, &qword_23BBE6A00);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  if (a1)
  {
    sub_23BBDC288();
    sub_23B9A27B8(v16, v13);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C38, &unk_23BBE6A10);
    sub_23B9A2648();
    sub_23B9A2700();
    sub_23BBDACD8();
    sub_23B9A2828(v16);
  }

  else
  {

    if ((a3 & 1) == 0)
    {
      sub_23BBDD5A8();
      v17 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j__swift_release(a2);
      (*(v21[0] + 8))(v10, v8);
      a2 = v21[1];
    }

    if (!a2)
    {
      v18 = 1;
      goto LABEL_8;
    }

    *v13 = a2;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C38, &unk_23BBE6A10);
    sub_23B9A2648();
    sub_23B9A2700();
    sub_23BBDACD8();
  }

  v18 = 0;
LABEL_8:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C30, &qword_23BBE6A08);
  return __swift_storeEnumTagSinglePayload(a4, v18, 1, v19);
}

uint64_t sub_23B9A2228(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDA358();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v14 = a1;
  MEMORY[0x23EEB43C0](&v14, a2, &type metadata for SubscriptionStoreUnavailableBackgroundModifier, a3, v8);
  v11 = sub_23B9A243C();
  v13[1] = a3;
  v13[2] = v11;
  swift_getWitnessTable();
  sub_23BB06090();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23B9A236C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_23BBDC318();
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BE8, &qword_23BBE68F0);
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BF0, &qword_23BBE68F8);
  v13 = a3 + *(result + 36);
  *v13 = a2;
  *(v13 + 8) = KeyPath;
  *(v13 + 16) = 0;
  *(v13 + 24) = v7;
  *(v13 + 32) = v9;
  return result;
}

unint64_t sub_23B9A243C()
{
  result = qword_27E198BE0;
  if (!qword_27E198BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BE0);
  }

  return result;
}

uint64_t sub_23B9A24A4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B9A24F0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_23B9A2548()
{
  result = qword_27E198BF8;
  if (!qword_27E198BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BF0, &qword_23BBE68F8);
    sub_23B97B518(&qword_27E198C00, &qword_27E198BE8, &qword_23BBE68F0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198C08, &qword_27E198C10, qword_23BBE6998, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BF8);
  }

  return result;
}

unint64_t sub_23B9A2648()
{
  result = qword_27E198C40;
  if (!qword_27E198C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C28, &qword_23BBE6A00);
    sub_23B97AD34();
    sub_23B97B518(&qword_27E198C48, &qword_27E198C50, &qword_23BBF7050, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C40);
  }

  return result;
}

unint64_t sub_23B9A2700()
{
  result = qword_27E198C58;
  if (!qword_27E198C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C38, &unk_23BBE6A10);
    sub_23B97AD34();
    sub_23B97B518(&qword_27E198C60, &qword_27E198C68, &qword_23BBE6A20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C58);
  }

  return result;
}

uint64_t sub_23B9A27B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C28, &qword_23BBE6A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9A2828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C28, &qword_23BBE6A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B9A2894()
{
  result = qword_27E198C70;
  if (!qword_27E198C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C18, &qword_23BBE69F0);
    sub_23B9A2920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C70);
  }

  return result;
}

unint64_t sub_23B9A2920()
{
  result = qword_27E198C78;
  if (!qword_27E198C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C80, &qword_23BBE6A28);
    sub_23B9A29A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C78);
  }

  return result;
}

unint64_t sub_23B9A29A4()
{
  result = qword_27E198C88;
  if (!qword_27E198C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C90, qword_23BBE6A30);
    sub_23B9A2A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C88);
  }

  return result;
}

unint64_t sub_23B9A2A28()
{
  result = qword_27E198C98[0];
  if (!qword_27E198C98[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C30, &qword_23BBE6A08);
    sub_23B9A2648();
    sub_23B9A2700();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E198C98);
  }

  return result;
}

void sub_23B9A2B40(uint64_t a1)
{
  sub_23B9A3838(319, &qword_27E198D20, type metadata accessor for ProductViewConfiguration, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9A3838(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23B9A3838(319, &qword_27E198D30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23B9A389C(319, &qword_27E197E40, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_23B9A389C(319, &qword_27E198D38, &type metadata for InterfaceIdiom);
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

uint64_t sub_23B9A2CD8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v52 = v14;
  v45 = sub_23BBD96B8();
  v15 = *(v45 - 8);
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

  v46 = v19;
  v20 = v19 - 1;
  v47 = *(a3 + 16);
  v21 = *(v47 - 8);
  v50 = *(v21 + 84);
  v51 = v20;
  if (v50 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = *(v21 + 84);
  }

  v48 = *(sub_23BBDA438() - 8);
  v23 = *(v48 + 64);
  if (v23 <= 8)
  {
    v23 = 8;
  }

  v49 = v23;
  v24 = *(sub_23BBDA308() - 8);
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

  v29 = v52 + v9 + 1;
  v30 = ((v27 + *(v15 + 64) + ((v26 + 16 + ((v52 + 8 + (v29 & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26)) & 0xFFFFFFFFFFFFFFF8) + (((v9 | v26) + 32) & ~(v9 | v26)) + v28 + 8;
  if (v22 < a2)
  {
    v31 = *(v48 + 80) & 0xF8 | 7;
    v32 = *(v24 + 80) & 0xF8 | 7;
    v33 = ((v25 + ((v49 + v32 + ((*(v21 + 64) + v31 + (v30 & ~v28)) & ~v31) + 1) & ~v32) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v33 <= 3)
    {
      v34 = ((a2 - v22 + 255) >> 8) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    switch(v36)
    {
      case 1:
        v37 = a1[v33];
        if (!a1[v33])
        {
          break;
        }

        goto LABEL_47;
      case 2:
        v37 = *&a1[v33];
        if (*&a1[v33])
        {
          goto LABEL_47;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9A3200);
      case 4:
        v37 = *&a1[v33];
        if (!v37)
        {
          break;
        }

LABEL_47:
        v39 = v33 > 3;
        if (v33 <= 3)
        {
          v40 = (v37 - 1) << (8 * v33);
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v44 = *a1;
        }

        else
        {
          v44 = *a1;
        }

        return v22 + (v44 | v40) + 1;
      default:
        break;
    }
  }

  if (v51 >= v50)
  {
    if (v46 == 0x7FFFFFFF)
    {
      v41 = *(a1 + 1);
      if (v41 >= 0xFFFFFFFF)
      {
        LODWORD(v41) = -1;
      }

      v42 = v41 + 1;
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v26 + 16 + ((v52 + 8 + ((v29 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v9 | v26) + 16) & ~(v9 | v26))) & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26, v16, v45);
      v42 = EnumTagSinglePayload - 1;
      if (EnumTagSinglePayload < 2)
      {
        v42 = 0;
      }
    }

    if (v42 >= 2)
    {
      return v42 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return __swift_getEnumTagSinglePayload(&a1[v30] & ~v28, v50, v47);
  }
}

void sub_23B9A3214(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  if (v58 > v22)
  {
    v22 = *(v23 + 84);
  }

  v62 = v22;
  v60 = *(sub_23BBDA438() - 8);
  v24 = *(v60 + 64);
  if (v24 <= 8)
  {
    v24 = 8;
  }

  v61 = v24;
  v25 = sub_23BBDA308();
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
  v31 = ((v10 | v30) + 32) & ~(v10 | v30);
  v32 = v16 + v10 + 1;
  v33 = v16 + 8 + (v32 & ~v10);
  v34 = *(v17 + 64);
  if (!v26)
  {
    ++v34;
  }

  v35 = v34 + ((v30 + 16 + (v33 & 0xFFFFFFFFFFFFFFF8)) & ~v30) + 7;
  v36 = *(v23 + 80);
  v37 = v31 + v36 + (v35 & 0xFFFFFFFFFFFFFFF8) + 8;
  v38 = *(v60 + 80) & 0xF8 | 7;
  v39 = *(v28 + 80) & 0xF8 | 7;
  v40 = ((v29 + ((v61 + v39 + ((*(v23 + 64) + v38 + (v37 & ~v36)) & ~v38) + 1) & ~v39) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v62 < a3)
  {
    if (v40 <= 3)
    {
      v41 = ((a3 - v62 + 255) >> 8) + 1;
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

  if (v62 < a2)
  {
    v43 = ~v62 + a2;
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
        goto LABEL_78;
      case 4:
        *(a1 + v40) = v44;
        return;
      default:
        return;
    }
  }

  v45 = ~v30;
  v46 = ~v36;
  switch(v27)
  {
    case 1:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    case 2:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    case 3:
LABEL_78:
      __break(1u);
      JUMPOUT(0x23B9A37F8);
    case 4:
      *(a1 + v40) = 0;
      goto LABEL_53;
    default:
LABEL_53:
      if (!a2)
      {
        return;
      }

LABEL_54:
      if (v59 < v58)
      {
        v47 = (a1 + v37) & v46;
        v48 = a2;
        v26 = v58;
        v49 = v57;
LABEL_56:

        __swift_storeEnumTagSinglePayload(v47, v48, v26, v49);
        return;
      }

      v50 = (v35 & 0xFFFFFFF8) + v31 + 8;
      if (v59 < a2)
      {
        if (!v50)
        {
          return;
        }

        v51 = a2 - v56;
LABEL_71:
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

        goto LABEL_71;
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
        v47 = (v30 + 16 + ((v16 + 8 + ((v52 + v32) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & v45;
        v48 = a2 + 2;
        v49 = v54;
        goto LABEL_56;
      }

      v53 = ((((v33 & 0xFFFFFFF8) + v30 + 16) & v45) + v34 + 7) & 0xFFFFFFF8;
      if (v53 != -8)
      {
        bzero(v52, (v53 + 8));
        *v52 = a2 - v55;
      }

      return;
  }
}

void sub_23B9A3838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23B9A389C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23BBD9C18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23B9A392C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23BBDA308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B9B70F0();
  v14 = sub_23BBDA2E8();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) != 0 && ((v15 = v3 + *(a1 + 52), v16 = *v15, *(v15 + 8) != 1) ? (, sub_23BBDD5A8(), v18 = sub_23BBDB338(), sub_23BBD9978(), v18, sub_23BBDA918(), swift_getAtKeyPath(), sub_23B97B450(v16, 0), (*(v7 + 8))(v9, v6), v17 = v22[15]) : (v17 = *v15), (v17 & 0xFE) == 2))
  {
    v19 = sub_23BBDAB58();
    *(a2 + 24) = MEMORY[0x277CDF5C8];
    v20 = 0x4010000000000000;
    result = sub_23B9A7330();
  }

  else
  {
    v19 = sub_23BBDA9D8();
    *(a2 + 24) = MEMORY[0x277CDF570];
    v20 = 0x4024000000000000;
    result = sub_23B9A70B0();
  }

  *(a2 + 32) = result;
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23B9A3BA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80, &qword_23BBE6B80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_23BBDA928();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDA308();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9B70F0();
  v16 = sub_23BBDA2E8();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) != 0 && ((v17 = v3 + *(a1 + 52), v18 = *v17, *(v17 + 8) != 1) ? (, sub_23BBDD5A8(), v20 = sub_23BBDB338(), sub_23BBD9978(), v20, sub_23BBDA918(), swift_getAtKeyPath(), sub_23B97B450(v18, 0), (*(v28 + 8))(v11, v9), v19 = v29) : (v19 = *v17), (v19 & 0xFE) == 2))
  {
    sub_23B9A721C(v3, v8, &qword_27E198D80, &qword_23BBE6B80);
    v21 = type metadata accessor for ProductViewConfiguration(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v21);
    sub_23B979910(v8, &qword_27E198D80, &qword_23BBE6B80);
    v23 = sub_23BBDAB58();
    if (EnumTagSinglePayload == 1)
    {
      v24 = 0x4010000000000000;
    }

    else
    {
      v24 = 0;
    }

    a2[3] = MEMORY[0x277CDF5C8];
    result = sub_23B9A7330();
    a2[4] = result;
    *a2 = v23;
    a2[1] = v24;
    v26 = a2 + 2;
  }

  else
  {
    v27 = sub_23BBDAB58();
    a2[3] = &type metadata for TotalLineLimitLayout;
    a2[4] = sub_23B9A72CC();
    result = swift_allocObject();
    *a2 = result;
    *(result + 16) = 3;
    *(result + 24) = v27;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    v26 = (result + 64);
    *(result + 56) = 0x4010000000000000;
  }

  *v26 = 0;
  return result;
}

uint64_t sub_23B9A3EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23BBDA308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B9B70F0();
  v14 = sub_23BBDA2E8();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = v3 + *(a1 + 52);
    v16 = *v15;
    if (*(v15 + 8) == 1)
    {
      v17 = *v15;
    }

    else
    {

      sub_23BBDD5A8();
      v18 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v16, 0);
      (*(v7 + 8))(v9, v6);
      v17 = v21[15];
    }

    if ((v17 & 0xFE) == 2)
    {
      return sub_23B9A392C(a1, a2);
    }
  }

  v20 = sub_23BBDA9D8();
  *(a2 + 24) = MEMORY[0x277CDF570];
  result = sub_23B9A70B0();
  *(a2 + 32) = result;
  *a2 = v20;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23B9A4158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  sub_23BBDA308();
  OUTLINED_FUNCTION_3_2();
  v61 = v5;
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D40, &qword_23BBE95A0);
  v7 = *(a1 + 16);
  v54 = *(a1 + 24);
  v9 = type metadata accessor for ProductViewIconWrapper(255, v7, v54, v8);
  OUTLINED_FUNCTION_7_8();
  WitnessTable = swift_getWitnessTable();
  v72 = v9;
  v73 = WitnessTable;
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  v72 = sub_23BBDA358();
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D48, &qword_23BBE6B60);
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D50, &qword_23BBE6B68);
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D58, &qword_23BBE6B70);
  OUTLINED_FUNCTION_11_4(v75, v11, &v72);
  v12 = sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v13, &qword_27E198D40, &qword_23BBE95A0, v14);
  v56 = v12;
  v15 = sub_23BBDA018();
  OUTLINED_FUNCTION_3_2();
  v57 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  type metadata accessor for LayoutMetricsModifier(255);
  v20 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v58 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v55 = &v54 - v26;
  v60 = a1;
  sub_23B9A392C(a1, &v72);
  __swift_project_boxed_opaque_existential_1(&v72, v75);
  OUTLINED_FUNCTION_3_2();
  v28 = MEMORY[0x28223BE20](v27);
  (*(v30 + 16))(&v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  v31 = sub_23BBDC378();
  v32 = v54;
  v33 = sub_23B9A4714(v31, v7, v54);

  __swift_destroy_boxed_opaque_existential_1(&v72);
  v65 = v7;
  v66 = v32;
  v67 = v2;
  v33(sub_23B9A6A28, v64);

  if (qword_27E197600 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for LayoutMetrics(0);
  v35 = __swift_project_value_buffer(v34, qword_27E1BF7C8);
  v36 = v59;
  sub_23B9B70F0();
  v37 = sub_23BBDA2E8();
  (*(v61 + 8))(v36, v62);
  OUTLINED_FUNCTION_3_9();
  v42 = sub_23B97B518(v38, v39, v40, v41);
  OUTLINED_FUNCTION_2_5();
  v43 = swift_getWitnessTable();
  v70 = v42;
  v71 = v43;
  OUTLINED_FUNCTION_1_9();
  v44 = swift_getWitnessTable();
  v46 = sub_23B9C2924(v45);
  sub_23B97462C(v35, v46, v47, (v37 & 1) == 0, v15, v44);
  (*(v57 + 8))(v19, v15);
  OUTLINED_FUNCTION_6_6();
  v50 = sub_23B9A7068(v48, v49, &unk_23BBE3CD8);
  v68 = v44;
  v69 = v50;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  v51 = v55;
  sub_23B9D2D88();
  v52 = *(v58 + 8);
  v52(v24, v20);
  sub_23B9D2D88();
  return (v52)(v51, v20);
}

uint64_t (*sub_23B9A4714(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_23B9A73BC;
}

uint64_t sub_23B9A4788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ProductViewIconWrapper(255, a4, a5, a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D48, &qword_23BBE6B60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D50, &qword_23BBE6B68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D58, &qword_23BBE6B70);
  swift_getTupleTypeMetadata();
  sub_23BBDC3D8();
  sub_23B9A73C8();
  swift_getWitnessTable();
  return sub_23B9D4D38(a1, a2, MEMORY[0x277CE13A0]);
}

uint64_t sub_23B9A48F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D58, &qword_23BBE6B70);
  MEMORY[0x28223BE20](v115);
  v118 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v116 = (&v95 - v9);
  v10 = sub_23BBDB588();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v107 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v95 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D50, &qword_23BBE6B68);
  MEMORY[0x28223BE20](v125);
  v114 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v113 = (&v95 - v16);
  v17 = sub_23BBDB148();
  v104 = *(v17 - 8);
  v105 = v17;
  MEMORY[0x28223BE20](v17);
  v103 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D78, &qword_23BBE6B78);
  MEMORY[0x28223BE20](v123);
  v102 = (&v95 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D48, &qword_23BBE6B60);
  v110 = *(v20 - 8);
  v111 = v20;
  MEMORY[0x28223BE20](v20);
  v124 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v128 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80, &qword_23BBE6B80);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v95 - v25;
  v99 = sub_23BBDA438();
  v101 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ProductViewIconWrapper(0, a2, a3, v28);
  v96 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v95 - v30;
  WitnessTable = swift_getWitnessTable();
  __src = v29;
  v153 = WitnessTable;
  v97 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v35 = &v95 - v34;
  v122 = sub_23BBDA358();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v95 - v38;
  MEMORY[0x28223BE20](v40);
  v126 = a2;
  v127 = &v95 - v41;
  v129 = a2;
  v130 = a3;
  v131 = a1;
  v119 = a3;
  sub_23BA33338(sub_23B9A6A34, a2, v31, a3);
  v112 = a1;
  sub_23B9A721C(a1, v26, &qword_27E198D80, &qword_23BBE6B80);
  v42 = type metadata accessor for ProductViewConfiguration(0);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v26, 1, v42);
  sub_23B979910(v26, &qword_27E198D80, &qword_23BBE6B80);
  if (a3 == 1)
  {
    v43 = v98;
    sub_23BBDA428();
    v44 = v99;
  }

  else
  {
    __src = MEMORY[0x277D84F90];
    v95 = sub_23B9A7068(&qword_27E198E48, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50, &unk_23BBE6CA0);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50, &unk_23BBE6CA0, MEMORY[0x277D83970]);
    v43 = v98;
    v44 = v99;
    sub_23BBDD6C8();
  }

  v45 = v97;
  sub_23BBDBC38();
  v101[1](v43, v44);
  (*(v96 + 8))(v31, v29);
  v150 = 1;
  v149 = 1;
  v148 = 1;
  v147 = 1;
  v146 = 0;
  v145 = 0;
  v151 = 0;
  __src = 0;
  LOBYTE(v153) = 1;
  v154 = 0;
  v155 = 1;
  v156 = 0;
  v157 = 1;
  v158 = 0;
  v159 = 1;
  v160 = 0x404E000000000000;
  v161 = 0;
  v162 = 0x404E000000000000;
  v163 = 0;
  v139 = v29;
  v140 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = sub_23B9DCCD0(v47);
  sub_23BA19724(&__src, v48, v49, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  (*(v100 + 8))(v35, OpaqueTypeMetadata2);
  v50 = sub_23B9A6A40();
  v143 = OpaqueTypeConformance2;
  v144 = v50;
  v51 = v122;
  v99 = swift_getWitnessTable();
  sub_23B9D2D88();
  v52 = *(v120 + 8);
  v100 = v120 + 8;
  v101 = v52;
  (v52)(v39, v51);
  v53 = v126;
  v54 = v119;
  v56 = type metadata accessor for CompactProductView(0, v126, v119, v55);
  v57 = v112;
  sub_23B9A3BA0(v56, &v139);
  v58 = __swift_project_boxed_opaque_existential_1(&v139, v142);
  v59 = MEMORY[0x28223BE20](v58);
  (*(v61 + 16))(&v95 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0), v59);
  v62 = sub_23BBDC378();
  __swift_destroy_boxed_opaque_existential_1(&v139);
  v63 = v102;
  *v102 = v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D90, &qword_23BBE6B88);
  sub_23B9A58B8(v57, v53, v54, v63 + *(v64 + 44));
  KeyPath = swift_getKeyPath();
  v66 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D98, &qword_23BBE6BC0) + 36));
  *v66 = KeyPath;
  v66[1] = 0;
  v67 = swift_getKeyPath();
  v68 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198DA0, &qword_23BBE6BF8) + 36);
  *v68 = v67;
  *(v68 + 8) = 0;
  sub_23B9A6AA4();
  v69 = sub_23BBDAB78();
  v70 = (v63 + *(v123 + 36));
  *v70 = v69;
  v70[1] = sub_23B9A65D0;
  v70[2] = 0;
  v71 = v103;
  sub_23BBDB128();
  v98 = sub_23B9A6AF8();
  sub_23BBDB968();
  (*(v104 + 8))(v71, v105);
  sub_23B979910(v63, &qword_27E198D78, &qword_23BBE6B78);
  v72 = swift_getKeyPath();
  v73 = v113;
  *v113 = v72;
  *(v73 + 8) = 0;
  *(v73 + 16) = swift_getKeyPath();
  *(v73 + 24) = 0;
  type metadata accessor for ProductViewAXTypeStyleButtonSpacer(0);
  v75 = v108;
  v74 = v109;
  v76 = v106;
  (*(v108 + 104))(v106, *MEMORY[0x277CE0AA8], v109);
  v139 = 0x4024000000000000;
  (*(v75 + 16))(v107, v76, v74);
  sub_23B974940();
  sub_23BBD9D18();
  (*(v75 + 8))(v76, v74);
  *(v73 + *(v125 + 36)) = 0xBFF0000000000000;
  sub_23B9A3EF4(v56, &v139);
  v77 = __swift_project_boxed_opaque_existential_1(&v139, v142);
  v78 = MEMORY[0x28223BE20](v77);
  (*(v80 + 16))(&v95 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0), v78);
  v81 = sub_23BBDC378();
  __swift_destroy_boxed_opaque_existential_1(&v139);
  v82 = v116;
  *v116 = v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E00, &qword_23BBE6C88);
  sub_23B9A65F8(v57, v126, v119, (v82 + *(v83 + 44)));
  v84 = v115;
  *(v82 + *(v115 + 36)) = 0xBFF0000000000000;
  v85 = v121;
  v86 = v122;
  (*(v120 + 16))(v121, v127, v122);
  v139 = v85;
  v87 = v110;
  v88 = v111;
  v89 = v124;
  (*(v110 + 16))(v124, v128, v111);
  v140 = v89;
  v90 = v114;
  sub_23B9A721C(v73, v114, &qword_27E198D50, &qword_23BBE6B68);
  v141 = v90;
  v91 = v118;
  sub_23B9A721C(v82, v118, &qword_27E198D58, &qword_23BBE6B70);
  v142 = v91;
  v138[0] = v86;
  v138[1] = v88;
  v138[2] = v125;
  v138[3] = v84;
  v132 = v123;
  v133 = v98;
  v134 = v99;
  v135 = swift_getOpaqueTypeConformance2();
  v136 = sub_23B9A6DE4();
  v137 = sub_23B9A6ECC();
  sub_23BB6739C(&v139, 4, v138);
  sub_23B979910(v82, &qword_27E198D58, &qword_23BBE6B70);
  sub_23B979910(v73, &qword_27E198D50, &qword_23BBE6B68);
  v92 = *(v87 + 8);
  v92(v128, v88);
  v93 = v101;
  (v101)(v127, v86);
  sub_23B979910(v91, &qword_27E198D58, &qword_23BBE6B70);
  sub_23B979910(v90, &qword_27E198D50, &qword_23BBE6B68);
  v92(v124, v88);
  return (v93)(v121, v86);
}

uint64_t sub_23B9A57C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompactProductView(0, v7, v8, v9);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v4 + 8))(v6, a2);
}

uint64_t sub_23B9A58B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a2;
  v102 = a3;
  v108 = a4;
  v97 = sub_23BBDA928();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E88, &unk_23BBE98C0);
  MEMORY[0x28223BE20](v6 - 8);
  v107 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = (&v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v88 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80, &qword_23BBE6B80);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v94 = &v88 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = (&v88 - v20);
  v22 = type metadata accessor for ProductViewText(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - v26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E98, &unk_23BBE98D0);
  MEMORY[0x28223BE20](v99);
  v29 = &v88 - v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA0, &qword_23BBE6CE0);
  MEMORY[0x28223BE20](v100);
  v105 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v88 - v32;
  MEMORY[0x28223BE20](v34);
  v103 = a1;
  v104 = &v88 - v35;
  sub_23B9A721C(a1, v21, &qword_27E198D80, &qword_23BBE6B80);
  v98 = type metadata accessor for ProductViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v98) == 1)
  {
    sub_23B979910(v21, &qword_27E198D80, &qword_23BBE6B80);
  }

  else
  {
    v37 = *v21;
    v36 = v21[1];

    sub_23B9A7170(v21, type metadata accessor for ProductViewConfiguration);
    if (v36)
    {
      *v14 = v37;
      v14[1] = v36;
      v38 = type metadata accessor for ProductViewText.Storage(0);
      swift_storeEnumTagMultiPayload();
      v39 = v14;
      v40 = 0;
      v41 = v38;
      goto LABEL_6;
    }
  }

  v41 = type metadata accessor for ProductViewText.Storage(0);
  v39 = v14;
  v40 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v39, v40, 1, v41);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for LayoutMetrics(0);
  v91 = __swift_project_value_buffer(v42, &unk_27E1BF7F8);
  sub_23B9A7114(v91, v27, type metadata accessor for LayoutMetrics);
  v43 = type metadata accessor for PlaceholderLayouts(0);
  v44 = *(v43 + 20);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  v90 = __swift_project_value_buffer(v42, &unk_27E1BF810);
  sub_23B9A7114(v90, &v27[v44], type metadata accessor for LayoutMetrics);
  v45 = *(v43 + 24);
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  v89 = __swift_project_value_buffer(v42, &unk_27E1BF828);
  sub_23B9A7114(v89, &v27[v45], type metadata accessor for LayoutMetrics);
  v46 = &v27[v22[10]];
  v47 = v22[13];
  *&v27[v47] = swift_getKeyPath();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v48 = v22[14];
  *&v27[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  sub_23B9A71D0(v14, &v27[v22[5]], &qword_27E198E90, &unk_23BBE6CD0);
  v27[v22[6]] = 0;
  v27[v22[7]] = 0;
  v27[v22[8]] = 0;
  *v46 = 0;
  *(v46 + 1) = 0;
  v125 = 1;
  v123 = 0;
  v121 = 0;
  v119 = 1;
  v117 = 0;
  v115 = 0;
  v49 = &v27[v22[9]];
  *v49 = 0;
  v49[8] = 1;
  *(v49 + 3) = *&v124[3];
  *(v49 + 9) = *v124;
  *(v49 + 2) = 0x405E000000000000;
  v49[24] = 0;
  *(v49 + 7) = *&v122[3];
  *(v49 + 25) = *v122;
  *(v49 + 4) = 0x405E000000000000;
  v49[40] = 0;
  v50 = *v120;
  *(v49 + 11) = *&v120[3];
  *(v49 + 41) = v50;
  *(v49 + 6) = 0;
  v49[56] = v119;
  v51 = *v118;
  *(v49 + 15) = *&v118[3];
  *(v49 + 57) = v51;
  *(v49 + 8) = 0x4032000000000000;
  v49[72] = v117;
  v52 = *v116;
  *(v49 + 19) = *&v116[3];
  *(v49 + 73) = v52;
  *(v49 + 10) = 0x4032000000000000;
  v49[88] = v115;
  *&v27[v22[11]] = swift_getKeyPath();
  *&v27[v22[12]] = swift_getKeyPath();
  sub_23B9A7114(v27, v29, type metadata accessor for ProductViewText);
  *&v29[*(v99 + 36)] = 0x3FF0000000000000;
  sub_23B9A7170(v27, type metadata accessor for ProductViewText);
  KeyPath = swift_getKeyPath();
  sub_23B9A71D0(v29, v33, &qword_27E198E98, &unk_23BBE98D0);
  v54 = &v33[*(v100 + 36)];
  *v54 = KeyPath;
  v54[8] = 1;
  v55 = v104;
  sub_23B9A71D0(v33, v104, &qword_27E198EA0, &qword_23BBE6CE0);
  v57 = type metadata accessor for CompactProductView(0, v101, v102, v56);
  v58 = v103;
  v59 = v103 + *(v57 + 48);
  v60 = *v59;
  if (*(v59 + 8) == 1)
  {
    v61 = v106;
    if ((v60 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v62 = sub_23BBDB338();
    sub_23BBD9978();

    v63 = v95;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v60, 0);
    (*(v96 + 8))(v63, v97);
    v61 = v106;
    if (v114 != 1)
    {
      goto LABEL_19;
    }
  }

  v64 = v94;
  sub_23B9A721C(v58, v94, &qword_27E198D80, &qword_23BBE6B80);
  if (__swift_getEnumTagSinglePayload(v64, 1, v98) == 1)
  {
    sub_23B979910(v64, &qword_27E198D80, &qword_23BBE6B80);
    goto LABEL_20;
  }

  v65 = *(v64 + 16);
  v66 = *(v64 + 24);

  sub_23B9A7170(v64, type metadata accessor for ProductViewConfiguration);
  LOBYTE(v65) = sub_23B9D4CA8(v65, v66);

  if ((v65 & 1) == 0)
  {
LABEL_20:
    v69 = v92;
    sub_23B9A721C(v58, v92, &qword_27E198D80, &qword_23BBE6B80);
    if (__swift_getEnumTagSinglePayload(v69, 1, v98) == 1)
    {
      sub_23B979910(v69, &qword_27E198D80, &qword_23BBE6B80);
    }

    else
    {
      v71 = *(v69 + 16);
      v70 = *(v69 + 24);

      sub_23B9A7170(v69, type metadata accessor for ProductViewConfiguration);
      if (v70)
      {
        v72 = v93;
        *v93 = v71;
        v72[1] = v70;
        v73 = v72;
        v74 = type metadata accessor for ProductViewText.Storage(0);
        swift_storeEnumTagMultiPayload();
        v75 = v73;
        v76 = 0;
        v77 = v74;
LABEL_25:
        __swift_storeEnumTagSinglePayload(v75, v76, 1, v77);
        sub_23B9A7114(v91, v24, type metadata accessor for LayoutMetrics);
        sub_23B9A7114(v90, &v24[*(v43 + 20)], type metadata accessor for LayoutMetrics);
        sub_23B9A7114(v89, &v24[*(v43 + 24)], type metadata accessor for LayoutMetrics);
        v78 = &v24[v22[10]];
        v79 = v22[13];
        *&v24[v79] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v80 = v22[14];
        *&v24[v80] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        sub_23B9A71D0(v73, &v24[v22[5]], &qword_27E198E90, &unk_23BBE6CD0);
        v24[v22[6]] = 1;
        v24[v22[7]] = 0;
        v24[v22[8]] = 0;
        *v78 = 0;
        *(v78 + 1) = 0;
        LOBYTE(v114) = 1;
        v113 = 0;
        v112 = 0;
        v111 = 1;
        v110 = 0;
        v109 = 0;
        v81 = &v24[v22[9]];
        *v81 = 0;
        v81[8] = 1;
        *(v81 + 2) = 0x4054000000000000;
        v81[24] = 0;
        *(v81 + 4) = 0x4054000000000000;
        v81[40] = 0;
        *(v81 + 6) = 0;
        v81[56] = 1;
        *(v81 + 8) = 0x4024000000000000;
        v81[72] = 0;
        *(v81 + 10) = 0x4024000000000000;
        v81[88] = 0;
        *&v24[v22[11]] = swift_getKeyPath();
        *&v24[v22[12]] = swift_getKeyPath();
        sub_23B9A7268(v24, v61, v82);
        v67 = v61;
        v68 = 0;
        goto LABEL_26;
      }
    }

    v77 = type metadata accessor for ProductViewText.Storage(0);
    v73 = v93;
    v75 = v93;
    v76 = 1;
    goto LABEL_25;
  }

LABEL_19:
  v67 = v61;
  v68 = 1;
LABEL_26:
  __swift_storeEnumTagSinglePayload(v67, v68, 1, v22);
  v83 = v105;
  sub_23B9A721C(v55, v105, &qword_27E198EA0, &qword_23BBE6CE0);
  v84 = v107;
  sub_23B9A721C(v61, v107, &qword_27E198E88, &unk_23BBE98C0);
  v85 = v108;
  sub_23B9A721C(v83, v108, &qword_27E198EA0, &qword_23BBE6CE0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB8, &qword_23BBE6DC8);
  sub_23B9A721C(v84, v85 + *(v86 + 48), &qword_27E198E88, &unk_23BBE98C0);
  sub_23B979910(v61, &qword_27E198E88, &unk_23BBE98C0);
  sub_23B979910(v55, &qword_27E198EA0, &qword_23BBE6CE0);
  sub_23B979910(v84, &qword_27E198E88, &unk_23BBE98C0);
  return sub_23B979910(v83, &qword_27E198EA0, &qword_23BBE6CE0);
}

uint64_t sub_23B9A65F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a3;
  v40 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80, &qword_23BBE6B80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60, &qword_23BBF3AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E68, &qword_23BBE6CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v38 = (&v37 - v13);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E70, &qword_23BBE6CB8);
  MEMORY[0x28223BE20](v39);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v22 = sub_23BBDA308();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompactProductView(0, a2, v37, v26);
  sub_23B9B70F0();
  v27 = sub_23BBDA2E8();
  (*(v23 + 8))(v25, v22);
  sub_23B9A721C(a1, v8, &qword_27E198D80, &qword_23BBE6B80);
  v28 = type metadata accessor for ProductViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v28) == 1)
  {
    sub_23B979910(v8, &qword_27E198D80, &qword_23BBE6B80);
    v29 = 1;
  }

  else
  {
    sub_23B9A7114(&v8[*(v28 + 24)], v11, type metadata accessor for ProductViewButtonConfiguration);
    sub_23B9A7170(v8, type metadata accessor for ProductViewConfiguration);
    v29 = 0;
  }

  v30 = type metadata accessor for ProductViewButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v11, v29, 1, v30);
  v31 = v27 & 1;
  if (v27)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x4018000000000000;
  }

  v33 = v38;
  sub_23BA7C678(v11, v38);
  sub_23B9A71D0(v33, v18, &qword_27E198E68, &qword_23BBE6CB0);
  *&v18[*(v39 + 36)] = 1;
  sub_23B9A71D0(v18, v21, &qword_27E198E70, &qword_23BBE6CB8);
  sub_23B9A721C(v21, v15, &qword_27E198E70, &qword_23BBE6CB8);
  v34 = v40;
  *v40 = v32;
  *(v34 + 8) = 0;
  *(v34 + 9) = v31;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E78, &unk_23BBE6CC0);
  sub_23B9A721C(v15, v34 + *(v35 + 48), &qword_27E198E70, &qword_23BBE6CB8);
  sub_23B979910(v21, &qword_27E198E70, &qword_23BBE6CB8);
  return sub_23B979910(v15, &qword_27E198E70, &qword_23BBE6CB8);
}

unint64_t sub_23B9A6A40()
{
  result = qword_27E198D88;
  if (!qword_27E198D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198D88);
  }

  return result;
}

unint64_t sub_23B9A6AA4()
{
  result = qword_27E198DA8;
  if (!qword_27E198DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DA8);
  }

  return result;
}

unint64_t sub_23B9A6AF8()
{
  result = qword_27E198DB0;
  if (!qword_27E198DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D78, &qword_23BBE6B78);
    sub_23B9A6B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DB0);
  }

  return result;
}

unint64_t sub_23B9A6B84()
{
  result = qword_27E198DB8;
  if (!qword_27E198DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DA0, &qword_23BBE6BF8);
    sub_23B9A6C3C();
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8, &qword_23BBE6C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DB8);
  }

  return result;
}

unint64_t sub_23B9A6C3C()
{
  result = qword_27E198DC0;
  if (!qword_27E198DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D98, &qword_23BBE6BC0);
    sub_23B9A6CF4();
    sub_23B97B518(&qword_27E198DE0, &qword_27E198DE8, &qword_23BC03DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DC0);
  }

  return result;
}

unint64_t sub_23B9A6CF4()
{
  result = qword_27E198DC8;
  if (!qword_27E198DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D90, &qword_23BBE6B88);
    sub_23B97B518(&qword_27E198D68, &qword_27E198D40, &qword_23BBE95A0, MEMORY[0x277CDF510]);
    sub_23B97B518(&qword_27E198DD0, &qword_27E198DD8, &unk_23BBE6C00, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DC8);
  }

  return result;
}

unint64_t sub_23B9A6DE4()
{
  result = qword_27E198E08;
  if (!qword_27E198E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D50, &qword_23BBE6B68);
    sub_23B9A7068(&qword_27E198E10, type metadata accessor for ProductViewAXTypeStyleButtonSpacer, &unk_23BBED224);
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20, &qword_23BBE6C90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E08);
  }

  return result;
}

unint64_t sub_23B9A6ECC()
{
  result = qword_27E198E28;
  if (!qword_27E198E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D58, &qword_23BBE6B70);
    sub_23B9A6F84();
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20, &qword_23BBE6C90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E28);
  }

  return result;
}

unint64_t sub_23B9A6F84()
{
  result = qword_27E198E30;
  if (!qword_27E198E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E00, &qword_23BBE6C88);
    sub_23B97B518(&qword_27E198D68, &qword_27E198D40, &qword_23BBE95A0, MEMORY[0x277CDF510]);
    sub_23B97B518(&qword_27E198E38, &qword_27E198E40, &qword_23BBE6C98, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E30);
  }

  return result;
}

uint64_t sub_23B9A7068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B9A70B0()
{
  result = qword_27E198E80;
  if (!qword_27E198E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E80);
  }

  return result;
}

uint64_t sub_23B9A7114(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23B9A7170(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9A71D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return v4;
}

uint64_t sub_23B9A721C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return v4;
}

uint64_t sub_23B9A7268(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for ProductViewText(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23B9A72CC()
{
  result = qword_27E198EC0;
  if (!qword_27E198EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198EC0);
  }

  return result;
}

unint64_t sub_23B9A7330()
{
  result = qword_27E198EC8;
  if (!qword_27E198EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198EC8);
  }

  return result;
}

uint64_t sub_23B9A7384()
{

  return swift_deallocObject();
}

unint64_t sub_23B9A73C8()
{
  result = qword_27E198ED0;
  if (!qword_27E198ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198ED0);
  }

  return result;
}

uint64_t sub_23B9A741C(uint64_t *a1)
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
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D48, &qword_23BBE6B60);
  v14[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D50, &qword_23BBE6B68);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D58, &qword_23BBE6B70);
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
  OUTLINED_FUNCTION_6_6();
  sub_23B9A7068(v11, v12, &unk_23BBE3CD8);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata();
}

uint64_t sub_23B9A76C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198ED8, &qword_23BBE6DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SubscriptionStoreButtonStyleConfiguration.currentOption.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EE0, &qword_23BBE6DF8);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t _s17_StoreKit_SwiftUI012SubscriptionA24ButtonStyleConfigurationV12subscription0aB07ProductVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDCDB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s17_StoreKit_SwiftUI012SubscriptionA24ButtonStyleConfigurationV16subscriptionInfo0aB07ProductV0eJ0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198ED8, &qword_23BBE6DF0) + 36);
  v4 = sub_23BBDCB58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23B9A797C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198ED8, &qword_23BBE6DF0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B9A79E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198ED8, &qword_23BBE6DF0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_23B9A7A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27E198EF8)
  {
    v4 = type metadata accessor for SubscriptionItemBaseConfiguration(0, MEMORY[0x277CE11C8], MEMORY[0x277CE11C0], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27E198EF8);
    }
  }
}

void sub_23B9A7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23B9A7A60(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23B9A7BA8(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_0_2();
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

_BYTE *sub_23B9A7BF4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23B9A7C90);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B9A7D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v55 = a4;
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F10, &qword_23BBE70F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = v48 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18, &qword_23BBE7100);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F20, &qword_23BBE7108) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = (v48 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F28, &qword_23BBE7110);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = v48 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F30, &qword_23BBE7118);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v23 = v48 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F38, &qword_23BBE7120);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  v51 = v48 - v25;
  *v16 = sub_23BBDC318();
  v16[1] = v26;
  v27 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F40, &qword_23BBE7128) + 44);
  v52 = v6;
  v53 = a3;
  v54 = a2;
  sub_23B9A84D0(v6, v27);
  v28 = (v16 + *(v13 + 44));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F48, &qword_23BBE7130) + 28);
  v30 = *MEMORY[0x277CE1058];
  sub_23BBDBE58();
  OUTLINED_FUNCTION_4_1();
  (*(v31 + 104))(v28 + v29, v30);
  *v28 = swift_getKeyPath();
  if (sub_23BBDC2A8())
  {
    v32 = sub_23BBDB468();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v32);
    v33 = sub_23BBDB4C8();
    sub_23B9A8E20(v12, &qword_27E198F18);
  }

  else
  {
    v33 = sub_23BBDB4E8();
  }

  KeyPath = swift_getKeyPath();
  sub_23B989918(v16, v20, &qword_27E198F20, &qword_23BBE7108);
  v35 = &v20[*(v17 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = *MEMORY[0x277CDF9A8];
  v37 = sub_23BBDA308();
  OUTLINED_FUNCTION_4_1();
  (*(v38 + 104))(v9, v36, v37);
  sub_23B9A8DD8(&qword_27E198F50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if ((sub_23BBDCF38() & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_23B9A8894();
  sub_23B9A8CB4(&qword_27E198F80, &qword_27E198F10, &qword_23BBE70F8, MEMORY[0x277D84348]);
  sub_23BBDB898();
  sub_23B9A8E20(v9, &qword_27E198F10);
  sub_23B9A8E20(v20, &qword_27E198F28);
  v39 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F88, &qword_23BBE71A8) + 36)];
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F90, &qword_23BBE71B0) + 28);
  sub_23BBDAB88();
  v41 = sub_23BBDAB98();
  __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
  *v39 = swift_getKeyPath();
  v42 = swift_allocObject();
  v43 = v53;
  v44 = v52 & 1;
  *(v42 + 16) = v52 & 1;
  v45 = v54;
  *(v42 + 24) = v54;
  *(v42 + 32) = v43 & 1;
  v46 = &v23[*(v49 + 36)];
  *v46 = v44;
  *(v46 + 1) = sub_23B9A8A94;
  *(v46 + 2) = v42;
  j__swift_retain(v45);
  sub_23B9A8AA8();
  v20 = v51;
  sub_23BBDB958();
  sub_23B9A8E20(v23, &qword_27E198F30);
  if (qword_27E197648 != -1)
  {
LABEL_8:
    swift_once();
  }

  sub_23B9A8CF8();

  sub_23BBDBA28();

  return sub_23B9A8E20(v20, &qword_27E198F38);
}

uint64_t sub_23B9A8334(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9A8E74();
  sub_23BBD9CB8();
  if (v13 == 2 || (v13 & 1) != 0)
  {

    if ((a4 & 1) == 0)
    {
      sub_23BBDD5A8();
      v10 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j_j__swift_release(a3);
      (*(v7 + 8))(v9, v6);
    }

    return sub_23BBD9CA8();
  }

  else
  {
    sub_23BBD9CA8();
    return sub_23BBD9C98();
  }
}

uint64_t sub_23B9A84D0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FD8, &qword_23BBE71F8);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FE0, &qword_23BBE7200);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v28[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v28[-v14];
  v16 = sub_23BBDBE38();
  v17 = sub_23BBD356C();
  v32[3] = sub_23BBDA1E8();
  v32[4] = MEMORY[0x277CDF8D0];
  __swift_allocate_boxed_opaque_existential_1(v32);
  sub_23BBDA1D8();
  v18 = sub_23BBDBCB8();
  v33 = 1;
  v32[5] = v18;
  v31 = v17;
  v19 = v5 + *(v3 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FE8, &qword_23BBE7208);
  sub_23BBDA1D8();
  sub_23B989ECC(&v31, v19, &qword_27E198FF0, &qword_23BBE7210);
  *v5 = v16;
  sub_23B9A8E20(&v31, &qword_27E198FF0);
  sub_23B989918(v5, v12, &qword_27E198FD8, &qword_23BBE71F8);
  v20 = (v29 & 1) == 0;
  if (v29)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  *&v12[*(v7 + 44)] = v21;
  if (v20)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  sub_23B989918(v12, v15, &qword_27E198FE0, &qword_23BBE7200);
  v23 = sub_23BBDBE38();
  v24 = sub_23BBDAF18();
  sub_23B989ECC(v15, v9, &qword_27E198FE0, &qword_23BBE7200);
  v25 = v30;
  sub_23B989ECC(v9, v30, &qword_27E198FE0, &qword_23BBE7200);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FF8, &qword_23BBE7218) + 48);
  *v26 = v23;
  *(v26 + 8) = v24;
  *(v26 + 16) = v22;

  sub_23B9A8E20(v15, &qword_27E198FE0);

  return sub_23B9A8E20(v9, &qword_27E198FE0);
}

uint64_t sub_23B9A87DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FD0, &qword_23BBE71F0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B989ECC(a1, &v5 - v3, &qword_27E198FD0, &qword_23BBE71F0);
  return sub_23BBDA798();
}

unint64_t sub_23B9A8894()
{
  result = qword_27E198F58;
  if (!qword_27E198F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F28, &qword_23BBE7110);
    sub_23B9A894C();
    sub_23B9A8CB4(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198F58);
  }

  return result;
}

unint64_t sub_23B9A894C()
{
  result = qword_27E198F60;
  if (!qword_27E198F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F20, &qword_23BBE7108);
    sub_23B9A8CB4(&qword_27E198F68, &unk_27E198F70, &unk_23BBE7198, MEMORY[0x277CE11A8]);
    sub_23B9A8CB4(&qword_27E198F78, &qword_27E198F48, &qword_23BBE7130, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198F60);
  }

  return result;
}

uint64_t sub_23B9A8A58()
{
  j_j__swift_release(*(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_23B9A8AA8()
{
  result = qword_27E198F98;
  if (!qword_27E198F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F30, &qword_23BBE7118);
    sub_23B9A8B60();
    sub_23B9A8CB4(&qword_27E198FB0, &unk_27E198FB8, &unk_23BBE71E8, MEMORY[0x277CE07D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198F98);
  }

  return result;
}

unint64_t sub_23B9A8B60()
{
  result = qword_27E198FA0;
  if (!qword_27E198FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F88, &qword_23BBE71A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F28, &qword_23BBE7110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10, &qword_23BBE70F8);
    sub_23B9A8894();
    sub_23B9A8CB4(&qword_27E198F80, &qword_27E198F10, &qword_23BBE70F8, MEMORY[0x277D84348]);
    swift_getOpaqueTypeConformance2();
    sub_23B9A8CB4(&qword_27E198FA8, &qword_27E198F90, &qword_23BBE71B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198FA0);
  }

  return result;
}

uint64_t sub_23B9A8CB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_2_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B9A8D28(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_2_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_23B9A8DD8(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B9A8DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B9A8E20(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_6(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_23B9A8E74()
{
  result = qword_27E198FC8;
  if (!qword_27E198FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198FC8);
  }

  return result;
}

uint64_t sub_23B9A8F18()
{
  v1 = v0;
  v2 = sub_23BBDCE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23BBDD018();
    v46 = v1;
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
    v1 = v46;

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
  v32 = *(v1 + 40);
  v48 = *(v1 + 24);
  v49[0] = v32;
  *(v49 + 15) = *(v1 + 55);
  v33 = sub_23BBC9488(v30);
  if (!v33)
  {
LABEL_12:

    return 0;
  }

  v34 = v33;
  type metadata accessor for StoreViewDisappearEvent(0);
  v35 = sub_23BBC95BC();
  if (!v35)
  {

    goto LABEL_12;
  }

  v36 = v35;
  v37 = sub_23BB024A0(v34, v31, 1);
  v38 = sub_23BB024A0(v36, v37, 1);
  v39 = qword_284E56E88;
  v40 = unk_284E56E90;

  v41 = sub_23BB03A88(v39, v40);
  v43 = v42;

  if (v43)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v47 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010, qword_23BBE7230);
    sub_23BBDD8D8();
    v38 = v47;

    sub_23B9A9318();
    sub_23BBDD8F8();
  }

  return v38;
}

uint64_t type metadata accessor for StoreViewDisappearEvent(uint64_t a1)
{
  result = qword_27E199028;
  if (!qword_27E199028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23B9A9318()
{
  result = qword_27E199018;
  if (!qword_27E199018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E199018);
  }

  return result;
}

unint64_t sub_23B9A935C()
{
  result = qword_27E199020;
  if (!qword_27E199020)
  {
    sub_23BBDCE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199020);
  }

  return result;
}

uint64_t sub_23B9A93B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

double sub_23B9A940C(uint64_t a1, unint64_t a2)
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

uint64_t sub_23B9A9478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = type metadata accessor for MintDisappearBaseEvent(0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_23B9A9520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for MintDisappearBaseEvent(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B9A95A0(uint64_t a1)
{
  result = type metadata accessor for MintDisappearBaseEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_23B9A965C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199038, qword_23BBE7350);
  sub_23B9A9860();
  sub_23B9A98C4();
  sub_23BBDBA18();

  return result;
}

uint64_t sub_23B9A9788@<X0>(_BYTE *a2@<X8>)
{
  sub_23B975730();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  result = sub_23BBDB3D8();
  *a2 = result;
  return result;
}

uint64_t sub_23B9A97F0()
{

  return swift_deallocObject();
}

unint64_t sub_23B9A9860()
{
  result = qword_27E199040;
  if (!qword_27E199040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199038, qword_23BBE7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199040);
  }

  return result;
}

unint64_t sub_23B9A98C4()
{
  result = qword_27E199048;
  if (!qword_27E199048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199048);
  }

  return result;
}

uint64_t sub_23B9A9918()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199038, qword_23BBE7350);
  sub_23B9A9860();
  sub_23B9A98C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B9A9990(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  sub_23BBDB398();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  v11[0] = sub_23BBDB3D8();
  v12 = a2;
  v13 = a3;
  return MEMORY[0x23EEB43C0](v11, a4, &type metadata for OnChangeOfSafeAreaOverlappingEdgesModifier, a5);
}

uint64_t sub_23B9A9A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v9 = a7;
  return MEMORY[0x23EEB43C0](v8, a5, &unk_284E65BA8, a6);
}

uint64_t View.subscriptionIntroductoryOffer(applyOffer:compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return MEMORY[0x23EEB43C0](v7, a5, &type metadata for SubscriptionIntroductoryOfferModifier, a6);
}

unint64_t sub_23B9A9AE0()
{
  result = qword_27E199050;
  if (!qword_27E199050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199050);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx010_StoreKit_aB036SubscriptionPromotionalOfferModifierVGAaBHPxAaBHD1__AgA0cK0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_23BBDA358();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_23B9A9BC4()
{
  result = qword_27E199058;
  if (!qword_27E199058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199058);
  }

  return result;
}

uint64_t sub_23B9A9C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B9A9C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23B9A9CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BBDD768();
  MEMORY[0x23EEB5890](39, 0xE100000000000000);
  v3 = sub_23BBDD798();
  MEMORY[0x23EEB5890](v3);

  MEMORY[0x23EEB5890](0xD000000000000036, 0x800000023BBE0560);
  v4 = sub_23BBDD798();
  MEMORY[0x23EEB5890](v4);

  MEMORY[0x23EEB5890](0xD000000000000085, 0x800000023BBE05A0);
  return 0;
}

uint64_t sub_23B9A9E10(unsigned __int8 a1)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](a1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B9A9E74(uint64_t a1)
{
  v2 = *v1;
  sub_23BBDDBB8();
  sub_23B9A9DE8(v4, v2);
  return sub_23BBDDBF8();
}

uint64_t sub_23B9A9EB8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDBD48();
  v9 = sub_23BBDC318();
  v11 = v10;
  v12 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199060, &qword_23BBE7430) + 36);
  sub_23B9A9FCC(v12);
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199068, &qword_23BBE7438) + 36));
  *v13 = v9;
  v13[1] = v11;
  *a4 = v8;
  *(a4 + 8) = 256;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v15 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199070, &unk_23BBE7440) + 36));
  *v15 = sub_23B9AA44C;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
}

double sub_23B9A9FCC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDBE48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDBE38();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_23BBDBE68();

  (*(v3 + 8))(v5, v2);
  v10[1] = v6;
  v10[2] = 0;
  v11 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199080, &qword_23BBE7450);
  sub_23B9AA45C();
  sub_23BBDBAB8();

  v7 = sub_23BBDBCE8();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199090, &qword_23BBE7458) + 36)) = v7;
  LOBYTE(v7) = sub_23BBDB398();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199098, &unk_23BBE7460) + 36);
  *v8 = v7;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

double sub_23B9AA1A0(char a1, char a2, uint64_t a3)
{
  LOBYTE(v19) = a2;
  v20 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF68();
  if (v18 == 1)
  {
    goto LABEL_14;
  }

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v6 = a2 & 1;
  v7 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v7, qword_27E1BFC88);
  if (a1)
  {
    if (a1 != 1)
    {
      v11 = 0x800000023BBE0430;
      v9 = 0xD0000000000000E1;
      goto LABEL_10;
    }

    v8 = "SubscriptionStorePicker";
  }

  else
  {
    v8 = "SubscriptionStoreButton";
  }

  v9 = sub_23B9A9CEC(v8, 23, 2);
  v11 = v10;
LABEL_10:
  v12 = sub_23BBDD5A8();

  v13 = sub_23BBD9988();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v19);
    *(v14 + 12) = 2082;
    v16 = sub_23BA5AB90(v9, v11, &v19);

    *(v14 + 14) = v16;
    _os_log_impl(&dword_23B970000, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v15, -1, -1);
    MEMORY[0x23EEB6DC0](v14, -1, -1);
  }

  else
  {
  }

  LOBYTE(v19) = v6;
  v20 = a3;
  sub_23BBDBF78();
LABEL_14:

  return result;
}

uint64_t sub_23B9AA414()
{

  return swift_deallocObject();
}

unint64_t sub_23B9AA45C()
{
  result = qword_27E199088;
  if (!qword_27E199088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199080, &qword_23BBE7450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatterStyleVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnsupportedViewKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23B9AA634);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B9AA678()
{
  result = qword_27E1990A0;
  if (!qword_27E1990A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199070, &unk_23BBE7440);
    sub_23B9AA704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990A0);
  }

  return result;
}

unint64_t sub_23B9AA704()
{
  result = qword_27E1990A8;
  if (!qword_27E1990A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199060, &qword_23BBE7430);
    sub_23B97B518(&qword_27E1990B0, &qword_27E1990B8, qword_23BBE7488, MEMORY[0x277CDF3A0]);
    sub_23B97B518(&qword_27E1990C0, &qword_27E199068, &qword_23BBE7438, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990A8);
  }

  return result;
}

unint64_t sub_23B9AA7EC()
{
  result = qword_27E1990C8;
  if (!qword_27E1990C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990C8);
  }

  return result;
}

uint64_t sub_23B9AA86C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23BBDA388();
  result = sub_23BBDB398();
  *a2 = 256;
  *(a2 + 8) = v3;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_23B9AA8B0()
{
  result = qword_27E1990D0;
  if (!qword_27E1990D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1990D8, &qword_23BBE7598);
    sub_23B9AA93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990D0);
  }

  return result;
}

unint64_t sub_23B9AA93C()
{
  result = qword_27E1990E0;
  if (!qword_27E1990E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1990E8, &unk_23BBE75A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomaticProductViewStyle(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23B9AAA90);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B9AAACC()
{
  result = qword_27E1990F0;
  if (!qword_27E1990F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1990F8, &qword_23BBE7610);
    sub_23B9AAB58();
    sub_23B9AABBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990F0);
  }

  return result;
}

unint64_t sub_23B9AAB58()
{
  result = qword_27E199100;
  if (!qword_27E199100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199108, &qword_23BBE7618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199100);
  }

  return result;
}

unint64_t sub_23B9AABBC()
{
  result = qword_27E199110[0];
  if (!qword_27E199110[0])
  {
    type metadata accessor for ConfigureProductViewEnvironmentViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E199110);
  }

  return result;
}

uint64_t sub_23B9AAC14()
{
  v0 = sub_23BBD9968();
  __swift_allocate_value_buffer(v0, qword_27E1BFBA8);
  __swift_project_value_buffer(v0, qword_27E1BFBA8);
  if (qword_27E197628 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_27E197628);
  }

  v1 = qword_27E1BF840;
  return sub_23BBD9958();
}

uint64_t sub_23B9AACAC()
{
  v0 = sub_23BBD9968();
  __swift_allocate_value_buffer(v0, qword_27E1BFBC0);
  __swift_project_value_buffer(v0, qword_27E1BFBC0);
  if (qword_27E197628 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_27E197628);
  }

  v1 = qword_27E1BF840;
  return sub_23BBD9958();
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_23B9AAD74(uint64_t a1)
{
  result = sub_23BBDC2A8();
  v2 = 15.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_27E1BFBD8 = *&v2;
  return result;
}

uint64_t sub_23B9AADA4(uint64_t a1)
{
  result = sub_23BBDC2A8();
  v2 = 2.0;
  if (result)
  {
    v2 = 0.0;
  }

  qword_27E1BFBE0 = *&v2;
  qword_27E1BFBF0 = 0;
  unk_27E1BFBF8 = 0;
  qword_27E1BFBE8 = 0;
  return result;
}

uint64_t sub_23B9AADE0(uint64_t a1)
{
  result = sub_23BBDC2A8();
  v2 = 12.0;
  if (result)
  {
    v2 = 26.0;
  }

  qword_27E1BFC00 = *&v2;
  return result;
}

uint64_t sub_23B9AAE10(uint64_t a1)
{
  result = sub_23BBDC2A8();
  v2 = 3.0;
  if (result)
  {
    v2 = 1.0;
  }

  qword_27E1BFC08 = *&v2;
  return result;
}

uint64_t sub_23B9AAE40(uint64_t a1)
{
  result = sub_23BBDC2A8();
  v2 = 15.0;
  if (result)
  {
    v2 = 16.0;
  }

  xmmword_27E1BFC10 = *&v2;
  qword_27E1BFC20 = *&v2;
  qword_27E1BFC28 = 0;
  return result;
}

uint64_t sub_23B9AAE80(uint64_t a1)
{
  result = sub_23BBDC2A8();
  v2 = 38.0;
  *&xmmword_27E1BFC30 = 0x4024000000000000;
  if ((result & 1) == 0)
  {
    v2 = 25.0;
  }

  *(&xmmword_27E1BFC30 + 1) = v2;
  qword_27E1BFC40 = 0x4024000000000000;
  qword_27E1BFC48 = *&v2;
  return result;
}

uint64_t sub_23B9AAEC8(uint64_t a1)
{
  result = sub_23BBDC2A8();
  v2 = 5.0;
  if (result)
  {
    v2 = 10.0;
  }

  qword_27E1BFC50 = *&v2;
  return result;
}

uint64_t sub_23B9AAEF8(uint64_t a1)
{
  result = sub_23BBDC2A8();
  v2 = 5.0;
  if (result)
  {
    v2 = 2.5;
  }

  qword_27E1BFC58 = *&v2;
  return result;
}

void sub_23B9AAF28(uint64_t a1)
{
  *&xmmword_27E1BFC60 = sub_23B9AAF50(a1);
  *(&xmmword_27E1BFC60 + 1) = v1;
  qword_27E1BFC70 = v2;
  unk_27E1BFC78 = v3;
}

double sub_23B9AAF50(uint64_t a1)
{
  sub_23BBDC2A8();
  sub_23BBDC2A8();
  return 25.0;
}

void sub_23B9AAFA4(uint64_t a1)
{
  sub_23B975E04();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9AB628(319);
      if (v3 <= 0x3F)
      {
        sub_23B9A389C(319, &qword_27E1991A0, &type metadata for AnyProductViewStyle);
        if (v4 <= 0x3F)
        {
          sub_23B9AB680(319);
          if (v5 <= 0x3F)
          {
            sub_23B9A389C(319, &qword_27E197E40, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_23B9A389C(319, &qword_27E1991B8, MEMORY[0x277CDF388]);
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

uint64_t sub_23B9AB0F4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_23BBDCDB8() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = (v10 & 0xFFFFFFFFFFFFFFF8) + ((*(v6 + 64) + v12 + ((v11 + 32) & ~v11) + 2) & ~v12) + 105;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v15))
    {
      v16 = *&a1[v13];
      if (!v16)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v15 > 0xFF)
    {
      v16 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v15 < 2)
    {
      goto LABEL_23;
    }
  }

  v16 = a1[v13];
  if (!a1[v13])
  {
LABEL_23:
    if ((v7 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11, v7, v5);
    }

    else
    {
      v20 = *(a1 + 1);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

LABEL_16:
  v18 = (v16 - 1) << v14;
  if (v13 >= 4)
  {
    v18 = 0;
  }

  if (v13 == 1)
  {
    v19 = *a1;
  }

  else
  {
    v19 = *a1;
  }

  return v8 + (v19 | v18) + 1;
}

void sub_23B9AB310(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_23BBDCDB8() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + ((*(v8 + 64) + v14 + ((v13 + 32) & ~v13) + 2) & ~v14) + 105;
  v16 = 8 * v15;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      bzero(a1, v15);
      if (v15 == 1)
      {
        *a1 = v18;
LABEL_33:
        switch(v17)
        {
          case 1:
            *(a1 + v15) = v19;
            return;
          case 2:
            *(a1 + v15) = v19;
            return;
          case 3:
            goto LABEL_44;
          case 4:
            *(a1 + v15) = v19;
            return;
          default:
            return;
        }
      }

      v18 &= ~(-1 << v16);
    }

    else
    {
      bzero(a1, v15);
      v19 = 1;
    }

    *a1 = v18;
    goto LABEL_33;
  }

  switch(v17)
  {
    case 1:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23B9AB5E8);
    case 4:
      *(a1 + v15) = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v9 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }
      }

      return;
  }
}

void sub_23B9AB628(uint64_t a1)
{
  if (!qword_27E199198)
  {
    type metadata accessor for Product.TaskState(255);
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27E199198);
    }
  }
}

void sub_23B9AB680(uint64_t a1)
{
  if (!qword_27E1991A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991B0, qword_23BC05400);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1991A8);
    }
  }
}

uint64_t sub_23B9AB728(uint64_t a1)
{
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  sub_23B9AD670(a1, v4 - v3);
  sub_23BBDBF58();
  return sub_23B9AD73C(a1, type metadata accessor for Product.TaskState);
}

void *sub_23B9AB7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ProductViewStyleConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
  sub_23BBDBF68();
  result = sub_23B9AB9A8(v2, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), &v17);
  v11 = *(v2 + *(a1 + 60));
  v12 = v17;
  v13 = v2 + *(a1 + 84);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v14, 0);
    result = (*(v6 + 8))(v8, v5);
    LOBYTE(v14) = v16[7];
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + v9[8]) = 0;
  *(a2 + v9[7]) = v12;
  *(a2 + 16) = v11;
  *(a2 + v9[9]) = v14;
  return result;
}

void *sub_23B9AB9A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v42 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  v13 = sub_23BBDA358();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_23BBDA928();
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v19 = type metadata accessor for DynamicProductView(0, &v49);
  if (*(a1 + v19[16]) == 1 && swift_dynamicCastMetatype())
  {
    v46 = 0;
    sub_23B9AD84C();
    result = sub_23BBDC0D8();
    v49 = result;
  }

  else
  {
    v43 = v16;
    v45 = v15;
    v21 = a1 + v19[18];
    v23 = *v21;
    v22 = *(v21 + 8);
    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    v26 = *(v21 + 32);
    if (*(v21 + 40) == 1)
    {
      v49 = *v21;
      v50 = v22;
      v51 = v25;
      v52 = v24;
      v53 = v26;
    }

    else
    {
      v37 = *(v21 + 16);
      v38 = v24;

      sub_23BBDD5A8();
      v39 = v19;
      v27 = sub_23BBDB338();
      v40 = a6;
      v28 = v27;
      v19 = v39;
      sub_23BBD9978();

      a6 = v40;
      sub_23BBDA918();
      swift_getAtKeyPath();
      v29 = sub_23B9AD3D4(v23, v22, v37, v38, v26, 0);
      (*(v44 + 8))(v18, v43, v29);
    }

    v30 = swift_dynamicCastMetatype();
    v31 = v45;
    if (v30 || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      sub_23B9AD794();
      sub_23BBDB8A8();
      v32 = sub_23B9AD7E8();
      v47 = a5;
      v48 = v32;
      swift_getWitnessTable();
      v33 = v31;
      v34 = v13;
    }

    else
    {
      v35 = v41;
      (*(v42 + 16))(v41, a1 + v19[14], a3);
      v33 = v35;
      v34 = a3;
    }

    result = sub_23BBBF5E0(v33, v34, &v49);
  }

  *a6 = v49;
  return result;
}

uint64_t sub_23B9ABDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_23BBDD368();
  OUTLINED_FUNCTION_7();
  v82 = v4;
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v80 = a1;
  v81 = v6 - v5;
  v7 = *(a1 - 8);
  a1 -= 8;
  v76 = v7;
  MEMORY[0x28223BE20](v8);
  v75 = v9;
  v70 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v61 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v60 = v13 - v12;
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v78 = v15;
  v79 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v77 = v17 - v16;
  v18 = *(a1 + 24);
  v19 = *(a1 + 40);
  type metadata accessor for StaticProductView(255, v18, v19, v20);
  sub_23BBDACE8();
  v21 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v73 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  _s16TaskViewModifierVMa(255);
  v26 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v74 = v27;
  MEMORY[0x28223BE20](v28);
  v71 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v72 = &v60 - v31;
  *&v32 = v18;
  *(&v32 + 1) = *(a1 + 32);
  *&v33 = v19;
  *(&v33 + 1) = *(a1 + 48);
  v34 = v68;
  v66 = v33;
  v85 = v32;
  v86 = v33;
  v67 = v32;
  v87 = v68;
  OUTLINED_FUNCTION_3_10();
  WitnessTable = swift_getWitnessTable();
  v93 = MEMORY[0x277CE11C0];
  OUTLINED_FUNCTION_2_7();
  v35 = swift_getWitnessTable();
  v69 = v25;
  v63 = v35;
  sub_23BBDBE18();
  v36 = v34[1];
  v65 = *v34;
  v64 = v36;
  v37 = v34 + *(a1 + 88);
  v38 = *v37;
  if (v37[8] != 1)
  {

    sub_23BBDD5A8();
    v40 = sub_23BBDB338();
    sub_23BBD9978();

    v41 = v60;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v38, 0);
    (*(v61 + 8))(v41, v62);
    if (v91)
    {
      goto LABEL_3;
    }

LABEL_5:
    v39 = MEMORY[0x277CDD0A0];
    goto LABEL_6;
  }

  if ((v38 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v39 = MEMORY[0x277CDD098];
LABEL_6:
  v43 = v77;
  v42 = v78;
  v44 = v79;
  (*(v78 + 104))(v77, *v39, v79);
  v45 = v76;
  v46 = v70;
  v47 = v80;
  (*(v76 + 16))(v70, v34, v80);
  v48 = (*(v45 + 80) + 48) & ~*(v45 + 80);
  v49 = swift_allocObject();
  v50 = v66;
  *(v49 + 16) = v67;
  *(v49 + 32) = v50;
  (*(v45 + 32))(v49 + v48, v46, v47);
  v90 = v63;
  OUTLINED_FUNCTION_3_4();
  v51 = swift_getWitnessTable();
  v52 = v81;
  sub_23BA1AC64();
  v53 = v71;
  v54 = v69;
  sub_23BA25540();

  (*(v82 + 8))(v52, v83);
  (*(v42 + 8))(v43, v44);
  v55 = (*(v73 + 8))(v54, v21);
  v56 = sub_23B9AD618(v55);
  v88 = v51;
  v89 = v56;
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  v57 = v72;
  sub_23B9D2D88();
  v58 = *(v74 + 8);
  v58(v53, v26);
  sub_23B9D2D88();
  return (v58)(v57, v26);
}

uint64_t sub_23B9AC4BC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a5;
  v65 = a1;
  v69 = a6;
  MEMORY[0x28223BE20](a1);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticProductView(0, v10, v11, v11);
  v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v54 - v15;
  v16 = type metadata accessor for ProductViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v16 - 8);
  v63 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23BBDA928();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for Product.TaskState(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23BBDCDB8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v54 - v30;
  v32 = sub_23BBDACE8();
  v67 = *(v32 - 8);
  v68 = v32;
  MEMORY[0x28223BE20](v32);
  v66 = &v54 - v33;
  v58 = a2;
  v72[0] = a2;
  v72[1] = a3;
  v60 = a4;
  v72[2] = a4;
  v72[3] = v64;
  v34 = type metadata accessor for DynamicProductView(0, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
  v35 = v65;
  sub_23BBDBF68();
  Product.TaskState.product.getter(v21);
  sub_23B9AD73C(v24, type metadata accessor for Product.TaskState);
  if (__swift_getEnumTagSinglePayload(v21, 1, v25) == 1)
  {
    sub_23B9AD6D4(v21);
    v36 = v35 + *(v34 + 72);
    v38 = *v36;
    v37 = *(v36 + 8);
    v39 = *(v36 + 32);
    if (*(v36 + 40) == 1)
    {
    }

    else
    {
      v46 = *(v36 + 16);
      v45 = *(v36 + 24);

      sub_23BBDD5A8();
      v47 = sub_23BBDB338();
      sub_23BBD9978();

      v48 = v54;
      sub_23BBDA918();
      swift_getAtKeyPath();
      v49 = sub_23B9AD3D4(v38, v37, v46, v45, v39, 0);
      (*(v55 + 8))(v48, v56, v49);
      v38 = v72[0];
    }

    v50 = v63;
    sub_23B9AB7CC(v34, v63);
    v51 = v38(v50);

    sub_23B9AD73C(v50, type metadata accessor for ProductViewStyleConfiguration);
    v72[0] = v51;
    swift_getWitnessTable();
    v44 = v66;
    sub_23BA82E14();
  }

  else
  {
    (*(v26 + 32))(v31, v21, v25);
    (*(v26 + 16))(v28, v31, v25);
    v40 = v57;
    (*(v35 + 16))(v31);
    v41 = v61;
    sub_23BBB73E0(v40, *(v35 + *(v34 + 60)), v58, v60, v61);
    swift_getWitnessTable();
    v42 = v59;
    sub_23B9D2D88();
    v43 = *(v62 + 8);
    v43(v41, v12);
    sub_23B9D2D88();
    v44 = v66;
    sub_23BA82D64();
    v43(v41, v12);
    v43(v42, v12);
    (*(v26 + 8))(v31, v25);
  }

  WitnessTable = swift_getWitnessTable();
  v71 = MEMORY[0x277CE11C0];
  v52 = v68;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v67 + 8))(v44, v52);
}

uint64_t sub_23B9ACC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = sub_23BBDA928();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_23BBDCDB8();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for Product.TaskState(0);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  sub_23BBDD308();
  v6[22] = sub_23BBDD2F8();
  v10 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9ACDF4, v10, v9);
}

uint64_t sub_23B9ACDF4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v14 = *(v0 + 88);
  v15 = *(v0 + 72);

  *(v0 + 16) = v15;
  *(v0 + 32) = v14;
  v3 = type metadata accessor for DynamicProductView(0, v0 + 16);
  sub_23B9AD670(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);
  sub_23BBDBF78();
  sub_23BBDBF68();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 64);
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 160), *(v0 + 128));
    v5 = v4 + *(v3 + 76);
    v6 = *v5;
    v7 = *(v5 + 8);

    if ((v7 & 1) == 0)
    {
      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v10 = *(v0 + 104);
      sub_23BBDD5A8();
      v11 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j__swift_release(v6);
      (*(v9 + 8))(v8, v10);
      v6 = *(v0 + 48);
    }

    if (v6)
    {
      sub_23BB65A90();
    }

    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    sub_23B9AD73C(*(v0 + 160), type metadata accessor for Product.TaskState);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23B9AD038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v31[0] = a8;
  v31[1] = a10;
  v31[2] = a11;
  v31[3] = a12;
  v21 = type metadata accessor for DynamicProductView(0, v31);
  (*(*(a10 - 8) + 32))(&a9[v21[14]], a5, a10);
  a9[v21[15]] = a6;
  a9[v21[16]] = a7;
  swift_storeEnumTagMultiPayload();
  sub_23B9AB728(v20);
  v22 = &a9[v21[18]];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 0;
  v23 = &a9[v21[19]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &a9[v21[20]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &a9[v21[21]];
  result = swift_getKeyPath();
  *v25 = result;
  v25[8] = 0;
  return result;
}

uint64_t sub_23B9AD1FC()
{
  v1 = *(v0 + 40);
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  v14 = v16;
  v17 = v1;
  v2 = type metadata accessor for DynamicProductView(0, &v15);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  (*(*(v14 - 8) + 8))(v3 + v2[14]);
  v4 = (v3 + v2[17]);
  type metadata accessor for Product.TaskState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v6 + 8))(v4);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0, &qword_23BBE7728);

  v7 = v3 + v2[18];
  sub_23B9AD3D4(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40));
  v8 = OUTLINED_FUNCTION_7_9(v2[19]);
  j__swift_release(v8);
  v9 = OUTLINED_FUNCTION_7_9(v2[20]);
  sub_23B97B450(v9, v10);
  v11 = OUTLINED_FUNCTION_7_9(v2[21]);
  sub_23B97B450(v11, v12);
  return swift_deallocObject();
}

double sub_23B9AD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }

  return result;
}

uint64_t sub_23B9AD414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for DynamicProductView(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v2[6] = v10;
  *v10 = v2;
  v10[1] = sub_23B9AD524;

  return sub_23B9ACC60(a1, v1 + v9, v4, v5, v6, v7);
}

uint64_t sub_23B9AD524()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23B9AD618(double a1)
{
  result = qword_27E1991C8;
  if (!qword_27E1991C8)
  {
    _s16TaskViewModifierVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991C8);
  }

  return result;
}

uint64_t sub_23B9AD670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Product.TaskState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9AD6D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9AD73C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23B9AD794()
{
  result = qword_27E1991D8;
  if (!qword_27E1991D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991D8);
  }

  return result;
}

unint64_t sub_23B9AD7E8()
{
  result = qword_27E1991E0;
  if (!qword_27E1991E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991E0);
  }

  return result;
}

unint64_t sub_23B9AD84C()
{
  result = qword_27E1991E8;
  if (!qword_27E1991E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991E8);
  }

  return result;
}

uint64_t sub_23B9AD8C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StaticProductView(255, *a1, a1[2], a4);
  sub_23BBDACE8();
  sub_23BBDBE28();
  _s16TaskViewModifierVMa(255);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  sub_23B9AD618(v4);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

_BYTE *storeEnumTagSinglePayload for AutomaticPickerOptionLabelVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23B9ADAA8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B9ADAE4()
{
  result = qword_27E1991F8;
  if (!qword_27E1991F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991F8);
  }

  return result;
}

uint64_t sub_23B9ADB38(uint64_t a1)
{
  if (sub_23BBDC2A8())
  {
    return 2;
  }

  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D0 != 3)
  {
    return byte_27E1A04D0 == 1;
  }

  storekit_dyld_fall_2024_os_versions();
  return dyld_program_sdk_at_least();
}

uint64_t sub_23B9ADBB0(uint64_t a1)
{
  result = sub_23BBDC2A8();
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  byte_27E1991F0 = v2;
  return result;
}

uint64_t sub_23B9ADBDC@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27E1976A8 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_27E1991F0;
  return result;
}

uint64_t sub_23B9ADC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B9ADAE4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B9ADC9C()
{
  sub_23B9ADD14();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23B9ADD14()
{
  result = qword_27E199200;
  if (!qword_27E199200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199200);
  }

  return result;
}

uint64_t sub_23B9ADD78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B99E9DC();
  *a1 = result;
  return result;
}

uint64_t sub_23B9ADDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B9ADEE0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B9ADE04()
{
  sub_23B9ADE7C();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23B9ADE7C()
{
  result = qword_27E199208;
  if (!qword_27E199208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199208);
  }

  return result;
}

unint64_t sub_23B9ADEE0()
{
  result = qword_27E199210;
  if (!qword_27E199210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199218, &qword_23BBFA470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199210);
  }

  return result;
}

void sub_23B9ADF5C(_BYTE *a1, char a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_23B9AE310(v4);
  if (v6 && (v22 = v5, v23 = v6, MEMORY[0x28223BE20](v5), v21[2] = &v22, v7 = sub_23BB78850(sub_23B9AE380, v21, &unk_284E56E98), , v7))
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v8 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v8, qword_27E1BFC88);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_23BBDD768();

    v22 = 0xD00000000000001BLL;
    v23 = 0x800000023BBE06B0;
    if (a2)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (a2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x23EEB5890](v9, v10);

    MEMORY[0x23EEB5890](46, 0xE100000000000000);
    v12 = v22;
    v11 = v23;
    v13 = sub_23BBDD578();

    v14 = sub_23BBD9988();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v22);
      *(v15 + 12) = 2082;
      v16 = sub_23BA5AB90(v12, v11, &v22);

      *(v15 + 14) = v16;
      _os_log_impl(&dword_23B970000, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
    }

    *a1 = a2 & 1;
  }

  else
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v17 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v17, qword_27E1BFC88);
    v18 = sub_23BBDD598();
    v19 = sub_23BBD9988();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v22);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_23BA5AB90(0xD00000000000003BLL, 0x800000023BBE0670, &v22);
      _os_log_impl(&dword_23B970000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }
  }
}

uint64_t sub_23B9AE310(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23BBDD018();

  return v3;
}

uint64_t sub_23B9AE3A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B9AE418(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23B9AE564(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23B9AE768);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t getEnumTagSinglePayload for InterfaceIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InterfaceIdiom(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23B9AE8FCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B9AE938()
{
  result = qword_27E1992A8;
  if (!qword_27E1992A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1992A8);
  }

  return result;
}

uint64_t sub_23B9AE99C()
{
  result = sub_23B9AE9BC();
  byte_27E1BFC80 = result;
  return result;
}

uint64_t sub_23B9AE9BC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = sub_23B9AEB74(v1);
  if (result == 7)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v3, qword_27E1BFC88);
    v4 = sub_23BBDD5A8();
    v5 = sub_23BBD9988();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v8);
      *(v6 + 12) = 2082;
      *(v6 + 14) = sub_23BA5AB90(0xD00000000000002ELL, 0x800000023BBE06D0, &v8);
      _os_log_impl(&dword_23B970000, v5, v4, "%{public}s%{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v7, -1, -1);
      MEMORY[0x23EEB6DC0](v6, -1, -1);
    }

    return 3;
  }

  return result;
}

uint64_t sub_23B9AEB74(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 7;
  }

  else
  {
    return (0x5010700040203uLL >> (8 * a1));
  }
}

uint64_t sub_23B9AEB9C()
{
  if (qword_27E1976B0 != -1)
  {
    result = swift_once();
  }

  byte_27E199220 = byte_27E1BFC80;
  return result;
}

unint64_t sub_23B9AEBF4(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  if (v1 < 7 && ((0x6Fu >> v1) & 1) != 0)
  {
    return 0x5010300040203uLL >> (8 * v1);
  }

  if (qword_27E1976B0 != -1)
  {
    swift_once();
  }

  return byte_27E1BFC80;
}

unint64_t sub_23B9AECD4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B9AEBF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B9AED04@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27E1976B8 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_27E199220;
  return result;
}

uint64_t sub_23B9AED60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B9AE938();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B9AEDC4()
{
  sub_23B9AEE00();
  sub_23BBDA938();
  return v1;
}

unint64_t sub_23B9AEE00()
{
  result = qword_27E1992B0;
  if (!qword_27E1992B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1992B0);
  }

  return result;
}

unint64_t sub_23B9AEE68()
{
  result = qword_27E1992B8[0];
  if (!qword_27E1992B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1992B8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_23B9AEF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B9AEF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for StoreButtonKind(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreButtonKind(uint64_t result, int a2, int a3)
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

__n128 PagedPickerSubscriptionStoreControlStyle.Placement.init(rawValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

unint64_t static PagedPickerSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E59810;
  result = sub_23B9AF194();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23B9AF194()
{
  result = qword_27E1993C0;
  if (!qword_27E1993C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993C0);
  }

  return result;
}

double static PagedPickerSubscriptionStoreControlStyle.Placement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static PagedPickerSubscriptionStoreControlStyle.Placement.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

void static PagedPickerSubscriptionStoreControlStyle.Placement.buttonsInBottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

void sub_23B9AF220(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

uint64_t PagedPickerSubscriptionStoreControlStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198858, &unk_23BBE5F30);
  v8 = v7[14];
  v9 = v7[15];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860, &qword_23BBEE680);
  __swift_storeEnumTagSinglePayload(a2 + v9, 1, 1, v10);
  v11 = a2 + v7[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = a2 + v7[17];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a2 + v7[18];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868, &qword_23BBEE720) + 48));
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  *v14 = sub_23B9AF484;
  v14[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198870, &qword_23BBE5FE0);
  swift_storeEnumTagMultiPayload();
  v15 = (a2 + v7[13]);
  *v15 = sub_23B9AF588;
  v15[1] = 0;
  *(a2 + v8) = 2;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = 16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198878, &qword_23BBE6010);
  v19 = (a2 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_23B99B524;
  v19[2] = v17;
  return result;
}

uint64_t sub_23B9AF484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8, &qword_23BBE91F0);
  v8 = a2 + *(v7 + 40);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  v10 = (a2 + *(v7 + 36));
  *v10 = sub_23B9D11BC;
  v10[1] = 0;
  return result;
}

uint64_t sub_23B9AF588(uint64_t a1)
{
  v2 = sub_23BBDABB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SubscriptionStoreButton(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B99B814(a1, v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v9 = &v8[v6[5]];
  v9[48] = 0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v10 = &v8[v6[6]];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 16) = 0;
  v11 = &v8[v6[7]];
  KeyPath = swift_getKeyPath();
  v17[15] = 0;
  *v11 = KeyPath;
  v11[73] = 0;
  v13 = &v8[v6[8]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v8[v6[9]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_23BBDABA8();
  sub_23B99B770(&qword_27E1988B8, type metadata accessor for SubscriptionStoreButton, &protocol conformance descriptor for SubscriptionStoreButton);
  sub_23B99B770(&qword_27E1988C0, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
  sub_23BBDB6E8();
  v15 = (*(v3 + 8))(v5, v2);
  return sub_23B99B7B8(v8, v15);
}

unint64_t sub_23B9AF844(uint64_t a1)
{
  result = sub_23B9AF86C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B9AF86C()
{
  result = qword_27E1993C8;
  if (!qword_27E1993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PagedPickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23B9AF978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
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

uint64_t sub_23B9AF9C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF9 && *(a1 + 40))
    {
      v2 = *a1 + 2147483641;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 6;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B9AFA14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483642;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_23B9AFA90()
{
  result = qword_27E1993D0;
  if (!qword_27E1993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993D0);
  }

  return result;
}

unint64_t sub_23B9AFAE4(uint64_t a1)
{
  result = sub_23B9AFB0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B9AFB0C()
{
  result = qword_27E1993D8;
  if (!qword_27E1993D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993D8);
  }

  return result;
}

uint64_t sub_23B9AFB8C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (!a4[2])
  {
    return 0;
  }

  sub_23BBDDBB8();
  OUTLINED_FUNCTION_56();
  sub_23BBA88EC(v8, v9, v10, v11);
  sub_23BBDDBF8();
  v12 = a4 + 7;
  OUTLINED_FUNCTION_41();
  v15 = v14 & ~v13;
  if (((*(a4 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v13;
  v17 = a4[6];
  while (1)
  {
    v18 = (v17 + 24 * v15);
    v19 = *v18;
    v20 = v18[1];
    if (v18[2])
    {
      break;
    }

    if ((a3 & 1) == 0 && v19 == a1 && ((v20 ^ a2) & 1) == 0)
    {
      return 1;
    }

LABEL_15:
    v15 = (v15 + 1) & v16;
    if (((*(v12 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = v19 == a1 && v20 == a2;
  if (!v21 && (sub_23BBDDA88() & 1) == 0)
  {
    goto LABEL_15;
  }

  return 1;
}

BOOL sub_23B9AFCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23BBDDBB8();
  sub_23BBDD078();
  v6 = sub_23BBDDBF8();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_23BBDDA88();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void SubscriptionOptionGroupSet.init(idType:groupedBy:label:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v48 = v34;
  v49 = v35;
  v47 = v36;
  v46 = a23;
  v45 = a24;
  type metadata accessor for NullaryOrUnaryValue(0, v24, a22, v32);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v37);
  v39 = (&v44 - v38);
  type metadata accessor for NullaryOrUnaryValue(0, v25, a21, v40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  v43 = (&v44 - v42);
  *v43 = v33;
  v43[1] = v31;
  swift_storeEnumTagMultiPayload();
  *v39 = v29;
  v39[1] = v27;
  OUTLINED_FUNCTION_16_4();
  swift_storeEnumTagMultiPayload();
  sub_23B9AFF04(v48, v49, 0, 0, v43, v39, 0, v25, v47, a21, a22, v46, v45);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9AFF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v29[0] = a8;
  v29[1] = a10;
  v29[2] = a11;
  v30 = a12;
  v31 = a13;
  v17 = type metadata accessor for SubscriptionOptionGroupSet(0, v29);
  v18 = v17[18];
  v19 = OUTLINED_FUNCTION_12_2();
  type metadata accessor for NullaryOrUnaryValue(v19, v20, a10, v21);
  OUTLINED_FUNCTION_4_1();
  (*(v22 + 32))(&a9[v18], a5);
  v23 = v17[19];
  v24 = OUTLINED_FUNCTION_12_2();
  type metadata accessor for NullaryOrUnaryValue(v24, v25, a11, v26);
  OUTLINED_FUNCTION_4_1();
  result = (*(v27 + 32))(&a9[v23], a6);
  a9[v17[20]] = a7;
  return result;
}

void SubscriptionOptionGroupSet.init<>(idType:groupedBy:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  type metadata accessor for NullaryOrUnaryValue(0, v25, v23, v29);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  v33 = (v41 - v32);
  *v33 = v30;
  v33[1] = v28;
  swift_storeEnumTagMultiPayload();
  v34 = sub_23B9B0108();
  v41[1] = 0;
  v41[2] = 0;
  v42 = 0;
  v40 = v34;
  *&v39 = v22;
  *(&v39 + 1) = a21;
  v35 = OUTLINED_FUNCTION_16_4();
  sub_23B9AFF04(v35, v36, 0, 0, v33, v37, 0, v26, v38, v24, &type metadata for AutomaticSubscriptionStoreMarketingContent, v39, v40);
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23B9B0108()
{
  result = qword_27E1993E0;
  if (!qword_27E1993E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993E0);
  }

  return result;
}

uint64_t sub_23B9B0188@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 88);
  v10 = *v9;
  v11 = MEMORY[0x277D84F90];
  if (*(v9 + 8) == 1)
  {
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v14 = sub_23B9B6460(v10, 0);
    result = (*(v6 + 8))(v8, v5, v14);
    v10 = v16[1];
  }

  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  *a2 = v15;
  a2[1] = sub_23B9B0314;
  a2[2] = 0;
  return result;
}

uint64_t sub_23B9B0314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDCDB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_23B9B0380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  *&v38 = a3;
  v31 = a1;
  v37 = a5;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  v32 = sub_23BBDA358();
  v10 = *(a2 + 40);
  v56 = a3;
  v57 = v8;
  v58 = v32;
  v59 = a4;
  v60 = v10;
  v33 = sub_23BBDC1A8();
  v35 = sub_23BBDACE8();
  v11 = sub_23BBDBE28();
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590, &qword_23BBE8050);
  v14 = sub_23BBDA358();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  v39 = v8;
  v40 = v9;
  v41 = *(a2 + 32);
  v42 = v38;
  v43 = v10;
  v38 = *(a2 + 48);
  v44 = v38;
  v21 = v34;
  v45 = v30;
  v46 = v34;
  v47 = v31;
  v31 = MEMORY[0x277CE0858];
  v22 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
  v54 = v38;
  v55 = v22;
  v30 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v51 = v38;
  v52 = v23;
  v24 = swift_getWitnessTable();
  sub_23BBDBE18();
  LOBYTE(v21) = *(v21 + *(a2 + 80));
  v50 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_23BB10FDC(0, v21, v11, v25);
  (*(v36 + 8))(v13, v11, v26);
  v27 = sub_23B97B518(&qword_27E1996A0, &qword_27E199590, &qword_23BBE8050, v31);
  v48 = v25;
  v49 = v27;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v28 = *(v15 + 8);
  v28(v17, v14);
  sub_23B9D2D88();
  return (v28)(v20, v14);
}

uint64_t sub_23B9B07EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v74 = a8;
  KeyPath = a2;
  v75 = a1;
  v82 = a9;
  v67 = *(a6 - 8);
  v83 = a10;
  MEMORY[0x28223BE20](a1);
  v76 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  v17 = sub_23BBDA358();
  v73 = a6;
  v95 = a6;
  v96 = a3;
  v81 = v17;
  v97 = v17;
  v98 = a11;
  v71 = a11;
  v99 = a7;
  v18 = sub_23BBDC1A8();
  v72 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = &v64 - v21;
  v22 = *(a4 - 8);
  MEMORY[0x28223BE20](v23);
  v66 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v65 = &v64 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v64 - v28;
  v31 = type metadata accessor for NullaryOrUnaryValue(0, a3, a4, v30);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = (&v64 - v33);
  v77 = v18;
  v80 = sub_23BBDACE8();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v64 - v35;
  v95 = a3;
  v96 = a4;
  v97 = a5;
  v98 = a7;
  v36 = a7;
  v37 = v74;
  v99 = v74;
  v100 = v83;
  v38 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, &v95);
  (*(v32 + 16))(v34, &v75[*(v38 + 72)], v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v34[1];
    v66 = *v34;
    v75 = v39;
    v40 = v73;
    v41 = (*(v67 + 16))(v76, KeyPath, v73);
    MEMORY[0x28223BE20](v41);
    *(&v64 - 8) = a3;
    *(&v64 - 7) = a4;
    *(&v64 - 6) = a5;
    *(&v64 - 5) = v40;
    *(&v64 - 4) = v36;
    *(&v64 - 3) = v37;
    v42 = v37;
    v43 = v83;
    v44 = v71;
    v63 = v71;
    KeyPath = swift_getKeyPath();
    v45 = swift_allocObject();
    v45[2] = a3;
    v45[3] = a4;
    v45[4] = a5;
    v45[5] = v40;
    v45[6] = v36;
    v45[7] = v42;
    v45[8] = v43;
    v45[9] = v44;
    v46 = v75;
    v45[10] = v66;
    v45[11] = v46;
    v47 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
    v93 = v42;
    v94 = v47;

    WitnessTable = swift_getWitnessTable();
    v62 = WitnessTable;
    v49 = v69;
    sub_23BBDC188();
    v92 = WitnessTable;
    v50 = v77;
    swift_getWitnessTable();
    v51 = v70;
    sub_23B9D2D88();
    v52 = *(v72 + 8);
    v52(v49, v50);
    sub_23B9D2D88();
    v53 = v78;
    sub_23BA82E14();

    v52(v49, v50);
    v52(v51, v50);
  }

  else
  {
    (*(v22 + 32))(v29, v34, a4);
    v54 = v65;
    v42 = v37;
    sub_23B9D2D88();
    v55 = v66;
    sub_23B9D2D88();
    v56 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
    v85 = v37;
    v86 = v56;
    v84 = swift_getWitnessTable();
    swift_getWitnessTable();
    v53 = v78;
    sub_23BA82D64();
    v57 = *(v22 + 8);
    v57(v55, a4);
    v57(v54, a4);
    v57(v29, a4);
  }

  v58 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
  v90 = v42;
  v91 = v58;
  v89 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v87 = v42;
  v88 = v59;
  v60 = v80;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v79 + 8))(v53, v60);
}

uint64_t sub_23B9B1094@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v26 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  v12 = sub_23BBDA358();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  v23(a1, v17);
  sub_23BB10F14(a1, a4, v24, a7, v25);
  (*(v9 + 8))(v11, a4);
  v20 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
  v27 = a7;
  v28 = v20;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_23B9D2D88();
  return (v21)(v19, v12);
}

uint64_t sub_23B9B1308@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v34 = a3;
  v37 = a1;
  v44 = a5;
  v8 = a2[4];
  v36 = a2[7];
  type metadata accessor for WrappedIntoUnaryVStack(255, v8, v36, a4);
  v9 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  v38 = sub_23BBDA358();
  v10 = a2[5];
  v63 = a3;
  v64 = v9;
  v65 = v38;
  v66 = a4;
  v67 = v10;
  v39 = sub_23BBDC1A8();
  v41 = sub_23BBDACE8();
  v11 = sub_23BBDBE28();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590, &qword_23BBE8050);
  v14 = sub_23BBDA358();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = a2[3];
  v45 = v9;
  v46 = v20;
  v47 = v8;
  v48 = v34;
  v21 = a2[6];
  v49 = v10;
  v50 = v21;
  v51 = v36;
  v52 = v35;
  v53 = v40;
  v54 = v37;
  WitnessTable = swift_getWitnessTable();
  v23 = MEMORY[0x277CE0858];
  v24 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
  v61 = WitnessTable;
  v62 = v24;
  v60 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v58 = WitnessTable;
  v59 = v25;
  v26 = swift_getWitnessTable();
  sub_23BBDBE18();
  v27 = v8 == &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v57 = v26;
  v28 = swift_getWitnessTable();
  v29 = sub_23BB10FDC(1, v27, v11, v28);
  (*(v42 + 8))(v13, v11, v29);
  v30 = sub_23B97B518(&qword_27E1996A0, &qword_27E199590, &qword_23BBE8050, v23);
  v55 = v28;
  v56 = v30;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v31 = *(v43 + 8);
  v31(v16, v14);
  sub_23B9D2D88();
  return (v31)(v19, v14);
}

uint64_t sub_23B9B179C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v97 = a8;
  v98 = a7;
  v86 = a4;
  v78 = a2;
  KeyPath = a1;
  v96 = a9;
  v75 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v90 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WrappedIntoUnaryVStack(255, v17, a10, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  v19 = sub_23BBDA358();
  v85 = a6;
  v110 = a6;
  v111 = a3;
  v95 = v19;
  v112 = v19;
  v113 = a11;
  v83 = a11;
  v114 = a7;
  v20 = sub_23BBDC1A8();
  v84 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v82 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v73 - v23;
  v79 = *(v18 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v76 = &v73 - v28;
  v77 = *(a5 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v88 = &v73 - v33;
  v35 = type metadata accessor for NullaryOrUnaryValue(0, a3, a5, v34);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = (&v73 - v37);
  v89 = v18;
  v91 = v20;
  v94 = sub_23BBDACE8();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v73 - v39;
  v80 = a3;
  v40 = v86;
  v110 = a3;
  v111 = v86;
  v112 = a5;
  v113 = v98;
  v114 = v97;
  v115 = a10;
  v41 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, &v110);
  (*(v36 + 16))(v38, KeyPath + *(v41 + 76), v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v38[1];
    v79 = *v38;
    v88 = v42;
    v43 = v85;
    v44 = (*(v75 + 16))(v90, v78, v85);
    MEMORY[0x28223BE20](v44);
    v45 = v80;
    *(&v73 - 8) = v80;
    *(&v73 - 7) = v40;
    *(&v73 - 6) = a5;
    *(&v73 - 5) = v43;
    v46 = v97;
    v47 = v98;
    *(&v73 - 4) = v98;
    *(&v73 - 3) = v46;
    v48 = v83;
    v72 = v83;
    KeyPath = swift_getKeyPath();
    v49 = swift_allocObject();
    v49[2] = v45;
    v49[3] = v40;
    v49[4] = a5;
    v49[5] = v43;
    v49[6] = v47;
    v49[7] = v46;
    v49[8] = a10;
    v49[9] = v48;
    v49[10] = v79;
    v49[11] = v88;

    WitnessTable = swift_getWitnessTable();
    v51 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
    v108 = WitnessTable;
    v109 = v51;
    v52 = swift_getWitnessTable();
    v71 = v52;
    v53 = v82;
    sub_23BBDC188();
    v107 = v52;
    v54 = v91;
    swift_getWitnessTable();
    v55 = v81;
    sub_23B9D2D88();
    v56 = *(v84 + 8);
    v56(v53, v54);
    sub_23B9D2D88();
    v57 = v92;
    sub_23BA82E14();

    v56(v53, v54);
    v56(v55, v54);
  }

  else
  {
    v58 = v77;
    v59 = *(v77 + 32);
    v60 = v88;
    v74 = a5;
    v59(v88, v38, a5);
    (*(v58 + 16))(v31, v60, a5);
    sub_23BB7E3AC();
    v61 = v89;
    v62 = swift_getWitnessTable();
    v63 = v76;
    sub_23B9D2D88();
    v64 = *(v79 + 8);
    v64(v26, v61);
    sub_23B9D2D88();
    v65 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
    v100 = v62;
    v101 = v65;
    v99 = swift_getWitnessTable();
    swift_getWitnessTable();
    v57 = v92;
    sub_23BA82D64();
    v64(v26, v61);
    v64(v63, v61);
    (*(v58 + 8))(v88, v74);
  }

  v66 = swift_getWitnessTable();
  v67 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
  v105 = v66;
  v106 = v67;
  v104 = swift_getWitnessTable();
  v68 = swift_getWitnessTable();
  v102 = v66;
  v103 = v68;
  v69 = v94;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v93 + 8))(v57, v69);
}

uint64_t sub_23B9B21B8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v31 = a4;
  v32 = a6;
  v29[3] = a3;
  v30 = a2;
  v33 = a7;
  v29[1] = a5;
  v29[2] = a9;
  MEMORY[0x28223BE20](a1);
  v13 = type metadata accessor for WrappedIntoUnaryVStack(0, v10, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  v17 = sub_23BBDA358();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v29 - v23;
  v30(a1, v22);
  sub_23BB7E3AC();
  WitnessTable = swift_getWitnessTable();
  sub_23BB10F14(a1, v13, v31, WitnessTable, v32);
  (*(v14 + 8))(v16, v13);
  v26 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
  v34 = WitnessTable;
  v35 = v26;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v27 = *(v18 + 8);
  v27(v20, v17);
  sub_23B9D2D88();
  return (v27)(v24, v17);
}

uint64_t sub_23B9B24A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  LODWORD(v47) = a3;
  v49 = a2;
  v50 = a4;
  v54 = a1;
  v45 = a7;
  v8 = *(a4 + 16);
  v42 = sub_23BBDD648();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v51 = &v41 - v9;
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23BBDA288();
  v43 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  MEMORY[0x28223BE20](v55);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640, &qword_23BBEDCB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - v17;
  v19 = *(a5 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v24 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v41 - v25;
  (*(v19 + 16))(v22, v54, a5, v24);
  v53 = v26;
  sub_23BBDD188();
  v54 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v27 = (v43 + 8);
  v28 = v47 & 1;
  v29 = v46++;
  v47 = (v29 + 4);
  v30 = v52;
  while (1)
  {
    sub_23BBDD688();
    if (__swift_getEnumTagSinglePayload(v18, 1, v55) == 1)
    {
      (*(v44 + 8))(v53, v54);
      v37 = v45;
      v38 = 1;
      return __swift_storeEnumTagSinglePayload(v37, v38, 1, v55);
    }

    sub_23B9BD984();
    sub_23BBDC1D8();
    sub_23B9B7448();
    sub_23BBDA298();
    v31 = *v27;
    (*v27)(v13, v30);
    if (v58[0] != 2 && (v58[0] & 1) == v28)
    {
      sub_23BBDC1D8();
      sub_23B9B74F8();
      sub_23BBDA298();
      v31(v13, v30);
      if (!v57)
      {
        (*(v44 + 8))(v53, v54);
        sub_23B9B754C(&v56);
        goto LABEL_16;
      }

      sub_23B98473C(&v56, v58);
      sub_23B9BC9FC(v58, &v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199660, &qword_23BBEF900);
      v34 = v51;
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v58);
        (*(v44 + 8))(v53, v54);
        __swift_storeEnumTagSinglePayload(v34, 1, 1, v8);
        (*(v41 + 8))(v34, v42);
        goto LABEL_16;
      }

      __swift_storeEnumTagSinglePayload(v34, 0, 1, v8);
      v35 = v48;
      (*v47)(v48, v34, v8);
      v36 = sub_23BBDCF38();
      (*v46)(v35, v8);
      __swift_destroy_boxed_opaque_existential_1(v58);
      if (v36)
      {
        break;
      }
    }

    sub_23B9B749C(v15, v32);
  }

  (*(v44 + 8))(v53, v54);
LABEL_16:
  v39 = v45;
  sub_23B9BD984();
  v37 = v39;
  v38 = 0;
  return __swift_storeEnumTagSinglePayload(v37, v38, 1, v55);
}

uint64_t sub_23B9B2B58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v86 = *(a1 - 1);
  MEMORY[0x28223BE20](a1);
  v84 = v3;
  v85 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v4 + 16);
  v5 = v97;
  v6 = *(v4 + 40);
  v7 = sub_23BBD98D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  v8 = sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  *&__src[0] = v7;
  *(&__src[0] + 1) = v97;
  *&__src[1] = v8;
  *(&__src[1] + 1) = WitnessTable;
  *&__src[2] = v6;
  sub_23BBDC1A8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590, &qword_23BBE8050);
  sub_23BBDA358();
  v10 = a1[7];
  v92 = a1[4];
  v93 = v10;
  type metadata accessor for WrappedIntoUnaryVStack(255, v92, v10, v11);
  v12 = sub_23BBDA358();
  v83 = v7;
  *&__src[0] = v7;
  *(&__src[0] + 1) = v97;
  *&__src[1] = v12;
  *(&__src[1] + 1) = WitnessTable;
  v96 = v6;
  *&__src[2] = v6;
  sub_23BBDC1A8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  sub_23BBDA358();
  swift_getTupleTypeMetadata2();
  v71 = sub_23BBDC3D8();
  v13 = sub_23BBDBE28();
  v14 = sub_23BBDD2A8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598, &qword_23BBE8058);
  v16 = swift_getWitnessTable();
  *&__src[0] = v14;
  *(&__src[0] + 1) = v97;
  *&__src[1] = v15;
  *(&__src[1] + 1) = v16;
  *&__src[2] = v6;
  v17 = sub_23BBDC1A8();
  v70 = swift_getWitnessTable();
  v113 = v70;
  v18 = swift_getWitnessTable();
  v112 = sub_23B9B5FD8();
  v19 = swift_getWitnessTable();
  *&__src[0] = v13;
  *(&__src[0] + 1) = v17;
  v80 = v17;
  v75 = v19;
  v76 = v18;
  *&__src[1] = v18;
  *(&__src[1] + 1) = v19;
  v77 = sub_23BBDAEC8();
  v20 = sub_23BBDBE28();
  v81 = *(v20 - 8);
  v82 = v20;
  MEMORY[0x28223BE20](v20);
  v78 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v79 = &v68 - v23;
  v94 = v13;
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v24);
  v90 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v95 = &v68 - v27;
  sub_23B9B0188(a1, v106);
  v87 = v106[0];
  v107 = v106[0];
  v108 = *&v106[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995E0, &qword_23BBE8078);
  sub_23B97B518(&qword_27E1995E8, &qword_27E1995E0, &qword_23BBE8078, MEMORY[0x277D840E0]);
  sub_23BBDD9B8();

  v74 = __src[0];
  v106[0] = __src[0];
  v106[1] = __src[1];
  v72 = __src[1];
  v73 = *&__src[2];
  *&v106[2] = *&__src[2];
  sub_23B9B0188(a1, __src);
  v87 = __src[0];
  v107 = __src[0];
  v108 = *&__src[1];
  v109 = sub_23B9B3630;
  v110 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995F0, &qword_23BBE8080);
  v28 = MEMORY[0x277D842F0];
  sub_23B97B518(&qword_27E1995F8, &qword_27E1995F0, &qword_23BBE8080, MEMORY[0x277D842F0]);
  v29 = sub_23BBDD8A8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199600, &qword_23BBE8088);
  v31 = swift_getWitnessTable();
  v32 = sub_23B97B518(&qword_27E199608, &qword_27E199600, &qword_23BBE8088, v28);
  sub_23BBDDAC8();

  memcpy(v106, __src, sizeof(v106));
  *&v107 = v29;
  *(&v107 + 1) = v30;
  v33 = v5;
  v108 = v31;
  v109 = v32;
  sub_23BBDD7A8();
  swift_getWitnessTable();
  v34 = v96;
  sub_23B99D750();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  *&v87 = a1;
  v41 = a1[6];
  v42 = v89;
  v68 = v41;
  *&v43 = v41;
  *(&v43 + 1) = v93;
  *&v44 = v92;
  *(&v44 + 1) = v34;
  v98 = v97;
  v99 = v44;
  v100 = v43;
  v101 = v89;
  v102 = v35;
  v103 = v37;
  v104 = v39;
  sub_23BBDBE18();
  v45 = *(v42 + 16);
  v69 = v38;
  if (v45)
  {
    v46 = *(v42 + 24);
    v47 = v36;
    v48 = v36;
    v49 = v40;
    sub_23B99E010(v48, v38, __src);
    v106[0] = __src[0];

    swift_getWitnessTable();
    v50 = sub_23BBDD1F8();

    sub_23B979500(v45, v46);
  }

  else
  {
    v47 = v36;
    v51 = v36;
    v49 = v40;
    sub_23B99E010(v51, v38, __src);
    v106[0] = __src[0];
    swift_getWitnessTable();
    v52 = sub_23BBDD2B8();
    v50 = sub_23B9B3E50(v52, v33);
  }

  (*(v91 + 16))(v90, v95, v94);
  v83 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  v53 = v85;
  v54 = v86;
  v55 = v87;
  (*(v86 + 16))(v85, v42, v87);
  v56 = (*(v54 + 80) + 96) & ~*(v54 + 80);
  v57 = swift_allocObject();
  *&v58 = v92;
  *(&v58 + 1) = v96;
  *(v57 + 32) = v58;
  *(v57 + 16) = v97;
  v59 = v69;
  v60 = v93;
  *(v57 + 48) = v68;
  *(v57 + 56) = v60;
  *(v57 + 64) = v50;
  *(v57 + 72) = v47;
  *(v57 + 80) = v59;
  *(v57 + 88) = v49;
  (*(v54 + 32))(v57 + v56, v53, v55);
  v61 = sub_23B9BD93C(&qword_27E199610, type metadata accessor for SubscriptionOptionGroupAccessorySubview, &unk_23BBFC490);

  v62 = v78;
  v63 = v94;
  sub_23BB78108(v90, sub_23B9B646C, v57, v83, v94, v80, v61, v78, v76, v75);

  (*(v91 + 8))(v95, v63);
  v105 = swift_getWitnessTable();
  v64 = v82;
  swift_getWitnessTable();
  v65 = v79;
  sub_23B9D2D88();
  v66 = *(v81 + 8);
  v66(v62, v64);
  sub_23B9D2D88();
  return (v66)(v65, v64);
}

uint64_t sub_23B9B3630@<X0>(uint64_t *a2@<X8>)
{
  result = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23B9B365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(void, void))
{
  v56 = a7;
  v72 = a4;
  v55 = a3;
  v73 = a2;
  v74 = a1;
  v68 = a9;
  v58 = a10;
  v57 = a11;
  v15 = type metadata accessor for WrappedIntoUnaryVStack(255, a7, a11, a4);
  v16 = sub_23BBD98D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588, &qword_23BBE8048);
  v61 = v15;
  v65 = sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  v91 = v16;
  v92 = a5;
  v93 = v65;
  v94 = WitnessTable;
  v95 = a8;
  v63 = sub_23BBDC1A8();
  v66 = sub_23BBDACE8();
  v64 = sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590, &qword_23BBE8050);
  v60 = sub_23BBDA358();
  v67 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = v47 - v20;
  v21 = sub_23BBDA358();
  v91 = v16;
  v92 = a5;
  v52 = v16;
  v93 = v21;
  v94 = WitnessTable;
  v51 = WitnessTable;
  v95 = a8;
  sub_23BBDC1A8();
  v49 = sub_23BBDACE8();
  v54 = sub_23BBDBE28();
  v69 = sub_23BBDA358();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v70 = v47 - v25;
  v53 = a8;
  sub_23B99E010(v73, a3, &v99);
  v97 = v99;
  v98 = v100;
  v91 = a5;
  v92 = a6;
  v93 = v56;
  v94 = a8;
  v26 = v58;
  v95 = v58;
  v96 = v57;
  v50 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, &v91);
  sub_23B9B0380(&v97, v50, v16, WitnessTable, v23);

  v27 = MEMORY[0x277CE0858];
  v48 = sub_23B97B518(&qword_27E199698, &qword_27E199588, &qword_23BBE8048, MEMORY[0x277CE0858]);
  v89 = v26;
  v90 = v48;
  v88 = swift_getWitnessTable();
  v47[1] = MEMORY[0x277CE1290];
  v28 = swift_getWitnessTable();
  v86 = v26;
  v87 = v28;
  v85 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v30 = sub_23B97B518(&qword_27E1996A0, &qword_27E199590, &qword_23BBE8050, v27);
  v83 = v29;
  v84 = v30;
  v31 = v69;
  v56 = swift_getWitnessTable();
  v32 = v23;
  sub_23B9D2D88();
  v57 = *(v71 + 8);
  v58 = v71 + 8;
  v57(v23, v31);
  sub_23B99E010(v73, v55, &v91);
  v99 = v91;
  v100 = v92;
  v33 = v59;
  sub_23B9B1308(&v99, v50, v52, v51, v59);

  v34 = swift_getWitnessTable();
  v81 = v34;
  v82 = v48;
  v80 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v78 = v34;
  v79 = v35;
  v77 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = v30;
  v36 = v60;
  v37 = swift_getWitnessTable();
  v38 = v62;
  v39 = v33;
  sub_23B9D2D88();
  v40 = v67;
  v41 = *(v67 + 8);
  v41(v39, v36);
  v42 = v70;
  v43 = v69;
  (*(v71 + 16))(v32, v70, v69);
  v91 = v32;
  (*(v40 + 16))(v39, v38, v36);
  v92 = v39;
  v99 = v43;
  v100 = v36;
  v97 = v56;
  v98 = v37;
  sub_23BB6739C(&v91, 2, &v99);
  v41(v38, v36);
  v44 = v42;
  v45 = v57;
  v57(v44, v43);
  v41(v39, v36);
  return v45(v32, v43);
}

uint64_t sub_23B9B3E50(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199678, &qword_23BBE8140);
  v4 = sub_23BBDD9E8();
  if (v4)
  {
    MEMORY[0x28223BE20](v4);
    v8[2] = a2;
    v8[5] = v5;

    sub_23B9BC864(sub_23B9BC070, v8);

    v6 = sub_23BBDD9E8();

    if (v6)
    {
      return v6;
    }
  }

  return a1;
}

uint64_t sub_23B9B3F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a6;
  v56 = a1;
  v59 = a4;
  v60 = a5;
  v58 = a3;
  v61 = a9;
  v62 = a2;
  v45 = a12;
  v44 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090);
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v48 = &v39 - v16;
  v70 = a7;
  v71 = a8;
  v17 = a8;
  v41 = a8;
  v72 = a10;
  v73 = a11;
  v74 = a12;
  v75 = a13;
  v46 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, &v70);
  v18 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v20 = &v39 - v19;
  v39 = &v39 - v19;
  v21 = sub_23BBDD2A8();
  v54 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598, &qword_23BBE8058);
  v53 = v22;
  WitnessTable = swift_getWitnessTable();
  v70 = v21;
  v71 = a7;
  v40 = a7;
  v72 = v22;
  v73 = WitnessTable;
  v74 = a11;
  v51 = sub_23BBDC1A8();
  v57 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v49 = &v39 - v25;
  v70 = v62;
  v63 = a7;
  v64 = v17;
  v26 = v44;
  v65 = v44;
  v66 = a11;
  v42 = a11;
  v27 = v45;
  v67 = v45;
  v68 = a13;
  KeyPath = swift_getKeyPath();
  v28 = v46;
  (*(v18 + 16))(v20, v55, v46);
  sub_23B9BDCE4();
  v29 = (*(v18 + 80) + 88) & ~*(v18 + 80);
  v30 = swift_allocObject();
  v31 = v41;
  *(v30 + 2) = v40;
  *(v30 + 3) = v31;
  *(v30 + 4) = v26;
  *(v30 + 5) = a11;
  *(v30 + 6) = v27;
  *(v30 + 7) = a13;
  v32 = v59;
  *(v30 + 8) = v58;
  *(v30 + 9) = v32;
  *(v30 + 10) = v60;
  (*(v18 + 32))(&v30[v29], v39, v28);
  sub_23B9BDD38();
  v33 = sub_23B9B5FD8();

  v34 = v47;
  sub_23BBDC188();
  v69 = v33;
  v35 = v51;
  swift_getWitnessTable();
  v36 = v49;
  sub_23B9D2D88();
  v37 = *(v57 + 8);
  v37(v34, v35);
  sub_23B9D2D88();
  return (v37)(v36, v35);
}

void sub_23B9B448C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v62 = a5;
  v58 = a9;
  v52 = a13;
  v50 = a12;
  v20 = *(a7 - 8);
  v55 = a8;
  v56 = v20;
  v49 = a10;
  MEMORY[0x28223BE20](a1);
  v53 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a11;
  v26 = sub_23B99DF0C(a1, a2, a3, a4, a7, MEMORY[0x277D837D0], a11);
  v54 = sub_23B9B48FC(v26);
  v27 = sub_23BBDC318();
  v60 = v28;
  v61 = v27;
  KeyPath = swift_getKeyPath();
  v57 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995B0, &qword_23BBE8060) + 36));
  v29 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995C8, &qword_23BBE8068) + 28);
  *&v63 = a7;
  *(&v63 + 1) = v55;
  *&v64 = v49;
  *(&v64 + 1) = a11;
  v65 = v50;
  v66 = v52;
  v30 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, &v63);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090);
  sub_23B9B698C();
  v55 = v30;
  sub_23B9B24A4(a6, a1, 0, v30, v31, v25);
  sub_23B9B24A4(a6, a1, 1, v30, v31, &v25[*(v23 + 28)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199630, &qword_23BBE80E0);
  v32 = (type metadata accessor for SubscriptionStoreContentConfiguration.Section(0) - 8);
  v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_23BBE7F10;
  v35 = v34 + v33;
  (*(v56 + 16))(v53, a1, a7);
  sub_23BBDD718();
  v36 = swift_allocObject();
  *(v36 + 16) = v54;
  v37 = v35 + v32[8];
  v38 = type metadata accessor for SubscriptionOptionSectionAccessorySubview(0);
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  v39 = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  __swift_storeEnumTagSinglePayload(v37 + *(v39 + 20), 1, 1, v38);
  v40 = v64;
  *v35 = v63;
  *(v35 + 16) = v40;
  *(v35 + 32) = v65;
  *(v35 + 40) = sub_23B9B6A78;
  *(v35 + 48) = v36;
  sub_23B9BD984();
  v41 = v29 + *(type metadata accessor for SubscriptionStoreContentConfiguration.Context.GroupContext(0) + 20);
  *v41 = v34;
  *(v41 + 8) = 0;
  v42 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v42);
  v43 = v58;
  *v57 = KeyPath;
  v44 = v60;
  *v43 = v61;
  v43[1] = v44;
  v45 = v43;
  v46 = swift_getKeyPath();
  v47 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199598, &qword_23BBE8058) + 36));
  sub_23B9B7294();
  *v47 = v46;
}

uint64_t sub_23B9B49BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23B9BD9DC();
  v4 = MEMORY[0x23EEB5B90](v2, &type metadata for SubscriptionStoreViewDetails.VisibleRelationships, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_23B9B9A28(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_23B9B4A78(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_23B9BDCE4();
  return sub_23BA222C0(v5);
}

uint64_t sub_23B9B4B18(uint64_t a1, uint64_t a2)
{
  v3 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  LOBYTE(a2) = sub_23B9AFCB4(v3, v4, a2);

  return a2 & 1;
}

uint64_t sub_23B9B4BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v28[0] = a8;
  v28[1] = a10;
  v28[2] = a11;
  v29 = a12;
  v30 = a13;
  v18 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, v28);
  v19 = v18[18];
  v21 = type metadata accessor for NullaryOrUnaryValue(0, a8, a10, v20);
  (*(*(v21 - 8) + 32))(&a9[v19], a5, v21);
  v22 = v18[19];
  v24 = type metadata accessor for NullaryOrUnaryValue(0, a8, a11, v23);
  (*(*(v24 - 8) + 32))(&a9[v22], a6, v24);
  a9[v18[20]] = a7;
  v25 = &a9[v18[21]];
  *v25 = swift_getKeyPath();
  v25[343] = 0;
  v26 = &a9[v18[22]];
  result = swift_getKeyPath();
  *v26 = result;
  v26[8] = 0;
  return result;
}

void SubscriptionOptionGroupSet._identifiedContent.getter()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v51 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = OUTLINED_FUNCTION_11_3();
  v48 = type metadata accessor for NullaryOrUnaryValue(v6, v7, v5, v8);
  OUTLINED_FUNCTION_7();
  v10 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v42 = &v40 - v12;
  v13 = *(v2 + 24);
  v14 = OUTLINED_FUNCTION_11_3();
  v17 = type metadata accessor for NullaryOrUnaryValue(v14, v15, v13, v16);
  OUTLINED_FUNCTION_7();
  v19 = v18;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  v23 = *(v2 + 40);
  v24 = *(v2 + 48);
  v25 = *(v2 + 56);
  v49 = v5;
  v50 = v4;
  *&v26 = v4;
  *(&v26 + 1) = v13;
  *&v27 = v5;
  v46 = v24;
  v47 = v23;
  *(&v27 + 1) = v23;
  v52[0] = v26;
  v52[1] = v27;
  v53 = v24;
  v54 = v25;
  v28 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, v52);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v40 - v31;
  v33 = v0[1];
  v41 = *v0;
  v34 = v0[3];
  v45 = v0[2];
  v43 = v33;
  v44 = v34;
  (*(v19 + 16))(v22, v0 + *(v2 + 72), v17, v30);
  v35 = v42;
  (*(v10 + 16))(v42, v0 + *(v2 + 76), v48);
  if (v13 == &type metadata for AutomaticSubscriptionOptionGroupLabel)
  {
    v36 = *(v0 + *(v2 + 80)) ^ 1;
  }

  else
  {
    v36 = 0;
  }

  *(&v39 + 1) = v46;
  *&v39 = v47;
  sub_23B9B4BB8(v41, v43, v45, v44, v22, v35, v36 & 1, v50, v32, v13, v49, v39, v25);
  OUTLINED_FUNCTION_19_2();
  swift_getWitnessTable();
  sub_23BB6BA80(v32, v28, v51);

  v37 = OUTLINED_FUNCTION_17_0();
  sub_23B9794F0(v37, v38);
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23B9B4FB8()
{
  result = qword_27E1993E8[0];
  if (!qword_27E1993E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1993E8);
  }

  return result;
}

void sub_23B9B5038(void *a1)
{
  sub_23B975E04();
  if (v2 <= 0x3F)
  {
    sub_23B9B5B84(319, &qword_27E197B10, &qword_27E197B18, qword_23BBE3DF0, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v5 = a1[2];
      type metadata accessor for NullaryOrUnaryValue(319, v5, a1[3], v3);
      if (v7 <= 0x3F)
      {
        type metadata accessor for NullaryOrUnaryValue(319, v5, a1[4], v6);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B9B5130(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 64) <= 0x10uLL)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = *(*(a3 + 32) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(v5 + 80) & 0xF8 | 7;
  v10 = v6 + ((v4 + v9 + (((*(v3 + 80) & 0xF8) + 39) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1) & ~v9) + 2;
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_13;
  }

  v13 = (a2 - 0x7FFFFFFF + ~(-1 << v11)) >> v11;
  if (v13 > 0xFFFE)
  {
    v12 = *(a1 + v10);
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  if (v13 <= 0xFE)
  {
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_13:
    v12 = *(a1 + v10);
    if (!*(a1 + v10))
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
LABEL_8:
    v7 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }

LABEL_22:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return (v10 | v14) ^ 0x80000000;
}

void sub_23B9B5310(char *a1, int a2, int a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(*(a4 + 24) - 8);
  if (*(v6 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(*(a4 + 32) - 8) + 64);
  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  v9 = *(v6 + 80) & 0xF8;
  v10 = *(*(*(a4 + 32) - 8) + 80) & 0xF8 | 7;
  v11 = v8 + ((v7 + v10 + ((v9 + 39) & ~v9 & 0x1F8) + 1) & ~v10) + 2;
  v12 = 8 * v11;
  if (a3 < 0)
  {
    if (v11 <= 3)
    {
      v14 = (a3 - 0x7FFFFFFF + ~(-1 << v12)) >> v12;
      if (v14 > 0xFFFE)
      {
        v13 = 4;
        if (a2 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }

      if (v14 < 0xFF)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14)
      {
        v13 = v15;
      }

      else
      {
        v13 = 0;
      }

      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = 1;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    v16 = a2 & 0x7FFFFFFF;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v18 = a2 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  v13 = 0;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

LABEL_27:
  switch(v13)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      goto LABEL_31;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23B9B5584);
    case 4:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        *a1 = (a2 - 1);
      }

      return;
  }
}

uint64_t sub_23B9B55C4(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(255, v3);
  OUTLINED_FUNCTION_19_2();
  return swift_getWitnessTable();
}

void sub_23B9B5610(void *a1)
{
  sub_23B975E04();
  if (v2 <= 0x3F)
  {
    sub_23B9B5B84(319, &qword_27E197B10, &qword_27E197B18, qword_23BBE3DF0, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v5 = a1[2];
      type metadata accessor for NullaryOrUnaryValue(319, v5, a1[3], v3);
      if (v7 <= 0x3F)
      {
        type metadata accessor for NullaryOrUnaryValue(319, v5, a1[4], v6);
        if (v8 <= 0x3F)
        {
          sub_23B9B5B34();
          if (v9 <= 0x3F)
          {
            sub_23B9B5B84(319, &qword_27E1994F8, &unk_27E199500, &unk_23BBE7FB8, MEMORY[0x277CDF468]);
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B9B5764(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 64) <= 0x10uLL)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = *(*(a3 + 32) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(v5 + 80) & 0xF8 | 7;
  v10 = ((((v6 + ((v4 + v9 + (((*(v3 + 80) & 0xF8) + 39) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1) & ~v9) + 1) & 0xFFFFFFFFFFFFFFF8) + 359) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 <= 3)
  {
    v11 = ((a2 - 2147483392) >> 8) + 1;
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
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 4)
  {
    v14 = *&a1[v10];
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else if (v13 == 2)
  {
    v14 = *&a1[v10];
    if (!*&a1[v10])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = a1[v10];
    if (!a1[v10])
    {
LABEL_8:
      v7 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v7) = -1;
      }

      return (v7 + 1);
    }
  }

  v15 = (v14 - 1) << (8 * v10);
  v16 = v10 > 3;
  if (v10 <= 3)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = *a1;
  }

  else
  {
    v18 = *a1;
  }

  return (v18 | v17) ^ 0x80000000;
}

void sub_23B9B58FC(_BYTE *a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  if (*(v6 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a4 + 32) - 8);
  v9 = *(v8 + 64);
  if (v9 <= 0x10)
  {
    v9 = 16;
  }

  v10 = *(v6 + 80) & 0xF8;
  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = ((((v9 + ((v7 + v11 + ((v10 + 39) & ~v10 & 0x1F8) + 1) & ~v11) + 1) & 0xFFFFFFFFFFFFFFF8) + 359) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (a3 < 0)
  {
    if (v12 <= 3)
    {
      v14 = ((a3 - 2147483392) >> 8) + 1;
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
      v13 = 1;
    }

    else
    {
      v13 = v15;
    }

    if ((a2 & 0x80000000) == 0)
    {
LABEL_8:
      switch(v13)
      {
        case 1:
          a1[v12] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_31;
        case 2:
          *&a1[v12] = 0;
          goto LABEL_30;
        case 3:
          goto LABEL_37;
        case 4:
          *&a1[v12] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_31;
        default:
LABEL_30:
          if (a2)
          {
LABEL_31:
            *a1 = a2 - 1;
          }

          break;
      }

      return;
    }
  }

  else
  {
    v13 = 0;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  v16 = (a2 >> 8) & 0x7FFFFF;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 > 3)
  {
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }

  switch(v13)
  {
    case 1:
      a1[v12] = v17;
      break;
    case 2:
      *&a1[v12] = v17;
      break;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23B9B5B0CLL);
    case 4:
      *&a1[v12] = v17;
      break;
    default:
      return;
  }
}

void sub_23B9B5B34()
{
  if (!qword_27E1994F0)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1994F0);
    }
  }
}

void sub_23B9B5B84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_44(0, a2, a3);
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8, v9);
    v11 = a5(a1, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_23B9B5BEC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_23B975E04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B9B5C64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_23B9B5D98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23B9B5F5CLL);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_23B9B5FD8()
{
  result = qword_27E1995A0;
  if (!qword_27E1995A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598, &qword_23BBE8058);
    sub_23B9B6090();
    sub_23B97B518(&qword_27E1995D0, &qword_27E1995D8, &qword_23BBE8070, MEMORY[0x277CE0858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1995A0);
  }

  return result;
}

unint64_t sub_23B9B6090()
{
  result = qword_27E1995A8;
  if (!qword_27E1995A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0, &qword_23BBE8060);
    sub_23B9B6148();
    sub_23B97B518(&qword_27E1995C0, &qword_27E1995C8, &qword_23BBE8068, MEMORY[0x277CE0858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1995A8);
  }

  return result;
}

unint64_t sub_23B9B6148()
{
  result = qword_27E1995B8;
  if (!qword_27E1995B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1995B8);
  }

  return result;
}

uint64_t sub_23B9B61D4()
{
  v1 = *(v0 + 24);
  v20[0] = *(v0 + 16);
  v20[1] = v1;
  v2 = *(v0 + 48);
  v19 = *(v0 + 32);
  v21 = v19;
  v22 = v2;
  v3 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, v20);
  OUTLINED_FUNCTION_57();
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);

  v6 = v0 + v5;

  if (*(v0 + v5 + 16))
  {
  }

  v7 = v6 + v3[18];
  v8 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for NullaryOrUnaryValue(v8, v9, v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v11 + 8))(v7, v1);
  }

  v12 = v6 + v3[19];
  v13 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for NullaryOrUnaryValue(v13, v14, v19, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v16 + 8))(v12, v19);
  }

  v17 = v6 + v3[21];
  if (*(v17 + 343))
  {

    if (*(v17 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v17 + 16));
    }

    if (*(v17 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((v17 + 56));
    }

    if (*(v17 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1((v17 + 96));
    }

    if (*(v17 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1((v17 + 136));
    }

    if (*(v17 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1((v17 + 176));
    }

    if (*(v17 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v17 + 224));
    }

    if (*(v17 + 280) >= 4uLL)
    {

      if (*(v17 + 312))
      {
      }
    }
  }

  else
  {
  }

  sub_23B9B6460(*(v6 + v3[22]), *(v6 + v3[22] + 8));
  return swift_deallocObject();
}

double sub_23B9B6460(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

void sub_23B9B651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_61();
  a27 = v29;
  a28 = v30;
  v31 = *(v28 + 24);
  a13 = *(v28 + 16);
  a14 = v31;
  v32 = *(v28 + 48);
  v52 = *(v28 + 32);
  a15 = v52;
  a16 = v32;
  v33 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, &a13);
  OUTLINED_FUNCTION_57();
  v35 = (*(v34 + 80) + 88) & ~*(v34 + 80);
  v53 = *(v36 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090);
  OUTLINED_FUNCTION_7();
  v38 = *(v37 + 80);

  v39 = v28 + v35;

  if (*(v28 + v35 + 16))
  {
  }

  v40 = v39 + v33[18];
  v41 = OUTLINED_FUNCTION_12_2();
  type metadata accessor for NullaryOrUnaryValue(v41, v42, v31, v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v44 + 8))(v40, v31);
  }

  v45 = v39 + v33[19];
  v46 = OUTLINED_FUNCTION_12_2();
  type metadata accessor for NullaryOrUnaryValue(v46, v47, v52, v48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v49 + 8))(v45, v52);
  }

  v50 = v39 + v33[21];
  if (*(v50 + 343))
  {

    if (*(v50 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v50 + 16));
    }

    if (*(v50 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((v50 + 56));
    }

    if (*(v50 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1((v50 + 96));
    }

    if (*(v50 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1((v50 + 136));
    }

    if (*(v50 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1((v50 + 176));
    }

    if (*(v50 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1((v50 + 224));
    }

    if (*(v50 + 280) >= 4uLL)
    {

      if (*(v50 + 312))
      {
      }
    }
  }

  else
  {
  }

  sub_23B9B6460(*(v39 + v33[22]), *(v39 + v33[22] + 8));
  sub_23BBDAA98();
  OUTLINED_FUNCTION_4_1();
  (*(v51 + 8))(v28 + ((v35 + v53 + v38) & ~v38));

  swift_deallocObject();
  OUTLINED_FUNCTION_60();
}

void sub_23B9B683C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v17[0] = v2[2];
  v4 = v17[0];
  v17[1] = v5;
  v17[2] = v6;
  v17[3] = v7;
  v17[4] = v8;
  v17[5] = v9;
  v10 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView(0, v17);
  OUTLINED_FUNCTION_25_0(v10);
  v12 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618, &unk_23BBE8090) - 8);
  sub_23B9B448C(a1, v2[8], v2[9], v2[10], v2 + v12, v2 + ((v12 + v14 + *(v15 + 80)) & ~*(v15 + 80)), v4, v5, a2, v6, v7, v8, v9);
}

unint64_t sub_23B9B698C()
{
  result = qword_27E199620;
  if (!qword_27E199620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199618, &unk_23BBE8090);
    sub_23B9BD93C(&qword_27E199628, MEMORY[0x277CE0150], MEMORY[0x277CE0168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199620);
  }

  return result;
}

uint64_t sub_23B9B6A40()
{

  return swift_deallocObject();
}

uint64_t sub_23B9B6AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a1;
  v23[1] = a6;
  v9 = sub_23BBDD648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v15, a2, a5, v18);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a4);
    (*(v16 + 32))(v20, v12, a4);
    LOBYTE(v15) = sub_23BBDCEC8();
    (*(v16 + 8))(v20, a4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a4);
    (*(v10 + 8))(v12, v9);
    sub_23B9BD7C8();
    swift_allocError();
    swift_willThrow();
  }

  return v15 & 1;
}

uint64_t sub_23B9B6D5C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);
  return sub_23B9B6AB8(v7, v9, a3, v5, v8, v6) & 1;
}

uint64_t sub_23B9B6DE8()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDC208();
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_17_0();

  return v1(v0);
}

void sub_23B9B6E40()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5_4();
  sub_23B9BDCE4();
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_51();
  }

  else
  {
    sub_23BBDD5A8();
    v1 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4(v1, &dword_23B970000, v2, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v3, v4, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    v5 = OUTLINED_FUNCTION_16_4();
    v6(v5);
  }
}

void sub_23B9B6FC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40();
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_4();
  sub_23B9BDCE4();
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_51();
  }

  else
  {
    sub_23BBDD5A8();
    v3 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4(v3, &dword_23B970000, v4, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v5, v6, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    v7 = OUTLINED_FUNCTION_16_4();
    v8(v7);
  }
}

void sub_23B9B7118()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_40();
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v3);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_32();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1(0);
    OUTLINED_FUNCTION_4_1();
    (*(v7 + 32))(v0, v2);
  }

  else
  {
    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4(v8, &dword_23B970000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    v12 = OUTLINED_FUNCTION_16_4();
    v13(v12);
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23B9B7294()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  sub_23B9BDCE4();
  if (v6[343] == 1)
  {
    memcpy(v1, v6, 0x157uLL);
  }

  else
  {
    sub_23BBDD5A8();
    v3 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    v4 = OUTLINED_FUNCTION_46();
    v5(v4);
  }

  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23B9B7448()
{
  result = qword_27E199648;
  if (!qword_27E199648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199648);
  }

  return result;
}

uint64_t sub_23B9B749C(uint64_t a1, double a2)
{
  v3 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23B9B74F8()
{
  result = qword_27E199650;
  if (!qword_27E199650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199650);
  }

  return result;
}

uint64_t sub_23B9B754C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199658, &unk_23BBE8120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23B9B76A0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  sub_23B9BDCE4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B9BDD38();
  }

  else
  {
    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4(v10, &dword_23B970000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    (*(v7 + 8))(v0, v5);
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9B78A0(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_4();
  result = sub_23B9BDCE4();
  if (v13 == 1)
  {
    *v1 = v10;
    v1[1] = v11;
    v1[2] = v12;
  }

  else
  {
    sub_23BBDD5A8();
    v4 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4(v4, &dword_23B970000, v5, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v6, v7, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    v8 = OUTLINED_FUNCTION_16_4();
    return v9(v8);
  }

  return result;
}

void sub_23B9B7A08()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_58();
  v3 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B9BD984();
  }

  else
  {
    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4(v8, &dword_23B970000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    (*(v5 + 8))(v0, v3);
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23B9B7B8C()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0, &unk_23BBED420);
    v7 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_5();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B7C5C()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &qword_27E199748, &unk_23BBE8210);
  OUTLINED_FUNCTION_24_2();
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(MEMORY[0x277CDD330], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B7D34()
{
  OUTLINED_FUNCTION_21_2();
  if (v3)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199680, &qword_23BBE8148);
    v9 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_12_5();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_23B9B7E08()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E1997A8, &unk_23BBE8320);
  v8 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for SubscriptionComparator.Compared(v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for SubscriptionComparator.Compared, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B7EE0()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E199708, &unk_23BBE81C8);
  OUTLINED_FUNCTION_24_2();
  sub_23BBDCC88();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(MEMORY[0x277CDD2B8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B7FB8()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &qword_27E1996B8, &qword_23BBE8180);
  v8 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for Subscription(v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for Subscription, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B8090()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &qword_27E199630, &qword_23BBE80E0);
  v8 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for SubscriptionStoreContentConfiguration.Section(v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for SubscriptionStoreContentConfiguration.Section, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B8168()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E199728, &unk_23BBE81F0);
  v8 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for SubscriptionStoreContentConfiguration(v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for SubscriptionStoreContentConfiguration, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}