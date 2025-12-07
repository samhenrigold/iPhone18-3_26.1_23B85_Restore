void sub_18F337FB8()
{
  OUTLINED_FUNCTION_90_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6420, &qword_18F558008);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_101();
  if ([v1 typeIdentifier])
  {
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    sub_18F0FECD4(v2, v18);
    sub_18F0FECD4(v18, v19);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
    v6 = OUTLINED_FUNCTION_86_8();
    v8 = OUTLINED_FUNCTION_62_9(v6, v7);
    if (v8)
    {
    }

    v19[0] = v8;
    sub_18F118710(v18, v20);
    v21 = sub_18F338208;
    v22 = 0;
    if (v8)
    {
      sub_18F0FECD4(v20, v18);
      v9 = OUTLINED_FUNCTION_47_16();
      if (OUTLINED_FUNCTION_62_9(v9, v10))
      {
        OUTLINED_FUNCTION_18_36();
        MEMORY[0x1EEE9AC00](v11);
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_72_9(v12);
        OUTLINED_FUNCTION_11_37();
        sub_18F3EC1D8();
        OUTLINED_FUNCTION_34_22();

        *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6430, &qword_18F558018);
        v13 = sub_18F338BD8();
        OUTLINED_FUNCTION_35_18(v13);
      }

      else
      {
        OUTLINED_FUNCTION_5_3();
      }
    }

    else
    {
      sub_18F338208(v20, v1);
      sub_18F520F2C();
      v14 = OUTLINED_FUNCTION_34_22();
      OUTLINED_FUNCTION_23_26(v14);
      if (v15)
      {
        sub_18F0FA038(v1, &qword_1EACD6420, &qword_18F558008);
        OUTLINED_FUNCTION_20_29();
      }

      else
      {
        *(v0 + 24) = v5;
        v16 = sub_18F10F9E4(&qword_1EACCDDC0);
        OUTLINED_FUNCTION_71_8(v16);
        OUTLINED_FUNCTION_31_0();
        (*(v17 + 32))();
      }
    }

    sub_18F0FA038(v19, &qword_1EACD6428, &qword_18F558010);
  }
}

void sub_18F338208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v5);
  sub_18F5223AC();
  if (swift_dynamicCast())
  {
    sub_18F52238C();
  }

  else
  {
    v3 = sub_18F520F2C();
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v3);
  }
}

unint64_t sub_18F3382FC()
{
  result = qword_1EACD63C0;
  if (!qword_1EACD63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD63C0);
  }

  return result;
}

uint64_t sub_18F338350@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18F0FECD4(a1, &v13);
  sub_18F0FECD4(&v13, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
  v3 = OUTLINED_FUNCTION_29_31(&v16, v17);
  if (v3)
  {
  }

  v17[0] = v3;
  sub_18F118710(&v13, v18);
  v19 = sub_18F33852C;
  v20 = 0;
  if (!v3)
  {
    sub_18F33852C(v18, &v13);
    if (*(&v14 + 1))
    {
      a2[3] = &type metadata for AnyIntentValueRepresentation;
      a2[4] = sub_18F3382FC();
      OUTLINED_FUNCTION_75_6();
      v10 = swift_allocObject();
      *a2 = v10;
      v11 = v14;
      *(v10 + 16) = v13;
      *(v10 + 32) = v11;
      *(v10 + 48) = v15;
      return sub_18F0FA038(v17, &qword_1EACD6410, &qword_18F558000);
    }

    sub_18F0FA038(&v13, &qword_1EACD6408, &unk_18F562BF0);
LABEL_9:
    OUTLINED_FUNCTION_5_3();
    return sub_18F0FA038(v17, &qword_1EACD6410, &qword_18F558000);
  }

  sub_18F0FECD4(v18, &v13);
  v4 = OUTLINED_FUNCTION_29_31(&v16, &v13);
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_72_9(v5);
  v6 = OUTLINED_FUNCTION_11_37();
  sub_18F3EC228(v6, v7, v8);
  OUTLINED_FUNCTION_34_22();

  a2[3] = OUTLINED_FUNCTION_82_0();
  v9 = OUTLINED_FUNCTION_39_20(&unk_1EACD6418);
  OUTLINED_FUNCTION_35_18(v9);
  return sub_18F0FA038(v17, &qword_1EACD6410, &qword_18F558000);
}

double sub_18F33852C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v6);
  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  if (swift_dynamicCast())
  {
    LNValue.asPropertyType.getter();

    if (v5)
    {
      sub_18F0FD0B4(&v4, v6);
      sub_18F0FD0B4(v6, a2);
      return result;
    }

    sub_18F0FA038(&v4, &qword_1EACD0620, &unk_18F541850);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_18F338608@<X0>(void *a1@<X8>)
{
  if (![v1 typeIdentifier])
  {
    OUTLINED_FUNCTION_111_4();
    OUTLINED_FUNCTION_74_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10, &unk_18F557FD0);
    v3 = OUTLINED_FUNCTION_86_8();
    v5 = OUTLINED_FUNCTION_29_31(v3, v4);
    if (v5)
    {
    }

    OUTLINED_FUNCTION_73_4();
    v17[5] = sub_18F3387BC;
    v17[6] = 0;
    if (v5)
    {
      OUTLINED_FUNCTION_113_2();
      if (OUTLINED_FUNCTION_17_37())
      {
        OUTLINED_FUNCTION_18_36();
        MEMORY[0x1EEE9AC00](v6);
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_72_9(v7);
        v8 = OUTLINED_FUNCTION_11_37();
        sub_18F3EEBD0(v8, v9, v10);
        OUTLINED_FUNCTION_34_22();

        a1[3] = OUTLINED_FUNCTION_82_0();
        v11 = OUTLINED_FUNCTION_39_20(&unk_1EACD6400);
        OUTLINED_FUNCTION_35_18(v11);
        return sub_18F0FA038(v17, &qword_1EACD63F0, &qword_18F557FE8);
      }
    }

    else
    {
      v12 = OUTLINED_FUNCTION_101_8();
      sub_18F3387BC(v12, v13);
      if (v16)
      {
        a1[3] = &type metadata for StringSearchCriteria;
        a1[4] = sub_18F2063F0();
        *a1 = v15;
        a1[1] = v16;
        return sub_18F0FA038(v17, &qword_1EACD63F0, &qword_18F557FE8);
      }
    }

    OUTLINED_FUNCTION_5_3();
    return sub_18F0FA038(v17, &qword_1EACD63F0, &qword_18F557FE8);
  }

  type metadata accessor for LNSearchCriteriaValueTypeIdentifier(0);
  result = sub_18F522DFC();
  __break(1u);
  return result;
}

void sub_18F3387BC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18F0FECD4(a1, v8);
  sub_18F0F21A8(0, &qword_1EACD30E0, 0x1E69AC9F0);
  if (swift_dynamicCast())
  {
    v3 = [v7 term];
    v4 = sub_18F5218DC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_18F3388A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_18F0FECD4(a1, v8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430, &qword_18F5444A0);
  if (OUTLINED_FUNCTION_8_4(v3))
  {

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD63E0, &qword_18F557FE0);
    v5 = MEMORY[0x1E69E7CC0];
    result = sub_18F338A18();
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v4 = sub_18F0F21A8(0, qword_1EACCF090, 0x1E695DFB0);
    OUTLINED_FUNCTION_54_13();
    result = sub_18F33A774(v7);
  }

  a2[3] = v4;
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_18F338A18()
{
  result = qword_1EACD63E8;
  if (!qword_1EACD63E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD63E0, &qword_18F557FE0);
    sub_18F33A774(&unk_1EACD6398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD63E8);
  }

  return result;
}

uint64_t sub_18F338AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_18F339FD4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6858, &qword_18F558358);
  v4 = swift_task_localValuePush();
  a3(v4);
  return swift_task_localValuePop();
}

uint64_t sub_18F338B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6850, &qword_18F558350);
  swift_allocObject();
  result = sub_18F52304C();
  qword_1ED6FE030 = result;
  return result;
}

unint64_t sub_18F338BD8()
{
  result = qword_1EACD6438;
  if (!qword_1EACD6438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6430, &qword_18F558018);
    sub_18F10F9E4(&qword_1EACCDDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6438);
  }

  return result;
}

unint64_t sub_18F338C8C()
{
  result = qword_1EACD6510;
  if (!qword_1EACD6510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6508, &qword_18F5580E8);
    sub_18F33A008(&unk_1EACD6500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6510);
  }

  return result;
}

unint64_t sub_18F338D3C()
{
  result = qword_1EACD6530;
  if (!qword_1EACD6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6528, &unk_18F558100);
    sub_18F33A008(&unk_1EACD6520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6530);
  }

  return result;
}

unint64_t sub_18F338DEC()
{
  result = qword_1EACD6550;
  if (!qword_1EACD6550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6548, &qword_18F558118);
    sub_18F33A008(&unk_1EACD6540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6550);
  }

  return result;
}

unint64_t sub_18F338E9C()
{
  result = qword_1EACD6570;
  if (!qword_1EACD6570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6568, &unk_18F558130);
    sub_18F33A008(&unk_1EACD6560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6570);
  }

  return result;
}

unint64_t sub_18F338F4C()
{
  result = qword_1EACD6590;
  if (!qword_1EACD6590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6588, &qword_18F558148);
    sub_18F33A008(&unk_1EACD6580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6590);
  }

  return result;
}

unint64_t sub_18F338FFC()
{
  result = qword_1EACD65B0;
  if (!qword_1EACD65B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD65A8, &unk_18F558160);
    sub_18F33A008(&unk_1EACD65A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD65B0);
  }

  return result;
}

unint64_t sub_18F3390AC()
{
  result = qword_1EACD65D0;
  if (!qword_1EACD65D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD65C8, &qword_18F558178);
    sub_18F33A008(&unk_1EACD65C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD65D0);
  }

  return result;
}

unint64_t sub_18F33915C()
{
  result = qword_1EACD65F0;
  if (!qword_1EACD65F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD65E8, &unk_18F558190);
    sub_18F33A008(&unk_1EACD65E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD65F0);
  }

  return result;
}

unint64_t sub_18F33920C()
{
  result = qword_1EACD6610;
  if (!qword_1EACD6610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6608, &qword_18F5581A8);
    sub_18F33A008(&unk_1EACD6600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6610);
  }

  return result;
}

unint64_t sub_18F3392BC()
{
  result = qword_1EACD6630;
  if (!qword_1EACD6630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6628, &unk_18F5581C0);
    sub_18F33A008(&unk_1EACD6620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6630);
  }

  return result;
}

unint64_t sub_18F33936C()
{
  result = qword_1EACD6650;
  if (!qword_1EACD6650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6648, &qword_18F5581D8);
    sub_18F33A008(&unk_1EACD6640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6650);
  }

  return result;
}

unint64_t sub_18F33941C()
{
  result = qword_1EACD6670;
  if (!qword_1EACD6670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6668, &unk_18F5581F0);
    sub_18F33A008(&unk_1EACD6660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6670);
  }

  return result;
}

unint64_t sub_18F3394CC()
{
  result = qword_1EACD6690;
  if (!qword_1EACD6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6688, &qword_18F558208);
    sub_18F33A008(&unk_1EACD6680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6690);
  }

  return result;
}

unint64_t sub_18F33957C()
{
  result = qword_1EACD66B0;
  if (!qword_1EACD66B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD66A8, &unk_18F558220);
    sub_18F33A008(&unk_1EACD66A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD66B0);
  }

  return result;
}

unint64_t sub_18F33962C()
{
  result = qword_1EACD66D0;
  if (!qword_1EACD66D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD66C8, &qword_18F558238);
    sub_18F33A008(&unk_1EACD66C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD66D0);
  }

  return result;
}

unint64_t sub_18F3396DC()
{
  result = qword_1EACD66F0;
  if (!qword_1EACD66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD66E8, &unk_18F558250);
    sub_18F33A008(&unk_1EACD66E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD66F0);
  }

  return result;
}

unint64_t sub_18F33978C()
{
  result = qword_1EACD6710;
  if (!qword_1EACD6710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6708, &qword_18F558268);
    sub_18F33A008(&unk_1EACD6700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6710);
  }

  return result;
}

unint64_t sub_18F33983C()
{
  result = qword_1EACD6730;
  if (!qword_1EACD6730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6728, &unk_18F558280);
    sub_18F33A008(&unk_1EACD6720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6730);
  }

  return result;
}

unint64_t sub_18F3398EC()
{
  result = qword_1EACD6750;
  if (!qword_1EACD6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6748, &qword_18F558298);
    sub_18F33A008(&unk_1EACD6740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6750);
  }

  return result;
}

unint64_t sub_18F33999C()
{
  result = qword_1EACD6770;
  if (!qword_1EACD6770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6768, &unk_18F5582B0);
    sub_18F33A008(&unk_1EACD6760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6770);
  }

  return result;
}

unint64_t sub_18F339A4C()
{
  result = qword_1EACD6790;
  if (!qword_1EACD6790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6788, &qword_18F5582C8);
    sub_18F33A008(&unk_1EACD6780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6790);
  }

  return result;
}

unint64_t sub_18F339AFC()
{
  result = qword_1EACD67B0;
  if (!qword_1EACD67B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD67A8, &unk_18F5582E0);
    sub_18F33A008(&unk_1EACD67A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD67B0);
  }

  return result;
}

unint64_t sub_18F339BAC()
{
  result = qword_1EACD67D0;
  if (!qword_1EACD67D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD67C8, &qword_18F5582F8);
    sub_18F33A008(&unk_1EACD67C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD67D0);
  }

  return result;
}

unint64_t sub_18F339C5C()
{
  result = qword_1EACD67E0;
  if (!qword_1EACD67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD67E0);
  }

  return result;
}

unint64_t sub_18F339CB0()
{
  result = qword_1EACD6800;
  if (!qword_1EACD6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6800);
  }

  return result;
}

uint64_t sub_18F339D04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F3F04B8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_18F339D4C()
{
  result = qword_1EACD6820;
  if (!qword_1EACD6820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6820);
  }

  return result;
}

uint64_t sub_18F339DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F3EEEEC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_18F339DCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F32E0BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18F339DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F32E1B0(a1, MEMORY[0x1E69E63B0]);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18F339E2C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_18F339E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F32E1B0(a1, MEMORY[0x1E69E6530]);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18F339E9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18F32E210(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18F339EC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F3EEF68();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_18F339EF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F32E268(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_18F339F5C()
{
  result = qword_1ED6FE038;
  if (!qword_1ED6FE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE038);
  }

  return result;
}

uint64_t sub_18F339FD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

unint64_t sub_18F33A008(uint64_t a1)
{
  result = OUTLINED_FUNCTION_102_8(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18F33A06C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F33A0CC()
{
  result = qword_1EACD68E0;
  if (!qword_1EACD68E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD68D8, &qword_18F5583F0);
    sub_18F10F9E4(&qword_1EACD68D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD68E0);
  }

  return result;
}

unint64_t sub_18F33A180()
{
  result = qword_1EACD68F8;
  if (!qword_1EACD68F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD68F0, &qword_18F558400);
    sub_18F10F9E4(&qword_1EACD31D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD68F8);
  }

  return result;
}

unint64_t sub_18F33A234()
{
  result = qword_1EACD6908;
  if (!qword_1EACD6908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD14B0, &qword_18F558410);
    sub_18F10F9E4(&unk_1EACCE838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6908);
  }

  return result;
}

unint64_t sub_18F33A2E8()
{
  result = qword_1EACD6950;
  if (!qword_1EACD6950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6948, &qword_18F558440);
    sub_18F10F9E4(&qword_1EACD3E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6950);
  }

  return result;
}

uint64_t sub_18F33A39C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F33A3EC()
{
  result = qword_1EACD6960;
  if (!qword_1EACD6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6960);
  }

  return result;
}

unint64_t sub_18F33A440()
{
  result = qword_1EACD6988;
  if (!qword_1EACD6988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6980, &qword_18F558460);
    sub_18F10F9E4(&qword_1EACD5F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6988);
  }

  return result;
}

unint64_t sub_18F33A4F4()
{
  result = qword_1EACD69A0;
  if (!qword_1EACD69A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6998, &qword_18F558470);
    sub_18F10F9E4(&qword_1EACD1FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD69A0);
  }

  return result;
}

uint64_t sub_18F33A5A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_18F33A60C()
{
  result = qword_1EACD69E8;
  if (!qword_1EACD69E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD69E0, &qword_18F5584A0);
    sub_18F10F9E4(&qword_1EACD02A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD69E8);
  }

  return result;
}

unint64_t sub_18F33A6C0()
{
  result = qword_1EACD6A28;
  if (!qword_1EACD6A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6A20, &qword_18F5584D0);
    sub_18F10F9E4(&qword_1EACCDDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6A28);
  }

  return result;
}

unint64_t sub_18F33A774(uint64_t a1)
{
  result = OUTLINED_FUNCTION_102_8(a1);
  if (!result)
  {
    sub_18F0F21A8(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F33A7D0()
{
  result = qword_1EACD6A40;
  if (!qword_1EACD6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6A38, &qword_18F5584E0);
    sub_18F33A774(qword_1EACD3AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6A40);
  }

  return result;
}

unint64_t sub_18F33A880()
{
  result = qword_1EACD6A58;
  if (!qword_1EACD6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6A50, &qword_18F5584F0);
    sub_18F10F9E4(&qword_1EACCED48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6A58);
  }

  return result;
}

unint64_t sub_18F33A964(uint64_t a1)
{
  result = OUTLINED_FUNCTION_102_8(a1);
  if (!result)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    v6();
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F33A9CC()
{
  result = qword_1EACD6AB0;
  if (!qword_1EACD6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6AA8, &qword_18F558530);
    sub_18F10F9E4(qword_1EACCED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6AB0);
  }

  return result;
}

_BYTE *sub_18F33AAB8(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18F33AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18F33ABBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_18F33ABFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18F33AC4C()
{
  result = qword_1EACD6AC8[0];
  if (!qword_1EACD6AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD6AC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_11()
{

  return sub_18F0FECD4(v0 - 208, v0 - 136);
}

void OUTLINED_FUNCTION_93_7(uint64_t a1)
{

  sub_18F3AADAC(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_95_8(uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_97_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_111_4()
{

  return sub_18F0FECD4(v0, v1 - 136);
}

uint64_t sub_18F33AD80()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F33ADE0()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);

  return v1();
}

id sub_18F33AE40(uint64_t a1)
{
  sub_18F0FD724(a1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v7);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  DynamicType = swift_getDynamicType();
  v3 = v7[4];
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  v4 = *(a1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = sub_18F33AFF4(DynamicType, v3, v4);

  return v5;
}

void *sub_18F33AEF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F12DA08();
  if (result)
  {
    result = (*(v3 + 72))(&v5);
    v4 = v5;
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_18F33AF50()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
  }

  sub_18F12DB84(v0);
  v2 = v1;

  return v2;
}

id sub_18F33AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_1ED6FF6D8);
  }

  v5 = OUTLINED_FUNCTION_1_72();
  static AppIntent._identifier.getter(v5);
  sub_18F164DD4();
  v7 = v6;
  v29 = v3;

  v8 = OUTLINED_FUNCTION_1_72();
  sub_18F114CB8(v8);
  v9 = sub_18F5218AC();

  v33 = MEMORY[0x1E69E7CC0];
  v10 = *(a3 + 16);
  if (v10)
  {
    v28 = a3;
    v11 = a3 + 32;
    do
    {
      sub_18F139A94(v11, v32);
      v12 = __swift_project_boxed_opaque_existential_1Tm(v32, v32[3]);
      v20 = OUTLINED_FUNCTION_4_57(v12, v13, v14, v15, v16, v17, v18, v19, v26, v27, v28, v29, v30[0], v30[1], v31);
      sub_18F0EF148(v30, &qword_1EACD0620, &unk_18F541850);
      v21 = sub_18F13E500(v32);
      if (v20)
      {
        MEMORY[0x193ADB260](v21);
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F521D0C();
        }

        sub_18F521D6C();
      }

      v11 += 48;
      --v10;
    }

    while (v10);
  }

  else
  {
  }

  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, qword_1ED6FE8F8, 0x1E69AC948);
  v23 = sub_18F521C8C();

  v24 = [v22 initWithMetadata:v7 mangledName:v9 parameters:v23];

  return v24;
}

uint64_t sub_18F33B550()
{
  v1 = v0;
  type metadata accessor for AppManager();
  sub_18F3E6F18(v7);
  v2 = v7[0];
  v3 = v7[1];
  v11 = v8;
  sub_18F0EF148(&v11, &qword_1EACD4470, &unk_18F53FB60);
  v10 = v9;
  sub_18F0EF148(&v10, &unk_1EACCFDB0, &qword_18F543AE0);
  if (v3)
  {
    v4 = sub_18F5218AC();

    v5 = [v1 mangledTypeNameForBundleIdentifier_];

    v2 = sub_18F5218DC();
  }

  return v2;
}

id sub_18F33B63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  DynamicType = swift_getDynamicType();
  v8 = v20;
  v9 = v21;
  v10 = __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v11 = type metadata accessor for PreparedIntent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v10, v8);
  v15 = *(sub_18F1194F4(v13, MEMORY[0x1E69E7CC0], v8, v9) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v16 = sub_18F33AFF4(DynamicType, v9, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v16;
}

uint64_t sub_18F33B7EC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_18F521ACC();
  }

  else
  {
    return 0;
  }
}

double sub_18F33B850@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_18F0FD724(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18F33B874@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_18F33C18C(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v9);
}

double sub_18F33B930@<D0>(_OWORD *a1@<X8>)
{
  NSUserActivity.appEntityIdentifier.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_18F33B96C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v12[0] = *a1;
  v12[1] = v1;
  v12[2] = v2;
  v12[3] = v3;
  sub_18F1158E0(v12[0]);
  return NSUserActivity.appEntityIdentifier.setter(v12, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t NSUserActivity.appEntityIdentifier.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v13 = *a1;
  v8 = v13;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  sub_18F33BB00(&v13, a2, a3, a4, a5, a6, a7, a8);
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  sub_18F33BB98(&v13);

  return sub_18F184680(v8);
}

double _sSo14NSUserActivityC10AppIntentsE19appEntityIdentifierAC0fG0VSgvg_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  v11 = objc_getAssociatedObject(v9, &unk_1EAD0AC88);
  swift_endAccess();
  if (v11)
  {
    sub_18F52261C();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_18F106E70(v15);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = 0.0;
    *a9 = 0u;
    a9[1] = 0u;
  }

  return result;
}

uint64_t sub_18F33BB00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    v11 = *a1;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    a1 = sub_18F522E0C();
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  objc_setAssociatedObject(v8, &unk_1EAD0AC88, v9, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_18F33BB98(uint64_t *a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[2];
    v2 = a1[3];
    v4 = a1[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18F53F7E0;
    *(v5 + 32) = sub_18F27DB1C(v1, v4, v3, v2);
    v6 = objc_allocWithZone(MEMORY[0x1E69AD088]);
    v7 = sub_18F33C1F4(v5, MEMORY[0x1E69E7CC0]);
    v26[0] = 0;
    v8 = [objc_opt_self() archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v26];
    v9 = v26[0];
    if (v8)
    {
      v10 = sub_18F520D4C();
      v12 = v11;

      v13 = sub_18F520D2C();
      OUTLINED_FUNCTION_2_74();
      sub_18F33C294(v14, v15, v16, v17, v18);

      sub_18F123A1C(v10, v12);
    }

    else
    {
      v24 = v9;
      v25 = sub_18F520A8C();

      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_74();

    sub_18F33C294(v19, v20, v21, v22, v23);
  }
}

void (*NSUserActivity.appEntityIdentifier.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  _sSo14NSUserActivityC10AppIntentsE19appEntityIdentifierAC0fG0VSgvg_0(v3, v4, v5, v6, v7, v8, v9, v10, v3);
  return sub_18F33BDEC;
}

void sub_18F33BDEC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_92(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_1_73();
    sub_18F1158E0(v3);
    NSUserActivity.appEntityIdentifier.setter(v18, v4, v5, v6, v7, v8, v9, v10);
    sub_18F184680(*v1);
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    NSUserActivity.appEntityIdentifier.setter(v18, v11, v12, v13, v14, v15, v16, v17);
  }

  free(v1);
}

void (*sub_18F33BEA0(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = *v1;
  _sSo14NSUserActivityC10AppIntentsE19appEntityIdentifierAC0fG0VSgvg_0(v3, v4, v5, v6, v7, v8, v9, v10, v3);
  return sub_18F33BDEC;
}

void NSUserActivity._annotationIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = sub_18F33BFF8();
  if (v2)
  {
    v6 = v2;
    LNViewAnnotations.asViewAnnotationIdentifier()();
    v5 = v4;

    sub_18F33B874(v5, type metadata accessor for _ViewAnnotationIdentifier, type metadata accessor for _ViewAnnotationIdentifier, a1);
  }

  else
  {
    v3 = type metadata accessor for _ViewAnnotationIdentifier(0);

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_18F33BFF8()
{
  v1 = sub_18F33C318(0xD00000000000001ALL, 0x800000018F52A020, v0);
  if (v2 >> 60 == 15 || (v3 = v1, v4 = v2, sub_18F0F21A8(0, &qword_1EACD0540, 0x1E696ACD0), sub_18F0F21A8(0, &qword_1EACD0548, 0x1E69AD088), v10 = sub_18F5222FC(), sub_18F190748(v3, v4), !v10))
  {
    if (qword_1ED6FD658 != -1)
    {
      swift_once();
    }

    v5 = sub_18F52165C();
    __swift_project_value_buffer(v5, qword_1ED707698);
    v6 = sub_18F52163C();
    v7 = sub_18F52221C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_18F0E9000, v6, v7, "Failed to retrieve stored LNViewAnnotations from NSUserActivity payload", v8, 2u);
      MEMORY[0x193ADD350](v8, -1, -1);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_18F33C18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_18F33C1F4(uint64_t a1, uint64_t a2)
{
  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  v3 = sub_18F521C8C();

  v4 = sub_18F521C8C();

  v5 = [v2 initWithEntities:v3 intents:v4];

  return v5;
}

void sub_18F33C294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_18F5218AC();

  [a5 _setPayload_object_identifier_];
}

uint64_t sub_18F33C318(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_18F5218AC();

  v5 = [a3 _payloadForIdentifier_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_18F520D4C();

  return v6;
}

uint64_t sub_18F33C3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*(**a4)@<X0>(uint64_t (**a1)()@<X8>))()@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a2;
  *(v8 + 3) = a3;
  *(v8 + 4) = a1;
  v10[0] = a2;
  v10[1] = MEMORY[0x1E69E73E0];
  v10[2] = a3;
  v10[3] = MEMORY[0x1E69E7410];
  a4[3] = type metadata accessor for _AsyncIntentItemCollection(0, v10);
  OUTLINED_FUNCTION_0_93();
  a4[4] = swift_getWitnessTable();
  *a4 = sub_18F33D2AC;
  a4[1] = v8;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t _AsyncIntentItemCollection.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static _AsyncIntentItemCollection.defaultResolverSpecification.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  type metadata accessor for _AsyncIntentItemCollection(0, v4);
  OUTLINED_FUNCTION_0_93();
  swift_getWitnessTable();
  EmptyResolverSpecification.init()();
}

id static _AsyncIntentItemCollection<>.valueType.getter()
{
  OUTLINED_FUNCTION_5_53();
  v1 = v0();
  v2 = [objc_allocWithZone(MEMORY[0x1E69AC6F8]) initWithMemberValueType:v1 capabilities:3];

  return v2;
}

id _AsyncIntentItemCollection<>._asValue.getter(void *a1, uint64_t a2)
{
  type metadata accessor for AsyncIntentValueSequenceContainer(0);
  OUTLINED_FUNCTION_2_75();
  v4 = a1[2];
  sub_18F260338(&v8, v4, a1[3], a1[4]);
  v5 = (*(a2 + 8))(v4, a2);
  v6 = sub_18F260548(v5, 3);

  return v6;
}

uint64_t _AsyncIntentItemCollection<>.defaultDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DisplayRepresentation(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

id sub_18F33C724(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for AsyncIntentValueSequenceContainer(0);
  OUTLINED_FUNCTION_2_75();
  v6 = *(a1 + 16);
  sub_18F260338(&v10, v6, *(a1 + 24), *(*(a2 + 8) + 24));
  v7 = a3(v6, a2);
  v8 = sub_18F260548(v7, 3);

  return v8;
}

id sub_18F33C830()
{
  OUTLINED_FUNCTION_6_52();
  v1 = v0();
  v2 = [objc_allocWithZone(MEMORY[0x1E69AC6F8]) initWithMemberValueType:v1 capabilities:3];

  return v2;
}

id sub_18F33C888(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AsyncIntentValueSequenceContainer(0);
  OUTLINED_FUNCTION_2_75();
  v4 = *(a1 + 16);
  sub_18F260338(&v8, v4, *(a1 + 24), *(a2 + 8));
  v5 = static _IntentValueRepresentable.valueType.getter(v4, a2);
  v6 = sub_18F260548(v5, 3);

  return v6;
}

uint64_t (*sub_18F33C958())()
{
  OUTLINED_FUNCTION_3_57();
  v4 = swift_allocBox();
  (*(*(v1 - 8) + 32))(v5, v3, v1);
  OUTLINED_FUNCTION_4_58();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v0;
  v6[5] = v4;
  return sub_18F33D2A0;
}

uint64_t sub_18F33C9F8()
{
  swift_projectBox();
  swift_beginAccess();
  sub_18F52257C();
  return swift_endAccess();
}

uint64_t sub_18F33CA64(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F33CA84, 0, 0);
}

uint64_t sub_18F33CA84()
{
  (**(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F33CAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F33CB84;

  return sub_18F33CA64(a1);
}

uint64_t sub_18F33CB84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18F33CC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_18F33CD48;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_18F33CD48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t (*sub_18F33CE44@<X0>(uint64_t a2@<X2>, uint64_t (**a3)()@<X8>))()
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F521CBC();
  sub_18F521DBC();
  swift_getWitnessTable();
  sub_18F5229AC();
  swift_getWitnessTable();
  sub_18F33C958();
  v6 = v5;
  a3[3] = type metadata accessor for AsyncIteratorAdapter(0, a2, v7, v8);
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = sub_18F33D2A0;
  a3[1] = v6;
  return result;
}

uint64_t sub_18F33CF70()
{
  OUTLINED_FUNCTION_3_57();
  v5 = v4;
  OUTLINED_FUNCTION_4_58();
  v6 = swift_allocObject();
  *(v6 + 2) = v2;
  *(v6 + 3) = v1;
  *(v6 + 4) = v0;
  *(v6 + 5) = v3;
  v8[0] = v2;
  v8[1] = MEMORY[0x1E69E73E0];
  v9 = v1;
  v10 = MEMORY[0x1E69E7410];
  v5[3] = type metadata accessor for _AsyncIntentItemCollection(0, v8);
  OUTLINED_FUNCTION_0_93();
  v5[4] = swift_getWitnessTable();
  *v5 = sub_18F33D27C;
  v5[1] = v6;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t (*sub_18F33D01C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a4)()@<X8>))()
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18F52269C();
    sub_18F52205C();
  }

  else
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  sub_18F52206C();
  swift_getWitnessTable();
  sub_18F33C958();
  v7 = v6;
  a4[3] = type metadata accessor for AsyncIteratorAdapter(0, a2, v8, v9);
  result = swift_getWitnessTable();
  a4[4] = result;
  *a4 = sub_18F33D2A0;
  a4[1] = v7;
  return result;
}

uint64_t sub_18F33D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F33D1C8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18F33D21C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18F33D2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AppContext.fetchActionListenerEndpoint(for:auditToken:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F33D330, 0, 0);
}

uint64_t sub_18F33D330()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_18F33D42C;

  return sub_18F270870(&unk_18F558980, v3);
}

uint64_t sub_18F33D42C(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 128) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F33D574, 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(a1);
  }
}

uint64_t sub_18F33D574()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F33D5D0(uint64_t a1)
{
  *(v1 + 256) = a1;
  v2 = swift_task_alloc();
  *(v1 + 264) = v2;
  *v2 = v1;
  v2[1] = sub_18F33D690;

  return sub_18F1119D8();
}

uint64_t sub_18F33D690(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 272) = a1;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v5 + 280) = v11;
    *v11 = v7;
    v11[1] = sub_18F33D7F8;

    return sub_18F1316DC();
  }
}

uint64_t sub_18F33D7F8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F33DF54, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 296) = v7;
    *v7 = v5;
    v7[1] = sub_18F33D954;

    return sub_18F1321C4(0);
  }
}

uint64_t sub_18F33D954()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_18F33EE60;
  }

  else
  {
    v4 = sub_18F33DA5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_18F33DA5C()
{
  sub_18F0FD724(*(v0 + 272) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6BE8, &qword_18F5589D8);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
    AppIntent.lnAction.getter(v2, *(*(v1 + 8) + 8), (v0 + 216));
    sub_18F220C38();
    if (swift_dynamicCast())
    {
      *(v0 + 304) = *(v0 + 248);
      v3 = *(v0 + 40);
      v4 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v3);
      v9 = (*(v4 + 16) + **(v4 + 16));
      v5 = swift_task_alloc();
      *(v0 + 312) = v5;
      *v5 = v0;
      v5[1] = sub_18F33DCE4;

      return v9(v0 + 136, v3, v4);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_18F33EC1C(v0 + 96);
  }

  sub_18F33EC84();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F33DCE4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 320) = v0;

  if (v0)
  {
    v7 = sub_18F33DFB0;
  }

  else
  {
    v7 = sub_18F33DDE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F33DDE4()
{
  v1 = *(v0 + 152);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 192) = v1;
  *(v0 + 208) = *(v0 + 168);
  v2 = objc_opt_self();
  v3 = *(v0 + 200);
  *(v0 + 328) = *(v0 + 184);
  *(v0 + 344) = v3;
  v4 = [v2 if:v0 + 328 dataWithAuditToken:?];
  v5 = *(v0 + 304);
  if (v4)
  {
    v6 = v4;
    v7 = *(v0 + 256);
    sub_18F520D4C();

    v8 = objc_allocWithZone(type metadata accessor for XPCListenerEndpointContainer());
    v9 = XPCListenerEndpointContainer.init(listenerEndpoint:auditTokenData:resolvedAction:)();

    *v7 = v9;
  }

  else
  {
    sub_18F33EC84();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    sub_18F33ECD8(v0 + 176);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_71();

  return v10();
}

uint64_t sub_18F33DF54()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F33DFB0()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F33E020()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_18F0FC874;

  return sub_18F33D5D0(v2);
}

uint64_t sub_18F33E1BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void *a8)
{
  v8[2] = a1;
  v8[3] = a8;
  v8[4] = _Block_copy(aBlock);
  v16 = a1;
  v17 = a8;
  v18 = swift_task_alloc();
  v8[5] = v18;
  *v18 = v8;
  v18[1] = sub_18F33E2B4;

  return AppContext.fetchActionListenerEndpoint(for:auditToken:connectionIdentifier:)(v16, a2, a3, a4, a5, a6);
}

uint64_t sub_18F33E2B4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  OUTLINED_FUNCTION_39();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_18F520A7C();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

id XPCListenerEndpointContainer.listenerEndpoint.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___LNXPCListenerEndpointContainer_listenerEndpoint;
  OUTLINED_FUNCTION_8_44(a1);
  v3 = *(v1 + v2);

  return v3;
}

void XPCListenerEndpointContainer.listenerEndpoint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LNXPCListenerEndpointContainer_listenerEndpoint;
  OUTLINED_FUNCTION_99(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t XPCListenerEndpointContainer.auditTokenData.getter()
{
  v1 = v0 + OBJC_IVAR___LNXPCListenerEndpointContainer_auditTokenData;
  swift_beginAccess();
  v2 = *v1;
  sub_18F16AAE0(*v1, *(v1 + 8));
  return v2;
}

uint64_t XPCListenerEndpointContainer.auditTokenData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___LNXPCListenerEndpointContainer_auditTokenData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_18F123A1C(v6, v7);
}

id XPCListenerEndpointContainer.resolvedAction.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___LNXPCListenerEndpointContainer_resolvedAction;
  OUTLINED_FUNCTION_8_44(a1);
  v3 = *(v1 + v2);

  return v3;
}

void XPCListenerEndpointContainer.resolvedAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LNXPCListenerEndpointContainer_resolvedAction;
  OUTLINED_FUNCTION_99(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id XPCListenerEndpointContainer.init(listenerEndpoint:auditTokenData:resolvedAction:)()
{
  OUTLINED_FUNCTION_6_53();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___LNXPCListenerEndpointContainer_listenerEndpoint] = v4;
  v6 = &v1[OBJC_IVAR___LNXPCListenerEndpointContainer_auditTokenData];
  *v6 = v3;
  *(v6 + 1) = v2;
  *&v1[OBJC_IVAR___LNXPCListenerEndpointContainer_resolvedAction] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_18F33E998(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000002ELL;
  }
}

id XPCListenerEndpointContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCListenerEndpointContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18F33EB34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_18F0FC874;

  return sub_18F33E1BC(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18F33EC1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6BF0, &qword_18F5589E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18F33EC84()
{
  result = qword_1EACD6BF8;
  if (!qword_1EACD6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6BF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCListenerEndpointContainer.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F33EE0C()
{
  result = qword_1EACD6C00;
  if (!qword_1EACD6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6C00);
  }

  return result;
}

uint64_t DisplayRepresentation.init(SharedIndexedViewData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  sub_18F520ACC();
  v8 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = type metadata accessor for DisplayRepresentation(0);
  v13 = v12[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = a3 + v12[7];
  *v21 = xmmword_18F540410;
  *(a3 + v12[8]) = 0;
  *(a3 + v12[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v8);
  sub_18F190748(*v21, *(v21 + 8));
  *v21 = a1;
  *(v21 + 8) = a2;
  return sub_18F2608E8(v3, a3 + v13);
}

uint64_t DisplayRepresentation.init(sharedIndexedViewData:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for DisplayRepresentation(0);
  v11 = v10[5];
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = a5 + v10[7];
  *v20 = xmmword_18F540410;
  *(a5 + v10[8]) = 0;
  *(a5 + v10[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v12);
  sub_18F190748(*v20, *(v20 + 8));
  *v20 = a1;
  *(v20 + 8) = a2;
  (*(*(v12 - 8) + 32))(a5, a3, v12);

  return sub_18F2608E8(a4, a5 + v11);
}

uint64_t DisplayRepresentation.init(mangledViewName:viewCodableProxy:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for DisplayRepresentation(0);
  v12 = v11[5];
  v13 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = a6 + v11[7];
  *v21 = xmmword_18F540410;
  *(a6 + v11[8]) = 0;
  *(a6 + v11[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v13);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  sub_18F33F2C0(a3, &v31);
  v30[0] = a1;
  v30[1] = a2;
  sub_18F33F324();
  v25 = sub_18F52068C();
  v27 = v26;

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  sub_18F33F378(v30);
  sub_18F190748(*v21, *(v21 + 8));
  *v21 = v25;
  *(v21 + 8) = v27;
  (*(*(v13 - 8) + 32))(a6, a4, v13);
  return sub_18F2608E8(a5, a6 + v12);
}

_OWORD *ViewEncodable.init(mangledViewName:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  return sub_18F14B458(a3, (a4 + 16));
}

__n128 SharedIndexedViewFormatEncodable.init(viewEncodable:encodeDecodeStyle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_18F33F2C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18F33F324()
{
  result = qword_1EACCE7C0;
  if (!qword_1EACCE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE7C0);
  }

  return result;
}

uint64_t DisplayRepresentation.init(mangledViewName:viewCodableProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23();
  v10 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  sub_18F33F2C0(a3, v40);
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  v19 = type metadata accessor for DisplayRepresentation(0);
  v36 = v19[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
  type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = a4 + v19[7];
  *v27 = xmmword_18F540410;
  *(a4 + v19[8]) = 0;
  *(a4 + v19[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v10);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  sub_18F33F2C0(v40, &v39);
  v38[0] = a1;
  v38[1] = a2;
  sub_18F33F324();
  v31 = sub_18F52068C();
  v33 = v32;

  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  sub_18F33F378(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  sub_18F190748(*v27, *(v27 + 8));
  *v27 = v31;
  *(v27 + 8) = v33;
  (*(v12 + 32))(a4, v15, v10);
  return sub_18F2608E8(v4, a4 + v36);
}

AppIntents::ViewCodingKeys_optional __swiftcall ViewCodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 25705 && stringValue._object == 0xE200000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (OUTLINED_FUNCTION_5_54(25705, 0xE200000000000000) & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 2003134838 && object == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_54(2003134838, 0xE400000000000000);

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t ViewCodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 2003134838;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18F33F76C(uint64_t a1)
{
  v2 = sub_18F33F9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F33F7A8(uint64_t a1)
{
  v2 = sub_18F33F9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewEncodable.mangledViewName.getter()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t ViewEncodable.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C08, &qword_18F558AC8);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v10 = sub_18F33F9D0();
  OUTLINED_FUNCTION_7_3(&type metadata for ViewCodingKeys, v11, v10);
  LOBYTE(v13[0]) = 0;
  sub_18F522C3C();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  v14 = 1;
  sub_18F522BDC();
  __swift_project_boxed_opaque_existential_1Tm((v4 + 16), *(v4 + 40));
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_18F522CCC();
  (*(v8 + 8))(v3, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

unint64_t sub_18F33F9D0()
{
  result = qword_1ED6FB590;
  if (!qword_1ED6FB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FB590);
  }

  return result;
}

uint64_t sub_18F33FA44(uint64_t a1, uint64_t a2)
{
  if (a1 == 1852797802 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F522D5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18F33FAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F33FA44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F33FAFC(uint64_t a1)
{
  v2 = sub_18F33FDA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F33FB38(uint64_t a1)
{
  v2 = sub_18F33FDA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F33FB74(uint64_t a1)
{
  v2 = sub_18F33FDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F33FBB0(uint64_t a1)
{
  v2 = sub_18F33FDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EncodeDecodeStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C10, &qword_18F558AD0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C18, &qword_18F558AD8);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F33FDA4();
  sub_18F522FEC();
  sub_18F33FDF8();
  sub_18F522BEC();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

unint64_t sub_18F33FDA4()
{
  result = qword_1ED6FBB40;
  if (!qword_1ED6FBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB40);
  }

  return result;
}

unint64_t sub_18F33FDF8()
{
  result = qword_1ED6FBB28;
  if (!qword_1ED6FBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB28);
  }

  return result;
}

uint64_t EncodeDecodeStyle.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t EncodeDecodeStyle.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C20, &qword_18F558AE0);
  OUTLINED_FUNCTION_0();
  v38 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C28, &qword_18F558AE8);
  OUTLINED_FUNCTION_0();
  v39 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F33FDA4();
  sub_18F522FBC();
  if (v1)
  {
    goto LABEL_9;
  }

  v36 = v7;
  v37 = a1;
  v13 = sub_18F522BBC();
  result = sub_18F34062C(v13, 0);
  v18 = v12;
  if (v16 == v17 >> 1)
  {
    v38 = result;
LABEL_8:
    v29 = v8;
    v30 = v39;
    v31 = sub_18F52285C();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3598, &qword_18F558AF0);
    *v33 = &type metadata for EncodeDecodeStyle;
    sub_18F522B6C();
    sub_18F52284C();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v30 + 8))(v18, v29);
    a1 = v37;
LABEL_9:
    v34 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  if (v16 < (v17 >> 1))
  {
    v19 = sub_18F340678(v16 + 1, v17 >> 1, result, v15, v16, v17);
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = v21 == v23 >> 1;
    v25 = v37;
    v26 = v38;
    if (v24)
    {
      sub_18F33FDF8();
      v27 = v36;
      sub_18F522B5C();
      v28 = v39;
      swift_unknownObjectRelease();
      (*(v26 + 8))(v27, v3);
      (*(v28 + 8))(v18, v8);
      v34 = v25;
      return __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    v38 = v19;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

AppIntents::SharedIndexedViewFormatCodingKeys_optional __swiftcall SharedIndexedViewFormatCodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x61646F4377656976 && stringValue._object == 0xEB00000000656C62;
  if (v5 || (OUTLINED_FUNCTION_5_54(0x61646F4377656976, 0xEB00000000656C62) & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0xD000000000000011 && 0x800000018F52A230 == object)
  {

    v7 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_54(0xD000000000000011, 0x800000018F52A230);

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t SharedIndexedViewFormatCodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x61646F4377656976;
  }
}

uint64_t sub_18F3403C4(uint64_t a1)
{
  v2 = sub_18F3406F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F340400(uint64_t a1)
{
  v2 = sub_18F3406F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharedIndexedViewFormatEncodable.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6C30, &qword_18F558AF8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v8 = sub_18F3406F4();
  OUTLINED_FUNCTION_7_3(&type metadata for SharedIndexedViewFormatCodingKeys, v9, v8);
  sub_18F340748();
  sub_18F522C6C();
  if (!v1)
  {
    sub_18F34079C();
    sub_18F522C6C();
  }

  return (*(v6 + 8))(v2, v4);
}

void CSSearchableItemAttributeSet.displayRepresentation(displayRepresentation:)(uint64_t a1)
{
  v3 = type metadata accessor for DisplayRepresentation(0);
  v4 = 0;
  if (*(a1 + *(v3 + 28) + 8) >> 60 != 15)
  {
    v4 = sub_18F520D2C();
  }

  v5 = v4;
  [v1 setCachedViewDataSafe_];
}

uint64_t sub_18F34062C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_18F340678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_18F3406F4()
{
  result = qword_1ED6FB580;
  if (!qword_1ED6FB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FB580);
  }

  return result;
}

unint64_t sub_18F340748()
{
  result = qword_1ED6FB598[0];
  if (!qword_1ED6FB598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FB598);
  }

  return result;
}

unint64_t sub_18F34079C()
{
  result = qword_1ED6FB588;
  if (!qword_1ED6FB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FB588);
  }

  return result;
}

unint64_t sub_18F3407F4()
{
  result = qword_1EACD6C38;
  if (!qword_1EACD6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6C38);
  }

  return result;
}

unint64_t sub_18F34084C()
{
  result = qword_1ED6FBB48;
  if (!qword_1ED6FBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB48);
  }

  return result;
}

unint64_t sub_18F3408A4()
{
  result = qword_1ED6FBB50;
  if (!qword_1ED6FBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB50);
  }

  return result;
}

unint64_t sub_18F3408FC()
{
  result = qword_1EACD6C40;
  if (!qword_1EACD6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6C40);
  }

  return result;
}

unint64_t sub_18F340954()
{
  result = qword_1EACD6C48;
  if (!qword_1EACD6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6C48);
  }

  return result;
}

unint64_t sub_18F3409AC()
{
  result = qword_1ED6FBB58[0];
  if (!qword_1ED6FBB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6FBB58);
  }

  return result;
}

unint64_t sub_18F340A04()
{
  result = qword_1ED6FBB10;
  if (!qword_1ED6FBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB10);
  }

  return result;
}

_BYTE *sub_18F340A7C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F340B60(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F340C20()
{
  result = qword_1EACD6C50[0];
  if (!qword_1EACD6C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD6C50);
  }

  return result;
}

unint64_t sub_18F340C78()
{
  result = qword_1ED6FBB18;
  if (!qword_1ED6FBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB18);
  }

  return result;
}

unint64_t sub_18F340CD0()
{
  result = qword_1ED6FBB20;
  if (!qword_1ED6FBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB20);
  }

  return result;
}

unint64_t sub_18F340D28()
{
  result = qword_1ED6FBB30;
  if (!qword_1ED6FBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB30);
  }

  return result;
}

unint64_t sub_18F340D80()
{
  result = qword_1ED6FBB38;
  if (!qword_1ED6FBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBB38);
  }

  return result;
}

uint64_t EntityQueryProperty.__allocating_init(_:entityProvider:comparators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = swift_allocObject();
  EntityQueryProperty.init(_:entityProvider:comparators:)(a1, a2, a3, a4);
  return v9;
}

void *EntityQueryProperty.init(_:entityProvider:comparators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4;
  v4[6] = a3;
  v4[7] = a1;
  v4[5] = a2;
  v12 = v11;
  v13 = v10[20];
  *&v35 = swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();

  v27 = sub_18F52194C();
  v15 = v14;
  v40 = a4();
  v30 = *(v12 + 176);
  v31 = v10[24];
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v16 = v10[21];
  v17 = v10[25];
  v18 = *(v12 + 144);
  v29 = *(v12 + 144);
  v35 = v18;
  v19 = v18;
  v36 = v13;
  v37 = v16;
  v38 = v30;
  v39 = v17;
  type metadata accessor for AnyEntityQueryComparator(255, &v35);
  v20 = sub_18F521DBC();
  Comparator = type metadata accessor for AnyPropertyQueryComparator(0, v19, v30, v21);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_18F10C138(sub_18F34118C, v28, v20, Comparator, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v24);

  v5[2] = v27;
  v5[3] = v15;
  v5[4] = v25;
  return v5;
}

uint64_t sub_18F3410BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v6 = *a2;
  v16[6] = *a1;
  v17 = *(a1 + 8);
  v7 = (v6 + *MEMORY[0x1E69E77B0]);
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v8 + 80);
  v11 = *(v8 + 88);
  v16[0] = a3;
  v16[1] = v9;
  v16[2] = v8;
  v16[3] = v10;
  v16[4] = a4;
  v16[5] = v11;
  type metadata accessor for AnyEntityQueryComparator(0, v16);
  result = sub_18F1F48B0();
  *a5 = result;
  a5[1] = v13;
  a5[2] = v14;
  a5[3] = v15;
  return result;
}

uint64_t EntityQueryProperty.__allocating_init<>(_:comparators:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = swift_allocObject();
  v8 = *(v3 + 176);
  *(v7 + 24) = *(v3 + 160);
  *(v7 + 16) = *(v3 + 144);
  *(v7 + 40) = v8;
  *(v7 + 56) = *(v3 + 200);

  return EntityQueryProperty.__allocating_init(_:entityProvider:comparators:)(a1, sub_18F341258, v7, a2, a3);
}

uint64_t sub_18F34128C()
{
}

uint64_t EntityQueryProperty.deinit()
{
  EntityQueryPropertyDeclaration.deinit();

  return v0;
}

uint64_t EntityQueryPropertyDeclaration.deinit()
{

  return v0;
}

uint64_t EntityQueryProperty.__deallocating_deinit()
{
  EntityQueryProperty.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t EntityQueryPropertyDeclaration.__deallocating_deinit()
{
  EntityQueryPropertyDeclaration.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

void *sub_18F3414C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v55 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v55 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6D60, &qword_18F559370);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD6D68, &unk_18F559378) - 8);
  v7 = *v6;
  v56 = *(*v6 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v57 = v9;
  *(v9 + 16) = xmmword_18F541F50;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_18F520ACC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation(0);
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  v29 = v20[7];
  v55 = xmmword_18F540410;
  OUTLINED_FUNCTION_6_5(v29, xmmword_18F540410);
  *(v11 + v30) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v12);
  sub_18F0FF628(v5, v11 + v21, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0FF628(v2, v11 + v25, &qword_1EACD0270, &unk_18F5407C0);
  v34 = v10 + v56;
  v35 = v10 + v56 + v6[14];
  *v34 = 0;
  *(v34 + 8) = -127;
  OUTLINED_FUNCTION_2_76(0x6D53u);
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v12);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v16);
  v42 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v12);
  v46 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v16);
  OUTLINED_FUNCTION_6_5(v20[7], v55);
  *(v35 + v50) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v12);
  sub_18F0FF628(v5, v35 + v42, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0FF628(v2, v35 + v46, &qword_1EACD0270, &unk_18F5407C0);
  sub_18F3425B8();
  result = sub_18F5216CC();
  off_1ED6FE100 = result;
  return result;
}

_UNKNOWN **sub_18F341848()
{
  if (qword_1ED6FE0F8 != -1)
  {
    OUTLINED_FUNCTION_0_94(&qword_1ED6FE0F8);
  }

  return &off_1ED6FE100;
}

uint64_t static ResizeBehavior.caseDisplayRepresentations.getter()
{
  if (qword_1ED6FE0F8 != -1)
  {
    OUTLINED_FUNCTION_0_94(&qword_1ED6FE0F8);
  }

  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static ResizeBehavior.caseDisplayRepresentations.setter(void *a1)
{
  if (qword_1ED6FE0F8 != -1)
  {
    OUTLINED_FUNCTION_0_94(&qword_1ED6FE0F8);
  }

  swift_beginAccess();
  off_1ED6FE100 = a1;
}

uint64_t (*static ResizeBehavior.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED6FE0F8 != -1)
  {
    OUTLINED_FUNCTION_0_94(&qword_1ED6FE0F8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F3419D8@<X0>(void *a1@<X8>)
{
  sub_18F341848();
  swift_beginAccess();
  *a1 = off_1ED6FE100;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F341A2C(void **a1)
{
  v1 = *a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F341848();
  swift_beginAccess();
  off_1ED6FE100 = v1;
}

uint64_t ResizeBehavior.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[0] = 45;
  v33[1] = 0xE100000000000000;
  v32[2] = v33;
  v4 = sub_18F341E48(0x7FFFFFFFFFFFFFFFLL, 1, sub_18F16C86C, v32, a1, a2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v33[0] = MEMORY[0x1E69E7CC0];
    sub_18F3AA158(0, v5, 0);
    v6 = v33[0];
    v7 = (v4 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v12 = MEMORY[0x193ADAF70](v8, v9, v10, v11);
      v14 = v13;

      v33[0] = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_18F3AA158(v15 > 1, v16 + 1, 1);
        v6 = v33[0];
      }

      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v18 = v6[2];
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = OUTLINED_FUNCTION_2_76(0x6D73u);
  v20 = v6[4];
  v21 = v6[5];
  v22 = v20 == v19 && v21 == 0xE700000000000000;
  if (v22 || (sub_18F522D5C() & 1) != 0)
  {
    if (v18 == 2)
    {
      v23 = v6[6];
      v24 = v6[7];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      result = sub_18F27C7E8(v23, v24);
    }

    else
    {

      result = 0;
      v26 = 1;
    }

    v27 = v26 & 1 | 0x80;
    goto LABEL_28;
  }

  v28 = v20 == 0x72656772616CLL && v21 == 0xE600000000000000;
  if (!v28 && (sub_18F522D5C() & 1) == 0)
  {
LABEL_25:

    result = 0;
    v27 = -2;
    goto LABEL_28;
  }

  if (v18 == 2)
  {
    v29 = v6[6];
    v30 = v6[7];
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    result = sub_18F27C7E8(v29, v30);
  }

  else
  {

    result = 0;
    v31 = 1;
  }

  v27 = v31 & 1;
LABEL_28:
  *a3 = result;
  *(a3 + 8) = v27;
  return result;
}

uint64_t ResizeBehavior.rawValue.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 0)
  {
    result = OUTLINED_FUNCTION_2_76(0x6D73u);
    if (v3)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0x72656772616CLL;
  if ((v1 & 1) == 0)
  {
LABEL_5:
    OUTLINED_FUNCTION_5_9();
    MEMORY[0x193ADB000]();
    MEMORY[0x193ADB000](45, 0xE100000000000000);
    sub_18F52201C();
    return v4;
  }

  return result;
}

uint64_t sub_18F341E10@<X0>(uint64_t *a1@<X8>)
{
  result = ResizeBehavior.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18F341E48(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_18F521AFC();
    OUTLINED_FUNCTION_4_59();
    sub_18F167300();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_18F167300();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_58();
      v17 = sub_18F521ACC();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_3_58();
      v16 = sub_18F5219EC();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_18F521AFC();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F167300();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_18F167300();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_3_58();
    v16 = sub_18F5219EC();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_18F521AFC();
        OUTLINED_FUNCTION_4_59();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_18F167300();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18F3421E4()
{
  result = qword_1ED6FEC08;
  if (!qword_1ED6FEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC08);
  }

  return result;
}

unint64_t sub_18F342238()
{
  result = qword_1ED6FEBF0;
  if (!qword_1ED6FEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBF0);
  }

  return result;
}

unint64_t sub_18F34228C()
{
  result = qword_1ED6FEC20;
  if (!qword_1ED6FEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC20);
  }

  return result;
}

unint64_t sub_18F3422E0(uint64_t a1)
{
  result = sub_18F342308();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F342308()
{
  result = qword_1ED6FEC00;
  if (!qword_1ED6FEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC00);
  }

  return result;
}

unint64_t sub_18F34235C(uint64_t a1)
{
  result = sub_18F342384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F342384()
{
  result = qword_1ED6FEBF8;
  if (!qword_1ED6FEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBF8);
  }

  return result;
}

unint64_t sub_18F342428()
{
  result = qword_1ED6FEC10;
  if (!qword_1ED6FEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC10);
  }

  return result;
}

uint64_t sub_18F3424BC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_18F342510()
{
  result = qword_1ED6FEC38;
  if (!qword_1ED6FEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC38);
  }

  return result;
}

unint64_t sub_18F342564()
{
  result = qword_1ED6FEC18;
  if (!qword_1ED6FEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC18);
  }

  return result;
}

unint64_t sub_18F3425B8()
{
  result = qword_1ED6FEC30;
  if (!qword_1ED6FEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC30);
  }

  return result;
}

unint64_t sub_18F342610()
{
  result = qword_1ED6FEC28;
  if (!qword_1ED6FEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC28);
  }

  return result;
}

unint64_t sub_18F342668()
{
  result = qword_1ED6FE070;
  if (!qword_1ED6FE070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD6D58, &qword_18F559300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResizeBehavior(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for ResizeBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_18F52288C();
  result = sub_18F521D2C();
  *a4 = result;
  a4[1] = 0;
  a4[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = a1 + 2 * a2;
    if (!__OFADD__(a1, 2 * a2))
    {
      MEMORY[0x193ADAF90](result);
      sub_18F521DBC();
      return sub_18F521CFC();
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  sub_18F12A000();
  OUTLINED_FUNCTION_8_5();
  v1 = sub_18F5225CC();
  MEMORY[0x193ADB000](v1);
}

uint64_t IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_18F52288C();
  sub_18F521D7C();
  v4 = sub_18F522C9C();
  MEMORY[0x193ADB000](v4);

  OUTLINED_FUNCTION_39_13();
  MEMORY[0x193ADB000](0x656D617261707B24, 0xEB00000000726574);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
  swift_allocObject();
  v5 = sub_18F521CDC();
  *v6 = a1;
  sub_18F129FD4(v5, v3);

  sub_18F521D5C();
}

__n128 IntentURLRepresentation.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u8[8] = 0;
  return result;
}

uint64_t sub_18F342A58()
{
  OUTLINED_FUNCTION_69();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F29A528;

  return sub_18F342AFC(v2);
}

uint64_t sub_18F342AFC(uint64_t a1)
{
  v1[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  v1[15] = swift_task_alloc();
  v2 = sub_18F520C8C();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F342BF4, 0, 0);
}

uint64_t sub_18F342BF4()
{

  v22 = MEMORY[0x1E69E7CC0];
  MEMORY[0x193ADAF90](2);
  sub_18F206490();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 37;
  v0[5] = 0xE100000000000000;
  v0[6] = 9509;
  v0[7] = 0xE200000000000000;
  sub_18F12A000();
  OUTLINED_FUNCTION_8_5();
  v7 = OUTLINED_FUNCTION_38_11(v1, v2, v3, v4, v5, v6);
  MEMORY[0x193ADB000](v7);

  KeyPath = swift_getKeyPath();
  sub_18F2042DC(KeyPath, v9, v10, v11);

  v0[8] = 0;
  v0[10] = 37;
  v0[9] = 0xE000000000000000;
  v0[11] = 0xE100000000000000;
  v0[12] = 9509;
  v0[13] = 0xE200000000000000;
  OUTLINED_FUNCTION_8_5();
  v18 = OUTLINED_FUNCTION_38_11(v12, v13, v14, v15, v16, v17);
  MEMORY[0x193ADB000](v18);

  v0[19] = v22;
  v0[20] = 0xE000000000000000;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v19;
  *v19 = v20;
  v19[1] = sub_18F342DF0;

  return sub_18F2965CC();
}

uint64_t sub_18F342DF0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_18F342F0C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[15];
  v2 = v0[16];

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_18F0EF148(v0[15], &qword_1EACD0360, &qword_18F5407D0);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[16];
    (*(v4 + 32))(v3, v0[15], v5);
    type metadata accessor for AppIntentError(0);
    v6 = sub_18F2199DC();
    v7 = OUTLINED_FUNCTION_66_4(v6);
    v9 = OUTLINED_FUNCTION_29_32(v7, v8);
    v10(v9, v3, v5);
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
  }

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X1, X16 }
}

uint64_t URLRepresentableIntent.perform()()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  v0[2] = OUTLINED_FUNCTION_34_0();
  v1 = sub_18F520C8C();
  v0[3] = v1;
  OUTLINED_FUNCTION_51(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v3;
  *v3 = v4;
  v3[1] = sub_18F343190;
  OUTLINED_FUNCTION_37_3();

  return URLRepresentableIntent.urlRepresentation.getter();
}

uint64_t sub_18F343190()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_18F343274()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_18F0EF148(v1, &qword_1EACD0360, &qword_18F5407D0);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = v0[4];
    v3 = v0[5];
    (*(v4 + 32))(v3, v1, v2);
    type metadata accessor for AppIntentError(0);
    v5 = sub_18F2199DC();
    v6 = OUTLINED_FUNCTION_66_4(v5);
    v8 = OUTLINED_FUNCTION_29_32(v6, v7);
    v9(v8, v3, v2);
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v4 + 8))(v3, v2);
  }

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F3433D4()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 976) = v2;
  *(v1 + 968) = v3;
  *(v1 + 960) = v4;
  v5 = *v0;
  v6 = *(v0 + 8);
  *(v1 + 984) = *v0;
  *(v1 + 992) = v6;
  v7 = *(v0 + 16);
  *(v1 + 1000) = v7;
  v8 = *(v0 + 24);
  *(v1 + 1128) = v8;
  sub_18F29A670(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F343454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  switch(*(v16 + 1128))
  {
    case 1:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 1080) = v34;
      *v34 = v35;
      OUTLINED_FUNCTION_36_24(v34);
      goto LABEL_10;
    case 2:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 1096) = v30;
      *v30 = v31;
      OUTLINED_FUNCTION_36_24(v30);
      goto LABEL_10;
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 1104) = v32;
      *v32 = v33;
      OUTLINED_FUNCTION_36_24(v32);
      goto LABEL_10;
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v16 + 1120) = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_36_24(v28);
LABEL_10:
      OUTLINED_FUNCTION_28_2();

      result = sub_18F34589C(v36, v37);
      break;
    default:
      v17 = *(v16 + 1000);
      v18 = *(v16 + 976);
      *(v16 + 920) = *(v16 + 984);
      *(v16 + 1008) = *(v18 + 16);
      sub_18F52288C();
      v19 = sub_18F521DBC();
      *(v16 + 1016) = v19;
      WitnessTable = swift_getWitnessTable();
      *(v16 + 1024) = WitnessTable;
      MEMORY[0x193ADB130](v19, WitnessTable);

      *(v16 + 928) = *(v16 + 912);
      sub_18F522A8C();
      sub_18F522A5C();
      v21 = *(v16 + 992);
      while (1)
      {
        *(v16 + 1040) = v17;
        *(v16 + 1032) = v21;
        sub_18F522A7C();
        sub_18F522A6C();
        *(v16 + 1048) = *(v16 + 768);
        v22 = *(v16 + 776);
        *(v16 + 1056) = v22;
        if (!v22)
        {

          sub_18F520C6C();

          OUTLINED_FUNCTION_71();
          OUTLINED_FUNCTION_28_2();

          __asm { BRAA            X1, X16 }
        }

        swift_getAtPartialKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410, &qword_18F53FEC0);
        if (swift_dynamicCast())
        {
          break;
        }

        *(v16 + 720) = v21;
        *(v16 + 728) = v17;
        OUTLINED_FUNCTION_15_37();
        v23 = sub_18F522C9C();
        MEMORY[0x193ADB000](v23);

        OUTLINED_FUNCTION_39_13();
        v24 = *(v16 + 712);
        *(v16 + 688) = *(v16 + 704);
        *(v16 + 696) = v24;
        OUTLINED_FUNCTION_35_19();
        swift_getAtPartialKeyPath();
        sub_18F52299C();
        __swift_destroy_boxed_opaque_existential_1Tm((v16 + 608));
        v25 = *(v16 + 744);
        *(v16 + 752) = *(v16 + 736);
        *(v16 + 760) = v25;
        sub_18F12A000();
        OUTLINED_FUNCTION_26_33();
        OUTLINED_FUNCTION_8_5();
        v21 = sub_18F5225CC();
        v27 = v26;

        __swift_destroy_boxed_opaque_existential_1Tm((v16 + 576));
        v17 = v27;
      }

      sub_18F0FD0B4((v16 + 496), v16 + 536);
      OUTLINED_FUNCTION_49((v16 + 536));
      v42 = swift_task_alloc();
      *(v16 + 1064) = v42;
      *v42 = v16;
      OUTLINED_FUNCTION_10_40(v42);
      OUTLINED_FUNCTION_28_2();

      result = sub_18F345248(v43, v44, v45, v46);
      break;
  }

  return result;
}

uint64_t sub_18F3438EC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  v1[83] = v0;
  v1[84] = v3;
  v1[85] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v8 + 1072) = v7;

  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F3439DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 + 1072);
  if (v17)
  {
    v18 = *(v16 + 672);
    v19 = *(v16 + 1048);
    v20 = *(v16 + 1040);
    *(v16 + 848) = *(v16 + 1032);
    *(v16 + 856) = v20;
    *(v16 + 864) = 0x656D617261707B24;
    *(v16 + 872) = 0xEB00000000726574;
    *(v16 + 952) = v19;
    v21 = sub_18F522C9C();
    MEMORY[0x193ADB000](v21);

    OUTLINED_FUNCTION_39_13();
    v22 = *(v16 + 872);
    *(v16 + 880) = *(v16 + 864);
    *(v16 + 888) = v22;
    *(v16 + 896) = v18;
    *(v16 + 904) = v17;
    sub_18F12A000();
    OUTLINED_FUNCTION_8_5();
    v29 = OUTLINED_FUNCTION_38_11(v23, v24, v25, v26, v27, v28);
    v31 = v30;
  }

  else
  {
    v32 = *(v16 + 1048);
    v33 = *(v16 + 1040);
    *(v16 + 784) = *(v16 + 1032);
    *(v16 + 792) = v33;
    *(v16 + 800) = 0x656D617261707B24;
    *(v16 + 808) = 0xEB00000000726574;
    *(v16 + 944) = v32;
    v34 = sub_18F522C9C();
    MEMORY[0x193ADB000](v34);

    OUTLINED_FUNCTION_39_13();
    v35 = *(v16 + 808);
    *(v16 + 816) = *(v16 + 800);
    *(v16 + 824) = v35;
    *(v16 + 832) = 0x296C6C756E28;
    *(v16 + 840) = 0xE600000000000000;
    sub_18F12A000();
    OUTLINED_FUNCTION_8_5();
    v29 = OUTLINED_FUNCTION_38_11(v36, v37, v38, v39, v40, v41);
    v31 = v42;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v16 + 536));
  __swift_destroy_boxed_opaque_existential_1Tm((v16 + 576));
  while (1)
  {
    *(v16 + 1040) = v31;
    *(v16 + 1032) = v29;
    sub_18F522A7C();
    sub_18F522A6C();
    *(v16 + 1048) = *(v16 + 768);
    v43 = *(v16 + 776);
    *(v16 + 1056) = v43;
    if (!v43)
    {

      sub_18F520C6C();

      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_28_2();

      __asm { BRAA            X1, X16 }
    }

    swift_getAtPartialKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410, &qword_18F53FEC0);
    if (swift_dynamicCast())
    {
      break;
    }

    *(v16 + 720) = v29;
    *(v16 + 728) = v31;
    OUTLINED_FUNCTION_15_37();
    v44 = sub_18F522C9C();
    MEMORY[0x193ADB000](v44);

    OUTLINED_FUNCTION_39_13();
    v45 = *(v16 + 712);
    *(v16 + 688) = *(v16 + 704);
    *(v16 + 696) = v45;
    OUTLINED_FUNCTION_35_19();
    swift_getAtPartialKeyPath();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 608));
    v46 = *(v16 + 744);
    *(v16 + 752) = *(v16 + 736);
    *(v16 + 760) = v46;
    sub_18F12A000();
    OUTLINED_FUNCTION_26_33();
    OUTLINED_FUNCTION_8_5();
    v29 = OUTLINED_FUNCTION_38_11(v47, v48, v49, v50, v51, v52);
    v54 = v53;

    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 576));
    v31 = v54;
  }

  sub_18F0FD0B4((v16 + 496), v16 + 536);
  OUTLINED_FUNCTION_49((v16 + 536));
  v57 = swift_task_alloc();
  *(v16 + 1064) = v57;
  *v57 = v16;
  OUTLINED_FUNCTION_10_40(v57);
  OUTLINED_FUNCTION_28_2();

  return sub_18F345248(v58, v59, v60, v61);
}

uint64_t sub_18F343DF4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F343EF8()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 480))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2838, &qword_18F549298);
    if (swift_dynamicCast())
    {
      if (*(v0 + 440))
      {
        sub_18F0FD0B4((v0 + 416), v0 + 376);
        OUTLINED_FUNCTION_49((v0 + 376));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1088) = v1;
        *v1 = v2;
        v1[1] = sub_18F344088;
        OUTLINED_FUNCTION_6_54();

        return URLRepresentableEntity.urlRepresentation.getter(v3, v4, v5);
      }
    }

    else
    {
      *(v0 + 448) = 0;
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
    }
  }

  else
  {
    sub_18F0EF148(v0 + 456, &qword_1EACD0620, &unk_18F541850);
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0;
  }

  sub_18F0EF148(v0 + 416, &qword_1EACD2840, &qword_18F54F5F0);
  v7 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v7);

  return v8();
}

uint64_t sub_18F344088()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F34416C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F344270()
{
  OUTLINED_FUNCTION_21();
  v1 = (v0 + 296);
  if (*(v0 + 360))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4598, &qword_18F54F5E8);
    OUTLINED_FUNCTION_22_31();
    if (swift_dynamicCast())
    {
      if (*(v0 + 320))
      {
        v2 = *(v0 + 960);
        sub_18F0FD0B4((v0 + 296), v0 + 256);
        v3 = *(v0 + 280);
        v4 = *(v0 + 288);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v3);
        URLRepresentableEnum.urlRepresentation.getter(v3, v4, v2);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
        goto LABEL_8;
      }
    }

    else
    {
      *(v0 + 328) = 0;
      *v1 = 0u;
      *(v0 + 312) = 0u;
    }
  }

  else
  {
    sub_18F0EF148(v0 + 336, &qword_1EACD0620, &unk_18F541850);
    *v1 = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  v5 = *(v0 + 960);
  sub_18F0EF148(v0 + 296, &qword_1EACD4590, &qword_18F54F5E0);
  v6 = sub_18F520C8C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
LABEL_8:
  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t sub_18F3443D0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F3444D4()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 240))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4588, &qword_18F557440);
    OUTLINED_FUNCTION_38_20();
    if (swift_dynamicCast())
    {
      if (*(v0 + 200))
      {
        sub_18F0FD0B4((v0 + 176), v0 + 136);
        OUTLINED_FUNCTION_49((v0 + 136));
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 1112) = v1;
        *v1 = v2;
        v1[1] = sub_18F344650;
        OUTLINED_FUNCTION_6_54();

        return _URLRepresentableEntity.urlRepresentation.getter(v3, v4, v5);
      }
    }

    else
    {
      *(v0 + 208) = 0;
      OUTLINED_FUNCTION_61();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 216, &qword_1EACD0620, &unk_18F541850);
    OUTLINED_FUNCTION_61();
    *(v0 + 208) = 0;
  }

  sub_18F0EF148(v0 + 176, &qword_1EACD4580, &unk_18F54F5D0);
  v7 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v7);

  return v8();
}

uint64_t sub_18F344650()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F344734()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F344838()
{
  OUTLINED_FUNCTION_21();
  if (v0[15])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4578, &qword_18F54F5C8);
    OUTLINED_FUNCTION_37_23();
    if (swift_dynamicCast())
    {
      if (v0[10])
      {
        v1 = v0[120];
        OUTLINED_FUNCTION_41_17();
        v2 = v0[5];
        v3 = v0[6];
        __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
        _URLRepresentableEnum.urlRepresentation.getter(v2, v3, v1);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_32_3();
    }
  }

  else
  {
    sub_18F0EF148((v0 + 12), &qword_1EACD0620, &unk_18F541850);
    OUTLINED_FUNCTION_7_48();
  }

  sub_18F0EF148((v0 + 7), &qword_1EACD4570, &qword_18F54F5C0);
  sub_18F520C8C();
  v4 = OUTLINED_FUNCTION_1_74();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
LABEL_8:
  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F344970()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 448) = 0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_18F0EF148(v0 + 416, &qword_1EACD2840, &qword_18F54F5F0);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F3449F0()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 328) = 0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  sub_18F0EF148(v0 + 296, &qword_1EACD4590, &qword_18F54F5E0);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F344A70()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_18F0EF148(v0 + 176, &qword_1EACD4580, &unk_18F54F5D0);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

uint64_t sub_18F344AF4()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_18F0EF148(v0 + 56, &qword_1EACD4570, &qword_18F54F5C0);
  v1 = sub_18F520C8C();
  OUTLINED_FUNCTION_0_61(v1);

  return v2();
}

void sub_18F344B78(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_23_30(a1);
}

void sub_18F344B88(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_23_30(a1);
}

void sub_18F344B98(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_23_30(a1);
}

uint64_t URLRepresentableIntent.urlRepresentation.getter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_37(v1, v2);
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_37_3();
  v9 = type metadata accessor for _URLRepresentableIntentBox(v5, v6, v7, v8);
  v0[8] = v9;
  OUTLINED_FUNCTION_51(v9);
  v0[9] = v10;
  v0[10] = OUTLINED_FUNCTION_34_0();
  v11 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F344C94()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_17_38();
  v6(v5);
  (*(v2 + 32))(v1, v0, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 88) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_28_39(v7);
  OUTLINED_FUNCTION_31_9();

  return sub_18F346844(v9, v10);
}

uint64_t sub_18F344D64()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_18F344E48(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  OUTLINED_FUNCTION_23_30(a1);
}

uint64_t sub_18F344E58()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_18_37(v1, v2);
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_37_3();
  v9 = type metadata accessor for _AppIntentBox(v5, v6, v7, v8);
  v0[8] = v9;
  OUTLINED_FUNCTION_51(v9);
  v0[9] = v10;
  v0[10] = OUTLINED_FUNCTION_34_0();
  v11 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F344F44()
{
  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_17_38();
  v6(v5);
  (*(v2 + 32))(v1, v0, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 88) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_28_39(v7);
  OUTLINED_FUNCTION_31_9();

  return sub_18F346080(v9, v10);
}

uint64_t sub_18F345014()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F3450F8()
{
  OUTLINED_FUNCTION_69();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t IntentURLRepresentation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_18F52288C();
  result = sub_18F521D2C();
  *a4 = result;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
  return result;
}

double IntentURLRepresentation.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  IntentURLRepresentation.init(_:)(a1, a2, &v8);
  v5 = v9;
  v6 = v10;
  result = *&v8;
  *a4 = v8;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  return result;
}

uint64_t sub_18F345248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[32] = a2;
  v6 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F345274()
{
  v1 = *(*(v0 + 264) + 72);
  (v1)(*(v0 + 256));
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27D0, qword_18F548C30);
    OUTLINED_FUNCTION_37_23();
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        OUTLINED_FUNCTION_41_17();
        __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
        OUTLINED_FUNCTION_21_29();
        v2 = swift_task_alloc();
        *(v0 + 280) = v2;
        *v2 = v0;
        v3 = OUTLINED_FUNCTION_27_33(v2);

        return v4(v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_32_3();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 96, &qword_1EACD0620, &unk_18F541850);
    OUTLINED_FUNCTION_7_48();
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 256);
  sub_18F0EF148(v0 + 56, &qword_1EACD27B8, &unk_18F548C20);
  v1(v7, v6);
  if (*(v0 + 240))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27C8, &unk_18F5632D0);
    OUTLINED_FUNCTION_38_20();
    if (swift_dynamicCast())
    {
      if (*(v0 + 200))
      {
        sub_18F0FD0B4((v0 + 176), v0 + 136);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
        OUTLINED_FUNCTION_21_29();
        v8 = swift_task_alloc();
        *(v0 + 304) = v8;
        *v8 = v0;
        v3 = OUTLINED_FUNCTION_27_33(v8);

        return v4(v3);
      }
    }

    else
    {
      *(v0 + 208) = 0;
      OUTLINED_FUNCTION_61();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 216, &qword_1EACD0620, &unk_18F541850);
    OUTLINED_FUNCTION_61();
    *(v0 + 208) = 0;
  }

  sub_18F0EF148(v0 + 176, &qword_1EACD27C0, &unk_18F5632C0);
  v9 = *(v0 + 8);

  return v9(0, 0);
}

uint64_t sub_18F345604()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = v3;
  *(v1 + 296) = v4;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F3456F0()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_18F345750()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = v3;
  *(v1 + 320) = v4;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F34583C()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_18F34589C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = *(a2 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F345954, 0, 0);
}

uint64_t sub_18F345954()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_22_31();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD45A8, &qword_18F54F5F8);
  OUTLINED_FUNCTION_37_23();
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_41_17();
    v3 = v0[5];
    v4 = v0[6];
    v5 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
    type metadata accessor for PreparedIntent(0);
    v6 = *(v3 - 8);
    v7 = OUTLINED_FUNCTION_34_0();
    (*(v6 + 16))(v7, v5, v3);
    v8 = *(*(v4 + 8) + 8);
    v9 = sub_18F10E0AC();
    v0[27] = sub_18F1194F4(v7, v9, v3, v8);

    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_18F345B60;

    return sub_18F1316DC();
  }

  else
  {
    v12 = v0[22];
    OUTLINED_FUNCTION_7_48();
    sub_18F0EF148((v0 + 7), &qword_1EACD45B0, &unk_18F54F600);
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;

    OUTLINED_FUNCTION_71();

    return v13();
  }
}

uint64_t sub_18F345B60()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 240) = v10;
    *v10 = v5;
    v10[1] = sub_18F345CB8;

    return sub_18F1321C4(0);
  }
}

uint64_t sub_18F345CB8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F345DB4()
{
  OUTLINED_FUNCTION_21();
  v1 = (v0[27] + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  sub_18F1A0A8C(0x746567726174, 0xE600000000000000, v3, v2, (v0 + 17));
  v4 = v0[20];
  if (v4)
  {
    v5 = v0[21];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 17, v0[20]);
    (*(*(v5 + 8) + 72))(v4);
    if (v0[15])
    {
      __swift_project_boxed_opaque_existential_1Tm(v0 + 12, v0[15]);
      sub_18F11E26C();

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v6 = &qword_1EACD0620;
    v7 = &unk_18F541850;
    v8 = (v0 + 12);
  }

  else
  {

    v6 = &qword_1EACD0F20;
    v7 = &qword_18F564C90;
    v8 = (v0 + 17);
  }

  sub_18F0EF148(v8, v6, v7);
  v9 = v0[22];
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_71();

  return v10();
}

uint64_t sub_18F345F50()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F345FBC()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F346080(uint64_t a1, uint64_t a2)
{
  v3[40] = a1;
  v3[41] = v2;
  v4 = *(a2 + 16);
  v3[42] = v4;
  v3[43] = *(v4 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F346160, 0, 0);
}

uint64_t sub_18F346160()
{
  OUTLINED_FUNCTION_31();
  v1 = *(*(v0 + 344) + 16);
  v2 = OUTLINED_FUNCTION_22_31();
  (v1)(v2);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 304);
    v4 = *(*v3 + 168);
    swift_beginAccess();
    sub_18F102F54(v3 + v4, v0 + 216);

    v5 = *(v0 + 320);
    if (*(v0 + 240))
    {
      goto LABEL_6;
    }

    v19 = &qword_1EACD0620;
    v20 = &unk_18F541850;
    v21 = v0 + 216;
    goto LABEL_18;
  }

  v6 = OUTLINED_FUNCTION_22_31();
  (v1)(v6);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 312);
    v8 = *(*v7 + 168);
    swift_beginAccess();
    sub_18F102F54(v7 + v8, v0 + 176);

    v5 = *(v0 + 320);
    if (*(v0 + 200))
    {
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
      v9 = sub_18F520C8C();
      OUTLINED_FUNCTION_22_31();
      v10 = swift_dynamicCast() ^ 1;
      v11 = v5;
      v12 = 1;
      v13 = v9;
      goto LABEL_19;
    }

    v19 = &qword_1EACD0620;
    v20 = &unk_18F541850;
    v21 = v0 + 176;
LABEL_18:
    sub_18F0EF148(v21, v19, v20);
    sub_18F520C8C();
    v11 = OUTLINED_FUNCTION_1_74();
LABEL_19:
    __swift_storeEnumTagSinglePayload(v11, v10, v12, v13);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_31_9();

    __asm { BRAA            X1, X16 }
  }

  v14 = OUTLINED_FUNCTION_22_31();
  (v1)(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6FF8, &qword_18F5598B8);
  OUTLINED_FUNCTION_37_23();
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_41_17();
    OUTLINED_FUNCTION_49((v0 + 16));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 384) = v15;
    *v15 = v16;
    v15[1] = sub_18F346574;
    OUTLINED_FUNCTION_6_54();
    OUTLINED_FUNCTION_31_9();

    return URLRepresentableIntent.urlRepresentation.getter();
  }

  else
  {
    OUTLINED_FUNCTION_7_48();
    sub_18F0EF148(v0 + 56, &qword_1EACD7000, &qword_18F5598C0);
    OUTLINED_FUNCTION_37_3();
    v1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7008, &qword_18F5598C8);
    OUTLINED_FUNCTION_68_0();
    if (!swift_dynamicCast())
    {
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      v19 = &unk_1EACD7010;
      v20 = &unk_18F5598D0;
      v21 = v0 + 136;
      goto LABEL_18;
    }

    sub_18F0FD0B4((v0 + 136), v0 + 96);
    OUTLINED_FUNCTION_49((v0 + 96));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 392) = v22;
    *v22 = v23;
    v22[1] = sub_18F3466DC;
    OUTLINED_FUNCTION_6_54();
    OUTLINED_FUNCTION_31_9();

    return _URLRepresentableIntent.urlRepresentation.getter(v24, v25, v26);
  }
}

uint64_t sub_18F346574()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F346658()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3466DC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F3467C0()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F346844(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F346868, 0, 0);
}

uint64_t sub_18F346868()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 88);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  (*(v2 + 16))(v3, v2);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  type metadata accessor for IntentURLRepresentation(0, v3, *(v2 + 8), v7);
  *v6 = v0;
  v6[1] = sub_18F346960;

  return sub_18F3433D4();
}

uint64_t sub_18F346960()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  sub_18F298D8C(v1[6], v1[7], v1[8], *(v2 + 72));
  v5 = v4[1];

  return v5();
}

uint64_t sub_18F346B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F346B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F346BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F346C20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
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

uint64_t sub_18F346C60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_18F346CE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_18F346E1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
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

        break;
    }
  }

  else
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
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for URLRepresentableIntentError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F3470D0()
{
  result = qword_1EACD6FF0;
  if (!qword_1EACD6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD6FF0);
  }

  return result;
}

void sub_18F347834()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F347978()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F347A20()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F347C60()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F347E54()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F347F60()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F348318()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v0[21] = v1;
  v0[22] = v5;
  v0[19] = v3;
  v0[20] = v6;
  v0[18] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v0[23] = OUTLINED_FUNCTION_34_0();
  v8 = sub_18F52254C();
  v0[24] = v8;
  v0[25] = *(v8 - 8);
  v9 = OUTLINED_FUNCTION_34_0();
  v0[26] = v9;
  v0[27] = *(v2 - 8);
  v0[28] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v10;
  *v10 = v11;
  v10[1] = sub_18F3484A8;

  return sub_18F348DB4(v9, v4, v2);
}

uint64_t sub_18F3484A8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F3485A4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 176);
    (*(*(v0 + 200) + 8))(v1, *(v0 + 192));
    *(v0 + 248) = type metadata accessor for IntentParameterContext(0, v2, *(*(v3 + 8) + 24), v4);
    sub_18F3C0F34(v3, v0 + 56);
    if (*(v0 + 80))
    {
      v5 = *(v0 + 152);
      sub_18F0FF968((v0 + 56), v0 + 16);
      *(v0 + 120) = type metadata accessor for IntentPerson(0);
      *(v0 + 128) = sub_18F34A1EC(&qword_1EACCE838, &protocol conformance descriptor for IntentPerson);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      sub_18F1CC8DC(v5, boxed_opaque_existential_1);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 256) = v7;
      *v7 = v8;
      v7[1] = sub_18F3487D4;
      v9 = *(v0 + 168);

      return sub_18F3C1490(v0 + 16, v0 + 96, v9);
    }

    v18 = *(v0 + 168);
    sub_18F0EF148(v0 + 56, &qword_1EACD27F0, &unk_18F548F90);
    OUTLINED_FUNCTION_11();
    v17 = v18;
  }

  else
  {
    v11 = *(v0 + 224);
    v12 = *(v0 + 144);
    v13 = *(*(v0 + 216) + 32);
    v13(v11, v1, v2);
    v13(v12, v11, v2);
    OUTLINED_FUNCTION_58_0();
    v17 = v2;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_12_10();

  OUTLINED_FUNCTION_6();

  return v19();
}

uint64_t sub_18F3487D4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  v3[33] = v5;
  v3[34] = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 12);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F3488E0()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_18F521D7C();
  if (v1 == 1)
  {
    v0[17] = v0[33];
    sub_18F521DBC();
    OUTLINED_FUNCTION_4_30();
    swift_getWitnessTable();
    sub_18F52211C();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    goto LABEL_5;
  }

  if (!v1)
  {
    v2 = v0[21];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
LABEL_5:
    OUTLINED_FUNCTION_12_10();

    OUTLINED_FUNCTION_6();

    return v6();
  }

  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[35] = v12;
  *v12 = v13;
  v12[1] = sub_18F348A7C;

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F348A7C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v8 + 288) = v0;

  sub_18F0EF148(v5, &qword_1EACCF7A0, &unk_18F53E6F0);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F348BC8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_12_10();

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_18F348C4C()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F348CCC()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F348D44()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F348DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358, &qword_18F546680);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_18F52153C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F348EC8, 0, 0);
}

uint64_t sub_18F348EC8()
{
  v1 = dynamic_cast_existential_1_conditional(v0[4], v0[4], MEMORY[0x1E6965B78]);
  v0[11] = v1;
  v0[12] = v2;
  if (v1 && (v3 = [objc_opt_self() personValueType], v4 = objc_msgSend(v3, sel_contentType), v0[13] = v4, v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v8 = v0[6];
    v9 = [v4 contentType];
    sub_18F5218DC();

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    sub_18F5214EC();
    (*(v6 + 16))(v8, v5, v7);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v7);
    v16 = swift_task_alloc();
    v0[14] = v16;
    v17 = type metadata accessor for IntentPerson(0);
    v18 = sub_18F34A1EC(&qword_1EACD7020, &protocol conformance descriptor for IntentPerson);
    *v16 = v0;
    v16[1] = sub_18F349108;
    v19 = v0[6];

    return MEMORY[0x1EEDBF598](v19, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);

    OUTLINED_FUNCTION_6();

    return v24();
  }
}

uint64_t sub_18F349108()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  v10[15] = v8;
  v10[16] = v9;
  v10[17] = v0;

  sub_18F0EF148(v5, &qword_1EACD0358, &qword_18F546680);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F349238()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[8];
  v5 = OUTLINED_FUNCTION_34_0();
  v0[18] = v5;
  sub_18F16AAE0(v2, v1);
  v6 = [v3 contentType];
  sub_18F5218DC();

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  sub_18F5214EC();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[19] = v13;
  *v13 = v14;
  v13[1] = sub_18F349394;
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[5];

  return MEMORY[0x1EEDBF5A0](v5, v15, v16, v17);
}

uint64_t sub_18F349394()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F349490()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  sub_18F123A1C(v2, v1);
  (*(v5 + 8))(v3, v4);
  v8 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v8 ^ 1u, 1, v6);

  OUTLINED_FUNCTION_6();

  return v9();
}

uint64_t sub_18F3495A4()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F349650()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  sub_18F123A1C(v2, v1);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F349724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return sub_18F348318();
}

uint64_t sub_18F3497DC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F349838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F349868()
{
  OUTLINED_FUNCTION_21();
  if (*(*(v0 + 120) + 16) && (v1 = *(v0 + 136), type metadata accessor for IntentPerson(0), dynamic_cast_existential_1_conditional(v1, v1, MEMORY[0x1E6965B78])))
  {
    *(v0 + 104) = *(v0 + 120);
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *(v2 + 16) = *(v0 + 136);
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD14B0, &qword_18F558410);
    v5 = sub_18F34A188();
    *v3 = v0;
    v3[1] = sub_18F349AE4;
    v6 = *(v0 + 136);

    return MEMORY[0x1EEE18F40](&unk_18F559AD8, v2, v4, v6, v5);
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = sub_18F521DBC();
    *(v0 + 96) = *(*(v7 + 8) + 24);
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for IntentParameterContext(0, v8, WitnessTable, v10);
    sub_18F3C0F34(v7, v0 + 56);
    if (*(v0 + 80))
    {
      v11 = *(v0 + 120);
      sub_18F0FF968((v0 + 56), v0 + 16);
      v12 = sub_18F200C58(v11);
      *(v0 + 184) = v12;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 192) = v13;
      *v13 = v14;
      v13[1] = sub_18F349C90;
      v15 = *(v0 + 136);
      v16 = *(v0 + 144);

      return sub_18F3C17B4(v0 + 16, v12, v15, v16);
    }

    else
    {
      sub_18F0EF148(v0 + 56, &qword_1EACD27F0, &unk_18F548F90);
      v17 = *(v0 + 8);

      return v17(0);
    }
  }
}

uint64_t sub_18F349AE4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F349BF0()
{
  OUTLINED_FUNCTION_69();
  v0[14] = v0[21];
  sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  swift_getWitnessTable();
  v1 = sub_18F52213C();
  v2 = v0[21];
  if (v1)
  {

    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_18F349C90(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 200) = v1;

  if (!v1)
  {
    *(v5 + 208) = a1;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F349DC8()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[26];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_18F349E30()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F349E8C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F349EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F0FC870;

  return sub_18F348DB4(a1, a2, a3);
}

uint64_t sub_18F349FA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v8 = v4;
  v8[1] = sub_18F1E9574;

  return sub_18F349838(v7, a3, v9, v10);
}

uint64_t sub_18F34A054(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F34A0DC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_18F0FC874;

  return sub_18F349EE8(v5, v3, v6);
}

unint64_t sub_18F34A188()
{
  result = qword_1EACD7018;
  if (!qword_1EACD7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD14B0, &qword_18F558410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7018);
  }

  return result;
}

uint64_t sub_18F34A1EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentPerson(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F34A230()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t AppContext.fetchDestinationMDMAccountIdentifier(for:)(uint64_t a1)
{
  *(v1 + 136) = a1;
  v2 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F34A2B4()
{
  OUTLINED_FUNCTION_31();
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    OUTLINED_FUNCTION_99_8();
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_18F34A484;

    return v11("InitializeAction", 16, 2, v1);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1(&qword_1ED6FEF38);
    }

    v4 = sub_18F52165C();
    __swift_project_value_buffer(v4, qword_1ED707778);
    v5 = sub_18F52163C();
    v6 = sub_18F52221C();
    if (os_log_type_enabled(v5, v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v7, v8, "Unable to fetch intentRepresentation as LNAction");
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F133EDC();
    swift_allocError();
    OUTLINED_FUNCTION_94_9(v9, 3);
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F34A484()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;
  v4[19] = v3;
  v4[20] = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_31_9();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v11 = swift_task_alloc();
    v4[21] = v11;
    *v11 = v6;
    OUTLINED_FUNCTION_12_3(v11);
    OUTLINED_FUNCTION_31_9();

    return sub_18F1316DC();
  }
}

uint64_t sub_18F34A604()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 184) = v10;
    *v10 = v5;
    v10[1] = sub_18F34A758;

    return sub_18F1321C4(0);
  }
}

uint64_t sub_18F34A758()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34A850()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  sub_18F0FD6C4(*(v0 + 152) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0, &qword_18F549620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7028, &qword_18F559B30);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v1 = OUTLINED_FUNCTION_43_1();
    v2(v1);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_31_9();

    return v6(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_18F0FA038(v0 + 96, &qword_1EACD7030, &qword_18F559B38);
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1(&qword_1ED6FEF38);
    }

    v12 = sub_18F52165C();
    __swift_project_value_buffer(v12, qword_1ED707778);
    v13 = sub_18F52163C();
    v14 = sub_18F52221C();
    if (os_log_type_enabled(v13, v14))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v15, v16, "Attempted to fetch MDM accountIdentifier on an intent that is not an ManagedDestinationIntent.");
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F133EDC();
    swift_allocError();
    OUTLINED_FUNCTION_94_9(v17, 2);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_31_9();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_18F34AA94()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F34AAF0()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 176);
  sub_18F2D94A8(v1);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F34AB84()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 192);
  sub_18F2D94A8(v1);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F34ACA4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_18F34AD64;

  return AppContext.fetchDestinationMDMAccountIdentifier(for:)(a1);
}

uint64_t sub_18F34AD64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_85();
  v6 = v5;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v9 = *(v8 + 24);
  v10 = *v1;
  OUTLINED_FUNCTION_39();
  *v11 = v10;

  swift_unknownObjectRelease();

  if (v2)
  {
    v4 = sub_18F520A7C();

    v12 = 0;
    v13 = v4;
  }

  else if (v4)
  {
    v12 = sub_18F5218AC();

    v4 = 0;
    v13 = v12;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(v6 + 32);
  v14[2](v14, v12, v4);

  _Block_release(v14);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_18F34AF00()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34B0BC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F34B118()
{
  OUTLINED_FUNCTION_69();
  v6 = OUTLINED_FUNCTION_89_6(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_15_38(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F34B2C8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_123_5();
    v10 = OUTLINED_FUNCTION_12_7();

    return v11(v10);
  }
}

uint64_t sub_18F34B424()
{
  OUTLINED_FUNCTION_69();
  v6 = OUTLINED_FUNCTION_89_6(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_15_38(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F34B5D4()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34B780()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34B92C()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34BAD8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F34BC38()
{
  OUTLINED_FUNCTION_69();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[6] = v5;
  v6 = sub_18F520E6C();
  v0[11] = v6;
  v0[12] = *(v6 - 8);
  v0[13] = OUTLINED_FUNCTION_34_0();
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34BCEC()
{
  OUTLINED_FUNCTION_66_10();
  OUTLINED_FUNCTION_37_2();
  if (qword_1ED6FD140 != -1)
  {
    OUTLINED_FUNCTION_1_75(&qword_1ED6FD140);
  }

  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v7 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  v9 = OUTLINED_FUNCTION_21_30(v7, v8);
  MEMORY[0x193ADAF70](v9);
  OUTLINED_FUNCTION_60_9();
  *(v0 + 112) = v2;
  (*(v4 + 8))(v3, v5);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *(v10 + 16) = v18;
  *(v10 + 32) = v6;
  *(v10 + 40) = v17;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7040, &qword_18F559C40);
  OUTLINED_FUNCTION_96_7();
  *v11 = v12;
  OUTLINED_FUNCTION_116_2(v13);
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_37_24();

  return MEMORY[0x1EEE6DE98](v14);
}

uint64_t sub_18F34BE54()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_2_10();
    v10 = OUTLINED_FUNCTION_22();

    return v11(v10);
  }
}

uint64_t sub_18F34BFC0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F34C01C()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F34C1D8()
{
  OUTLINED_FUNCTION_69();
  v6 = OUTLINED_FUNCTION_89_6(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_15_38(v6);
  *(v0 + 88) = v7;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F34C37C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_111_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);

  return sub_18F253C14();
}

uint64_t sub_18F34C400()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_111_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);

  return sub_18F253430();
}

uint64_t sub_18F34C484()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_111_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);

  return sub_18F25307C();
}

uint64_t sub_18F34C508()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_111_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);

  return sub_18F2527A8();
}

uint64_t sub_18F34C58C()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);

  return sub_18F2519A4();
}

uint64_t sub_18F34C610()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_2_10();

    return v8(v3);
  }
}

uint64_t sub_18F34C740(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v3 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F34C768()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[7];
  sub_18F0FD6C4(v1 + 24, (v0 + 2));
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_71();

    return v4();
  }

  else
  {
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    v0[8] = *(off_1ED6FF6C8 + 10);

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[9] = v6;
    *v6 = v7;
    v6[1] = sub_18F34C8E0;

    return sub_18F2AE66C(v1 + 24);
  }
}

uint64_t sub_18F34C8E0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F34C9FC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F34CA58()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);

  return sub_18F2542C4();
}

uint64_t sub_18F34CADC()
{
  OUTLINED_FUNCTION_69();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);

  return sub_18F254D88();
}

uint64_t sub_18F34CB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v6[28] = type metadata accessor for Annotation(0);
  v6[29] = swift_task_alloc();
  v7 = sub_18F52165C();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F13740C, 0, 0);
}

uint64_t sub_18F34CC58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_83_7();
  v2 = OUTLINED_FUNCTION_56();
  sub_18F131034(v2, v3, v4, v1, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v8, v9);
  sub_18F0FA038(v0 + 16, &qword_1EACD7038, &qword_18F559B80);
  v10 = OUTLINED_FUNCTION_43_1();
  v11(v10);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_18F34CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[28] = type metadata accessor for Annotation(0);
  v5[29] = swift_task_alloc();
  v6 = sub_18F52165C();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34CE10, 0, 0);
}

uint64_t sub_18F34D170()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34D268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v6[28] = type metadata accessor for Annotation(0);
  v6[29] = swift_task_alloc();
  v7 = sub_18F52165C();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34D360, 0, 0);
}

uint64_t sub_18F34D6C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34D7B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_83_7();
  v2 = OUTLINED_FUNCTION_56();
  sub_18F131034(v2, v3, v4, v1, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v8, v9);
  sub_18F0FA038(v0 + 16, &qword_1EACD7038, &qword_18F559B80);
  v10 = OUTLINED_FUNCTION_43_1();
  v11(v10);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_18F34D878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v5[29] = type metadata accessor for Annotation(0);
  v5[30] = swift_task_alloc();
  v6 = sub_18F52165C();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34D970, 0, 0);
}

uint64_t sub_18F34DD60()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F34DE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 264);
  v12 = OUTLINED_FUNCTION_56();
  sub_18F131034(v12, v13, v14, v11, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v18, v19);
  sub_18F0FA038(v10 + 16, &qword_1EACD7038, &qword_18F559B80);
  v20 = OUTLINED_FUNCTION_43_1();
  v21(v20);

  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_36();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_18F34DF28()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 264);
  v2 = OUTLINED_FUNCTION_56();
  sub_18F131034(v2, v3, v4, v1, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v8, v9);
  sub_18F0FA038(v0 + 16, &qword_1EACD7038, &qword_18F559B80);
  v10 = OUTLINED_FUNCTION_43_1();
  v11(v10);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_18F34DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v6[28] = type metadata accessor for Annotation(0);
  v6[29] = swift_task_alloc();
  v7 = sub_18F52165C();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34E0E8, 0, 0);
}

uint64_t sub_18F34E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v5[28] = type metadata accessor for Annotation(0);
  v5[29] = swift_task_alloc();
  v6 = sub_18F52165C();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F34E5C4, 0, 0);
}

uint64_t sub_18F34E9A8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  *v5 = v6;
  v5[1] = sub_18F0FC874;

  return sub_18F34ACA4(v1, v2, v3);
}

uint64_t sub_18F34EA54()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34CB60(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F130E78;

  return sub_18F34CD18(a2, a3, a4, a5, a6);
}

uint64_t sub_18F34EBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F130E78;

  return sub_18F34CD18(a2, a3, a4, a5, a6);
}

uint64_t sub_18F34EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F2555EC;

  return sub_18F34D878(a2, a3, a4, a5, a6);
}

uint64_t sub_18F34ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_18F130E78;

  return sub_18F34E4CC(a2, a3, a4, a5, a6);
}

uint64_t sub_18F34EE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F34EEA0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34D268(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34EF30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34CB60(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F34F05C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34DFF0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34F0EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_38();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_59_1();

  return sub_18F34CB60(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_18F34F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F34F218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_4_60();
  OUTLINED_FUNCTION_36();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t OUTLINED_FUNCTION_75_7()
{
  *(v0 + 320) = v3;
  *(v0 + 264) = v1;
  *(v0 + 272) = v2;

  return sub_18F521F7C();
}

uint64_t OUTLINED_FUNCTION_123_5()
{
}

uint64_t OUTLINED_FUNCTION_124_5(uint64_t a1, uint64_t a2)
{
  sub_18F0F689C(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_18F34F344(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  os_unfair_lock_lock((v4 + 128));
  v7 = *(*(v4 + 136) + 80);
  os_unfair_lock_unlock((v4 + 128));
  if (!v7)
  {
    os_unfair_lock_lock((v4 + 144));
    os_unfair_lock_lock((v4 + 128));
    v7 = *(*(v4 + 136) + 80);
    os_unfair_lock_unlock((v4 + 128));
    if (!v7)
    {
      v7 = *(v4 + 176);
      v8 = *(v4 + 184);
      __swift_project_boxed_opaque_existential_1Tm((v4 + 152), v7);
      v9 = (*(v8 + 48))(a1, a2, v7, v8);
      if (!v3)
      {
        v7 = v9;
        v13 = v10;
        v14 = v11;
        os_unfair_lock_lock((v4 + 128));
        if (v14)
        {

          sub_18F34FC20(v15);
        }

        v16 = *(v4 + 136);
        *(v16 + 80) = v7;
        *(v16 + 88) = v13;
        os_unfair_lock_unlock((v4 + 128));
      }
    }

    os_unfair_lock_unlock((v4 + 144));
  }

  return v7;
}

void sub_18F34F474(void *a1)
{
  sub_18F1BB3A4(a1);
  if (!v1 && v3 < 0)
  {
    v4 = [a1 identifier];
    v5 = sub_18F5218DC();
    v7 = v6;

    sub_18F16A9C8();
    swift_allocError();
    *v8 = xmmword_18F54D5B0;
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    swift_willThrow();
  }
}

void sub_18F34F51C(void *a1)
{
  sub_18F1BB3A4(a1);
  if (!v1 && v3 >> 62 == 1)
  {
    v4 = [a1 identifier];
    v5 = sub_18F5218DC();
    v7 = v6;

    sub_18F16A9C8();
    swift_allocError();
    *v8 = xmmword_18F54D5B0;
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    swift_willThrow();
  }
}

uint64_t sub_18F34F5DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37();
  result = sub_18F279AAC();
  if (!v2 && v6 < 0)
  {
    sub_18F16A9C8();
    swift_allocError();
    *v7 = xmmword_18F54D5B0;
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    swift_willThrow();
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t sub_18F34F668(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v3 - v2);
  return sub_18F52196C();
}

uint64_t sub_18F34F724()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F758()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F78C()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F7C0()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F7F4()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F828()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F85C()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F890()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F34F8C4()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_18F34F8F0(v0);
    *(v0 + 104) = 0;
  }

  return result;
}

uint64_t sub_18F34F8F0(void *a1)
{
  v28 = &type metadata for _UndoIntent;
  v29[0] = sub_18F3543F4();
  v29[1] = &type metadata for _CopyIntent;
  v29[2] = sub_18F354448();
  v29[3] = &type metadata for _PasteIntent;
  v29[4] = sub_18F35449C();
  v2 = 0;
  v29[5] = &type metadata for _CutIntent;
  v29[6] = sub_18F3544F0();
  do
  {
    v3 = *&v27[v2 * 8 + 32];
    v4 = *(*(v29[v2] + 8) + 8);
    v5 = static AppIntent._identifier.getter(v3);
    v7 = v6;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = a1[6];
    sub_18F136D3C(v3, v4, v5, v7, isUniquelyReferenced_nonNull_native);
    a1[6] = v26;

    swift_endAccess();
    v9 = static AppIntent._identifier.getter(v3);
    v11 = v10;
    v12 = sub_18F110768(v3, v4);
    swift_beginAccess();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v26 = a1[7];
    sub_18F13406C(v12, v9, v11, v13);
    a1[7] = v26;

    swift_endAccess();
    v2 += 2;
  }

  while (v2 != 8);
  v24 = &type metadata for FavoriteOperation;
  v25[0] = sub_18F32D3D8();
  v25[1] = &type metadata for ChangeOperation;
  v25[2] = sub_18F228080();
  v25[3] = &type metadata for MovementDirection;
  v25[4] = sub_18F2A5CD8();
  v25[5] = &type metadata for MovementMagnitude;
  v25[6] = sub_18F2A61EC();
  v25[7] = &type metadata for NavigateSequentiallyDirection;
  v25[8] = sub_18F267090();
  v25[9] = &type metadata for ResizeBehavior;
  v25[10] = sub_18F342428();
  v25[11] = &type metadata for UndoOperation;
  v25[12] = sub_18F1B84E4();
  v14 = 0;
  v25[13] = &type metadata for ZoomBehavior;
  v25[14] = sub_18F354544();
  do
  {
    v15 = *&v23[v14 * 8 + 32];
    v16 = v25[v14];
    v17 = *(v16 + 8);
    v18 = static AppValue._identifier.getter(v15, v17);
    v20 = v19;
    swift_beginAccess();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v26 = a1[4];
    a1[4] = 0x8000000000000000;
    sub_18F2BFA34(v15, v16, v18, v20, v21);

    a1[4] = v26;
    swift_endAccess();
    static AppValue._identifier.getter(v15, v17);
    sub_18F242D00(v15, v16);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v26 = a1[5];
    a1[5] = 0x8000000000000000;
    sub_18F2BFA20();

    a1[5] = v26;
    result = swift_endAccess();
    v14 += 2;
  }

  while (v14 != 16);
  return result;
}

__n128 sub_18F34FC20(__n128 *a1)
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[1], v21);
  v3 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353C00(v3, sub_18F35427C, 0, &v1[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[1].n128_i64[1], v20);
  v4 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353B64(v4, sub_18F354214, 0, &v1[1].n128_i64[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[2], v19);
  v5 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353AC8(v5, sub_18F35427C, 0, &v1[2]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[2].n128_i64[1], v18);
  v6 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353A2C(v6, sub_18F354214, 0, &v1[2].n128_i64[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[3], v17);
  v7 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353990(v7, sub_18F35427C, 0, &v1[3]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[3].n128_i64[1], v16);
  v8 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3538F4(v8, sub_18F354214, 0, &v1[3].n128_i64[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[4], v15);
  v9 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353870(v9, sub_18F35422C, 0, &v1[4], sub_18F352F04);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[4].n128_i64[1], v14);
  v10 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3537D4(v10, sub_18F354214, 0, &v1[4].n128_i64[1]);
  swift_endAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_81(&v1[6], &v13);
  v11 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F353870(v11, sub_18F353764, 0, &v1[6], sub_18F352BC8);
  swift_endAccess();
  result = a1[5];
  v1[5] = result;
  return result;
}

uint64_t sub_18F34FF54()
{

  return v0;
}

uint64_t sub_18F34FFB4()
{
  sub_18F34FF54();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t _s5QueryOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x1FFFFD && *(a1 + 24))
    {
      v2 = *a1 + 2097149;
    }

    else if (((((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF) >= 0x1FFFFD)
    {
      v2 = -1;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s5QueryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2097150;
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_18F559D00), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_18F559D10), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

int8x16_t sub_18F35015C(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1].i64[0] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
  *a1 = result;
  a1[1].i64[0] = v2;
  return result;
}

void sub_18F350194(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = sub_18F520C8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  sub_18F0F21A8(0, &qword_1EACCDCD8, 0x1E696AAE8);
  v38 = v9;
  v36 = *(v9 + 16);
  v36(v13, a1, v8);
  v14 = sub_18F3505B8(v13);
  if (v14)
  {
    v39 = v4;
    v15 = v14;
    v16 = [a2 bundleIdentifier];
    sub_18F5218DC();

    v17 = objc_allocWithZone(sub_18F5210FC());
    v18 = sub_18F52110C();
    if (v18)
    {
      v19 = v18;
      v20 = *a3;
      swift_beginAccess();

      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v20 + 96);
      sub_18F2C07CC();
      *(v20 + 96) = v41;
      swift_endAccess();

      v22 = v21;
      MEMORY[0x193ADB260]();
      sub_18F16AE80();
      sub_18F521D6C();
      if (([v15 isLoaded] & 1) == 0)
      {
        if (qword_1ED6FED58 != -1)
        {
          swift_once();
        }

        v23 = sub_18F52165C();
        __swift_project_value_buffer(v23, qword_1ED707790);
        v24 = v37;
        v36(v37, a1, v8);
        v25 = sub_18F52163C();
        v26 = sub_18F52223C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v40[0] = v28;
          *v27 = 136446210;
          sub_18F354650(&qword_1EACCED50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v29 = sub_18F522C9C();
          v30 = v24;
          v31 = v29;
          v33 = v32;
          (*(v38 + 8))(v30, v8);
          v34 = sub_18F11897C(v31, v33, v40);

          *(v27 + 4) = v34;
          _os_log_impl(&dword_18F0E9000, v25, v26, "AppManager: Loading framework at URL %{public}s.", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          MEMORY[0x193ADD350](v28, -1, -1);
          MEMORY[0x193ADD350](v27, -1, -1);
        }

        else
        {

          (*(v38 + 8))(v24, v8);
        }

        [v15 load];
      }
    }
  }
}

id sub_18F3505B8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F520BEC();
  v4 = [v2 initWithURL_];

  v5 = sub_18F520C8C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_18F350654()
{
  result = swift_getKeyPath();
  qword_1ED707738 = result;
  return result;
}

uint64_t sub_18F35067C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3506C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350728()
{
  result = swift_getKeyPath();
  qword_1ED707740 = result;
  return result;
}

uint64_t sub_18F350750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F35079C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3507FC()
{
  result = swift_getKeyPath();
  qword_1ED707708 = result;
  return result;
}

uint64_t sub_18F350824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350870(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3508D0()
{
  result = swift_getKeyPath();
  qword_1ED707710 = result;
  return result;
}

uint64_t sub_18F3508F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350944(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F3509A4()
{
  result = swift_getKeyPath();
  qword_1EAD0AC90 = result;
  return result;
}

uint64_t sub_18F3509CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350A18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350A78()
{
  result = swift_getKeyPath();
  qword_1EAD0AC98 = result;
  return result;
}

uint64_t sub_18F350AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350AEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F350B4C(uint64_t a1)
{
  if (!a1)
  {
    return 0xF000000000000007;
  }

  result = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for EntityQuery, &protocol descriptor for IntentValueQuery);
  if (!result)
  {
    result = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for EntityQuery);
    if (!result)
    {
      result = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for IntentValueQuery);
      if (!result)
      {
        return 0xF000000000000007;
      }
    }
  }

  return result;
}

void sub_18F350BFC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_9();
  v53 = sub_18F5213AC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v52 = v7 - v6;
  v8 = sub_18F52136C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v54 = v13 - v12;
  OUTLINED_FUNCTION_72_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7108, &unk_18F55A140);
  v14 = OUTLINED_FUNCTION_19_36();
  v48 = v2;
  v16 = OUTLINED_FUNCTION_55_13(v14, v15);
  v17 = v16;
  if (*(v1 + 16))
  {
    v18 = 0;
    v19 = v10;
    v20 = v1 + 64;
    v21 = 1 << *(v1 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v1 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v19 + 16);
    v47 = v1;
    v49 = (v4 + 32);
    v50 = (v19 + 32);
    v25 = v16 + 64;
    while (v23)
    {
      OUTLINED_FUNCTION_71_9();
LABEL_13:
      v51 = *(v27 + 72);
      v31 = *(v1 + 48) + v51 * (v26 | (v18 << 6));
      if (v48)
      {
        (*v50)(v54, v31, v8);
        OUTLINED_FUNCTION_66_11();
        (*(v32 + 32))(v52);
      }

      else
      {
        (*v46)(v54, v31, v8);
        OUTLINED_FUNCTION_66_11();
        (*(v33 + 16))(v52);
      }

      OUTLINED_FUNCTION_35_21();
      sub_18F354650(&qword_1EACD0450, v34, MEMORY[0x1E69DBC60]);
      sub_18F52177C();
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_34_24();
      if (v35)
      {
        OUTLINED_FUNCTION_35();
        while (1)
        {
          OUTLINED_FUNCTION_36_26();
          if (v35)
          {
            if (v37)
            {
              break;
            }
          }

          if (v36 == v38)
          {
            v36 = 0;
          }

          if (*(v25 + 8 * v36) != -1)
          {
            OUTLINED_FUNCTION_61_12();
            goto LABEL_26;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_63_10();
LABEL_26:
      OUTLINED_FUNCTION_60_10();
      *(v25 + v39) |= v40;
      (*v50)(v17[6] + v51 * v54, v54, v8);
      (*v49)(v17[7] + v1 * v54, v52, v53);
      ++v17[2];
      v1 = v47;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v18 >= v24)
      {
        break;
      }

      ++v28;
      if (*(v20 + 8 * v18))
      {
        OUTLINED_FUNCTION_21_24();
        v23 = v30 & v29;
        goto LABEL_13;
      }
    }

    if (v48)
    {
      OUTLINED_FUNCTION_9_44();
      if (v42 != v43)
      {
        OUTLINED_FUNCTION_20_31(v41);
      }

      else
      {
        v44 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v44, v45, v20);
      }

      *(v1 + 16) = 0;
    }
  }

  *v0 = v17;
  OUTLINED_FUNCTION_16();
}

void sub_18F350FA0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_9();
  v3 = sub_18F52136C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_72_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7100, &qword_18F55A138);
  v10 = OUTLINED_FUNCTION_19_36();
  v12 = OUTLINED_FUNCTION_55_13(v10, v11);
  if (!*(v1 + 16))
  {
LABEL_29:

LABEL_30:
    *v0 = v12;
    OUTLINED_FUNCTION_16();
    return;
  }

  v48 = v9;
  v40 = v0;
  v13 = 0;
  v14 = (v1 + 64);
  OUTLINED_FUNCTION_2_78();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v41 = v1;
  v42 = v5;
  v43 = (v5 + 32);
  v20 = v12 + 8;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v13 >= v19)
      {
        break;
      }

      ++v21;
      if (v14[v13])
      {
        OUTLINED_FUNCTION_21_24();
        v17 = v23 & v22;
        goto LABEL_9;
      }
    }

    if ((v2 & 1) == 0)
    {

      v0 = v40;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_44();
    v0 = v40;
    if (v36 != v37)
    {
      *v14 = -1 << v35;
    }

    else
    {
      v38 = OUTLINED_FUNCTION_15_39();
      sub_18F128DD4(v38, v39, v14);
    }

    *(v1 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v17 &= v17 - 1;
LABEL_9:
    v47 = *(v42 + 72);
    v24 = OUTLINED_FUNCTION_67_9();
    v25(v24);
    OUTLINED_FUNCTION_65_14();
    v44 = *(v26 + 24);
    v45 = *(v26 + 16);
    if ((v2 & 1) == 0)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    OUTLINED_FUNCTION_35_21();
    sub_18F354650(&qword_1EACD0450, v27, MEMORY[0x1E69DBC60]);
    sub_18F52177C();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_34_24();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_63_10();
LABEL_21:
    OUTLINED_FUNCTION_60_10();
    *(v20 + v32) |= v33;
    (*v43)(v12[6] + v47 * v2, v48, v3);
    v34 = v12[7] + 32 * v2;
    *v34 = v46;
    *(v34 + 16) = v45;
    *(v34 + 24) = v44;
    ++v12[2];
    v1 = v41;
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (v20[v29] != -1)
    {
      OUTLINED_FUNCTION_61_12();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_18F35129C()
{
  OUTLINED_FUNCTION_6_56();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70B8, &qword_18F559FB0);
  v4 = OUTLINED_FUNCTION_19_36();
  OUTLINED_FUNCTION_45_14(v4, v5);
  OUTLINED_FUNCTION_42_15();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_23_32();
  if (!v3)
  {
LABEL_4:
    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_56_11();
      if (v9)
      {
        OUTLINED_FUNCTION_21_24();
        v3 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_9_44();
      if (v21 != v22)
      {
        OUTLINED_FUNCTION_20_31(v20);
      }

      else
      {
        v23 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v23, v24, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_32();
LABEL_9:
    OUTLINED_FUNCTION_21_31();
    v14 = (v13 + 80 * v12);
    if (v25)
    {
      memcpy(__dst, v14, 0x50uLL);
    }

    else
    {
      sub_18F1306CC(v14, __dst);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    sub_18F522EFC();
    OUTLINED_FUNCTION_58_10(v26);
    sub_18F522F4C();
    OUTLINED_FUNCTION_5_56();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_20:
    OUTLINED_FUNCTION_3_60(v16);
    memcpy((v19 + 80 * v18), __dst, 0x50uLL);
    OUTLINED_FUNCTION_24_35();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_32();
    if (!v15)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_18F351458()
{
  OUTLINED_FUNCTION_6_56();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70C0, &qword_18F559FB8);
  v4 = OUTLINED_FUNCTION_19_36();
  OUTLINED_FUNCTION_55_13(v4, v5);
  OUTLINED_FUNCTION_42_15();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_23_32();
  if (!v3)
  {
LABEL_4:
    v8 = v7;
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_56_11();
      if (v9)
      {
        OUTLINED_FUNCTION_21_24();
        v3 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_9_44();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_20_31(v26);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v29, v30, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_32();
LABEL_9:
    OUTLINED_FUNCTION_21_31();
    v15 = (v13 + v12 * v14);
    if (v2)
    {
      v16 = *v15;
      v17 = v15[2];
      v33 = v15[1];
      v34 = v17;
      v32 = v16;
    }

    else
    {
      sub_18F139A94(v15, &v32);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    sub_18F522EFC();
    OUTLINED_FUNCTION_58_10(v31);
    sub_18F522F4C();
    OUTLINED_FUNCTION_5_56();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_20:
    OUTLINED_FUNCTION_3_60(v19);
    v23 = (v22 + 48 * v21);
    v24 = v32;
    v25 = v34;
    v23[1] = v33;
    v23[2] = v25;
    *v23 = v24;
    OUTLINED_FUNCTION_24_35();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_32();
    if (!v18)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_18F351614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_18F520C8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7068, &qword_18F559F20);
  v39 = v4;
  result = sub_18F522ACC();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v43 = v8;
  v35 = v2;
  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v36 = (v6 + 16);
  v37 = v9;
  v38 = v6;
  v40 = (v6 + 32);
  v18 = result + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      sub_18F128DD4(0, (v33 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 48);
    v42 = *(v38 + 72);
    v24 = v23 + v42 * v22;
    if (v39)
    {
      (*v40)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    else
    {
      (*v36)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    sub_18F354650(&qword_1EACCED58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    result = sub_18F52177C();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (*v40)(*(v11 + 48) + v42 * v28, v43, v5);
    *(*(v11 + 56) + 8 * v28) = v41;
    ++*(v11 + 16);
    v9 = v37;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_18F3519EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7080, &qword_18F559F48);
  v36 = v4;
  result = sub_18F522ACC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
        goto LABEL_34;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_18F128DD4(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + 24 * v18;
    v37 = *v22;
    v23 = *(v22 + 16);
    if ((v36 & 1) == 0)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    sub_18F522EFC();
    sub_18F5219CC();
    result = sub_18F522F4C();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = *(v7 + 56) + 24 * v27;
    *v33 = v37;
    *(v33 + 16) = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}