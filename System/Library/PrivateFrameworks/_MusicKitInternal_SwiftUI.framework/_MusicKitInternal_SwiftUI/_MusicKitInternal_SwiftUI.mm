uint64_t sub_217847F30(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_43())
  {
    sub_21796693C();
  }

  else
  {
    sub_21796682C();
  }

  return sub_21796698C();
}

uint64_t sub_217847F88(uint64_t a1)
{
  if (OUTLINED_FUNCTION_43())
  {
    sub_21796693C();
    OUTLINED_FUNCTION_4();
    sub_21796698C();
    sub_21785BFD0();
  }

  else
  {
    sub_21796682C();
    OUTLINED_FUNCTION_4();
    sub_21796698C();
    sub_217863A38(&qword_27CB8A490, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  OUTLINED_FUNCTION_1();
  return swift_getWitnessTable();
}

uint64_t sub_21784803C(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_72())
  {
    OUTLINED_FUNCTION_60();
    sub_2179671CC();

    return sub_21796698C();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    sub_217966A3C();
    OUTLINED_FUNCTION_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_2179670AC();
    OUTLINED_FUNCTION_9();
    sub_21796698C();
    sub_21796944C();
    OUTLINED_FUNCTION_26();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_217966A3C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4();
    sub_2179670AC();
    return sub_21796698C();
  }
}

uint64_t sub_217848154(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_72())
  {
    OUTLINED_FUNCTION_36();
    sub_2179671CC();
    OUTLINED_FUNCTION_12();
    sub_21796698C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    sub_217966A3C();
    OUTLINED_FUNCTION_27();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_2179670AC();
    OUTLINED_FUNCTION_12();
    sub_21796698C();
    OUTLINED_FUNCTION_33();
    sub_21796944C();
    OUTLINED_FUNCTION_26();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_217966A3C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9();
    sub_2179670AC();
    OUTLINED_FUNCTION_12();
    sub_21796698C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  return swift_getWitnessTable();
}

void sub_2178482F0(uint64_t a2@<X8>)
{
  sub_217848324();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_21784837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
    v8 = a1 + *(a3 + 52);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 36) + 16);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_217848474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 36) + 16) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
    v10 = a1 + *(a4 + 52);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_217848564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s15AlbumDetailViewVMa(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_13();
  v7 = *(v6 + 80);
  v31 = *(v8 + 64);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = v5 + ((v7 + 32) & ~v7);
  sub_2179689AC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);

  v14 = v12 + v4[9];

  sub_2178643E0(*(v14 + 24));

  v15 = v12 + v4[12];
  if (*(v15 + 40))
  {
    if (*(v15 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
  }

  v16 = v12 + v4[13];
  v17 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_56(v16))
  {

    v18 = v16 + *(v17 + 24);
    v19 = _s5AlertV7ControlVMa(0);
    if (!__swift_getEnumTagSinglePayload(v18, 1, v19))
    {

      v30 = *(v19 + 20);
      v29 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v18 + v30, 1, v29))
      {
        OUTLINED_FUNCTION_10();
        (*(v20 + 8))(v18 + v21);
      }
    }

    v22 = v16 + *(v17 + 28);
    if (!__swift_getEnumTagSinglePayload(v22, 1, v19))
    {

      v23 = *(v19 + 20);
      v24 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v22 + v23, 1, v24))
      {
        OUTLINED_FUNCTION_10();
        (*(v25 + 8))(v22 + v23, v24);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);

  sub_2178643E0(*(v12 + v4[16]));
  v26 = v12 + v4[17];

  sub_2178643E0(*(v26 + 24));
  v27 = v12 + v4[18];

  sub_2178643E0(*(v27 + 24));
  (*(v10 + 8))(v5 + ((((v7 + 32) & ~v7) + v31 + v11) & ~v11), v32);

  return swift_deallocObject();
}

uint64_t sub_2178488F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_2179689AC();
  OUTLINED_FUNCTION_0();
  sub_217863A38(v3, v4, &unk_217971698);
  v5 = OUTLINED_FUNCTION_61();
  v7 = _s19ContainerHeaderCellVMa(v5, v6);
  OUTLINED_FUNCTION_29(v7, v8, v9);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_33();
  sub_21796732C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  v10 = OUTLINED_FUNCTION_33();
  _s20FailureAlertModifierVMa(v10);
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v11 = OUTLINED_FUNCTION_36();
  _s14AlbumTrackCellVMa(v11, v12, v1, v13);
  OUTLINED_FUNCTION_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  v14 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v14);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_24();
  v17 = sub_217864B2C(v15, &qword_27CB8A6E8, &qword_21796A8E8, v16);
  sub_21786438C(v17, v18, v19);
  OUTLINED_FUNCTION_61();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  v20 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v20);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  v21 = OUTLINED_FUNCTION_61();
  _s14ContainerShelfVMa(v21, v22);
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  v23 = sub_217967E9C();
  OUTLINED_FUNCTION_30(v23, v24, v25);
  OUTLINED_FUNCTION_4();
  sub_21796665C();
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  OUTLINED_FUNCTION_33();
  sub_2179669FC();
  OUTLINED_FUNCTION_15();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_217863A38(v26, v27, MEMORY[0x277CDDB08]);
  OUTLINED_FUNCTION_21();
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v28 = sub_21796666C();
  OUTLINED_FUNCTION_28(v28, v29, v30);
  OUTLINED_FUNCTION_4();
  sub_21796686C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  _s18NavigationBarStyleVMa(255, v2, v1, v31);
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18();
  sub_217863A38(v32, v33, MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v34 = OUTLINED_FUNCTION_33();
  _s15DoneToolbarItemVMa(v34, v2, v1, v35);
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_217864644(OpaqueTypeConformance2, v36, v37);
  return swift_getWitnessTable();
}

uint64_t sub_217848EB8()
{
  sub_217968E3C();
  OUTLINED_FUNCTION_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_217848F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 60) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217849024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 60) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217849100()
{
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAF0, &qword_21796AFA8);
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_63_0();
  v2(v1);
  return v0;
}

uint64_t sub_217849160(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAF0, &qword_21796AFA8);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2178491C0()
{
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB48, &qword_21796B120);
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_63_0();
  v2(v1);
  return v0;
}

uint64_t sub_217849220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s18PlaylistDetailViewVMa(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_13();
  v7 = *(v6 + 80);
  v29 = *(v8 + 64);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = v5 + ((v7 + 32) & ~v7);

  if (*(v12 + 56))
  {
    if (*(v12 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v12 + 16));
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_62_0();

  v13 = v12 + v4[14];
  v14 = _s5AlertVMa(0);
  if (!__swift_getEnumTagSinglePayload(v13, 1, v14))
  {

    v15 = v13 + *(v14 + 24);
    v16 = _s5AlertV7ControlVMa(0);
    if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
    {

      v28 = *(v16 + 20);
      v27 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v15 + v28, 1, v27))
      {
        OUTLINED_FUNCTION_10();
        (*(v17 + 8))(v15 + v18);
      }
    }

    v19 = v13 + *(v14 + 28);
    if (!__swift_getEnumTagSinglePayload(v19, 1, v16))
    {

      v20 = *(v16 + 20);
      v21 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v19 + v20, 1, v21))
      {
        OUTLINED_FUNCTION_10();
        (*(v22 + 8))(v19 + v20, v21);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);

  sub_2178643E0(*(v12 + v4[17]));
  v23 = v12 + v4[18];

  sub_2178643E0(*(v23 + 24));
  v24 = v12 + v4[19];

  sub_2178643E0(*(v24 + 24));
  v25 = v12 + v4[20];

  sub_2178643E0(*(v25 + 24));
  OUTLINED_FUNCTION_58_0();
  (*(v10 + 8))(v5 + ((((v7 + 32) & ~v7) + v29 + v11) & ~v11), v30);

  return swift_deallocObject();
}

uint64_t sub_217849564()
{

  return swift_deallocObject();
}

uint64_t sub_21784959C()
{
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = v5 + *(v6 + 64);
  OUTLINED_FUNCTION_45();
  _s18PlaylistDetailViewVMa(v8, v9, v10, v11);
  OUTLINED_FUNCTION_13();
  v13 = (v7 + *(v12 + 80)) & ~*(v12 + 80);
  v15 = *(v4 + 8);
  v14 = v4 + 8;
  v15(v0 + v5, v2);
  v16 = v0 + v13;

  if (*(v0 + v13 + 56))
  {
    if (*(v16 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v16 + 16));
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_62_0();

  v17 = OUTLINED_FUNCTION_79();
  if (!OUTLINED_FUNCTION_52_0(v17))
  {

    v18 = OUTLINED_FUNCTION_78();
    if (!OUTLINED_FUNCTION_55_0(v18))
    {

      v19 = *(v14 + 20);
      v26 = sub_2179665FC();
      if (!__swift_getEnumTagSinglePayload(v5 + v19, 1, v26))
      {
        OUTLINED_FUNCTION_10();
        (*(v20 + 8))(v5 + v21);
      }
    }

    if (!OUTLINED_FUNCTION_44_0())
    {

      v22 = *(v14 + 20);
      v23 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_54_0(v23))
      {
        OUTLINED_FUNCTION_10();
        (*(v24 + 8))(v2 + v22, v14);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);

  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_66_0();
  sub_2178643E0(*(v1 + 24));
  OUTLINED_FUNCTION_58_0();

  return swift_deallocObject();
}

uint64_t sub_217849834(uint64_t *a1)
{
  v1 = a1[1];
  sub_217968E3C();
  OUTLINED_FUNCTION_3_0();
  sub_217874614(v2, v3, &unk_21797178C);
  v4 = OUTLINED_FUNCTION_61();
  _s19ContainerHeaderCellVMa(v4, v5);
  OUTLINED_FUNCTION_27_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_26_0();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  _s20FailureAlertModifierVMa(255);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAD0, &unk_21796AF90);
  v6 = OUTLINED_FUNCTION_41();
  _s17PlaylistEntryCellVMa(v6, v7, v1, v8);
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  OUTLINED_FUNCTION_23_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  sub_217873B84();
  OUTLINED_FUNCTION_61();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAF0, &qword_21796AFA8);
  sub_217968AFC();
  OUTLINED_FUNCTION_20_0();
  sub_217874614(v9, v10, &unk_2179717C8);
  v11 = OUTLINED_FUNCTION_61();
  _s14ContainerShelfVMa(v11, v12);
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  sub_21796698C();
  sub_2179669FC();
  OUTLINED_FUNCTION_18_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  sub_217874614(v13, v14, MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  sub_21796698C();
  v15 = OUTLINED_FUNCTION_41();
  _s18NavigationBarStyleVMa(v15, v16, v1, v17);
  sub_21796698C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_32_0();
  sub_217874614(v18, v19, MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v20 = OUTLINED_FUNCTION_41();
  _s15DoneToolbarItemVMa(v20, v21, v1, v22);
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_217873C34(OpaqueTypeConformance2, v24, v25);
  swift_getOpaqueTypeMetadata2();
  v26 = OUTLINED_FUNCTION_41();
  _s18PlaylistDetailViewV11SearchStateVMa(v26, v27, v1, v28);
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217966DDC();
  sub_21796698C();
  _s23PlaylistDetailViewModelC12LoadingStateOMa(255);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_25_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  sub_217874614(v29, v30, &unk_21796FE78);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_41();
  sub_21796919C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_21_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  v34 = swift_getOpaqueTypeConformance2();
  sub_217864644(v34, v31, v32);
  OUTLINED_FUNCTION_49();
  return swift_getWitnessTable();
}

uint64_t sub_21784A060(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_21784A0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21796810C();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21784A164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21796810C();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21784A1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 76) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21784A2B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 76) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21784A36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s16ArtistDetailViewVMa(0, *(v5 + 32), *(v5 + 40), a4);
  OUTLINED_FUNCTION_13();
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  sub_217968AFC();
  OUTLINED_FUNCTION_4_1();
  (*(v9 + 8))(v5 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);

  OUTLINED_FUNCTION_59_1();
  sub_2178643E0(*(v6 + 24));

  v10 = v5 + v8 + v4[12];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_57_1(v4[13]);

  sub_2178643E0(*(v5 + v8 + v4[14]));
  OUTLINED_FUNCTION_59_1();
  sub_2178643E0(*(v6 + 24));
  OUTLINED_FUNCTION_59_1();
  sub_2178643E0(*(v6 + 24));
  OUTLINED_FUNCTION_59_1();
  sub_2178643E0(*(v6 + 24));
  OUTLINED_FUNCTION_57_1(v4[19]);

  OUTLINED_FUNCTION_57_1(v4[20]);

  return swift_deallocObject();
}

uint64_t sub_21784A508@<X0>(uint64_t a1@<X8>)
{
  result = sub_217966C6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21784A540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217966C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21784A594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s16ArtistDetailViewVMa(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_13();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_21796681C();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v14 = *(v12 + 80);
  sub_217968AFC();
  OUTLINED_FUNCTION_4_1();
  (*(v15 + 8))(v5 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);

  OUTLINED_FUNCTION_87_0();
  sub_2178643E0(*(v6 + 24));

  v16 = v5 + v8 + *(v4 + 48);
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
  }

  sub_2178643E0(*(v5 + v8 + *(v4 + 56)));
  OUTLINED_FUNCTION_87_0();
  sub_2178643E0(*(v6 + 24));
  OUTLINED_FUNCTION_87_0();
  sub_2178643E0(*(v6 + 24));
  OUTLINED_FUNCTION_87_0();
  sub_2178643E0(*(v6 + 24));

  (*(v13 + 8))(v5 + ((v8 + v10 + v14) & ~v14), v11);

  return swift_deallocObject();
}

uint64_t sub_21784A7D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21784A7EC()
{

  sub_2178643E0(*(v0 + 56));

  return swift_deallocObject();
}

void sub_21784A82C(uint64_t a1)
{
  OUTLINED_FUNCTION_81();
  v2 = *v1;
  v47 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  sub_2179689AC();
  OUTLINED_FUNCTION_23_1();
  sub_21788D650(v3);
  v4 = OUTLINED_FUNCTION_11_0();
  v6 = _s19ContainerHeaderCellVMa(v4, v5);
  OUTLINED_FUNCTION_36_1(v6, v7, v8);
  OUTLINED_FUNCTION_11_0();
  sub_21796688C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  v9 = sub_2179669FC();
  OUTLINED_FUNCTION_41_0(v9, v10, v11);
  OUTLINED_FUNCTION_20_1();
  v13 = sub_21788D5B8(v12);
  OUTLINED_FUNCTION_12_0(v13);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_1();
  sub_21788D650(v14);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_50_1();
  sub_21796732C();
  OUTLINED_FUNCTION_42_0();
  sub_21796698C();
  OUTLINED_FUNCTION_50_1();
  sub_217966FAC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_0();
  sub_21788D650(v15);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  sub_21788D650(v16);
  OUTLINED_FUNCTION_11_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v17 = OUTLINED_FUNCTION_39_1();
  _s13ItemShelfCellVMa(v17, v18);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_24();
  v20 = sub_21788D5B8(v19);
  sub_21786438C(v20, v21, v22);
  OUTLINED_FUNCTION_39_1();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  sub_2179688CC();
  OUTLINED_FUNCTION_29_1();
  sub_21788D650(v23);
  v24 = OUTLINED_FUNCTION_39_1();
  _s9ItemShelfVMa(v24, v25);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  v26 = OUTLINED_FUNCTION_39_1();
  _s14ContainerShelfVMa(v26, v27);
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  sub_217968E3C();
  OUTLINED_FUNCTION_27_1();
  sub_21788D650(v28);
  v29 = OUTLINED_FUNCTION_39_1();
  _s14ContainerShelfVMa(v29, v30);
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_12();
  sub_21796944C();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  sub_217966F9C();
  OUTLINED_FUNCTION_18_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_0(WitnessTable, MEMORY[0x277CE1410]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE18, &qword_21796B518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v32 = OUTLINED_FUNCTION_11_0();
  _s9VItemCellVMa(v32, v33);
  sub_21796698C();
  OUTLINED_FUNCTION_11_0();
  sub_217967D9C();
  OUTLINED_FUNCTION_22_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_56_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967E8C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE20, &qword_21796B520);
  OUTLINED_FUNCTION_93();
  sub_21796852C();
  OUTLINED_FUNCTION_21_1();
  sub_21788D650(v34);
  v35 = OUTLINED_FUNCTION_11_0();
  _s13ItemShelfCellVMa(v35, v36);
  OUTLINED_FUNCTION_42_0();
  sub_21796698C();
  sub_21788D5B8(&unk_27CB8AE28);
  OUTLINED_FUNCTION_11_0();
  sub_217967D9C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_19_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE30, &unk_21796B528);
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_17_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_217966F9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  OUTLINED_FUNCTION_19();
  v37 = swift_getWitnessTable();
  sub_217873C34(v37, v38, v39);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_66_1();
  swift_getOpaqueTypeMetadata2();
  _s18NavigationBarStyleVMa(255, v2, v47, v40);
  sub_21796698C();
  v41 = OUTLINED_FUNCTION_56_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v41, v42);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_0(&qword_27CB8A890);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  _s15DoneToolbarItemVMa(255, v2, v47, v43);
  OUTLINED_FUNCTION_16();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  v44 = OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_26_1(v44);
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  v48 = OUTLINED_FUNCTION_49_0();
  sub_217864644(v48, v45, v46);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_80();
}

uint64_t sub_21784B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8B0F8, &qword_21796B7F8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21784B490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8B0F8, &qword_21796B7F8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21784B5F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B5F8, &qword_21796BEC8);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_63_0();
  v4(v3);
  return a2;
}

uint64_t sub_21784B65C()
{
  v1 = *(v0 + 32);
  v12[0] = *(v0 + 16);
  v11 = *&v12[0];
  v12[1] = v1;
  v2 = (_s19ContainerHeaderCellVMa(0, v12) - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v8 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(*(v11 - 8) + 8))(v0 + v3);
  v9 = v0 + v3 + v2[15];

  sub_2178643E0(*(v9 + 24));
  OUTLINED_FUNCTION_15_1(v2[16]);

  OUTLINED_FUNCTION_15_1(v2[17]);

  OUTLINED_FUNCTION_15_1(v2[18]);

  OUTLINED_FUNCTION_15_1(v2[19]);

  (*(v7 + 8))(v0 + v8, v5);
  return swift_deallocObject();
}

uint64_t sub_21784B850(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  _s11ArtworkViewVMa(255, *a1, v5, a4);
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B410, &qword_21796BCC0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B418, &unk_21796BCC8);
  _s9CellTitleVMa(255, v4, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B420, &qword_21796BCD8);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B428, &qword_21796BCE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B430, &qword_21796BCE8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B438, &unk_21796BCF0);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_4();
  v7 = sub_21796698C();
  OUTLINED_FUNCTION_10_2(v7, v8, v9);
  OUTLINED_FUNCTION_8_2(&qword_27CB8ADF8);
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_217966FAC();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_21789908C(v10);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784BB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21796715C();
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6C8, &qword_21796C0D0);
    OUTLINED_FUNCTION_1_1();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6D0, &qword_21796C0D8);
      v12 = *(a3 + 28);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_21784BBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21796715C();
  OUTLINED_FUNCTION_1_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6C8, &qword_21796C0D0);
    OUTLINED_FUNCTION_1_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B6D0, &qword_21796C0D8);
      v14 = *(a4 + 28);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21784BD58(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B730, &qword_21796C180);
  OUTLINED_FUNCTION_3();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21784BDC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B730, &qword_21796C180);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

__n128 sub_21784BE48(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21784BE54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217966B9C();
  *a1 = result;
  return result;
}

uint64_t sub_21784BE8C()
{
  v1 = sub_21796843C();
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = *(v2 + 80);

  if (*(v0 + 88))
  {
    if (*(v0 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 48));
    }
  }

  else
  {
  }

  sub_2178643E0(*(v0 + 136));

  sub_2178643E0(*(v0 + 176));

  sub_2178643E0(*(v0 + 208));

  sub_2178643E0(*(v0 + 240));
  (*(v3 + 8))(v0 + ((v4 + 344) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_21784BFE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B7F8, &qword_21796C650);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B800, &unk_21796C658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  sub_21796595C();
  OUTLINED_FUNCTION_17_3();
  sub_2178AA01C(v3);
  v4 = OUTLINED_FUNCTION_67();
  _s16SearchResultCellVMa(v4, v5);
  v6 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v6);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_14_2();
  sub_217898FF8(v7);
  OUTLINED_FUNCTION_67();
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_11_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  v8 = OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_75(v8);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_217967CDC();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B818, &qword_21796C668);
  sub_2179682DC();
  OUTLINED_FUNCTION_16_1();
  sub_2178AA01C(v9);
  v10 = OUTLINED_FUNCTION_67();
  _s17SearchContentViewVMa(v10, v11);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  v12 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v12);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_217967CDC();
  v13 = OUTLINED_FUNCTION_67();
  _s17SearchContentViewVMa(v13, v14);
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  sub_21796944C();
  OUTLINED_FUNCTION_15_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  sub_21796665C();
  sub_217966F9C();
  OUTLINED_FUNCTION_36();
  sub_217966F9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_67();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_67();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_41();
  sub_217967B7C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  sub_21796698C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_2();
  sub_2178AA01C(v15);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_21796666C();
  OUTLINED_FUNCTION_41();
  v16 = sub_21796698C();
  OUTLINED_FUNCTION_21_2(v16, v17, v18);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  _s13SearchContextVMa(255, v1, v2, v19);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  v20 = OUTLINED_FUNCTION_48_0();
  _s11ColumnsViewVMa(v20, v21, v2, v22);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B828, &qword_21796C670);
  OUTLINED_FUNCTION_9();
  sub_217966F9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  v23 = OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_75(v23);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  sub_217967CDC();
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B830, &qword_21796C678);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_217864644(OpaqueTypeConformance2, v24, v25);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_217898FF8(v26);
  return swift_getWitnessTable();
}

uint64_t sub_21784C7B8()
{

  sub_2178643E0(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21784C7F8()
{
  sub_21796681C();
  OUTLINED_FUNCTION_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21784C878(ValueMetadata **a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AEC8, &qword_21796B618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
  sub_2179688CC();
  OUTLINED_FUNCTION_8_3();
  sub_2178AEB74(v3, v4, &unk_217971AF0);
  v5 = OUTLINED_FUNCTION_12_1();
  _s13ItemShelfCellVMa(v5, v6);
  OUTLINED_FUNCTION_24();
  v9 = sub_217864B2C(v7, &qword_27CB8B0A8, &unk_21796B760, v8);
  sub_21786438C(v9, v10, v11);
  OUTLINED_FUNCTION_12_1();
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  sub_21796944C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796686C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCA8, &qword_21796CB88);
  _s15LibraryMenuViewVMa(255, v2, v1, v12);
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BCB0, &qword_21796CB90);
  v13 = OUTLINED_FUNCTION_12_1();
  _s9ItemShelfVMa(v13, v14);
  OUTLINED_FUNCTION_14_2();
  v23 = sub_217864B2C(v15, &qword_27CB8BCB0, &qword_21796CB90, v16);
  sub_2178AE958(v23, v17, v18);
  OUTLINED_FUNCTION_12_1();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CDC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_21796666C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_21796686C();
  sub_217966F9C();
  sub_21796698C();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  WitnessTable = swift_getWitnessTable();
  sub_217864644(WitnessTable, v19, v20);
  OUTLINED_FUNCTION_1();
  return swift_getWitnessTable();
}

uint64_t sub_21784CC18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ArtworkPlaceholder(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_21784CC60(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217968C2C();
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_21796633C();
  OUTLINED_FUNCTION_1_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[15];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
    OUTLINED_FUNCTION_1_1();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[20];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD68, &qword_21796CC68);
      v12 = a3[21];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[16]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_21784CDC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217968C2C();
  OUTLINED_FUNCTION_1_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_21796633C();
    OUTLINED_FUNCTION_1_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[15];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[16]) = (a2 - 1);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
      OUTLINED_FUNCTION_1_1();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[20];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD68, &qword_21796CC68);
        v14 = a4[21];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21784CF24()
{

  return swift_deallocObject();
}

uint64_t sub_21784CF5C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CB8BD70, &qword_21796CCE8);
  sub_21796944C();
  swift_getWitnessTable();
  sub_217966A7C();
  sub_21796698C();
  sub_2178B0110();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21784D050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21796810C();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21784D0E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21796810C();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21784D170(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE78, &qword_21796CE80);
  OUTLINED_FUNCTION_3();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21784D1D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BE78, &qword_21796CE80);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21784D238()
{
  v9 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v9;
  v1 = _s14ContainerShelfVMa(0, v10);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));

  v3 = v1[13];
  sub_21796810C();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v2 + v3);
  sub_2178643E0(*(v2 + v1[14]));

  v5 = v2 + v1[20];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
  }

  v6 = v2 + v1[21];

  sub_2178643E0(*(v6 + 24));
  v7 = v2 + v1[22];

  sub_2178643E0(*(v7 + 24));
  return swift_deallocObject();
}

uint64_t sub_21784D3B4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BE78, &qword_21796CE80);
  v16 = *(a1 + 1);
  v17 = *a1;
  v2 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = v17;
  v19 = v16;
  _s9VItemCellVMa(255, &v18);
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_12_2();
  sub_21796698C();
  v4 = sub_21796698C();
  OUTLINED_FUNCTION_6_1();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v18 = v2;
  *(&v18 + 1) = AssociatedTypeWitness;
  *&v19 = v4;
  *(&v19 + 1) = WitnessTable;
  v20 = AssociatedConformanceWitness;
  sub_217967D9C();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_4();
  sub_2178B423C(v7, v8, MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v9 = sub_217967CAC();
  OUTLINED_FUNCTION_9_2(v9, v10, v11);
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  v12 = sub_217967E9C();
  OUTLINED_FUNCTION_30(v12, v13, v14);
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_21796698C();
  sub_21796944C();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  return swift_getWitnessTable();
}

uint64_t sub_21784D650@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_217956C60(a2, a3, a4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_21784D680()
{

  return swift_deallocObject();
}

uint64_t sub_21784D6B8()
{

  return swift_deallocObject();
}

uint64_t sub_21784D6F8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BF08, &qword_21796CF28);
  sub_21796698C();
  sub_2178B4BCC();
  return swift_getWitnessTable();
}

uint64_t sub_21784D7E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_217968AFC();
  OUTLINED_FUNCTION_8_4();
  v6 = sub_2178B7FA4(v4, v5, &unk_2179717C8);
  v70 = v3;
  v71 = v2;
  v72 = MEMORY[0x277CD8408];
  v73 = v6;
  v74 = v1;
  _s15LibraryMenuCellVMa(255, &v70);
  OUTLINED_FUNCTION_8();
  v70 = sub_21796944C();
  v7 = sub_2179689AC();
  OUTLINED_FUNCTION_4_5();
  v10 = sub_2178B7FA4(v8, v9, &unk_217971698);
  OUTLINED_FUNCTION_10_4(v10, v11, v12, v13, v14, v15, v16, v17, v62, v7, v2, MEMORY[0x277CD82A8], v10, v66);
  OUTLINED_FUNCTION_8();
  v71 = sub_21796944C();
  v18 = sub_2179688CC();
  OUTLINED_FUNCTION_3_3();
  v21 = sub_2178B7FA4(v19, v20, &unk_217971AF0);
  OUTLINED_FUNCTION_10_4(v21, v22, v23, v24, v25, v26, v27, v28, v63, v18, v2, MEMORY[0x277CD8200], v21, v67);
  OUTLINED_FUNCTION_8();
  v72 = sub_21796944C();
  v29 = sub_217968CFC();
  v30 = MEMORY[0x277D2B358];
  v31 = sub_2178B7FA4(&qword_27CB8BF98, MEMORY[0x277D2B358], MEMORY[0x277D2B340]);
  OUTLINED_FUNCTION_7_3();
  v34 = sub_2178B7FA4(v32, v30, v33);
  OUTLINED_FUNCTION_10_4(v34, v35, v36, v37, v38, v39, v40, v41, v64, v29, v2, v31, v34, v68);
  OUTLINED_FUNCTION_8();
  v73 = sub_21796944C();
  v42 = sub_21796591C();
  v43 = MEMORY[0x277D2A350];
  v44 = sub_2178B7FA4(&qword_27CB8BFA8, MEMORY[0x277D2A350], MEMORY[0x277D2A340]);
  OUTLINED_FUNCTION_5_2();
  v47 = sub_2178B7FA4(v45, v43, v46);
  OUTLINED_FUNCTION_10_4(v47, v48, v49, v50, v51, v52, v53, v54, v65, v42, v2, v44, v47, v69);
  OUTLINED_FUNCTION_8();
  v74 = sub_21796944C();
  v75 = v74;
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  v55 = sub_217967B7C();
  v56 = sub_2179669FC();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v60 = sub_2178B7FA4(v58, v59, MEMORY[0x277CDDB08]);
  v70 = v55;
  v71 = v56;
  v72 = WitnessTable;
  v73 = v60;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2179688CC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21784DB4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2179688CC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21784DC20(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C028, &qword_21796D1A8);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_63_0();
  v4(v3);
  return a2;
}

uint64_t sub_21784DC84(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C028, &qword_21796D1A8);
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21784DD64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8C090, &qword_21796D2E8);
    v10 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21784DE04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8C090, &qword_21796D2E8);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_21784DE9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21784DF0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C168, &qword_21796D490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21784DF7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C168, &qword_21796D490);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_21784DFD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217966C2C();
  *a1 = result;
  return result;
}

uint64_t sub_21784E008()
{
  sub_2179668AC();
  v0 = OUTLINED_FUNCTION_0_5();
  _s11ContentViewVMa(v0, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C130, &qword_21796D3F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C138, &unk_21796D3F8);
  v4 = OUTLINED_FUNCTION_0_5();
  _s15DoneToolbarItemVMa(v4, v5, v6, v7);
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217966E8C();
  OUTLINED_FUNCTION_5_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_6();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v8 = OUTLINED_FUNCTION_0_5();
  _s18NavigationBarStyleVMa(v8, v9, v10, v11);
  sub_21796698C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = OUTLINED_FUNCTION_6_3(OpaqueTypeMetadata2, v13, v14, v15, v16, v17);
  sub_217873C34(v18, v19, v20);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v21 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3(v21, v22, v23, v24, v25, v26);
  v27 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3(v27, v28, v29, v30, v31, v32);
  v33 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3(v33, v34, v35, v36, v37, v38);
  v39 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3(v39, v40, v41, v42, v43, v44);
  v45 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_6_3(v45, v46, v47, v48, v49, v50);
  swift_getOpaqueTypeMetadata2();
  v51 = OUTLINED_FUNCTION_0_5();
  _s34NavigationDestinationsViewModifierVMa(v51, v52, v53, v54);
  v55 = sub_21796698C();
  OUTLINED_FUNCTION_6_3(v55, v56, v57, v58, v59, v60);
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179669AC();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B600, &unk_21796BED0);
  v61 = OUTLINED_FUNCTION_0_5();
  _s20DismissAlertModifierVMa(v61, v62, v63, v64);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v65 = sub_217967E9C();
  OUTLINED_FUNCTION_30(v65, v66, v67);
  OUTLINED_FUNCTION_12();
  sub_217967CFC();
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  OUTLINED_FUNCTION_3_5();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21784E4A8()
{
  v1 = *(v0 + 16);
  v2 = sub_21796944C();
  v3 = (OUTLINED_FUNCTION_9_4(v2) - 8);
  v4 = (*(*v3 + 80) + 49) & ~*(*v3 + 80);
  v5 = (v4 + *(*v3 + 64) + 39) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v4;

  v7 = v3[10];
  if (!__swift_getEnumTagSinglePayload(v6 + v7, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v6 + v7, v1);
  }

  v8 = *(v0 + v5 + 8);
  if (v8 != 255)
  {
    sub_2178BF424(*(v0 + v5), v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21784E684()
{
  v0 = OUTLINED_FUNCTION_6_4();
  _s8MainViewVMa(v0, v1, v2, v3);
  sub_21796698C();
  v4 = OUTLINED_FUNCTION_6_4();
  _s9ViewModelCMa(v4, v5, v6, v7);
  sub_21796944C();
  sub_21796731C();
  sub_21796698C();
  v8 = OUTLINED_FUNCTION_6_4();
  _s33MainViewContainerDismissalWrapperVMa(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  sub_217966F6C();
  sub_21796698C();
  OUTLINED_FUNCTION_3_6();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_7();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21784E7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217965A3C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21784E828(uint64_t a1, uint64_t a2)
{
  v4 = sub_217965A3C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21784E874()
{

  return swift_deallocObject();
}

uint64_t sub_21784E8AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2D8, &qword_21796D6D8);
  OUTLINED_FUNCTION_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21784E964(uint64_t a1, uint64_t a2)
{
  v4 = sub_2179688CC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21784E9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2179688CC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21784E9F8()
{

  return swift_deallocObject();
}

uint64_t sub_21784EA30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217966C4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21784EA88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217966C8C();
  *a1 = result;
  return result;
}

uint64_t sub_21784EAC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3C0, &qword_21796D930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21784EB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C3C0, &qword_21796D930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21784EBA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C3A0, &qword_21796D920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C398, &qword_21796D918);
  OUTLINED_FUNCTION_1_6();
  sub_217864B2C(v0, &qword_27CB8C398, &qword_21796D918, v1);
  OUTLINED_FUNCTION_0_8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784EC8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MusicPicker.SheetPresentationModifier(255, a1[1], a1[3], a4);
  OUTLINED_FUNCTION_0_5();
  sub_21796698C();
  OUTLINED_FUNCTION_1_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1();
  return swift_getWitnessTable();
}

uint64_t sub_21784ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for MusicPicker.SheetPresentationModifier(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));

  v8 = v7 + *(v6 + 36);

  sub_21796944C();
  v9 = *(sub_217967D5C() + 32);
  if (!__swift_getEnumTagSinglePayload(v8 + v9, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v8 + v9, v5);
  }

  v10 = v7 + *(v6 + 48);
  v11 = *(v10 + 8);
  if (v11 != 255)
  {
    sub_2178BF424(*v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_21784EEC8()
{
  v0 = OUTLINED_FUNCTION_0_5();
  type metadata accessor for MusicPicker.SheetPresentationModifier(v0, v1, v2, v3);
  OUTLINED_FUNCTION_1_8();
  swift_getWitnessTable();
  sub_2179670BC();
  v4 = OUTLINED_FUNCTION_0_5();
  _s17MainViewContainerVMa(v4, v5, v6, v7);
  sub_21796698C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784EFC8()
{

  return swift_deallocObject();
}

uint64_t sub_21784F000(void *a1)
{
  v1 = sub_21796698C();
  sub_2178C6D34(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_21784F064()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C458, &qword_21796DBE8);
  sub_2179664EC();
  sub_2178C6E30();
  sub_2178C6E94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21784F14C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27_2();

  return swift_deallocObject();
}

uint64_t sub_21784F180()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21784F1C8()
{
  v1 = sub_2179688CC();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_21784F294()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21784F2D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2178C93B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21784F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217968DFC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21784F3EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217968DFC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 16) = a2;
  }

  return result;
}

uint64_t sub_21784F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (_s17PlaylistEntryCellVMa(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));
  sub_217968DFC();
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v6);
  v8 = v6 + v5[11];

  sub_2178643E0(*(v8 + 24));

  return swift_deallocObject();
}

uint64_t sub_21784F588(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_217968DFC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C708, &qword_21796E010);
  OUTLINED_FUNCTION_3_10();
  v7 = sub_2178CF218(v5, v6, &unk_2179715E0);
  OUTLINED_FUNCTION_2_5();
  v17 = v3;
  v18 = v1;
  v19 = v4;
  v20 = v7;
  v21 = v2;
  v22 = sub_217864B2C(v8, &qword_27CB8C708, &qword_21796E010, v9);
  v10 = _s9HItemCellVMa(255, &v17);
  v11 = sub_217966FAC();
  OUTLINED_FUNCTION_5_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_9();
  v15 = sub_2178CF218(v13, v14, MEMORY[0x277CDDFA8]);
  v17 = v10;
  v18 = v11;
  v19 = WitnessTable;
  v20 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  v17 = v10;
  v18 = v11;
  v19 = WitnessTable;
  v20 = v15;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21784F758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21796810C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 52) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21784F820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21796810C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52) + 16) = a2;
  }

  return result;
}

uint64_t sub_21784F8D8()
{
  v6 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v6;
  v1 = (_s17SearchContentViewVMa(0, v7) - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  v3 = sub_21796810C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[15];

  sub_2178643E0(*(v4 + 24));
  return swift_deallocObject();
}

uint64_t sub_21784F9EC(void *a1)
{
  v7 = *(a1 + 1);
  v8 = *a1;
  v1 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v9 = v8;
  v10 = v7;
  _s16SearchResultCellVMa(255, &v9);
  swift_getTupleTypeMetadata2();
  v3 = sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v9 = v1;
  *(&v9 + 1) = AssociatedTypeWitness;
  *&v10 = v3;
  *(&v10 + 1) = WitnessTable;
  v11 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796698C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  sub_21796665C();
  OUTLINED_FUNCTION_18_0();
  return swift_getWitnessTable();
}

uint64_t sub_21784FB84()
{

  return swift_deallocObject();
}

uint64_t sub_21784FBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217968C2C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21784FC80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217968C2C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_21784FD28()
{
  OUTLINED_FUNCTION_0_10();
  result = MusicSubscriptionOffer.Options.figaroCampaignToken.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21784FD7C()
{
  OUTLINED_FUNCTION_0_10();
  result = MusicSubscriptionOffer.Options.figaroCampaignGroup.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21784FDD0()
{
  OUTLINED_FUNCTION_0_10();
  result = MusicSubscriptionOffer.Options.homePodSerialNumber.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21784FE24()
{
  OUTLINED_FUNCTION_0_10();
  result = MusicSubscriptionOffer.Options.homePodUniqueDeviceIdentifier.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21784FE9C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27_2();

  return swift_deallocObject();
}

uint64_t sub_21784FED0()
{

  OUTLINED_FUNCTION_137();

  return swift_deallocObject();
}

__n128 sub_21784FF10(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21784FF38()
{
  swift_unknownObjectRelease();
  sub_2178BF424(*(v0 + 48), *(v0 + 56));

  OUTLINED_FUNCTION_116();

  return swift_deallocObject();
}

uint64_t sub_21784FFDC()
{

  OUTLINED_FUNCTION_171();

  return swift_deallocObject();
}

uint64_t sub_21785003C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(255, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_95_0();
  sub_2179687DC();
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2178500C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(255, *(v4 + 32), *(v4 + 40), a4);
  OUTLINED_FUNCTION_95_0();
  v5 = sub_2179687DC();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v8 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v7 + 8))(v4 + v8, v5);

  return swift_deallocObject();
}

uint64_t sub_2178503FC()
{
  OUTLINED_FUNCTION_79_1();
  result = sub_2178D86A8();
  *v0 = result;
  return result;
}

uint64_t sub_2178507C8()
{
  OUTLINED_FUNCTION_79_1();
  result = sub_2178D8034();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2178508AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2178508F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_81();
  v3 = *(v2 + 40);
  v4 = sub_21796595C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v7 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v9 = *(v3 - 8);
  v10 = (v7 + *(v8 + 64) + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();

  (*(v6 + 8))(v2 + v7, v4);
  (*(v9 + 8))(v2 + v10, v3);
  OUTLINED_FUNCTION_80();

  return swift_deallocObject();
}

uint64_t sub_217850B6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_217850BA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_217850BFC()
{

  return swift_deallocObject();
}

uint64_t sub_217850C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_217967BCC();
    v9 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217850CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_217967BCC();
    v8 = v5 + *(a4 + 72);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217850D44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v27 = *a1;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_33();
  sub_21796732C();
  OUTLINED_FUNCTION_12();
  v3 = sub_21796698C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CDF8, &unk_21796F438);
  _s9CellTitleVMa(255, v1, v2, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  v6 = sub_21796698C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE00, &qword_21796F448);
  v8 = OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_25_2(v8, v9, v10, v7);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  v11 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2(v11, v6, v7, v4);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_12();
  sub_217966F9C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE08, &unk_21796F450);
  OUTLINED_FUNCTION_25_2(255, v6, v7, v12);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  sub_217966F9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  v13 = sub_21796698C();
  OUTLINED_FUNCTION_25_2(255, v3, v13, MEMORY[0x277CE1180]);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE10, &qword_21796F460);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_1();
  v26 = v14;
  sub_2178FE83C(v15, &qword_27CB8BB08, &qword_21796C8C0, v16);
  OUTLINED_FUNCTION_8_9();
  swift_getWitnessTable();
  sub_2178FD4F0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  v17 = OUTLINED_FUNCTION_33();
  _s38IndividualItemBasedAccessibilityActionVMa(v17, v27, v2, v18);
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CE30, &unk_21796F470);
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_217967CAC();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  _s20FailureAlertModifierVMa(255);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8C400, &unk_21796F480);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  sub_2179669FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_8();
  sub_2178FE970(v19, v20, &unk_217971360);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_4();
  sub_2178FE83C(v21, &qword_27CB8C400, &unk_21796F480, v22);
  OUTLINED_FUNCTION_10_7();
  swift_getWitnessTable();
  sub_2178FE83C(&qword_27CB8ADF8, &qword_27CB8ADF0, &qword_21796B500, v26);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_7();
  sub_2178FE970(v23, v24, MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  sub_21796688C();
  OUTLINED_FUNCTION_22_2();
  sub_21796698C();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_9();
  sub_217966F9C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_2178514B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2178FEEDC(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_217851510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217968A2C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 40) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2178515C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217968A2C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21785166C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (_s14AlbumTrackCellVMa(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));
  sub_217968A2C();
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v6);
  v8 = v6 + v5[11];

  sub_2178643E0(*(v8 + 24));

  return swift_deallocObject();
}

uint64_t sub_21785178C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_217968A2C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D190, &qword_21796FB20);
  OUTLINED_FUNCTION_4_12();
  v7 = sub_2179027DC(v5, v6, &unk_217971754);
  OUTLINED_FUNCTION_2_5();
  v17 = v3;
  v18 = v1;
  v19 = v4;
  v20 = v7;
  v21 = v2;
  v22 = sub_2178FE83C(v8, &qword_27CB8D190, &qword_21796FB20, v9);
  v10 = _s9HItemCellVMa(255, &v17);
  v11 = sub_217966FAC();
  OUTLINED_FUNCTION_5_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  v15 = sub_2179027DC(v13, v14, MEMORY[0x277CDDFA8]);
  v17 = v10;
  v18 = v11;
  v19 = WitnessTable;
  v20 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  v17 = v10;
  v18 = v11;
  v19 = WitnessTable;
  v20 = v15;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217851A64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_217851A9C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_137();

  return swift_deallocObject();
}

uint64_t sub_217851AD8()
{
  v1 = *(_s23PlaylistDetailViewModelC12LoadingStateOMa(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
    OUTLINED_FUNCTION_4_1();
    (*(v5 + 8))(v0 + v2 + v4);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_217851C00@<X0>(uint64_t a1@<X8>)
{
  result = sub_217903B40();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_217851C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21796821C();
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217851CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21796821C();
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217851D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(_s11ArtworkViewVMa(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_217851EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = OUTLINED_FUNCTION_48_0();
  _s11ArtworkViewVMa(v2, v3, v1, v4);
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  v5 = OUTLINED_FUNCTION_48_0();
  _s9CellTitleVMa(v5, v6, v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
  v8 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v8);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_217967B7C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  v9 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v9);
  OUTLINED_FUNCTION_8();
  v10 = sub_217967E9C();
  OUTLINED_FUNCTION_30(v10, v11, v12);
  OUTLINED_FUNCTION_9();
  v13 = sub_217967CDC();
  OUTLINED_FUNCTION_7_11(v13, v14, v15);
  sub_21796688C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_2179669FC();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_1();
  sub_217864B2C(v16, &qword_27CB8ADF0, &qword_21796B500, v17);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_16();
  sub_217910E88(v18, v19, MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  sub_217966FAC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_14();
  sub_217910E88(v20, v21, MEMORY[0x277CDDFA8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2178521C0()
{

  return swift_deallocObject();
}

uint64_t sub_2178521FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v526 = *a1;
  v543 = a1[1];
  v4 = _s34NavigationDestinationsViewModifierVMa(255, *a1, v543, a4);
  OUTLINED_FUNCTION_58_3(v4, v5, v6);
  OUTLINED_FUNCTION_12();
  v407 = sub_2179670BC();
  v462 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0C0, &unk_2179705C0);
  v7 = OUTLINED_FUNCTION_61_2();
  _s15AlbumDetailViewVMa(v7, v8, v9, v10);
  sub_21796698C();
  v11 = OUTLINED_FUNCTION_61_2();
  _s16ArtistDetailViewVMa(v11, v12, v13, v14);
  sub_21796698C();
  sub_217966F9C();
  v15 = OUTLINED_FUNCTION_61_2();
  _s18PlaylistDetailViewVMa(v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_61_2();
  _s24PlaylistFolderDetailViewVMa(v19, v20, v21, v22);
  sub_217966F9C();
  v493 = sub_217966F9C();
  v444 = sub_217966F9C();
  OUTLINED_FUNCTION_45_2();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_44_2();
  v509 = v23;
  v388 = sub_217864B2C(v24, &qword_27CB8B0C0, &unk_2179705C0, v25);
  OUTLINED_FUNCTION_3_15();
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x277CE0790];
  v736 = v26;
  v737 = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_56_4();
  v477 = v28;
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_10();
  v734 = swift_getWitnessTable();
  v735 = v27;
  v732 = v29;
  v733 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_17();
  v31 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_15();
  v730 = v31;
  v731 = swift_getWitnessTable();
  v728 = v30;
  v729 = swift_getWitnessTable();
  v726 = swift_getWitnessTable();
  v727 = MEMORY[0x277CE1410];
  v32 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AF58, &qword_21796B660);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v509;
  v36 = sub_217864B2C(&qword_27CB8AF70, &qword_27CB8AF58, &qword_21796B660, v509);
  OUTLINED_FUNCTION_29_4();
  v37 = swift_getOpaqueTypeMetadata2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D820, &qword_2179705D0);
  v722 = v444;
  OUTLINED_FUNCTION_43_2(v38, v39, v40, v41, v42, v43, v44, v45, v261, v278, v295, v313, v331, v350, v369, v388, v407, WitnessTable, v444, v462, v477, v493, v509, v526, v543, v560, v576, v592, v608, v624, v640, v656, v672, v688, v704, OpaqueTypeMetadata2);
  v46 = sub_217864B2C(&qword_27CB8D828, &qword_27CB8D820, &qword_2179705D0, v35);
  LOBYTE(OpaqueTypeConformance2) = OUTLINED_FUNCTION_13_9(v46, v47, v48, v49, v50, v51, v52, v53, v262, v279, v296, v314, v332, v351, v370, v389, v408, v427, v445, v463, v478, v494, v510, v527, v544, v561, v577, v593, v609, v625, v641, v657, v673, v689, v705, v37, v38, v722, OpaqueTypeConformance2, v36, v32);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D830, &qword_2179705D8);
  OUTLINED_FUNCTION_25_4(v54, v55, v56, v57, v58, v59, v60, v61, v263, v280, v297, v315, v333, v352, v371, v390, v409, v428, v446, v464, v479, v495, v511, v528, v545, v562, v578, v594, v610, v626, v642, v658, v674, v690, v706, v37, v38, v722, v723, v724, v725);
  v62 = v512;
  v63 = sub_217864B2C(&qword_27CB8D838, &qword_27CB8D830, &qword_2179705D8, v512);
  v64 = OpaqueTypeConformance2;
  LOBYTE(OpaqueTypeConformance2) = OUTLINED_FUNCTION_13_9(v63, v65, v66, v67, v68, v69, v70, v71, v264, v281, v298, v316, v334, v353, v372, v391, v410, v429, v447, v465, v480, v496, v512, v529, v546, v563, v579, v595, v611, v627, v643, v659, v675, v691, v707, OpaqueTypeConformance2, v54, v722, v723, v724, v725);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D840, &qword_2179705E0);
  OUTLINED_FUNCTION_25_4(v72, v73, v74, v75, v76, v77, v78, v79, v265, v282, v299, v317, v335, v354, v373, v392, v411, v430, v448, v466, v481, v497, v513, v530, v547, v564, v580, v596, v612, v628, v644, v660, v676, v692, v708, v64, v54, v722, v723, v724, v725);
  v80 = sub_217864B2C(&qword_27CB8D848, &qword_27CB8D840, &qword_2179705E0, v62);
  LOBYTE(v62) = OUTLINED_FUNCTION_13_9(v80, v81, v82, v83, v84, v85, v86, v87, v266, v283, v300, v318, v336, v355, v374, v393, v412, v431, v449, v467, v482, v498, v514, v531, v548, v565, v581, v597, v613, v629, v645, v661, v677, v693, v709, OpaqueTypeConformance2, v72, v722, v723, v724, v725);
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D850, &qword_2179705E8);
  OUTLINED_FUNCTION_25_4(v88, v89, v90, v91, v92, v93, v94, v95, v267, v284, v301, v319, v337, v356, v375, v394, v413, v432, v450, v468, v483, v499, v515, v532, v549, v566, v582, v598, v614, v630, v646, v662, v678, v694, v710, OpaqueTypeConformance2, v72, v722, v723, v724, v725);
  v96 = v516;
  v97 = sub_217864B2C(&qword_27CB8D858, &qword_27CB8D850, &qword_2179705E8, v516);
  LOBYTE(v54) = OUTLINED_FUNCTION_13_9(v97, v98, v99, v100, v101, v102, v103, v104, v268, v285, v302, v320, v338, v357, v376, v395, v414, v433, v451, v469, v484, v500, v516, v533, v550, v567, v583, v599, v615, v631, v647, v663, v679, v695, v711, v62, v88, v722, v723, v724, v725);
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D860, &qword_2179705F0);
  OUTLINED_FUNCTION_25_4(v105, v106, v107, v108, v109, v110, v111, v112, v269, v286, v303, v321, v339, v358, v377, v396, v415, v434, v452, v470, v485, v501, v517, v534, v551, v568, v584, v600, v616, v632, v648, v664, v680, v696, v712, v62, v88, v722, v723, v724, v725);
  v113 = sub_217864B2C(&qword_27CB8D868, &qword_27CB8D860, &qword_2179705F0, v96);
  LOBYTE(v62) = OUTLINED_FUNCTION_13_9(v113, v114, v115, v116, v117, v118, v119, v120, v270, v287, v304, v322, v340, v359, v378, v397, v416, v435, v453, v471, v486, v502, v518, v535, v552, v569, v585, v601, v617, v633, v649, v665, v681, v697, v713, v54, v105, v722, v723, v724, v725);
  v121 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D870, &qword_2179705F8);
  OUTLINED_FUNCTION_25_4(v121, v122, v123, v124, v125, v126, v127, v128, v271, v288, v305, v323, v341, v360, v379, v398, v417, v436, v454, v472, v487, v503, v519, v536, v553, v570, v586, v602, v618, v634, v650, v666, v682, v698, v714, v54, v105, v722, v723, v724, v725);
  v129 = sub_217864B2C(&qword_27CB8D878, &qword_27CB8D870, &qword_2179705F8, v96);
  LOBYTE(v36) = OUTLINED_FUNCTION_13_9(v129, v130, v131, v132, v133, v134, v135, v136, v272, v289, v306, v324, v342, v361, v380, v399, v418, v437, v455, v473, v488, v504, v520, v537, v554, v571, v587, v603, v619, v635, v651, v667, v683, v699, v715, v62, v121, v722, v723, v724, v725);
  v137 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D880, &qword_217970600);
  OUTLINED_FUNCTION_43_2(v137, v138, v139, v140, v141, v142, v143, v144, v273, v290, v307, v325, v343, v362, v381, v400, v419, v438, v456, v137, v489, v505, v521, v538, v555, v572, v588, v604, v620, v636, v652, v668, v684, v700, v716, v62);
  v145 = sub_217864B2C(&qword_27CB8D888, &qword_27CB8D880, &qword_217970600, v522);
  v440 = OUTLINED_FUNCTION_24_7(v145, v146, v147, v148, v149, v150, v151, v152, v274, v291, v308, v326, v344, v363, v382, v401, v420, v439, v457, v474, v490, v506, v522, v539, v556, v573, v589, v605, v621, v637, v653, v669, v685, v701, v717, v36);
  v383 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D890, &qword_217970608);
  v402 = sub_2179688CC();
  OUTLINED_FUNCTION_52_3();
  v421 = sub_217916A20(v153, v154, &unk_217971AF0);
  v155 = OUTLINED_FUNCTION_29_4();
  v157 = _s21AdditionalContentViewVMa(v155, v156);
  OUTLINED_FUNCTION_43_2(v157, v158, v159, v160, v161, v162, v163, v164, v275, v292, v309, v327, v345, v364, v383, v402, v421, v440, v458, v475, v491, v507, v523, v540, v557, v574, v590, v606, v622, v638, v654, v670, v686, v702, v718, v36);
  sub_217864B2C(&qword_27CB8D898, &qword_27CB8D890, &qword_217970608, &unk_21796B2B8);
  OUTLINED_FUNCTION_15_6();
  v524 = v165;
  v166 = swift_getWitnessTable();
  v460 = OUTLINED_FUNCTION_24_7(v166, v167, v168, v169, v170, v171, v172, v173, v276, v293, v310, v328, v346, v365, v384, v403, v422, v441, v459, &unk_21796B2B8, v492, v508, v524, v541, v558, v575, v591, v607, v623, v639, v655, v671, v687, v703, v719, v441);
  v366 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8A0, &qword_217970610);
  sub_217968A2C();
  OUTLINED_FUNCTION_50_3();
  sub_217916A20(v174, v175, &unk_217971754);
  v176 = OUTLINED_FUNCTION_29_4();
  v178 = _s21AdditionalContentViewVMa(v176, v177);
  v179 = swift_getOpaqueTypeConformance2();
  v180 = sub_217864B2C(&qword_27CB8D8A8, &qword_27CB8D8A0, &qword_217970610, v476);
  v181 = swift_getWitnessTable();
  OUTLINED_FUNCTION_29_4();
  v329 = swift_getOpaqueTypeMetadata2();
  v442 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8B0, &qword_217970618);
  sub_217968E3C();
  OUTLINED_FUNCTION_49_3();
  sub_217916A20(v182, v183, &unk_21797178C);
  v184 = OUTLINED_FUNCTION_29_4();
  v186 = _s21AdditionalContentViewVMa(v184, v185);
  v720 = v460;
  v721 = v366;
  v722 = v178;
  v723 = v179;
  v724 = v180;
  v725 = v181;
  v187 = OUTLINED_FUNCTION_95_1(&v720);
  v188 = sub_217864B2C(&qword_27CB8D8B8, &qword_27CB8D8B0, &qword_217970618, v476);
  v189 = swift_getWitnessTable();
  v720 = v329;
  v721 = v442;
  v722 = v186;
  v723 = v187;
  v724 = v188;
  v725 = v189;
  OUTLINED_FUNCTION_29_4();
  v461 = swift_getOpaqueTypeMetadata2();
  v347 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8C0, &qword_217970620);
  v367 = sub_2179689AC();
  OUTLINED_FUNCTION_47_3();
  v385 = sub_217916A20(v190, v191, &unk_217971698);
  v720 = v367;
  v721 = v542;
  v722 = v385;
  v723 = v559;
  v192 = OUTLINED_FUNCTION_29_4();
  v194 = _s21AdditionalContentViewVMa(v192, v193);
  v720 = v329;
  v721 = v442;
  v722 = v186;
  v723 = v187;
  v724 = v188;
  v725 = v189;
  v195 = swift_getOpaqueTypeConformance2();
  v196 = sub_217864B2C(&qword_27CB8D8C8, &qword_27CB8D8C0, &qword_217970620, v476);
  OUTLINED_FUNCTION_65_4();
  v197 = swift_getWitnessTable();
  v720 = v461;
  v721 = v347;
  v722 = v194;
  v723 = v195;
  v724 = v196;
  v725 = v197;
  OUTLINED_FUNCTION_29_4();
  v198 = swift_getOpaqueTypeMetadata2();
  v311 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8D0, &qword_217970628);
  v443 = sub_217968AFC();
  OUTLINED_FUNCTION_55_3();
  v201 = sub_217916A20(v199, v200, &unk_2179717C8);
  v720 = v443;
  v721 = v542;
  v722 = v201;
  v723 = v559;
  v202 = OUTLINED_FUNCTION_29_4();
  v204 = _s21AdditionalContentViewVMa(v202, v203);
  v720 = v461;
  v721 = v347;
  v722 = v194;
  v723 = v195;
  v724 = v196;
  v725 = v197;
  v205 = swift_getOpaqueTypeConformance2();
  v206 = sub_217864B2C(&qword_27CB8D8D8, &qword_27CB8D8D0, &qword_217970628, v476);
  v207 = swift_getWitnessTable();
  v720 = v198;
  v721 = v311;
  v722 = v204;
  v723 = v205;
  v724 = v206;
  v725 = v207;
  OUTLINED_FUNCTION_29_4();
  v348 = swift_getOpaqueTypeMetadata2();
  v330 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8E0, &qword_217970630);
  v720 = v443;
  v721 = v542;
  v722 = MEMORY[0x277CD8408];
  v723 = v201;
  v724 = v559;
  v208 = OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa(v208, v209);
  sub_21796732C();
  v210 = sub_21796698C();
  v720 = v198;
  v721 = v311;
  v722 = v204;
  v723 = v205;
  v724 = v206;
  v725 = v207;
  v211 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_53_2();
  v525 = v212;
  v277 = sub_217864B2C(v213, &qword_27CB8D8E0, &qword_217970630, v214);
  OUTLINED_FUNCTION_17_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_5();
  sub_217916A20(v215, v216, MEMORY[0x277CDE458]);
  v217 = swift_getWitnessTable();
  v720 = v348;
  v721 = v330;
  v722 = v210;
  v723 = v211;
  v724 = v277;
  v725 = v217;
  OUTLINED_FUNCTION_29_4();
  v312 = swift_getOpaqueTypeMetadata2();
  v294 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8F0, &qword_217970638);
  v720 = v367;
  v721 = v542;
  v722 = MEMORY[0x277CD82A8];
  v723 = v385;
  v724 = v559;
  v218 = OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa(v218, v219);
  OUTLINED_FUNCTION_12();
  v220 = sub_21796698C();
  v720 = v348;
  v721 = v330;
  v722 = v210;
  v723 = v211;
  v724 = v277;
  v725 = v217;
  v221 = swift_getOpaqueTypeConformance2();
  v222 = sub_217864B2C(&qword_27CB8D8F8, &qword_27CB8D8F0, &qword_217970638, v525);
  swift_getWitnessTable();
  v223 = v220;
  v386 = v220;
  v224 = swift_getWitnessTable();
  v720 = v312;
  v721 = v294;
  v722 = v223;
  v723 = v221;
  v724 = v222;
  v725 = v224;
  v225 = OUTLINED_FUNCTION_29_4();
  v349 = OUTLINED_FUNCTION_76_2(v225, v226);
  v368 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D900, &qword_217970640);
  v720 = v404;
  v721 = v542;
  v722 = MEMORY[0x277CD8200];
  v723 = v423;
  v724 = v559;
  v227 = OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa(v227, v228);
  OUTLINED_FUNCTION_12();
  v229 = sub_21796698C();
  v720 = v312;
  v721 = v294;
  v722 = v386;
  v723 = v221;
  v724 = v222;
  v725 = v224;
  v405 = swift_getOpaqueTypeConformance2();
  v230 = sub_217864B2C(&qword_27CB8D908, &qword_27CB8D900, &qword_217970640, v525);
  swift_getWitnessTable();
  v231 = v229;
  v424 = v229;
  v232 = swift_getWitnessTable();
  v720 = v349;
  v721 = v368;
  v722 = v231;
  v723 = v405;
  v724 = v230;
  v725 = v232;
  v233 = OUTLINED_FUNCTION_29_4();
  v235 = OUTLINED_FUNCTION_76_2(v233, v234);
  v387 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D910, &qword_217970648);
  v236 = sub_21796591C();
  v237 = MEMORY[0x277D2A350];
  v238 = sub_217916A20(&qword_27CB8BFA8, MEMORY[0x277D2A350], MEMORY[0x277D2A340]);
  OUTLINED_FUNCTION_5_2();
  v241 = sub_217916A20(v239, v237, v240);
  v720 = v236;
  v721 = v542;
  v722 = v238;
  v723 = v241;
  v724 = v559;
  v242 = OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa(v242, v243);
  OUTLINED_FUNCTION_27_4();
  v244 = sub_21796698C();
  v720 = v349;
  v721 = v368;
  v722 = v424;
  v723 = v405;
  v724 = v230;
  v725 = v232;
  v245 = swift_getOpaqueTypeConformance2();
  v246 = sub_217864B2C(&qword_27CB8D918, &qword_27CB8D910, &qword_217970648, v525);
  swift_getWitnessTable();
  v247 = swift_getWitnessTable();
  v720 = v235;
  v721 = v387;
  v722 = v244;
  v723 = v245;
  v724 = v246;
  v725 = v247;
  OUTLINED_FUNCTION_29_4();
  v425 = swift_getOpaqueTypeMetadata2();
  v406 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D920, &qword_217970650);
  v248 = sub_217968CFC();
  v249 = MEMORY[0x277D2B358];
  v250 = sub_217916A20(&qword_27CB8BF98, MEMORY[0x277D2B358], MEMORY[0x277D2B340]);
  OUTLINED_FUNCTION_7_3();
  v253 = sub_217916A20(v251, v249, v252);
  v720 = v248;
  v721 = v542;
  v722 = v250;
  v723 = v253;
  v724 = v559;
  v254 = OUTLINED_FUNCTION_29_4();
  _s25LibrarySectionContentViewVMa(v254, v255);
  OUTLINED_FUNCTION_27_4();
  v256 = sub_21796698C();
  v720 = v235;
  v721 = v387;
  v722 = v244;
  v723 = v245;
  v724 = v246;
  v725 = v247;
  v257 = OUTLINED_FUNCTION_95_1(&v720);
  v258 = sub_217864B2C(&qword_27CB8D928, &qword_27CB8D920, &qword_217970650, v525);
  swift_getWitnessTable();
  v259 = swift_getWitnessTable();
  v720 = v425;
  v721 = v406;
  v722 = v256;
  v723 = v257;
  v724 = v258;
  v725 = v259;
  return OUTLINED_FUNCTION_95_1(&v720);
}

uint64_t sub_2178532B0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *a1;
  v26 = a1[1];
  _s11ArtworkViewVMa(255, *a1, *(a1 + 2), a4);
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796732C();
  v4 = sub_21796698C();
  OUTLINED_FUNCTION_3_17();
  WitnessTable = swift_getWitnessTable();
  v38 = MEMORY[0x277CDF690];
  v5 = swift_getWitnessTable();
  v6 = MEMORY[0x277CDF918];
  v35 = v5;
  v36 = MEMORY[0x277CDF918];
  v33 = swift_getWitnessTable();
  v34 = v6;
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_4();
  v31 = v7;
  v32 = sub_2178B423C(v8, v9, MEMORY[0x277CDE458]);
  v27 = v25;
  v28 = v4;
  v29 = v26;
  v30 = swift_getWitnessTable();
  v10 = _s9HItemCellVMa(255, &v27);
  v13 = OUTLINED_FUNCTION_5_11(v10, v11, v12);
  *&v27 = v10;
  *(&v27 + 1) = v13;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  v14 = sub_21796698C();
  *&v27 = v10;
  *(&v27 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x277D83B88];
  *&v27 = v14;
  *(&v27 + 1) = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83BA8];
  v28 = v15;
  *&v29 = MEMORY[0x277D83BA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = sub_217966FAC();
  *&v27 = v14;
  *(&v27 + 1) = v16;
  v28 = v15;
  *&v29 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_20();
  v23 = sub_2178B423C(v21, v22, MEMORY[0x277CDDFA8]);
  *&v27 = OpaqueTypeMetadata2;
  *(&v27 + 1) = v19;
  v28 = OpaqueTypeConformance2;
  *&v29 = v23;
  OUTLINED_FUNCTION_4_14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2178535D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_11_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v5 = OUTLINED_FUNCTION_15_8(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_217853654()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
    v5 = OUTLINED_FUNCTION_15_8(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2178536D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_11_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  v5 = OUTLINED_FUNCTION_15_8(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_217853750()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
    v5 = OUTLINED_FUNCTION_15_8(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2178537CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217853860(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217853950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21796810C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8DB98, &qword_217970CE0);
      v10 = *(a3 + 84);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_217853A34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_21796810C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8DB98, &qword_217970CE0);
      v10 = *(a4 + 84);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_217853B20(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD30, &qword_217970EE8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  _s12ItemShelfRowVMa(255, &v17);
  v5 = sub_21796698C();
  v6 = sub_217926268();
  *&v17 = v3;
  *(&v17 + 1) = MEMORY[0x277D83B88];
  *&v18 = v5;
  *(&v18 + 1) = v6;
  v19 = MEMORY[0x277D83B98];
  sub_217967D9C();
  OUTLINED_FUNCTION_11_11();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  v7 = sub_21796698C();
  OUTLINED_FUNCTION_14_6(v7, v8, v9);
  OUTLINED_FUNCTION_16_8(&qword_27CB8BB00);
  WitnessTable = swift_getWitnessTable();
  *&v17 = v1;
  *(&v17 + 1) = WitnessTable;
  OUTLINED_FUNCTION_7_13();
  swift_getOpaqueTypeMetadata2();
  *&v17 = v1;
  *(&v17 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_36();
  v11 = sub_21796698C();
  v12 = sub_21796736C();
  OUTLINED_FUNCTION_15_9(v12, v13, v14);
  v15 = swift_getWitnessTable();
  *&v17 = v11;
  *(&v17 + 1) = &qword_27CB8BB08;
  *&v18 = v15;
  *(&v18 + 1) = MEMORY[0x277CDE478];
  OUTLINED_FUNCTION_5_12();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD50, &qword_217970EF8);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796717C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_36();
  sub_21796944C();
  OUTLINED_FUNCTION_7_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  return swift_getWitnessTable();
}

uint64_t sub_217853E84()
{

  sub_2178643E0(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_217853EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_21796810C();
    v8 = sub_217967C4C();
    v9 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217853F64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_21796810C();
    v7 = sub_217967C4C();
    v8 = v5 + *(a4 + 72);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217854000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *(v9 + 16);
  OUTLINED_FUNCTION_29_5(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_13();
  v12 = *(v11 + 64);
  v13 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = v9 + v13;

  sub_2178643E0(*(v9 + v13 + 48));

  if (*(v9 + v13 + 120))
  {
    if (*(v17 + 104))
    {
      __swift_destroy_boxed_opaque_existential_1((v17 + 80));
    }
  }

  else
  {
  }

  v18 = (v13 + v12 + v16) & ~v16;
  v19 = v17 + *(v8 + 72);
  v20 = sub_21796810C();
  OUTLINED_FUNCTION_3();
  (*(v21 + 8))(v19, v20);
  sub_217967C4C();

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_15_10();
  sub_2178643E0(*(v8 + 24));
  (*(v15 + 8))(v9 + v18, v23);
  return swift_deallocObject();
}

uint64_t sub_2178541E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *(v9 + 32);
  v25 = *(v9 + 48);
  OUTLINED_FUNCTION_29_5(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_13();
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  swift_unknownObjectRelease();
  v13 = v9 + v12;

  sub_2178643E0(*(v9 + v12 + 48));

  if (*(v9 + v12 + 120))
  {
    if (*(v13 + 104))
    {
      v14 = __swift_destroy_boxed_opaque_existential_1((v13 + 80));
    }
  }

  else
  {
  }

  v22 = OUTLINED_FUNCTION_16_9(v14, v15, v16, v17, v18, v19, v20, v21, v25, *(&v25 + 1), v26);
  OUTLINED_FUNCTION_3();
  (*(v23 + 8))(v10, v22);
  sub_217967C4C();

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_15_10();
  sub_2178643E0(*(v8 + 24));
  return swift_deallocObject();
}

uint64_t sub_217854334(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v66 = v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v79 = v2;
  v80 = v1;
  v81 = v3;
  v82 = v4;
  v7 = _s13ItemShelfCellVMa(255, &v79);
  v10 = OUTLINED_FUNCTION_13_11(v7, v8, v9);
  v79 = v1;
  v80 = v10;
  swift_getOpaqueTypeMetadata2();
  v11 = sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217966DCC();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v12 = sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = v5;
  v80 = AssociatedTypeWitness;
  v81 = v12;
  v82 = WitnessTable;
  v83 = AssociatedConformanceWitness;
  sub_217967D9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v15 = sub_21796665C();
  OUTLINED_FUNCTION_18_0();
  v16 = swift_getWitnessTable();
  v79 = v15;
  v80 = v16;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  v17 = sub_21796698C();
  v79 = v15;
  v80 = v16;
  OUTLINED_FUNCTION_23_6(v17, v18, v19, v20, v21, v22, v23, v24, v58, v61, v11, v66, v69, v72, v75);
  OUTLINED_FUNCTION_4_16();
  v62 = sub_21792C55C(v25, v26, MEMORY[0x277CDE458]);
  v59 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_12_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v27 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  v28 = swift_getWitnessTable();
  v31 = sub_217873C34(v28, v29, v30);
  v79 = v27;
  v80 = MEMORY[0x277D837D0];
  v81 = v28;
  v82 = v31;
  swift_getOpaqueTypeMetadata2();
  _s18NavigationBarStyleVMa(255, v67, v4, v32);
  v33 = sub_21796698C();
  done = _s15DoneToolbarItemVMa(255, v67, v4, v34);
  OUTLINED_FUNCTION_16();
  v36 = swift_getWitnessTable();
  v79 = done;
  v80 = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = v27;
  v80 = MEMORY[0x277D837D0];
  v81 = v28;
  v82 = v31;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v79 = done;
  v80 = v36;
  v46 = OUTLINED_FUNCTION_23_6(v38, v39, v40, v41, v42, v43, v44, v45, v59, v62, v64, v67, v70, v73, v76);
  v79 = v33;
  v80 = OpaqueTypeMetadata2;
  v81 = v38;
  v82 = v46;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  v47 = sub_21796698C();
  v79 = v33;
  v80 = OpaqueTypeMetadata2;
  v81 = v38;
  v82 = v46;
  v78 = OUTLINED_FUNCTION_23_6(v47, v48, v49, v50, v51, v52, v53, v54, v60, v63, v65, v68, v71, v74, v77);
  sub_217864644(v78, v55, v56);
  OUTLINED_FUNCTION_27_5();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217854800@<X0>(uint64_t *a1@<X8>)
{
  result = MusicLibraryPlaylistViewModel.rawCoverArtworkRecipe.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217854830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s18NavigationBarStyleVMa(255, *(v4 + 16), *(v4 + 24), a4);
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  v5 = sub_2179670BC();
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_2178548F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s18NavigationBarStyleVMa(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  sub_2179670BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E030, &qword_217971330);
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_217967E0C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_19();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21792EBC8(OpaqueTypeConformance2, v5, v6);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_21796686C();
  OUTLINED_FUNCTION_19();
  return swift_getWitnessTable();
}

uint64_t sub_217854B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_217854C30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217854CE4()
{
  _s20FailureAlertModifierVMa(0);
  OUTLINED_FUNCTION_13();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960) + 32);
  v6 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_52_0(v6))
  {

    v7 = v5 + *(v1 + 24);
    v8 = _s5AlertV7ControlVMa(0);
    if (!OUTLINED_FUNCTION_55_0(v8))
    {

      v9 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_4_17(v9))
      {
        OUTLINED_FUNCTION_10();
        (*(v10 + 8))(v7 + v11);
      }
    }

    if (!OUTLINED_FUNCTION_3_20())
    {

      v12 = *(v2 + 20);
      v13 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_8_12(v13))
      {
        OUTLINED_FUNCTION_10();
        (*(v14 + 8))(v5 + v12, v1);
      }
    }
  }

  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_217854EA4()
{
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0C0, &qword_2179713F8);
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_63_0();
  v2(v1);
  return v0;
}

uint64_t sub_217854F04()
{
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0B8, &qword_2179713E8);
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_63_0();
  v2(v1);
  return v0;
}

uint64_t sub_217854F68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E060, &qword_2179713B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A578, &qword_21796A750);
  sub_217930670();
  sub_217930878();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217855020()
{
  sub_217968A2C();
  v0 = OUTLINED_FUNCTION_3_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_217855080()
{
  sub_21796870C();
  v0 = OUTLINED_FUNCTION_3_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2178550F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s38IndividualItemBasedAccessibilityActionVMa(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_14_7(v4, v5, v6);
  OUTLINED_FUNCTION_4();
  sub_2179670BC();
  sub_21796732C();
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_5();
  sub_21793F4A4(v7, v8, MEMORY[0x277CDE458]);
  OUTLINED_FUNCTION_1();
  return swift_getWitnessTable();
}

uint64_t sub_21785518C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s38IndividualItemBasedAccessibilityActionVMa(255, *a1, a1[2], a4);
  OUTLINED_FUNCTION_14_7(v4, v5, v6);
  OUTLINED_FUNCTION_4();
  sub_2179670BC();
  sub_21796732C();
  OUTLINED_FUNCTION_4();
  sub_21796698C();
  sub_217966F9C();
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_5();
  sub_21793F4A4(v7, v8, MEMORY[0x277CDE458]);
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21785526C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s38IndividualItemBasedAccessibilityActionVMa(255, *a1, *(a1[1] + 8), a4);
  OUTLINED_FUNCTION_14_7(v4, v5, v6);
  OUTLINED_FUNCTION_4();
  sub_2179670BC();
  OUTLINED_FUNCTION_45_2();

  return swift_getWitnessTable();
}

uint64_t sub_2178552BC()
{

  return swift_deallocObject();
}

uint64_t sub_217855384()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v2 = (_s16SearchResultCellVMa(0, v7) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v3);
  v5 = v3 + v2[15];

  sub_2178643E0(*(v5 + 24));

  return swift_deallocObject();
}

uint64_t sub_217855494(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *a1;
  v20 = a1[1];
  _s11ArtworkViewVMa(255, *a1, *(a1 + 2), a4);
  sub_21796698C();
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  v4 = sub_21796944C();
  OUTLINED_FUNCTION_3_17();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277CDF918];
  v30 = WitnessTable;
  v31 = MEMORY[0x277CDF918];
  v28 = swift_getWitnessTable();
  v29 = v6;
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_23();
  v26 = v7;
  v27 = sub_2179425A4(v8, v9, MEMORY[0x277CDE458]);
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  v21 = v19;
  v22 = v4;
  v23 = v20;
  v24 = swift_getWitnessTable();
  v10 = _s9HItemCellVMa(255, &v21);
  OUTLINED_FUNCTION_5_5();
  v11 = swift_getWitnessTable();
  *&v21 = v10;
  *(&v21 + 1) = v11;
  swift_getOpaqueTypeMetadata2();
  v12 = sub_21796698C();
  v13 = sub_217966FAC();
  *&v21 = v10;
  *(&v21 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  v14 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_24();
  v17 = sub_2179425A4(v15, v16, MEMORY[0x277CDDFA8]);
  *&v21 = v12;
  *(&v21 + 1) = v13;
  v22 = v14;
  *&v23 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  *&v21 = v12;
  *(&v21 + 1) = v13;
  v22 = v14;
  *&v23 = v17;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_217855770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21796821C();
    v9 = a1 + *(a3 + 92);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217855800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_21796821C();
    v8 = v5 + *(a4 + 92);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21785588C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECF8, &qword_217972160);
  OUTLINED_FUNCTION_3();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_217855AB0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EE30, &unk_2179728A0);
  sub_21796698C();
  sub_217864B2C(&qword_27CB8EE38, &qword_27CB8EE30, &unk_2179728A0, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_217855B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217855BF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217855D04()
{

  sub_2178643E0(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_217855D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21796821C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 72);
    }

    else
    {
      OUTLINED_FUNCTION_36();
      sub_21796810C();
      OUTLINED_FUNCTION_8();
      sub_21796944C();
      OUTLINED_FUNCTION_95_0();
      v9 = sub_217967C4C();
      v10 = *(a3 + 88);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_217855E40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_21796821C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 72);
    }

    else
    {
      OUTLINED_FUNCTION_36();
      sub_21796810C();
      OUTLINED_FUNCTION_8();
      sub_21796944C();
      OUTLINED_FUNCTION_95_0();
      v9 = sub_217967C4C();
      v10 = *(a4 + 88);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_217855F40()
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 32);
  v23[0] = *(v1 + 16);
  v23[1] = v3;
  v24 = v2;
  _s25LibrarySectionContentViewVMa(0, v23);
  OUTLINED_FUNCTION_13();
  v22 = *(v5 + 64);
  v6 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = sub_21796810C();
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v10 = *(v8 + 80);
  v21 = v6;
  v11 = v1 + v6;

  sub_2178643E0(*(v1 + v6 + 64));
  v12 = v0[18];
  sub_21796821C();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v11 + v12);

  v14 = v11 + v0[20];
  if (*(v14 + 40))
  {
    if (*(v14 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  else
  {
  }

  if (!OUTLINED_FUNCTION_47_5(v0[22]))
  {
    v15 = OUTLINED_FUNCTION_153();
    v16(v15);
  }

  OUTLINED_FUNCTION_48_0();
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  sub_217967C4C();

  if (!OUTLINED_FUNCTION_47_5(v0[23]))
  {
    v17 = OUTLINED_FUNCTION_153();
    v18(v17);
  }

  sub_2178643E0(*(v11 + v0[24]));
  v19 = v11 + v0[25];

  sub_2178643E0(*(v19 + 24));

  (*(v9 + 8))(v1 + ((v21 + v22 + v10) & ~v10), v7);
  return swift_deallocObject();
}

uint64_t sub_2178561F4(uint64_t *a1)
{
  v102 = *a1;
  v111 = *(a1 + 3);
  v1 = sub_21796810C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = v102;
  v122 = v111;
  _s13ItemShelfCellVMa(255, &v121);
  v3 = MEMORY[0x277CDF928];
  v4 = sub_21796698C();
  OUTLINED_FUNCTION_46_4(v4);
  OUTLINED_FUNCTION_7_15();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277CDF918];
  v126 = WitnessTable;
  v127 = MEMORY[0x277CDF918];
  v97 = MEMORY[0x277CDFAD8];
  v124 = swift_getWitnessTable();
  v125 = v6;
  v7 = swift_getWitnessTable();
  *&v121 = v3;
  *(&v121 + 1) = v7;
  OUTLINED_FUNCTION_11_13();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v8 = sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  v9 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v121 = v1;
  *(&v121 + 1) = AssociatedTypeWitness;
  *&v122 = v8;
  *(&v122 + 1) = v9;
  v123 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796944C();
  OUTLINED_FUNCTION_6_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v11 = sub_21796665C();
  OUTLINED_FUNCTION_23_8(v11, v12, v13);
  OUTLINED_FUNCTION_9();
  v14 = sub_21796666C();
  OUTLINED_FUNCTION_22_6(v14, v15, v16);
  OUTLINED_FUNCTION_9();
  v17 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  v18 = swift_getWitnessTable();
  v21 = sub_217873C34(v18, v19, v20);
  *&v121 = v17;
  *(&v121 + 1) = MEMORY[0x277D837D0];
  *&v122 = v18;
  *(&v122 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_41_4();
  _s18NavigationBarStyleVMa(v22, v23, v24, v25);
  OUTLINED_FUNCTION_48_0();
  v26 = sub_21796698C();
  OUTLINED_FUNCTION_41_4();
  done = _s15DoneToolbarItemVMa(v27, v28, v29, v30);
  OUTLINED_FUNCTION_16();
  v32 = swift_getWitnessTable();
  *&v121 = done;
  *(&v121 + 1) = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v121 = v17;
  *(&v121 + 1) = MEMORY[0x277D837D0];
  *&v122 = v18;
  *(&v122 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  *&v121 = done;
  *(&v121 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v121 = v26;
  *(&v121 + 1) = OpaqueTypeMetadata2;
  *&v122 = v34;
  *(&v122 + 1) = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeMetadata2();
  *&v121 = v26;
  *(&v121 + 1) = OpaqueTypeMetadata2;
  *&v122 = v34;
  *(&v122 + 1) = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  *&v121 = v36;
  v38 = MEMORY[0x277D837D0];
  *(&v121 + 1) = MEMORY[0x277D837D0];
  *&v122 = v37;
  *(&v122 + 1) = v21;
  v39 = swift_getOpaqueTypeMetadata2();
  *&v121 = v36;
  *(&v121 + 1) = v38;
  v40 = v38;
  *&v122 = v37;
  *(&v122 + 1) = v21;
  v41 = swift_getOpaqueTypeConformance2();
  *&v121 = v39;
  *(&v121 + 1) = v41;
  OUTLINED_FUNCTION_16_11();
  v42 = swift_getOpaqueTypeMetadata2();
  *&v121 = v39;
  *(&v121 + 1) = v41;
  v50 = OUTLINED_FUNCTION_28_5(v42, v43, v44, v45, v46, v47, v48, v49, v92, v97, v102, *(&v102 + 1), v111, *(&v111 + 1));
  *&v121 = v42;
  *(&v121 + 1) = v50;
  OUTLINED_FUNCTION_15_12();
  v51 = swift_getOpaqueTypeMetadata2();
  *&v121 = v42;
  *(&v121 + 1) = v50;
  v59 = OUTLINED_FUNCTION_28_5(v51, v52, v53, v54, v55, v56, v57, v58, v93, v98, v103, v107, v112, v116);
  *&v121 = v51;
  *(&v121 + 1) = v59;
  OUTLINED_FUNCTION_14_8();
  v60 = swift_getOpaqueTypeMetadata2();
  *&v121 = v51;
  *(&v121 + 1) = v59;
  v68 = OUTLINED_FUNCTION_28_5(v60, v61, v62, v63, v64, v65, v66, v67, v94, v99, v104, v108, v113, v117);
  *&v121 = v60;
  *(&v121 + 1) = v38;
  v69 = MEMORY[0x277D837F8];
  *&v122 = v68;
  *(&v122 + 1) = MEMORY[0x277D837F8];
  OUTLINED_FUNCTION_13_12();
  v70 = swift_getOpaqueTypeMetadata2();
  *&v121 = v60;
  *(&v121 + 1) = v40;
  *&v122 = v68;
  *(&v122 + 1) = v69;
  v78 = OUTLINED_FUNCTION_28_5(v70, v71, v72, v73, v74, v75, v76, v77, v95, v100, v105, v109, v114, v118);
  *&v121 = v70;
  *(&v121 + 1) = v78;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EFE0, &unk_217972DD0);
  OUTLINED_FUNCTION_9();
  v79 = sub_21796698C();
  *&v121 = v70;
  *(&v121 + 1) = v78;
  v120 = OUTLINED_FUNCTION_28_5(v79, v80, v81, v82, v83, v84, v85, v86, v96, v101, v106, v110, v115, v119);
  sub_217864644(v120, v87, v88);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_217864B2C(v89, &qword_27CB8EFE0, &unk_217972DD0, v90);
  return swift_getWitnessTable();
}

uint64_t sub_2178567B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21796810C();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217856848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21796810C();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2178568D4()
{
  v7 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v7;
  v1 = (_s12ItemShelfRowVMa(0, v8) - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));

  v3 = v1[15];
  sub_21796810C();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v2 + v3);

  v5 = v2 + v1[18];

  sub_2178643E0(*(v5 + 24));
  return swift_deallocObject();
}

uint64_t sub_217856A14(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  _s13ItemShelfCellVMa(255, &v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F0C0, &unk_217972EA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  v4 = sub_217967E9C();
  v5 = sub_217926268();
  *&v13 = v2;
  *(&v13 + 1) = MEMORY[0x277D83B88];
  *&v14 = v4;
  *(&v14 + 1) = v5;
  v15 = MEMORY[0x277D83B98];
  sub_217967D9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v6 = sub_217967CDC();
  v7 = sub_2179669FC();
  OUTLINED_FUNCTION_7_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_17();
  v11 = sub_217952480(v9, v10, MEMORY[0x277CDDB08]);
  *&v13 = v6;
  *(&v13 + 1) = v7;
  *&v14 = WitnessTable;
  *(&v14 + 1) = v11;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217856BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217856C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217856D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (_s11ColumnsViewVMa(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  v7 = v6 + v5[11];
  sub_217965A3C();
  OUTLINED_FUNCTION_3();
  (*(v8 + 8))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8);

  return swift_deallocObject();
}

uint64_t sub_217856E50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F180, &qword_217972F50);
  _s12SearchColumnVMa(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F178, &qword_217972F48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AFA8, &qword_21796B6C0);
  OUTLINED_FUNCTION_2_18();
  sub_217864B2C(v0, &qword_27CB8F178, &qword_217972F48, v1);
  OUTLINED_FUNCTION_4_21();
  sub_217864B2C(v2, &qword_27CB8AFA8, &qword_21796B6C0, v3);
  OUTLINED_FUNCTION_3_27();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_21();
  sub_217952E40(v4, v5, &unk_21796D658);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217856F94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217966B3C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_217856FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F1A0, &qword_217972FE8);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21785707C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F1A0, &qword_217972FE8);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21785710C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  _s17SearchResultsViewVMa(255, *a1, v5, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  _s15LandingPageViewVMa(255, v4, v5, v6);
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  sub_217966F9C();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_21795427C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_22();
  swift_getWitnessTable();
  sub_2178BD980();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2178572B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F238, &qword_217973060);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217857344(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F238, &qword_217973060);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2178573E8()
{

  return swift_deallocObject();
}

uint64_t sub_217857420(void *a1)
{
  sub_2179664CC();
  OUTLINED_FUNCTION_0_23();

  return swift_getWitnessTable();
}

uint64_t sub_217857458@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_217956F70(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_217857488()
{

  return swift_deallocObject();
}

uint64_t sub_2178574C0(void *a1)
{
  v1 = sub_21796698C();
  sub_2179579D0(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_217857528()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3D0, &qword_2179734D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3C8, &qword_2179734C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3E8, &qword_2179734E8);
  sub_217957B90();
  sub_217957D00();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_217957EA4(OpaqueTypeConformance2, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217857660()
{

  sub_2178643E0(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_2178576A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217968D2C();
  OUTLINED_FUNCTION_1_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
  OUTLINED_FUNCTION_1_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 48);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 52) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_21785779C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217968D2C();
  OUTLINED_FUNCTION_1_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
    OUTLINED_FUNCTION_1_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 52) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 48);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2178578A0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  OUTLINED_FUNCTION_33();
  v4 = sub_217968CFC();
  OUTLINED_FUNCTION_4_23();
  v114 = v4;
  v115 = v2;
  v116 = sub_21795F794(v5, v6, &unk_2179714C0);
  v117 = v3;
  _s13ItemShelfCellVMa(255, &v114);
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v7 = sub_217967E9C();
  OUTLINED_FUNCTION_24();
  v10 = sub_217864B2C(v8, &qword_27CB8CC80, &qword_21796F110, v9);
  v13 = sub_21786438C(v10, v11, v12);
  v114 = v1;
  v115 = MEMORY[0x277CD7E90];
  v116 = v7;
  v117 = v10;
  v118 = v13;
  sub_217967D9C();
  OUTLINED_FUNCTION_33();
  sub_21796944C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v14 = sub_21796665C();
  OUTLINED_FUNCTION_21_9(v14, v15, v16);
  OUTLINED_FUNCTION_9();
  v17 = sub_21796666C();
  OUTLINED_FUNCTION_28(v17, v18, v19);
  OUTLINED_FUNCTION_9();
  v20 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_217873C34(WitnessTable, v22, v23);
  v114 = v20;
  v115 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D837D0];
  v116 = WitnessTable;
  v117 = v24;
  swift_getOpaqueTypeMetadata2();
  _s18NavigationBarStyleVMa(255, v2, v3, v26);
  v27 = sub_21796698C();
  v114 = v20;
  v115 = v25;
  v116 = WitnessTable;
  v117 = v24;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v114 = v27;
  v115 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  done = _s15DoneToolbarItemVMa(255, v2, v3, v30);
  OUTLINED_FUNCTION_16();
  v32 = swift_getWitnessTable();
  v114 = done;
  v115 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v114 = v27;
  v115 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = done;
  v115 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  v115 = v33;
  v116 = OpaqueTypeConformance2;
  v117 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v114 = OpaqueTypeMetadata2;
  v115 = v33;
  v116 = OpaqueTypeConformance2;
  v117 = v35;
  v44 = OUTLINED_FUNCTION_22_7(v36, v37, v38, v39, v40, v41, v42, v43, v106);
  v114 = v36;
  v45 = MEMORY[0x277D837D0];
  v115 = MEMORY[0x277D837D0];
  v116 = v44;
  v117 = v24;
  v46 = swift_getOpaqueTypeMetadata2();
  v114 = v36;
  v115 = v45;
  v47 = v45;
  v116 = v44;
  v117 = v24;
  v55 = OUTLINED_FUNCTION_22_7(v46, v48, v49, v50, v51, v52, v53, v54, v107);
  v114 = v46;
  v115 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v114 = v46;
  v115 = v55;
  v64 = OUTLINED_FUNCTION_22_7(v56, v57, v58, v59, v60, v61, v62, v63, v108);
  v114 = v56;
  v115 = v64;
  v65 = swift_getOpaqueTypeMetadata2();
  v114 = v56;
  v115 = v64;
  v73 = OUTLINED_FUNCTION_22_7(v65, v66, v67, v68, v69, v70, v71, v72, v109);
  v114 = v65;
  v115 = v73;
  v74 = swift_getOpaqueTypeMetadata2();
  v114 = v65;
  v115 = v73;
  v82 = OUTLINED_FUNCTION_22_7(v74, v75, v76, v77, v78, v79, v80, v81, v110);
  v114 = v74;
  v115 = v45;
  v83 = MEMORY[0x277D837F8];
  v116 = v82;
  v117 = MEMORY[0x277D837F8];
  v84 = swift_getOpaqueTypeMetadata2();
  v114 = v74;
  v115 = v47;
  v116 = v82;
  v117 = v83;
  v92 = OUTLINED_FUNCTION_22_7(v84, v85, v86, v87, v88, v89, v90, v91, v111);
  v114 = v84;
  v115 = v92;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EFE0, &unk_217972DD0);
  OUTLINED_FUNCTION_9();
  v93 = sub_21796698C();
  v114 = v84;
  v115 = v92;
  v113 = OUTLINED_FUNCTION_22_7(v93, v94, v95, v96, v97, v98, v99, v100, v112);
  sub_217864644(v113, v101, v102);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_217864B2C(v103, &qword_27CB8EFE0, &unk_217972DD0, v104);
  return swift_getWitnessTable();
}

__n128 sub_217857E94(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_217857EA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s20DismissAlertModifierVMa(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_9_18();
  swift_getWitnessTable();
  sub_2179670BC();
  sub_21796919C();
  OUTLINED_FUNCTION_45_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_15();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_16();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A578, &qword_21796A750);
  swift_getOpaqueTypeConformance2();
  sub_217930878();
  swift_getOpaqueTypeMetadata2();
  _s20FailureAlertModifierVMa(255);
  sub_21796698C();
  sub_217966F9C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_27();
  sub_217961740(v4, v5, &unk_217971360);
  OUTLINED_FUNCTION_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20();
  return swift_getWitnessTable();
}

unint64_t sub_2178580FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v49) = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_48(v11);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v48 = *a2;
  v15 = a2[2];
  v50 = a2[1];
  v47 = v15;
  v16 = a2[3];
  v18 = _s15AlbumDetailViewVMa(0, a4, a5, v17);
  v19 = (a6 + v18[11]);
  _s9ViewModelCMa(0, a4, a5, v20);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  *v19 = sub_217966ACC();
  v19[1] = v21;
  v22 = a6 + v18[12];
  *v22 = swift_getKeyPath();
  *(v22 + 40) = 0;
  v23 = _s5AlertVMa(0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v23);
  sub_217858434(v14);
  v24 = (a6 + v18[14]);
  *v24 = sub_2178584F0(0, 0);
  v24[1] = v25;
  v24[2] = v26;
  v27 = a6 + v18[15];
  *v27 = sub_21785853C(1) & 1;
  *(v27 + 8) = v28;
  v29 = (a6 + v18[19]);
  *v29 = xmmword_21796A2F0;
  v29[1] = xmmword_21796A300;
  v29[2] = xmmword_21796A310;
  v30 = sub_2179689AC();
  v31 = *(v30 - 8);
  (*(v31 + 16))(a6, a1, v30);
  *(a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780) + 28)) = 0;
  v32 = a6 + v18[9];
  LOBYTE(a5) = v48;
  *v32 = v48;
  *(v32 + 8) = v50;
  *(v32 + 16) = v15;
  *(v32 + 24) = v16;
  *(a6 + v18[10]) = v49;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
  v49 = swift_allocBox();
  v35 = v34;
  v36 = v34 + *(v33 + 48);
  (*(v31 + 32))(v34, a1, v30);
  v37 = *MEMORY[0x277D2A400];
  sub_21796595C();
  OUTLINED_FUNCTION_3();
  (*(v38 + 104))(v35, v37);
  *v36 = a5;
  v39 = v49;
  v40 = v47;
  *(v36 + 8) = v50;
  *(v36 + 16) = v40;
  *(v36 + 24) = v16;
  v41 = v39 | 0x2000000000000000;
  v42 = v18[16];
  *(a6 + v42) = v41;
  v43 = a6 + v18[17];
  *v43 = 0;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  *(v43 + 24) = v41;
  v44 = *(a6 + v42);
  v45 = a6 + v18[18];
  *v45 = 1;
  *(v45 + 8) = 0;
  *(v45 + 16) = 0;
  *(v45 + 24) = v44;

  sub_217863EC4(v16);
  sub_217863EC4(v41);
  return sub_217863EC4(v44);
}

uint64_t sub_217858434(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v2);
  sub_217864D70(a1, &v5 - v3, &qword_27CB8A578, &qword_21796A750);
  sub_217967C0C();
  return sub_2178653BC(a1, &qword_27CB8A578, &qword_21796A750);
}

uint64_t sub_2178584F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A590, &unk_21796A790);
  sub_217967C0C();
  return v3;
}

uint64_t sub_217858578()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);

  return sub_217967C1C();
}

uint64_t sub_2178585C0(uint64_t a1)
{
  v2 = sub_2179689AC();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45();
  v6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);
  sub_217967C2C();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_2178586AC()
{
  v0 = sub_2179689AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_217858578();
  sub_21796894C();
  (*(v1 + 8))(v3, v0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2178653BC(v6, &qword_27CB8A770, &qword_21796A948);
  }

  else
  {
    v8 = sub_2179680DC();
    v10 = v9;
    (*(*(v7 - 8) + 8))(v6, v7);
    if (v10)
    {
      return v8;
    }
  }

  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_2178588FC(uint64_t a1)
{
  v2 = sub_2179689AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217858578();
  sub_217937BD0(v6);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    _s9ViewModelCMa(0, *(a1 + 16), *(a1 + 24), v9);
    swift_getWitnessTable();
    v10 = sub_217966A9C();
    sub_2178D83B0(v10, v11, v12, v13, v14, v15, v16, v17, v22[0], v22[1], v22[2], v22[3], v22[4], v23, v24, v25, v26);
    v19 = v18;

    v20 = v19 ^ 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_217858A4C(uint64_t a1)
{
  v67 = a1;
  v2 = sub_21796852C();
  v63 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2179688CC();
  v62 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217968A2C();
  v61 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v66 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v45 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A820, &qword_21796A9C0);
  MEMORY[0x28223BE20](v64);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_2179689AC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v69 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  v68 = v1;
  sub_217858578();
  sub_21796897C();
  (*(v15 + 8))(v17, v14);
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_2178653BC(v13, &qword_27CB8A720, &unk_21796A910);
    return 0;
  }

  v22 = v69;
  v23 = v20;
  (*(v69 + 32))(v20, v13, v18);
  (*(v22 + 16))(v10, v20, v18);
  v24 = *(v64 + 36);
  v64 = sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB8]);
  sub_2179692AC();
  v45 = 0;
  v57 = (v61 + 32);
  v58 = (v61 + 16);
  v56 = (v61 + 88);
  v55 = *MEMORY[0x277CD8368];
  v59 = (v61 + 96);
  v50 = (v63 + 32);
  v49 = *MEMORY[0x277CD8350];
  v48 = (v63 + 8);
  v47 = (v62 + 32);
  v46 = (v62 + 8);
  v25 = v54;
  v62 = v18;
  v63 = v5;
  v26 = v22;
  v60 = v24;
  v61 = v23;
  v51 = v2;
  do
  {
    while (1)
    {
      sub_2179692EC();
      if (*&v10[v24] == v70[0])
      {
        sub_2178653BC(v10, &qword_27CB8A820, &qword_21796A9C0);
        (*(v26 + 8))(v23, v18);
        return v45;
      }

      v27 = sub_21796934C();
      v28 = v65;
      (*v58)(v65);
      v27(v70, 0);
      sub_2179692FC();
      v29 = v66;
      (*v57)(v66, v28, v5);
      v30 = (*v56)(v29, v5);
      if (v30 == v55)
      {
        break;
      }

      if (v30 != v49)
      {
        goto LABEL_22;
      }

      (*v59)(v29, v5);
      v38 = v53;
      (*v50)(v53, v29, v2);
      _s9ViewModelCMa(0, *(v67 + 16), *(v67 + 24), v39);
      swift_getWitnessTable();
      sub_217966A9C();
      sub_217863A38(&qword_27CB8A828, MEMORY[0x277CD7E58], &unk_21797167C);
      sub_2178E0E64();
      v40 = v2;
      v42 = v41;

      if (v42)
      {
        sub_217966A9C();
        sub_2178E1804();
        v44 = v43;

        (*v48)(v38, v40);
        v2 = v40;
        v25 = v54;
        v18 = v62;
        v5 = v63;
        v26 = v69;
        v24 = v60;
        v23 = v61;
        if ((v44 & 1) == 0)
        {
          v37 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_21;
          }

LABEL_15:
          v45 = v37;
        }
      }

      else
      {
        (*v48)(v38, v40);
        v2 = v40;
        v25 = v54;
LABEL_18:
        v18 = v62;
        v5 = v63;
        v26 = v69;
        v24 = v60;
        v23 = v61;
      }
    }

    (*v59)(v29, v5);
    v31 = v52;
    (*v47)(v52, v29, v25);
    _s9ViewModelCMa(0, *(v67 + 16), *(v67 + 24), v32);
    swift_getWitnessTable();
    sub_217966A9C();
    sub_217863A38(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
    sub_2178E0E64();
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      (*v46)(v31, v25);
      v2 = v51;
      goto LABEL_18;
    }

    sub_217966A9C();
    sub_2178E1804();
    v36 = v35;

    (*v46)(v31, v25);
    v2 = v51;
    v18 = v62;
    v5 = v63;
    v26 = v69;
    v24 = v60;
    v23 = v61;
  }

  while ((v36 & 1) != 0);
  v37 = v45 + 1;
  if (!__OFADD__(v45, 1))
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_21796959C();
  __break(1u);
  return result;
}

uint64_t sub_217859448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v155 = sub_21796923C();
  OUTLINED_FUNCTION_2();
  v154 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v6 - v5);
  v158 = a1;
  v165 = *(a1 - 8);
  MEMORY[0x28223BE20](v7);
  v163 = v8;
  v164 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2179689AC();
  v157 = v9;
  v10 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  v152 = sub_217863A38(v11, v12, &unk_217971698);
  v13 = *(a1 + 24);
  v179 = v9;
  v180 = v10;
  v181 = v152;
  v182 = v13;
  v14 = OUTLINED_FUNCTION_67();
  v16 = _s19ContainerHeaderCellVMa(v14, v15);
  v19 = OUTLINED_FUNCTION_29(v16, v17, v18);
  v179 = a1;
  v180 = v19;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_33();
  v20 = sub_21796732C();
  OUTLINED_FUNCTION_12();
  v162 = v20;
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_12();
  sub_21796698C();
  v21 = OUTLINED_FUNCTION_33();
  _s20FailureAlertModifierVMa(v21);
  OUTLINED_FUNCTION_4();
  v151 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v23 = OUTLINED_FUNCTION_41();
  v26 = _s14AlbumTrackCellVMa(v23, v24, v13, v25);
  OUTLINED_FUNCTION_25();
  WitnessTable = swift_getWitnessTable();
  v179 = v26;
  v180 = WitnessTable;
  OUTLINED_FUNCTION_67();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  v28 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v28);
  OUTLINED_FUNCTION_8();
  v29 = sub_217967E9C();
  OUTLINED_FUNCTION_24();
  v32 = sub_217864B2C(v30, &qword_27CB8A6E8, &qword_21796A8E8, v31);
  v35 = sub_21786438C(v32, v33, v34);
  v179 = v22;
  v180 = MEMORY[0x277CD7E90];
  v181 = v29;
  v182 = v32;
  v183 = v35;
  OUTLINED_FUNCTION_67();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  v36 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75(v36);
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  v37 = sub_21796944C();
  v179 = v157;
  v180 = v10;
  v181 = v152;
  v182 = v13;
  v38 = OUTLINED_FUNCTION_67();
  _s14ContainerShelfVMa(v38, v39);
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  v40 = sub_217967E9C();
  OUTLINED_FUNCTION_30(v40, v41, v42);
  OUTLINED_FUNCTION_4();
  sub_21796665C();
  OUTLINED_FUNCTION_36();
  sub_21796698C();
  OUTLINED_FUNCTION_33();
  sub_2179669FC();
  OUTLINED_FUNCTION_15();
  v177 = swift_getWitnessTable();
  v178 = MEMORY[0x277CE0880];
  v43 = swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  v46 = sub_217863A38(v44, v45, MEMORY[0x277CDDB08]);
  v179 = v37;
  v180 = v20;
  v181 = v43;
  v182 = v46;
  OUTLINED_FUNCTION_21();
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  v179 = v37;
  v180 = v20;
  v181 = v43;
  v182 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v175 = MEMORY[0x277CE1410];
  v176 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v48 = sub_21796666C();
  OUTLINED_FUNCTION_28(v48, v49, v50);
  OUTLINED_FUNCTION_4();
  v51 = sub_21796686C();
  v52 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v148 = v53;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v54);
  v56 = &v134 - v55;
  v57 = OUTLINED_FUNCTION_41();
  v58 = v13;
  _s18NavigationBarStyleVMa(v57, v59, v13, v60);
  v61 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v151 = v62;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_52(&v134 - v64);
  OUTLINED_FUNCTION_19();
  v144 = v51;
  v65 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18();
  v68 = sub_217863A38(v66, v67, MEMORY[0x277CDE458]);
  v135 = v65;
  v173 = v65;
  v174 = v68;
  v69 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  v70 = swift_getWitnessTable();
  v134 = v69;
  v171 = v69;
  v172 = v70;
  v71 = swift_getWitnessTable();
  v179 = v61;
  v180 = v71;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v149 = v73;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_52(&v134 - v75);
  v159 = v10;
  v160 = v58;
  done = _s15DoneToolbarItemVMa(255, v10, v58, v76);
  OUTLINED_FUNCTION_16();
  v78 = swift_getWitnessTable();
  v179 = done;
  v180 = v78;
  v79 = swift_getOpaqueTypeMetadata2();
  v152 = v61;
  v179 = v61;
  v180 = v71;
  v137 = v71;
  v80 = swift_getOpaqueTypeConformance2();
  v179 = done;
  v180 = v78;
  v81 = swift_getOpaqueTypeConformance2();
  v150 = OpaqueTypeMetadata2;
  v179 = OpaqueTypeMetadata2;
  v180 = v79;
  v136 = v79;
  v142 = v80;
  v181 = v80;
  v182 = v81;
  v138 = v81;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v141 = v82;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_52(&v134 - v84);
  v143 = v85;
  v147 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v146 = v86;
  v88 = MEMORY[0x28223BE20](v87);
  v139 = &v134 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_52(&v134 - v90);
  v91 = v158;
  v92 = v161;
  sub_21785A280(v158, &v179);
  v169 = v179;
  v170 = v180;
  if (qword_27CB8A390 != -1)
  {
    swift_once();
  }

  v93 = qword_27CB978D0;
  v168 = xmmword_27CB978C0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x7465446D75626C41, 0xEF776569566C6961);

  sub_2178ED854(v168, *(&v168 + 1), v93, v144, v135);

  v94 = v159;
  v95 = v160;
  sub_21792D7FC(1, v159, v52, v159, v134, v160);
  OUTLINED_FUNCTION_54();
  v96(v56, v52);
  v97 = v165;
  v98 = *(v165 + 16);
  v144 = v165 + 16;
  v148 = v98;
  v99 = v94;
  v100 = v164;
  v98(v164, v92, v91);
  sub_21796920C();
  v101 = sub_2179691FC();
  v102 = *(v97 + 80);
  v103 = swift_allocObject();
  v104 = MEMORY[0x277D85700];
  *(v103 + 2) = v101;
  *(v103 + 3) = v104;
  *(v103 + 4) = v99;
  *(v103 + 5) = v95;
  v135 = *(v97 + 32);
  v165 = v97 + 32;
  v135(&v103[(v102 + 48) & ~v102], v100, v91);
  v105 = v153;
  sub_21796921C();
  v106 = v152;
  v107 = v145;
  v108 = v162;
  sub_21785C01C(0, 0, v105, 0xD000000000000035, 0x8000000217973E60, 104, &unk_21796A900, v103, v152, v137);
  OUTLINED_FUNCTION_54();
  v109(v105, v155);
  OUTLINED_FUNCTION_54();
  v111 = v110(v108, v106);
  MEMORY[0x28223BE20](v111);
  v112 = v160;
  v113 = swift_checkMetadataState();
  v114 = v150;
  v115 = v142;
  v116 = v138;
  sub_217967A1C();
  OUTLINED_FUNCTION_54();
  v117(v107, v114);
  v118 = v164;
  v119 = v158;
  v148(v164, v161, v158);
  v120 = swift_allocObject();
  *(v120 + 16) = v159;
  *(v120 + 24) = v112;
  v135((v120 + ((v102 + 32) & ~v102)), v118, v119);
  v179 = v114;
  v180 = v113;
  v181 = v115;
  v182 = v116;
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v139;
  v123 = v143;
  v124 = v157;
  sub_2178D0790(sub_21786462C, v120, v143, v121);

  OUTLINED_FUNCTION_54();
  v126 = v125(v124, v123);
  v129 = sub_217864644(v126, v127, v128);
  v166 = v121;
  v167 = v129;
  OUTLINED_FUNCTION_1();
  v130 = v147;
  swift_getWitnessTable();
  v131 = v140;
  OUTLINED_FUNCTION_60();
  sub_2179560E4();
  v132 = *(v146 + 8);
  v132(v122, v130);
  OUTLINED_FUNCTION_60();
  sub_2179560E4();
  return (v132)(v131, v130);
}

uint64_t sub_21785A280@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v32 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  (*(v3 + 32))(v6 + v5, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_2179689AC();
  v31 = v9;
  v30 = sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8], &unk_217971698);
  v38 = v9;
  v39 = v7;
  v40 = v30;
  v41 = v8;
  v10 = _s19ContainerHeaderCellVMa(255, &v38);
  WitnessTable = swift_getWitnessTable();
  v38 = v10;
  v39 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa(255);
  v29 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v14 = _s14AlbumTrackCellVMa(255, v7, v8, v13);
  v15 = swift_getWitnessTable();
  v38 = v14;
  v39 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v16 = sub_217967E9C();
  v17 = sub_217864B2C(&qword_27CB8A6F8, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB0]);
  v20 = sub_21786438C(v17, v18, v19);
  v38 = v12;
  v39 = MEMORY[0x277CD7E90];
  v40 = v16;
  v41 = v17;
  v42 = v20;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  v38 = v31;
  v39 = v7;
  v40 = v30;
  v41 = v8;
  _s14ContainerShelfVMa(255, &v38);
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  v21 = sub_21796698C();
  v22 = sub_2179669FC();
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277CE0880];
  v23 = swift_getWitnessTable();
  v24 = sub_217863A38(&qword_27CB8A708, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x277CE1410];
  v35 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  result = sub_21796685C();
  v27 = v33;
  *v33 = result;
  v27[1] = v28;
  return result;
}

uint64_t sub_21785A884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21796920C();
  v5[3] = sub_2179691FC();
  v8 = swift_task_alloc();
  v5[4] = v8;
  v10 = _s15AlbumDetailViewVMa(0, a4, a5, v9);
  *v8 = v5;
  v8[1] = sub_21785A954;

  return sub_21785AADC(v10);
}

uint64_t sub_21785A954()
{
  OUTLINED_FUNCTION_62();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v4 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21785AA84, v4, v3);
}

uint64_t sub_21785AA84()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_39();

  return v0();
}

uint64_t sub_21785AADC(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *(a1 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  v2[25] = swift_task_alloc();
  v3 = sub_21796822C();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_2179689AC();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  sub_21796920C();
  v2[37] = sub_2179691FC();
  v6 = sub_2179691BC();
  v2[38] = v6;
  v2[39] = v5;

  return MEMORY[0x2822009F8](sub_21785ACF0, v6, v5);
}

uint64_t sub_21785ACF0()
{
  if (sub_2178588FC(v0[21]))
  {
    sub_217858578();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
    v1 = swift_allocObject();
    v0[40] = v1;
    *(v1 + 16) = xmmword_21796A330;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A730, &unk_21796A920);
    *(v1 + 32) = sub_217967F4C();
    *(v1 + 40) = sub_217967F3C();
    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_21785AF70;
    v3 = v0[35];
    v4 = v0[29];
    v5 = MEMORY[0x277CD82A0];

    return MEMORY[0x2821246D8](v3, v1, v4, v5);
  }

  else
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[26];
    sub_217858578();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
    v9 = swift_allocObject();
    v0[44] = v9;
    *(v9 + 16) = xmmword_21796A320;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A730, &unk_21796A920);
    *(v9 + 32) = sub_217967F4C();
    *(v9 + 40) = sub_217967F3C();
    *(v9 + 48) = sub_217967F2C();
    (*(v7 + 104))(v6, *MEMORY[0x277CD7CF8], v8);
    v10 = swift_task_alloc();
    v0[45] = v10;
    OUTLINED_FUNCTION_0();
    v13 = sub_217863A38(v11, v12, MEMORY[0x277CD82E8]);
    *v10 = v0;
    v10[1] = sub_21785B774;
    v14 = v0[33];
    v15 = v0[28];
    v16 = v0[29];
    v17 = MEMORY[0x277CD82B8];
    v18 = MEMORY[0x277CD82A0];

    return MEMORY[0x282124808](v14, v9, v15, v16, v17, v18, v13);
  }
}

uint64_t sub_21785AF70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = v3[34];
  v7 = v3[30];
  v8 = v3[29];
  *v5 = *v2;
  v4[42] = v1;

  v9 = *(v7 + 8);
  v4[43] = v9;
  v9(v6, v8);

  OUTLINED_FUNCTION_66();
  v11 = *(v10 + 312);
  v12 = v3[38];
  if (v1)
  {
    v13 = sub_21785B4C0;
  }

  else
  {
    v13 = sub_21785B124;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_21785B124()
{
  v44 = v0;
  v2 = v0[31];

  v3 = OUTLINED_FUNCTION_55();
  v4(v3);
  v5 = OUTLINED_FUNCTION_63();
  v6(v5);
  sub_2178585C0(v2);
  if (qword_27CB8A368 != -1)
  {
    OUTLINED_FUNCTION_34(&qword_27CB8A368);
  }

  v7 = v0[36];
  OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21796A340;
  sub_21796897C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_76(v9);
  if (v10)
  {
    sub_2178653BC(v7, &qword_27CB8A720, &unk_21796A910);
    v11 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
    OUTLINED_FUNCTION_65();
    sub_2179692AC();
    OUTLINED_FUNCTION_65();
    sub_2179692EC();
    v11 = OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_10();
    (*(v12 + 8))(v7, v1);
  }

  v13 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v13;
  *(v8 + 32) = v11;

  OUTLINED_FUNCTION_42(v14, v15, v16, v17, v18, v19, v20, v21, v38, v39, v40, v41, v42);

  v22 = sub_217968F3C();
  v24 = v23;

  v0[12] = v22;
  v0[13] = v24;
  v25 = sub_21796903C();
  OUTLINED_FUNCTION_40(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A760, &qword_21796A940);
  sub_217967C2C();
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C2C();
  sub_217956100();
  v27 = v0[5];
  if (v27)
  {
    v29 = v0[21];
    v28 = v0[22];
    v30 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v43 = *(v28 + *(v29 + 64));
    v31 = *(v30 + 8);
    sub_217863EC4(v43);
    v31(&v43, v27, v30);
    sub_2178643E0(v43);
    v32 = OUTLINED_FUNCTION_7();
    v33(v32);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_7();
    v35(v34);
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_39();

  return v36();
}

uint64_t sub_21785B4C0()
{
  v45 = v0;
  v1 = v0[42];

  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C2C();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31(&qword_27CB8A480);
  }

  v2 = sub_21796653C();
  __swift_project_value_buffer(v2, qword_27CB97B00);
  v3 = OUTLINED_FUNCTION_53();
  v4(v3);
  v5 = v1;
  v6 = sub_21796651C();
  v7 = sub_21796937C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_37();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v8 = 136446466;
    sub_217858578();
    v9 = OUTLINED_FUNCTION_64();
    v10(v9);
    OUTLINED_FUNCTION_0();
    sub_217863A38(v11, v12, MEMORY[0x277CD82F8]);
    sub_21796966C();
    v13 = OUTLINED_FUNCTION_44();
    v14(v13);
    v15 = OUTLINED_FUNCTION_64();
    sub_217957F4C(v15, v16, v17);

    OUTLINED_FUNCTION_58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v18 = sub_217968F8C();
    v20 = sub_217957F4C(v18, v19, &v44);

    *(v8 + 14) = v20;
    OUTLINED_FUNCTION_57(&dword_217846000, v21, v22, "Failed to load additional content for %{public}s. Error = %{public}s", v23, v24, v25, v26, v37, v39, v41, *v43, v43[4]);
    OUTLINED_FUNCTION_68(v27, v28, v29, v30, v31, v32, v33, v34, v38, v40, v42);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[21]);
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_39();

  return v35();
}

uint64_t sub_21785B774(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v21 = v3[32];
  OUTLINED_FUNCTION_66();
  v7 = *(v6 + 240);
  v20 = v3[29];
  OUTLINED_FUNCTION_66();
  v9 = *(v8 + 224);
  v10 = v3[27];
  v11 = v3[26];
  v12 = *v2;
  OUTLINED_FUNCTION_6();
  *v13 = v12;
  v4[46] = v1;

  (*(v10 + 8))(v9, v11);
  v14 = *(v7 + 8);
  v4[47] = v14;
  v14(v21, v20);
  OUTLINED_FUNCTION_66();
  v16 = *(v15 + 312);
  v17 = v3[38];
  if (v1)
  {
    v18 = sub_21785BD18;
  }

  else
  {
    v18 = sub_21785B97C;
  }

  return MEMORY[0x2822009F8](v18, v17, v16);
}

uint64_t sub_21785B97C()
{
  v44 = v0;
  v2 = v0[31];

  v3 = OUTLINED_FUNCTION_55();
  v4(v3);
  v5 = OUTLINED_FUNCTION_63();
  v6(v5);
  sub_2178585C0(v2);
  if (qword_27CB8A368 != -1)
  {
    OUTLINED_FUNCTION_34(&qword_27CB8A368);
  }

  v7 = v0[36];
  OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21796A340;
  sub_21796897C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_76(v9);
  if (v10)
  {
    sub_2178653BC(v7, &qword_27CB8A720, &unk_21796A910);
    v11 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8);
    OUTLINED_FUNCTION_65();
    sub_2179692AC();
    OUTLINED_FUNCTION_65();
    sub_2179692EC();
    v11 = OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_10();
    (*(v12 + 8))(v7, v1);
  }

  v13 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v13;
  *(v8 + 32) = v11;

  OUTLINED_FUNCTION_42(v14, v15, v16, v17, v18, v19, v20, v21, v38, v39, v40, v41, v42);

  v22 = sub_217968F3C();
  v24 = v23;

  v0[12] = v22;
  v0[13] = v24;
  v25 = sub_21796903C();
  OUTLINED_FUNCTION_40(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A760, &qword_21796A940);
  sub_217967C2C();
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C2C();
  sub_217956100();
  v27 = v0[5];
  if (v27)
  {
    v29 = v0[21];
    v28 = v0[22];
    v30 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v43 = *(v28 + *(v29 + 64));
    v31 = *(v30 + 8);
    sub_217863EC4(v43);
    v31(&v43, v27, v30);
    sub_2178643E0(v43);
    v32 = OUTLINED_FUNCTION_7();
    v33(v32);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_7();
    v35(v34);
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_39();

  return v36();
}

uint64_t sub_21785BD18()
{
  v45 = v0;
  v1 = v0[46];

  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C2C();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31(&qword_27CB8A480);
  }

  v2 = sub_21796653C();
  __swift_project_value_buffer(v2, qword_27CB97B00);
  v3 = OUTLINED_FUNCTION_53();
  v4(v3);
  v5 = v1;
  v6 = sub_21796651C();
  v7 = sub_21796937C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_37();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v8 = 136446466;
    sub_217858578();
    v9 = OUTLINED_FUNCTION_64();
    v10(v9);
    OUTLINED_FUNCTION_0();
    sub_217863A38(v11, v12, MEMORY[0x277CD82F8]);
    sub_21796966C();
    v13 = OUTLINED_FUNCTION_44();
    v14(v13);
    v15 = OUTLINED_FUNCTION_64();
    sub_217957F4C(v15, v16, v17);

    OUTLINED_FUNCTION_58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v18 = sub_217968F8C();
    v20 = sub_217957F4C(v18, v19, &v44);

    *(v8 + 14) = v20;
    OUTLINED_FUNCTION_57(&dword_217846000, v21, v22, "Failed to load additional content for %{public}s. Error = %{public}s", v23, v24, v25, v26, v37, v39, v41, *v43, v43[4]);
    OUTLINED_FUNCTION_68(v27, v28, v29, v30, v31, v32, v33, v34, v38, v40, v42);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[21]);
  }

  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_39();

  return v35();
}

unint64_t sub_21785BFD0()
{
  result = qword_27CB8A488;
  if (!qword_27CB8A488)
  {
    sub_21796693C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A488);
  }

  return result;
}

uint64_t sub_21785C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (OUTLINED_FUNCTION_43())
  {
    v14 = sub_21796693C();
    OUTLINED_FUNCTION_2();
    v16 = v15;
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_14();
    v20 = v19 - v18;
    if (!a2)
    {
      sub_21796950C();

      MEMORY[0x21CEA7F50](a4, a5);
      MEMORY[0x21CEA7F50](58, 0xE100000000000000);
      v30 = sub_21796966C();
      MEMORY[0x21CEA7F50](v30);
    }

    sub_21796923C();
    OUTLINED_FUNCTION_2();
    MEMORY[0x28223BE20](v31);
    OUTLINED_FUNCTION_14();
    (*(v34 + 16))(v33 - v32, a3);

    sub_21796692C();
    MEMORY[0x21CEA69A0](v20, a9, v14, a10);

    return (*(v16 + 8))(v20, v14);
  }

  else
  {
    v21 = sub_21796682C();
    OUTLINED_FUNCTION_3();
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_14();
    v25 = (v24 - v23);
    v27 = *(v26 + 20);
    sub_21796923C();
    OUTLINED_FUNCTION_3();
    (*(v28 + 16))(&v25[v27], a3);
    *v25 = a7;
    *(v25 + 1) = a8;
    MEMORY[0x21CEA69A0](v25, a9, v21, a10);
    return sub_217865300(v25, MEMORY[0x277CDD8B0]);
  }
}

uint64_t sub_21785C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v11 = sub_2178C3764(a1, a2, a3, a4);
  *(&v11 + 1) = v6;
  done = _s15DoneToolbarItemVMa(0, a1, a2, v7);
  WitnessTable = swift_getWitnessTable();
  sub_2178B9358(&v11, done, &v12);

  v11 = v12;
  MEMORY[0x21CEA6000](&v11, done, WitnessTable);
}

uint64_t sub_21785C3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21796595C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2179689AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s15AlbumDetailViewVMa(0, a2, a3, v14);
  if (*(a1 + *(v16 + 40)) == 1)
  {
    v26 = v9;
    v27 = v7;
    _s9ViewModelCMa(0, a2, a3, v15);
    swift_getWitnessTable();
    v9 = v26;
    v7 = v27;
    sub_217966A9C();
    sub_217858578();
    sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8], &unk_217971698);
    sub_2178D1C94();

    (*(v11 + 8))(v13, v10);
  }

  sub_217956100();
  v17 = v34;
  if (!v34)
  {
    return sub_2178653BC(v33, &qword_27CB8A630, qword_21796A7B0);
  }

  v18 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_217858578();
  (*(v7 + 104))(v9, *MEMORY[0x277D2A400], v6);
  v32 = 4;
  v19 = a1 + *(v16 + 36);
  v21 = *(v19 + 8);
  v20 = *(v19 + 16);
  v22 = *(v19 + 24);
  v28[0] = *v19;
  v29 = v21;
  v30 = v20;
  v31 = v22;
  v23 = *(v18 + 24);

  sub_217863EC4(v22);
  v23(v9, &v32, v28, v17, v18);
  v24 = v31;

  sub_2178643E0(v24);
  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_21785C740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a2;
  v41 = a1;
  v42 = a5;
  v39 = sub_2179689AC();
  v38 = sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8], &unk_217971698);
  v52 = v39;
  v53 = a3;
  v54 = v38;
  v55 = a4;
  v7 = _s19ContainerHeaderCellVMa(255, &v52);
  WitnessTable = swift_getWitnessTable();
  v52 = v7;
  v53 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa(255);
  v37 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v11 = _s14AlbumTrackCellVMa(255, a3, a4, v10);
  v12 = swift_getWitnessTable();
  v52 = v11;
  v53 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v13 = sub_217967E9C();
  v14 = sub_217864B2C(&qword_27CB8A6F8, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB0]);
  v17 = sub_21786438C(v14, v15, v16);
  v52 = v9;
  v53 = MEMORY[0x277CD7E90];
  v54 = v13;
  v55 = v14;
  v56 = v17;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  v52 = v39;
  v53 = a3;
  v18 = a3;
  v54 = v38;
  v55 = a4;
  v19 = a4;
  _s14ContainerShelfVMa(255, &v52);
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  v20 = sub_21796698C();
  v21 = sub_2179669FC();
  v50 = swift_getWitnessTable();
  v51 = MEMORY[0x277CE0880];
  v22 = swift_getWitnessTable();
  v23 = sub_217863A38(&qword_27CB8A708, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v52 = v20;
  v53 = v21;
  v54 = v22;
  v55 = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = sub_217966F9C();
  v52 = v20;
  v53 = v21;
  v54 = v22;
  v55 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = MEMORY[0x277CE1410];
  v49 = OpaqueTypeConformance2;
  v26 = swift_getWitnessTable();
  v27 = sub_21796666C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v37 - v32;
  v34 = sub_2179673DC();
  v44 = v18;
  v45 = v19;
  v46 = v40;
  v47 = v41;
  sub_21789AA60(v34, sub_217864794, v43, v24, v26);
  swift_getWitnessTable();
  sub_2179560E4();
  v35 = *(v28 + 8);
  v35(v31, v27);
  sub_2179560E4();
  return (v35)(v33, v27);
}

uint64_t sub_21785CD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a2;
  v82 = a1;
  v83 = a5;
  v85 = sub_2179669FC();
  v75 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v74 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21796708C();
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2179689AC();
  v84 = v10;
  v81 = sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8], &unk_217971698);
  v91 = v10;
  v92 = a3;
  v11 = a3;
  v93 = v81;
  v94 = a4;
  v76 = a4;
  v12 = _s19ContainerHeaderCellVMa(255, &v91);
  WitnessTable = swift_getWitnessTable();
  v91 = v12;
  v92 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa(255);
  v80 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v16 = _s14AlbumTrackCellVMa(255, v11, a4, v15);
  v17 = swift_getWitnessTable();
  v91 = v16;
  v92 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v18 = sub_217967E9C();
  v19 = sub_217864B2C(&qword_27CB8A6F8, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB0]);
  v22 = sub_21786438C(v19, v20, v21);
  v91 = v14;
  v92 = MEMORY[0x277CD7E90];
  v93 = v18;
  v94 = v19;
  v95 = v22;
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  v91 = v84;
  v92 = v11;
  v23 = v76;
  v93 = v81;
  v94 = v76;
  _s14ContainerShelfVMa(255, &v91);
  sub_21796944C();
  swift_getTupleTypeMetadata3();
  v24 = sub_217967E9C();
  swift_getWitnessTable();
  v69 = v24;
  v25 = sub_21796665C();
  v70 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v67 = &v63 - v26;
  v27 = sub_21796698C();
  v71 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v68 = &v63 - v28;
  v66 = v25;
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x277CE0880];
  v29 = swift_getWitnessTable();
  v30 = sub_217863A38(&qword_27CB8A708, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v91 = v27;
  v92 = v85;
  v80 = v30;
  v81 = v29;
  v93 = v29;
  v94 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  v32 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v63 - v35;
  v77 = v37;
  v38 = sub_217966F9C();
  v78 = *(v38 - 8);
  v79 = v38;
  MEMORY[0x28223BE20](v38);
  v84 = &v63 - v39;
  v40 = v11;
  v42 = _s15AlbumDetailViewVMa(0, v11, v23, v41);
  v43 = v82 + *(v42 + 60);
  v44 = *v43;
  v45 = *(v43 + 8);
  LOBYTE(v91) = v44;
  v92 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  v46 = MEMORY[0x277CE1410];
  if (v88 == 1)
  {
    v47 = v85;
    v91 = v27;
    v92 = v85;
    v49 = v80;
    v48 = v81;
    v93 = v81;
    v94 = v80;
    swift_getOpaqueTypeConformance2();
    sub_217952EE8();
  }

  else
  {
    v50 = sub_217966E6C();
    v64 = v27;
    v63 = &v63;
    MEMORY[0x28223BE20](v50);
    *(&v63 - 4) = v40;
    *(&v63 - 3) = v23;
    v51 = v73;
    *(&v63 - 2) = v52;
    *(&v63 - 1) = v51;
    sub_21789A9E0();
    v53 = v67;
    v27 = v64;
    sub_21796664C();
    sub_2179669BC();
    v54 = v66;
    sub_2178B950C(v66);
    v55 = v68;
    sub_2179677DC();
    (*(v70 + 8))(v53, v54);
    v56 = v74;
    sub_2179669EC();
    v47 = v85;
    v49 = v80;
    v48 = v81;
    sub_2179676FC();
    (*(v75 + 8))(v56, v47);
    (*(v71 + 8))(v55, v27);
    v91 = v27;
    v92 = v47;
    v93 = v48;
    v94 = v49;
    swift_getOpaqueTypeConformance2();
    v57 = v77;
    sub_2179560E4();
    v58 = *(v65 + 8);
    v58(v34, v57);
    sub_2179560E4();
    sub_217952FA4();
    v58(v34, v57);
    v58(v36, v57);
    v46 = MEMORY[0x277CE1410];
  }

  v91 = v27;
  v92 = v47;
  v93 = v48;
  v94 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v46;
  v87 = OpaqueTypeConformance2;
  v60 = v79;
  swift_getWitnessTable();
  v61 = v84;
  sub_2179560E4();
  return (*(v78 + 8))(v61, v60);
}

uint64_t sub_21785D88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v246 = a2;
  v309 = a1;
  v291 = a5;
  v317 = sub_2179689AC();
  v311 = sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8], &unk_217971698);
  v342 = v317;
  v343 = a3;
  v344 = v311;
  v345 = a4;
  v7 = _s14ContainerShelfVMa(0, &v342);
  v249 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v248 = v225 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v247 = v225 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  MEMORY[0x28223BE20](v11 - 8);
  v284 = v225 - v12;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  v245 = *(v285 - 8);
  v13 = MEMORY[0x28223BE20](v285);
  v243 = v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v244 = v225 - v15;
  v290 = v7;
  v289 = sub_21796944C();
  v286 = *(v289 - 8);
  v16 = MEMORY[0x28223BE20](v289);
  v288 = v225 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v287 = v225 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v22 = _s14AlbumTrackCellVMa(255, a3, a4, v21);
  WitnessTable = swift_getWitnessTable();
  v342 = v22;
  v343 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v24 = sub_217967E9C();
  v25 = sub_217864B2C(&qword_27CB8A6F8, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB0]);
  v28 = sub_21786438C(v25, v26, v27);
  v342 = v20;
  v343 = MEMORY[0x277CD7E90];
  v233 = v24;
  v344 = v24;
  v345 = v25;
  v232 = v25;
  v346 = v28;
  v29 = sub_217967D9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  v30 = sub_21796698C();
  swift_getTupleTypeMetadata2();
  v31 = sub_217967E9C();
  v240 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v239 = v225 - v33;
  v237 = v29;
  v231 = *(v29 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v230 = v225 - v35;
  v241 = v30;
  v234 = *(v30 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v238 = v225 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v236 = v225 - v38;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v39 = MEMORY[0x28223BE20](v228);
  v227 = v225 - v40;
  v242 = v19;
  v41 = MEMORY[0x28223BE20](v39);
  v235 = v225 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v283 = v225 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v280 = v225 - v46;
  v300 = v20;
  v282 = *(v20 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v226 = v225 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v229 = v225 - v50;
  v225[1] = v51;
  MEMORY[0x28223BE20](v49);
  v299 = v225 - v52;
  v307 = v31;
  v306 = sub_21796944C();
  v305 = *(v306 - 8);
  v53 = MEMORY[0x28223BE20](v306);
  v315 = v225 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v314 = v225 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  MEMORY[0x28223BE20](v56 - 8);
  v279 = v225 - v57;
  v272 = sub_21796722C();
  v270 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v262 = v225 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = a3;
  v60 = _s15AlbumDetailViewVMa(0, a3, a4, v59);
  v61 = *(v60 - 8);
  v308 = *(v61 + 64);
  v62 = MEMORY[0x28223BE20](v60);
  v301 = v225 - v63;
  v303 = *(v317 - 1);
  v64 = MEMORY[0x28223BE20](v62);
  v281 = v225 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v278 = v225 - v67;
  MEMORY[0x28223BE20](v66);
  v252 = v225 - v68;
  v342 = v69;
  v343 = a3;
  v344 = v311;
  v345 = a4;
  v70 = _s19ContainerHeaderCellVMa(0, &v342);
  v256 = v70;
  v257 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v255 = v225 - v71;
  v254 = swift_getWitnessTable();
  v342 = v70;
  v343 = v254;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v258 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v253 = v225 - v73;
  v259 = v74;
  v75 = sub_21796698C();
  v264 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v261 = v225 - v76;
  v266 = v77;
  v78 = sub_21796698C();
  v267 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v263 = v225 - v79;
  v268 = v80;
  v81 = sub_21796698C();
  v269 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v265 = v225 - v82;
  v271 = v83;
  v84 = sub_21796698C();
  v273 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v260 = v225 - v85;
  v274 = v86;
  v87 = sub_21796698C();
  v276 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v275 = v225 - v88;
  _s20FailureAlertModifierVMa(255);
  v277 = v87;
  v304 = sub_21796698C();
  v302 = *(v304 - 8);
  v89 = MEMORY[0x28223BE20](v304);
  v313 = v225 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v312 = v225 - v91;
  v92 = v309;
  sub_217858578();
  v93 = v92 + *(v60 + 68);
  v95 = *(v93 + 8);
  v94 = *(v93 + 16);
  v96 = *(v93 + 24);
  LOBYTE(v342) = *v93;
  v343 = v95;
  v344 = v94;
  v345 = v96;
  v97 = v92 + *(v60 + 56);
  v98 = *(v97 + 16);
  v340 = *v97;
  v341 = v98;

  sub_217863EC4(v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A760, &qword_21796A940);
  sub_217967C1C();
  v251 = v323;
  v250 = v324;
  LOBYTE(v340) = sub_21785FD10(v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A790, &qword_21796A968);
  sub_217967C0C();
  v338 = v323;
  v339 = v324;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A798, &qword_21796A970);
  sub_217967C3C();

  v99 = v340;
  LOBYTE(v29) = v341;
  v100 = *(v61 + 16);
  v101 = v301;
  v294 = v61 + 16;
  v293 = v100;
  v100(v301, v92, v60);
  v102 = *(v61 + 80);
  v103 = (v102 + 32) & ~v102;
  v292 = v103 + v308;
  v296 = v102 | 7;
  v104 = swift_allocObject();
  v105 = v316;
  *(v104 + 16) = v316;
  *(v104 + 24) = a4;
  v106 = *(v61 + 32);
  v297 = v103;
  v310 = v60;
  v107 = v60;
  v108 = v254;
  v298 = v61 + 32;
  v295 = v106;
  v106(v104 + v103, v101, v107);
  v308 = a4;
  v109 = v253;
  v110 = v255;
  sub_217890BD0(v252, &v342, 0, 0, 0, 0, v251, v250, v255, v99, *(&v99 + 1), v29, v105, sub_2178647AC, v104, v317, v105, v311, a4);
  v111 = v262;
  sub_21796720C();
  v112 = v256;
  sub_2179678AC();
  v113 = v111;
  v114 = v112;
  (*(v270 + 8))(v113, v272);
  (*(v257 + 8))(v110, v112);
  if (qword_27CB8A3F8 != -1)
  {
    swift_once();
  }

  v115 = qword_27CB979F8;
  v116 = unk_27CB97A00;
  v117 = qword_27CB97A08;
  v342 = v114;
  v343 = v108;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = v261;
  v120 = v259;
  sub_2178ED854(v115, v116, v117, v259, OpaqueTypeConformance2);
  (*(v258 + 8))(v109, v120);
  sub_21796742C();
  v121 = v310;
  v122 = v309;
  v123 = sub_217863A38(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v336 = OpaqueTypeConformance2;
  v337 = v123;
  v124 = v266;
  v125 = swift_getWitnessTable();
  v126 = v263;
  sub_217967A0C();
  (*(v264 + 8))(v119, v124);
  sub_21796743C();
  v127 = MEMORY[0x277CDF918];
  v334 = v125;
  v335 = MEMORY[0x277CDF918];
  v128 = v268;
  v129 = swift_getWitnessTable();
  v130 = v265;
  sub_217967A0C();
  (*(v267 + 8))(v126, v128);
  sub_21796744C();
  v332 = v129;
  v333 = v127;
  v131 = v127;
  v132 = v271;
  v133 = swift_getWitnessTable();
  v134 = v260;
  sub_217967A0C();
  (*(v269 + 8))(v130, v132);
  v135 = v122;
  v136 = v121;
  if (qword_27CB8A340 != -1)
  {
    swift_once();
  }

  v342 = qword_27CB977B8;
  v330 = v133;
  v331 = v131;

  v137 = v274;
  v138 = swift_getWitnessTable();
  sub_217952FA0(v137);
  v139 = v275;
  sub_21796768C();

  (*(v273 + 8))(v134, v137);
  v140 = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  v141 = v135;
  v142 = v279;
  sub_217967C3C();
  v143 = v301;
  v144 = v140;
  v293(v301, v135, v140);
  v145 = swift_allocObject();
  v146 = v308;
  *(v145 + 16) = v316;
  *(v145 + 24) = v146;
  v295(v145 + v297, v143, v144);
  v147 = sub_217864B2C(&qword_27CB8A7A0, &qword_27CB8A6D8, &unk_21796AF80, MEMORY[0x277CE0728]);
  v328 = v138;
  v274 = v147;
  v329 = v147;
  v148 = v277;
  v149 = swift_getWitnessTable();
  v150 = v313;
  sub_21792EC54(v142, sub_217864A88, v145, v148, v149);

  sub_2178653BC(v142, &qword_27CB8A788, &qword_21796A960);
  (*(v276 + 8))(v139, v148);
  v151 = sub_217863A38(&qword_27CB8A7A8, _s20FailureAlertModifierVMa, &unk_217971360);
  v326 = v149;
  v327 = v151;
  v152 = v304;
  v276 = swift_getWitnessTable();
  sub_2179560E4();
  v153 = *(v302 + 8);
  v279 = (v302 + 8);
  v277 = v153;
  v153(v150, v152);
  v154 = v278;
  sub_217858578();
  v155 = v280;
  sub_21796897C();
  v156 = v303 + 8;
  v157 = *(v303 + 8);
  v158 = v310;
  v159 = v317;
  (v157)(v154, v317);
  v160 = v300;
  if (__swift_getEnumTagSinglePayload(v155, 1, v300) == 1)
  {
    sub_2178653BC(v155, &qword_27CB8A720, &unk_21796A910);
    v161 = v315;
    __swift_storeEnumTagSinglePayload(v315, 1, 1, v307);
  }

  else
  {
    v162 = v282;
    v303 = v156;
    v278 = *(v282 + 32);
    (v278)(v299, v155, v160);
    v280 = v157;
    v163 = v227;
    sub_217967D6C();
    v164 = sub_21796742C();
    sub_21796660C();
    v165 = v228;
    v166 = v163 + *(v228 + 36);
    *v166 = v164;
    *(v166 + 8) = v167;
    *(v166 + 16) = v168;
    *(v166 + 24) = v169;
    *(v166 + 32) = v170;
    *(v166 + 40) = 0;
    v171 = v283;
    sub_217864D20(v163, v283, &qword_27CB8A780, &qword_21796C770);
    __swift_storeEnumTagSinglePayload(v171, 0, 1, v165);
    v172 = v162;
    v173 = *(v162 + 16);
    v174 = v299;
    v173(v229, v299, v160);
    v293(v143, v141, v158);
    v175 = v226;
    v173(v226, v174, v160);
    v176 = (v292 + *(v172 + 80)) & ~*(v172 + 80);
    v177 = swift_allocObject();
    v178 = v308;
    *(v177 + 16) = v316;
    *(v177 + 24) = v178;
    v295(v177 + v297, v143, v158);
    (v278)(v177 + v176, v175, v160);
    v301 = MEMORY[0x277CE14C0];
    v179 = swift_getWitnessTable();
    sub_217863A38(&qword_27CB8A7B0, MEMORY[0x277CD83B8], MEMORY[0x277CD83E0]);
    v180 = v230;
    sub_217967D8C();
    v342 = qword_27CB977B8;
    v320 = v179;

    v181 = v237;
    v182 = swift_getWitnessTable();
    sub_217952FA0(v181);
    v183 = v238;
    sub_21796768C();

    (*(v231 + 8))(v180, v181);
    v318 = v182;
    v319 = v274;
    v184 = v241;
    v185 = swift_getWitnessTable();
    v186 = v236;
    sub_2179560E4();
    v187 = v234;
    v188 = *(v234 + 8);
    v188(v183, v184);
    v189 = v283;
    v190 = v235;
    sub_217864D70(v283, v235, &qword_27CB8A6E0, &qword_21796A8E0);
    v342 = v190;
    (*(v187 + 16))(v183, v186, v184);
    v343 = v183;
    *&v340 = v242;
    *(&v340 + 1) = v184;
    v323 = sub_217864DC0(&qword_27CB8A7B8, &qword_27CB8A6E0, &qword_21796A8E0, sub_217864C64);
    v324 = v185;
    v191 = v239;
    sub_2178B9390(&v342, 2, &v340);
    v188(v186, v184);
    sub_2178653BC(v189, &qword_27CB8A6E0, &qword_21796A8E0);
    (*(v282 + 8))(v299, v300);
    v192 = v184;
    v141 = v309;
    v188(v183, v192);
    v157 = v280;
    v193 = v190;
    v159 = v317;
    sub_2178653BC(v193, &qword_27CB8A6E0, &qword_21796A8E0);
    v161 = v315;
    v194 = v307;
    (*(v240 + 32))(v315, v191, v307);
    __swift_storeEnumTagSinglePayload(v161, 0, 1, v194);
  }

  swift_getWitnessTable();
  sub_2178AEE20(v161, v314);
  v301 = *(v305 + 8);
  (v301)(v161, v306);
  v195 = v290;
  v196 = v281;
  sub_217858578();
  v197 = v284;
  sub_21796894C();
  (v157)(v196, v159);
  v198 = v285;
  if (__swift_getEnumTagSinglePayload(v197, 1, v285) == 1)
  {
    sub_2178653BC(v197, &qword_27CB8A770, &qword_21796A948);
    v199 = v288;
    __swift_storeEnumTagSinglePayload(v288, 1, 1, v195);
    swift_getWitnessTable();
  }

  else
  {
    v200 = v245;
    v201 = v141;
    v202 = v244;
    (*(v245 + 32))(v244, v197, v198);
    v203 = v310;
    v204 = sub_2178586AC();
    v206 = v205;
    v207 = v243;
    (*(v200 + 16))(v243, v202, v198);
    v342 = *(v201 + *(v203 + 64));
    sub_217863EC4(v342);
    sub_21796680C();
    v224 = v159;
    v208 = v248;
    sub_2178B0304(v204, v206, v207, &v342, 11, 0, 1, v248, v209, v224, v316, v311, v308);
    (*(v200 + 8))(v202, v198);
    swift_getWitnessTable();
    v210 = v247;
    sub_2179560E4();
    v211 = v249;
    v212 = *(v249 + 8);
    v212(v208, v195);
    sub_2179560E4();
    v212(v210, v195);
    v199 = v288;
    (*(v211 + 32))(v288, v208, v195);
    __swift_storeEnumTagSinglePayload(v199, 0, 1, v195);
  }

  v213 = v287;
  sub_2178AEE20(v199, v287);
  v214 = v286;
  v317 = *(v286 + 8);
  v215 = v289;
  (v317)(v199, v289);
  v216 = v313;
  v217 = v304;
  (*(v302 + 16))(v313, v312, v304);
  v342 = v216;
  v218 = v315;
  v219 = v306;
  (*(v305 + 16))(v315, v314, v306);
  v343 = v218;
  (*(v214 + 16))(v199, v213, v215);
  v344 = v199;
  *&v340 = v217;
  *(&v340 + 1) = v219;
  v341 = v215;
  v323 = v276;
  v322 = swift_getWitnessTable();
  v324 = swift_getWitnessTable();
  v321 = swift_getWitnessTable();
  v325 = swift_getWitnessTable();
  sub_2178B9390(&v342, 3, &v340);
  v220 = v317;
  (v317)(v213, v215);
  v221 = v301;
  (v301)(v314, v219);
  v222 = v277;
  v277(v312, v217);
  v220(v199, v215);
  v221(v315, v219);
  return v222(v313, v217);
}

uint64_t sub_21785FD10(uint64_t a1)
{
  v64 = a1;
  v51 = sub_21796852C();
  v61 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2179688CC();
  v62 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_217968A2C();
  v63 = *(v58 - 8);
  v4 = MEMORY[0x28223BE20](v58);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = &v44 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A820, &qword_21796A9C0);
  MEMORY[0x28223BE20](v69);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_2179689AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v65 = v1;
  sub_217858578();
  sub_21796897C();
  (*(v14 + 8))(v16, v13);
  if (__swift_getEnumTagSinglePayload(v12, 1, v17) == 1)
  {
    sub_2178653BC(v12, &qword_27CB8A720, &unk_21796A910);
    return 4;
  }

  else
  {
    (*(v18 + 32))(v20, v12, v17);
    v45 = v18;
    (*(v18 + 16))(v9, v20, v17);
    v22 = *(v69 + 36);
    v23 = sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB8]);
    v24 = v62;
    v25 = v23;
    v44 = v20;
    sub_2179692AC();
    v68 = (v63 + 32);
    v69 = (v63 + 16);
    v67 = (v63 + 88);
    v66 = *MEMORY[0x277CD8368];
    v49 = (v63 + 8);
    v59 = (v63 + 96);
    v48 = (v61 + 32);
    v55 = *MEMORY[0x277CD8350];
    v47 = (v61 + 8);
    v54 = (v24 + 32);
    v53 = (v24 + 8);
    v26 = 4;
    v27 = v58;
    v62 = v17;
    v63 = v6;
    v60 = v25;
    v61 = v22;
    while (2)
    {
      v46 = v26;
      do
      {
        while (1)
        {
          while (1)
          {
            sub_2179692EC();
            if (*&v9[v22] == v71[0])
            {
              sub_2178653BC(v9, &qword_27CB8A820, &qword_21796A9C0);
              (*(v45 + 8))(v44, v17);
              return v46;
            }

            v28 = sub_21796934C();
            v29 = v70;
            (*v69)(v70);
            v28(v71, 0);
            sub_2179692FC();
            (*v68)(v6, v29, v27);
            v30 = (*v67)(v6, v27);
            if (v30 != v66)
            {
              break;
            }

            (*v59)(v6, v27);
            v32 = v56;
            v31 = v57;
            (*v54)(v56, v6, v57);
            _s9ViewModelCMa(0, *(v64 + 16), *(v64 + 24), v33);
            swift_getWitnessTable();
            sub_217966A9C();
            sub_217863A38(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
            sub_2178E0BC8();
            v35 = v34;

            v17 = v62;
            v6 = v63;
            v22 = v61;
            sub_217966A9C();
            sub_2178E1804();
            v37 = v36;

            v38 = v31;
            v27 = v58;
            (*v53)(v32, v38);
            if (v35)
            {
              goto LABEL_13;
            }
          }

          if (v30 == v55)
          {
            break;
          }

          (*v49)(v6, v27);
        }

        (*v59)(v6, v27);
        v39 = v50;
        v40 = v51;
        (*v48)(v50, v6, v51);
        _s9ViewModelCMa(0, *(v64 + 16), *(v64 + 24), v41);
        swift_getWitnessTable();
        sub_217966A9C();
        sub_217863A38(&qword_27CB8A828, MEMORY[0x277CD7E58], &unk_21797167C);
        sub_2178E0BC8();
        v52 = v42;

        v22 = v61;
        v17 = v62;
        sub_217966A9C();
        v6 = v63;
        sub_2178E1804();
        v37 = v43;

        (*v47)(v39, v40);
      }

      while ((v52 & 1) == 0);
LABEL_13:
      v26 = 1;
      if (v37)
      {
        continue;
      }

      break;
    }

    sub_2178653BC(v9, &qword_27CB8A820, &qword_21796A9C0);
    (*(v45 + 8))(v44, v17);
    return 0;
  }
}

uint64_t sub_21786068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v36 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = (&v36 - v11);
  v12 = sub_2179689AC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v20 = _s15AlbumDetailViewVMa(0, a2, a3, v19);
  _s9ViewModelCMa(0, a2, a3, v21);
  swift_getWitnessTable();
  sub_217966A9C();
  sub_217858578();
  sub_217863A38(&qword_27CB8A6D0, MEMORY[0x277CD82C8], &unk_217971698);
  sub_2178E2AD0(v18, v12);
  LOBYTE(a3) = v22;

  v23 = *(v13 + 8);
  v23(v18, v12);
  if ((a3 & 1) == 0)
  {
    if (sub_217858A4C(v20) >= 1)
    {
      sub_217858578();
      v28 = v38;
      sub_21796897C();
      v23(v16, v12);
      v29 = v39;
      if (__swift_getEnumTagSinglePayload(v28, 1, v39) != 1)
      {
        v31 = v36;
        v30 = v37;
        (*(v37 + 32))(v36, v28, v29);
        v32 = sub_217858A4C(v20);
        sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB8]);
        sub_2179692AC();
        sub_2179692EC();
        v33 = sub_2179692DC();
        v34 = v41;
        sub_21791E5A8(v32, v33, v41);
        v35 = _s5AlertVMa(0);
        __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
        sub_217864D70(v34, v40, &qword_27CB8A578, &qword_21796A750);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
        sub_217967C2C();
        sub_2178653BC(v34, &qword_27CB8A578, &qword_21796A750);
        return (*(v30 + 8))(v31, v29);
      }

      sub_2178653BC(v28, &qword_27CB8A720, &unk_21796A910);
    }

    return sub_217860C40(v20);
  }

  if (qword_27CB8A430 != -1)
  {
    swift_once();
  }

  v24 = _s5AlertVMa(0);
  v25 = __swift_project_value_buffer(v24, qword_27CB97AA8);
  v26 = v41;
  sub_217864EC8(v25, v41);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v24);
  sub_217864D70(v26, v40, &qword_27CB8A578, &qword_21796A750);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  sub_217967C2C();
  return sub_2178653BC(v26, &qword_27CB8A578, &qword_21796A750);
}

uint64_t sub_217860C40(uint64_t a1)
{
  v63 = a1;
  v52 = sub_21796852C();
  v60 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2179688CC();
  v59 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217968A2C();
  v53 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v44 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A820, &qword_21796A9C0);
  MEMORY[0x28223BE20](v57);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A720, &unk_21796A910);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_2179689AC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  v62 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v64 = v1;
  sub_217858578();
  sub_21796897C();
  (*(v15 + 8))(v17, v14);
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    return sub_2178653BC(v13, &qword_27CB8A720, &unk_21796A910);
  }

  v22 = v62;
  (*(v62 + 32))(v20, v13, v18);
  v23 = sub_21785FD10(v63);
  if (v23 == 4)
  {
    return (*(v22 + 8))(v20, v18);
  }

  v58 = v23 != 0;
  (*(v22 + 16))(v10, v20, v18);
  v24 = *(v57 + 36);
  sub_217864B2C(&qword_27CB8A768, &qword_27CB8A6E8, &qword_21796A8E8, MEMORY[0x277CD7CB8]);
  sub_2179692AC();
  v56 = (v53 + 4);
  v57 = (v53 + 2);
  v55 = (v53 + 11);
  HIDWORD(v54) = *MEMORY[0x277CD8368];
  v53 += 12;
  v48 = (v60 + 32);
  HIDWORD(v47) = *MEMORY[0x277CD8350];
  v46 = (v60 + 8);
  v45 = (v59 + 32);
  v44 = (v59 + 8);
  v59 = v20;
  v60 = v4;
  while (1)
  {
    while (1)
    {
      sub_2179692EC();
      if (*&v10[v24] == v65[0])
      {
        sub_2178653BC(v10, &qword_27CB8A820, &qword_21796A9C0);
        return (*(v22 + 8))(v20, v18);
      }

      v25 = sub_21796934C();
      v26 = v61;
      (*v57)(v61);
      v25(v65, 0);
      sub_2179692FC();
      (*v56)(v7, v26, v4);
      v27 = (*v55)(v7, v4);
      if (v27 != HIDWORD(v54))
      {
        break;
      }

      (*v53)(v7, v4);
      v29 = v49;
      v28 = v50;
      (*v45)(v49, v7, v50);
      _s9ViewModelCMa(0, *(v63 + 16), *(v63 + 24), v30);
      swift_getWitnessTable();
      v20 = v59;
      sub_217966A9C();
      v31 = sub_217863A38(&qword_27CB8A830, MEMORY[0x277CD8238], &unk_217971AF0);
      sub_2178E1B6C(v29, 11, v58, v28, v31, v32, v33, v34, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);

      v35 = v29;
      v4 = v60;
      (*v44)(v35, v28);
      v22 = v62;
    }

    if (v27 != HIDWORD(v47))
    {
      break;
    }

    (*v53)(v7, v4);
    v37 = v51;
    v36 = v52;
    (*v48)(v51, v7, v52);
    _s9ViewModelCMa(0, *(v63 + 16), *(v63 + 24), v38);
    swift_getWitnessTable();
    sub_217966A9C();
    v39 = sub_217863A38(&qword_27CB8A828, MEMORY[0x277CD7E58], &unk_21797167C);
    sub_2178E1B6C(v37, 11, v58, v36, v39, v40, v41, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);

    v43 = v37;
    v4 = v60;
    (*v46)(v43, v36);
    v22 = v62;
    v20 = v59;
  }

  result = sub_21796959C();
  __break(1u);
  return result;
}

uint64_t sub_2178614E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v5 = _s15AlbumDetailViewVMa(0, a2, a3, a4);
  v41 = *(v5 - 8);
  v39 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v37 - v8;
  v9 = _s5AlertVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A818, &qword_21796F490);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v37 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  v44 = a1;
  sub_217967C1C();
  if (qword_27CB8A430 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v9, qword_27CB97AA8);
  sub_217864EC8(v24, v21);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v9);
  v25 = *(v12 + 48);
  sub_217864D70(v23, v14, &qword_27CB8A578, &qword_21796A750);
  sub_217864D70(v21, &v14[v25], &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(v14, 1, v9) != 1)
  {
    sub_217864D70(v14, v18, &qword_27CB8A578, &qword_21796A750);
    if (__swift_getEnumTagSinglePayload(&v14[v25], 1, v9) != 1)
    {
      sub_217865358(&v14[v25], v11);
      sub_21791EA90();
      v28 = v27;
      sub_217865300(v11, _s5AlertVMa);
      sub_2178653BC(v21, &qword_27CB8A578, &qword_21796A750);
      sub_2178653BC(v23, &qword_27CB8A578, &qword_21796A750);
      sub_217865300(v18, _s5AlertVMa);
      sub_2178653BC(v14, &qword_27CB8A578, &qword_21796A750);
      if (v28)
      {
        goto LABEL_11;
      }

      return sub_217860C40(v5);
    }

    sub_2178653BC(v21, &qword_27CB8A578, &qword_21796A750);
    sub_2178653BC(v23, &qword_27CB8A578, &qword_21796A750);
    sub_217865300(v18, _s5AlertVMa);
LABEL_8:
    sub_2178653BC(v14, &qword_27CB8A818, &qword_21796F490);
    return sub_217860C40(v5);
  }

  sub_2178653BC(v21, &qword_27CB8A578, &qword_21796A750);
  sub_2178653BC(v23, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(&v14[v25], 1, v9) != 1)
  {
    goto LABEL_8;
  }

  sub_2178653BC(v14, &qword_27CB8A578, &qword_21796A750);
LABEL_11:
  v29 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v29);
  v31 = v40;
  v30 = v41;
  (*(v41 + 16))(v40, v44, v5);
  sub_21796920C();
  v32 = sub_2179691FC();
  v33 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  *(v34 + 2) = v32;
  *(v34 + 3) = v35;
  v36 = v43;
  *(v34 + 4) = v42;
  *(v34 + 5) = v36;
  (*(v30 + 32))(&v34[v33], v31, v5);
  sub_2178D2328();
}

uint64_t sub_217861A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_21796920C();
  v6[6] = sub_2179691FC();
  v8 = sub_2179691BC();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_217861B04, v8, v7);
}

uint64_t sub_217861B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v6 = v4[5];
  _s15AlbumDetailViewVMa(0, v5, v6, a4);
  _s9ViewModelCMa(0, v5, v6, v7);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  v4[9] = sub_217966A9C();
  v8 = swift_task_alloc();
  v4[10] = v8;
  *v8 = v4;
  v8[1] = sub_217861BF8;

  return sub_2178E2CD0(v9);
}

uint64_t sub_217861BF8(uint64_t a1)
{
  v3 = *v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v2;
  v3[11] = v1;

  if (v1)
  {

    v5 = v3[7];
    v6 = v3[8];
    v7 = sub_2178655CC;
  }

  else
  {

    v5 = v3[7];
    v6 = v3[8];
    v7 = sub_217861D38;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_217861D38()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  *v2 = v1 != 0;
  OUTLINED_FUNCTION_39();

  return v3();
}

uint64_t sub_217861DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v129 = a5;
  v124 = a4;
  v145 = a3;
  v155 = a2;
  v159 = a1;
  v153 = a6;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7D0, &qword_21796A978);
  MEMORY[0x28223BE20](v144);
  v146 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7D8, &unk_21796A980);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v123 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v154 = &v121 - v13;
  MEMORY[0x28223BE20](v12);
  v143 = &v121 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  MEMORY[0x28223BE20](v142);
  v158 = &v121 - v15;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E0, &unk_21796B170);
  v16 = MEMORY[0x28223BE20](v150);
  v148 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v147 = &v121 - v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6F0, &qword_21796A8F0);
  v19 = MEMORY[0x28223BE20](v149);
  v152 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v151 = &v121 - v21;
  v127 = sub_21796722C();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v23 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_217968A2C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s14AlbumTrackCellVMa(0, a4, a5, v28);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v121 - v31;
  WitnessTable = swift_getWitnessTable();
  v163 = v29;
  v164 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v130 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v36 = &v121 - v35;
  sub_21796732C();
  v131 = OpaqueTypeMetadata2;
  v37 = sub_21796698C();
  v134 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v132 = &v121 - v38;
  v128 = v39;
  v40 = sub_21796698C();
  v135 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v133 = &v121 - v41;
  v136 = v42;
  v140 = sub_21796698C();
  v156 = *(v140 - 8);
  v43 = MEMORY[0x28223BE20](v140);
  v139 = &v121 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v157 = &v121 - v45;
  v122 = v25;
  v46 = *(v25 + 16);
  v141 = v24;
  v138 = v25 + 16;
  v137 = v46;
  v46(v27, v159, v24);
  v47 = v124;
  v48 = v129;
  v125 = _s15AlbumDetailViewVMa(0, v124, v129, v49);
  v50 = v155 + *(v125 + 72);
  v52 = *(v50 + 8);
  v51 = *(v50 + 16);
  v53 = *(v50 + 24);
  LOBYTE(v163) = *v50;
  v164 = v52;
  v165 = v51;
  v166 = v53;

  sub_217863EC4(v53);
  v121 = v27;
  sub_2178FFABC(&v163, v32, v47, v48);
  sub_21796720C();
  v129 = v36;
  sub_2179678AC();
  (*(v126 + 8))(v23, v127);
  (*(v30 + 8))(v32, v29);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v55 = *(&xmmword_27CB979C8 + 1);
  v54 = xmmword_27CB979C8;
  v56 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;

  v58 = sub_217968A0C();
  *(inited + 72) = MEMORY[0x277CD7E90];
  *(inited + 48) = v58;
  *(inited + 56) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v60 = sub_217968EAC();
  v163 = v54;
  v164 = v55;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6172546D75626C61, 0xEA00000000006B63);

  sub_2178ED924(v60, v163, v164, v56);
  v62 = v61;
  v64 = v63;
  v66 = v65;

  v163 = v29;
  v164 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v132;
  v69 = v62;
  v70 = v131;
  v71 = v129;
  sub_2178ED854(v69, v64, v66, v131, OpaqueTypeConformance2);

  (*(v130 + 8))(v71, v70);
  sub_21796742C();
  v72 = sub_217863A38(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v162[6] = OpaqueTypeConformance2;
  v162[7] = v72;
  v73 = v128;
  v74 = swift_getWitnessTable();
  v75 = v133;
  sub_217967A0C();
  (*(v134 + 8))(v68, v73);
  sub_21796743C();
  v76 = MEMORY[0x277CDF918];
  v162[4] = v74;
  v162[5] = MEMORY[0x277CDF918];
  v77 = v136;
  v78 = swift_getWitnessTable();
  v79 = v139;
  sub_217967A0C();
  (*(v135 + 8))(v75, v77);
  v162[2] = v78;
  v162[3] = v76;
  v80 = v140;
  v135 = swift_getWitnessTable();
  sub_2179560E4();
  v81 = *(v156 + 8);
  v155 = v156 + 8;
  v136 = v81;
  v81(v79, v80);
  v82 = v158;
  sub_217967D6C();
  LOBYTE(v71) = sub_21796742C();
  sub_21796660C();
  v83 = v82 + *(v142 + 36);
  *v83 = v71;
  *(v83 + 8) = v84;
  *(v83 + 16) = v85;
  *(v83 + 24) = v86;
  *(v83 + 32) = v87;
  *(v83 + 40) = 0;
  v88 = v143;
  v89 = v141;
  v137(v143, v159, v141);
  v90 = __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
  v91 = v154;
  sub_2178D2640(v90, v92, v93, v94, v95, v96, v97, v98, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
  v99 = *(v144 + 48);
  v100 = v146;
  sub_217864D70(v88, v146, &qword_27CB8A7D8, &unk_21796A980);
  sub_217864D70(v91, v100 + v99, &qword_27CB8A7D8, &unk_21796A980);
  v101 = v79;
  if (__swift_getEnumTagSinglePayload(v100, 1, v89) == 1)
  {
    sub_2178653BC(v91, &qword_27CB8A7D8, &unk_21796A980);
    sub_2178653BC(v88, &qword_27CB8A7D8, &unk_21796A980);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v100 + v99, 1, v89);
    v103 = v157;
    if (EnumTagSinglePayload == 1)
    {
      sub_2178653BC(v100, &qword_27CB8A7D8, &unk_21796A980);
      v104 = 0.0;
      goto LABEL_13;
    }

LABEL_8:
    sub_2178653BC(v100, &qword_27CB8A7D0, &qword_21796A978);
    v104 = 1.0;
    goto LABEL_13;
  }

  v105 = v89;
  v106 = v123;
  sub_217864D70(v100, v123, &qword_27CB8A7D8, &unk_21796A980);
  if (__swift_getEnumTagSinglePayload(v100 + v99, 1, v105) == 1)
  {
    sub_2178653BC(v154, &qword_27CB8A7D8, &unk_21796A980);
    sub_2178653BC(v88, &qword_27CB8A7D8, &unk_21796A980);
    (*(v122 + 8))(v106, v105);
    v103 = v157;
    goto LABEL_8;
  }

  v107 = v122;
  v108 = v100 + v99;
  v109 = v121;
  (*(v122 + 32))(v121, v108, v105);
  sub_217863A38(&qword_27CB8A808, MEMORY[0x277CD83B8], MEMORY[0x277CD83D0]);
  LODWORD(v159) = sub_217968F1C();
  v110 = *(v107 + 8);
  v110(v109, v105);
  sub_2178653BC(v154, &qword_27CB8A7D8, &unk_21796A980);
  v101 = v79;
  sub_2178653BC(v88, &qword_27CB8A7D8, &unk_21796A980);
  v110(v106, v105);
  sub_2178653BC(v100, &qword_27CB8A7D8, &unk_21796A980);
  if (v159)
  {
    v104 = 0.0;
  }

  else
  {
    v104 = 1.0;
  }

  v103 = v157;
LABEL_13:
  v111 = v156;
  v112 = v148;
  sub_217864D20(v158, v148, &qword_27CB8A780, &qword_21796C770);
  v113 = v150;
  *(v112 + *(v150 + 36)) = v104;
  v114 = v112;
  v115 = v147;
  sub_217864D20(v114, v147, &qword_27CB8A7E0, &unk_21796B170);
  v116 = v115;
  v117 = v151;
  sub_217864D20(v116, v151, &qword_27CB8A7E0, &unk_21796B170);
  __swift_storeEnumTagSinglePayload(v117, 0, 1, v113);
  (*(v111 + 16))(v101, v103, v80);
  v163 = v101;
  v118 = v152;
  sub_217864D70(v117, v152, &qword_27CB8A6F0, &qword_21796A8F0);
  v164 = v118;
  v162[0] = v80;
  v162[1] = v149;
  v160 = v135;
  v161 = sub_217864DC0(&qword_27CB8A7F8, &qword_27CB8A6F0, &qword_21796A8F0, sub_217864E3C);
  sub_2178B9390(&v163, 2, v162);
  sub_2178653BC(v117, &qword_27CB8A6F0, &qword_21796A8F0);
  v119 = v136;
  v136(v103, v80);
  sub_2178653BC(v118, &qword_27CB8A6F0, &qword_21796A8F0);
  return v119(v101, v80);
}

uint64_t sub_217862EF8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v6);
}

uint64_t sub_217862FA0()
{
  sub_21796973C();
  sub_217862EF8();
  return sub_21796977C();
}

BOOL sub_217862FE8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_217862E8C(v7, v8);
}

uint64_t sub_2178630B0(uint64_t a1)
{
  sub_21796973C();
  sub_217862EF8();
  return sub_21796977C();
}

uint64_t sub_217863114(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_217863128(uint64_t a1, id *a2)
{
  result = sub_217968F4C();
  *a2 = 0;
  return result;
}

uint64_t sub_2178631A0(uint64_t a1, id *a2)
{
  v3 = sub_217968F5C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_217863278@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_217865594(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2178632A8()
{
  v0 = sub_217968F6C();
  v1 = MEMORY[0x21CEA7F80](v0);

  return v1;
}

uint64_t sub_2178632E8(uint64_t a1, uint64_t a2)
{
  sub_217968F6C();
  sub_217968FCC();
}

uint64_t sub_217863344(uint64_t a1, uint64_t a2)
{
  sub_217968F6C();
  sub_21796973C();
  sub_217968FCC();
  v2 = sub_21796977C();

  return v2;
}

uint64_t sub_2178633E4(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError, &unk_21796A608);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_217863450(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError, &unk_21796A608);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2178634BC(void *a1, uint64_t a2)
{
  v4 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError, &unk_21796A608);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_217863554(uint64_t a1, uint64_t a2)
{
  v4 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError, &unk_21796A608);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2178635D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21796973C();
  sub_217968ECC();
  return sub_21796977C();
}

uint64_t sub_21786363C(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A528, type metadata accessor for AVError, &unk_21796A5C4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2178636A8(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A528, type metadata accessor for AVError, &unk_21796A5C4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_217863718(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError, &unk_21796A608);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_217863784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217863A38(&qword_27CB8A560, type metadata accessor for AVError, &unk_21796A608);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_217863814@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_217968F2C();

  *a2 = v3;
  return result;
}

uint64_t sub_21786385C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217863888(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21786388C(uint64_t a1)
{
  v2 = sub_217863A38(&qword_27CB8A858, type metadata accessor for Key, &unk_21796AB30);
  v3 = sub_217863A38(&qword_27CB8A860, type metadata accessor for Key, &unk_21796AA84);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_217863980(uint64_t a1, int a2)
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

uint64_t sub_2178639A0(uint64_t result, int a2, int a3)
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

uint64_t sub_217863A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_217863A94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217863AB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_217863D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8A550;
  if (!qword_27CB8A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A550);
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

unint64_t sub_217863EC4(unint64_t result)
{
  v1 = result >> 61;
  if (!(result >> 61) || v1 == 2 || v1 == 1)
  {
  }

  return result;
}

void sub_217863EF0(uint64_t a1)
{
  sub_21786415C(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    _s9ViewModelCMa(255, v4, v5, v2);
    swift_getWitnessTable();
    sub_217966ADC();
    if (v6 <= 0x3F)
    {
      sub_2178641FC(319, &qword_27CB8A628, &qword_27CB8A630, qword_21796A7B0, MEMORY[0x277CDF468]);
      if (v7 <= 0x3F)
      {
        sub_2178641FC(319, &qword_27CB8A638, &qword_27CB8A578, &qword_21796A750, MEMORY[0x277CE10B8]);
        if (v8 <= 0x3F)
        {
          sub_2178641FC(319, &qword_27CB8A640, &qword_27CB8A590, &unk_21796A790, MEMORY[0x277CE10B8]);
          if (v9 <= 0x3F)
          {
            sub_21786546C(319, qword_27CB8A648, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v11 <= 0x3F)
            {
              _s15AlbumDetailViewV9ConstantsVMa(319, v4, v5, v10);
              if (v12 <= 0x3F)
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

void sub_21786415C(uint64_t a1)
{
  if (!qword_27CB8A620)
  {
    sub_2179689AC();
    v1 = sub_217967C4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8A620);
    }
  }
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

void sub_2178641FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_217864278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2178642D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2178642F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_21786438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8A700;
  if (!qword_27CB8A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A700);
  }

  return result;
}

unint64_t sub_2178643E0(unint64_t result)
{
  v1 = result >> 61;
  if (!(result >> 61) || v1 == 2 || v1 == 1)
  {
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

uint64_t sub_217864450()
{
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_45();
  v8 = _s15AlbumDetailViewVMa(v4, v5, v6, v7);
  OUTLINED_FUNCTION_48(v8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v0[2];
  v12 = v0[3];
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_217864540;

  return sub_21785A884(v11, v12, v0 + v10, v2, v3);
}

uint64_t sub_217864540()
{
  OUTLINED_FUNCTION_62();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_39();

  return v3();
}

unint64_t sub_217864644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8A718;
  if (!qword_27CB8A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A718);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_217864714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OUTLINED_FUNCTION_50(a1, a2, a3, a4);
  OUTLINED_FUNCTION_48(v9);
  v11 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_21785C740(v4, v11, v7, v8, v6);
}

uint64_t objectdestroy_42Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s15AlbumDetailViewVMa(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_13();
  v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  sub_2179689AC();
  OUTLINED_FUNCTION_3();
  (*(v10 + 8))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);

  OUTLINED_FUNCTION_74();
  sub_2178643E0(*(v6 + 24));

  v11 = v9 + v4[12];
  if (*(v11 + 40))
  {
    if (*(v11 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
  }

  v12 = v9 + v4[13];
  v13 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_71(v13))
  {

    v14 = v12 + *(v7 + 24);
    v15 = _s5AlertV7ControlVMa(0);
    if (!OUTLINED_FUNCTION_56(v14))
    {

      v16 = *(v15 + 20);
      v17 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_51(v17))
      {
        OUTLINED_FUNCTION_10();
        (*(v18 + 8))(v14 + v26, v16);
      }
    }

    v19 = v12 + *(v7 + 28);
    if (!OUTLINED_FUNCTION_56(v19))
    {

      v20 = *(v15 + 20);
      v21 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_56(v19 + v20))
      {
        OUTLINED_FUNCTION_10();
        (*(v22 + 8))(v19 + v20, v21);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);

  v23 = v9 + v4[14];

  sub_2178643E0(*(v9 + v4[16]));
  OUTLINED_FUNCTION_74();
  sub_2178643E0(*(v23 + 24));
  v24 = v9 + v4[18];

  sub_2178643E0(*(v24 + 24));

  return swift_deallocObject();
}

uint64_t sub_217864AA0(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_45();
  v5 = _s15AlbumDetailViewVMa(v1, v2, v3, v4);
  OUTLINED_FUNCTION_48(v5);
  OUTLINED_FUNCTION_45();

  return a1();
}

uint64_t sub_217864B2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_217864B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(OUTLINED_FUNCTION_50(a1, a2, a3, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E8, &qword_21796A8E8);
  OUTLINED_FUNCTION_48(v12);
  v14 = v5 + ((v10 + v11 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_217861DA4(v4, v5 + v10, v14, v7, v8, v6);
}

unint64_t sub_217864C64()
{
  result = qword_27CB8A7C0;
  if (!qword_27CB8A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A780, &qword_21796C770);
    sub_217863A38(&qword_27CB8A7C8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A7C0);
  }

  return result;
}

uint64_t sub_217864D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_69(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_217864D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_69(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_217864DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_217864E3C()
{
  result = qword_27CB8A800;
  if (!qword_27CB8A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A7E0, &unk_21796B170);
    sub_217864C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A800);
  }

  return result;
}

uint64_t sub_217864EC8(uint64_t a1, uint64_t a2)
{
  v4 = _s5AlertVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s15AlbumDetailViewVMa(0, *(v5 + 32), *(v5 + 40), a4);
  OUTLINED_FUNCTION_13();
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  v10 = v5 + v9;
  sub_2179689AC();
  OUTLINED_FUNCTION_3();
  (*(v11 + 8))(v5 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A580, &unk_21796A780);

  OUTLINED_FUNCTION_74();
  sub_2178643E0(*(v6 + 24));

  v12 = v5 + v9 + v4[12];
  if (*(v12 + 40))
  {
    if (*(v12 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
  }

  v13 = v10 + v4[13];
  v14 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_71(v14))
  {

    v15 = v13 + *(v7 + 24);
    v16 = _s5AlertV7ControlVMa(0);
    if (!OUTLINED_FUNCTION_56(v15))
    {

      v17 = *(v16 + 20);
      v18 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_51(v18))
      {
        OUTLINED_FUNCTION_10();
        (*(v19 + 8))(v15 + v27, v17);
      }
    }

    v20 = v13 + *(v7 + 28);
    if (!OUTLINED_FUNCTION_56(v20))
    {

      v21 = *(v16 + 20);
      v22 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_56(v20 + v21))
      {
        OUTLINED_FUNCTION_10();
        (*(v23 + 8))(v20 + v21, v22);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);

  v24 = v10 + v4[14];

  sub_2178643E0(*(v10 + v4[16]));
  OUTLINED_FUNCTION_74();
  sub_2178643E0(*(v24 + 24));
  v25 = v10 + v4[18];

  sub_2178643E0(*(v25 + 24));

  return swift_deallocObject();
}

uint64_t sub_2178651F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = _s15AlbumDetailViewVMa(0, v7, v8, a4);
  OUTLINED_FUNCTION_48(v9);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_2178655D0;

  return sub_217861A68(a1, v12, v13, v4 + v11, v7, v8);
}

uint64_t sub_217865300(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_217865358(uint64_t a1, uint64_t a2)
{
  v4 = _s5AlertVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178653BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_21786546C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_217865594(uint64_t a1)
{
  sub_217968F6C();
  v1 = sub_217968F2C();

  return v1;
}

uint64_t OUTLINED_FUNCTION_11()
{
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CD7CB8];

  return sub_217864B2C(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_35()
{
  v3 = (v0 + *(v1 + 60));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v2 + 80) = v4;
  *(v2 + 88) = v5;
  *(v2 + 384) = 0;
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_38()
{
  v3 = (v2 + *(v1 + 60));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 128) = v4;
  *(v0 + 136) = v5;
  *(v0 + 385) = 0;
}

__n128 OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2)
{
  v5 = (v4 + *(v3 + 56));
  v6 = v5[1].n128_u64[0];
  result = *v5;
  *(v2 + 56) = *v5;
  *(v2 + 72) = v6;
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_21796560C();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);

  return _s15AlbumDetailViewVMa(0, v6, v7, a4);
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_57(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, os_log_type_t a13)
{

  _os_log_impl(a1, v13, a13, a4, v14, 0x16u);
}

id OUTLINED_FUNCTION_58()
{
  *(v3 + 4) = v1;
  *(v3 + 12) = 2082;
  *(v2 + 144) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_68(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_2179692DC();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_72()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

void OUTLINED_FUNCTION_73()
{

  JUMPOUT(0x21CEA8ED0);
}

uint64_t OUTLINED_FUNCTION_74()
{
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1)
{

  return swift_getTupleTypeMetadata2();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_217865D20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_217865D60(uint64_t result, int a2, int a3)
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

uint64_t sub_217865DCC@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A868, &qword_21796AC08);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A870, &qword_21796AC10);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  sub_2179671BC();
  KeyPath = swift_getKeyPath();
  v17 = &v11[*(v9 + 44)];
  *v17 = KeyPath;
  *(v17 + 1) = 0;
  v17[16] = 0;
  if (a1)
  {
    v18 = a3;
  }

  else
  {
    v18 = a2;
  }

  v19 = swift_getKeyPath();
  sub_217865F54(v11, v15, &qword_27CB8A868, &qword_21796AC08);
  v20 = &v15[*(v13 + 44)];
  *v20 = v19;
  v20[1] = v18;
  sub_217865F54(v15, a4, &qword_27CB8A870, &qword_21796AC10);
}

uint64_t sub_217865F54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_217865FBC()
{
  result = qword_27CB8A878;
  if (!qword_27CB8A878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A870, &qword_21796AC10);
    sub_217866060();
    sub_21786615C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A878);
  }

  return result;
}

unint64_t sub_217866060()
{
  result = qword_27CB8A880;
  if (!qword_27CB8A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A868, &qword_21796AC08);
    sub_217866104();
    sub_21786615C(&qword_27CB8A890, &qword_27CB8A898, &unk_21796ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A880);
  }

  return result;
}

unint64_t sub_217866104()
{
  result = qword_27CB8A888;
  if (!qword_27CB8A888)
  {
    sub_2179671AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A888);
  }

  return result;
}

uint64_t sub_21786615C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_2178661B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v5 = v4;
  v76 = v6;
  v78 = v8;
  v79 = v7;
  v10 = v9;
  v82 = v11;
  v13 = v12;
  v83 = sub_217968E3C();
  OUTLINED_FUNCTION_2();
  v81 = v14;
  MEMORY[0x28223BE20](v15);
  v77 = v16;
  v80 = &v75[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_48(v17);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v18);
  v20 = &v75[-v19];
  v21 = *v10;
  v23 = *(v10 + 1);
  v22 = *(v10 + 2);
  v24 = *(v10 + 3);
  OUTLINED_FUNCTION_59_0();
  _s9ViewModelCMa(v25, v26, v27, v28);
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  *v13 = sub_217966ACC();
  *(v13 + 8) = v29;
  *(v13 + 16) = swift_getKeyPath();
  *(v13 + 56) = 0;
  OUTLINED_FUNCTION_59_0();
  *(v13 + 88) = sub_2178665F4(v30, v31, v32, v33);
  *(v13 + 96) = v34;
  *(v13 + 104) = sub_217866640(4);
  *(v13 + 112) = v35;
  *(v13 + 120) = sub_217866640(4);
  *(v13 + 128) = v36;
  OUTLINED_FUNCTION_59_0();
  v41 = _s18PlaylistDetailViewVMa(v37, v38, v39, v40);
  v42 = _s5AlertVMa(0);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v42);
  sub_2178666A4(v20);
  v43 = v13 + v41[15];
  *v43 = sub_21786675C(0, 0xE000000000000000, 0, v5, v3);
  *(v43 + 8) = v44;
  *(v43 + 16) = v45 & 1;
  *(v43 + 24) = v46;
  v47 = v13 + v41[22];
  *v47 = 2000;
  *(v47 + 8) = xmmword_21796A2F0;
  *(v47 + 24) = xmmword_21796A300;
  *(v47 + 40) = 0;
  *(v13 + v41[16]) = v76;
  v48 = v13 + v41[18];
  *v48 = v21;
  *(v48 + 8) = v23;
  *(v48 + 16) = v22;
  *(v48 + 24) = v24;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
  v50 = swift_allocBox();
  v52 = v51;
  v53 = v51 + *(v49 + 48);
  (*(v81 + 16))(v51, v82, v83);
  v54 = *MEMORY[0x277D2A440];
  sub_21796595C();
  OUTLINED_FUNCTION_3();
  (*(v55 + 104))(v52, v54);
  *v53 = v21;
  *(v53 + 8) = v23;
  *(v53 + 16) = v22;
  *(v53 + 24) = v24;
  v56 = v50 | 0x2000000000000000;
  v57 = v41[17];
  *(v13 + v57) = v50 | 0x2000000000000000;
  v58 = v13 + v41[19];
  *v58 = 0;
  *(v58 + 8) = 0;
  *(v58 + 16) = 0;
  *(v58 + 24) = v50 | 0x2000000000000000;
  v59 = *(v13 + v57);
  v60 = v13 + v41[20];
  *v60 = 1;
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  *(v60 + 24) = v59;

  sub_217863EC4(v24);
  sub_217863EC4(v56);
  sub_217863EC4(v59);
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  OUTLINED_FUNCTION_87();
  v61 = sub_21796560C();
  v62 = (v13 + v41[21]);
  *v62 = v61;
  v62[1] = v63;
  v64 = v82;
  sub_217938214(v61);
  v66 = v78 & 1;
  if (v79)
  {
    v66 = 2;
  }

  if (v65)
  {
    v67 = v66;
  }

  else
  {
    v67 = 2;
  }

  v68 = v80;
  v69 = v81 + 32;
  v70 = *(v81 + 32);
  v71 = v83;
  v70(v80, v64, v83);
  v72 = (*(v69 + 48) + 16) & ~*(v69 + 48);
  v73 = v72 + v77;
  v74 = swift_allocObject();
  v70((v74 + v72), v68, v71);
  *(v74 + v73) = v67;
  *(v13 + 64) = sub_217873498;
  *(v13 + 72) = v74;
  *(v13 + 80) = 0;
  OUTLINED_FUNCTION_80();
}