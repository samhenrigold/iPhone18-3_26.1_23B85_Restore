id sub_227BD63E8()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t AppPurchaseHistoryProvider.__allocating_init(purchaseHistoryStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AppPurchaseHistoryProvider.fetch()()
{
  OUTLINED_FUNCTION_6();
  v1[19] = v2;
  v1[20] = v0;
  v1[21] = *(type metadata accessor for PurchaseHistoryGame(0) - 8);
  v1[22] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8530, &qword_227D59700);
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227BD6588, 0, 0);
}

uint64_t sub_227BD6588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = [objc_opt_self() ams:*MEMORY[0x277CEE160] sharedAccountStoreForMediaType:?];
  v14[26] = v15;
  v16 = [v15 ams_activeiTunesAccount];
  v14[27] = v16;
  if (v16)
  {
    v17 = v16;
    v18 = [v16 ams_DSID];
    if (v18)
    {
      v19 = v18;
      v20 = v14[24];
      v21 = v14[25];
      v22 = v14[23];
      v23 = v14[20];
      v24 = [v18 longLongValue];

      v39 = *(v23 + 16);
      v25 = [objc_allocWithZone(MEMORY[0x277CEC418]) init];
      v14[28] = v25;
      [v25 setAccountID_];
      [v25 setIsFirstParty_];
      [v25 setIsPreorder_];
      [v25 setIncludeArcade_];
      [v25 setSupportsCurrentDevice_];
      sub_227B0F360(0, &qword_27D7E8568, 0x277CCABB0);
      v26 = sub_227D4D4B8();
      [v25 setGenreID_];

      [v25 setProperties_];
      [v25 setIsHidden_];
      v14[2] = v14;
      v14[7] = v14 + 18;
      v14[3] = sub_227BD6980;
      swift_continuation_init();
      v14[17] = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8540, &unk_227D59708);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D4D288();
      (*(v20 + 32))(boxed_opaque_existential_1, v21, v22);
      v14[10] = MEMORY[0x277D85DD0];
      v14[11] = 1107296256;
      v14[12] = sub_227BD6E70;
      v14[13] = &block_descriptor_1;
      [v39 executeQuery:v25 withResultHandler:?];
      (*(v20 + 8))(boxed_opaque_existential_1, v22);

      return MEMORY[0x282200938](v14 + 2, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_227BD7B74();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
  }

  else
  {
    sub_227BD7B74();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_18();

  return v37();
}

uint64_t sub_227BD6980()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_227BD6DCC;
  }

  else
  {
    v2 = sub_227BD6A8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227BD6A8C()
{
  v1 = *(v0 + 144);
  v2 = sub_227B4BF3C(v1);
  v3 = 0;
  v41 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v2 == v3)
    {
      v32 = v42[27];
      v33 = v42[28];
      v34 = v42[26];
      v35 = v42[19];

      v36 = sub_227BD736C(v41);

      *v35 = v36;
      v35[1] = v41;

      OUTLINED_FUNCTION_18();

      return v37();
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x22AAA63D0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = [v4 bundleID];
    v8 = sub_227D4CFA8();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = v42[22];
      v13 = [v5 bundleID];
      v14 = sub_227D4CFA8();
      v16 = v15;

      sub_227BD6FCC(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v38 = v14;
      v40 = v16;
      result = sub_227B2664C(v14, v16);
      if (__OFADD__(*(v41 + 16), (v18 & 1) == 0))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v19 = result;
      v39 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8548, &qword_227D59718);
      if (sub_227D4D7C8())
      {
        v20 = v40;
        v21 = sub_227B2664C(v38, v40);
        v23 = v39;
        if ((v39 & 1) != (v22 & 1))
        {
          goto LABEL_27;
        }

        v19 = v21;
      }

      else
      {
        v20 = v40;
        v23 = v39;
      }

      if (v23)
      {
        OUTLINED_FUNCTION_14_8();
        sub_227BD7C58(v24, v25);
      }

      else
      {
        *(v41 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        v26 = (*(v41 + 48) + 16 * v19);
        *v26 = v38;
        v26[1] = v20;
        OUTLINED_FUNCTION_14_8();
        result = sub_227BD7BF4(v27, v28);
        v29 = *(v41 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_31;
        }

        *(v41 + 16) = v31;
      }

      v3 = v6;
    }

    else
    {

      ++v3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:

  return sub_227D4DAE8();
}

uint64_t sub_227BD6DCC(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  OUTLINED_FUNCTION_18();

  return v5();
}

void sub_227BD6E70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_227BD6F34(v4, v6);
  }

  else
  {
    sub_227B0F360(0, &qword_27D7E8560, 0x277CEC410);
    v5 = sub_227D4D1C8();

    sub_227BD6F80(v4, v5);
  }
}

uint64_t sub_227BD6FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = [v1 bundleID];
  sub_227D4CFA8();

  v14[1] = [v2 storeItemID];
  sub_227D4DA38();
  sub_227D4A688();
  (*(v6 + 16))(a1, v9, v4);
  v11 = [v2 datePurchased];
  v12 = type metadata accessor for PurchaseHistoryGame(0);
  sub_227D49278();

  LOBYTE(v11) = [v2 isHiddenFromSpringboard];
  result = (*(v6 + 8))(v9, v4);
  *(a1 + *(v12 + 24)) = v11;
  return result;
}

uint64_t AppPurchaseHistoryProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_227BD71E8()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227BD7280;

  return AppPurchaseHistoryProvider.fetch()();
}

uint64_t sub_227BD7280()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227BD736C(uint64_t a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = v31 - v3;
  v4 = type metadata accessor for PurchaseHistoryGame(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8570, &qword_227D59BB0);
  result = sub_227D4D818();
  v7 = result;
  v8 = 0;
  v40 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = result + 64;
  v33 = v2 + 16;
  v38 = v2;
  v31[1] = v2 + 32;
  v34 = result;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v41 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(v40 + 56);
      v21 = (*(v40 + 48) + 16 * v19);
      v22 = v21[1];
      v42 = *v21;
      v23 = v35;
      sub_227BD7AB4(v20 + *(v36 + 72) * v19, v35);
      v25 = v37;
      v24 = v38;
      v26 = v39;
      (*(v38 + 16))(v37, v23, v39);
      sub_227D4CE58();
      sub_227BD7B18(v23);
      *(v32 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v7 = v34;
      v27 = (*(v34 + 48) + 16 * v19);
      *v27 = v42;
      v27[1] = v22;
      result = (*(v24 + 32))(*(v7 + 56) + *(v24 + 72) * v19, v25, v26);
      v28 = *(v7 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v7 + 16) = v30;
      v14 = v41;
      if (!v41)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_227BD7660()
{
  result = qword_27D7F97D0;
  if (!qword_27D7F97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F97D0);
  }

  return result;
}

unint64_t sub_227BD76B4()
{
  result = qword_27D7E84E0;
  if (!qword_27D7E84E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84D8, &unk_227D596C8);
    sub_227BD790C(&qword_280E7B838, MEMORY[0x277D0D500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E84E0);
  }

  return result;
}

unint64_t sub_227BD775C()
{
  result = qword_27D7E84F0;
  if (!qword_27D7E84F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84E8, &qword_227D596D8);
    sub_227BD7A6C(&qword_27D7E84F8, type metadata accessor for PurchaseHistoryGame, &protocol conformance descriptor for PurchaseHistoryGame);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E84F0);
  }

  return result;
}

uint64_t type metadata accessor for PurchaseHistoryGame(uint64_t a1)
{
  result = qword_27D7F9B60;
  if (!qword_27D7F9B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_227BD7864()
{
  result = qword_27D7E8508;
  if (!qword_27D7E8508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84D8, &unk_227D596C8);
    sub_227BD790C(&qword_280E7B830, MEMORY[0x277D0D520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8508);
  }

  return result;
}

uint64_t sub_227BD790C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6888, &unk_227D4E630);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227BD795C()
{
  result = qword_27D7E8510;
  if (!qword_27D7E8510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E84E8, &qword_227D596D8);
    sub_227BD7A6C(&qword_27D7E8518, type metadata accessor for PurchaseHistoryGame, &protocol conformance descriptor for PurchaseHistoryGame);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8510);
  }

  return result;
}

unint64_t sub_227BD7A18()
{
  result = qword_27D7F97D8[0];
  if (!qword_27D7F97D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F97D8);
  }

  return result;
}

uint64_t sub_227BD7A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227BD7AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseHistoryGame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227BD7B18(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseHistoryGame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227BD7B74()
{
  result = qword_27D7E8538;
  if (!qword_27D7E8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8538);
  }

  return result;
}

uint64_t sub_227BD7BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseHistoryGame(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227BD7C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseHistoryGame(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_227BD7CC0()
{
  result = qword_27D7E8550;
  if (!qword_27D7E8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E8550);
  }

  return result;
}

uint64_t sub_227BD7D14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_227BD7D54(uint64_t result, int a2, int a3)
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

void sub_227BD7DC8(uint64_t a1)
{
  sub_227BD7E54(319);
  if (v1 <= 0x3F)
  {
    sub_227D492A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227BD7E54(uint64_t a1)
{
  if (!qword_280E7B6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8558, &qword_227D607E0);
    v1 = sub_227D4A928();
    if (!v2)
    {
      atomic_store(v1, &qword_280E7B6A0);
    }
  }
}

_BYTE *sub_227BD7F20(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchaseHistoryData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227BD80D4()
{
  result = qword_27D7F9C70[0];
  if (!qword_27D7F9C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F9C70);
  }

  return result;
}

unint64_t sub_227BD812C()
{
  result = qword_27D7F9E80[0];
  if (!qword_27D7F9E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F9E80);
  }

  return result;
}

unint64_t sub_227BD8184()
{
  result = qword_27D7F9F90;
  if (!qword_27D7F9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7F9F90);
  }

  return result;
}

unint64_t sub_227BD81DC()
{
  result = qword_27D7F9F98[0];
  if (!qword_27D7F9F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7F9F98);
  }

  return result;
}

unint64_t sub_227BD8234()
{
  result = qword_27D7FA020;
  if (!qword_27D7FA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7FA020);
  }

  return result;
}

unint64_t sub_227BD828C()
{
  result = qword_27D7FA028[0];
  if (!qword_27D7FA028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FA028);
  }

  return result;
}

uint64_t sub_227BD8304()
{
  OUTLINED_FUNCTION_6();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[11] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227BD8390(uint64_t a1)
{
  v1[12] = sub_227D4A6A8();
  v1[13] = v2;
  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v1;
  v3[1] = sub_227BD8494;

  return sub_227CACB7C();
}

uint64_t sub_227BD8494()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_227BDE69C;
  }

  else
  {
    v4 = sub_227BD85A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227BD85A0()
{
  v1 = *(v0[10] + 96);
  v0[15] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[16] = *(*v1 + 96);
  v0[17] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BD85DC, v1);
}

uint64_t sub_227BD85DC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 144) = (*(v0 + 128))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227BD8640()
{
  v1 = sub_227BD8C70(v0[12], v0[13], v0[18]);
  v0[19] = v1;

  if (v1)
  {
    v2 = *v1 + 392;
    v0[20] = *v2;
    v0[21] = v2 & 0xFFFFFFFFFFFFLL | 0xDD5F000000000000;

    return MEMORY[0x2822009F8](sub_227BD87AC, v1, 0);
  }

  else
  {
    v3 = v0[11];
    v4 = sub_227D4A958();
    OUTLINED_FUNCTION_57_1(v3, v5, v6, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
    OUTLINED_FUNCTION_8_9(&qword_27D7E6AA0);
    OUTLINED_FUNCTION_6_9(&qword_27D7E6AB8);
    sub_227D4A948();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227BD87AC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 176) = (*(v0 + 160))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227BD8810()
{
  v1 = *(v0 + 80);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_227BD8940;

  return v6(v0 + 16, v2, v3);
}

uint64_t sub_227BD8940()
{
  OUTLINED_FUNCTION_6();
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v2 = v5;
  *(v5 + 192) = v0;

  if (v0)
  {

    v3 = sub_227BD8C08;
  }

  else
  {
    v3 = sub_227BD8A50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227BD8A50()
{
  v14 = v0;
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v0 + 2;
  v6 = sub_227BD95C4(MEMORY[0x277D84FA0], sub_227BD8CC0, v5, v2);

  v13 = sub_227BD9708(v6);
  sub_227D4CE58();
  sub_227BDB3AC(&v13);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v8 = v0[11];

    v9 = sub_227D4A958();
    OUTLINED_FUNCTION_57_1(v8, v10, v11, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
    OUTLINED_FUNCTION_8_9(&qword_27D7E6AA0);
    OUTLINED_FUNCTION_6_9(&qword_27D7E6AB8);
    sub_227D4A948();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_227BD8C08()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227BD8C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_227B2664C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227BD8CC0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v7[2] = *(v2 + 16);
  v8 = *(v2 + 24);
  v4 = sub_227BD8D84(sub_227BDE4FC, v7, v3);
  v5 = sub_227BD91F0(v4);
  return sub_227BD93A8(v5);
}

void *sub_227BD8D84(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D10, &qword_227D4F958);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v8 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v36 - v11;
  v12 = sub_227D49AB8();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 64);
  v21 = (v18 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v48 = (v14 + 8);
  v39 = v8;
  v40 = (v8 + 32);
  v22 = v13;
  v50 = a3;
  result = sub_227D4CE58();
  v24 = 0;
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v45 + 16))(v16, *(v50 + 56) + *(v45 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v47(v16);
    if (v3)
    {
      (*v48)(v16, v22);
      v35 = v43;

      return v35;
    }

    v20 &= v20 - 1;
    (*v48)(v16, v22);
    if (__swift_getEnumTagSinglePayload(v7, 1, v49) == 1)
    {
      result = sub_227BDE618(v7);
    }

    else
    {
      v38 = v22;
      v26 = *v40;
      (*v40)(v41, v7, v49);
      v26(v42, v41, v49);
      v27 = v26;
      v28 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_227BDCF04(0, v28[2] + 1, 1, v28, &qword_27D7E6CE0, &qword_227D4F910, &qword_27D7E6AA8, &unk_227D4ED70);
      }

      v30 = v28[2];
      v29 = v28[3];
      v43 = v28;
      v31 = v30 + 1;
      v22 = v38;
      if (v30 >= v29 >> 1)
      {
        v36 = v30;
        v37 = v30 + 1;
        v34 = sub_227BDCF04((v29 > 1), v30 + 1, 1, v43, &qword_27D7E6CE0, &qword_227D4F910, &qword_27D7E6AA8, &unk_227D4ED70);
        v30 = v36;
        v31 = v37;
        v43 = v34;
      }

      v32 = v42;
      v33 = v43;
      v43[2] = v31;
      result = (v27)(v33 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30, v32, v49);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v43;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227BD91F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = sub_227BDE464(&qword_27D7E8578, MEMORY[0x277D0D508]);
  v11 = MEMORY[0x22AAA60B0](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v2);
      sub_227BDD23C(v8, v6);
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

uint64_t sub_227BD93A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_227BDD23C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227BD95C4(uint64_t a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;
  result = sub_227D4CE58();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
      sub_227D4CE58();
      a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_227BD9708(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_227BDB490(*(a1 + 16), 0, &qword_27D7E6CE0, &qword_227D4F910, &qword_27D7E6AA8, &unk_227D4ED70);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  v5 = sub_227BDE1C0(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_227B223D4(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_227BD9804()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_227D49AB8();
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = sub_227D49328();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v1[15] = type metadata accessor for GameServicesEnvironment(0);
  v1[16] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[17] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v1[20] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[21] = v12;
  v1[22] = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

char *sub_227BD9A48()
{
  v1 = sub_227D4CE58();
  v2 = sub_227BD91F0(v1);
  result = sub_227BD9708(v2);
  v0[23] = result;
  v4 = *(result + 2);
  v5 = MEMORY[0x277D84F90];
  v0[25] = 0;
  v0[26] = v5;
  v0[24] = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_12_6();

    OUTLINED_FUNCTION_33();

    __asm { BRAA            X2, X16 }
  }

  if (*(result + 2))
  {
    (*(v0[21] + 16))(v0[22], &result[(*(v0[21] + 80) + 32) & ~*(v0[21] + 80)], v0[20]);
    sub_227D4A718();
    v0[27] = sub_227D4A6A8();
    v0[28] = v8;
    (*(v0[18] + 8))(v0[19], v0[17]);
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_0_37(v9);
    OUTLINED_FUNCTION_33();

    return sub_227CACB7C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227BD9D08()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *(v4 + 240) = v0;

  if (v0)
  {

    v5 = sub_227BDABAC;
  }

  else
  {
    v5 = sub_227BD9E18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227BD9E18()
{
  v0[31] = v0[30];
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BD9E5C, v1);
}

uint64_t sub_227BD9E5C()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 280) = (*(v0 + 264))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227BD9EC0()
{
  if (*(v0[35] + 16))
  {
    v1 = sub_227B2664C(v0[27], v0[28]);
    v3 = v2;

    if (v3)
    {
      v4 = *(*(v0[35] + 56) + 8 * v1);
      v0[36] = v4;

      v5 = *v4 + 392;
      v0[37] = *v5;
      v0[38] = v5 & 0xFFFFFFFFFFFFLL | 0xDD5F000000000000;
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x2822009F8](v6, v7, v8);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_57_1(v0[6], v10, v11, v0[8]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v0[26];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_15_5(0, v15[2] + 1, v13, v14, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = OUTLINED_FUNCTION_15_5((v16 > 1), v17 + 1, v13, v14, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
  }

  v19 = v0[5];
  v18 = v0[6];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v15[2] = v17 + 1;
  sub_227BDD01C(v18, v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17);
  v20 = v0[31];
  v21 = v0[24];
  v22 = v0[25] + 1;
  v0[25] = v22;
  v0[26] = v15;
  v6 = v0[23];
  if (v22 == v21)
  {

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X2, X16 }
  }

  if (v22 >= *(v6 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  v25 = OUTLINED_FUNCTION_10_12();
  v26(v25);
  sub_227D4A718();
  if (v20)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    OUTLINED_FUNCTION_12_6();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X1, X16 }
  }

  v0[27] = sub_227D4A6A8();
  v0[28] = v27;
  (*(v0[18] + 8))(v0[19], v0[17]);
  v30 = swift_task_alloc();
  v0[29] = v30;
  *v30 = v0;
  OUTLINED_FUNCTION_0_37(v30);
  OUTLINED_FUNCTION_135_0();

  return sub_227CACB7C();
}

uint64_t sub_227BDA2F8()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 312) = (*(v0 + 296))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227BDA35C()
{
  v1 = v0;
  if (!*(v0[39] + 16))
  {
    goto LABEL_23;
  }

  v2 = sub_227BDB31C(v0[22]);
  v3 = v0[39];
  if ((v4 & 1) == 0)
  {
    goto LABEL_23;
  }

  v6 = v0[15];
  v5 = *(v1 + 128);
  v7 = *(v1 + 104);
  v85 = *(v1 + 112);
  v8 = *(v1 + 96);
  v9 = *(v1 + 32);
  v10 = *(*(v3 + 56) + 8 * v2);
  sub_227D4CE58();

  v11 = v9[5];
  v12 = v9[6];
  v13 = v9 + 2;
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  (*(v12 + 8))(v11, v12);
  (*(v7 + 16))(v85, v5 + *(v6 + 28), v8);
  sub_227B4EC38(v5);
  v15 = *(v10 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_40:
    v57 = *(v1 + 104);
    v58 = *(v1 + 112);
    v59 = *(v1 + 96);
    v60 = Locale.getClosestLocale(from:)(v16);

    (*(v57 + 8))(v58, v59);
    if (!v60.value._object)
    {

LABEL_25:
      v14 = (v1 + 48);
      OUTLINED_FUNCTION_57_1(*(v1 + 48), v37, v38, *(v1 + 64));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v1 + 208);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      goto LABEL_59;
    }

    if (!v14[2])
    {

      goto LABEL_24;
    }

    v61 = sub_227B2664C(v60.value._countAndFlagsBits, v60.value._object);
    v63 = v62;

    if (v63)
    {
      v64 = v14;
      v14 = (v1 + 56);
      v65 = *(v1 + 56);
      v66 = *(v1 + 80);
      v67 = *(v1 + 88);
      v69 = *(v1 + 64);
      v68 = *(v1 + 72);
      v70 = *(v68 + 16);
      v70(v66, v64[7] + *(v68 + 72) * v61, v69);

      (*(v68 + 32))(v67, v66, v69);
      v70(v65, v67, v69);
      __swift_storeEnumTagSinglePayload(v65, 0, 1, v69);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v1 + 208);
      if (v71)
      {
        goto LABEL_44;
      }

      goto LABEL_61;
    }

LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  *(v1 + 16) = MEMORY[0x277D84F90];
  sub_227D4CE58();
  sub_227B3CA88(0, v15, 0);
  v17 = *(v1 + 16);
  v21 = sub_227BB78B0(v10);
  v22 = 0;
  v23 = v10 + 64;
  v79 = v10 + 72;
  v80 = v15;
  v81 = v1;
  v82 = v10 + 64;
  if ((v21 & 0x8000000000000000) == 0)
  {
    while (v21 < 1 << *(v14 + 32))
    {
      v24 = v21 >> 6;
      if ((*(v23 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
      {
        goto LABEL_54;
      }

      if (*(v14 + 9) != v18)
      {
        goto LABEL_55;
      }

      v83 = v19;
      v86 = v18;
      v84 = v22;
      v25 = v14[6] + 16 * v21;
      v26 = v14;
      v16 = *v25;
      v14 = *(v25 + 8);
      *(v1 + 16) = v17;
      v1 = v17[2];
      v27 = v17[3];
      sub_227D4CE58();
      if (v1 >= v27 >> 1)
      {
        sub_227B3CA88((v27 > 1), v1 + 1, 1);
        v17 = v81[2];
      }

      v17[2] = v1 + 1;
      v28 = &v17[2 * v1];
      v28[4] = v16;
      v28[5] = v14;
      v29 = 1 << *(v26 + 32);
      if (v21 >= v29)
      {
        goto LABEL_56;
      }

      v23 = v82;
      v30 = *(v82 + 8 * v24);
      if ((v30 & (1 << v21)) == 0)
      {
        goto LABEL_57;
      }

      v14 = v26;
      if (*(v26 + 9) != v86)
      {
        goto LABEL_58;
      }

      v31 = v30 & (-2 << (v21 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v21 & 0x7FFFFFFFFFFFFFC0;
        v32 = v80;
        v1 = v81;
      }

      else
      {
        v33 = v24 << 6;
        v32 = v80;
        v34 = (v79 + 8 * v24);
        v35 = v24 + 1;
        v1 = v81;
        while (v35 < (v29 + 63) >> 6)
        {
          v36 = *v34++;
          v16 = v36;
          v33 += 64;
          ++v35;
          if (v36)
          {
            sub_227B3E218(v21, v86, v83 & 1);
            v29 = __clz(__rbit64(v16)) + v33;
            goto LABEL_20;
          }
        }

        sub_227B3E218(v21, v86, v83 & 1);
      }

LABEL_20:
      v22 = v84 + 1;
      if (v84 + 1 == v32)
      {

        v16 = v17;
        goto LABEL_40;
      }

      v19 = 0;
      v18 = *(v14 + 9);
      v21 = v29;
      if (v29 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v16 = OUTLINED_FUNCTION_15_5(0, v16[2] + 1, v19, v20, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
LABEL_26:
  v41 = v16[2];
  v40 = v16[3];
  v42 = v41 + 1;
  if (v41 >= v40 >> 1)
  {
    v16 = OUTLINED_FUNCTION_15_5((v40 > 1), v41 + 1, v19, v20, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
  }

  while (1)
  {
    v43 = *v14;
    v44 = *(v1 + 40);
    (*(*(v1 + 168) + 8))(*(v1 + 176), *(v1 + 160));
    v16[2] = v42;
    sub_227BDD01C(v43, v16 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41);
    v47 = *(v1 + 248);
    v48 = *(v1 + 192);
    v49 = *(v1 + 200) + 1;
    *(v1 + 200) = v49;
    *(v1 + 208) = v16;
    if (v49 == v48)
    {

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_137();

      __asm { BRAA            X2, X16 }
    }

    if (v49 < *(*(v1 + 184) + 16))
    {
      break;
    }

    __break(1u);
LABEL_61:
    v16 = OUTLINED_FUNCTION_15_5(0, v16[2] + 1, v45, v46, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
LABEL_44:
    v41 = v16[2];
    v72 = v16[3];
    v42 = v41 + 1;
    if (v41 >= v72 >> 1)
    {
      v16 = OUTLINED_FUNCTION_15_5((v72 > 1), v41 + 1, v45, v46, &qword_27D7E6D30, &qword_227D4F978, &qword_27D7E6AD8, &unk_227D4ED80);
    }

    v73 = *(v1 + 88);
    v75 = *(v1 + 64);
    v74 = *(v1 + 72);

    (*(v74 + 8))(v73, v75);
  }

  v52 = OUTLINED_FUNCTION_10_12();
  v53(v52);
  sub_227D4A718();
  if (v47)
  {
    (*(*(v1 + 168) + 8))(*(v1 + 176), *(v1 + 160));

    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  *(v1 + 216) = sub_227D4A6A8();
  *(v1 + 224) = v54;
  (*(*(v1 + 144) + 8))(*(v1 + 152), *(v1 + 136));
  v76 = swift_task_alloc();
  *(v1 + 232) = v76;
  *v76 = v1;
  OUTLINED_FUNCTION_0_37(v76);
  OUTLINED_FUNCTION_137();

  return sub_227CACB7C();
}

uint64_t sub_227BDABAC()
{
  v0[31] = 0;
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BD9E5C, v1);
}

uint64_t sub_227BDABEC(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_227D49F28();
  OUTLINED_FUNCTION_9();
  v52 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = sub_227D49918();
  OUTLINED_FUNCTION_9();
  v53 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = sub_227D49B58();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v24, a1, v19);
  v25 = (*(v21 + 88))(v24, v19);
  if (v25 == *MEMORY[0x277D0CD60])
  {
    v26 = OUTLINED_FUNCTION_4_16();
    v27(v26);
    v28 = sub_227D49AC8();
    (*(*(v28 - 8) + 8))(v24, v28);
    goto LABEL_3;
  }

  if (v25 == *MEMORY[0x277D0CD48])
  {
    v31 = OUTLINED_FUNCTION_4_16();
    v32(v31);
    v34 = *v24;
    v33 = v24[1];
    if (v34 != sub_227D49848() || v33 != v35)
    {
      v29 = sub_227D4DA78();

      return v29 & 1;
    }

LABEL_3:
    v29 = 1;
    return v29 & 1;
  }

  if (v25 == *MEMORY[0x277D0CD50])
  {
    v37 = OUTLINED_FUNCTION_4_16();
    v38(v37);
    v39 = *v24;
    v40 = sub_227D49A88();
LABEL_13:
    v29 = v39 ^ v40 ^ 1;
    return v29 & 1;
  }

  if (v25 == *MEMORY[0x277D0CD70])
  {
    v41 = OUTLINED_FUNCTION_4_16();
    v42(v41);
    v43 = v53;
    (*(v53 + 32))(v18, v24, v11);
    sub_227D49AA8();
    v29 = sub_227BDB178(v18, v16, MEMORY[0x277D0CB58]);
    v44 = *(v43 + 8);
    v44(v16, v11);
    v44(v18, v11);
    return v29 & 1;
  }

  if (v25 == *MEMORY[0x277D0CD58])
  {
    v45 = OUTLINED_FUNCTION_4_16();
    v46(v45);
    v47 = v52;
    (*(v52 + 32))(v10, v24, v3);
    sub_227D49968();
    v29 = sub_227BDB178(v10, v8, MEMORY[0x277D0CF00]);
    v48 = *(v47 + 8);
    v48(v8, v3);
    v48(v10, v3);
    return v29 & 1;
  }

  if (v25 == *MEMORY[0x277D0CD68])
  {
    v49 = OUTLINED_FUNCTION_4_16();
    v50(v49);
    v39 = *v24;
    v40 = sub_227D499A8();
    goto LABEL_13;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_227D4D668();
  MEMORY[0x22AAA5DA0](0xD00000000000002CLL, 0x8000000227D769B0);
  sub_227D4D7B8();
  result = sub_227D4D7F8();
  __break(1u);
  return result;
}

uint64_t sub_227BDB178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  v3 = OUTLINED_FUNCTION_11_13();
  sub_227BDE4B4(v3, v4, v5);
  sub_227D4D148();
  sub_227D4D148();
  if (v11 == v9 && v12 == v10)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_227D4DA78();
  }

  return v7 & 1;
}

BOOL sub_227BDB248(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_227D49B58() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) != 0);
  return v7 == v8;
}

unint64_t sub_227BDB31C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  sub_227BDE464(&qword_27D7E8578, MEMORY[0x277D0D508]);
  v2 = sub_227D4CE98();

  return sub_227BDD08C(a1, v2);
}

uint64_t sub_227BDB3AC(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227B65A68();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_227BDB588(v7);
  *a1 = v3;
  return result;
}

void *sub_227BDB490(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_10_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if ((result - v14) != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227BDB588(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_227D4DA28();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
        v6 = sub_227D4D218();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_227BDBA70(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_227BDB6D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_227BDB6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v44 - v15;
  result = MEMORY[0x28223BE20](v14);
  v60 = &v44 - v17;
  v46 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v11 + 16);
    v19 = v11 + 16;
    v21 = *(v19 + 56);
    v56 = v20;
    v57 = (v19 - 8);
    v22 = (v18 + v21 * (a3 - 1));
    v51 = -v21;
    v52 = (v19 + 16);
    v23 = a1 - a3;
    v53 = v18;
    v54 = v19;
    v45 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v49 = v22;
      v50 = a3;
      v47 = v24;
      v48 = v23;
      v25 = v23;
      v26 = v58;
      while (1)
      {
        v27 = v56;
        v56(v60, v24, v10);
        v27(v26, v22, v10);
        v28 = sub_227D4A708();
        if (v5)
        {
          v43 = *v57;
          (*v57)(v58, v10);
          return (v43)(v60, v10);
        }

        v30 = v29;
        v5 = 0;
        if (v28 == sub_227D4A708() && v30 == v31)
        {

          v42 = *v57;
          (*v57)(v58, v10);
          result = (v42)(v60, v10);
          goto LABEL_16;
        }

        v33 = v25;
        v59 = 0;
        v34 = sub_227D4DA78();

        v26 = v58;
        v35 = *v57;
        (*v57)(v58, v10);
        v36 = v10;
        result = (v35)(v60, v10);
        if ((v34 & 1) == 0)
        {
          break;
        }

        if (!v53)
        {
          __break(1u);
          return result;
        }

        v37 = v33;
        v38 = *v52;
        v39 = v55;
        v40 = v36;
        (*v52)(v55, v24, v36);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v22, v39, v36);
        v22 += v51;
        v24 += v51;
        v41 = __CFADD__(v37, 1);
        v25 = v37 + 1;
        v5 = v59;
        v10 = v40;
        if (v41)
        {
          goto LABEL_16;
        }
      }

      v5 = v59;
LABEL_16:
      a3 = v50 + 1;
      v22 = &v49[v45];
      v23 = v48 - 1;
      v24 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

unint64_t sub_227BDBA70(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v153 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v8 = MEMORY[0x28223BE20](v7);
  v156 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v155 = &v149 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v159 = &v149 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v170 = &v149 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v149 - v19;
  result = MEMORY[0x28223BE20](v18);
  v154 = &v149 - v25;
  v173 = a3;
  v26 = a3[1];
  v171 = v22;
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_117:
    v4 = *v153;
    if (*v153)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_119;
    }

    goto LABEL_163;
  }

  v152 = v20;
  v169 = v24;
  v157 = v23;
  v149 = a4;
  v27 = 0;
  v164 = v22 + 16;
  v165 = (v22 + 8);
  v158 = (v22 + 32);
  v28 = MEMORY[0x277D84F90];
  v172 = v7;
  while (1)
  {
    v29 = v27++;
    if (v27 < v26)
    {
      v163 = v26;
      v30 = *v173;
      v31 = *(v22 + 72);
      v32 = *(v22 + 16);
      v32(v154, &(*v173)[v31 * v27], v7);
      v151 = v29;
      v166 = v31;
      v168 = v30;
      v162 = v32;
      v32(v152, &v30[v31 * v29], v7);
      v33 = v174;
      v34 = sub_227D4A708();
      v174 = v33;
      if (v33 || ((v36 = v34, v37 = v35, v38 = sub_227D4A708(), v174 = 0, v36 == v38) ? (v40 = v37 == v39) : (v40 = 0), v40 ? (LODWORD(v161) = 0) : (LODWORD(v161) = sub_227D4DA78()), , , v174))
      {
        v148 = *v165;
        (*v165)(v152, v7);
        (v148)(v154, v7);
      }

      v150 = v28;
      v41 = *v165;
      (*v165)(v152, v7);
      v160 = v41;
      result = (v41)(v154, v7);
      v42 = (v151 + 2);
      v43 = v166 * (v151 + 2);
      v44 = &v168[v43];
      v45 = (v166 * v27);
      v46 = &v168[v166 * v27];
      do
      {
        v4 = v42;
        v47 = v27;
        v48 = v45;
        v49 = v43;
        if (v42 >= v163)
        {
          break;
        }

        v167 = v27;
        v168 = v45;
        v50 = v43;
        v51 = v172;
        v52 = v162;
        (v162)(v170, v44, v172);
        (v52)(v169, v46, v51);
        v53 = v174;
        v54 = sub_227D4A708();
        if (v53)
        {
          v174 = v53;
          v144 = v172;
          v145 = v160;
          (v160)(v169, v172);
          (v145)(v170, v144);
        }

        v56 = v54;
        v57 = v55;
        v58 = sub_227D4A708();
        v174 = 0;
        v60 = v56 == v58 && v57 == v59;
        v61 = v60 ? 0 : sub_227D4DA78();
        v49 = v50;

        v62 = v172;
        v63 = v160;
        (v160)(v169, v172);
        result = (v63)(v170, v62);
        v64 = v161 ^ v61;
        v42 = v4 + 1;
        v47 = v167;
        v44 += v166;
        v46 += v166;
        v27 = v167 + 1;
        v48 = v168;
        v45 = &v168[v166];
        v43 = v49 + v166;
      }

      while ((v64 & 1) == 0);
      if (v161)
      {
        v29 = v151;
        v22 = v171;
        if (v4 < v151)
        {
          goto LABEL_157;
        }

        if (v151 >= v4)
        {
          v27 = v4;
          v28 = v150;
          v7 = v172;
          goto LABEL_40;
        }

        v65 = (v151 * v166);
        do
        {
          if (v29 != v47)
          {
            v66 = *v173;
            if (!*v173)
            {
              goto LABEL_161;
            }

            v67 = v172;
            v168 = *v158;
            (v168)(v156, &v65[v66], v172);
            v68 = v65 < v48 || &v65[v66] >= &v66[v49];
            if (v68)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v65 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v168)(&v48[v66], v156, v67);
          }

          ++v29;
          v48 -= v166;
          v49 -= v166;
          v65 += v166;
        }

        while (v29 < v47--);
      }

      v27 = v4;
      v22 = v171;
      v7 = v172;
      v28 = v150;
      v29 = v151;
    }

LABEL_40:
    v70 = v173[1];
    if (v27 >= v70)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v27, v29))
    {
      goto LABEL_153;
    }

    if (v27 - v29 >= v149)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v29, v149))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      return result;
    }

    if (&v29[v149] >= v70)
    {
      v71 = v173[1];
    }

    else
    {
      v71 = &v29[v149];
    }

    if (v71 < v29)
    {
      goto LABEL_156;
    }

    if (v27 != v71)
    {
      v150 = v28;
      v115 = *v173;
      v116 = *(v22 + 72);
      v117 = *(v22 + 16);
      v118 = &(*v173)[v116 * (v27 - 1)];
      v4 = -v116;
      v151 = v29;
      v119 = v29 - v27;
      v168 = v115;
      v160 = v71;
      v161 = v116;
      v120 = &v115[v27 * v116];
      do
      {
        v166 = v118;
        v167 = v27;
        v162 = v120;
        v163 = v119;
        while (1)
        {
          v117(v159, v120, v7);
          v117(v157, v118, v7);
          v121 = v174;
          v122 = sub_227D4A708();
          v174 = v121;
          if (v121)
          {
            v146 = *v165;
            v147 = v172;
            (*v165)(v157, v172);
            (v146)(v159, v147);
          }

          v124 = v122;
          v125 = v123;
          v126 = sub_227D4A708();
          v174 = 0;
          if (v124 == v126 && v125 == v127)
          {

            v134 = *v165;
            v7 = v172;
            (*v165)(v157, v172);
            (v134)(v159, v7);
            goto LABEL_114;
          }

          v129 = sub_227D4DA78();

          v130 = *v165;
          v131 = v172;
          (*v165)(v157, v172);
          result = (v130)(v159, v131);
          if ((v129 & 1) == 0)
          {
            break;
          }

          if (!v168)
          {
            goto LABEL_160;
          }

          v132 = *v158;
          v133 = v155;
          v7 = v172;
          (*v158)(v155, v120, v172);
          swift_arrayInitWithTakeFrontToBack();
          (v132)(v118, v133, v7);
          v118 += v4;
          v120 = &v4[v120];
          v68 = __CFADD__(v119++, 1);
          if (v68)
          {
            goto LABEL_114;
          }
        }

        v7 = v172;
LABEL_114:
        v27 = v167 + 1;
        v118 = v166 + v161;
        v119 = v163 - 1;
        v120 = &v162[v161];
      }

      while (v167 + 1 != v160);
      v27 = v160;
      v28 = v150;
      v29 = v151;
    }

LABEL_49:
    if (v27 < v29)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v73 = *(v28 + 16);
    v72 = *(v28 + 24);
    v74 = v73 + 1;
    v4 = v29;
    if (v73 >= v72 >> 1)
    {
      result = sub_227B63228((v72 > 1), v73 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v74;
    v75 = v28 + 32;
    v76 = (v28 + 32 + 16 * v73);
    *v76 = v4;
    v76[1] = v27;
    v168 = *v153;
    if (!v168)
    {
      goto LABEL_162;
    }

    if (v73)
    {
      break;
    }

LABEL_98:
    v7 = v172;
    v26 = v173[1];
    v22 = v171;
    if (v27 >= v26)
    {
      goto LABEL_117;
    }
  }

  while (1)
  {
    v77 = v74 - 1;
    v78 = (v75 + 16 * (v74 - 1));
    v79 = (v28 + 16 * v74);
    if (v74 >= 4)
    {
      v84 = v75 + 16 * v74;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_140;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_141;
      }

      v91 = v79[1];
      v92 = v91 - *v79;
      if (__OFSUB__(v91, *v79))
      {
        goto LABEL_143;
      }

      v90 = __OFADD__(v82, v92);
      v93 = v82 + v92;
      if (v90)
      {
        goto LABEL_146;
      }

      if (v93 >= v87)
      {
        v107 = *v78;
        v106 = v78[1];
        v90 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v90)
        {
          goto LABEL_151;
        }

        if (v82 < v108)
        {
          v77 = v74 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

    if (v74 == 3)
    {
      v80 = *(v28 + 32);
      v81 = *(v28 + 40);
      v90 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      v83 = v90;
LABEL_69:
      if (v83)
      {
        goto LABEL_142;
      }

      v95 = *v79;
      v94 = v79[1];
      v96 = __OFSUB__(v94, v95);
      v97 = v94 - v95;
      v98 = v96;
      if (v96)
      {
        goto LABEL_145;
      }

      v99 = v78[1];
      v100 = v99 - *v78;
      if (__OFSUB__(v99, *v78))
      {
        goto LABEL_148;
      }

      if (__OFADD__(v97, v100))
      {
        goto LABEL_150;
      }

      if (v97 + v100 >= v82)
      {
        if (v82 < v100)
        {
          v77 = v74 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_84;
    }

    if (v74 < 2)
    {
      goto LABEL_144;
    }

    v102 = *v79;
    v101 = v79[1];
    v90 = __OFSUB__(v101, v102);
    v97 = v101 - v102;
    v98 = v90;
LABEL_84:
    if (v98)
    {
      goto LABEL_147;
    }

    v104 = *v78;
    v103 = v78[1];
    v90 = __OFSUB__(v103, v104);
    v105 = v103 - v104;
    if (v90)
    {
      goto LABEL_149;
    }

    if (v105 < v97)
    {
      goto LABEL_98;
    }

LABEL_91:
    if (v77 - 1 >= v74)
    {
      break;
    }

    if (!*v173)
    {
      goto LABEL_159;
    }

    v4 = v27;
    v109 = v28;
    v28 = v75 + 16 * (v77 - 1);
    v110 = *v28;
    v111 = (v75 + 16 * v77);
    v112 = v111[1];
    v113 = v174;
    sub_227BDC700(&(*v173)[*(v171 + 72) * *v28], &(*v173)[*(v171 + 72) * *v111], &(*v173)[*(v171 + 72) * v112], v168);
    v174 = v113;
    if (v113)
    {
    }

    if (v112 < v110)
    {
      goto LABEL_137;
    }

    v114 = *(v109 + 16);
    if (v77 > v114)
    {
      goto LABEL_138;
    }

    *v28 = v110;
    *(v28 + 8) = v112;
    if (v77 >= v114)
    {
      goto LABEL_139;
    }

    v74 = v114 - 1;
    result = memmove((v75 + 16 * v77), v111 + 2, 16 * (v114 - 1 - v77));
    v28 = v109;
    *(v109 + 16) = v114 - 1;
    v27 = v4;
    if (v114 <= 2)
    {
      goto LABEL_98;
    }
  }

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
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  result = sub_227B65968(v28);
  v28 = result;
LABEL_119:
  v135 = v28;
  v136 = (v28 + 16);
  for (i = *(v28 + 16); ; *v136 = i)
  {
    v28 = i - 2;
    if (i < 2)
    {
      break;
    }

    if (!*v173)
    {
      goto LABEL_158;
    }

    v138 = (v135 + 16 * i);
    v139 = *v138;
    v140 = &v136[2 * i];
    v141 = v140[1];
    v142 = v174;
    sub_227BDC700(&(*v173)[*(v171 + 72) * *v138], &(*v173)[*(v171 + 72) * *v140], &(*v173)[*(v171 + 72) * v141], v4);
    v174 = v142;
    if (v142)
    {
      break;
    }

    if (v141 < v139)
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v28 >= *v136)
    {
      goto LABEL_134;
    }

    *v138 = v139;
    v138[1] = v141;
    v143 = *v136 - i;
    if (*v136 < i)
    {
      goto LABEL_135;
    }

    i = *v136 - 1;
    result = memmove(v140, v140 + 2, 16 * v143);
  }
}

uint64_t sub_227BDC700(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v8 = MEMORY[0x28223BE20](v97);
  v88 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v86 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v86 - v13;
  result = MEMORY[0x28223BE20](v12);
  v94 = &v86 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  v19 = &a2[-a1] == 0x8000000000000000 && v18 == -1;
  if (v19)
  {
    goto LABEL_77;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_78;
  }

  v22 = &a2[-a1] / v18;
  v100 = a1;
  v99 = a4;
  v91 = v15 + 16;
  v93 = (v15 + 8);
  v23 = v20 / v18;
  if (v22 < v20 / v18)
  {
    sub_227BDCE20(a1, &a2[-a1] / v18, a4, &qword_27D7E6AA8, &unk_227D4ED70);
    v92 = &a4[v22 * v18];
    v98 = v92;
    v24 = v91;
    v89 = a3;
    while (1)
    {
      if (a4 >= v92 || a2 >= a3)
      {
        goto LABEL_75;
      }

      v26 = a1;
      v27 = *v24;
      v28 = a2;
      v29 = v97;
      (*v24)(v94, a2, v97);
      v30 = v90;
      v95 = a4;
      v27(v90, a4, v29);
      v31 = v96;
      v32 = sub_227D4A708();
      if (v31)
      {
        v96 = v31;
        v80 = *v93;
        v81 = v30;
        v82 = v97;
        (*v93)(v81, v97);
        v80(v94, v82);
        goto LABEL_75;
      }

      v34 = v32;
      v35 = v33;
      v36 = sub_227D4A708();
      v96 = 0;
      if (v34 == v36 && v35 == v37)
      {

        v45 = *v93;
        v46 = v30;
        v47 = v97;
        (*v93)(v46, v97);
        v45(v94, v47);
        v43 = v26;
      }

      else
      {
        v39 = sub_227D4DA78();

        v40 = *v93;
        v41 = v30;
        v42 = v97;
        (*v93)(v41, v97);
        v40(v94, v42);
        v43 = v26;
        if (v39)
        {
          a2 = &v28[v18];
          v44 = v26 < v28 || v26 >= a2;
          v24 = v91;
          if (v44)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v26 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v95;
          a3 = v89;
          goto LABEL_41;
        }
      }

      a4 = (v95 + v18);
      v48 = v43 < v95 || v43 >= a4;
      a2 = v28;
      v24 = v91;
      if (v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v89;
      }

      else
      {
        a3 = v89;
        if (v43 != v95)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v99 = a4;
LABEL_41:
      a1 = v43 + v18;
      v100 = a1;
    }
  }

  sub_227BDCE20(a2, v20 / v18, a4, &qword_27D7E6AA8, &unk_227D4ED70);
  v49 = &a4[v23 * v18];
  v50 = -v18;
  v51 = v49;
  v52 = v91;
  v87 = a1;
  v94 = v50;
  v95 = a4;
LABEL_43:
  v90 = a2;
  v53 = &a2[v50];
  v86 = v51;
  v54 = v51;
  v55 = v88;
  while (1)
  {
    if (v49 <= v95)
    {
      v100 = v90;
      v98 = v54;
      goto LABEL_75;
    }

    if (v90 <= a1)
    {
      v100 = v90;
      v83 = v86;
      goto LABEL_74;
    }

    v89 = v54;
    v91 = v49;
    v56 = v49 + v50;
    v57 = *v52;
    v58 = v97;
    (*v52)(v92, v49 + v50, v97);
    v59 = v53;
    v60 = v58;
    v61 = v52;
    v57(v55, v53, v60);
    v62 = v96;
    v63 = sub_227D4A708();
    if (v62)
    {
      break;
    }

    v65 = v63;
    v66 = v64;
    v67 = sub_227D4A708();
    v96 = 0;
    if (v65 == v67 && v66 == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = sub_227D4DA78();
    }

    v71 = &v94[a3];
    v72 = *v93;
    v73 = v55;
    v74 = v97;
    (*v93)(v73, v97);
    v72(v92, v74);
    if (v70)
    {
      v76 = a3 < v90 || v71 >= v90;
      v52 = v61;
      v77 = v71;
      v78 = v59;
      if (v76)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v59;
        v51 = v89;
        a1 = v87;
        v50 = v94;
        v49 = v91;
        a3 = v77;
      }

      else
      {
        v51 = v89;
        v19 = a3 == v90;
        a2 = v59;
        a1 = v87;
        v50 = v94;
        v49 = v91;
        a3 = v77;
        if (!v19)
        {
          v79 = v89;
          swift_arrayInitWithTakeBackToFront();
          v49 = v91;
          a2 = v78;
          v51 = v79;
        }
      }

      goto LABEL_43;
    }

    v75 = a3 < v91 || v71 >= v91;
    v52 = v61;
    v53 = v59;
    if (v75)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v71;
      v49 = v56;
      v54 = v56;
      a1 = v87;
      v55 = v88;
      v50 = v94;
    }

    else
    {
      v54 = v56;
      v19 = v91 == a3;
      a3 = v71;
      v49 = v56;
      a1 = v87;
      v55 = v88;
      v50 = v94;
      if (!v19)
      {
        swift_arrayInitWithTakeBackToFront();
        a3 = v71;
        v49 = v56;
        v54 = v56;
      }
    }
  }

  v96 = v62;
  v84 = *v93;
  v85 = v97;
  (*v93)(v55, v97);
  v84(v92, v85);
  v83 = v89;
  v100 = v90;
LABEL_74:
  v98 = v83;
LABEL_75:
  sub_227B6597C(&v100, &v99, &v98);
  return 1;
}

uint64_t sub_227BDCE20(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_11_13();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_11_13();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_227BDCF04(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_227BDB490(v14, v13, a5, a6, a7, a8);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_227BDCE20(a4 + v17, v14, v15 + v17, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t sub_227BDD01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_227BDD08C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227BDE464(&qword_27D7E8580, MEMORY[0x277D0D510]);
    v9 = sub_227D4CF38();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

BOOL sub_227BDD23C(char *a1, char *a2)
{
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v21 = v2;
  v8 = *v2;
  sub_227BDE464(&qword_27D7E8578, MEMORY[0x277D0D508]);
  v27 = a2;
  v9 = sub_227D4CE98();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_227BDD830(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_227BDE464(&qword_27D7E8580, MEMORY[0x277D0D510]);
    v15 = sub_227D4CF38();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_227BDD4E4(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8588, &qword_227D59BC8);
  result = sub_227D4D638();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_227B26E40(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_227BDE464(&qword_27D7E8578, MEMORY[0x277D0D508]);
    result = sub_227D4CE98();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_227BDD830(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227BDD4E4(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_227BDDCD8(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_227BDE464(&qword_27D7E8578, MEMORY[0x277D0D508]);
      v13 = sub_227D4CE98();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_227BDE464(&qword_27D7E8580, MEMORY[0x277D0D510]);
        v15 = sub_227D4CF38();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_227BDDA9C();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void *sub_227BDDA9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8588, &qword_227D59BC8);
  v6 = *v0;
  v7 = sub_227D4D628();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_227BDDCD8(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8588, &qword_227D59BC8);
  v7 = sub_227D4D638();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_227BDE464(&qword_27D7E8578, MEMORY[0x277D0D508]);
        result = sub_227D4CE98();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

void *sub_227BDDFE4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE0, &qword_227D4F910);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227BDCE20(a4 + v16, v8, v13 + v16, &qword_27D7E6AA8, &unk_227D4ED70);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_227BDE1C0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227BDE464(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AA8, &unk_227D4ED70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227BDE4B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227BDE4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 16))
  {
    v5 = *(v2 + 16);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v10[2] = a1;
  sub_227D4CE58();
  v6 = sub_227BDB248(sub_227BDE680, v10, v5);

  if (v6)
  {
    sub_227D49848();
    sub_227D4A668();
    if (v3)
    {

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

uint64_t sub_227BDE618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D10, &qword_227D4F958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227BDE6C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227BDE6DC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  sub_227D4B128();
  OUTLINED_FUNCTION_133();
  *v5 = v6;
  v5[1] = sub_227BDE7BC;

  return sub_227B4CC14();
}

uint64_t sub_227BDE7BC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227BDE8DC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 224) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  v6 = sub_227D4B128();
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_10_0(v6);
  *(v0 + 64) = v7;
  *(v0 + 72) = OUTLINED_FUNCTION_30();
  v8 = sub_227D4BC48();
  OUTLINED_FUNCTION_5(v8);
  *(v0 + 80) = OUTLINED_FUNCTION_30();
  v9 = sub_227D4BC68();
  *(v0 + 88) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v0 + 96) = v10;
  *(v0 + 104) = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85C0, &qword_227D59C10);
  OUTLINED_FUNCTION_5(v11);
  *(v0 + 112) = OUTLINED_FUNCTION_30();
  v12 = sub_227D4BC28();
  *(v0 + 120) = v12;
  OUTLINED_FUNCTION_10_0(v12);
  *(v0 + 128) = v13;
  *(v0 + 136) = OUTLINED_FUNCTION_30();
  v14 = sub_227D4BC88();
  OUTLINED_FUNCTION_5(v14);
  *(v0 + 144) = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85C8, &qword_227D59C18);
  OUTLINED_FUNCTION_5(v15);
  *(v0 + 152) = OUTLINED_FUNCTION_30();
  v16 = sub_227D4B0A8();
  *(v0 + 160) = v16;
  OUTLINED_FUNCTION_10_0(v16);
  *(v0 + 168) = v17;
  *(v0 + 176) = OUTLINED_FUNCTION_30();
  v18 = sub_227D492A8();
  *(v0 + 184) = v18;
  OUTLINED_FUNCTION_10_0(v18);
  *(v0 + 192) = v19;
  *(v0 + 200) = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_227BDEB54(uint64_t a1)
{
  sub_227D49298();
  sub_227D49258();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_57_0();
  v6 = v5(v4);
  v9 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282163ED8](v6, v7, v8);
  }

  v11 = v1[21];
  v10 = v1[22];
  v12 = v1[19];
  v19 = v1[20];
  v13 = v1[14];
  v1[2] = v9;
  sub_227D4DA38();
  v14 = sub_227D4C928();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  sub_227D4B098();
  sub_227BE0080();
  sub_227D4D1F8();
  sub_227D4CE58();
  sub_227D4BC18();
  (*(v11 + 16))(v13, v10, v19);
  v15 = sub_227D4BC08();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  v16 = swift_task_alloc();
  v1[26] = v16;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v16 = v17;
  v16[1] = sub_227BDEDAC;
  v7 = v1[17];
  v6 = v1[18];
  v8 = v1[14];

  return MEMORY[0x282163ED8](v6, v7, v8);
}

uint64_t sub_227BDEDAC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  v3[27] = v0;

  v5 = v2[17];
  v6 = v2[16];
  v7 = v2[15];
  sub_227B1365C(v2[14], &qword_27D7E85C0, &qword_227D59C10);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227BDEF44()
{
  v1 = v0[27];
  sub_227D4BC78();
  if (v1)
  {
    sub_227BE00D4(v0[18], MEMORY[0x277D0C4C0]);
    (*(v0[21] + 8))(v0[22], v0[20]);
  }

  else
  {
    sub_227D4BC58();
    v2 = OUTLINED_FUNCTION_57_0();
    v3(v2);
    sub_227D4BC38();
    OUTLINED_FUNCTION_6_10(v0[10]);
    v4 = OUTLINED_FUNCTION_57_0();
    sub_227B4D5E8(v4, v5, v6);
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];
    v12 = v0[18];
    (*(v0[8] + 8))(v0[9], v0[7]);
    sub_227BE00D4(v12, MEMORY[0x277D0C4C0]);
    (*(v10 + 8))(v9, v11);
  }

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227BDF1B4()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227BDF2A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_28_0(v1);

  return sub_227BDE8DC();
}

uint64_t sub_227BDF360(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227BDF378()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  sub_227D4B318();
  OUTLINED_FUNCTION_133();
  *v3 = v4;
  v3[1] = sub_227BDF450;

  return sub_227B4CC14();
}

uint64_t sub_227BDF450()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227BDF570()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_227D4B318();
  v0[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_30();
  v6 = sub_227D4C378();
  OUTLINED_FUNCTION_5(v6);
  v0[8] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4C398();
  v0[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4C358();
  v0[12] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85A0, &qword_227D59C00);
  OUTLINED_FUNCTION_5(v11);
  v0[15] = OUTLINED_FUNCTION_30();
  v12 = sub_227D4C3B8();
  OUTLINED_FUNCTION_5(v12);
  v0[16] = OUTLINED_FUNCTION_30();
  v13 = sub_227D4B308();
  v0[17] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[18] = v14;
  v0[19] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227BDF76C()
{
  v1 = sub_227BDFE5C();
  v2 = MEMORY[0x22AAA3FF0](v1);
  if (v3 & 1) != 0 && (v4 = MEMORY[0x22AAA4010](v2), (v5) && (MEMORY[0x22AAA4030](v4), (v6) && (sub_227D4B288(), (v7))
  {
    sub_227BDFFD8();
    swift_allocError();
    swift_willThrow();
    v8 = OUTLINED_FUNCTION_59();
    v9(v8);
    OUTLINED_FUNCTION_13_11(v0[19]);

    OUTLINED_FUNCTION_18();

    return v10();
  }

  else
  {
    v12 = v0[15];
    (*(v0[18] + 16))(v12, v0[19], v0[17]);
    v13 = sub_227D4C338();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    sub_227BE002C();
    sub_227D4D1F8();
    OUTLINED_FUNCTION_15();
    sub_227D4BCB8();
    v14 = swift_task_alloc();
    v0[20] = v14;
    sub_227D4ACB8();
    OUTLINED_FUNCTION_133();
    *v14 = v15;
    v14[1] = sub_227BDF984;
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];

    return MEMORY[0x282163F38](v16, v18, v17);
  }
}

uint64_t sub_227BDF984()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = v4[12];
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  *(v11 + 168) = v0;

  (*(v7 + 8))(v6, v8);
  sub_227B1365C(v5, &qword_27D7E85A0, &qword_227D59C00);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227BDFB14()
{
  v1 = v0[21];
  sub_227D4C3A8();
  if (v1)
  {
    OUTLINED_FUNCTION_2_23();
    sub_227BE00D4(v5, v6);
    v7 = OUTLINED_FUNCTION_59();
    v8(v7);
    OUTLINED_FUNCTION_13_11(v0[19]);

    OUTLINED_FUNCTION_18();
  }

  else
  {
    v2 = v0[8];
    sub_227D4C388();
    v3 = OUTLINED_FUNCTION_57_0();
    v4(v3);
    sub_227D4C368();
    sub_227BE00D4(v2, MEMORY[0x277D0C628]);
    v11 = v0[16];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    sub_227B4D5E8(v12, v14, v0[2]);
    (*(v13 + 8))(v12, v14);
    OUTLINED_FUNCTION_2_23();
    sub_227BE00D4(v11, v15);
    v16 = OUTLINED_FUNCTION_57_0();
    v17(v16);

    OUTLINED_FUNCTION_18();
  }

  return v9();
}

uint64_t sub_227BDFCFC()
{
  v1 = OUTLINED_FUNCTION_59();
  v2(v1);
  OUTLINED_FUNCTION_13_11(*(v0 + 152));

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227BDFDB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_28_0(v1);

  return sub_227BDF570();
}

uint64_t sub_227BDFE5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85B8, &qword_227D59C08);
  v1 = OUTLINED_FUNCTION_5(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - v2;
  v4 = sub_227D4AEB8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  OUTLINED_FUNCTION_15();
  v5 = sub_227D4B278();
  MEMORY[0x22AAA2D50](v5);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_9();
    MEMORY[0x22AAA4000]();
  }

  sub_227D4A018();
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_9();
    MEMORY[0x22AAA4020]();
  }

  sub_227D4A028();
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_9();
    MEMORY[0x22AAA4040]();
  }

  result = sub_227D49FF8();
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_9();
    return sub_227D4B298();
  }

  return result;
}

uint64_t sub_227BDFF98()
{
  v0 = MEMORY[0x22AAA3FF0]();
  if (v1 & 1) != 0 && (v2 = MEMORY[0x22AAA4010](v0), (v3) && (MEMORY[0x22AAA4030](v2), (v4))
  {
    sub_227D4B288();
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

unint64_t sub_227BDFFD8()
{
  result = qword_27D7E85A8;
  if (!qword_27D7E85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E85A8);
  }

  return result;
}

unint64_t sub_227BE002C()
{
  result = qword_27D7E85B0;
  if (!qword_27D7E85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E85B0);
  }

  return result;
}

unint64_t sub_227BE0080()
{
  result = qword_27D7E85D0;
  if (!qword_27D7E85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E85D0);
  }

  return result;
}

uint64_t sub_227BE00D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_227BE0128(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_227D4A3B8();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v10);
  v156 = sub_227D4A318();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  v155 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_4_17(&v110[-v16]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_4_17(&v110[-v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_17(&v110[-v21]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_9();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v110[-v28];
  v151 = sub_227D4A3A8();
  v30 = MEMORY[0x28223BE20](v151);
  v146 = &v110[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  result = MEMORY[0x28223BE20](v32);
  v150 = &v110[-v36];
  v120 = a1;
  v37 = *(a1 + 24);
  v129 = *(v37 + 16);
  if (!v129)
  {
    return result;
  }

  v113 = v35;
  v128 = v37 + 32;
  v127 = (v34 + 104);
  v112 = v34 + 32;
  v137 = (v24 + 16);
  v125 = (v34 + 16);
  v154 = (v12 + 104);
  v38 = 0;
  v136 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v119 = (v8 + 32);
  v116 = v8;
  v114 = v8 + 40;
  v115 = v24;
  v138 = (v24 + 8);
  v126 = v34 + 8;
  v111 = *MEMORY[0x277D0D1B0];
  v122 = *MEMORY[0x277D0D1B8];
  v121 = *MEMORY[0x277D0D118];
  v153 = *MEMORY[0x277D0D140];
  v152 = *MEMORY[0x277D0D130];
  v124 = *MEMORY[0x277D0CEE8];
  v157 = xmmword_227D4E520;
  v133 = v22;
  v139 = v4;
  v118 = v6;
  v123 = v29;
  while (1)
  {
    v144 = v38;
    v39 = (v128 + 56 * v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    v163 = *(v39 + 6);
    v161 = v41;
    v162 = v42;
    v160 = v40;
    sub_227BE1018(&v160, v158);
    sub_227BA74A0();
    sub_227D4D148();
    sub_227D4D148();
    if (v159[0] == v158[0] && v159[1] == v158[1])
    {
    }

    else
    {
      v44 = sub_227D4DA78();

      if ((v44 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v45 = *(v120 + 56);
    v46 = sub_227BA66BC();
    if (!*(v45 + 16))
    {

LABEL_16:
      v55 = OUTLINED_FUNCTION_1_19();
      v56(v55, v122, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85D8, &qword_227D5BC20);
      v57 = sub_227D4A2D8();
      OUTLINED_FUNCTION_9();
      v59 = v58;
      v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v157;
      v62 = *(v59 + 104);
      v145 = v61;
      v62(v61 + v60, v121, v57);
      goto LABEL_17;
    }

    v48 = sub_227B2664C(v46, v47);
    v50 = v49;

    if ((v50 & 1) == 0 || !*(*(*(v45 + 56) + 8 * v48) + 16))
    {
      goto LABEL_16;
    }

    sub_227D4CE58();
    sub_227D4CE58();
    v51 = v113;
    sub_227D4A608();
    if (v3)
    {
      sub_227BE1074(&v160);
    }

    v52 = v151;
    (*v127)(v51, v111, v151);
    v53 = OUTLINED_FUNCTION_1_19();
    v54(v53, v51, v52);
    v145 = MEMORY[0x277D84F90];
LABEL_17:
    sub_227BA66BC();
    sub_227D4A658();
    if (v3)
    {
      v108 = OUTLINED_FUNCTION_1_19();
      v109(v108, v151);

      sub_227BE1074(&v160);
    }

    v140 = 0;
    v63 = v4;

    v64 = *(&v161 + 1);
    v143 = v161;
    v65 = v160;
    v66 = *v137;
    (*v137)(v149, v29, v22);
    v142 = sub_227BA66BC();
    v141 = v67;
    v134 = v66;
    v66(v147, v29, v22);
    v68 = sub_227D4AA38();
    __swift_storeEnumTagSinglePayload(v148, 1, 1, v68);
    (*v125)(v146, v150, v151);
    v69 = *(v65 + 16);
    if (v69)
    {
      v158[0] = MEMORY[0x277D84F90];
      v135 = v64;
      sub_227D4CE58();
      sub_227BE14B0(0, v69, 0);
      v70 = v158[0];
      v71 = (v65 + 32);
      v164 = *(*(sub_227D4A328() - 8) + 72);
      do
      {
        v73 = *v71++;
        v72 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E0, &qword_227D59C20);
        v74 = swift_allocObject();
        *(v74 + 16) = v157;
        v75 = v153;
        if (v73 == 1)
        {
          v75 = v152;
        }

        if (v72)
        {
          v76 = v75;
        }

        else
        {
          v76 = v152;
        }

        v77 = v74;
        (*v154)(v155, v76, v156);
        sub_227D4A2E8();
        v158[0] = v70;
        v79 = *(v70 + 16);
        v78 = *(v70 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_227BE14B0((v78 > 1), v79 + 1, 1);
          v70 = v158[0];
        }

        *(v70 + 16) = v79 + 1;
        *(v70 + 8 * v79 + 32) = v77;
        --v69;
      }

      while (v69);
      v80 = v139;
      v6 = v118;
      v22 = v133;
    }

    else
    {
      sub_227D4CE58();
      v80 = v63;
    }

    v81 = sub_227D49F28();
    v82 = v132;
    (*(*(v81 - 8) + 104))(v132, v124, v81);
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v81);
    v83 = v131;
    sub_227D4A348();
    sub_227BE1074(&v160);
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v6);
    v84 = (*(*v80 + 384))(v158);
    v86 = v85;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v6);
    v88 = v138;
    v164 = v138 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (EnumTagSinglePayload == 1)
    {
      v89 = v84;
      sub_227BE14D0(v83);
      v90 = v117;
      v91 = v149;
      sub_227BE1158(v149, v117);
      sub_227BE14D0(v90);
      v92 = *v88;
      (*v88)(v91, v22);
      v29 = v123;
      v3 = v140;
      goto LABEL_42;
    }

    v145 = *v119;
    v145(v130, v83, v6);
    swift_isUniquelyReferenced_nonNull_native();
    v159[0] = *v86;
    v93 = v159[0];
    *v86 = 0x8000000000000000;
    v94 = sub_227BE10C8(v149);
    if (__OFADD__(*(v93 + 16), (v95 & 1) == 0))
    {
      break;
    }

    v96 = v94;
    v97 = v95;
    v89 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E8, qword_227D59C28);
    v98 = v159;
    if (sub_227D4D7C8())
    {
      v98 = v159[0];
      v99 = sub_227BE10C8(v149);
      v3 = v140;
      if ((v97 & 1) != (v100 & 1))
      {
        goto LABEL_50;
      }

      v96 = v99;
      OUTLINED_FUNCTION_3_18();
    }

    else
    {
      OUTLINED_FUNCTION_3_18();
      v3 = v140;
    }

    v102 = v159[0];
    if (v97)
    {
      (v98[5])(*(v159[0] + 56) + v98[9] * v96, v130, v6);
      v22 = v133;
    }

    else
    {
      *(v159[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
      v22 = v133;
      v134(v102[6] + *(v101 + 72) * v96, v149, v133);
      v145(v102[7] + v98[9] * v96, v130, v6);
      v103 = v102[2];
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        goto LABEL_49;
      }

      v102[2] = v105;
    }

    v92 = *v138;
    (*v138)(v149, v22);
    *v86 = v102;

    v29 = v123;
LABEL_42:
    v38 = v144 + 1;
    v89(v158, 0);
    v92(v29, v22);
    v106 = OUTLINED_FUNCTION_1_19();
    result = v107(v106, v151);
    v4 = v139;
    if (v38 == v129)
    {
      return result;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

unint64_t sub_227BE10C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  sub_227B3DB5C(&qword_27D7E85F0, MEMORY[0x277D0D508]);
  v2 = sub_227D4CE98();

  return sub_227BE1300(a1, v2);
}

uint64_t sub_227BE1158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227BE10C8(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E8, qword_227D59C28);
    sub_227D4D7C8();
    v7 = *(v15 + 48);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = *(v15 + 56);
    v10 = sub_227D4A3B8();
    (*(*(v10 - 8) + 32))(a2, v9 + *(*(v10 - 8) + 72) * v6, v10);
    sub_227B3DB5C(&qword_27D7E85F0, MEMORY[0x277D0D508]);
    sub_227D4D7E8();
    *v2 = v15;
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_227D4A3B8();
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

unint64_t sub_227BE1300(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B3DB5C(&qword_27D7E85F8, MEMORY[0x277D0D510]);
    v9 = sub_227D4CF38();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

void *sub_227BE14B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227BE1538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_227BE14D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_227BE1538(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8600, &unk_227D5BC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E71E8, &unk_227D511A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_227BE1674()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  OUTLINED_FUNCTION_10_0(v3);
  v1[4] = v4;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_227D4A3B8();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[14] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227BE1844()
{
  v1 = v0[15];
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[18] = 0;
  v0[19] = v4;
  v0[17] = v3;
  if (v3)
  {
    (*(v1 + 16))(v0[16], v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[14]);
    sub_227D4A838();
    v0[20] = sub_227D4A6A8();
    v0[21] = v5;
    v9 = OUTLINED_FUNCTION_64();
    v10(v9);
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    OUTLINED_FUNCTION_0_38(v11);

    return sub_227CACB7C();
  }

  else
  {

    v6 = v0[1];
    v7 = MEMORY[0x277D84F90];

    return v6(v7);
  }
}

uint64_t sub_227BE1A88()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 184) = v0;

  if (v0)
  {

    v7 = sub_227BE2308;
  }

  else
  {
    v7 = sub_227BE1B98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227BE1B98()
{
  v0[24] = v0[23];
  v1 = *(v0[3] + 96);
  v0[25] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[26] = *(*v1 + 96);
  v0[27] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BE1BDC, v1);
}

uint64_t sub_227BE1BDC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 224) = (*(v0 + 208))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227BE1C40()
{
  if (*(v0[28] + 16))
  {
    v1 = sub_227B2664C(v0[20], v0[21]);
    v3 = v2;

    if (v3)
    {
      v4 = *(*(v0[28] + 56) + 8 * v1);
      v0[29] = v4;

      v5 = *v4 + 368;
      v0[30] = *v5;
      v0[31] = v5 & 0xFFFFFFFFFFFFLL | 0x14E6000000000000;
      OUTLINED_FUNCTION_33();

      return MEMORY[0x2822009F8](v6, v7, v8);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_57_1(v0[5], v10, v11, v0[7]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v0[19];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = OUTLINED_FUNCTION_7_15();
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = OUTLINED_FUNCTION_16_7((v14 > 1));
  }

  v17 = v0[4];
  v16 = v0[5];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v13[2] = v15 + 1;
  OUTLINED_FUNCTION_13_12();
  sub_227BE305C(v16, v18 + *(v17 + 72) * v15);
  OUTLINED_FUNCTION_12_7();
  if (v19)
  {
    OUTLINED_FUNCTION_23_3();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_33();

    __asm { BRAA            X2, X16 }
  }

  v22 = OUTLINED_FUNCTION_5_14();
  v23(v22);
  sub_227D4A838();
  if (v16)
  {
    v27 = OUTLINED_FUNCTION_11_14();
    v28(v27);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_33();

    __asm { BRAA            X1, X16 }
  }

  v0[20] = sub_227D4A6A8();
  v0[21] = v24;
  v25 = OUTLINED_FUNCTION_64();
  v26(v25);
  v31 = swift_task_alloc();
  v0[22] = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_0_38(v31);
  OUTLINED_FUNCTION_33();

  return sub_227CACB7C();
}

uint64_t sub_227BE1F40()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 256) = (*(v0 + 240))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227BE1FA4()
{
  if (*(v0[32] + 16) && (v1 = sub_227BE10C8(v0[16]), (v2 & 1) != 0))
  {
    v4 = v0 + 6;
    v3 = v0[6];
    v5 = v0[10];
    v6 = v0[7];
    v7 = *(v0[8] + 16);
    v7(v0[9], *(v0[32] + 56) + *(v0[8] + 72) * v1, v6);

    OUTLINED_FUNCTION_20_6();
    v8();
    v7(v3, v5, v6);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v0[19];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_7_15();
    }

    v12 = v10[2];
    v11 = v10[3];
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v10 = OUTLINED_FUNCTION_16_7((v11 > 1));
    }

    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    (*(v16 + 8))(v14, v15);
  }

  else
  {

    v4 = v0 + 5;
    OUTLINED_FUNCTION_57_1(v0[5], v17, v18, v0[7]);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v10 = v0[19];
    if ((v19 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_7_15();
    }

    v12 = v10[2];
    v20 = v10[3];
    v13 = v12 + 1;
    if (v12 >= v20 >> 1)
    {
      v10 = OUTLINED_FUNCTION_16_7((v20 > 1));
    }
  }

  v21 = *v4;
  v22 = v0[4];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v10[2] = v13;
  OUTLINED_FUNCTION_13_12();
  sub_227BE305C(v21, v23 + *(v22 + 72) * v12);
  OUTLINED_FUNCTION_12_7();
  if (v24)
  {
    OUTLINED_FUNCTION_23_3();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X2, X16 }
  }

  v27 = OUTLINED_FUNCTION_5_14();
  v28(v27);
  sub_227D4A838();
  if (v21)
  {
    v32 = OUTLINED_FUNCTION_11_14();
    v33(v32);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X1, X16 }
  }

  v0[20] = sub_227D4A6A8();
  v0[21] = v29;
  v30 = OUTLINED_FUNCTION_64();
  v31(v30);
  v36 = swift_task_alloc();
  v0[22] = v36;
  *v36 = v0;
  OUTLINED_FUNCTION_0_38(v36);
  OUTLINED_FUNCTION_16_0();

  return sub_227CACB7C();
}

uint64_t sub_227BE2308()
{
  v0[24] = 0;
  v1 = *(v0[3] + 96);
  v0[25] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[26] = *(*v1 + 96);
  v0[27] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BE1BDC, v1);
}

uint64_t sub_227BE2348()
{
  OUTLINED_FUNCTION_6();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v1[24] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[25] = v6;
  v1[26] = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[27] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4A3B8();
  v1[28] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[29] = v8;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227BE24A4(uint64_t a1)
{
  v1[34] = sub_227D4A6A8();
  v1[35] = v2;
  v3 = swift_task_alloc();
  v1[36] = v3;
  *v3 = v1;
  v3[1] = sub_227BE25C8;
  OUTLINED_FUNCTION_128();

  return sub_227CACB7C();
}

uint64_t sub_227BE25C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 296) = v0;

  if (v0)
  {

    v7 = sub_227BE301C;
  }

  else
  {
    v7 = sub_227BE26D8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227BE26D8()
{
  v0[38] = v0[37];
  v1 = *(v0[23] + 96);
  v0[39] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[40] = *(*v1 + 96);
  v0[41] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BE271C, v1);
}

uint64_t sub_227BE271C()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 336) = (*(v0 + 320))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227BE2780()
{
  v1 = sub_227BD8C70(v0[34], v0[35], v0[42]);
  v0[43] = v1;

  if (!v1)
  {
    v3 = v0[27];

    v4 = sub_227D4A958();
    OUTLINED_FUNCTION_57_1(v3, v5, v6, v4);
    OUTLINED_FUNCTION_79(&qword_27D7E6920);
    OUTLINED_FUNCTION_78_1(&qword_27D7E6928);
    sub_227D4A948();

LABEL_5:
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[38];
  sub_227B351A4(v0[34], v0[35], v0[22], v0 + 2);
  v0[44] = v2;
  if (v2)
  {

    OUTLINED_FUNCTION_15_7();

    OUTLINED_FUNCTION_19_0();
    goto LABEL_5;
  }

  v9 = *v1 + 368;
  v0[45] = *v9;
  v0[46] = v9 & 0xFFFFFFFFFFFFLL | 0x14E6000000000000;
  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227BE2978()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 376) = (*(v0 + 360))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_227BE29DC()
{
  v51 = v0;
  v1 = 0;
  v2 = *(v0 + 376);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v46 = *(v0 + 376);
  v47 = *(v0 + 232);
  v6 = -1;
  v7 = -1 << *(v46 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v49 = (*(v0 + 232) + 8);
  v10 = *(v0 + 352);
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v1;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v14 = *(v0 + 224);
    v45 = *(v47 + 72);
    (*(v47 + 16))(v12, *(v46 + 56) + v45 * (__clz(__rbit64(v8)) | (v1 << 6)), v14);
    v15 = *(v47 + 32);
    v15(v13, v12, v14);
    v16 = sub_227B39260();
    if (v10)
    {
      (*v49)(*(v0 + 264), *(v0 + 224));
      *(v0 + 80) = *(v0 + 16);
      sub_227B3DACC(v0 + 80);
      *(v0 + 128) = *(v0 + 32);
      OUTLINED_FUNCTION_20_6();
      sub_227B2746C(v38, v39, v40);
      *(v0 + 136) = *(v0 + 40);
      OUTLINED_FUNCTION_20_6();
      sub_227B2746C(v41, v42, v43);
      *(v0 + 144) = *(v0 + 48);
      sub_227B2746C(v0 + 144, &qword_27D7E6910, &qword_227D5BCC0);
      *(v0 + 152) = *(v0 + 56);
      sub_227B2746C(v0 + 152, &qword_27D7E6918, &qword_227D4E6A0);

      OUTLINED_FUNCTION_15_7();

      OUTLINED_FUNCTION_19_0();
LABEL_27:

      v37();
      return;
    }

    v8 &= v8 - 1;
    if (v16)
    {
      v15(*(v0 + 248), *(v0 + 264), *(v0 + 224));
      v17 = v44;
      v50 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_227BE49C4(0, *(v44 + 16) + 1, 1);
        v17 = v50;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_227BE49C4((v18 > 1), v19 + 1, 1);
        v17 = v50;
      }

      v20 = *(v0 + 248);
      v21 = *(v0 + 224);
      *(v17 + 16) = v19 + 1;
      v44 = v17;
      v15(v17 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + v19 * v45, v20, v21);
      v10 = 0;
    }

    else
    {
      (*v49)(*(v0 + 264), *(v0 + 224));
      v10 = 0;
    }
  }

  while (1)
  {
    v1 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v1 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v1);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  *(v0 + 64) = *(v0 + 16);
  sub_227B3DACC(v0 + 64);
  *(v0 + 96) = *(v0 + 32);
  sub_227B2746C(v0 + 96, &qword_27D7E68F0, &qword_227D5B840);
  *(v0 + 104) = *(v0 + 40);
  sub_227B2746C(v0 + 104, &qword_27D7E68F0, &qword_227D5B840);
  *(v0 + 112) = *(v0 + 48);
  sub_227B2746C(v0 + 112, &qword_27D7E6910, &qword_227D5BCC0);
  *(v0 + 120) = *(v0 + 56);
  sub_227B2746C(v0 + 120, &qword_27D7E6918, &qword_227D4E6A0);

  v50 = v44;

  sub_227BE31A0(&v50);
  if (!v10)
  {

    v22 = v50;
    v23 = *(v50 + 16);
    if (v23)
    {
      v24 = *(v0 + 200);
      v50 = MEMORY[0x277D84F90];
      sub_227B3CAC8(0, v23, 0);
      v25 = v50;
      v26 = v22 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v48 = *(v47 + 72);
      v27 = *(v47 + 16);
      do
      {
        v28 = *(v0 + 240);
        v29 = *(v0 + 224);
        OUTLINED_FUNCTION_20_6();
        v27();
        sub_227D4A368();
        (*v49)(v28, v29);
        v50 = v25;
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_227B3CAC8((v30 > 1), v31 + 1, 1);
          v25 = v50;
        }

        *(v25 + 16) = v31 + 1;
        OUTLINED_FUNCTION_13_12();
        (*(v24 + 32))(v32 + *(v24 + 72) * v31);
        v26 += v48;
        --v23;
      }

      while (v23);
    }

    v33 = *(v0 + 216);
    v34 = sub_227D4A958();
    OUTLINED_FUNCTION_57_1(v33, v35, v36, v34);
    OUTLINED_FUNCTION_79(&qword_27D7E6920);
    OUTLINED_FUNCTION_78_1(&qword_27D7E6928);
    sub_227D4A948();

    v37 = *(v0 + 8);
    goto LABEL_27;
  }
}

uint64_t sub_227BE301C()
{
  v0[38] = 0;
  v1 = *(v0[23] + 96);
  v0[39] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[40] = *(*v1 + 96);
  v0[41] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227BE271C, v1);
}

uint64_t sub_227BE305C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6900, &qword_227D4E680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227BE30CC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A3B8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A3B8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227BE31A0(uint64_t *a1)
{
  v2 = *(sub_227D4A3B8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227BE4B98(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_227BE3248(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_227BE3248(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_227D4DA28();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227D4A3B8();
        v6 = sub_227D4D218();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227D4A3B8() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_227BE3698(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_227BE3378(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_227BE3378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227D4A3B8();
  v9 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_227D4A358();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_227D4A358() && v31 == v32)
        {
          break;
        }

        v34 = sub_227D4DA78();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227BE3698(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v152 = a1;
  v8 = sub_227D4A3B8();
  v9 = MEMORY[0x28223BE20](v8);
  v156 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v170 = &v148 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v148 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v148 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v166 = &v148 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v149 = &v148 - v23;
  result = MEMORY[0x28223BE20](v22);
  v154 = &v148 - v27;
  v164 = a3;
  v28 = a3[1];
  v162 = v25;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_116:
    v175 = *v152;
    if (!v175)
    {
      goto LABEL_159;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_118;
    }

    goto LABEL_153;
  }

  v167 = result;
  v171 = v26;
  v148 = a4;
  v29 = 0;
  v175 = v25 + 16;
  v173 = (v25 + 32);
  v174 = (v25 + 8);
  v30 = MEMORY[0x277D84F90];
  v155 = v15;
  v165 = v19;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v159 = v28;
      v33 = v29;
      v34 = *v164;
      v35 = *(v25 + 72);
      v161 = v29 + 1;
      v36 = &v34[v35 * v32];
      v37 = *(v25 + 16);
      v38 = v167;
      (v37)(v154, v36, v167);
      v153 = v33;
      v163 = v35;
      v172 = v34;
      v39 = &v34[v35 * v33];
      v40 = v149;
      v158 = v37;
      (v37)(v149, v39, v38);
      v41 = sub_227D4A358();
      v43 = v42;
      if (v41 == sub_227D4A358() && v43 == v44)
      {
        LODWORD(v160) = 0;
      }

      else
      {
        LODWORD(v160) = sub_227D4DA78();
      }

      if (v5)
      {
        v146 = *v174;
        v147 = v167;
        (*v174)(v40, v167);
        v146(v154, v147);
      }

      v150 = v30;
      v151 = 0;
      v46 = *v174;
      v47 = v167;
      (*v174)(v40, v167);
      v157 = v46;
      result = (v46)(v154, v47);
      v48 = (v153 + 2);
      v49 = v163 * (v153 + 2);
      v50 = v172 + v49;
      v51 = v163 * v161;
      v52 = v172 + v163 * v161;
      v53 = v161;
      do
      {
        v54 = v48;
        v5 = v53;
        v30 = v51;
        v55 = v49;
        if (v48 >= v159)
        {
          break;
        }

        v169 = v53;
        v172 = v49;
        v56 = v167;
        v57 = v158;
        (v158)(v166, v50, v167);
        (v57)(v165, v52, v56);
        v58 = sub_227D4A358();
        v60 = v59;
        v62 = v58 == sub_227D4A358() && v60 == v61;
        v168 = v30;
        v63 = v62 ? 0 : sub_227D4DA78();
        v55 = v172;
        v5 = v169;

        v64 = v167;
        v65 = v157;
        v157(v165, v167);
        result = v65(v166, v64);
        v48 = v54 + 1;
        v50 = &v163[v50];
        v52 = &v163[v52];
        v53 = v5 + 1;
        v30 = v168;
        v51 = &v163[v168];
        v49 = &v163[v55];
      }

      while (((v160 ^ v63) & 1) == 0);
      if (v160)
      {
        v66 = v153;
        v15 = v155;
        if (v54 < v153)
        {
          goto LABEL_152;
        }

        if (v153 >= v54)
        {
          v32 = v54;
          v5 = v151;
          v30 = v150;
          v31 = v153;
          goto LABEL_40;
        }

        v172 = v54;
        v67 = v153 * v163;
        do
        {
          if (v66 != v5)
          {
            v68 = *v164;
            if (!*v164)
            {
              goto LABEL_157;
            }

            v69 = *v173;
            v70 = v167;
            (*v173)(v156, &v68[v67], v167);
            v71 = v67 < v30 || &v68[v67] >= &v68[v55];
            if (v71)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v67 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v69)(&v68[v30], v156, v70);
            v15 = v155;
          }

          ++v66;
          v30 -= v163;
          v55 -= v163;
          v67 += v163;
          v72 = v66 < v5--;
        }

        while (v72);
        v32 = v172;
        v5 = v151;
        v30 = v150;
      }

      else
      {
        v32 = v54;
        v5 = v151;
        v30 = v150;
        v15 = v155;
      }

      v31 = v153;
    }

LABEL_40:
    v73 = v164[1];
    if (v32 < v73)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_149;
      }

      if (v32 - v31 < v148)
      {
        break;
      }
    }

LABEL_63:
    if (v32 < v31)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v161 = v32;
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v96 = *(v30 + 16);
    v95 = *(v30 + 24);
    v97 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      result = sub_227B63228((v95 > 1), v96 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v97;
    v98 = v30 + 32;
    v99 = (v30 + 32 + 16 * v96);
    v100 = v161;
    *v99 = v31;
    v99[1] = v100;
    v172 = *v152;
    if (!v172)
    {
      goto LABEL_158;
    }

    if (v96)
    {
      while (1)
      {
        v101 = v97 - 1;
        v102 = (v98 + 16 * (v97 - 1));
        v103 = (v30 + 16 * v97);
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v104 = *(v30 + 32);
          v105 = *(v30 + 40);
          v114 = __OFSUB__(v105, v104);
          v106 = v105 - v104;
          v107 = v114;
LABEL_83:
          if (v107)
          {
            goto LABEL_135;
          }

          v119 = *v103;
          v118 = v103[1];
          v120 = __OFSUB__(v118, v119);
          v121 = v118 - v119;
          v122 = v120;
          if (v120)
          {
            goto LABEL_138;
          }

          v123 = v102[1];
          v124 = v123 - *v102;
          if (__OFSUB__(v123, *v102))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v121, v124))
          {
            goto LABEL_143;
          }

          if (v121 + v124 >= v106)
          {
            if (v106 < v124)
            {
              v101 = v97 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v97 < 2)
        {
          goto LABEL_137;
        }

        v126 = *v103;
        v125 = v103[1];
        v114 = __OFSUB__(v125, v126);
        v121 = v125 - v126;
        v122 = v114;
LABEL_98:
        if (v122)
        {
          goto LABEL_140;
        }

        v128 = *v102;
        v127 = v102[1];
        v114 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v114)
        {
          goto LABEL_142;
        }

        if (v129 < v121)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v101 - 1 >= v97)
        {
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v164)
        {
          goto LABEL_155;
        }

        v133 = v30;
        v134 = (v98 + 16 * (v101 - 1));
        v30 = *v134;
        v135 = v98;
        v136 = v101;
        v137 = (v98 + 16 * v101);
        v138 = v137[1];
        sub_227BE42DC(&(*v164)[*(v162 + 72) * *v134], &(*v164)[*(v162 + 72) * *v137], &(*v164)[*(v162 + 72) * v138], v172);
        if (v5)
        {
        }

        if (v138 < v30)
        {
          goto LABEL_130;
        }

        v5 = *(v133 + 16);
        if (v136 > v5)
        {
          goto LABEL_131;
        }

        *v134 = v30;
        v134[1] = v138;
        if (v136 >= v5)
        {
          goto LABEL_132;
        }

        v97 = v5 - 1;
        result = memmove(v137, v137 + 2, 16 * (v5 - 1 - v136));
        v30 = v133;
        *(v133 + 16) = v5 - 1;
        v72 = v5 > 2;
        v5 = 0;
        v98 = v135;
        if (!v72)
        {
          goto LABEL_112;
        }
      }

      v108 = v98 + 16 * v97;
      v109 = *(v108 - 64);
      v110 = *(v108 - 56);
      v114 = __OFSUB__(v110, v109);
      v111 = v110 - v109;
      if (v114)
      {
        goto LABEL_133;
      }

      v113 = *(v108 - 48);
      v112 = *(v108 - 40);
      v114 = __OFSUB__(v112, v113);
      v106 = v112 - v113;
      v107 = v114;
      if (v114)
      {
        goto LABEL_134;
      }

      v115 = v103[1];
      v116 = v115 - *v103;
      if (__OFSUB__(v115, *v103))
      {
        goto LABEL_136;
      }

      v114 = __OFADD__(v106, v116);
      v117 = v106 + v116;
      if (v114)
      {
        goto LABEL_139;
      }

      if (v117 >= v111)
      {
        v131 = *v102;
        v130 = v102[1];
        v114 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v114)
        {
          goto LABEL_147;
        }

        if (v106 < v132)
        {
          v101 = v97 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v28 = v164[1];
    v29 = v161;
    v25 = v162;
    v15 = v155;
    if (v161 >= v28)
    {
      goto LABEL_116;
    }
  }

  v74 = (v31 + v148);
  if (__OFADD__(v31, v148))
  {
    goto LABEL_150;
  }

  if (v74 >= v73)
  {
    v74 = v164[1];
  }

  if (v74 < v31)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    result = sub_227B65968(v30);
    v30 = result;
LABEL_118:
    v139 = (v30 + 16);
    v140 = *(v30 + 16);
    while (v140 >= 2)
    {
      if (!*v164)
      {
        goto LABEL_156;
      }

      v141 = v30;
      v30 += 16 * v140;
      v142 = *v30;
      v143 = &v139[2 * v140];
      v144 = v143[1];
      sub_227BE42DC(&(*v164)[*(v162 + 72) * *v30], &(*v164)[*(v162 + 72) * *v143], &(*v164)[*(v162 + 72) * v144], v175);
      if (v5)
      {
        break;
      }

      if (v144 < v142)
      {
        goto LABEL_144;
      }

      if (v140 - 2 >= *v139)
      {
        goto LABEL_145;
      }

      *v30 = v142;
      *(v30 + 8) = v144;
      v145 = *v139 - v140;
      if (*v139 < v140)
      {
        goto LABEL_146;
      }

      v140 = *v139 - 1;
      result = memmove(v143, v143 + 2, 16 * v145);
      *v139 = v140;
      v30 = v141;
    }
  }

  if (v32 == v74)
  {
    goto LABEL_63;
  }

  v150 = v30;
  v151 = v5;
  v75 = *v164;
  v76 = *(v162 + 72);
  v172 = *(v162 + 16);
  v77 = &v75[v76 * (v32 - 1)];
  v168 = -v76;
  v153 = v31;
  v78 = v31 - v32;
  v169 = v75;
  v157 = v76;
  v158 = v74;
  v79 = &v75[v32 * v76];
  v80 = v171;
  v81 = v167;
LABEL_49:
  v160 = v78;
  v161 = v32;
  v159 = v79;
  v163 = v77;
  while (1)
  {
    v82 = v172;
    v172(v80, v79, v81);
    v82(v15, v77, v81);
    v83 = sub_227D4A358();
    v84 = v80;
    v85 = v15;
    v87 = v86;
    if (v83 == sub_227D4A358() && v87 == v88)
    {

      v94 = *v174;
      (*v174)(v85, v81);
      v94(v80, v81);
      v15 = v85;
      goto LABEL_61;
    }

    v90 = sub_227D4DA78();

    v91 = *v174;
    (*v174)(v85, v81);
    result = (v91)(v84, v81);
    v15 = v85;
    if ((v90 & 1) == 0)
    {
      v80 = v171;
LABEL_61:
      v32 = v161 + 1;
      v77 = v157 + v163;
      v78 = v160 - 1;
      v79 = v157 + v159;
      if ((v161 + 1) == v158)
      {
        v32 = v158;
        v5 = v151;
        v30 = v150;
        v31 = v153;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    if (!v169)
    {
      break;
    }

    v92 = *v173;
    v93 = v170;
    (*v173)(v170, v79, v81);
    swift_arrayInitWithTakeFrontToBack();
    v92(v77, v93, v81);
    v77 += v168;
    v79 += v168;
    v71 = __CFADD__(v78++, 1);
    v80 = v171;
    if (v71)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

uint64_t sub_227BE42DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_227D4A3B8();
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  result = MEMORY[0x28223BE20](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_227BE30CC(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = sub_227D4A358();
      v36 = v35;
      if (v34 == sub_227D4A358() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = sub_227D4DA78();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = v42 + v27;
      v77 = a1;
    }
  }

  sub_227BE30CC(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = sub_227D4A358();
    v54 = v53;
    if (v52 == sub_227D4A358() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_227D4DA78();
    }

    v58 = v49 + v68;
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_227BE48E4(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_227BE48E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_227D4A3B8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_227BE49C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227BE49E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227BE49E4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8608, &unk_227D5BBD0);
  v10 = *(sub_227D4A3B8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_227D4A3B8() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227BE30CC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t OUTLINED_FUNCTION_23_3()
{
}

uint64_t sub_227BE4C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8748, &qword_227D5B6D0);
  OUTLINED_FUNCTION_378();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227D4E520;
  v1 = type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition(0);
  OUTLINED_FUNCTION_1_20();
  v3 = sub_227C164D0(v2);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return v0;
}

uint64_t sub_227BE4CA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BE4CF8();
  *a1 = result;
  return result;
}

uint64_t sub_227BE4E68@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BE4EAC(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BE5008@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BE504C(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BE51A8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BE51EC(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BE5344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = OUTLINED_FUNCTION_407();
  type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(v9);
  *(v6 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8EB8, &qword_227D5BBA0);
  OUTLINED_FUNCTION_12_8();
  v21 = sub_227C164D0(&unk_280E7BC70);
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = OUTLINED_FUNCTION_480(OpaqueTypeConformance2);
  __swift_allocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v6 + 16) = 257;
  sub_227D494B8();
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  swift_getKeyPath();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  sub_227D4CAD8();

  sub_227BE52A4(a5, a6, v12, v13, v14, v15, v16, v17, a5, a6, a3, a4, v21, v21);
  return v6;
}

uint64_t sub_227BE54E8()
{
  OUTLINED_FUNCTION_104_0();
  v1 = sub_227BE4EAC(v0);
  v3 = v2;
  if (v1 == sub_227BE4EAC(v1) && v3 == v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_201();
    v6 = sub_227D4DA78();

    v8 = 0;
    if ((v6 & 1) == 0)
    {
      return v8 & 1;
    }
  }

  v9 = sub_227BE504C(v7);
  v11 = v10;
  if (v9 == sub_227BE504C(v9) && v11 == v12)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_253();
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

void sub_227BE55F8()
{
  OUTLINED_FUNCTION_11();
  v0 = sub_227D4CD98();
  v1 = OUTLINED_FUNCTION_81_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_472(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_308_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_443(v3, xmmword_227D59C40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_431(0x6564u);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_578();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9170, &qword_227D5BD80);
  OUTLINED_FUNCTION_198_2();
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_528(v4, xmmword_227D59C50);
  OUTLINED_FUNCTION_575(v5);
  v6 = OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_418();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_364();
  v9 = sub_227B1A6E4(v8);
  OUTLINED_FUNCTION_469(v9);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_349(v10, v11);
  v12 = OUTLINED_FUNCTION_100_3();
  v16 = sub_227C10AC0(v12, v13, v14, v15);
  OUTLINED_FUNCTION_159_2();
  if (v18)
  {
    v21 = OUTLINED_FUNCTION_55(v17);
    sub_227C10AC0(v21, v22, v23, v16);
  }

  v19 = OUTLINED_FUNCTION_120_1();
  v20(v19);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BE59B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BE5A08();
  *a1 = result;
  return result;
}

uint64_t sub_227BE5B78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BE5BBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227BE5D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BE5D5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227BE5EB8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BE5EFC(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BE6058()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_397_0(v1 + 24, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 24));
  v0(v2, v1 + 24);
  return swift_endAccess();
}

void sub_227BE60B4()
{
  OUTLINED_FUNCTION_11();
  v0 = sub_227D4CD98();
  v1 = OUTLINED_FUNCTION_81_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_472(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_308_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_443(v3, xmmword_227D59C40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_431(0x6564u);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_566();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_565();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9158, &qword_227D5BD48);
  OUTLINED_FUNCTION_198_2();
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_528(v4, xmmword_227D59C50);
  OUTLINED_FUNCTION_575(v5);
  v6 = OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_418();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_364();
  v9 = sub_227B1A6E4(v8);
  OUTLINED_FUNCTION_469(v9);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_349(v10, v11);
  v12 = OUTLINED_FUNCTION_100_3();
  v16 = sub_227C10AC0(v12, v13, v14, v15);
  OUTLINED_FUNCTION_159_2();
  if (v18)
  {
    v21 = OUTLINED_FUNCTION_55(v17);
    sub_227C10AC0(v21, v22, v23, v16);
  }

  v19 = OUTLINED_FUNCTION_120_1();
  v20(v19);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BE6420(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 3);
  v3 = *a1;
  sub_227D494C8();
  OUTLINED_FUNCTION_15_6();
  (*(v4 + 8))(&v1[v3]);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v5, v6);
}

uint64_t sub_227BE64B8(unsigned __int8 a1, char a2)
{
  v2 = 0x657669746361;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6574656C706D6F63;
    }

    else
    {
      v4 = 7237495;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x657669746361;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6574656C706D6F63;
    }

    else
    {
      v2 = 7237495;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227BE65A8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65636E6174736E69;
  }

  else
  {
    v3 = 0x6974696E69666564;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E6FLL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x65636E6174736E69;
  }

  else
  {
    v5 = 0x6974696E69666564;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227BE6664(uint64_t a1, unsigned __int8 a2)
{
  sub_227D4D048();
}

uint64_t sub_227BE66E8(uint64_t a1, char a2)
{
  sub_227D4D048();
}

uint64_t sub_227BE6758(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BE67DC(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227BE6874()
{
  OUTLINED_FUNCTION_37();
  v2 = OUTLINED_FUNCTION_521();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_5_1(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x6874646977 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1(0x6874646977, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 0x746867696568 && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_1(0x746867696568, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == 0x6F6C6F4374786574 && v0 == 0xEA00000000003172;
        if (v8 || (OUTLINED_FUNCTION_5_1(0x6F6C6F4374786574, 0xEA00000000003172) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = v1 == 0x6F6C6F4374786574 && v0 == 0xEA00000000003272;
          if (v9 || (OUTLINED_FUNCTION_5_1(0x6F6C6F4374786574, 0xEA00000000003272) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = v1 == 0x6F6C6F4374786574 && v0 == 0xEA00000000003372;
            if (v10 || (OUTLINED_FUNCTION_5_1(0x6F6C6F4374786574, 0xEA00000000003372) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = v1 == 0x6F6C6F4374786574 && v0 == 0xEA00000000003472;
              if (v11 || (OUTLINED_FUNCTION_5_1(0x6F6C6F4374786574, 0xEA00000000003472) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = OUTLINED_FUNCTION_503();
                if (v1 == v12 && v0 == v13)
                {

                  return 7;
                }

                else
                {
                  v15 = OUTLINED_FUNCTION_5_1(v12, v13);

                  if (v15)
                  {
                    return 7;
                  }

                  else
                  {
                    return 8;
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

uint64_t sub_227BE6A3C()
{
  result = OUTLINED_FUNCTION_521();
  switch(v1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    case 4:
    case 5:
    case 6:
      result = OUTLINED_FUNCTION_601();
      break;
    case 7:
      result = OUTLINED_FUNCTION_503();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227BE6B30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227BE6874();
  *a1 = result;
  return result;
}

uint64_t sub_227BE6B64()
{
  sub_227C1CEF4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227BE6B9C()
{
  sub_227C1CEF4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227BE6BD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91A8, &qword_227D5BFC0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_103();
  v3 = OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_256(v3, v4);
  sub_227C1CEF4();
  sub_227D4DC08();
  OUTLINED_FUNCTION_2_5();
  sub_227D4D9C8();
  if (!v1)
  {
    sub_227D4D9E8();
    sub_227D4D9E8();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
  }

  v5 = OUTLINED_FUNCTION_193();
  return v6(v5);
}

void *sub_227BE6DD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91B0, &qword_227D5BFC8);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75_2();
  v10 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_256(v10, v11);
  sub_227C1CEF4();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = sub_227D4D8F8();
  v14 = v13;
  OUTLINED_FUNCTION_66(1);
  sub_227D4D918();
  v16 = v15;
  OUTLINED_FUNCTION_66(2);
  sub_227D4D918();
  v18 = v17;
  OUTLINED_FUNCTION_66(3);
  v34 = sub_227D4D8A8();
  OUTLINED_FUNCTION_66(4);
  v33 = sub_227D4D8A8();
  v37 = v19;
  OUTLINED_FUNCTION_66(5);
  v32 = sub_227D4D8A8();
  v36 = v20;
  OUTLINED_FUNCTION_66(6);
  v31 = sub_227D4D8A8();
  v35 = v21;
  v40 = 7;
  v22 = sub_227D4D8A8();
  v30 = v23;
  (*(v8 + 8))(v3, v6);
  __src[0] = v12;
  __src[1] = v14;
  __src[2] = v16;
  __src[3] = v18;
  __src[4] = v34;
  OUTLINED_FUNCTION_458();
  __src[5] = v24;
  __src[6] = v33;
  __src[7] = v37;
  OUTLINED_FUNCTION_455(v32);
  __src[9] = v36;
  __src[10] = v31;
  __src[11] = v35;
  __src[12] = v22;
  __src[13] = v30;
  sub_227C1CF48(__src, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v39[0] = v12;
  v39[1] = v14;
  v39[2] = v16;
  v39[3] = v18;
  OUTLINED_FUNCTION_458();
  v39[4] = v26;
  v39[5] = v25;
  v39[6] = v33;
  v39[7] = v37;
  OUTLINED_FUNCTION_457();
  v39[8] = v28;
  v39[9] = v27;
  v39[10] = v31;
  v39[11] = v35;
  v39[12] = v22;
  v39[13] = v30;
  sub_227C1CF80(v39);
  return memcpy(a2, __src, 0x70uLL);
}

void *sub_227BE725C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_227BE6DD4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_227BE7378@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BE72C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227BE750C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BE7458(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BE79C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BE790C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227BE7B58@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BE7AA4(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BE7CF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BE7C38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_227BE7DD0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_329(&unk_280E7BC58);
  sub_227D494A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_329(&unk_280E7BC60);
  sub_227C17308(&unk_27D7E8670);
  OUTLINED_FUNCTION_57_4();
  sub_227D4CC68();

  memcpy(__dst, v3, sizeof(__dst));
  return memcpy(a1, __dst, 0x70uLL);
}

uint64_t sub_227BE7F44(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_227B17738();
  return sub_227BE7FAC(__dst);
}

void sub_227BE818C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_20();
  v2 = OUTLINED_FUNCTION_138_0();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_32_4();
  sub_227D49498();

  OUTLINED_FUNCTION_506();
}

void sub_227BE85B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_507();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_20();
  v2 = OUTLINED_FUNCTION_145_2();
  sub_227C164D0(v2);
  OUTLINED_FUNCTION_32_4();
  sub_227D49498();

  OUTLINED_FUNCTION_506();
}

uint64_t sub_227BE870C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BE8658(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_227BE87EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, uint64_t a26, char a27, uint64_t a28, char a29, char a30)
{
  OUTLINED_FUNCTION_351();
  v31 = v30;
  v78 = v32;
  v75 = v33;
  v35 = v34;
  v37 = v36;
  v76 = v38;
  v39 = *v30;
  v79 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v81 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v42);
  v31[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8EB0, &qword_227D5BB98);
  OUTLINED_FUNCTION_1_20();
  v80[0] = v39;
  v80[1] = v39;
  v80[2] = sub_227C164D0(&unk_280E7BC60);
  v80[3] = v80[2];
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = OUTLINED_FUNCTION_480(OpaqueTypeConformance2);
  __swift_allocate_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v31 + 4) = 16843009;
  v45 = OBJC_IVAR____TtCV16GameServicesCoreP33_2D441778A4A5881EFABEBF590F5A619432ChallengeDefinitionStoreSchemaV110Definition___observationRegistrar;
  sub_227D494B8();
  if (sub_227B4BF3C(v37))
  {
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    OUTLINED_FUNCTION_390();
    sub_227D4CAD8();

    v46 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v46, v47);
    swift_getKeyPath();
    v80[1] = v76;
    OUTLINED_FUNCTION_283();
    sub_227D4CAD8();

    v48 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v48, v49);
    swift_getKeyPath();
    v80[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8690, &qword_227D5B2A0);
    v50 = OUTLINED_FUNCTION_407();
    type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.PlatformMetadata(v50);
    sub_227C17660();
    sub_227D4CAC8();

    (*(v81 + 16))(v74, v35, v79);
    v51 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v51, v52);
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_10();
    sub_227C1CC14(v53);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_283();
    sub_227D4CAD8();

    v77 = *(v81 + 8);
    v54 = OUTLINED_FUNCTION_574();
    v55(v54);
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    v80[0] = v75;
    v80[1] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
    sub_227C1740C();
    OUTLINED_FUNCTION_434();
    sub_227D4CAD8();

    *(v31 + 16) = 0;
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    v80[0] = a21;
    v80[1] = a22;
    sub_227D4CAD8();

    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    OUTLINED_FUNCTION_458();
    v80[0] = v56;
    v80[1] = a24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
    OUTLINED_FUNCTION_434();
    sub_227D4CAD8();

    *(v31 + 17) = 0;
    v57 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v57, v58);
    swift_getKeyPath();
    memcpy(v80, a25, sizeof(v80));
    v59 = OUTLINED_FUNCTION_173();
    __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
    OUTLINED_FUNCTION_260();
    sub_227C17308(v61);
    OUTLINED_FUNCTION_283();
    sub_227D4CAD8();

    OUTLINED_FUNCTION_364();
    sub_227C1CB1C(v62, v63);
    *(v31 + 18) = 0;
    v64 = OUTLINED_FUNCTION_153_2();
    OUTLINED_FUNCTION_256(v64, v65);
    swift_getKeyPath();
    v80[0] = a26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
    sub_227C170F8();
    OUTLINED_FUNCTION_283();
    sub_227D4CAD8();

    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    LOBYTE(v80[0]) = a27 & 1;
    OUTLINED_FUNCTION_358();
    sub_227D4CAD8();

    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    v66 = OUTLINED_FUNCTION_407();
    type metadata accessor for ChallengeDefinitionStoreSchemaV1.Definition.LeaderboardMetadata(v66);
    OUTLINED_FUNCTION_9_8();
    sub_227C164D0(v67);

    OUTLINED_FUNCTION_358();
    sub_227D4CAE8();

    *(v31 + 19) = 0;
    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    LOBYTE(v80[0]) = a29 & 1;
    OUTLINED_FUNCTION_358();
    sub_227D4CAD8();

    if (a30)
    {
      v68 = 0x646567617473;
    }

    else
    {
      v68 = 1702259052;
    }

    if (a30)
    {
      v69 = 0xE600000000000000;
    }

    else
    {
      v69 = 0xE400000000000000;
    }

    OUTLINED_FUNCTION_256(v31 + 3, v31[6]);
    swift_getKeyPath();
    v80[0] = v68;
    v80[1] = v69;
    sub_227D4CAD8();

    v77(v35, v79);
  }

  else
  {

    sub_227C1CB1C(a25, &qword_27D7E8660);

    sub_227D49E08();
    OUTLINED_FUNCTION_20_7();
    sub_227C1CC14(v70);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_207_0(v71, "platformMetas can't be empty");
    OUTLINED_FUNCTION_14_0();
    (*(v72 + 104))();
    swift_willThrow();

    (*(v81 + 8))(v35, v79);
    __swift_destroy_boxed_opaque_existential_1Tm(v31 + 3);
    sub_227D494C8();
    OUTLINED_FUNCTION_15_6();
    (*(v73 + 8))(v31 + v45);
    OUTLINED_FUNCTION_58();
    swift_deallocPartialClassInstance();
  }

  OUTLINED_FUNCTION_352();
}

void sub_227BE915C()
{
  OUTLINED_FUNCTION_11();
  v0 = sub_227D4CD98();
  v1 = OUTLINED_FUNCTION_450(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_3();
  v37 = v2;
  OUTLINED_FUNCTION_191_2();
  v36 = sub_227D4CD48();
  OUTLINED_FUNCTION_6_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_531();
  *(swift_allocObject() + 16) = xmmword_227D59C60;
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_566();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_565();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v9 = OUTLINED_FUNCTION_148_1();
  v35 = *MEMORY[0x277CDD5A0];
  v34 = *(v4 + 104);
  v34(v8, v9);
  swift_getKeyPath();
  OUTLINED_FUNCTION_342();
  sub_227D4CD58();
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_257();
  v11 = sub_227C1CC14(v10);
  OUTLINED_FUNCTION_530(v11);
  OUTLINED_FUNCTION_578();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148_1();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v12 = OUTLINED_FUNCTION_148_1();
  (v34)(v8, v35, v36, v12);
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  v13 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8640, &unk_227D5B270);
  OUTLINED_FUNCTION_378();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227D4F750;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227D59C70;
  *(v15 + 32) = swift_getKeyPath();
  *(v15 + 40) = swift_getKeyPath();
  *(v15 + 48) = swift_getKeyPath();
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_227D59C70;
  *(v16 + 32) = swift_getKeyPath();
  *(v16 + 40) = swift_getKeyPath();
  *(v16 + 48) = swift_getKeyPath();
  *(v14 + 40) = v16;
  v17 = OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_85_1();
  v20 = sub_227B1A6E4(v19);
  OUTLINED_FUNCTION_530(v20);
  OUTLINED_FUNCTION_146_2();
  OUTLINED_FUNCTION_349(v21, v22);
  v23 = OUTLINED_FUNCTION_100_3();
  v26 = sub_227C10AC0(v23, v24, v25, v13);
  OUTLINED_FUNCTION_159_2();
  if (v28)
  {
    v31 = OUTLINED_FUNCTION_55(v27);
    sub_227C10AC0(v31, v32, v33, v26);
  }

  v29 = OUTLINED_FUNCTION_485();
  v30(v29, v37);
  OUTLINED_FUNCTION_611();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BE98F4()
{
  OUTLINED_FUNCTION_558();
  result = sub_227BE72C0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_227BE9920()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91B8, &qword_227D5BFD0);
  OUTLINED_FUNCTION_378();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_227D4E520;
  v3 = v1();
  *(v2 + 32) = v0;
  *(v2 + 40) = v3;
  return v2;
}

uint64_t sub_227BE99B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8748, &qword_227D5B6D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227D50C20;
  v1 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Invitee(0);
  OUTLINED_FUNCTION_6_11();
  v2 = sub_227C164D0(&unk_280E7BC30);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Participant(0);
  OUTLINED_FUNCTION_5_15();
  v4 = OUTLINED_FUNCTION_138_0();
  v5 = sub_227C164D0(v4);
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  v6 = type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  OUTLINED_FUNCTION_0_39();
  v7 = sub_227C164D0(&unk_280E7BC20);
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  return v0;
}

uint64_t sub_227BE9B80@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BE9AC0(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BE9D38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BE9C64();
  *a1 = result;
  return result;
}

uint64_t sub_227BEA0EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BEA02C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227BEA28C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BEA1D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_227BEA7A0()
{
  OUTLINED_FUNCTION_11();
  v0 = sub_227D4CD98();
  v1 = OUTLINED_FUNCTION_81_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_472(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_308_0();
  *(swift_allocObject() + 16) = xmmword_227D59C80;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_306();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_475(v3);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8698, &qword_227D5B348);
  OUTLINED_FUNCTION_378();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_227D4F750;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v5 = swift_allocObject();
  v5[2].n128_u64[0] = OUTLINED_FUNCTION_528(v5, xmmword_227D59C50);
  *(v4 + 32) = v5;
  OUTLINED_FUNCTION_198_2();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227D59C50;
  *(v6 + 32) = swift_getKeyPath();
  *(v4 + 40) = v6;
  v7 = OUTLINED_FUNCTION_276();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_416();
  v10 = sub_227B1A6E4(v9);
  OUTLINED_FUNCTION_469(v10);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  v11 = OUTLINED_FUNCTION_100_3();
  v15 = sub_227C10AC0(v11, v12, v13, v14);
  OUTLINED_FUNCTION_159_2();
  if (v17)
  {
    v20 = OUTLINED_FUNCTION_55(v16);
    sub_227C10AC0(v20, v21, v22, v15);
  }

  v18 = OUTLINED_FUNCTION_120_1();
  v19(v18);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BEAB98()
{
  OUTLINED_FUNCTION_558();
  result = sub_227BE9AC0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_227BEAC84@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BEABC0(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BEAE38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BEAD68();
  *a1 = result;
  return result;
}

uint64_t sub_227BEB1A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BEB0E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_227BEB34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_255();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  a9 = v20;
  swift_getKeyPath();
  sub_227C164D0(&unk_280E7BC08);
  OUTLINED_FUNCTION_510(&a9);

  swift_getKeyPath();
  OUTLINED_FUNCTION_34_4();
  v25 = OUTLINED_FUNCTION_374();
  sub_227C164D0(v25);
  v24();
  OUTLINED_FUNCTION_57_4();
  sub_227D4CC68();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227BEB4B0()
{
  OUTLINED_FUNCTION_579();
  swift_getKeyPath();
  OUTLINED_FUNCTION_577();
  OUTLINED_FUNCTION_5_15();
  v0 = OUTLINED_FUNCTION_374();
  v1 = sub_227C164D0(v0);
  OUTLINED_FUNCTION_410(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16);
}

void *sub_227BEB540(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *(v5 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8810, &qword_227D5B778);
  OUTLINED_FUNCTION_5_15();
  sub_227C164D0(&unk_280E7BC10);
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = OUTLINED_FUNCTION_480(OpaqueTypeConformance2);
  __swift_allocate_boxed_opaque_existential_1(v8);
  v9 = OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_430(v9);
  *(v5 + 16) = 16843009;
  sub_227D494B8();
  v10 = OUTLINED_FUNCTION_153_2();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  swift_getKeyPath();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance(0);
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_525();
  sub_227D4CAE8();

  *(v5 + 16) = 0;
  OUTLINED_FUNCTION_84_2();
  swift_getKeyPath();
  sub_227D4CAD8();

  sub_227BEB1E8(a4, a5, v12, v13, v14, v15, v16, v17);
  sub_227BEB4B0();
  sub_227BEB4B0();
  return v5;
}

void sub_227BEB7C0()
{
  OUTLINED_FUNCTION_11();
  v0 = sub_227D4CD98();
  v1 = OUTLINED_FUNCTION_81_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_472(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_308_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_443(v3, xmmword_227D59C90);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_306();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_102_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8730, &qword_227D5B6C0);
  OUTLINED_FUNCTION_198_2();
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_528(v4, xmmword_227D59C50);
  OUTLINED_FUNCTION_575(v5);
  v6 = OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_418();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_364();
  v9 = sub_227B1A6E4(v8);
  OUTLINED_FUNCTION_469(v9);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_349(v10, v11);
  v12 = OUTLINED_FUNCTION_100_3();
  v16 = sub_227C10AC0(v12, v13, v14, v15);
  OUTLINED_FUNCTION_159_2();
  if (v18)
  {
    v21 = OUTLINED_FUNCTION_55(v17);
    sub_227C10AC0(v21, v22, v23, v16);
  }

  v19 = OUTLINED_FUNCTION_120_1();
  v20(v19);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BEBBBC()
{
  OUTLINED_FUNCTION_558();
  result = sub_227BEABC0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_227BEBBE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BEBC3C();
  *a1 = result;
  return result;
}

uint64_t sub_227BEBDAC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BEBDF0(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BEBF54(uint64_t a1)
{
  sub_227BEBDF0(a1);
  OUTLINED_FUNCTION_372();
  if (v2 == sub_227BEBDF0(v3) && v1 == v4)
  {
    v6 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_121_1();
    v6 = sub_227D4DA78();
  }

  return v6 & 1;
}

uint64_t sub_227BEBFD0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_120();
  swift_beginAccess();
  return sub_227C19454(v1 + 24, a1);
}

void sub_227BEC014()
{
  OUTLINED_FUNCTION_11();
  v0 = sub_227D4CD98();
  v1 = OUTLINED_FUNCTION_81_3(v0);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_414(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_287();
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_227D4F750;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_306();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9140, &qword_227D5BD38);
  OUTLINED_FUNCTION_198_2();
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_198_2();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_528(v8, xmmword_227D59C50);
  OUTLINED_FUNCTION_575(v9);
  v10 = OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_418();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_25_5();
  v13 = sub_227B1A6E4(v12);
  OUTLINED_FUNCTION_469(v13);
  OUTLINED_FUNCTION_164_2();
  OUTLINED_FUNCTION_349(v14, v15);
  v16 = OUTLINED_FUNCTION_100_3();
  v20 = sub_227C10AC0(v16, v17, v18, v19);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v23 = OUTLINED_FUNCTION_55(v21);
    v20 = sub_227C10AC0(v23, v24, v25, v20);
  }

  *(v20 + 2) = v22 + 1;
  (*(v3 + 32))(&v20[v7 + v22 * v6]);
  OUTLINED_FUNCTION_348();
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_1();
}

unint64_t sub_227BEC364(uint64_t a1, uint64_t a2)
{
  sub_227D4D868();
  OUTLINED_FUNCTION_223();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_227BEC3AC(char a1)
{
  if (!a1)
  {
    return 0x657669746361;
  }

  if (a1 == 1)
  {
    return 0x6574656C706D6F63;
  }

  return 7237495;
}

unint64_t sub_227BEC42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227BEC364(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227BEC45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BEC3AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BEC54C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BEC488(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BEC8CC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BEC808(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BECE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_411();
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_253();
  v11(v10);
  return a5(v9);
}

uint64_t sub_227BED0B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BECFF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227BED0F8(uint64_t a1)
{
  OUTLINED_FUNCTION_608(a1);
  v2 = OUTLINED_FUNCTION_253();
  return v1(v2);
}

uint64_t sub_227BED288@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BED1C8(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BED39C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BED368();
  *a1 = result;
  return result;
}

uint64_t sub_227BED5C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227BED490();
  *a1 = result;
  return result;
}

uint64_t sub_227BED77C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BED6BC(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BED91C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BED85C(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_227BEDA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_255();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  a9 = v20;
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_5();
  v25 = OUTLINED_FUNCTION_235();
  sub_227C164D0(v25);
  OUTLINED_FUNCTION_510(&a9);

  swift_getKeyPath();
  OUTLINED_FUNCTION_14_9();
  v26 = OUTLINED_FUNCTION_374();
  sub_227C164D0(v26);
  v24();
  OUTLINED_FUNCTION_57_4();
  sub_227D4CC68();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227BEDB70()
{
  OUTLINED_FUNCTION_579();
  swift_getKeyPath();
  OUTLINED_FUNCTION_577();
  OUTLINED_FUNCTION_0_39();
  v0 = OUTLINED_FUNCTION_374();
  v1 = sub_227C164D0(v0);
  OUTLINED_FUNCTION_410(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_227BEDCC0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_227BEDC00(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227BEDD04(uint64_t a1)
{
  OUTLINED_FUNCTION_608(a1);
  v2 = OUTLINED_FUNCTION_253();
  return v1(v2);
}

void sub_227BEDE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34)
{
  OUTLINED_FUNCTION_351();
  v35 = v34;
  v92 = v37;
  v93 = v36;
  v39 = v38;
  v94 = v40;
  v95 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v46 = v45 - v44;
  v34[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8800, &qword_227D5B738);
  OUTLINED_FUNCTION_0_39();
  sub_227C164D0(&unk_280E7BC20);
  OUTLINED_FUNCTION_13_1();
  v34[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v34 + 3);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  v34[2] = 0x101010101010101;
  v47 = OBJC_IVAR____TtCV16GameServicesCoreP33_2D441778A4A5881EFABEBF590F5A619430ChallengeInstanceStoreSchemaV18Instance___observationRegistrar;
  sub_227D494B8();
  if (*(v39 + 16))
  {
    OUTLINED_FUNCTION_256(v34 + 3, v34[6]);
    swift_getKeyPath();
    sub_227D4CAD8();

    v89 = *(v42 + 16);
    (v89)(v46, v94, v95);
    OUTLINED_FUNCTION_256(v34 + 3, v34[6]);
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_10();
    sub_227C1CC14(v48);
    OUTLINED_FUNCTION_358();
    sub_227D4CAD8();

    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_455(v49);
    v50();
    v91 = v34;
    OUTLINED_FUNCTION_256(v34 + 3, v34[6]);
    swift_getKeyPath();
    OUTLINED_FUNCTION_358();
    sub_227D4CAD8();

    v42 = sub_227B30834(v39);
    v47 = *(v42 + 16);
    if (!v47)
    {
LABEL_15:

      v61 = v91;
      OUTLINED_FUNCTION_256(v91 + 3, v91[6]);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8728, &qword_227D5B618);
      type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance.GameMetadata(0);
      sub_227C18188();
      sub_227D4CAC8();

      OUTLINED_FUNCTION_548();
      v89();
      OUTLINED_FUNCTION_256(v61 + 3, v61[6]);
      swift_getKeyPath();
      sub_227D4CAD8();

      v62 = OUTLINED_FUNCTION_278();
      v90(v62);
      OUTLINED_FUNCTION_548();
      v89();
      OUTLINED_FUNCTION_256(v61 + 3, v61[6]);
      swift_getKeyPath();
      OUTLINED_FUNCTION_283();
      sub_227D4CAD8();

      v63 = OUTLINED_FUNCTION_278();
      v90(v63);
      OUTLINED_FUNCTION_256(v91 + 3, v91[6]);
      swift_getKeyPath();
      sub_227D4CAD8();

      sub_227BED2CC(a23, a24, v64, v65, v66, v67, v68, v69);
      sub_227BED3F4(a25);
      sub_227BED620(a26);
      sub_227BED7C0(a27, a28, v70, v71, v72, v73, v74, v75);
      sub_227BED960(a29, a30, v76, v77, v78, v79, v80, v81);
      sub_227BEDB70();
      sub_227BEDD38(a33, a34, v82, v83, v84, v85, v86, v87);
      sub_227BEDB70();
      (v90)(v92, v95);
      (v90)(v93, v95);
      v88 = OUTLINED_FUNCTION_451();
      v90(v88);
      goto LABEL_16;
    }

    sub_227D4D728();
    v35 = sub_227B3E1D8(v42);
    v53 = v42 + 56;
    v54 = v47 - 1;
    if ((v35 & 0x8000000000000000) == 0)
    {
      while (v35 < 1 << *(v42 + 32))
      {
        if ((*(v53 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        if (v51 != *(v42 + 36))
        {
          goto LABEL_18;
        }

        v97 = v51;
        v96 = v54;
        v98 = v52;
        type metadata accessor for ChallengeInstanceStoreSchemaV1.Instance.GameMetadata(0);
        OUTLINED_FUNCTION_166_2();
        v47 = swift_allocObject();
        sub_227D4CE58();
        *(v47 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8808, &qword_227D5B740);
        OUTLINED_FUNCTION_18_10();
        sub_227C164D0(&unk_280E7BC40);
        OUTLINED_FUNCTION_13_1();
        *(v47 + 56) = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1((v47 + 24));
        OUTLINED_FUNCTION_77_2();
        sub_227D4CC08();
        *(v47 + 16) = 1;
        sub_227D494B8();
        OUTLINED_FUNCTION_256((v47 + 24), *(v47 + 48));
        swift_getKeyPath();
        sub_227D4CAD8();

        sub_227D4D6F8();
        sub_227D4D738();
        OUTLINED_FUNCTION_177();
        sub_227D4D748();
        sub_227D4D708();
        if (v98)
        {
          goto LABEL_22;
        }

        if (v35 >= -(-1 << *(v42 + 32)))
        {
          goto LABEL_19;
        }

        v53 = v42 + 56;
        if ((*(v42 + 56 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
        {
          goto LABEL_20;
        }

        if (v97 != *(v42 + 36))
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_168_1();
        v55 = sub_227D4D5E8();
        if (!v96)
        {
          goto LABEL_15;
        }

        v35 = v55;
        v52 = 0;
        v51 = *(v42 + 36);
        v54 = v96 - 1;
        if (v55 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
  }

  sub_227D49E08();
  OUTLINED_FUNCTION_20_7();
  sub_227C1CC14(v56);
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_208();
  swift_allocError();
  OUTLINED_FUNCTION_207_0(v57, "gameBundleIDs can't be empty");
  OUTLINED_FUNCTION_14_0();
  (*(v58 + 104))();
  swift_willThrow();
  v59 = *(v42 + 8);
  v59(v92, v95);
  v59(v93, v95);
  v59(v94, v95);
  __swift_destroy_boxed_opaque_existential_1Tm((v35 + 24));
  sub_227D494C8();
  OUTLINED_FUNCTION_15_6();
  (*(v60 + 8))(v35 + v47);
  OUTLINED_FUNCTION_168_1();
  swift_deallocPartialClassInstance();
LABEL_16:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227BEE908(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = sub_227D4A528();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_227D4D808())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v26 = MEMORY[0x277D84F90];
    sub_227C11564(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v9 = v26;
    v19 = a3;
    v20 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    v18 = v6 + 32;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v20)
      {
        v12 = MEMORY[0x22AAA63D0](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(a3 + 8 * v10 + 32);
      }

      v25 = v12;
      v22(&v25);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v26 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_227C11564(v13 > 1, v14 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v14 + 1;
      (*(v6 + 32))(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v24, v21);
      ++v10;
      a3 = v19;
      if (v11 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void sub_227BEEB58()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_227D4CD98();
  v2 = OUTLINED_FUNCTION_450(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  v41 = v3;
  OUTLINED_FUNCTION_191_2();
  v39 = sub_227D4CD48();
  OUTLINED_FUNCTION_6_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  v10 = *(v0 + 72);
  OUTLINED_FUNCTION_531();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227D59CA0;
  v12 = v11 + v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_475(0x6F7461657263);
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  v13 = OUTLINED_FUNCTION_148_1();
  v14 = *MEMORY[0x277CDD5A0];
  v40 = *(v5 + 104);
  v40(v9, v14, v39, v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_419();
  sub_227D4CD58();
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_257();
  v38 = sub_227C1CC14(v15);
  OUTLINED_FUNCTION_530(v38);
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  OUTLINED_FUNCTION_455(v12 + 8 * v10);
  swift_getKeyPath();
  v16 = OUTLINED_FUNCTION_148_1();
  v40(v9, v14, v39, v16);
  swift_getKeyPath();
  OUTLINED_FUNCTION_513();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_146_2();
  OUTLINED_FUNCTION_539();
  sub_227D4CD88();
  swift_getKeyPath();
  v17 = OUTLINED_FUNCTION_148_1();
  v40(v9, v14, v39, v17);
  swift_getKeyPath();
  OUTLINED_FUNCTION_513();
  OUTLINED_FUNCTION_174_2();
  v18 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_64_1();
  sub_227D4CD68();
  OUTLINED_FUNCTION_548();
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148_1();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_78_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_148_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E86B0, &qword_227D5B5D8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_227D50C20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  OUTLINED_FUNCTION_378();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_227D59CB0;
  *(v20 + 32) = swift_getKeyPath();
  *(v20 + 40) = swift_getKeyPath();
  *(v19 + 32) = v20;
  OUTLINED_FUNCTION_198_2();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_227D59C50;
  *(v21 + 32) = swift_getKeyPath();
  *(v19 + 40) = v21;
  OUTLINED_FUNCTION_198_2();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_227D59C50;
  *(v22 + 32) = swift_getKeyPath();
  *(v19 + 48) = v22;
  v23 = OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_78_0();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_149();
  v26 = sub_227B1A6E4(v25);
  OUTLINED_FUNCTION_530(v26);
  OUTLINED_FUNCTION_146_2();
  sub_227D4CD88();
  v27 = OUTLINED_FUNCTION_100_3();
  v30 = sub_227C10AC0(v27, v28, v29, v18);
  OUTLINED_FUNCTION_159_2();
  if (v32)
  {
    v35 = OUTLINED_FUNCTION_55(v31);
    sub_227C10AC0(v35, v36, v37, v30);
  }

  v33 = OUTLINED_FUNCTION_485();
  v34(v33, v41);
  OUTLINED_FUNCTION_611();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BEF418()
{
  OUTLINED_FUNCTION_558();
  result = sub_227BEC488(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_227BEF448()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v119 = v4;
  v120 = v5;
  sub_227D49328();
  OUTLINED_FUNCTION_9();
  v116 = v7;
  v117 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  v112 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_438();
  v17 = sub_227D4CCB8();
  v18 = OUTLINED_FUNCTION_5(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_3();
  v107 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v20);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_104();
  v22 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v111 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_3();
  v110 = v25;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_314();
  v106 = v27;
  OUTLINED_FUNCTION_191_2();
  sub_227D4CCF8();
  OUTLINED_FUNCTION_9();
  v114 = v29;
  v115 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_3();
  v108 = v30;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v103 - v32;
  v118 = v11;
  v113 = &v103 - v32;
  if (v3)
  {
    v107 = v22;
    sub_227D4CCC8();
  }

  else
  {
    v103 = v10;
    v104 = v0;
    v109 = v13;
    v105 = __swift_project_boxed_opaque_existential_1(v120, v120[3]);
    sub_227B281AC();
    v34 = objc_opt_self();
    sub_227D4CE58();
    v35 = [v34 defaultManager];
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_120();
    v36 = v119;
    v39(v37, v38);

    if (__swift_getEnumTagSinglePayload(v1, 1, v22) == 1)
    {
      sub_227C1CB1C(v1, &qword_27D7E6CD8);
      sub_227B1AF8C();
      v40 = v109;
      OUTLINED_FUNCTION_588();
      v41(v104);
      v42 = v116;
      v43 = v117;
      v44 = OUTLINED_FUNCTION_173();
      v45(v44);
      v46 = sub_227D4CA98();
      v47 = sub_227D4D438();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_12_1();
        v115 = OUTLINED_FUNCTION_420();
        v121 = v115;
        *v48 = 136315394;
        OUTLINED_FUNCTION_298();
        *(v48 + 4) = sub_227B1B1A4(0xD00000000000001ALL, v49, v50);
        *(v48 + 12) = 2080;
        OUTLINED_FUNCTION_86_3();
        sub_227C1CC14(v51);
        v52 = sub_227D4DA38();
        v53 = *(v42 + 8);
        v54 = OUTLINED_FUNCTION_267();
        v53(v54);
        v55 = OUTLINED_FUNCTION_58();
        sub_227B1B1A4(v55, v56, v57);
        OUTLINED_FUNCTION_595();

        *(v48 + 14) = v52;
        _os_log_impl(&dword_227B0D000, v46, v47, "%s failed to create db url for locale: %s", v48, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();

        (v53)(v119, v43);
        (*(v40 + 8))(v104, v118);
        goto LABEL_14;
      }

      v101 = *(v42 + 8);
      v101(v36, v43);
      v102 = OUTLINED_FUNCTION_267();
      (v101)(v102);
      v95 = OUTLINED_FUNCTION_116_0();
LABEL_13:
      v97(v95, v96);
      goto LABEL_14;
    }

    v58 = v111;
    v59 = v106;
    v60 = OUTLINED_FUNCTION_82();
    v61(v60);
    v11 = "itionStore.store";
    v62 = OUTLINED_FUNCTION_340();
    v63(v62);
    sub_227D4CCA8();
    v33 = v113;
    OUTLINED_FUNCTION_603(0xD00000000000001ALL, 0x8000000227D77420);
    v64 = *(v58 + 8);
    v107 = v22;
    v64(v59, v22);
    v13 = v109;
  }

  sub_227D4CBB8();
  OUTLINED_FUNCTION_419();
  sub_227D4CDE8();
  sub_227C1CC54();
  sub_227D4CD38();
  sub_227C1CCA8();
  v65 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_520(v65, &type metadata for ChallengeDefinitionStoreMigrationPlan);
  OUTLINED_FUNCTION_482();

  v67 = v114;
  v66 = v115;
  if (!v33)
  {
    v93 = OUTLINED_FUNCTION_423();
    v94(v93);
    v95 = OUTLINED_FUNCTION_82();
    goto LABEL_13;
  }

  type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_198_2();
  swift_allocObject();
  OUTLINED_FUNCTION_419();
  sub_227D4CB88();
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_280();
  swift_retain_n();
  sub_227D4CB98();
  OUTLINED_FUNCTION_342();
  sub_227D4CD28();
  OUTLINED_FUNCTION_166_2();
  swift_allocObject();
  OUTLINED_FUNCTION_78_0();
  v68 = sub_227D4CD18();
  OUTLINED_FUNCTION_261();
  v70 = sub_227C1CC14(v69);
  *(v11 + 2) = v68;
  *(v11 + 3) = v70;
  *(v11 + 4) = v33;
  v71 = sub_227B1AF8C();
  v72 = v112;
  (*(v13 + 16))(v112, v71, v118);
  OUTLINED_FUNCTION_588();
  v73 = v108;
  v74(v108, v33, v66);
  v75 = sub_227D4CA98();
  v76 = sub_227D4D428();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = OUTLINED_FUNCTION_12_1();
    v78 = OUTLINED_FUNCTION_420();
    v109 = v13;
    v106 = v78;
    v121 = v78;
    *v77 = 136315394;
    OUTLINED_FUNCTION_298();
    *(v77 + 4) = sub_227B1B1A4(0xD00000000000001ALL, v79, v80);
    *(v77 + 12) = 2080;
    MEMORY[0x22AAA5A20]();
    sub_227D490C8();
    OUTLINED_FUNCTION_492();
    v81 = OUTLINED_FUNCTION_225();
    v82(v81, v107);
    v83 = *(v67 + 8);
    v84 = v73;
    v85 = v115;
    v83(v84, v115);
    v86 = OUTLINED_FUNCTION_116_0();
    v89 = sub_227B1B1A4(v86, v87, v88);

    *(v77 + 14) = v89;
    _os_log_impl(&dword_227B0D000, v75, v76, "%s initialized at: %s", v77, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_135_3();
    MEMORY[0x22AAA7130]();
    v90 = OUTLINED_FUNCTION_101_2();
    MEMORY[0x22AAA7130](v90);

    v91 = OUTLINED_FUNCTION_423();
    v92(v91);
    (*(v109 + 8))(v112, v118);
    v83(v113, v85);
  }

  else
  {

    v98 = OUTLINED_FUNCTION_423();
    v99(v98);
    v100 = *(v67 + 8);
    v100(v73, v66);
    (*(v13 + 8))(v72, v118);
    v100(v113, v66);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227BEFD8C()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[3] = v7;
  v8 = sub_227D4CAB8();
  v1[10] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_379();
  v1[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF8, &qword_227D5BA48);
  OUTLINED_FUNCTION_5(v10);
  v1[14] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D00, &qword_227D5BA50);
  v1[15] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_30();
  v13 = sub_227D49F28();
  v1[18] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[19] = v14;
  v1[20] = OUTLINED_FUNCTION_379();
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for ChallengeDefinitionStoreActor();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(v15);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v16 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227BEFF60()
{
  v94 = v0;
  v3 = v0[8];
  if (!*(v3 + 16))
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_20_7();
    sub_227C1CC14(v50);
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_207_0(v51, "releaseStates can't be empty");
    OUTLINED_FUNCTION_14_0();
    (*(v52 + 104))();
    swift_willThrow();
    goto LABEL_22;
  }

  v4 = v0[19];
  v5 = v3 + 56;
  v92 = MEMORY[0x277D84FA0];
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v89 = v4 + 16;
  v86 = v4 + 88;
  LODWORD(v85) = *MEMORY[0x277D0CEF0];
  HIDWORD(v85) = *MEMORY[0x277D0CEE8];
  HIDWORD(v84) = *MEMORY[0x277D0CEE0];
  v88 = v0[19];
  v90 = (v4 + 8);
  sub_227D4CE58();
  v10 = 0;
  v87 = v3;
  if (v8)
  {
    while (1)
    {
LABEL_9:
      v2 = v88;
      v0 = v89;
      v12 = *(v3 + 48) + *(v88 + 72) * (__clz(__rbit64(v8)) | (v10 << 6));
      v13 = *(v88 + 16);
      (v13)(v91[21], v12, v91[18]);
      v14 = OUTLINED_FUNCTION_87_1();
      v13(v14);
      v15 = OUTLINED_FUNCTION_91_0();
      v17 = v16(v15);
      if (v17 == HIDWORD(v85))
      {
        v18 = 0xE400000000000000;
        v19 = 1702259052;
        v3 = v87;
      }

      else
      {
        v3 = v87;
        if (v17 == v85)
        {
          v18 = 0xE600000000000000;
          v19 = 0x646567617473;
        }

        else
        {
          if (v17 != HIDWORD(v84))
          {

            sub_227D49E08();
            OUTLINED_FUNCTION_20_7();
            sub_227C1CC14(v79);
            OUTLINED_FUNCTION_317();
            OUTLINED_FUNCTION_208();
            swift_allocError();
            sub_227D49DC8();
            swift_willThrow();
            v80 = *v90;
            v81 = OUTLINED_FUNCTION_174();
            v80(v81);
            v82 = OUTLINED_FUNCTION_177();
            v80(v82);
            goto LABEL_22;
          }

          v19 = 0x6D706F6C65766564;
          v18 = 0xEB00000000746E65;
        }
      }

      v8 &= v8 - 1;
      v1 = v91[18];
      sub_227B274CC(v93, v19, v18);

      v20 = OUTLINED_FUNCTION_91_0();
      v21(v20);
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v0 = v91;
  v90 = v91[22];
  v23 = v91[6];
  v22 = v91[7];
  v24 = v91[4];
  v25 = v91[5];

  v26 = swift_task_alloc();
  v26[2] = v24;
  v26[3] = v25;
  v26[4] = v92;
  v26[5] = v23;
  v26[6] = v22;
  v91[2] = OUTLINED_FUNCTION_495();
  OUTLINED_FUNCTION_552();
  sub_227D49378();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8D08, &qword_227D5BA58);
  v27 = OUTLINED_FUNCTION_107_2();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9108, &qword_227D5BD18);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9110, &qword_227D5BD20);
  OUTLINED_FUNCTION_10_0(v31);
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_10();
  sub_227C1CC14(v32);
  sub_227D48ED8();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_525();
  OUTLINED_FUNCTION_173();
  sub_227D4CBF8();
  OUTLINED_FUNCTION_7_16();
  sub_227C164D0(&unk_280E7BC78);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_280();
  v1 = 0;
  v2 = sub_227D4CB38();
  v55 = v91[13];
  v56 = v91[10];
  v57 = v91[11];

  v58 = sub_227B1AF8C();
  (*(v57 + 16))(v55, v58, v56);
  sub_227D4CE58();
  v59 = sub_227D4CA98();
  v60 = sub_227D4D428();
  if (OUTLINED_FUNCTION_33_4(v60))
  {
    OUTLINED_FUNCTION_415();
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = sub_227B4BF3C(v2);

    OUTLINED_FUNCTION_486();
    _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
    OUTLINED_FUNCTION_135_3();
    MEMORY[0x22AAA7130]();
  }

  else
  {
  }

  (*(v91[11] + 8))(v91[13], v91[10]);
  result = sub_227B4BF3C(v2);
  if (!result)
  {
    (*(v91[16] + 8))(v91[17], v91[15]);

    v76 = 1;
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_40:
    MEMORY[0x22AAA63D0](0, v2);
LABEL_33:

    v68 = OUTLINED_FUNCTION_371();
    sub_227BF1248(v68, v69, v70, v71, v72, v73, v74, v75, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93[0], v93[1]);
    if (v1)
    {
      v34 = v0[11];
      v33 = v0[12];
      v35 = v0[10];

      v36 = sub_227B1AF8C();
      (*(v34 + 16))(v33, v36, v35);
      v37 = v1;
      v38 = sub_227D4CA98();
      v39 = sub_227D4D438();

      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_415();
        v40 = swift_slowAlloc();
        v41 = OUTLINED_FUNCTION_13_3();
        *v40 = 138412290;
        v42 = v1;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_227B0D000, v38, v39, "Failed to fetch challenge definitions from store: %@", v40, 0xCu);
        sub_227C1CB1C(v41, &qword_27D7E68C8);
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
        v44 = OUTLINED_FUNCTION_101_2();
        MEMORY[0x22AAA7130](v44);
      }

      v46 = v0[11];
      v45 = v0[12];
      v47 = v0[10];

      (*(v46 + 8))(v45, v47);
      swift_willThrow();
      v48 = OUTLINED_FUNCTION_141();
      v49(v48);

LABEL_22:

      OUTLINED_FUNCTION_18();
LABEL_23:

      return v53();
    }

    (*(v0[16] + 8))(v0[17], v0[15]);

    v76 = 0;
LABEL_37:
    v77 = v0[3];
    v78 = sub_227D4A3B8();
    __swift_storeEnumTagSinglePayload(v77, v76, 1, v78);

    OUTLINED_FUNCTION_15_0();
    goto LABEL_23;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_33;
  }

  __break(1u);
  return result;
}