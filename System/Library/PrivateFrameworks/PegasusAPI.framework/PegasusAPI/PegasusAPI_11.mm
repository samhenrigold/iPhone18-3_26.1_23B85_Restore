uint64_t sub_1B8DC6CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA290, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC6D44(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9F98, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC6DB4(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBAB9F98, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC6E34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9DA0);
  __swift_project_value_buffer(v0, qword_1EBAB9DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GTIN_TYPE_GTIN8";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GTIN_TYPE_GTIN12";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GTIN_TYPE_GTIN13";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GTIN_TYPE_GTIN14";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "GTIN_TYPE_ISBN10";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "GTIN_TYPE_ISBN13";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "GTIN_TYPE_ASIN";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "GTIN_OTHER";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DC7190()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9DB8);
  __swift_project_value_buffer(v0, qword_1EBAB9DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WEB_DATA";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DATA_FEED_MANAGEMENT_DATA";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CLUSTER_VARIANT_ENTITY_METADATA";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DC73F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9DD0);
  __swift_project_value_buffer(v0, qword_1EBAB9DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ITEM_CONDITION_TYPE_UNSPECIFIED";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ITEM_CONDITION_TYPE_DAMAGED";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ITEM_CONDITION_TYPE_NEW";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ITEM_CONDITION_TYPE_REFURBISHED";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ITEM_CONDITION_TYPE_USED";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DC76A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9DE8);
  __swift_project_value_buffer(v0, qword_1EBAB9DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ITEM_AVALIABILITY_TYPE_UNSPECIFIED";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ITEM_AVALIABILITY_TYPE_BACK_ORDER";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ITEM_AVALIABILITY_TYPE_DISCONTINUED";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ITEM_AVALIABILITY_TYPE_IN_STOCK";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ITEM_AVALIABILITY_TYPE_IN_STORE_ONLY";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ITEM_AVALIABILITY_TYPE_LIMITED_AVAILABILITY";
  *(v18 + 1) = 43;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "ITEM_AVALIABILITY_TYPE_ONLINE_ONLY";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "ITEM_AVALIABILITY_TYPE_OUT_OF_STOCK";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "ITEM_AVALIABILITY_TYPE_PRE_ORDER";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "ITEM_AVALIABILITY_TYPE_PRE_SALE";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "ITEM_AVALIABILITY_TYPE_SOLD_OUT";
  *(v28 + 1) = 31;
  v28[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DC7AF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E10);
  __swift_project_value_buffer(v0, qword_1EBAB9E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "price_macro";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "price_currency";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductMetadata.Price.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Argos_Protos_Productdatapb_ProductMetadata.Price.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductMetadata.Price.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_6();
  v8 = sub_1B8DCDD6C(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8DC7F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA288, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.Price);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC7F80(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA0F0, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.Price);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC7FF0(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBABA0F0, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.Price);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC8090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD00000000000002ALL;
  *a5 = 0x80000001B96EA5F0;
  return result;
}

uint64_t sub_1B8DC811C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B8DC816C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E38);
  __swift_project_value_buffer(v0, qword_1EBAB9E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductMetadata.Gtin.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8DC83C0(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Argos_Protos_Productdatapb_ProductMetadata.Gtin.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (sub_1B8DCDDB4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
    {
      type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductMetadata.Gtin.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  OUTLINED_FUNCTION_141_1();
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v6 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v6 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v6 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_6();
  v11 = sub_1B8DCDD6C(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8DC8678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA280, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC86F8(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA108, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC8768(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBABA108, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC8800()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E50);
  __swift_project_value_buffer(v0, qword_1EBAB9E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_url";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_main_image";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_review_image";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "display_rank";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "width";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "height";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Argos_Protos_Productdatapb_ProductImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
    {
      if (*(v1 + 17) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
      {
        if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
        {
          if (!*(v1 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
          {
            if (!*(v1 + 28) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
            {
              type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  OUTLINED_FUNCTION_141_1();
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 17) != *(v1 + 17) || *(v2 + 20) != *(v1 + 20) || *(v2 + 24) != *(v1 + 24) || *(v2 + 28) != *(v1 + 28))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  v8 = sub_1B8DCDD6C(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8DC8E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA278, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC8EA8(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9F90, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC8F18(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBAB9F90, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC8FB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E68);
  __swift_project_value_buffer(v0, qword_1EBAB9E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "product_metadata";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "product_images";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "original_doc_key";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Argos_Protos_Productdatapb_Product.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8DC9C84();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8DCB1D0();
        break;
    }
  }
}

void Argos_Protos_Productdatapb_Product.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_159();
  v7 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v9 = OUTLINED_FUNCTION_140_1();
  type metadata accessor for Argos_Protos_Productdatapb_Product(v9);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB92D0, &unk_1B964DAB0);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    sub_1B8DC3FF4();
    OUTLINED_FUNCTION_11_3();
    sub_1B8DCDD6C(v10, v11, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata);
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_158_1();
    if (v1)
    {
      goto LABEL_9;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0), OUTLINED_FUNCTION_35_0(), sub_1B8DCDD6C(v12, v13, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductImage), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v14 || (OUTLINED_FUNCTION_153_1(), sub_1B964C700(), !v1))
    {
      sub_1B964C290();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Productdatapb_Product.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_139_1();
  v5 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D8, &qword_1B9651200) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  v29 = type metadata accessor for Argos_Protos_Productdatapb_Product(v13);
  v30 = v1;
  v14 = *(v11 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v15)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_1_4();
      sub_1B8DC3FF4();
      if (*&v10[*(v5 + 20)] == *(v3 + *(v5 + 20)) || (, , sub_1B8DC5BD0(), v19 = v18, , , (v19 & 1) != 0))
      {
        v20 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_6();
        sub_1B8DCDD6C(v21, v22, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_259();
        sub_1B964C850();
        OUTLINED_FUNCTION_34_1();
        sub_1B8DC40A4();
        OUTLINED_FUNCTION_686();
        sub_1B8DC40A4();
        sub_1B8D9207C(v2, &qword_1EBAB92D0, &unk_1B964DAB0);
        if (v20)
        {
          goto LABEL_14;
        }

LABEL_21:
        v28 = 0;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_101_1();
      sub_1B8DC40A4();
      sub_1B8DC40A4();
      v16 = &qword_1EBAB92D0;
      v17 = &unk_1B964DAB0;
LABEL_10:
      sub_1B8D9207C(v2, v16, v17);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_33_3();
    sub_1B8DC40A4();
LABEL_9:
    v16 = &qword_1EBAB92D8;
    v17 = &qword_1B9651200;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v2 + v14);
  if (!v15)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB92D0, &unk_1B964DAB0);
LABEL_14:
  v23 = v30;
  sub_1B8D7BC20(*v30, *v0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_21;
  }

  v25 = v23[1] == v0[1] && v23[2] == v0[2];
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v26, v27, MEMORY[0x1E69AAC10]);
  v28 = sub_1B964C850();
LABEL_22:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DC98D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA270, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC9950(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC99C0(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC9A58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E80);
  __swift_project_value_buffer(v0, qword_1EBAB9E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "products";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

void Argos_Protos_Productdatapb_ProductData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8DC9C84();
    }
  }
}

void sub_1B8DC9C84()
{
  OUTLINED_FUNCTION_273_0();
  v1 = OUTLINED_FUNCTION_114_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_157_1(v0, v4, v3);
  OUTLINED_FUNCTION_272_0();
}

uint64_t Argos_Protos_Productdatapb_ProductData.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Productdatapb_Product(0), sub_1B8DCDD6C(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product, protocol conformance descriptor for Argos_Protos_Productdatapb_Product), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Argos_Protos_Productdatapb_ProductData(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductData.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_51_2(a1);
  sub_1B8D719A4(v1, *v2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Productdatapb_ProductData(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  v6 = sub_1B8DCDD6C(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B8DC9EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA268, type metadata accessor for Argos_Protos_Productdatapb_ProductData, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC9F28(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA140, type metadata accessor for Argos_Protos_Productdatapb_ProductData, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC9F98(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBABA140, type metadata accessor for Argos_Protos_Productdatapb_ProductData, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductData);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCA030()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E98);
  __swift_project_value_buffer(v0, qword_1EBAB9E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "product_metadata";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "product_image";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DCA25C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_696();
      OUTLINED_FUNCTION_171_0();
      a5();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_696();
      OUTLINED_FUNCTION_171_0();
      a4();
    }
  }

  return result;
}

uint64_t sub_1B8DCA2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo(0);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  sub_1B8DCDD6C(&qword_1EBAB9F98, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata);
  return sub_1B964C580();
}

uint64_t sub_1B8DCA3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo(0);
  type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  sub_1B8DCDD6C(&qword_1EBAB9F90, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductImage);
  return sub_1B964C580();
}

void Argos_Protos_Productdatapb_ProductSourceInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v25 = v4;
  v26 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_140_1();
  v23 = type metadata accessor for Argos_Protos_Productdatapb_ProductImage(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v22[1] = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo(0);
  v24 = v3;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB92D0, &unk_1B964DAB0);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    sub_1B8DC3FF4();
    OUTLINED_FUNCTION_11_3();
    sub_1B8DCDD6C(v18, v19, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata);
    sub_1B964C740();
    sub_1B8DC40A4();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v2, 1, v23) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9F28, &qword_1B96511F0);
LABEL_7:
    OUTLINED_FUNCTION_176_1();
    sub_1B964C290();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_97_1();
  sub_1B8DC3FF4();
  OUTLINED_FUNCTION_35_0();
  sub_1B8DCDD6C(v20, v21, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductImage);
  OUTLINED_FUNCTION_175_1();
  sub_1B964C740();
  OUTLINED_FUNCTION_158_1();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Productdatapb_ProductSourceInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v44 = type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v42[1] = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v42[2] = v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9FB8, &qword_1B9651208);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v45 = v10;
  v11 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D8, &qword_1B9651200) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_140_1();
  v42[3] = type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo(v22);
  v23 = *(v20 + 56);
  v46 = v2;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v24)
  {
    OUTLINED_FUNCTION_37_0(v0 + v23);
    if (v24)
    {
      sub_1B8D9207C(v0, &qword_1EBAB92D0, &unk_1B964DAB0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v23);
  if (v24)
  {
    OUTLINED_FUNCTION_33_3();
    sub_1B8DC40A4();
LABEL_9:
    v25 = &qword_1EBAB92D8;
    v26 = &qword_1B9651200;
LABEL_10:
    v27 = v0;
LABEL_23:
    sub_1B8D9207C(v27, v25, v26);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1_4();
  sub_1B8DC3FF4();
  if (*&v19[*(v11 + 20)] != *(v15 + *(v11 + 20)))
  {

    sub_1B8DC5BD0();
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      sub_1B8DC40A4();
      OUTLINED_FUNCTION_432();
      sub_1B8DC40A4();
      v25 = &qword_1EBAB92D0;
      v26 = &unk_1B964DAB0;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v30, v31, MEMORY[0x1E69AAC10]);
  v32 = sub_1B964C850();
  OUTLINED_FUNCTION_32_2();
  sub_1B8DC40A4();
  sub_1B8DC40A4();
  sub_1B8D9207C(v0, &qword_1EBAB92D0, &unk_1B964DAB0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  v33 = *(v43 + 48);
  v34 = v45;
  sub_1B8D92024();
  sub_1B8D92024();
  v35 = v44;
  OUTLINED_FUNCTION_178(v34, 1, v44);
  if (v24)
  {
    OUTLINED_FUNCTION_178(v34 + v33, 1, v35);
    if (v24)
    {
      sub_1B8D9207C(v34, &qword_1EBAB9F28, &qword_1B96511F0);
LABEL_27:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_6();
      sub_1B8DCDD6C(v40, v41, MEMORY[0x1E69AAC10]);
      v37 = sub_1B964C850();
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v34 + v33, 1, v35);
  if (v36)
  {
    OUTLINED_FUNCTION_98_1();
    sub_1B8DC40A4();
LABEL_22:
    v25 = &qword_1EBAB9FB8;
    v26 = &qword_1B9651208;
    v27 = v34;
    goto LABEL_23;
  }

  sub_1B8DC3FF4();
  v38 = OUTLINED_FUNCTION_461();
  v39 = static Argos_Protos_Productdatapb_ProductImage.== infix(_:_:)(v38);
  OUTLINED_FUNCTION_294();
  sub_1B8DC40A4();
  OUTLINED_FUNCTION_182();
  sub_1B8DC40A4();
  sub_1B8D9207C(v34, &qword_1EBAB9F28, &qword_1B96511F0);
  if (v39)
  {
    goto LABEL_27;
  }

LABEL_24:
  v37 = 0;
LABEL_25:
  OUTLINED_FUNCTION_264(v37);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DCAD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA260, type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductSourceInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DCADA8(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA158, type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductSourceInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DCAE18(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBABA158, type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductSourceInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCAEB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9EB0);
  __swift_project_value_buffer(v0, qword_1EBAB9EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "original_key";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "product_metadata";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "product_image";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductNetNode.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8DCB1D0();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8DCB260(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DCB1D0()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_11_3();
  sub_1B8DCDD6C(v1, v2, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

uint64_t sub_1B8DCB260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  sub_1B8DCDD6C(&qword_1EBAB9F90, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductImage);
  return sub_1B964C580();
}

void Argos_Protos_Productdatapb_ProductNetNode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_159();
  v24 = type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v23[3] = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v15 || (sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v16 || (sub_1B964C700(), !v0))
    {
      v23[2] = v3;
      v23[1] = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
      sub_1B8D92024();
      v17 = OUTLINED_FUNCTION_538();
      if (__swift_getEnumTagSinglePayload(v17, v18, v13) == 1)
      {
        sub_1B8D9207C(v12, &qword_1EBAB92D0, &unk_1B964DAB0);
      }

      else
      {
        sub_1B8DC3FF4();
        OUTLINED_FUNCTION_11_3();
        sub_1B8DCDD6C(v19, v20, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata);
        sub_1B964C740();
        sub_1B8DC40A4();
        if (v0)
        {
          goto LABEL_12;
        }
      }

      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v1, 1, v24) == 1)
      {
        sub_1B8D9207C(v1, &qword_1EBAB9F28, &qword_1B96511F0);
LABEL_11:
        sub_1B964C290();
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_97_1();
      sub_1B8DC3FF4();
      OUTLINED_FUNCTION_35_0();
      sub_1B8DCDD6C(v21, v22, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductImage);
      sub_1B964C740();
      OUTLINED_FUNCTION_158_1();
      if (!v0)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Productdatapb_ProductNetNode.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v48 = v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9FB8, &qword_1B9651208);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_258();
  v13 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v18);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D8, &qword_1B9651200);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_159();
  v24 = *v1 == *v0 && v1[1] == v0[1];
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v25 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v46[2] = v4;
  v47 = v2;
  v46[0] = v8;
  v46[1] = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  v26 = *(v22 + 48);
  OUTLINED_FUNCTION_171_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_171_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (v24)
  {
    OUTLINED_FUNCTION_37_0(v3 + v26);
    if (v24)
    {
      sub_1B8D9207C(v3, &qword_1EBAB92D0, &unk_1B964DAB0);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3 + v26);
  if (v27)
  {
    OUTLINED_FUNCTION_33_3();
    sub_1B8DC40A4();
LABEL_19:
    v28 = &qword_1EBAB92D8;
    v29 = &qword_1B9651200;
LABEL_20:
    v30 = v3;
LABEL_33:
    sub_1B8D9207C(v30, v28, v29);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_4();
  sub_1B8DC3FF4();
  if (*&v21[*(v13 + 20)] != *(v17 + *(v13 + 20)))
  {

    OUTLINED_FUNCTION_176_1();
    sub_1B8DC5BD0();
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      OUTLINED_FUNCTION_101_1();
      sub_1B8DC40A4();
      OUTLINED_FUNCTION_182();
      sub_1B8DC40A4();
      v28 = &qword_1EBAB92D0;
      v29 = &unk_1B964DAB0;
      goto LABEL_20;
    }
  }

  v33 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v34, v35, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_34_1();
  sub_1B8DC40A4();
  sub_1B8DC40A4();
  sub_1B8D9207C(v3, &qword_1EBAB92D0, &unk_1B964DAB0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_24:
  v36 = *(v49 + 48);
  v37 = v47;
  sub_1B8D92024();
  sub_1B8D92024();
  v38 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_81(v38, v39);
  if (v24)
  {
    OUTLINED_FUNCTION_37_0(v37 + v36);
    if (v24)
    {
      sub_1B8D9207C(v37, &qword_1EBAB9F28, &qword_1B96511F0);
LABEL_37:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_6();
      sub_1B8DCDD6C(v44, v45, MEMORY[0x1E69AAC10]);
      v42 = sub_1B964C850();
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v40 = v48;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v37 + v36);
  if (v41)
  {
    OUTLINED_FUNCTION_98_1();
    sub_1B8DC40A4();
LABEL_32:
    v28 = &qword_1EBAB9FB8;
    v29 = &qword_1B9651208;
    v30 = v37;
    goto LABEL_33;
  }

  sub_1B8DC3FF4();
  v43 = static Argos_Protos_Productdatapb_ProductImage.== infix(_:_:)(v40);
  sub_1B8DC40A4();
  sub_1B8DC40A4();
  sub_1B8D9207C(v37, &qword_1EBAB9F28, &qword_1B96511F0);
  if (v43)
  {
    goto LABEL_37;
  }

LABEL_34:
  v42 = 0;
LABEL_35:
  OUTLINED_FUNCTION_264(v42);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DCBC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA258, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetNode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DCBCFC(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetNode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DCBD6C(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetNode);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCBE04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9EC8);
  __swift_project_value_buffer(v0, qword_1EBAB9EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "end";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DCC064(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_57_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B8DCC0B4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__start;
  v2 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__end, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score) = 0;
  return v0;
}

uint64_t sub_1B8DCC12C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F30, &qword_1B96511F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__start;
  v5 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__end, 1, 1, v5);
  v6 = (v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v7 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  swift_beginAccess();
  v8 = *v7;

  swift_beginAccess();
  *v6 = v8;
  return v1;
}

uint64_t sub_1B8DCC344()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__start, &qword_1EBAB9F30, &qword_1B96511F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__end, &qword_1EBAB9F30, &qword_1B96511F8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B8DCC440()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v10 = v3;
  v5 = v4;
  v7 = *(v6(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = v10(v8);
  }

  v9 = OUTLINED_FUNCTION_176_1();
  v2(v9);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8DCC4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 5:
        sub_1B8DCC708(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8DCC62C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B8DCC5A0(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1B8DCC5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DCC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetNode);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DCC708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetNode);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DCC814(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DCC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F30, &qword_1B96511F8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v19 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v18[1] = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  swift_beginAccess();
  if (*v15 == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    v18[2] = a4;
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1B8D9207C(v11, &qword_1EBAB9F30, &qword_1B96511F8);
    }

    else
    {
      sub_1B8DC3FF4();
      sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetNode);
      sub_1B964C740();
      result = sub_1B8DC40A4();
      if (v4)
      {
        return result;
      }
    }

    swift_beginAccess();
    v17 = v19;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v17, 1, v12) == 1)
    {
      return sub_1B8D9207C(v17, &qword_1EBAB9F30, &qword_1B96511F8);
    }

    else
    {
      sub_1B8DC3FF4();
      sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetNode);
      sub_1B964C740();
      return sub_1B8DC40A4();
    }
  }

  return result;
}

uint64_t sub_1B8DCCC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = v7(0);
  if (*(v5 + *(v8 + 20)) != *(v4 + *(v8 + 20)))
  {

    v9 = OUTLINED_FUNCTION_177_1();
    v10 = a4(v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v11, v12, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8DCCD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  MEMORY[0x1EEE9AC00](v4);
  v35[2] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA2D0, &qword_1B9652FB8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v38 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F30, &qword_1B96511F8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v35[1] = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v37 = v35 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v39 = v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v35 - v18;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v36 = v6;
  v20 = *(v6 + 48);
  v21 = v4;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {

    sub_1B8D9207C(v19, &qword_1EBAB9F30, &qword_1B96511F8);
    if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v4) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBAB9F30, &qword_1B96511F8);
      goto LABEL_8;
    }

LABEL_6:
    v22 = v10;
LABEL_14:
    sub_1B8D9207C(v22, &qword_1EBABA2D0, &qword_1B9652FB8);
    goto LABEL_15;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v4) == 1)
  {

    sub_1B8D9207C(v19, &qword_1EBAB9F30, &qword_1B96511F8);
    sub_1B8DC40A4();
    goto LABEL_6;
  }

  sub_1B8DC3FF4();

  static Argos_Protos_Productdatapb_ProductNetNode.== infix(_:_:)();
  v24 = v23;
  sub_1B8DC40A4();
  sub_1B8D9207C(v19, &qword_1EBAB9F30, &qword_1B96511F8);
  sub_1B8DC40A4();
  sub_1B8D9207C(v10, &qword_1EBAB9F30, &qword_1B96511F8);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  swift_beginAccess();
  v25 = v37;
  sub_1B8D92024();
  swift_beginAccess();
  v26 = *(v36 + 48);
  v27 = v38;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v27, 1, v21) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v27 + v26, 1, v21) == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAB9F30, &qword_1B96511F8);
      sub_1B8DC40A4();
      goto LABEL_13;
    }

    sub_1B8DC3FF4();
    static Argos_Protos_Productdatapb_ProductNetNode.== infix(_:_:)();
    v30 = v29;
    sub_1B8DC40A4();
    sub_1B8D9207C(v25, &qword_1EBAB9F30, &qword_1B96511F8);
    sub_1B8DC40A4();
    sub_1B8D9207C(v27, &qword_1EBAB9F30, &qword_1B96511F8);
    if (v30)
    {
      goto LABEL_17;
    }

LABEL_15:

    return 0;
  }

  sub_1B8D9207C(v25, &qword_1EBAB9F30, &qword_1B96511F8);
  if (__swift_getEnumTagSinglePayload(v27 + v26, 1, v21) != 1)
  {
LABEL_13:
    v22 = v27;
    goto LABEL_14;
  }

  sub_1B8D9207C(v27, &qword_1EBAB9F30, &qword_1B96511F8);
LABEL_17:
  v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  swift_beginAccess();
  v32 = *v31;

  v33 = (a2 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  swift_beginAccess();
  v34 = *v33;

  return v32 == v34;
}

uint64_t sub_1B8DCD458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA250, type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetEdge);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DCD4D8(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA188, type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetEdge);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DCD548(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBABA188, type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductNetEdge);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCD600(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_246();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D060;
  v14 = (v13 + v12);
  v15 = v13 + v12 + v10[14];
  *v14 = 1;
  *v15 = a3;
  *(v15 + 8) = 4;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v11 + v10[14];
  *(v14 + v11) = 2;
  *v20 = a4;
  *(v20 + 1) = a5;
  v20[16] = 2;
  v19();
  return sub_1B964C760();
}

void sub_1B8DCD830(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v3 = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 2)
    {
      OUTLINED_FUNCTION_176_1();
      sub_1B8DCD8E4();
    }

    else if (v3 == 1)
    {
      sub_1B964C530();
    }
  }
}

void sub_1B8DCD8E4()
{
  OUTLINED_FUNCTION_273_0();
  v1 = OUTLINED_FUNCTION_114_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_157_1(v0 + 16, v4, v3);
  OUTLINED_FUNCTION_272_0();
}

uint64_t Argos_Protos_Productdatapb_ProductIngredient.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient(0), sub_1B8DCDD6C(&qword_1EBAB9FD8, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductIngredient), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_175_1(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
    {
      type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8DCDA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_51_2(a1);
  OUTLINED_FUNCTION_141_1();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || (a3(*(v5 + 16), *(v4 + 16)) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_6();
  v13 = sub_1B8DCDD6C(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t sub_1B8DCDB1C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8DCDD6C(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DCDBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA248, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductIngredient);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DCDC7C(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9FD8, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductIngredient);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DCDCEC(uint64_t a1, uint64_t a2)
{
  sub_1B8DCDD6C(&qword_1EBAB9FD8, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient, protocol conformance descriptor for Argos_Protos_Productdatapb_ProductIngredient);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCDD6C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8DCDDB4()
{
  result = qword_1EBAB9F78;
  if (!qword_1EBAB9F78)
  {
    atomic_store(result, &qword_1EBAB9F78);
  }

  return result;
}

unint64_t sub_1B8DCDE0C()
{
  result = qword_1EBAB9FE8;
  if (!qword_1EBAB9FE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.GtinType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.GtinType, v0, v1);
    atomic_store(result, &qword_1EBAB9FE8);
  }

  return result;
}

unint64_t sub_1B8DCDE64()
{
  result = qword_1EBAB9FF0;
  if (!qword_1EBAB9FF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.GtinType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.GtinType, v0, v1);
    atomic_store(result, &qword_1EBAB9FF0);
  }

  return result;
}

unint64_t sub_1B8DCDEBC()
{
  result = qword_1EBAB9FF8;
  if (!qword_1EBAB9FF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.GtinType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.GtinType, v0, v1);
    atomic_store(result, &qword_1EBAB9FF8);
  }

  return result;
}

unint64_t sub_1B8DCDF14()
{
  result = qword_1EBABA000;
  if (!qword_1EBABA000)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.MetadataType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.MetadataType, v0, v1);
    atomic_store(result, &qword_1EBABA000);
  }

  return result;
}

unint64_t sub_1B8DCDF6C()
{
  result = qword_1EBABA008;
  if (!qword_1EBABA008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.MetadataType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.MetadataType, v0, v1);
    atomic_store(result, &qword_1EBABA008);
  }

  return result;
}

unint64_t sub_1B8DCDFC4()
{
  result = qword_1EBABA010;
  if (!qword_1EBABA010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.MetadataType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.MetadataType, v0, v1);
    atomic_store(result, &qword_1EBABA010);
  }

  return result;
}

unint64_t sub_1B8DCE01C()
{
  result = qword_1EBABA018;
  if (!qword_1EBABA018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.ItemConditionType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.ItemConditionType, v0, v1);
    atomic_store(result, &qword_1EBABA018);
  }

  return result;
}

unint64_t sub_1B8DCE074()
{
  result = qword_1EBABA020;
  if (!qword_1EBABA020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.ItemConditionType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.ItemConditionType, v0, v1);
    atomic_store(result, &qword_1EBABA020);
  }

  return result;
}

unint64_t sub_1B8DCE0CC()
{
  result = qword_1EBABA028;
  if (!qword_1EBABA028)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.ItemConditionType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.ItemConditionType, v0, v1);
    atomic_store(result, &qword_1EBABA028);
  }

  return result;
}

unint64_t sub_1B8DCE124()
{
  result = qword_1EBABA030;
  if (!qword_1EBABA030)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.ItemAvaliabilityType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.ItemAvaliabilityType, v0, v1);
    atomic_store(result, &qword_1EBABA030);
  }

  return result;
}

unint64_t sub_1B8DCE17C()
{
  result = qword_1EBABA038;
  if (!qword_1EBABA038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.ItemAvaliabilityType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.ItemAvaliabilityType, v0, v1);
    atomic_store(result, &qword_1EBABA038);
  }

  return result;
}

unint64_t sub_1B8DCE1D4()
{
  result = qword_1EBABA040;
  if (!qword_1EBABA040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.ItemAvaliabilityType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.ItemAvaliabilityType, v0, v1);
    atomic_store(result, &qword_1EBABA040);
  }

  return result;
}

void sub_1B8DCF2D0(uint64_t a1)
{
  sub_1B8DCF3D0(319, &qword_1EBABA1A8, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8DCF3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8DCF4B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8DCF4F8(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1B8DCF574(uint64_t a1)
{
  sub_1B8DCF61C(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8DCF61C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B8DCF6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t sub_1B8DCF7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t sub_1B8DCF874(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8DCF934(uint64_t a1)
{
  sub_1B8DCF3D0(319, &qword_1EBABA1F0, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B8DCF3D0(319, &qword_1ED9CA028, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8DCFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1B964C2B0();
    if (v9 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

void sub_1B8DCFB58(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8DCF3D0(319, &qword_1ED9CA028, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B8DCF3D0(319, &qword_1ED9CA2D0, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8DCFC7C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8DCF3D0(319, &qword_1ED9CA028, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B8DCF3D0(319, &qword_1ED9CA2D0, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_115Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void __swift_store_extra_inhabitant_index_116Tm()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_231();

    __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t __swift_get_extra_inhabitant_index_83Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_84Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B8DD0000(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B8DCF3D0(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B8DD00AC(uint64_t a1)
{
  sub_1B8DCF3D0(319, &qword_1ED9CA040, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B8DCF3D0(319, &qword_1ED9CA0D0, type metadata accessor for Argos_Protos_Productdatapb_ProductCategory, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B8DCF3D0(319, &qword_1ED9C9D58, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8DD028C(uint64_t a1)
{
  sub_1B8DCF3D0(319, &qword_1ED9CA190, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B8DD035C()
{
  result = qword_1EBABA2B8;
  if (!qword_1EBABA2B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.ItemAvaliabilityType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.ItemAvaliabilityType, v0, v1);
    atomic_store(result, &qword_1EBABA2B8);
  }

  return result;
}

unint64_t sub_1B8DD03B0()
{
  result = qword_1EBABA2C0;
  if (!qword_1EBABA2C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.ItemConditionType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.ItemConditionType, v0, v1);
    atomic_store(result, &qword_1EBABA2C0);
  }

  return result;
}

unint64_t sub_1B8DD0404()
{
  result = qword_1EBABA2C8;
  if (!qword_1EBABA2C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Productdatapb_ProductMetadata.MetadataType, &type metadata for Argos_Protos_Productdatapb_ProductMetadata.MetadataType, v0, v1);
    atomic_store(result, &qword_1EBABA2C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_65_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_79_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_83_1()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 20) = 0;
}

uint64_t OUTLINED_FUNCTION_116_0@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1B8D92024();
}

void OUTLINED_FUNCTION_117_0()
{
  v2 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_119_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1)
{
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_133_1()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 20) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_158_1()
{

  return sub_1B8DC40A4();
}

uint64_t OUTLINED_FUNCTION_159_1(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_160_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_161_1(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_163_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_186_0()
{

  return sub_1B8DCDD6C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_187_1()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_188_1()
{

  return sub_1B964C2B0();
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.name.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.entityIds.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Argos_Protos_Scenenetfeaturespb_Label.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(v0);
  return nullsub_1;
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectFraming.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);
  return *(v0 + 16);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectFraming.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 16, v4);
  *(v5 + 16) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectFraming.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1060(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 16) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.background.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 20, v1);
  return *(v0 + 20);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.background.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 20, v4);
  *(v5 + 20) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.background.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 20);
  *(v1 + 80) = *(v0 + 20);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD11D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 20) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.blur.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 24, v1);
  return *(v0 + 24);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.blur.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 24, v4);
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.blur.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 24);
  *(v1 + 80) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1340(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 24) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.timing.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 28, v1);
  return *(v0 + 28);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.timing.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 28, v4);
  *(v5 + 28) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.timing.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 28);
  *(v1 + 80) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD14B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 28) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lightning.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);
  return *(v0 + 32);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lightning.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 32, v4);
  *(v5 + 32) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lightning.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  *(v1 + 80) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1620(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 32) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.reflections.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 36, v1);
  return *(v0 + 36);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.reflections.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 36, v4);
  *(v5 + 36) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.reflections.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 36);
  *(v1 + 80) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1790(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 36) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorHarmony.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 40, v1);
  return *(v0 + 40);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorHarmony.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 40, v4);
  *(v5 + 40) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorHarmony.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1900(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 40) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorBrightness.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 44, v1);
  return *(v0 + 44);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorBrightness.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 44, v4);
  *(v5 + 44) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorBrightness.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1A70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 44) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.perspective.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 48, v1);
  return *(v0 + 48);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.perspective.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 48, v4);
  *(v5 + 48) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.perspective.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1BE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 48) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.postProcessing.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 52, v1);
  return *(v0 + 52);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.postProcessing.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 52, v4);
  *(v5 + 52) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.postProcessing.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 52);
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1D50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 52) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.composition.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 56, v1);
  return *(v0 + 56);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.composition.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 56, v4);
  *(v5 + 56) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.composition.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 80) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1EC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 56) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.interestingness.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 60, v1);
  return *(v0 + 60);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.interestingness.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 60, v4);
  *(v5 + 60) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.interestingness.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 60);
  *(v1 + 80) = *(v0 + 60);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2030(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 60) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.tilt.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);
  return *(v0 + 64);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.tilt.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 64, v4);
  *(v5 + 64) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.tilt.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD21A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 64) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectSharpness.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 68, v1);
  return *(v0 + 68);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectSharpness.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 68, v4);
  *(v5 + 68) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectSharpness.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 68);
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2310(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 68) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.symmetry.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 72, v1);
  return *(v0 + 72);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.symmetry.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 72, v4);
  *(v5 + 72) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.symmetry.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  *(v1 + 80) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2480(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 72) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.repetition.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 76, v1);
  return *(v0 + 76);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.repetition.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 76, v4);
  *(v5 + 76) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.repetition.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 76);
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD25F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 76) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.immersiveFeeling.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 80, v1);
  return *(v0 + 80);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.immersiveFeeling.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 80, v4);
  *(v5 + 80) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.immersiveFeeling.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2760(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 80) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.noise.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 84, v1);
  return *(v0 + 84);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.noise.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 84, v4);
  *(v5 + 84) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.noise.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 84);
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD28D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 84) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.failure.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 88, v1);
  return *(v0 + 88);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.failure.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 88, v4);
  *(v5 + 88) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.failure.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 88);
  *(v1 + 80) = *(v0 + 88);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2A40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 88) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.objectIntrusion.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 92, v1);
  return *(v0 + 92);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.objectIntrusion.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 92, v4);
  *(v5 + 92) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.objectIntrusion.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 92);
  *(v1 + 80) = *(v0 + 92);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2BB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 92) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lowLight.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4(v0 + 96, v1);
  return *(v0 + 96);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lowLight.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v5 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_16_3(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 96, v4);
  *(v5 + 96) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lowLight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  *(v1 + 80) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2D20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_3();
  v6 = OUTLINED_FUNCTION_1_5(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DD462C(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 96) = v4;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0) + 20);
  if (qword_1EBAB5FC8 != -1)
  {
    OUTLINED_FUNCTION_7_4(&qword_1EBAB5FC8);
  }

  *(a2 + v3) = qword_1EBABA320;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.aestheticAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  sub_1B8DD4AC4(v1 + *(v7 + 48), v6);
  v8 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    return sub_1B8DD4B34(v6, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = *(v8 + 20);
  if (qword_1EBAB5FC8 != -1)
  {
    OUTLINED_FUNCTION_7_4(&qword_1EBAB5FC8);
  }

  *(a1 + v9) = qword_1EBABA320;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v6, &qword_1EBABA340, &qword_1B9653000);
  }

  return result;
}

uint64_t sub_1B8DD3018(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8DD4B98(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Argos_Protos_Scenenetfeaturespb_ScenenetOutput.aestheticAttributes.setter();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.aestheticAttributes.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(v2) + 48);
  sub_1B8D9207C(v1 + v3, &qword_1EBABA340, &qword_1B9653000);
  sub_1B8DD4B34(v0, v1 + v3);
  v4 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Argos_Protos_Scenenetfeaturespb_ScenenetOutput.aestheticAttributes.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0) + 48);
  *(v3 + 10) = v11;
  sub_1B8DD4AC4(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1EBAB5FC8 != -1)
    {
      OUTLINED_FUNCTION_7_4(&qword_1EBAB5FC8);
    }

    *&v10[v12] = qword_1EBABA320;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBABA340, &qword_1B9653000);
    }
  }

  else
  {
    sub_1B8DD4B34(v6, v10);
  }

  return sub_1B8DD32B0;
}

void sub_1B8DD32B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B8DD4B98((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBABA340, &qword_1B9653000);
    sub_1B8DD4B34(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B8DD4BFC(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBABA340, &qword_1B9653000);
    sub_1B8DD4B34(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL Argos_Protos_Scenenetfeaturespb_ScenenetOutput.hasAestheticAttributes.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  sub_1B8DD4AC4(v0 + *(v5 + 48), v4);
  v6 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v7 = __swift_getEnumTagSinglePayload(v4, 1, v6) != 1;
  sub_1B8D9207C(v4, &qword_1EBABA340, &qword_1B9653000);
  return v7;
}

Swift::Void __swiftcall Argos_Protos_Scenenetfeaturespb_ScenenetOutput.clearAestheticAttributes()()
{
  v1 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0) + 48);
  sub_1B8D9207C(v0 + v1, &qword_1EBABA340, &qword_1B9653000);
  v2 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.classificationLabels.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.scenePrint.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.saliencyAMap.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.saliencyAMap.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.saliencyOMap.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.saliencyOMap.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.dedupEmbedding.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(v2) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Argos_Protos_Scenenetfeaturespb_ScenenetOutput.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(v0);
  return nullsub_1;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v2;
  *(a1 + 24) = xmmword_1B9652FE0;
  *(a1 + 40) = xmmword_1B9652FE0;
  *(a1 + 56) = v2;
  v3 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 48);
  v5 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1B8DD38CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA2F0);
  __swift_project_value_buffer(v0, qword_1EBABA2F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entity_ids";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      if (!*(*(v2 + 24) + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v1))
      {
        type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Scenenetfeaturespb_Label.== infix(_:_:)(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || a1[4] != *(a2 + 16) || (sub_1B8D6123C(*(a1 + 3), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_4_4();
  sub_1B8CD19A0(v5, v6, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8DD3DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19A0(&qword_1EBABA3D8, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_Label);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DD3E58(uint64_t a1)
{
  v2 = sub_1B8CD19A0(&qword_1EBABA358, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_Label);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DD3EC8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD19A0(&qword_1EBABA358, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_Label);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DD3F60()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA308);
  __swift_project_value_buffer(v0, qword_1EBABA308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B9652FF0;
  v4 = v48 + v3 + v1[14];
  *(v48 + v3) = 1;
  *v4 = "subject_framing";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v48 + v3 + v2 + v1[14];
  *(v48 + v3 + v2) = 2;
  *v8 = "background";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v48 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "blur";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v48 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "timing";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v48 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "lightning";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v48 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "reflections";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v48 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "color_harmony";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  v19 = (v48 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "color_brightness";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v48 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "perspective";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v48 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "post_processing";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  v25 = (v48 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "composition";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v7();
  v27 = (v48 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "interestingness";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v48 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "tilt";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v7();
  v31 = (v48 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "subject_sharpness";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v48 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "symmetry";
  *(v34 + 1) = 8;
  v34[16] = 2;
  v7();
  v35 = (v48 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "repetition";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v7();
  v37 = (v48 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "immersive_feeling";
  *(v38 + 1) = 17;
  v38[16] = 2;
  v7();
  v39 = (v48 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "noise";
  *(v40 + 1) = 5;
  v40[16] = 2;
  v7();
  v41 = (v48 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "failure";
  *(v42 + 1) = 7;
  v42[16] = 2;
  v7();
  v43 = (v48 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "object_intrusion";
  *(v44 + 1) = 16;
  v44[16] = 2;
  v7();
  v45 = (v48 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "low_light";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v7();
  return sub_1B964C760();
}

double sub_1B8DD45E8()
{
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  qword_1EBABA320 = v0;
  return result;
}

uint64_t sub_1B8DD462C(_DWORD *a1)
{
  *(v1 + 96) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  v3 = a1[4];
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = a1[5];
  swift_beginAccess();
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = a1[6];
  swift_beginAccess();
  *(v1 + 24) = v5;
  swift_beginAccess();
  v6 = a1[7];
  swift_beginAccess();
  *(v1 + 28) = v6;
  swift_beginAccess();
  v7 = a1[8];
  swift_beginAccess();
  *(v1 + 32) = v7;
  swift_beginAccess();
  v8 = a1[9];
  swift_beginAccess();
  *(v1 + 36) = v8;
  swift_beginAccess();
  v9 = a1[10];
  swift_beginAccess();
  *(v1 + 40) = v9;
  swift_beginAccess();
  v10 = a1[11];
  swift_beginAccess();
  *(v1 + 44) = v10;
  swift_beginAccess();
  v11 = a1[12];
  swift_beginAccess();
  *(v1 + 48) = v11;
  swift_beginAccess();
  v12 = a1[13];
  swift_beginAccess();
  *(v1 + 52) = v12;
  swift_beginAccess();
  v13 = a1[14];
  swift_beginAccess();
  *(v1 + 56) = v13;
  swift_beginAccess();
  v14 = a1[15];
  swift_beginAccess();
  *(v1 + 60) = v14;
  swift_beginAccess();
  v15 = a1[16];
  swift_beginAccess();
  *(v1 + 64) = v15;
  swift_beginAccess();
  v16 = a1[17];
  swift_beginAccess();
  *(v1 + 68) = v16;
  swift_beginAccess();
  v17 = a1[18];
  swift_beginAccess();
  *(v1 + 72) = v17;
  swift_beginAccess();
  v18 = a1[19];
  swift_beginAccess();
  *(v1 + 76) = v18;
  swift_beginAccess();
  v19 = a1[20];
  swift_beginAccess();
  *(v1 + 80) = v19;
  swift_beginAccess();
  v20 = a1[21];
  swift_beginAccess();
  *(v1 + 84) = v20;
  swift_beginAccess();
  v21 = a1[22];
  swift_beginAccess();
  *(v1 + 88) = v21;
  swift_beginAccess();
  v22 = a1[23];
  swift_beginAccess();
  *(v1 + 92) = v22;
  swift_beginAccess();
  v23 = a1[24];

  swift_beginAccess();
  *(v1 + 96) = v23;
  return v1;
}

uint64_t sub_1B8DD4AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8DD4B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8DD4B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8DD4BFC(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.decodeMessage<A>(decoder:)(uint64_t a1)
{
  v2 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8DD462C(v3);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B8DD4D00(v4, v5, v6, v7);
}

uint64_t sub_1B8DD4D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DD4FBC(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B8DD5040(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B8DD50C4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8DD5148(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8DD51CC(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B8DD5250(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8DD52D4(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B8DD5358(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B8DD53DC(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8DD5460(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8DD54E4(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8DD5568(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B8DD55EC(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8DD5670(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8DD56F4(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8DD5778(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B8DD57FC(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B8DD5880(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B8DD5904(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B8DD5988(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B8DD5A0C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DD4FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD50C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD51CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD52D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD53DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD54E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD55EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD56F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD57FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8DD5AF8(v5, v6, v7, a3);
  if (!v3)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DD5AF8(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (a1[4] == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    swift_beginAccess();
    if (a1[5] == 0.0 || (result = sub_1B964C6B0(), !v4))
    {
      swift_beginAccess();
      if (a1[6] == 0.0 || (result = sub_1B964C6B0(), !v4))
      {
        swift_beginAccess();
        if (a1[7] == 0.0 || (result = sub_1B964C6B0(), !v4))
        {
          swift_beginAccess();
          if (a1[8] == 0.0 || (result = sub_1B964C6B0(), !v4))
          {
            swift_beginAccess();
            if (a1[9] == 0.0 || (result = sub_1B964C6B0(), !v4))
            {
              swift_beginAccess();
              if (a1[10] == 0.0 || (result = sub_1B964C6B0(), !v4))
              {
                swift_beginAccess();
                if (a1[11] == 0.0 || (result = sub_1B964C6B0(), !v4))
                {
                  swift_beginAccess();
                  if (a1[12] == 0.0 || (result = sub_1B964C6B0(), !v4))
                  {
                    swift_beginAccess();
                    if (a1[13] == 0.0 || (result = sub_1B964C6B0(), !v4))
                    {
                      swift_beginAccess();
                      if (a1[14] == 0.0 || (result = sub_1B964C6B0(), !v4))
                      {
                        swift_beginAccess();
                        if (a1[15] == 0.0 || (result = sub_1B964C6B0(), !v4))
                        {
                          swift_beginAccess();
                          if (a1[16] == 0.0 || (result = sub_1B964C6B0(), !v4))
                          {
                            swift_beginAccess();
                            if (a1[17] == 0.0 || (result = sub_1B964C6B0(), !v4))
                            {
                              swift_beginAccess();
                              if (a1[18] == 0.0 || (result = sub_1B964C6B0(), !v4))
                              {
                                swift_beginAccess();
                                if (a1[19] == 0.0 || (result = sub_1B964C6B0(), !v4))
                                {
                                  swift_beginAccess();
                                  if (a1[20] == 0.0 || (result = sub_1B964C6B0(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (a1[21] == 0.0 || (result = sub_1B964C6B0(), !v4))
                                    {
                                      swift_beginAccess();
                                      if (a1[22] == 0.0 || (result = sub_1B964C6B0(), !v4))
                                      {
                                        swift_beginAccess();
                                        if (a1[23] == 0.0 || (result = sub_1B964C6B0(), !v4))
                                        {
                                          result = swift_beginAccess();
                                          if (a1[24] != 0.0)
                                          {
                                            return sub_1B964C6B0();
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Scenenetfeaturespb_AestheticAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && !sub_1B8DD611C(v5, v6))
  {
    return 0;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_4_4();
  sub_1B8CD19A0(v7, v8, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8DD611C(float *a1, float *a2)
{
  swift_beginAccess();
  v4 = a1[4];
  swift_beginAccess();
  if (v4 != a2[4])
  {
    return 0;
  }

  swift_beginAccess();
  v5 = a1[5];
  swift_beginAccess();
  if (v5 != a2[5])
  {
    return 0;
  }

  swift_beginAccess();
  v6 = a1[6];
  swift_beginAccess();
  if (v6 != a2[6])
  {
    return 0;
  }

  swift_beginAccess();
  v7 = a1[7];
  swift_beginAccess();
  if (v7 != a2[7])
  {
    return 0;
  }

  swift_beginAccess();
  v8 = a1[8];
  swift_beginAccess();
  if (v8 != a2[8])
  {
    return 0;
  }

  swift_beginAccess();
  v9 = a1[9];
  swift_beginAccess();
  if (v9 != a2[9])
  {
    return 0;
  }

  swift_beginAccess();
  v10 = a1[10];
  swift_beginAccess();
  if (v10 != a2[10])
  {
    return 0;
  }

  swift_beginAccess();
  v11 = a1[11];
  swift_beginAccess();
  if (v11 != a2[11])
  {
    return 0;
  }

  swift_beginAccess();
  v12 = a1[12];
  swift_beginAccess();
  if (v12 != a2[12])
  {
    return 0;
  }

  swift_beginAccess();
  v13 = a1[13];
  swift_beginAccess();
  if (v13 != a2[13])
  {
    return 0;
  }

  swift_beginAccess();
  v14 = a1[14];
  swift_beginAccess();
  if (v14 != a2[14])
  {
    return 0;
  }

  swift_beginAccess();
  v15 = a1[15];
  swift_beginAccess();
  if (v15 != a2[15])
  {
    return 0;
  }

  swift_beginAccess();
  v16 = a1[16];
  swift_beginAccess();
  if (v16 != a2[16])
  {
    return 0;
  }

  swift_beginAccess();
  v17 = a1[17];
  swift_beginAccess();
  if (v17 != a2[17])
  {
    return 0;
  }

  swift_beginAccess();
  v18 = a1[18];
  swift_beginAccess();
  if (v18 != a2[18])
  {
    return 0;
  }

  swift_beginAccess();
  v19 = a1[19];
  swift_beginAccess();
  if (v19 != a2[19])
  {
    return 0;
  }

  swift_beginAccess();
  v20 = a1[20];
  swift_beginAccess();
  if (v20 != a2[20])
  {
    return 0;
  }

  swift_beginAccess();
  v21 = a1[21];
  swift_beginAccess();
  if (v21 != a2[21])
  {
    return 0;
  }

  swift_beginAccess();
  v22 = a1[22];
  swift_beginAccess();
  if (v22 != a2[22])
  {
    return 0;
  }

  swift_beginAccess();
  v23 = a1[23];
  swift_beginAccess();
  if (v23 != a2[23])
  {
    return 0;
  }

  swift_beginAccess();
  v24 = a1[24];
  swift_beginAccess();
  return v24 == a2[24];
}

uint64_t sub_1B8DD669C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19A0(&qword_1EBABA3D0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DD671C(uint64_t a1)
{
  v2 = sub_1B8CD19A0(&qword_1EBABA360, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DD678C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD19A0(&qword_1EBABA360, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DD6824()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA328);
  __swift_project_value_buffer(v0, qword_1EBABA328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "aesthetic_attributes";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "aesthetic_score";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "technique_score";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "classification_labels";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "scene_print";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "saliency_a_map";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "saliency_o_map";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dedup_embedding";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B8DD6C68(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 4:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B8DD6D1C(v7, v8, v9, v10);
        break;
      case 5:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C430();
        break;
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DD6C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  sub_1B8CD19A0(&qword_1EBABA360, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);
  return sub_1B964C580();
}

uint64_t sub_1B8DD6D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0);
  sub_1B8CD19A0(&qword_1EBABA358, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_Label);
  return sub_1B964C570();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  sub_1B8DD4AC4(v1 + *(v9 + 48), v5);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v10, v11, v12) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBABA340, &qword_1B9653000);
  }

  else
  {
    sub_1B8DD4B34(v5, v8);
    sub_1B8CD19A0(&qword_1EBABA360, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    result = sub_1B8DD4BFC(v8);
    if (v0)
    {
      return result;
    }
  }

  if (*v1 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
  {
    if (*(v1 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
    {
      if (!*(*(v1 + 8) + 16) || (type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0), sub_1B8CD19A0(&qword_1EBABA358, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_Label), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
      {
        if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C610(), !v0))
        {
          if (sub_1B8D99EA8(*(v1 + 24), *(v1 + 32)) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6A0(), !v0))
          {
            if (sub_1B8D99EA8(*(v1 + 40), *(v1 + 48)) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6A0(), !v0))
            {
              if (!*(*(v1 + 56) + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C610(), !v0))
              {
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Scenenetfeaturespb_ScenenetOutput.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA368, &qword_1B9653008) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0) + 48);
  v15 = *(v10 + 56);
  sub_1B8DD4AC4(v1 + v14, v13);
  sub_1B8DD4AC4(v0 + v14, &v13[v15]);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) != 1)
  {
    sub_1B8DD4AC4(v13, v9);
    OUTLINED_FUNCTION_38_1();
    if (__swift_getEnumTagSinglePayload(v22, v23, v24) != 1)
    {
      sub_1B8DD4B34(&v13[v15], v5);
      v29 = *(v2 + 20);
      v30 = *&v9[v29];
      v31 = *&v5[v29];
      if (v30 == v31 || sub_1B8DD611C(v30, v31))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_4_4();
        sub_1B8CD19A0(v32, v33, MEMORY[0x1E69AAC10]);
        v34 = sub_1B964C850();
        sub_1B8DD4BFC(v5);
        sub_1B8DD4BFC(v9);
        sub_1B8D9207C(v13, &qword_1EBABA340, &qword_1B9653000);
        if ((v34 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      sub_1B8DD4BFC(v5);
      sub_1B8DD4BFC(v9);
      v25 = &qword_1EBABA340;
      v26 = &qword_1B9653000;
LABEL_7:
      sub_1B8D9207C(v13, v25, v26);
      goto LABEL_8;
    }

    sub_1B8DD4BFC(v9);
LABEL_6:
    v25 = &qword_1EBABA368;
    v26 = &qword_1B9653008;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v19, v20, v21) != 1)
  {
    goto LABEL_6;
  }

  sub_1B8D9207C(v13, &qword_1EBABA340, &qword_1B9653000);
LABEL_13:
  if (*v1 == *v0 && *(v1 + 4) == *(v0 + 4))
  {
    sub_1B8D67B70(*(v1 + 8), *(v0 + 8));
    if (v35 & 1) != 0 && (sub_1B8D63AC4(*(v1 + 16), *(v0 + 16)) & 1) != 0 && (MEMORY[0x1BFADC060](*(v1 + 24), *(v1 + 32), *(v0 + 24), *(v0 + 32)) & 1) != 0 && (MEMORY[0x1BFADC060](*(v1 + 40), *(v1 + 48), *(v0 + 40), *(v0 + 48)) & 1) != 0 && (sub_1B8D63AC4(*(v1 + 56), *(v0 + 56)))
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_4_4();
      sub_1B8CD19A0(v36, v37, MEMORY[0x1E69AAC10]);
      v27 = sub_1B964C850();
      return v27 & 1;
    }
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1B8DD745C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD19A0(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DD7564(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19A0(&qword_1EBABA3C8, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DD75E4(uint64_t a1)
{
  v2 = sub_1B8CD19A0(&qword_1EBABA3A0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DD7654(uint64_t a1, uint64_t a2)
{
  sub_1B8CD19A0(&qword_1EBABA3A0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput, protocol conformance descriptor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput);

  return sub_1B964C5D0();
}

void sub_1B8DD7A5C(uint64_t a1)
{
  sub_1B8DD7D14(319, qword_1EDA06FD0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8DD7B28(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8DD7BD4(uint64_t a1)
{
  sub_1B8DD7D60(319, &qword_1EBABA3C0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B8DD7D14(319, &qword_1ED9EB2E8, MEMORY[0x1E69E6448]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B8DD7D60(319, &qword_1ED9C9328, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8DD7D14(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B964C910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8DD7D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
}

unint64_t Argos_Protos_Visualquerypb_ImageType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B8DD8010@<X0>(uint64_t *a1@<X8>)
{
  result = Argos_Protos_Visualquerypb_ImageType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8DD8044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DDA1A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Argos_Protos_Visualquerypb_ImageType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABA3E0 = a1;
}

uint64_t sub_1B8DD81A8@<X0>(uint64_t *a1@<X8>)
{
  result = static Argos_Protos_Visualquerypb_ImageType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageGeolocation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_31_2();
  v9 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v8);
  OUTLINED_FUNCTION_28_2(v2 + *(v9 + 48), v1);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_6();
    return sub_1B8DD8C38();
  }

  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageGeolocation.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_1_6();
  sub_1B8DD8C38();
  type metadata accessor for Locationpb_Point(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Argos_Protos_Visualquerypb_ImageMetadata.imageGeolocation.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_26_1(v5);
  *(v1 + 16) = type metadata accessor for Locationpb_Point(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v10);
  OUTLINED_FUNCTION_16_4(*(v11 + 48));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_6();
    sub_1B8DD8C38();
  }

  return sub_1B8DD84DC;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.hasImageGeolocation.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v5);
  OUTLINED_FUNCTION_23_2(*(v6 + 48));
  v7 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualquerypb_ImageMetadata.clearImageGeolocation()()
{
  v1 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAB9280, &qword_1B96535F0);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageGeolocationS2Cells.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void Argos_Protos_Visualquerypb_ImageMetadata.imageType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.webPageURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.originatingAppBundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v2) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Argos_Protos_Visualquerypb_ImageMetadata.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v0);
  return nullsub_1;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.imageBytes.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.imageBytes.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.visualUnderstanding.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_31_2();
  v9 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v8);
  OUTLINED_FUNCTION_28_2(v2 + *(v9 + 24), v1);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBABA430, &qword_1B96535F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_6();
    return sub_1B8DD8C38();
  }

  return result;
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.visualUnderstanding.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_3_6();
  sub_1B8DD8C38();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8DD8C38()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

void (*Argos_Protos_Visualquerypb_VisualQuery.visualUnderstanding.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_26_1(v5);
  *(v1 + 16) = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v10);
  OUTLINED_FUNCTION_16_4(*(v11 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v8 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABA430, &qword_1B96535F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_6();
    sub_1B8DD8C38();
  }

  return sub_1B8DD8DE0;
}

uint64_t sub_1B8DD8E08()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B8DD8E5C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.hasVisualUnderstanding.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v5);
  OUTLINED_FUNCTION_23_2(*(v6 + 24));
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualquerypb_VisualQuery.clearVisualUnderstanding()()
{
  v1 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBABA430, &qword_1B96535F8);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.imageMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v8);
  OUTLINED_FUNCTION_28_2(v1 + *(v9 + 28), v2);
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_57(v2);
  if (v10)
  {
    Argos_Protos_Visualquerypb_ImageMetadata.init()(a1);
    result = OUTLINED_FUNCTION_57(v2);
    if (!v10)
    {
      return sub_1B8D9207C(v2, &qword_1EBABA438, &unk_1B9653600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    return sub_1B8DD8C38();
  }

  return result;
}

uint64_t sub_1B8DD9078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_59_1();
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return a2;
}

uint64_t sub_1B8DD90D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B8DD8E08();
  return a7(v11);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.imageMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_2_5();
  sub_1B8DD8C38();
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Argos_Protos_Visualquerypb_VisualQuery.imageMetadata.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_26_1(v5);
  *(v1 + 16) = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v10);
  OUTLINED_FUNCTION_16_4(*(v11 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v8 = MEMORY[0x1E69E7CC0];
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0xE000000000000000;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0xE000000000000000;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0xE000000000000000;
    *(v8 + 72) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Locationpb_Point(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABA438, &unk_1B9653600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    sub_1B8DD8C38();
  }

  return sub_1B8DD9354;
}

void sub_1B8DD937C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = **a1;
  if (a2)
  {
    sub_1B8DD8E08();
    sub_1B8D9207C(v11 + v7, a3, a4);
    sub_1B8DD8C38();
    OUTLINED_FUNCTION_187_1();
    sub_1B8DD8E5C();
  }

  else
  {
    sub_1B8D9207C(v11 + v7, a3, a4);
    sub_1B8DD8C38();
    OUTLINED_FUNCTION_187_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.hasImageMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v5);
  OUTLINED_FUNCTION_23_2(*(v6 + 28));
  v7 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualquerypb_VisualQuery.clearImageMetadata()()
{
  v1 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBABA438, &unk_1B9653600);
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Argos_Protos_Visualquerypb_VisualQuery.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v0);
  return nullsub_1;
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B8DD9710()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA3E8);
  __swift_project_value_buffer(v0, qword_1EBABA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SCREENSHOT";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DD991C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA400);
  __swift_project_value_buffer(v0, qword_1EBABA400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_geolocation";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 6;
  *v10 = "image_geolocation_s2_cells";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "image_type";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "image_url";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "web_page_url";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "originating_app_bundle_id";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "image_geodirection";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "image_geolocation_error";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8DD9D60(v3, v4, v5, v6);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8DD9E14(v7, v8, v9, v10);
        break;
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4F0();
        break;
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DD9D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  type metadata accessor for Locationpb_Point(0);
  sub_1B8DDB6FC(&qword_1EBABA448, type metadata accessor for Locationpb_Point, protocol conformance descriptor for Locationpb_Point);
  return sub_1B964C580();
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v19 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  v20 = v3;
  sub_1B8DD9078(v3 + *(v19 + 48), v8, &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v10, v11, v12) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAB9280, &qword_1B96535F0);
  }

  else
  {
    sub_1B8DD8C38();
    sub_1B8DDB6FC(&qword_1EBABA448, type metadata accessor for Locationpb_Point, protocol conformance descriptor for Locationpb_Point);
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    result = sub_1B8DD8E5C();
    if (v4)
    {
      return result;
    }
  }

  v14 = v20;
  if (!*(v20 + 8) || (v15 = *(v20 + 16), v21 = *(v20 + 8), v22 = v15, sub_1B8DDA1A0(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v16 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
    {
      OUTLINED_FUNCTION_1();
      if (!v17 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
      {
        OUTLINED_FUNCTION_1();
        if (!v18 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
        {
          if (!*(*v14 + 16) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C660(), !v4))
          {
            if (v14[18] == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v4))
            {
              if (v14[19] == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v4))
              {
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B8DDA1A0()
{
  result = qword_1EBABA440;
  if (!qword_1EBABA440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageType, &type metadata for Argos_Protos_Visualquerypb_ImageType, v0, v1);
    atomic_store(result, &qword_1EBABA440);
  }

  return result;
}

uint64_t static Argos_Protos_Visualquerypb_ImageMetadata.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  type metadata accessor for Locationpb_Point(v2);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v38 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  v15 = *(v38 + 48);
  v16 = *(v11 + 56);
  sub_1B8DD9078(v1 + v15, v14, &qword_1EBAB9280, &qword_1B96535F0);
  sub_1B8DD9078(v0 + v15, &v14[v16], &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v17, v18, v19);
  if (v26)
  {
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_178(v20, v21, v22);
    if (v26)
    {
      sub_1B8D9207C(v14, &qword_1EBAB9280, &qword_1B96535F0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v14, &qword_1EBAB9288, &unk_1B964DA70);
    goto LABEL_39;
  }

  sub_1B8DD9078(v14, v10, &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v23, v24, v25);
  if (v26)
  {
    sub_1B8DD8E5C();
    goto LABEL_9;
  }

  sub_1B8DD8C38();
  v27 = static Locationpb_Point.== infix(_:_:)(v10, v6);
  sub_1B8DD8E5C();
  sub_1B8DD8E5C();
  sub_1B8D9207C(v14, &qword_1EBAB9280, &qword_1B96535F0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  if ((sub_1B8D921A4() & 1) == 0)
  {
    goto LABEL_39;
  }

  v28 = *(v1 + 8);
  v29 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v28 = v28 != 0;
  }

  if (*(v0 + 16) != 1)
  {
    if (v28 != v29)
    {
      goto LABEL_39;
    }

    goto LABEL_21;
  }

  if (!v29)
  {
    if (!v28)
    {
      goto LABEL_21;
    }

LABEL_39:
    v35 = 0;
    return v35 & 1;
  }

  if (v28 != 1)
  {
    goto LABEL_39;
  }

LABEL_21:
  v30 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v30 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v31 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v31 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v32 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v32 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 72) != *(v0 + 72) || *(v1 + 76) != *(v0 + 76))
  {
    goto LABEL_39;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_14_4();
  sub_1B8DDB6FC(v33, v34, MEMORY[0x1E69AAC10]);
  v35 = sub_1B964C850();
  return v35 & 1;
}

uint64_t sub_1B8DDA628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DDB6FC(&qword_1EBABA4D8, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata, protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DDA6A8(uint64_t a1)
{
  v2 = sub_1B8DDB6FC(&qword_1EBABA458, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata, protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DDA718(uint64_t a1, uint64_t a2)
{
  sub_1B8DDB6FC(&qword_1EBABA458, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata, protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DDA7B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA418);
  __swift_project_value_buffer(v0, qword_1EBABA418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image_bytes";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visual_understanding";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_metadata";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8DDAB18(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8DDAA64(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8DDAA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  sub_1B8DDB6FC(&qword_1EBABA460, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding, protocol conformance descriptor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);
  return sub_1B964C580();
}

uint64_t sub_1B8DDAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  sub_1B8DDB6FC(&qword_1EBABA458, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata, protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageMetadata);
  return sub_1B964C580();
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_104(v7, v23);
  v25 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v23 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v18 = *v3;
  v17 = v3[1];
  v26 = v3;
  if (sub_1B8D99EA8(v18, v17) || (result = sub_1B964C6A0(), !v4))
  {
    v27 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
    v20 = v26;
    sub_1B8DD9078(v26 + *(v27 + 24), v14, &qword_1EBABA430, &qword_1B96535F8);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1B8D9207C(v14, &qword_1EBABA430, &qword_1B96535F8);
    }

    else
    {
      sub_1B8DD8C38();
      sub_1B8DDB6FC(&qword_1EBABA460, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding, protocol conformance descriptor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);
      sub_1B964C740();
      result = sub_1B8DD8E5C();
      if (v4)
      {
        return result;
      }

      v20 = v26;
    }

    v22 = v24;
    v21 = v25;
    sub_1B8DD9078(v20 + *(v27 + 28), v24, &qword_1EBABA438, &unk_1B9653600);
    if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBABA438, &unk_1B9653600);
    }

    else
    {
      sub_1B8DD8C38();
      sub_1B8DDB6FC(&qword_1EBABA458, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata, protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageMetadata);
      sub_1B964C740();
      result = sub_1B8DD8E5C();
      if (v4)
      {
        return result;
      }
    }

    return sub_1B964C290();
  }

  return result;
}

uint64_t static Argos_Protos_Visualquerypb_VisualQuery.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_280();
  v46 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_104(v10, v42);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA468, &qword_1B9653610);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_22_3();
  v14 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA470, &qword_1B9653618);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  if ((MEMORY[0x1BFADC060](*v1, v1[1], *v0, v0[1]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v42 = v7;
  v24 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  v47 = v0;
  v25 = v1;
  v43 = v24;
  v44 = v1;
  v26 = *(v24 + 24);
  v27 = *(v20 + 48);
  sub_1B8DD9078(v25 + v26, v23, &qword_1EBABA430, &qword_1B96535F8);
  sub_1B8DD9078(v47 + v26, &v23[v27], &qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_178(v23, 1, v14);
  if (v28)
  {
    OUTLINED_FUNCTION_178(&v23[v27], 1, v14);
    if (v28)
    {
      sub_1B8D9207C(v23, &qword_1EBABA430, &qword_1B96535F8);
      goto LABEL_12;
    }

LABEL_10:
    v29 = &qword_1EBABA470;
    v30 = &qword_1B9653618;
    v31 = v23;
LABEL_21:
    sub_1B8D9207C(v31, v29, v30);
    goto LABEL_22;
  }

  sub_1B8DD9078(v23, v19, &qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_178(&v23[v27], 1, v14);
  if (v28)
  {
    sub_1B8DD8E5C();
    goto LABEL_10;
  }

  sub_1B8DD8C38();
  static Argos_Protos_Visualunderstandingpb_VisualUnderstanding.== infix(_:_:)();
  v33 = v32;
  sub_1B8DD8E5C();
  OUTLINED_FUNCTION_236();
  sub_1B8DD8E5C();
  sub_1B8D9207C(v23, &qword_1EBABA430, &qword_1B96535F8);
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v34 = *(v43 + 28);
  v35 = *(v11 + 48);
  OUTLINED_FUNCTION_28_2(v44 + v34, v2);
  OUTLINED_FUNCTION_28_2(v47 + v34, v2 + v35);
  OUTLINED_FUNCTION_178(v2, 1, v46);
  if (v28)
  {
    OUTLINED_FUNCTION_57(v2 + v35);
    if (v28)
    {
      sub_1B8D9207C(v2, &qword_1EBABA438, &unk_1B9653600);
LABEL_25:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_14_4();
      sub_1B8DDB6FC(v40, v41, MEMORY[0x1E69AAC10]);
      v37 = sub_1B964C850();
      return v37 & 1;
    }

    goto LABEL_20;
  }

  sub_1B8DD9078(v2, v45, &qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_57(v2 + v35);
  if (v36)
  {
    sub_1B8DD8E5C();
LABEL_20:
    v29 = &qword_1EBABA468;
    v30 = &qword_1B9653610;
    v31 = v2;
    goto LABEL_21;
  }

  sub_1B8DD8C38();
  v39 = static Argos_Protos_Visualquerypb_ImageMetadata.== infix(_:_:)();
  OUTLINED_FUNCTION_514();
  sub_1B8DD8E5C();
  sub_1B8DD8E5C();
  sub_1B8D9207C(v2, &qword_1EBABA438, &unk_1B9653600);
  if (v39)
  {
    goto LABEL_25;
  }

LABEL_22:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_1B8DDB4A8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8DDB6FC(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DDB58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DDB6FC(&qword_1EBABA4D0, type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery, protocol conformance descriptor for Argos_Protos_Visualquerypb_VisualQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DDB60C(uint64_t a1)
{
  v2 = sub_1B8DDB6FC(&qword_1EBABA4C0, type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery, protocol conformance descriptor for Argos_Protos_Visualquerypb_VisualQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DDB67C(uint64_t a1, uint64_t a2)
{
  sub_1B8DDB6FC(&qword_1EBABA4C0, type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery, protocol conformance descriptor for Argos_Protos_Visualquerypb_VisualQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DDB6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8DDB748()
{
  result = qword_1EBABA480;
  if (!qword_1EBABA480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageType, &type metadata for Argos_Protos_Visualquerypb_ImageType, v0, v1);
    atomic_store(result, &qword_1EBABA480);
  }

  return result;
}

unint64_t sub_1B8DDB7A0()
{
  result = qword_1EBABA488;
  if (!qword_1EBABA488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageType, &type metadata for Argos_Protos_Visualquerypb_ImageType, v0, v1);
    atomic_store(result, &qword_1EBABA488);
  }

  return result;
}

unint64_t sub_1B8DDB7F8()
{
  result = qword_1EBABA490;
  if (!qword_1EBABA490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Argos_Protos_Visualquerypb_ImageType, &type metadata for Argos_Protos_Visualquerypb_ImageType, v0, v1);
    atomic_store(result, &qword_1EBABA490);
  }

  return result;
}

unint64_t sub_1B8DDB850()
{
  result = qword_1EBABA498;
  if (!qword_1EBABA498)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABA4A0, &qword_1B9653708);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBABA498);
  }

  return result;
}

void sub_1B8DDBB2C(uint64_t a1)
{
  sub_1B8DDBC10();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B8DDBD6C(319, &qword_1ED9F3558, type metadata accessor for Locationpb_Point);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8DDBC10()
{
  if (!qword_1ED9FBDD8)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9FBDD8);
    }
  }
}

void sub_1B8DDBC88(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8DDBD6C(319, &qword_1ED9C8FE0, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);
    if (v2 <= 0x3F)
    {
      sub_1B8DDBD6C(319, &qword_1ED9CA250, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8DDBD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_16_4@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B8DD9078(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v2 + a1, v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_163_2(v1);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.domain.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_21_2();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4(v4 + 16, v5);
  v7 = *(v4 + 24);
  *a1 = *(v4 + 16);
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1B8DDBFA4@<X0>(uint64_t a1@<X8>)
{
  result = Argos_Protos_Visualunderstandingpb_Entity.domain.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B8DDBFE8(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Argos_Protos_Visualunderstandingpb_Entity.domain.setter(&v3);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.domain.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_93_1();
  v8 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v9);
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_9_3(v8 + 16, v7);
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.domain.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDC130()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1();
  v2 = *(v1 + 72);
  v3 = *(v0 + 84);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_37_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DE1B4C(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.id.getter()
{
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.id.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_93_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.id.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 32);
  v5 = *(v4 + 40);
  *(v1 + 48) = *(v4 + 32);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DDC338()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  v3 = *(v0 + 56);
  if (v4)
  {

    OUTLINED_FUNCTION_461();
    Argos_Protos_Visualunderstandingpb_Entity.id.setter();
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_37_1();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B8DE1B4C(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_18(v8 + 32, v0 + 24);
    *(v8 + 32) = v2;
    *(v8 + 40) = v3;
  }

  free(v0);
}

float Argos_Protos_Visualunderstandingpb_Entity.score.getter()
{
  OUTLINED_FUNCTION_21_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 48, v3);
  return *(v2 + 48);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.score.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DE1B4C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.score.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  *(v1 + 80) = *(v5 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDC500()
{
  OUTLINED_FUNCTION_86_1();
  v2 = *(v1 + 80);
  v3 = *(v0 + 84);
  v4 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = *(v0 + 84);
    v8 = *(v0 + 72);
    OUTLINED_FUNCTION_37_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DE1B4C(v9);
    *(v8 + v7) = v6;
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v2;

  free(v0);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.name.getter()
{
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 56, v2);

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.name.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_93_1();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 56, v5);
  *(v6 + 56) = v2;
  *(v6 + 64) = v0;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.name.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 56);
  v5 = *(v4 + 64);
  *(v1 + 48) = *(v4 + 56);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DDC708()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  v3 = *(v0 + 56);
  if (v4)
  {

    OUTLINED_FUNCTION_461();
    Argos_Protos_Visualunderstandingpb_Entity.name.setter();
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_37_1();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B8DE1B4C(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_18(v8 + 56, v0 + 24);
    *(v8 + 56) = v2;
    *(v8 + 64) = v3;
  }

  free(v0);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.source.getter()
{
  OUTLINED_FUNCTION_21_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 72, v3);
  return *(v2 + 72);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.source.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_154_1(0);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 72, v5);
  *(v6 + 72) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.source.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 72);
  *(v1 + 80) = *(v5 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDC8B8()
{
  OUTLINED_FUNCTION_86_1();
  v2 = *(v1 + 80);
  v3 = *(v0 + 84);
  v4 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 72) = v2;

  free(v0);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.muid.getter()
{
  OUTLINED_FUNCTION_21_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 80, v3);
  return *(v2 + 80);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.muid.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_154_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 80, v5);
  *(v6 + 80) = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.muid.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 80);
  *(v1 + 72) = *(v4 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDCA50()
{
  OUTLINED_FUNCTION_86_1();
  v2 = *(v1 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 80) = v2;

  free(v0);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-v5 - 8];
  OUTLINED_FUNCTION_21_2();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__location;
  OUTLINED_FUNCTION_521(v8 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__location, v17);
  OUTLINED_FUNCTION_166_1(v8 + v9, v6);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_57(v6);
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_57(v6);
    if (!v10)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_4();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.location.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DE1B4C(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_294();
  sub_1B8DE20B0();
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Argos_Protos_Visualunderstandingpb_Entity.location.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Locationpb_Point(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_521(*(v0 + v13) + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__location, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    *(v12 + 24) = 1;
    v12[4] = 0;
    v12[5] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_246();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.hasLocation.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__location, v8);
  OUTLINED_FUNCTION_161_2();
  v6 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualunderstandingpb_Entity.clearLocation()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_154_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DE1B4C(v3);
    OUTLINED_FUNCTION_157_2(v4);
  }

  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.popularity.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 84) = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity);
  OUTLINED_FUNCTION_62_0(v5);
  *(v1 + 80) = *v5;
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.isRated.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8DDD15C(uint64_t *a1)
{
  OUTLINED_FUNCTION_21_2();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4(v4 + v5, v6);
  return *(v4 + v5);
}

uint64_t sub_1B8DDD1A8(char a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_93_1();
  v8 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8DE1B4C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *a2;
  result = OUTLINED_FUNCTION_9_3(v8 + v11, v7);
  *(v8 + v11) = a1 & 1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.isIndoor.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDD28C()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 72);
    OUTLINED_FUNCTION_37_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v11);
    *(v10 + v9) = v8;
  }

  v12 = *v1;
  OUTLINED_FUNCTION_11_4();
  *(v8 + v12) = v6;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.isDestroyed.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.entityAnnotations.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 64) = v4;
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

float sub_1B8DDD518(void *a1)
{
  OUTLINED_FUNCTION_21_2();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_521(v4, v6);
  return *v4;
}

uint64_t sub_1B8DDD56C(void *a1, float a2)
{
  v6 = OUTLINED_FUNCTION_154_1(0);
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DE1B4C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  v10 = (v7 + *a1);
  result = OUTLINED_FUNCTION_18(v10, v12);
  *v10 = a2;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.coverage.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 84) = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage);
  OUTLINED_FUNCTION_62_0(v5);
  *(v1 + 80) = *v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDD660(uint64_t a1, char a2, void *a3)
{
  OUTLINED_FUNCTION_238();
  v7 = *(v6 + 80);
  v8 = *(v3 + 84);
  v9 = *(v3 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8DE1B4C(v12);
    OUTLINED_FUNCTION_168(v13);
  }

  v14 = 48;
  if (a2)
  {
    v14 = 24;
  }

  v15 = (v11 + *a3);
  OUTLINED_FUNCTION_18(v15, v3 + v14);
  *v15 = v7;

  free(v3);
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.e2IAnnotation.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1B8D92024();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(0);
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v9)
  {
    sub_1B8D9207C(v7, &qword_1EBAB92C0, &qword_1B964DAA0);
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);
    return OUTLINED_FUNCTION_163_2(v10);
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_288();
    return sub_1B8DE20B0();
  }
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.e2IAnnotation.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB92C0, &qword_1B964DAA0);
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_432();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Argos_Protos_Visualunderstandingpb_EntityAnnotation.e2IAnnotation.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *v3 = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[1] = v7;
  type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v4[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v4[3] = v10;
  OUTLINED_FUNCTION_643(v1, v7);
  v11 = type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(0);
  v4[4] = v11;
  OUTLINED_FUNCTION_178(v7, 1, v11);
  if (v12)
  {
    sub_1B8D9207C(v7, &qword_1EBAB92C0, &qword_1B964DAA0);
    *v10 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8DDDAA4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8DE2104();
    sub_1B8D9207C(v7, &qword_1EBAB92C0, &qword_1B964DAA0);
    OUTLINED_FUNCTION_4_5();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    OUTLINED_FUNCTION_74_1();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAB92C0, &qword_1B964DAA0);
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_1_0();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation(v0);
  return OUTLINED_FUNCTION_25();
}

void static Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_243();
  a17 = v18;
  a18 = v19;
  OUTLINED_FUNCTION_145_2();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&a9 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92B8, &qword_1B9653B30);
  OUTLINED_FUNCTION_183(v27);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_137();
  sub_1B8DE2104();
  sub_1B8DE2104();
  sub_1B8DE20B0();
  sub_1B8DE20B0();
  sub_1B8D61720(*v26, *v23);
  if (v29)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_8();
    sub_1B8CD19E8(v30, v31, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8DE205C();
    OUTLINED_FUNCTION_432();
  }

  sub_1B8DE205C();
  OUTLINED_FUNCTION_242();
}

unint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8DDDE84@<X0>(uint64_t *a1@<X8>)
{
  result = Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8DDDEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DEE734();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(v0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation(0);
  return OUTLINED_FUNCTION_163_2(v5);
}

uint64_t static Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18(&off_1EBABA4E0, v3);
  off_1EBABA4E0 = a1;
}

uint64_t (*static Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8DDE024@<X0>(uint64_t *a1@<X8>)
{
  result = static Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8DDE084()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8DDE10C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Argos_Protos_Visualunderstandingpb_E2IAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8DDE2B4()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8DDE33C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v1);
  *v0 = 0;
  v0[1] = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.ocrData.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 24));
  OUTLINED_FUNCTION_166_1(v7, v8);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBABA698, &qword_1B9653B38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_182();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.ocrData.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABA698, &qword_1B9653B38);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8DDE7B4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a1(0);
  return OUTLINED_FUNCTION_163_2(v2);
}

void Argos_Protos_Visualunderstandingpb_VisualUnderstanding.ocrData.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  *(v1 + 16) = type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v10);
  OUTLINED_FUNCTION_64_0(*(v11 + 24));
  OUTLINED_FUNCTION_75(v0);
  if (v12)
  {
    *v8 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABA698, &qword_1B9653B38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_461();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8DDE91C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8DE2104();
    sub_1B8D9207C(v4 + v3, &qword_1EBABA698, &qword_1B9653B38);
    OUTLINED_FUNCTION_3_7();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_28_3();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBABA698, &qword_1B9653B38);
    OUTLINED_FUNCTION_3_7();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.hasOcrData.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v5);
  OUTLINED_FUNCTION_115(*(v6 + 24));
  OUTLINED_FUNCTION_161_2();
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualunderstandingpb_VisualUnderstanding.clearOcrData()()
{
  v1 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBABA698, &qword_1B9653B38);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.regionOfInterest.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(v6);
  OUTLINED_FUNCTION_77_0();
  v7 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__regionOfInterest;
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__regionOfInterest, v10);
  OUTLINED_FUNCTION_166_1(v1 + v7, v2);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_57(v2);
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v2);
    if (!v8)
    {
      return sub_1B8D9207C(v2, &qword_1EBAB92A8, &qword_1B9653B40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_182();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.regionOfInterest.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DE6874(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_294();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Argos_Protos_Visualunderstandingpb_ImageRegion.regionOfInterest.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__regionOfInterest, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v1, &qword_1EBAB92A8, &qword_1B9653B40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_246();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8DDEECC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8DE2104();
    v2(v3);
    sub_1B8DE205C();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B8DDEFF0(void (*a1)(void), uint64_t *a2)
{
  a1(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v2 + *a2, v4);
}

uint64_t sub_1B8DDF0B4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v6;
  v11 = OUTLINED_FUNCTION_313();
  v13 = *(v12(v11) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v16 = a4(v17);
    *(v10 + v13) = v16;
  }

  v18 = *a5;
  OUTLINED_FUNCTION_9_3(v16 + v18, v15);
  *(v16 + v18) = v5;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.imageEmbeddings.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.entities.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.predictedLabels.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.visualTokens.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.localFeatures.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.scenenetFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(v6);
  OUTLINED_FUNCTION_77_0();
  v7 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__scenenetFeatures;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__scenenetFeatures, v15);
  OUTLINED_FUNCTION_166_1(v2 + v7, v1);
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    *a1 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = v9;
    *(a1 + 24) = xmmword_1B9652FE0;
    *(a1 + 40) = xmmword_1B9652FE0;
    *(a1 + 56) = v9;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBABA6A0, &qword_1B9653B48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.scenenetFeatures.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA6A0, &qword_1B9653B48);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8DE6874(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_294();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Argos_Protos_Visualunderstandingpb_ImageRegion.scenenetFeatures.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = *(v10 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__scenenetFeatures, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    *(v12 + 1) = MEMORY[0x1E69E7CC0];
    *(v12 + 2) = v14;
    *(v12 + 24) = xmmword_1B9652FE0;
    *(v12 + 40) = xmmword_1B9652FE0;
    *(v12 + 7) = v14;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v1, &qword_1EBABA6A0, &qword_1B9653B48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_246();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DDFB28(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_521(v5 + *a3, v18);
  sub_1B8D92024();
  v14 = (a4)(0);
  OUTLINED_FUNCTION_178(v7, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_1B8D9207C(v7, v6, v4);
  return v16;
}

void sub_1B8DDFC28()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_208();
  v7 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B8DE6874(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.barcodes.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DDFE64()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238();
  v6 = *(v5 + 48);
  if (v7)
  {
    v8 = v4;

    v8(v9);
  }

  else
  {
    v10 = v3;
    v11 = v2;
    v12 = v1;
    v13 = *(v0 + 64);
    v14 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v0 + 64);
      v18 = *(v0 + 56);
      v12(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = v11(v19);
      *(v18 + v17) = v16;
    }

    v20 = *v10;
    OUTLINED_FUNCTION_18(v16 + v20, v0 + 24);
    *(v16 + v20) = v6;
  }

  OUTLINED_FUNCTION_242();

  free(v21);
}

uint64_t sub_1B8DDFF98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_145_2();
  v7 = v6;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(v4(0) + 20);
  if (*v3 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(v7 + v8) = *a3;
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.values.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8DE0360@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.embedding.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.field4.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.field4.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.embeddingFp16.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.embeddingFp16.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = xmmword_1B9652FE0;
  *(v1 + 40) = v2;
  *(v1 + 48) = xmmword_1B9652FE0;
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.codebookUrn.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.embeddingModelUrn.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.ids.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.distances.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.tokenTerms.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1B8DE07D4()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8DE085C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  v1[4] = MEMORY[0x1E69E7CC0];
  v1[5] = v3;
  v1[6] = v3;
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_OCRData.textAnnotations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_OCRData.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 32));
  OUTLINED_FUNCTION_166_1(v7, v8);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB92A8, &qword_1B9653B40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_182();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB92A8, &qword_1B9653B40);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Argos_Protos_Visualunderstandingpb_TextAnnotation.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  *(v1 + 16) = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v10);
  OUTLINED_FUNCTION_64_0(*(v11 + 32));
  OUTLINED_FUNCTION_75(v0);
  if (v12)
  {
    *v8 = 0;
    v8[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB92A8, &qword_1B9653B40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_461();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8DE0CA8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8DE2104();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB92A8, &qword_1B9653B40);
    OUTLINED_FUNCTION_1_7();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_8_4();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB92A8, &qword_1B9653B40);
    OUTLINED_FUNCTION_1_7();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.hasBoundingBox.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v5);
  OUTLINED_FUNCTION_115(*(v6 + 32));
  OUTLINED_FUNCTION_161_2();
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualunderstandingpb_TextAnnotation.clearBoundingBox()()
{
  v1 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB92A8, &qword_1B9653B40);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.gtin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 20));
  OUTLINED_FUNCTION_166_1(v7, v8);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9298, &unk_1B9653B50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_182();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t sub_1B8DE1120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_177_1();
  sub_1B8DE2104();
  return a7(v7);
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.gtin.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB9298, &unk_1B9653B50);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Argos_Protos_Visualunderstandingpb_Barcode.gtin.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  *(v1 + 16) = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v10);
  OUTLINED_FUNCTION_64_0(*(v11 + 20));
  OUTLINED_FUNCTION_75(v0);
  if (v12)
  {
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9298, &unk_1B9653B50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_461();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8DE1358()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8DE2104();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9298, &unk_1B9653B50);
    OUTLINED_FUNCTION_2_6();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_29_4();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9298, &unk_1B9653B50);
    OUTLINED_FUNCTION_2_6();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.hasGtin.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v5);
  OUTLINED_FUNCTION_115(*(v6 + 20));
  OUTLINED_FUNCTION_161_2();
  v7 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_11(v7);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualunderstandingpb_Barcode.clearGtin()()
{
  v1 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB9298, &unk_1B9653B50);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(0);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B8DE15B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA4E8);
  __swift_project_value_buffer(v0, qword_1EBABA4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "domain";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "id";
  *(v8 + 8) = 2;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "source";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "muid";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "popularity";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "is_rated";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "is_indoor";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_destroyed";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "entity_annotations";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "coverage";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}