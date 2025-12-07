uint64_t sub_24B26BE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF080, &unk_24B2F42C0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B008890(a1, &v5 - v3, &qword_27EFCF080, &unk_24B2F42C0);
  return sub_24B2D3B54();
}

double sub_24B26BF00@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_24B2D3E04();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF0D8, &qword_24B2F4358);
  return sub_24B2654A4(v2, a2 + *(v4 + 44));
}

unint64_t sub_24B26BF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCEFA0;
  if (!qword_27EFCEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEFA0);
  }

  return result;
}

uint64_t sub_24B26BFEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_24B26C070()
{
  result = qword_27EFCEFD0;
  if (!qword_27EFCEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEF98, &qword_24B2F40C0);
    sub_24B26C128();
    sub_24B039184(&qword_27EFCF020, &qword_27EFCEFB0, &qword_24B2F4108, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEFD0);
  }

  return result;
}

unint64_t sub_24B26C128()
{
  result = qword_27EFCEFD8;
  if (!qword_27EFCEFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEFE0, &qword_24B2F4118);
    sub_24B26C1E0();
    sub_24B039184(&qword_27EFCF010, &qword_27EFCF018, &unk_24B2F4130, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEFD8);
  }

  return result;
}

unint64_t sub_24B26C1E0()
{
  result = qword_27EFCEFE8;
  if (!qword_27EFCEFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCEFF0, &qword_24B2F4120);
    sub_24B26DE10(&qword_27EFCEFF8, type metadata accessor for InteractiveMapV2, &protocol conformance descriptor for InteractiveMapV2);
    sub_24B039184(&qword_27EFCF000, &qword_27EFCF008, &qword_24B2F4128, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEFE8);
  }

  return result;
}

uint64_t sub_24B26C2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B26C354(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFDE44;

  return sub_24B265100(a1);
}

void sub_24B26C434(uint64_t a1)
{
  sub_24B26C70C(319, &qword_27EFCF098, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24B26C70C(319, &qword_27EFCF0A0, MEMORY[0x277D08CE8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24B26C70C(319, &qword_27EFCF0A8, type metadata accessor for PersonLocateAction, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B26C5A8(uint64_t a1)
{
  type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(319);
  if (v1 <= 0x3F)
  {
    sub_24B07A804();
    if (v2 <= 0x3F)
    {
      sub_24B26C770(319, &qword_27EFCD9E8, &qword_27EFCD8B0, &unk_24B2F42D0, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24B26C70C(319, &qword_27EFCF0C8, type metadata accessor for ListPersonInfo, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_24B26C770(319, &qword_27EFCF0D0, &qword_27EFCF080, &unk_24B2F42C0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B26C70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B26C770(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24B26C7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B26C878()
{
  result = qword_27EFCF170;
  if (!qword_27EFCF170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF160, &qword_24B2F43D8);
    sub_24B26C8FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF170);
  }

  return result;
}

unint64_t sub_24B26C8FC()
{
  result = qword_27EFCF178;
  if (!qword_27EFCF178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF180, &qword_24B2F43E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF188, &unk_24B2F43E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
    sub_24B26CA50();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8F08, &qword_27EFC8E20, &qword_24B2EEC30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF178);
  }

  return result;
}

unint64_t sub_24B26CA50()
{
  result = qword_27EFCF190;
  if (!qword_27EFCF190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF188, &unk_24B2F43E8);
    sub_24B26CB08();
    sub_24B039184(&qword_27EFC9A78, &qword_27EFC9A80, &qword_24B2E33E0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF190);
  }

  return result;
}

unint64_t sub_24B26CB08()
{
  result = qword_27EFCF198;
  if (!qword_27EFCF198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF1A0, &qword_24B2F43F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF1A8, &unk_24B2F4400);
    v3 = sub_24B039184(&qword_27EFCF1B0, &qword_27EFCF1A8, &unk_24B2F4400, &protocol conformance descriptor for AsyncButton<A>);
    sub_24B26CC44(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8, &qword_24B2E21D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF198);
  }

  return result;
}

unint64_t sub_24B26CC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF1B8;
  if (!qword_27EFCF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF1B8);
  }

  return result;
}

uint64_t sub_24B26CC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B26CD00()
{
  v2 = *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PersonLocateAction(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFD370;

  return sub_24B26A4D4(v0 + v3, v0 + v6);
}

uint64_t sub_24B26CE30@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PersonLocateAction(0);

  return sub_24B26A670(a1);
}

unint64_t sub_24B26CEC0()
{
  result = qword_27EFCF230;
  if (!qword_27EFCF230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF210, &unk_24B2F5240);
    sub_24B039184(&qword_27EFCC558, &qword_27EFCC538, &qword_24B2F4590, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF230);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  v1 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0);
  v2 = *(*(v1 - 8) + 80);
  v23 = *(*(v1 - 8) + 64);
  v24 = (v2 + 16) & ~v2;
  v25 = v0;
  v3 = v0 + v24;

  v4 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
  v5 = v4[5];
  v6 = sub_24B2D2214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v4[6];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v4[7];
  v11 = sub_24B2D1954();
  if (!(*(*(v11 - 8) + 48))(v3 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 8))(v3 + v10, v6);
    }

    else
    {
      v12 = sub_24B2D13C4();
      (*(*(v12 - 8) + 8))(v3 + v10, v12);
    }
  }

  v13 = v4[8];
  if (!v8(v3 + v13, 1, v6))
  {
    (*(v7 + 8))(v3 + v13, v6);
  }

  v14 = v4[9];
  if (!v8(v3 + v14, 1, v6))
  {
    (*(v7 + 8))(v3 + v14, v6);
  }

  v15 = v3 + *(v1 + 28);

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0) + 32);
  v17 = sub_24B2D1974();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v15 + v16, 1, v17))
  {
    (*(v18 + 8))(v15 + v16, v17);
  }

  v19 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF040, &qword_24B2F4260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_24B2D4034();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v3 + v19, 1, v20))
    {
      (*(v21 + 8))(v3 + v19, v20);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v25, v24 + v23, v2 | 7);
}

uint64_t sub_24B26D3E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_24B26D478()
{
  result = qword_27EFCF250;
  if (!qword_27EFCF250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF240, &qword_24B2F45D0);
    sub_24B039184(&qword_27EFCF168, &qword_27EFCF158, &qword_24B2F43D0, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF250);
  }

  return result;
}

unint64_t sub_24B26D528()
{
  result = qword_27EFCF258;
  if (!qword_27EFCF258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF248, &qword_24B2F45D8);
    sub_24B26C878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF258);
  }

  return result;
}

unint64_t sub_24B26D5C4()
{
  result = qword_27EFCF2B0;
  if (!qword_27EFCF2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF2A0, &qword_24B2F4620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF2B8, &qword_24B2F4630);
    sub_24B26D6B8();
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8C30, &unk_27EFC93C0, &qword_24B2E1EB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF2B0);
  }

  return result;
}

unint64_t sub_24B26D6B8()
{
  result = qword_27EFCF2C0;
  if (!qword_27EFCF2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF2B8, &qword_24B2F4630);
    sub_24B039184(&qword_27EFCF2C8, &qword_27EFCF2D0, &qword_24B2F4638, MEMORY[0x277CE1138]);
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98, &unk_24B2E4B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF2C0);
  }

  return result;
}

unint64_t sub_24B26D79C()
{
  result = qword_27EFCF330;
  if (!qword_27EFCF330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF328, &qword_24B2F4670);
    sub_24B26D854();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98, &unk_24B2E4B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF330);
  }

  return result;
}

unint64_t sub_24B26D854()
{
  result = qword_27EFCF338;
  if (!qword_27EFCF338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF340, &qword_24B2F4678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF338);
  }

  return result;
}

unint64_t sub_24B26D8D0()
{
  result = qword_27EFCF348;
  if (!qword_27EFCF348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF310, &qword_24B2F4658);
    sub_24B26D988();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98, &unk_24B2E4B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF348);
  }

  return result;
}

unint64_t sub_24B26D988()
{
  result = qword_27EFCF350;
  if (!qword_27EFCF350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF358, &qword_24B2F4680);
    sub_24B26DA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF350);
  }

  return result;
}

unint64_t sub_24B26DA0C()
{
  result = qword_27EFCF360;
  if (!qword_27EFCF360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF368, &qword_24B2F4688);
    sub_24B26DA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF360);
  }

  return result;
}

unint64_t sub_24B26DA98()
{
  result = qword_27EFCF370;
  if (!qword_27EFCF370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF378, &qword_24B2F4690);
    v1 = MEMORY[0x277CE1138];
    sub_24B039184(&qword_27EFCF380, &qword_27EFCF388, &qword_24B2F4698, MEMORY[0x277CE1138]);
    sub_24B039184(&qword_27EFCF390, &qword_27EFCF398, &qword_24B2F46A0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF370);
  }

  return result;
}

unint64_t sub_24B26DB80()
{
  result = qword_27EFCF410;
  if (!qword_27EFCF410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B0, &unk_24B2F42D0);
    sub_24B26DE10(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF410);
  }

  return result;
}

unint64_t sub_24B26DC34()
{
  result = qword_27EFCF418;
  if (!qword_27EFCF418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF408, &qword_24B2F4740);
    sub_24B26DCC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF418);
  }

  return result;
}

unint64_t sub_24B26DCC4()
{
  result = qword_27EFCF420;
  if (!qword_27EFCF420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF428, &unk_24B2F4748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC78D8, &qword_24B2DE490);
    sub_24B2D1974();
    sub_24B039184(&qword_27EFCF430, &unk_27EFC78D8, &qword_24B2DE490, MEMORY[0x277CDEFF0]);
    sub_24B26DE10(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF420);
  }

  return result;
}

uint64_t sub_24B26DE10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B26DE98@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SessionFriend(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_24B276CB4(v12, v10, type metadata accessor for SessionFriend);
      v14 = a1(v10);
      if (v3)
      {
        return sub_24B276D84(v10, type metadata accessor for SessionFriend);
      }

      if (v14)
      {
        break;
      }

      sub_24B276D84(v10, type metadata accessor for SessionFriend);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_24B276D1C(v10, v18, type metadata accessor for SessionFriend);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_24B26E090@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

_OWORD *sub_24B26E278(uint64_t a1, _OWORD *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_24B2D2504();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24F4();
  v14 = sub_24B2D24B4();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  *(v7 + 2) = v14;
  *(v7 + 3) = v16;
  sub_24B2D2494();
  sub_24B2D3174();
  *(v7 + *(*v7 + 136)) = 0;
  *(v7 + *(*v7 + 144)) = 0;
  v17 = (v7 + *(*v7 + 152));
  *v17 = 0;
  v17[1] = 0;
  v18 = *(*v7 + 160);
  v19 = type metadata accessor for DataControllerSessionMetrics(0);
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  sub_24B2D25B4();
  sub_24B0391CC(a1, v7 + *(*v7 + 128), a3, a4);
  v20 = a2[1];
  v7[2] = *a2;
  v7[3] = v20;
  v7[4] = a2[2];
  return v7;
}

uint64_t sub_24B26E51C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24AFF321C(a1, a2, &v11);
    _os_log_impl(&dword_24AFD2000, v5, v6, "EmbeddedPeopleInteractiveMapViewModel: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  return a3();
}

uint64_t sub_24B26E640()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  swift_getKeyPath();
  v13 = v0;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v5 = *(v0 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController);
  v12[0] = &_s25OrganizedListExtraStorageVN;
  v12[1] = sub_24B276AB0(v4, v6, v7);
  swift_getKeyPath();
  v13 = v5;
  sub_24B276DE4();

  sub_24B2D2584();

  v8 = *(*v5 + 128);
  swift_beginAccess();
  sub_24B008890(v5 + v8, v3, &qword_27EFCF4D8, &unk_24B2F4A20);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510, &qword_24B2F4B48);
  sub_24B2D1984();
  (*(*(v9 - 8) + 8))(v3, v9);
  v10 = v12[3];

  return v10;
}

uint64_t sub_24B26E85C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  swift_getKeyPath();
  v12 = v0;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v5 = *(v0 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController);
  v11[0] = &_s25OrganizedListExtraStorageVN;
  v11[1] = sub_24B276AB0(v4, v6, v7);
  swift_getKeyPath();
  v12 = v5;
  sub_24B276DE4();

  sub_24B2D2584();

  v8 = *(*v5 + 128);
  swift_beginAccess();
  sub_24B008890(v5 + v8, v3, &qword_27EFCF4D8, &unk_24B2F4A20);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510, &qword_24B2F4B48);
  sub_24B2D1984();
  (*(*(v9 - 8) + 8))(v3, v9);

  return v11[4];
}

uint64_t sub_24B26EA78@<X0>(char *a1@<X8>)
{
  v3 = sub_24B2D1574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348, &qword_24B2F09E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  swift_getKeyPath();
  v25 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v16 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  if (v16)
  {
    (*(v4 + 16))(v12, v16 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v3);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v4 + 56))(v12, v17, 1, v3);
  sub_24B0391CC(v12, v15, &qword_27EFCE348, &qword_24B2F09E0);
  sub_24B008890(v15, v9, &qword_27EFCE348, &qword_24B2F09E0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_24AFF8258(v15, &qword_27EFCE348, &qword_24B2F09E0);
    v18 = sub_24B2D1974();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  else
  {
    v20 = *(v4 + 32);
    v20(v6, v9, v3);
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_24AFF8258(v15, &qword_27EFCE348, &qword_24B2F09E0);
    v20(a1, v6, v3);
    v21 = *MEMORY[0x277D08CF0];
    v22 = sub_24B2D1974();
    v23 = *(v22 - 8);
    (*(v23 + 104))(a1, v21, v22);

    return (*(v23 + 56))(a1, 0, 1, v22);
  }
}

uint64_t sub_24B26EE88(uint64_t a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF528, &qword_24B2F4B68);
  MEMORY[0x28223BE20](v55);
  v56 = v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348, &qword_24B2F09E0);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = v47 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v47 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v47 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v47 - v18;
  v20 = sub_24B2D1574();
  v57 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v58 = v47 - v24;
  v59 = a1;
  sub_24B008890(a1, v19, &qword_27EFCD8B0, &unk_24B2F42D0);
  v25 = sub_24B2D1974();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v19, 1, v25) != 1)
  {
    if ((*(v26 + 88))(v19, v25) != *MEMORY[0x277D08CF0])
    {
      (*(v26 + 8))(v19, v25);
      v27 = *(v1 + 40);
      if (!v27)
      {
LABEL_9:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v47[-2] = v1;
        v47[-1] = 0;
        v60 = v1;
        sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
        sub_24B2D2574();

        return sub_24AFF8258(v59, &qword_27EFCD8B0, &unk_24B2F42D0);
      }

      goto LABEL_8;
    }

    v48 = v22;
    (*(v26 + 96))(v19, v25);
    v28 = v57;
    v47[0] = *(v57 + 32);
    v47[1] = v57 + 32;
    (v47[0])(v58, v19, v20);
    swift_getKeyPath();
    v60 = v1;
    sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
    v52 = v1;
    sub_24B2D2584();
    v29 = v52;

    v30 = *(v29 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
    v31 = v16;
    if (v30)
    {
      (*(v28 + 16))(v13, v30 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v20);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v35 = v28;
    v36 = v56;
    v37 = v35[7];
    v37(v13, v32, 1, v20);
    sub_24B0391CC(v13, v31, &qword_27EFCE348, &qword_24B2F09E0);
    v49 = v35[2];
    v50 = v35 + 2;
    v49(v10, v58, v20);
    v56 = (v35 + 7);
    v51 = v37;
    v37(v10, 0, 1, v20);
    v38 = v31;
    v39 = *(v55 + 48);
    sub_24B008890(v31, v36, &qword_27EFCE348, &qword_24B2F09E0);
    sub_24B008890(v10, v36 + v39, &qword_27EFCE348, &qword_24B2F09E0);
    v40 = v35[6];
    if (v40(v36, 1, v20) == 1)
    {
      sub_24AFF8258(v10, &qword_27EFCE348, &qword_24B2F09E0);
      sub_24AFF8258(v31, &qword_27EFCE348, &qword_24B2F09E0);
      if (v40(v36 + v39, 1, v20) == 1)
      {
        sub_24AFF8258(v36, &qword_27EFCE348, &qword_24B2F09E0);
LABEL_20:
        sub_24AFF8258(v59, &qword_27EFCD8B0, &unk_24B2F42D0);
        return (*(v57 + 8))(v58, v20);
      }
    }

    else
    {
      v41 = v53;
      sub_24B008890(v36, v53, &qword_27EFCE348, &qword_24B2F09E0);
      if (v40(v36 + v39, 1, v20) != 1)
      {
        v44 = v48;
        (v47[0])(v48, v36 + v39, v20);
        sub_24B276E48(&qword_27EFCC6C8, MEMORY[0x277D08B50], MEMORY[0x277D08B60]);
        LODWORD(v55) = sub_24B2D52A4();
        v45 = v41;
        v46 = *(v57 + 8);
        v46(v44, v20);
        sub_24AFF8258(v10, &qword_27EFCE348, &qword_24B2F09E0);
        sub_24AFF8258(v38, &qword_27EFCE348, &qword_24B2F09E0);
        v46(v45, v20);
        sub_24AFF8258(v36, &qword_27EFCE348, &qword_24B2F09E0);
        if (v55)
        {
          goto LABEL_20;
        }

LABEL_18:
        v42 = v54;
        v43 = v58;
        v49(v54, v58, v20);
        v51(v42, 0, 1, v20);
        sub_24B275D94(v42);
        sub_24AFF8258(v59, &qword_27EFCD8B0, &unk_24B2F42D0);
        sub_24AFF8258(v42, &qword_27EFCE348, &qword_24B2F09E0);
        return (*(v57 + 8))(v43, v20);
      }

      sub_24AFF8258(v10, &qword_27EFCE348, &qword_24B2F09E0);
      sub_24AFF8258(v31, &qword_27EFCE348, &qword_24B2F09E0);
      (*(v57 + 8))(v41, v20);
    }

    sub_24AFF8258(v36, &qword_27EFCF528, &qword_24B2F4B68);
    goto LABEL_18;
  }

  sub_24AFF8258(v19, &qword_27EFCD8B0, &unk_24B2F42D0);
  v27 = *(v1 + 40);
  if (!v27)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (*(v27 + 16) >= 2uLL)
  {
    goto LABEL_9;
  }

  return sub_24AFF8258(v59, &qword_27EFCD8B0, &unk_24B2F42D0);
}

uint64_t sub_24B26F78C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v242 = a1;
  v3 = sub_24B2D5324();
  MEMORY[0x28223BE20](v3 - 8);
  v201 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8, &qword_24B2F4CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v219 = &v199 - v6;
  v7 = sub_24B2D2534();
  MEMORY[0x28223BE20](v7 - 8);
  v224 = &v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_24B2D2204();
  v246 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v221 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D5344();
  MEMORY[0x28223BE20](v10 - 8);
  v223 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_24B2D2214();
  v241 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v200 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v218 = (&v199 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v15 - 8);
  v215 = &v199 - v16;
  v213 = sub_24B2D14C4();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v211 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v18 - 8);
  v206 = &v199 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280, &qword_24B2F4430);
  MEMORY[0x28223BE20](v20 - 8);
  v199 = &v199 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v22 - 8);
  v231 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v230 = (&v199 - v25);
  MEMORY[0x28223BE20](v26);
  v234 = &v199 - v27;
  MEMORY[0x28223BE20](v28);
  v236 = &v199 - v29;
  v205 = sub_24B2D1524();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v203 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_24B2D1544();
  v237 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v232 = &v199 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB2A0, &unk_24B2F4B50);
  MEMORY[0x28223BE20](v244);
  v33 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v226 = &v199 - v35;
  MEMORY[0x28223BE20](v36);
  v227 = &v199 - v37;
  MEMORY[0x28223BE20](v38);
  v228 = &v199 - v39;
  MEMORY[0x28223BE20](v40);
  v202 = &v199 - v41;
  MEMORY[0x28223BE20](v42);
  v217 = &v199 - v43;
  MEMORY[0x28223BE20](v44);
  v220 = &v199 - v45;
  MEMORY[0x28223BE20](v46);
  v216 = &v199 - v47;
  MEMORY[0x28223BE20](v48);
  v229 = &v199 - v49;
  v50 = sub_24B2D1874();
  v239 = *(v50 - 8);
  v240 = v50;
  MEMORY[0x28223BE20](v50);
  v214 = &v199 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v225 = &v199 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF518, &unk_24B2F5770);
  MEMORY[0x28223BE20](v54);
  v208 = &v199 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v209 = &v199 - v57;
  MEMORY[0x28223BE20](v58);
  v210 = &v199 - v59;
  MEMORY[0x28223BE20](v60);
  v235 = &v199 - v61;
  MEMORY[0x28223BE20](v62);
  v238 = &v199 - v63;
  MEMORY[0x28223BE20](v64);
  v207 = &v199 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50, &unk_24B2ECC40);
  MEMORY[0x28223BE20](v66 - 8);
  v68 = &v199 - v67;
  v69 = type metadata accessor for PersonDetailsController.State(0);
  MEMORY[0x28223BE20](v69);
  v71 = &v199 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DetailsPersonInfo(0);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v243 = &v199 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v248 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v75 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  if (v75)
  {
    swift_getKeyPath();
    v248 = v75;
    sub_24B276E48(&qword_27EFCCD10, type metadata accessor for PersonDetailsController, &protocol conformance descriptor for PersonDetailsController);

    v246 = v75;
    sub_24B2D2584();
    v76 = v246;

    v77 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
    swift_beginAccess();
    sub_24B276CB4(v76 + v77, v71, type metadata accessor for PersonDetailsController.State);
    sub_24B0391CC(&v71[*(v69 + 20)], v68, &qword_27EFCCD50, &unk_24B2ECC40);
    if ((*(v73 + 48))(v68, 1, v72) == 1)
    {
      sub_24AFF8258(v68, &qword_27EFCCD50, &unk_24B2ECC40);
      swift_getKeyPath();
      v247 = v76;
      sub_24B2D2584();

      v78 = *(v76 + v77) ^ 1;
      v79 = sub_24B2D1944();
      v80 = v215;
      (*(*(v79 - 8) + 56))(v215, 1, 1, v79);
      v82 = v239;
      v81 = v240;
      v83 = v214;
      (*(v239 + 104))(v214, *MEMORY[0x277D08CB8], v240);
      v84 = v202;
      LODWORD(v243) = v78 & 1;
      sub_24B2D1894();
      (*(v82 + 8))(v83, v81);
      sub_24AFF8258(v80, &qword_27EFCB288, &unk_24B2EBD20);
      sub_24B008890(v84, v228, &qword_27EFCB2A0, &unk_24B2F4B50);
      sub_24B008890(v84, v227, &qword_27EFCB2A0, &unk_24B2F4B50);
      sub_24B008890(v84, v226, &qword_27EFCB2A0, &unk_24B2F4B50);
      v85 = *(v241 + 56);
      v86 = v245;
      v85(v230, 1, 1, v245);
      v85(v231, 1, 1, v86);
      if (v78)
      {
        v89 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80D0, &qword_24B2DFD30);
        v87 = *(type metadata accessor for PersonLocateAction(0) - 8);
        v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_24B2DE430;
        *(v89 + v88) = 0;
        swift_storeEnumTagMultiPayload();
      }

      v137 = *(v244 + 48);
      v138 = *(v244 + 64);
      sub_24AFF8258(v84, &qword_27EFCB2A0, &unk_24B2F4B50);
      v139 = v242;
      *v242 = 0;
      v139[1] = 0xE000000000000000;
      v140 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
      v141 = v228;
      sub_24B0391CC(v228, v139 + v140[5], &qword_27EFCB270, &unk_24B2EBD40);
      v142 = v227;
      sub_24B0391CC(v227 + v137, v139 + v140[6], &qword_27EFCB270, &unk_24B2EBD40);
      v143 = v226;
      sub_24B0391CC(v226 + v138, v139 + v140[7], &qword_27EFCB298, &qword_24B2F42E0);
      sub_24B0391CC(v230, v139 + v140[8], &qword_27EFCB270, &unk_24B2EBD40);
      sub_24B0391CC(v231, v139 + v140[9], &qword_27EFCB270, &unk_24B2EBD40);
      *(v139 + v140[10]) = v243;
      *(v139 + v140[11]) = v89;
      sub_24AFF8258(v143 + v137, &qword_27EFCB270, &unk_24B2EBD40);
      sub_24AFF8258(v143, &qword_27EFCB270, &unk_24B2EBD40);
      sub_24AFF8258(v142 + v138, &qword_27EFCB298, &qword_24B2F42E0);
      sub_24AFF8258(v142, &qword_27EFCB270, &unk_24B2EBD40);
      sub_24AFF8258(v141 + v138, &qword_27EFCB298, &qword_24B2F42E0);
      return sub_24AFF8258(v141 + v137, &qword_27EFCB270, &unk_24B2EBD40);
    }

    v120 = v243;
    sub_24B276D1C(v68, v243, type metadata accessor for DetailsPersonInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF520, &qword_24B2F4B60);
    v121 = sub_24B2D17A4();
    v122 = *(v121 - 8);
    v123 = *(v122 + 72);
    v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_24B2DEAD0;
    v126 = v125 + v124;
    v127 = *(v122 + 104);
    v127(v126, *MEMORY[0x277D08C58], v121);
    v127(v126 + v123, *MEMORY[0x277D08C50], v121);
    v228 = sub_24B1377DC(v125);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v239 + 104))(v225, *MEMORY[0x277D08CB8], v240);
    v231 = *(v244 + 48);
    LODWORD(v126) = *(v120 + *(v72 + 24));
    v128 = v232;
    sub_24B2D1554();
    v129 = v203;
    sub_24B2D1534();
    v130 = *(v237 + 8);
    v237 += 8;
    v230 = v130;
    v130(v128, v233);
    sub_24B2D1514();
    (*(v204 + 8))(v129, v205);
    LODWORD(v231) = v126;
    sub_24B2D1894();
    v131 = v206;
    sub_24B008890(v120 + *(v72 + 32), v206, &qword_27EFCB278, &unk_24B2EC3C0);
    v132 = sub_24B2D1824();
    v133 = *(v132 - 8);
    if ((*(v133 + 48))(v131, 1, v132) == 1)
    {

      v134 = &qword_27EFCB278;
      v135 = &unk_24B2EC3C0;
      v136 = v131;
    }

    else
    {
      v144 = v199;
      sub_24B2D1814();

      (*(v133 + 8))(v131, v132);
      v145 = sub_24B2D1F54();
      v146 = *(v145 - 8);
      if ((*(v146 + 48))(v144, 1, v145) != 1)
      {
        sub_24B2D1F34();
        (*(v146 + 8))(v144, v145);
        v147 = 0;
        goto LABEL_23;
      }

      v134 = &qword_27EFCB280;
      v135 = &qword_24B2F4430;
      v136 = v144;
    }

    sub_24AFF8258(v136, v134, v135);
    v147 = 1;
LABEL_23:
    v241 = *(v241 + 56);
    (v241)(v236, v147, 1, v245);
    v224 = v54[12];
    v226 = v54[16];
    v227 = v54[20];
    v228 = v54[24];
    v162 = v232;
    sub_24B2D1554();
    sub_24B2D14F4();
    v230(v162, v233);
    (*(v239 + 8))(v225, v240);
    v163 = v229;
    v164 = v216;
    sub_24B008890(v229, v216, &qword_27EFCB2A0, &unk_24B2F4B50);
    v165 = v244;
    v166 = *(v244 + 48);
    v239 = *(v244 + 64);
    v240 = v166;
    v167 = v207;
    sub_24B0391CC(v164, v207, &qword_27EFCB270, &unk_24B2EBD40);
    v168 = v220;
    sub_24B008890(v163, v220, &qword_27EFCB2A0, &unk_24B2F4B50);
    v169 = *(v165 + 48);
    v237 = *(v165 + 64);
    sub_24B0391CC(v168 + v169, &v224[v167], &qword_27EFCB270, &unk_24B2EBD40);
    v170 = v163;
    v171 = v217;
    sub_24B0391CC(v170, v217, &qword_27EFCB2A0, &unk_24B2F4B50);
    v172 = *(v165 + 48);
    sub_24B0391CC(v171 + *(v165 + 64), v167 + v226, &qword_27EFCB298, &qword_24B2F42E0);
    sub_24B0391CC(v236, v167 + v227, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v234, &qword_27EFCB270, &unk_24B2EBD40);
    (v241)(v167 + v228, 1, 1, v245);
    sub_24AFF8258(v171 + v172, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v171, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v168 + v237, &qword_27EFCB298, &qword_24B2F42E0);
    sub_24AFF8258(v168, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v164 + v239, &qword_27EFCB298, &qword_24B2F42E0);
    sub_24AFF8258(v164 + v240, &qword_27EFCB270, &unk_24B2EBD40);
    v173 = v211;
    sub_24B2D14D4();
    v226 = sub_24B2D14B4();
    v225 = v174;
    (*(v212 + 8))(v173, v213);
    sub_24B008890(v167, v238, &qword_27EFCF518, &unk_24B2F5770);
    v175 = v54[12];
    v244 = v54[16];
    v245 = v175;
    v176 = v54[20];
    v240 = v54[24];
    v241 = v176;
    sub_24B008890(v167, v235, &qword_27EFCF518, &unk_24B2F5770);
    v223 = v54[12];
    v239 = v54[16];
    v177 = v54[20];
    v236 = v54[24];
    v237 = v177;
    v178 = v210;
    sub_24B008890(v167, v210, &qword_27EFCF518, &unk_24B2F5770);
    v234 = v54[12];
    v221 = v54[16];
    v179 = v54[20];
    v232 = v54[24];
    v233 = v179;
    v180 = v209;
    sub_24B008890(v167, v209, &qword_27EFCF518, &unk_24B2F5770);
    v230 = v54[12];
    v229 = v54[16];
    v220 = v54[20];
    v228 = v54[24];
    v181 = v208;
    sub_24B008890(v167, v208, &qword_27EFCF518, &unk_24B2F5770);
    v227 = v54[12];
    v224 = v54[16];
    v222 = v54[20];
    v219 = v54[24];
    sub_24B137AFC(&unk_285E48F60);
    v182 = v243;
    v218 = DetailsPersonInfo.locateActions(allowedActions:)();

    sub_24AFF8258(v167, &qword_27EFCF518, &unk_24B2F5770);
    sub_24B276D84(v182, type metadata accessor for DetailsPersonInfo);
    v183 = v242;
    v184 = v225;
    *v242 = v226;
    v183[1] = v184;
    v185 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
    sub_24B0391CC(v238, v183 + v185[5], &qword_27EFCB270, &unk_24B2EBD40);
    v186 = v235;
    sub_24B0391CC(&v223[v235], v183 + v185[6], &qword_27EFCB270, &unk_24B2EBD40);
    sub_24B0391CC(&v221[v178], v183 + v185[7], &qword_27EFCB298, &qword_24B2F42E0);
    sub_24B0391CC(v180 + v220, v183 + v185[8], &qword_27EFCB270, &unk_24B2EBD40);
    sub_24B0391CC(v181 + v219, v183 + v185[9], &qword_27EFCB270, &unk_24B2EBD40);
    *(v183 + v185[10]) = v231;
    *(v183 + v185[11]) = v218;
    sub_24AFF8258(v181 + v222, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(&v224[v181], &qword_27EFCB298, &qword_24B2F42E0);
    sub_24AFF8258(v181 + v227, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v181, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v180 + v228, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v180 + v229, &qword_27EFCB298, &qword_24B2F42E0);
    sub_24AFF8258(v230 + v180, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v180, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(&v232[v178], &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v178 + v233, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v178 + v234, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v178, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v186 + v236, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v186 + v237, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v186 + v239, &qword_27EFCB298, &qword_24B2F42E0);
    sub_24AFF8258(v186, &qword_27EFCB270, &unk_24B2EBD40);
    v187 = v238;
    sub_24AFF8258(&v238[v240], &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v187 + v241, &qword_27EFCB270, &unk_24B2EBD40);
    sub_24AFF8258(v187 + v244, &qword_27EFCB298, &qword_24B2F42E0);
    return sub_24AFF8258(v187 + v245, &qword_27EFCB270, &unk_24B2EBD40);
  }

  v90 = v2;
  v238 = v33;
  v91 = v219;
  v92 = v246;
  sub_24B2D52E4();
  if (qword_27EFC7730 != -1)
  {
    swift_once();
  }

  v93 = v222;
  v94 = __swift_project_value_buffer(v222, qword_27EFE4628);
  v95 = *(v92 + 16);
  v246 = v92 + 16;
  v95(v221, v94, v93);
  sub_24B2D2524();
  sub_24B2D2224();
  v96 = sub_24B2D53B4();
  v98 = v96;
  v99 = v97;
  v100 = v90[5];
  if (v100)
  {
    v237 = v96;
    v243 = v97;
    v102 = v90[3];
    v101 = v90[4];
    if (*(v100 + 16) == 1)
    {
      sub_24B2D1494();
      sub_24B2769CC(v102, v101, v100);
      v103 = sub_24B2D1484();
      sub_24B2D5A64();

      v104 = sub_24B2D15F4();
      if ((*(*(v104 - 8) + 48))(v91, 1, v104) != 1)
      {

        sub_24AFF8258(v91, &qword_27EFCF4F8, &qword_24B2F4CA0);
        v105 = v244;
        v106 = sub_24B2D1944();
        v107 = v215;
        (*(*(v106 - 8) + 56))(v215, 1, 1, v106);
        v109 = v239;
        v108 = v240;
        v110 = v214;
        (*(v239 + 104))(v214, *MEMORY[0x277D08CB8], v240);
        v111 = v216;
        sub_24B2D1894();
        (*(v109 + 8))(v110, v108);
        sub_24AFF8258(v107, &qword_27EFCB288, &unk_24B2EBD20);
        sub_24B008890(v111, v220, &qword_27EFCB2A0, &unk_24B2F4B50);
        v246 = *(v105 + 48);
        v243 = *(v105 + 64);
        v112 = v217;
        sub_24B008890(v111, v217, &qword_27EFCB2A0, &unk_24B2F4B50);
        v237 = *(v105 + 48);
        v240 = *(v105 + 64);
        v113 = v238;
        sub_24B008890(v111, v238, &qword_27EFCB2A0, &unk_24B2F4B50);
        v239 = *(v105 + 48);
        v244 = *(v105 + 64);
        v114 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
        v115 = v242;
        v116 = *(v241 + 56);
        v117 = v245;
        v116(v242 + v114[8], 1, 1, v245);
        v116(&v115[v114[9]], 1, 1, v117);
        sub_24AFF8258(v111, &qword_27EFCB2A0, &unk_24B2F4B50);
        *v115 = 0;
        *(v115 + 1) = 0xE000000000000000;
        v118 = v220;
        sub_24B0391CC(v220, &v115[v114[5]], &qword_27EFCB270, &unk_24B2EBD40);
        sub_24B0391CC(v112 + v237, &v115[v114[6]], &qword_27EFCB270, &unk_24B2EBD40);
        sub_24B0391CC(v113 + v244, &v115[v114[7]], &qword_27EFCB298, &qword_24B2F42E0);
        v115[v114[10]] = 1;
        *&v115[v114[11]] = MEMORY[0x277D84F90];
        sub_24AFF8258(v113 + v239, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(v113, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(v112 + v240, &qword_27EFCB298, &qword_24B2F42E0);
        sub_24AFF8258(v112, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(v118 + v243, &qword_27EFCB298, &qword_24B2F42E0);
        return sub_24AFF8258(v118 + v246, &qword_27EFCB270, &unk_24B2EBD40);
      }
    }

    else
    {
      v157 = sub_24B2D15F4();
      (*(*(v157 - 8) + 56))(v91, 1, 1, v157);
      sub_24B2769CC(v102, v101, v100);
    }

    v158 = v102;
    sub_24AFF8258(v91, &qword_27EFCF4F8, &qword_24B2F4CA0);
    sub_24B2D5314();
    sub_24B2D5304();
    v159 = *(v100 + 16);

    v248 = v159;
    sub_24B2D52F4();
    sub_24B2D5304();
    sub_24B2D5334();
    v95(v221, v94, v222);
    sub_24B2D2524();
    v160 = v200;
    sub_24B2D2224();
    if (v101)
    {

      v161 = v101;
    }

    else
    {
      v158 = v237;
      v161 = v243;
    }

    v188 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
    v190 = v241;
    v189 = v242;
    v191 = *(v241 + 56);
    v192 = v245;
    v191(v242 + v188[5], 1, 1, v245);
    v193 = v188[6];
    (*(v190 + 16))(&v189[v193], v160, v192);
    v191(&v189[v193], 0, 1, v192);
    v194 = v188[7];
    v195 = sub_24B2D1954();
    (*(*(v195 - 8) + 56))(&v189[v194], 1, 1, v195);
    v191(&v189[v188[8]], 1, 1, v192);
    v191(&v189[v188[9]], 1, 1, v192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80D0, &qword_24B2DFD30);
    v196 = *(type metadata accessor for PersonLocateAction(0) - 8);
    v197 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v198 = swift_allocObject();
    *(v198 + 16) = xmmword_24B2DE430;
    *(v198 + v197) = 0;
    swift_storeEnumTagMultiPayload();
    result = (*(v190 + 8))(v160, v192);
    *v189 = v158;
    *(v189 + 1) = v161;
    v189[v188[10]] = 1;
    *&v189[v188[11]] = v198;
  }

  else
  {
    v148 = type metadata accessor for EmbeddedPeopleInteractiveMapView.BottomContent.State(0);
    v149 = v242;
    v150 = *(v241 + 56);
    v151 = v245;
    v150(v242 + v148[5], 1, 1, v245);
    v150(&v149[v148[6]], 1, 1, v151);
    v152 = v148[7];
    v153 = sub_24B2D1954();
    (*(*(v153 - 8) + 56))(&v149[v152], 1, 1, v153);
    v150(&v149[v148[8]], 1, 1, v151);
    v150(&v149[v148[9]], 1, 1, v151);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80D0, &qword_24B2DFD30);
    v154 = *(type metadata accessor for PersonLocateAction(0) - 8);
    v155 = (*(v154 + 80) + 32) & ~*(v154 + 80);
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_24B2DE430;
    *(v156 + v155) = 0;
    result = swift_storeEnumTagMultiPayload();
    *v149 = v98;
    *(v149 + 1) = v99;
    v149[v148[10]] = 0;
    *&v149[v148[11]] = v156;
  }

  return result;
}

uint64_t sub_24B271C44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_24B2D12F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D08AE8], v5, v7);
  sub_24B276E48(&qword_27EFC8118, MEMORY[0x277D08AF0], MEMORY[0x277D08AD0]);
  v10 = sub_24B2D2644();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  v21 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v12 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController);
  MEMORY[0x28223BE20](v11);
  *(&v20 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v20 - 1) = sub_24B276AB0(v13, v14, v15);
  swift_getKeyPath();
  v21 = v12;
  sub_24B276DE4();

  sub_24B2D2584();

  v16 = v12 + *(*v12 + 128);
  swift_beginAccess();
  sub_24B008890(v16, v4, &qword_27EFCF4D8, &unk_24B2F4A20);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510, &qword_24B2F4B48);
  v18 = sub_24B2D19A4();
  (*(*(v17 - 8) + 8))(v4, v17);
  return v18;
}

uint64_t sub_24B271F8C()
{
  v1 = sub_24B2D2534();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24B2D2204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D5344();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24B2D2214();
  MEMORY[0x28223BE20](v7 - 8);
  sub_24B2D52E4();
  if (qword_27EFC7730 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_27EFE4628);
  (*(v3 + 16))(v5, v8, v2);
  sub_24B2D2524();
  sub_24B2D2224();
  result = sub_24B2D53B4();
  if (v0[5])
  {
    v10 = result;
    v12 = v0[3];
    v11 = v0[4];

    if (v11)
    {

      return v12;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_24B272214(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24B2D1794();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB020, &qword_24B2E71F8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  v2[18] = swift_task_alloc();
  v4 = sub_24B2D1C44();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for OpenFindMyAction.Destination(0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for PersonDetailsController.State(0);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50, &unk_24B2ECC40);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for DetailsPersonInfo(0);
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for PersonLocateAction(0);
  v2[35] = swift_task_alloc();
  sub_24B2D5694();
  v2[36] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v2[37] = v7;
  v2[38] = v6;

  return MEMORY[0x2822009F8](sub_24B272528, v7, v6);
}

uint64_t sub_24B272528(__n128 a1)
{
  sub_24B276CB4(v1[12], v1[35], type metadata accessor for PersonLocateAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  swift_getKeyPath();
  v3 = v1[13];
  if (EnumCaseMultiPayload != 1)
  {
    v1[10] = v3;
    sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
    sub_24B2D2584();

    v11 = *(v3 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
    v12 = v1[30];
    v13 = v1[31];
    v14 = v1[29];
    if (v11)
    {
      v16 = v1[26];
      v15 = v1[27];
      swift_getKeyPath();
      v1[11] = v11;
      sub_24B276E48(&qword_27EFCCD10, type metadata accessor for PersonDetailsController, &protocol conformance descriptor for PersonDetailsController);

      sub_24B2D2584();

      v17 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
      swift_beginAccess();
      sub_24B276CB4(v11 + v17, v15, type metadata accessor for PersonDetailsController.State);

      sub_24B0391CC(v15 + *(v16 + 20), v14, &qword_27EFCCD50, &unk_24B2ECC40);
      if ((*(v13 + 48))(v14, 1, v12) != 1)
      {
        v18 = v1[13];
        sub_24B276D1C(v1[29], v1[33], type metadata accessor for DetailsPersonInfo);
        v19 = *(v18 + 104);
        sub_24B2D1724();
        swift_storeEnumTagMultiPayload();
        v53 = (v19 + *v19);
        v20 = swift_task_alloc();
        v1[39] = v20;
        *v20 = v1;
        v20[1] = sub_24B272E48;
        v21 = v1[25];
LABEL_15:

        return v53(v21);
      }
    }

    else
    {
      (*(v13 + 56))(v14, 1, 1, v12);
    }

    v30 = v1[13];
    sub_24AFF8258(v1[29], &qword_27EFCCD50, &unk_24B2ECC40);
    v31 = *(v30 + 104);
    swift_storeEnumTagMultiPayload();
    v53 = (v31 + *v31);
    v32 = swift_task_alloc();
    v1[40] = v32;
    *v32 = v1;
    v32[1] = sub_24B2730E0;
    v21 = v1[24];
    goto LABEL_15;
  }

  v1[8] = v3;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  if (!v4)
  {
    v22 = v1[30];
    v23 = v1[31];
    v24 = v1[28];

    (*(v23 + 56))(v24, 1, 1, v22);
    goto LABEL_9;
  }

  v5 = v1[30];
  v6 = v1[31];
  v8 = v1[27];
  v7 = v1[28];
  v9 = v1[26];
  swift_getKeyPath();
  v1[9] = v4;
  sub_24B276E48(&qword_27EFCCD10, type metadata accessor for PersonDetailsController, &protocol conformance descriptor for PersonDetailsController);

  sub_24B2D2584();

  v10 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
  swift_beginAccess();
  sub_24B276CB4(v4 + v10, v8, type metadata accessor for PersonDetailsController.State);

  sub_24B0391CC(v8 + *(v9 + 20), v7, &qword_27EFCCD50, &unk_24B2ECC40);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {

LABEL_9:
    v25 = v1[28];
    v26 = &qword_27EFCCD50;
    v27 = &unk_24B2ECC40;
LABEL_10:
    sub_24AFF8258(v25, v26, v27);
    sub_24AFF8258(v1[35], &qword_27EFCB280, &qword_24B2F4430);

    v28 = v1[1];

    return v28();
  }

  v33 = v1[32];
  v34 = v1[30];
  v35 = v1[18];
  sub_24B276D1C(v1[28], v33, type metadata accessor for DetailsPersonInfo);
  sub_24B008890(v33 + *(v34 + 28), v35, &qword_27EFCB288, &unk_24B2EBD20);
  v36 = sub_24B2D1944();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v38 = v1[18];
    sub_24B276D84(v1[32], type metadata accessor for DetailsPersonInfo);

    v26 = &qword_27EFCB288;
    v27 = &unk_24B2EBD20;
    v25 = v38;
    goto LABEL_10;
  }

  v39 = v1[21];
  v51 = v1[22];
  v52 = v1[32];
  v40 = v1[20];
  v50 = v1[19];
  v41 = v1[18];
  v42 = v1[15];
  v43 = v1[16];
  v44 = v1[13];
  v45 = v1[14];
  sub_24B2D18B4();
  (*(v37 + 8))(v41, v36);
  (*(v40 + 32))(v51, v39, v50);
  v46 = *(v44 + 88);
  (*(v42 + 16))(v43, v52, v45);
  sub_24B2D1F24();
  sub_24B2D1AA4();
  v54 = (v46 + *v46);
  v47 = swift_task_alloc();
  v1[41] = v47;
  *v47 = v1;
  v47[1] = sub_24B273358;
  v48 = v1[22];
  v49 = v1[17];

  return v54(v48, v49);
}

uint64_t sub_24B272E48()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 200);
  if (v0)
  {

    sub_24B276D84(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B276EE0;
  }

  else
  {
    sub_24B276D84(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B272FB4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B272FB4()
{
  v1 = *(v0 + 264);

  sub_24B276D84(v1, type metadata accessor for DetailsPersonInfo);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B2730E0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 192);
  if (v0)
  {

    sub_24B276D84(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B276EE4;
  }

  else
  {
    sub_24B276D84(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B27324C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B27324C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B273358()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 136);
  if (v0)
  {

    sub_24AFF8258(v4, &qword_27EFCB020, &qword_24B2E71F8);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B276EDC;
  }

  else
  {
    sub_24AFF8258(v4, &qword_27EFCB020, &qword_24B2E71F8);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B2734BC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B2734BC()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];

  (*(v5 + 8))(v3, v4);
  sub_24B276D84(v2, type metadata accessor for DetailsPersonInfo);
  sub_24AFF8258(v1, &qword_27EFCB280, &qword_24B2F4430);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24B273620()
{
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state);
}

void sub_24B2736C8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state);
}

void sub_24B273778(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
    sub_24B2D2574();
  }
}

double sub_24B273890()
{
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  return result;
}

double sub_24B27393C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController);

  return result;
}

double sub_24B2739F0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
    sub_24B2D2574();
  }

  return result;
}

double sub_24B273B2C()
{
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  return result;
}

double sub_24B273BD8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController;
  v3 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController) = a1;

  if (v3)
  {
    PersonDetailsController.onDisappear()();
  }

  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  if (*(v1 + v2))
  {

    PersonDetailsController.onAppear()();
  }

  return result;
}

double sub_24B273CD4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);

  return result;
}

double sub_24B273D88(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2574();

  return result;
}

uint64_t sub_24B273E54(int a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  LODWORD(v46) = a1;
  v11 = sub_24B2D1654();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
  MEMORY[0x28223BE20](v44);
  v45 = &v43 - v14;
  v15 = sub_24B2D2504();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5[3];
  v53 = a5[2];
  v54 = v19;
  v55 = a5[4];
  v56 = *(a5 + 10);
  v20 = a5[1];
  v51 = *a5;
  v52 = v20;
  sub_24B2D24F4();
  v21 = sub_24B2D24B4();
  v23 = v22;
  (*(v16 + 8))(v18, v15);
  *(v6 + 136) = v21;
  *(v6 + 144) = v23;
  sub_24B2D3174();
  *(v6 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state) = 1;
  *(v6 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController) = 0;
  sub_24B2D25B4();
  *(v6 + 16) = v46;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  v24 = v54;
  *(v6 + 80) = v53;
  *(v6 + 96) = v24;
  *(v6 + 112) = v55;
  *(v6 + 128) = v56;
  v25 = v52;
  *(v6 + 48) = v51;
  *(v6 + 64) = v25;
  sub_24B2769CC(a2, a3, a4);
  sub_24B276A10(&v51, v48);
  v46 = v13;
  sub_24B2744AC(a4, v13);
  sub_24B276A6C(a2, a3, a4);
  sub_24B2D1714();
  sub_24B276E48(&qword_27EFCF4E0, MEMORY[0x277D08C20], MEMORY[0x277D08C38]);
  sub_24B2D5C44();
  sub_24B1D096C(*&v48[0]);

  if (qword_27EFC76D8 != -1)
  {
    swift_once();
  }

  sub_24B1D07DC(v26);

  type metadata accessor for ListPersonInfo(0);
  sub_24B276E48(&qword_27EFCCEE8, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  sub_24B276E48(&qword_27EFCCEF0, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  sub_24B276E48(&qword_27EFCCEF8, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  sub_24B276E48(&qword_27EFCCF00, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  v42 = sub_24B276E48(&qword_27EFCCF08, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  sub_24B276AB0(v42, v27, v28);
  v29 = v45;
  sub_24B2D19D4();
  *(v29 + *(v44 + 36)) = 3;
  v30 = v51;
  v31 = v52;
  v33 = *(&v55 + 1);
  v32 = v56;

  sub_24B276B04(&v51);
  v48[0] = v30;
  v48[1] = v31;
  v49 = v33;
  v50 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F0, &unk_24B2F5920);
  swift_allocObject();
  v34 = sub_24B26E278(v29, v48, &qword_27EFCF4D8, &unk_24B2F4A20);
  v35 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController;
  *(v6 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController) = v34;
  swift_getKeyPath();
  v47[0] = v6;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v36 = *(v6 + v35);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = (v36 + *(*v36 + 152));
  swift_beginAccess();
  v39 = *v38;
  v40 = v38[1];
  *v38 = sub_24B276B58;
  v38[1] = v37;

  sub_24AFD5890(v39, v40);

  return v6;
}

uint64_t sub_24B2744AC@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8, &qword_24B2F4CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_24B2D15F4();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24B2D1494();
  v10 = MEMORY[0x28223BE20](v42);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v35 = a2;
    v13 = *(a1 + 16);
    if (v13)
    {
      v15 = *(v9 + 16);
      v14 = v9 + 16;
      v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v39 = *(v14 + 56);
      v40 = v15;
      v41 = v14;
      v17 = (v14 - 8);
      v18 = (v37 + 48);
      v38 = (v37 + 32);
      v19 = MEMORY[0x277D84F90];
      v36 = v7;
      do
      {
        v20 = v42;
        v40(v12, v16, v42, v10);
        v21 = sub_24B2D1484();
        sub_24B2D5A64();

        (*v17)(v12, v20);
        if ((*v18)(v6, 1, v7) == 1)
        {
          sub_24AFF8258(v6, &qword_27EFCF4F8, &qword_24B2F4CA0);
        }

        else
        {
          v22 = *v38;
          (*v38)(v43, v6, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_24B006880(0, v19[2] + 1, 1, v19);
          }

          v24 = v19[2];
          v23 = v19[3];
          if (v24 >= v23 >> 1)
          {
            v19 = sub_24B006880((v23 > 1), v24 + 1, 1, v19);
          }

          v19[2] = v24 + 1;
          v25 = v19 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v24;
          v7 = v36;
          v22(v25, v43, v36);
        }

        v16 += v39;
        --v13;
      }

      while (v13);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v30 = sub_24B1D0160(v19);

    v31 = v35;
    *v35 = v30;
    v32 = *MEMORY[0x277D08B88];
    v33 = sub_24B2D1654();
    return (*(*(v33 - 8) + 104))(v31, v32, v33);
  }

  else
  {
    v26 = *MEMORY[0x277D08B90];
    v27 = sub_24B2D1654();
    v28 = *(*(v27 - 8) + 104);

    return v28(a2, v26, v27);
  }
}

double sub_24B2748C4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_24B2D56D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_24B2D5694();

  v8 = sub_24B2D5684();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = a1;

  sub_24B00B0F0(0, 0, v5, &unk_24B2F4A68, v9);

  return result;
}

uint64_t sub_24B274A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_24B2D5694();
  v5[8] = sub_24B2D5684();
  v7 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B274AF4, v7, v6);
}

uint64_t sub_24B274AF4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_24B274B9C(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_24B274B9C(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_24B2D2504();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersonDetailsController.State(0);
  MEMORY[0x28223BE20](v5);
  v54 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1574();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018, &qword_24B2E71F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = sub_24B2D1794();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  v57 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8, &qword_24B2F4CA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_24B2D15F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v60 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v61 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state))
  {
    return;
  }

  v20 = v1[5];
  if (!v20 || *(v20 + 16) != 1)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_10;
  }

  sub_24B2D1494();
  v21 = sub_24B2D1484();
  sub_24B2D5A64();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_10:
    sub_24AFF8258(v16, &qword_27EFCF4F8, &qword_24B2F4CA0);
    return;
  }

  v22 = v60;
  (*(v18 + 32))(v60, v16, v17);
  swift_getKeyPath();
  v61 = v2;
  sub_24B2D2584();

  if (*(v2 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController))
  {
LABEL_8:
    (*(v18 + 8))(v22, v17);
    return;
  }

  MEMORY[0x28223BE20](v23);
  *(&v42 - 2) = v22;
  sub_24B26E090(sub_24B276C20, v55, MEMORY[0x277D08C40], v11);
  v55 = 0;
  v25 = v58;
  v24 = v59;
  if ((*(v58 + 48))(v11, 1, v59) == 1)
  {
    sub_24AFF8258(v11, &qword_27EFCB018, &qword_24B2E71F0);
    goto LABEL_8;
  }

  (*(v25 + 32))(v57, v11, v24);
  _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
  v26 = v2[6];
  v27 = v2[7];
  v29 = v2[8];
  v28 = v2[9];
  v30 = v2[10];
  v43 = qword_27EFC76D0;
  v48 = v26;

  v47 = v27;

  v46 = v29;

  v45 = v28;

  v44 = v30;

  if (v43 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v5, qword_27EFCCDA0);
  v32 = v54;
  sub_24B276CB4(v31, v54, type metadata accessor for PersonDetailsController.State);
  type metadata accessor for PersonDetailsController(0);
  v33 = swift_allocObject();
  v34 = v49;
  sub_24B2D24F4();
  v35 = sub_24B2D24B4();
  v37 = v36;
  (*(v52 + 8))(v34, v53);
  *(v33 + 16) = v35;
  *(v33 + 24) = v37;
  sub_24B2D3174();
  *(v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask) = 0;
  *(v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
  sub_24B2D25B4();
  (*(v50 + 32))(v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v56, v51);
  sub_24B276D1C(v32, v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state, type metadata accessor for PersonDetailsController.State);
  v38 = (v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
  v39 = v47;
  *v38 = v48;
  v38[1] = v39;
  v40 = v45;
  v38[2] = v46;
  v38[3] = v40;
  v38[4] = v44;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v42 - 2) = v2;
  *(&v42 - 1) = v33;
  v61 = v2;
  sub_24B2D2574();

  (*(v58 + 8))(v57, v59);
  (*(v18 + 8))(v60, v17);
}

double sub_24B2753CC()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, &v13);
    _os_log_impl(&dword_24AFD2000, v2, v3, "EmbeddedPeopleInteractiveMapViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_getKeyPath();
  v13 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state) == 1)
  {
    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, &v13);
      _os_log_impl(&dword_24AFD2000, v6, v7, "EmbeddedPeopleInteractiveMapViewModel: %s - Already Paused", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C23D530](v9, -1, -1);
      MEMORY[0x24C23D530](v8, -1, -1);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v1;
    sub_24B2D2574();
  }

  swift_getKeyPath();
  v13 = v1;
  sub_24B2D2584();

  sub_24B28B758();

  swift_getKeyPath();
  v13 = v1;
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController))
  {

    PersonDetailsController.onDisappear()();
  }

  v11 = swift_getKeyPath();
  MEMORY[0x28223BE20](v11);
  v13 = v1;
  sub_24B2D2574();

  return result;
}

double sub_24B2757C0()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v17);
    _os_log_impl(&dword_24AFD2000, v2, v3, "EmbeddedPeopleInteractiveMapViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_getKeyPath();
  v17 = v1;
  sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v6 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state;
  v7 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__state);
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();
  v10 = os_log_type_enabled(v8, v9);
  if (v7)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v17);
      _os_log_impl(&dword_24AFD2000, v8, v9, "EmbeddedPeopleInteractiveMapViewModel: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);
    }

    if (*(v1 + v6))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v17 = v1;
      sub_24B2D2574();
    }

    else
    {
      *(v1 + v6) = 0;
    }

    swift_getKeyPath();
    v17 = v1;
    sub_24B2D2584();

    sub_24B28B0A0();
  }

  else
  {
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v17);
      _os_log_impl(&dword_24AFD2000, v8, v9, "EmbeddedPeopleInteractiveMapViewModel: %s Trying to resume but it's not paused", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C23D530](v15, -1, -1);
      MEMORY[0x24C23D530](v14, -1, -1);
    }
  }

  return result;
}

uint64_t sub_24B275B90(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B2D15F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D1724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8020, &qword_24B2DFC80);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24B2DE430;
  (*(v4 + 16))(v8 + v7, a2, v3);
  sub_24B137C44(v8);
  swift_setDeallocating();
  v9 = *(v4 + 8);
  v9(v8 + v7, v3);
  swift_deallocClassInstance();
  LOBYTE(v8) = sub_24B2D15E4();

  v9(v6, v3);

  return v8 & 1;
}

void sub_24B275D94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for PersonDetailsController.State(0);
  MEMORY[0x28223BE20](v52);
  v57 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1574();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF530, &qword_24B2F4B70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - v17;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel___observationRegistrar;
  v61 = v1;
  v58 = sub_24B276E48(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);
  sub_24B2D2584();

  v20 = *(v1 + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__detailsController);
  sub_24B008890(a1, v18, &qword_27EFCE348, &qword_24B2F09E0);
  if ((*(v8 + 48))(v18, 1, v7) == 1)
  {
    if (v20)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v43 - 2) = v1;
      *(&v43 - 1) = 0;
      v61 = v1;
      sub_24B2D2574();
    }
  }

  else
  {
    v50 = v19;
    v51 = v12;
    if (v20 && (((*(v8 + 16))(v15, v18, v7), sub_24B276E48(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]), , sub_24B2D54E4(), sub_24B2D54E4(), v61 != v59) || v62 != v60 ? (v22 = sub_24B2D6004()) : (v22 = 1), , v23 = *(v8 + 8), v23(v15, v7), , , (v22 & 1) != 0))
    {
      v23(v18, v7);
    }

    else
    {
      v24 = v51;
      v48 = *(v8 + 32);
      v48(v51, v18, v7);
      v25 = v53;
      (*(v8 + 16))(v53, v24, v7);
      v26 = v2[7];
      v27 = v2[8];
      v28 = v2[9];
      v29 = v2[10];
      v30 = qword_27EFC76D0;
      v49 = v2[6];

      v47 = v26;

      v46 = v27;

      v45 = v28;

      v44 = v29;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v52, qword_27EFCCDA0);
      v32 = v57;
      sub_24B276CB4(v31, v57, type metadata accessor for PersonDetailsController.State);
      type metadata accessor for PersonDetailsController(0);
      v33 = swift_allocObject();
      v34 = v54;
      sub_24B2D24F4();
      v35 = sub_24B2D24B4();
      v37 = v36;
      (*(v55 + 8))(v34, v56);
      *(v33 + 16) = v35;
      *(v33 + 24) = v37;
      sub_24B2D3174();
      *(v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask) = 0;
      *(v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
      sub_24B2D25B4();
      v48((v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier), v25, v7);
      sub_24B276D1C(v32, v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state, type metadata accessor for PersonDetailsController.State);
      v38 = (v33 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
      v39 = v46;
      v40 = v47;
      *v38 = v49;
      v38[1] = v40;
      v38[2] = v39;
      v41 = v44;
      v38[3] = v45;
      v38[4] = v41;
      v42 = swift_getKeyPath();
      MEMORY[0x28223BE20](v42);
      *(&v43 - 2) = v2;
      *(&v43 - 1) = v33;
      v61 = v2;
      sub_24B2D2574();

      (*(v8 + 8))(v51, v7);
    }
  }
}

uint64_t sub_24B2764CC()
{
  sub_24B276A6C(v0[3], v0[4], v0[5]);

  v1 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel___observationRegistrar;
  v4 = sub_24B2D25C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmbeddedPeopleInteractiveMapViewModel(uint64_t a1)
{
  result = qword_27EFCF4A8;
  if (!qword_27EFCF4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B27669C(uint64_t a1)
{
  result = sub_24B2D3184();
  if (v2 <= 0x3F)
  {
    result = sub_24B2D25C4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore37EmbeddedPeopleInteractiveMapViewModelC13ConfigurationO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B2767CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B27681C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

void *sub_24B276874(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

unint64_t sub_24B2768AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF4B8;
  if (!qword_27EFCF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF4B8);
  }

  return result;
}

uint64_t sub_24B276948(uint64_t a1)
{
  *(a1 + 8) = sub_24B276E48(&qword_27EFCF4C8, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F49C4);
  result = sub_24B276E48(&qword_27EFCF4D0, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4964);
  *(a1 + 16) = result;
  return result;
}

double sub_24B2769CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24B276A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_24B276AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF4E8;
  if (!qword_27EFCF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF4E8);
  }

  return result;
}

uint64_t sub_24B276B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B274A58(a1, v4, v5, v7, v6);
}

void sub_24B276C70()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore37EmbeddedPeopleInteractiveMapViewModel__listController) = *(v0 + 24);
}

uint64_t sub_24B276CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B276D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B276D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B276DE4()
{
  result = qword_27EFCF508;
  if (!qword_27EFCF508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF4F0, &unk_24B2F5920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF508);
  }

  return result;
}

uint64_t sub_24B276E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24B276F24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24B276F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B276FD0@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v1 = sub_24B2D2674();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24B2D3184();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v57);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v70 = &v57 - v13;
  sub_24B2D3174();
  v67 = sub_24B2D2AE4();
  LODWORD(v69) = *MEMORY[0x277D09048];
  v64 = *(v2 + 104);
  v58 = v1;
  v64(v4);
  v15 = sub_24B2D2954();
  v16 = *(v2 + 8);
  v59 = (v2 + 8);
  v60 = v16;
  (v16)(v4, v1);
  v71 = v5;
  v17 = v5 + 32;
  v18 = *(v5 + 32);
  v68 = v11;
  v19 = v14;
  v20 = v57;
  v18(v11, v19, v57);
  v72 = *(v5 + 80);
  v21 = (v72 + 24) & ~v72;
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = v11;
  v24 = v20;
  v18((v22 + v21), v23, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_24B2F09A0;
  *(v25 + 24) = v15;
  *&v74 = &unk_24B2F0990;
  *(&v74 + 1) = v22;
  *&v75 = &unk_24B2F09B0;
  *(&v75 + 1) = v25;
  v76 = sub_24B1F0DA0;
  v77 = 0;
  type metadata accessor for PeopleProvider(0);
  swift_allocObject();

  v65 = PeopleProvider.init(dependencies:)(&v74);
  v26 = v70;
  sub_24B2D3174();
  v27 = v58;
  (v64)(v4, v69, v58);
  v28 = sub_24B2D2954();
  v60(v4, v27);
  v29 = v68;
  v30 = v26;
  v61 = v17;
  v18(v68, v26, v24);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v18((v31 + v21), v29, v24);
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_24B2F0F08;
  *(v32 + 24) = v28;
  *&v74 = &unk_24B2F0EF8;
  *(&v74 + 1) = v31;
  *&v75 = &unk_24B2F0F38;
  *(&v75 + 1) = v32;
  v76 = &unk_24B2F0F18;
  v77 = v28;
  v78 = &unk_24B2F0F28;
  v79 = v28;
  v80 = sub_24B1FEF20;
  v81 = 0;
  v82 = sub_24B1FEF34;
  v83 = 0;
  type metadata accessor for PeopleLocationsProvider(0);
  swift_allocObject();
  swift_retain_n();
  v64 = PeopleLocationsProvider.init(dependencies:)(&v74);
  sub_24B2D3174();
  v59 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v33 = *(v71++ + 2);
  v33(v29, v30, v24);
  v34 = (v72 + 16) & ~v72;
  v35 = v34 + v6;
  v60 = swift_allocObject();
  v18(v60 + v34, v29, v24);
  v36 = v62;
  v37 = v70;
  v33(v62, v70, v24);
  v67 = v35;
  v38 = swift_allocObject();
  v69 = v34;
  v18((v38 + v34), v36, v24);
  *(v38 + ((v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v39 = v63;
  v18(v63, v37, v24);
  v40 = swift_allocObject();
  v18((v40 + v34), v39, v24);
  v41 = swift_allocObject();
  *(v41 + 16) = &unk_24B2EF0B0;
  *(v41 + 24) = v40;
  *&v74 = sub_24B183EAC;
  *(&v74 + 1) = v60;
  *&v75 = &unk_24B2EF0A0;
  *(&v75 + 1) = v38;
  v76 = &unk_24B2EF0C0;
  v77 = v41;
  type metadata accessor for ContactsProvider(0);
  swift_allocObject();
  v71 = ContactsProvider.init(dependencies:)(&v74);
  static UserLocationProvider.Dependencies.live(customEffectiveBundleIdentifier:)(0, 0, &v74);
  v73[0] = v74;
  v73[1] = v75;
  type metadata accessor for UserLocationProvider(0);
  swift_allocObject();
  v63 = UserLocationProvider.init(dependencies:)(v73);
  v42 = v37;
  sub_24B2D3174();
  v43 = v68;
  v18(v68, v42, v24);
  v44 = swift_allocObject();
  v18((v44 + v69), v43, v24);
  type metadata accessor for ETAProvider(0);
  v45 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_24B2D3174();
  v46 = v45 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  v47 = MEMORY[0x277D84F90];
  *(v46 + 24) = sub_24B193CA8(MEMORY[0x277D84F90]);
  *(v46 + 16) = 0;
  *(v46 + 32) = sub_24B1933E8(v47);
  *v46 = 0x69766F7250415445;
  *(v46 + 8) = 0xEB00000000726564;
  v48 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_etaQueryTaskByIdentifier;
  *(v45 + v48) = sub_24B193E9C(v47);
  *(v45 + 112) = &unk_24B2EF440;
  *(v45 + 120) = v44;
  v49 = v70;
  sub_24B2D3174();
  v18(v43, v49, v24);
  v62 = swift_allocObject();
  v50 = v69;
  v18(&v62[v69], v43, v24);
  sub_24B2D3174();
  v18(v43, v49, v24);
  v51 = swift_allocObject();
  v18((v51 + v50), v43, v24);
  sub_24B2D3174();
  v18(v43, v49, v24);
  v52 = swift_allocObject();
  result = (v18)(v52 + v50, v43, v24);
  v54 = v66;
  v55 = v64;
  *v66 = v65;
  v54[1] = v55;
  v56 = v63;
  v54[2] = v71;
  v54[3] = v56;
  v54[4] = v45;
  v54[5] = &unk_24B2F4BE0;
  v54[6] = v62;
  v54[7] = &unk_24B2F4BE8;
  v54[8] = v51;
  v54[9] = sub_24B1246F4;
  v54[10] = v52;
  return result;
}

uint64_t sub_24B277AE0(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_24B2D3184() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFDE44;

  return sub_24B0E5074(a1, a2, v2 + v7);
}

uint64_t sub_24B277BC0(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFD370;

  return sub_24B0EBEDC(a1, v1 + v5);
}

void *sub_24B277CA8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void (*a3)(void)@<X1>, uint64_t a4@<X2>)
{
  result = sub_24B277CD0(a2, a3, a4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void *sub_24B277CD0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v167 = a3;
  v196 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDCC8, &qword_24B2EF430);
  v195 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v143 = &v137 - v5;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FE8, &unk_24B2F4C80);
  v166 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v142 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v162 = &v137 - v8;
  MEMORY[0x28223BE20](v9);
  v190 = &v137 - v10;
  MEMORY[0x28223BE20](v11);
  v192 = &v137 - v12;
  MEMORY[0x28223BE20](v13);
  v191 = &v137 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v137 - v16;
  v18 = sub_24B2D1C44();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v138 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v141 = &v137 - v22;
  MEMORY[0x28223BE20](v23);
  v140 = &v137 - v24;
  MEMORY[0x28223BE20](v25);
  v188 = &v137 - v26;
  MEMORY[0x28223BE20](v27);
  v147 = &v137 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v29 - 8);
  v161 = &v137 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v31 - 8);
  v160 = &v137 - v32;
  v159 = sub_24B2D14C4();
  v33 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for AnnotationV2(0);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v175 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v174 = &v137 - v37;
  v38 = sub_24B2D1974();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v137 = &v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v179 = &v137 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v43 - 8);
  v165 = &v137 - v44;
  v164 = sub_24B2D1944();
  v45 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v47 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for ListPersonInfo(0);
  v48 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v180 = &v137 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = v167;
  v51 = *(v167 + 16);
  v52 = MEMORY[0x277D84F90];
  v186 = v19;
  v176 = v39;
  v173 = v51;
  if (v51)
  {
    v182 = v47;
    v53 = 0;
    v54 = v48;
    v171 = v167 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v170 = (v45 + 48);
    v154 = (v45 + 32);
    v153 = *MEMORY[0x277D08CF0];
    v152 = (v39 + 104);
    v169 = (v39 + 16);
    v151 = (v33 + 8);
    v178 = (v19 + 32);
    v184 = (v19 + 16);
    v185 = (v39 + 32);
    v150 = (v19 + 48);
    v146 = (v19 + 8);
    v139 = (v195 + 8);
    v149 = (v39 + 8);
    v148 = (v45 + 8);
    v177 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    v155 = v17;
    v56 = v165;
    v57 = v164;
    v58 = v163;
    v59 = v54;
    v60 = v167;
    v189 = v38;
    v172 = v54;
    while (1)
    {
      if (v53 >= *(v60 + 16))
      {
        __break(1u);
        return result;
      }

      v61 = v60;
      v62 = *(v59 + 72);
      v183 = v53;
      v63 = v180;
      sub_24B279348(v171 + v62 * v53, v180, type metadata accessor for ListPersonInfo);
      sub_24B008890(v63 + *(v58 + 28), v56, &qword_27EFCB288, &unk_24B2EBD20);
      if ((*v170)(v56, 1, v57) != 1)
      {
        break;
      }

      sub_24B279484(v63, type metadata accessor for ListPersonInfo);
      result = sub_24AFF8258(v56, &qword_27EFCB288, &unk_24B2EBD20);
      v60 = v61;
LABEL_4:
      v53 = v183 + 1;
      v59 = v172;
      if (v183 + 1 == v173)
      {

        v52 = MEMORY[0x277D84F90];
        v122 = v177;
        goto LABEL_35;
      }
    }

    v181 = v55;
    (*v154)(v182, v56, v57);
    v64 = v179;
    _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
    (*v152)(v64, v153, v38);
    v65 = v174;
    v168 = *v169;
    v168(v174, v64, v38);
    v66 = v158;
    sub_24B2D14D4();
    v196 = sub_24B2D14B4();
    v68 = v67;
    (*v151)(v66, v159);
    v69 = v157;
    v70 = *(v157 + 24);
    v71 = *(v58 + 20);
    v72 = sub_24B2D1494();
    v73 = *(v72 - 8);
    (*(v73 + 16))(v65 + v70, v63 + v71, v72);
    (*(v73 + 56))(v65 + v70, 0, 1, v72);
    type metadata accessor for Icon(0);
    swift_storeEnumTagMultiPayload();
    sub_24B2D18B4();
    v74 = v160;
    sub_24B2D1864();
    v75 = v161;
    sub_24B2C0340(0, 0, v161);
    v76 = v69[8];
    v77 = sub_24B2D24A4();
    (*(*(v77 - 8) + 56))(v65 + v76, 1, 1, v77);
    v78 = v69[9];
    v79 = sub_24B2D1BB4();
    (*(*(v79 - 8) + 56))(v65 + v78, 1, 1, v79);
    v80 = (v65 + v69[5]);
    *v80 = v196;
    v80[1] = v68;
    sub_24B068E10(v74, v65 + v76, &qword_27EFC8450, &qword_24B2DE7A0);
    v81 = v177;
    sub_24B068E10(v75, v65 + v78, &qword_27EFC8A80, &qword_24B2E8E00);
    sub_24B279348(v65, v175, type metadata accessor for AnnotationV2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_24B007360(0, v81[2] + 1, 1, v81);
    }

    v82 = v178;
    v84 = v81[2];
    v83 = v81[3];
    v38 = v189;
    v55 = v181;
    v85 = v182;
    if (v84 >= v83 >> 1)
    {
      v81 = sub_24B007360((v83 > 1), v84 + 1, 1, v81);
    }

    v81[2] = v84 + 1;
    v86 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v177 = v81;
    sub_24B2793B0(v175, v81 + v86 + *(v156 + 72) * v84);
    v87 = v55[2];
    if (v87)
    {
      v197 = MEMORY[0x277D84F90];
      sub_24B007C34(0, v87, 0);
      v88 = v197;
      v89 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v187 = *(v166 + 72);
      v90 = v188;
      do
      {
        v195 = v87;
        v196 = v88;
        v91 = v18;
        v92 = v191;
        sub_24B008890(v89, v191, &qword_27EFC7FE8, &unk_24B2F4C80);
        v93 = v192;
        sub_24B008890(v92, v192, &qword_27EFC7FE8, &unk_24B2F4C80);
        v94 = *(v193 + 48);
        v95 = v190;
        (*v185)(v190, v93, v189);
        v194 = *v82;
        (v194)(v95 + v94, v93 + v94, v91);
        (*v184)(v90, v95 + v94, v91);
        sub_24AFF8258(v95, &qword_27EFC7FE8, &unk_24B2F4C80);
        v88 = v196;
        sub_24AFF8258(v92, &qword_27EFC7FE8, &unk_24B2F4C80);
        v197 = v88;
        v97 = *(v88 + 16);
        v96 = *(v88 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_24B007C34((v96 > 1), v97 + 1, 1);
          v88 = v197;
        }

        *(v88 + 16) = v97 + 1;
        v90 = v188;
        (v194)(v88 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v97, v188, v91);
        v89 += v187;
        v87 = (v195 - 1);
        v18 = v91;
      }

      while (v195 != 1);
      v60 = v167;
      v38 = v189;
      v98 = v155;
      v55 = v181;
      v85 = v182;
    }

    else
    {
      v88 = MEMORY[0x277D84F90];
      v60 = v167;
      v98 = v155;
    }

    sub_24B2C0D5C(v88, v98);

    if ((*v150)(v98, 1, v18) == 1)
    {
      sub_24AFF8258(v98, &qword_27EFCE590, &unk_24B2EC160);
      v99 = v140;
      sub_24B2D18B4();
      v100 = *(v193 + 48);
      v101 = v162;
      v168(v162, v179, v38);
      (*v178)(&v101[v100], v99, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_24B007154(0, v55[2] + 1, 1, v55);
      }

      v57 = v164;
      v103 = v55[2];
      v102 = v55[3];
      if (v103 >= v102 >> 1)
      {
        v55 = sub_24B007154((v102 > 1), v103 + 1, 1, v55);
      }

      (*v149)(v179, v38);
      (*v148)(v85, v57);
      sub_24B279484(v180, type metadata accessor for ListPersonInfo);
      v55[2] = v103 + 1;
      v104 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v103;
      v105 = &v194;
    }

    else
    {
      v106 = v147;
      v195 = *v82;
      (v195)(v147, v98, v18);
      v107 = v141;
      sub_24B2D18B4();
      v108 = v143;
      sub_24B2D1C34();
      v196 = *v146;
      (v196)(v107, v18);
      v109 = [objc_opt_self() kilometers];
      sub_24B2794E4();
      v110 = v144;
      sub_24B2D1FE4();
      sub_24B279530();
      v111 = v145;
      v112 = sub_24B2D5284();
      v113 = *v139;
      (*v139)(v110, v111);
      v113(v108, v111);
      if ((v112 & 1) == 0)
      {
        (v196)(v106, v18);
        (*v149)(v179, v38);
        v57 = v164;
        (*v148)(v182, v164);
        sub_24B279484(v180, type metadata accessor for ListPersonInfo);
        result = sub_24B279484(v174, type metadata accessor for AnnotationV2);
        v60 = v167;
        v55 = v181;
        goto LABEL_32;
      }

      v114 = v196;
      v115 = v138;
      sub_24B2D18B4();
      v116 = *(v193 + 48);
      v117 = v142;
      v168(v142, v179, v38);
      (v195)(&v117[v116], v115, v18);
      v55 = v181;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v164;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_24B007154(0, v55[2] + 1, 1, v55);
      }

      v60 = v167;
      v119 = v114;
      v121 = v55[2];
      v120 = v55[3];
      if (v121 >= v120 >> 1)
      {
        v55 = sub_24B007154((v120 > 1), v121 + 1, 1, v55);
      }

      v119();
      (*v149)(v179, v38);
      (*v148)(v182, v57);
      sub_24B279484(v180, type metadata accessor for ListPersonInfo);
      v55[2] = v121 + 1;
      v104 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v121;
      v105 = &v174;
    }

    sub_24B279414(*(v105 - 32), v104);
    result = sub_24B279484(v174, type metadata accessor for AnnotationV2);
LABEL_32:
    v56 = v165;
    v58 = v163;
    goto LABEL_4;
  }

  v122 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
LABEL_35:
  v123 = v55[2];
  v124 = v186;
  if (v123)
  {
    v188 = v18;
    v197 = v52;
    v177 = v122;

    sub_24B007BF0(0, v123, 0);
    v125 = v197;
    v126 = (*(v166 + 80) + 32) & ~*(v166 + 80);
    v181 = v55;
    v127 = v55 + v126;
    v187 = *(v166 + 72);
    v128 = (v176 + 32);
    v185 = (v176 + 16);
    v186 = v124 + 32;
    v129 = v137;
    do
    {
      v195 = v123;
      v196 = v125;
      v130 = v191;
      sub_24B008890(v127, v191, &qword_27EFC7FE8, &unk_24B2F4C80);
      v131 = v192;
      sub_24B008890(v130, v192, &qword_27EFC7FE8, &unk_24B2F4C80);
      v132 = *(v193 + 48);
      v133 = v190;
      v194 = *v128;
      (v194)(v190, v131, v38);
      (*v186)(v133 + v132, v131 + v132, v188);
      (*v185)(v129, v133, v38);
      sub_24AFF8258(v133, &qword_27EFC7FE8, &unk_24B2F4C80);
      v134 = v130;
      v125 = v196;
      sub_24AFF8258(v134, &qword_27EFC7FE8, &unk_24B2F4C80);
      v197 = v125;
      v136 = *(v125 + 16);
      v135 = *(v125 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_24B007BF0((v135 > 1), v136 + 1, 1);
        v125 = v197;
      }

      *(v125 + 16) = v136 + 1;
      (v194)(v125 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v136, v129, v38);
      v127 += v187;
      v123 = (v195 - 1);
    }

    while (v195 != 1);
    v122 = v177;
  }

  else
  {

    v125 = MEMORY[0x277D84F90];
  }

  sub_24B1D1980(v125);

  return v122;
}

uint64_t sub_24B279348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B2793B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationV2(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B279414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FE8, &unk_24B2F4C80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B279484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B2794E4()
{
  result = qword_27EFCF538;
  if (!qword_27EFCF538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCF538);
  }

  return result;
}

unint64_t sub_24B279530()
{
  result = qword_27EFCF540;
  if (!qword_27EFCF540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCDCC8, &qword_24B2EF430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF540);
  }

  return result;
}

uint64_t sub_24B279594()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCF548);
  __swift_project_value_buffer(v0, qword_27EFCF548);
  return sub_24B2D3174();
}

uint64_t sub_24B27960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_24B2D1494();
  v66 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880, &unk_24B2DE440);
  MEMORY[0x28223BE20](v15 - 8);
  v64 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  v20 = *(a5 + 48);
  v70[2] = *(a5 + 32);
  v70[3] = v20;
  v70[4] = *(a5 + 64);
  v71 = *(a5 + 80);
  v21 = *(a5 + 16);
  v70[0] = *a5;
  v70[1] = v21;
  if (qword_27EFC7728 != -1)
  {
    swift_once();
  }

  v22 = sub_24B2D3184();
  __swift_project_value_buffer(v22, qword_27EFCF548);
  sub_24AFEFFE4(a2, v19);

  v23 = sub_24B2D3164();
  v24 = sub_24B2D5934();

  if (os_log_type_enabled(v23, v24))
  {
    v60 = v24;
    v61 = v19;
    v25 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v67 = v59;
    *v25 = 136315906;
    *(v25 + 4) = sub_24AFF321C(0xD00000000000002ALL, 0x800000024B2DDB70, &v67);
    v65 = v25;
    *(v25 + 12) = 2080;
    v26 = *(a1 + 16);
    v27 = MEMORY[0x277D84F90];
    v62 = a3;
    v63 = a1;
    if (v26)
    {
      v55 = v23;
      v56 = a4;
      v57 = a2;
      v58 = a6;
      v68 = MEMORY[0x277D84F90];
      sub_24B2D5CF4();
      v28 = v12;
      v29 = v66 + 16;
      v66 = *(v66 + 16);
      v30 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v31 = *(v29 + 56);
      do
      {
        (v66)(v14, v30, v28);
        sub_24B2D1484();
        (*(v29 - 8))(v14, v28);
        sub_24B2D5CC4();
        sub_24B2D5D04();
        sub_24B2D5D14();
        sub_24B2D5CD4();
        v30 += v31;
        --v26;
      }

      while (v26);
      v27 = v68;
      a6 = v58;
      a2 = v57;
      a4 = v56;
      v23 = v55;
    }

    v32 = sub_24AFFF54C();
    v33 = MEMORY[0x24C23BD20](v27, v32);
    v35 = v34;

    v36 = sub_24AFF321C(v33, v35, &v67);

    v38 = v64;
    v37 = v65;
    *(v65 + 14) = v36;
    *(v37 + 22) = 2080;
    v39 = v61;
    sub_24AFEFFE4(v61, v38);
    v40 = sub_24B2D1704();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v38, 1, v40) == 1)
    {
      sub_24AFF8258(v38, &qword_27EFC7880, &unk_24B2DE440);
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      v43 = sub_24B2D16F4();
      v42 = v44;
      (*(v41 + 8))(v38, v40);
    }

    a1 = v63;
    sub_24AFF8258(v39, &qword_27EFC7880, &unk_24B2DE440);
    v45 = sub_24AFF321C(v43, v42, &v67);

    v46 = v65;
    *(v65 + 24) = v45;
    *(v46 + 32) = 2080;
    a3 = v62;
    v68 = v62;
    v69 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC198, &qword_24B2EB218);
    v47 = sub_24B2D5A74();
    v49 = sub_24AFF321C(v47, v48, &v67);

    *(v46 + 34) = v49;
    _os_log_impl(&dword_24AFD2000, v23, v60, "FindMyMessagesDetailsView: %s\n- people: %s\n- callerHandle: %s\n- customName: %s", v46, 0x2Au);
    v50 = v59;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v50, -1, -1);
    MEMORY[0x24C23D530](v46, -1, -1);
  }

  else
  {

    sub_24AFF8258(v19, &qword_27EFC7880, &unk_24B2DE440);
  }

  v51 = sub_24B134048(&unk_285E48F88);
  type metadata accessor for EmbeddedPeopleSummaryMapViewModel(0);
  swift_allocObject();
  v67 = sub_24B29E3A4(a3, a4, a1, v51, v70);
  sub_24B2D4CC4();
  result = sub_24AFF8258(a2, &qword_27EFC7880, &unk_24B2DE440);
  v53 = v69;
  *a6 = v68;
  a6[1] = v53;
  return result;
}

uint64_t sub_24B279C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688, &qword_24B2E88F0);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v47 - v13;
  v64 = sub_24B2D15F4();
  v14 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24B2D1494();
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880, &unk_24B2DE440);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v20 = *(a5 + 48);
  v67[2] = *(a5 + 32);
  v67[3] = v20;
  v67[4] = *(a5 + 64);
  v68 = *(a5 + 80);
  v21 = *(a5 + 16);
  v67[0] = *a5;
  v67[1] = v21;
  if (qword_27EFC7728 != -1)
  {
    swift_once();
  }

  v22 = sub_24B2D3184();
  __swift_project_value_buffer(v22, qword_27EFCF548);
  v23 = sub_24B2D3164();
  v24 = sub_24B2D5934();
  v25 = os_log_type_enabled(v23, v24);
  v52 = a3;
  v51 = v19;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = a1;
    v28 = swift_slowAlloc();
    v66[0] = v28;
    *v26 = 136315138;
    *(v26 + 4) = sub_24AFF321C(0xD00000000000002ALL, 0x800000024B2DDB70, v66);
    _os_log_impl(&dword_24AFD2000, v23, v24, "FindMyMessagesDetailsView: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    a1 = v27;
    MEMORY[0x24C23D530](v29, -1, -1);
    MEMORY[0x24C23D530](v26, -1, -1);
  }

  v60 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v30 = *(a1 + 16);
  if (v30)
  {
    v48 = a4;
    v49 = a2;
    v50 = a6;
    v66[0] = MEMORY[0x277D84F90];
    sub_24B007848(0, v30, 0);
    v56 = sub_24B2D5694();
    v31 = v14 + 16;
    v55 = *(v14 + 16);
    v32 = v66[0];
    v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v47 = a1;
    v34 = a1 + v33;
    v54 = *(v31 + 56);
    v35 = (v59 + 56);
    v57 = v31;
    v36 = (v31 - 8);
    v61 = (v59 + 32);
    v53 = (v59 + 48);
    v37 = v63;
    do
    {
      v55(v65, v34, v64);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v38 = sub_24B2D1614();
      v40 = v58;
      if (v38)
      {
        sub_24B2D14A4();
        v41 = v63;
        (*v35)(v40, 0, 1, v63);
        (*v36)(v65, v64);
        (*v61)(v62, v40, v41);
      }

      else
      {
        (*v35)(v58, 1, 1, v37);
        v39 = v65;
        sub_24B2D15C4();
        (*v36)(v39, v64);
        if ((*v53)(v40, 1, v37) != 1)
        {
          sub_24AFF8258(v40, &qword_27EFCB688, &qword_24B2E88F0);
        }
      }

      v66[0] = v32;
      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_24B007848((v42 > 1), v43 + 1, 1);
        v32 = v66[0];
      }

      *(v32 + 16) = v43 + 1;
      (*(v59 + 32))(v32 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v43, v62, v63);
      v34 += v54;
      --v30;
    }

    while (v30);

    a6 = v50;
    a2 = v49;
    a4 = v48;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v44 = v51;
  sub_24AFEFFE4(a2, v51);
  sub_24B27960C(v32, v44, v52, a4, v67, v66);

  result = sub_24AFF8258(a2, &qword_27EFC7880, &unk_24B2DE440);
  v46 = v66[1];
  *a6 = v66[0];
  a6[1] = v46;
  return result;
}

void FindMyMessagesDetailsView.body.getter(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF560, &unk_24B2F4C90);
  sub_24B2D4CD4();
  type metadata accessor for EmbeddedPeopleSummaryMapViewModel(0);
  sub_24B27AD50(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D4F64();
  v2 = type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  *(a1 + *(v2 + 20)) = 0;
  v3 = (a1 + *(v2 + 24));
  sub_24B2D4394();
  sub_24B2D43F4();
  v4 = sub_24B2D4424();

  v5 = sub_24B2D4484();
  sub_24B2D4394();
  sub_24B2D43D4();
  v6 = sub_24B2D4424();

  sub_24B2D4394();
  sub_24B2D43E4();
  v7 = sub_24B2D4424();

  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
}

uint64_t FindMyMessagesDetailsView.init(people:from:customName:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v36[1] = a2;
  v8 = sub_24B2D1494();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880, &unk_24B2DE440);
  MEMORY[0x28223BE20](v15 - 8);
  v37 = v36 - v16;
  if (qword_27EFC7728 != -1)
  {
    swift_once();
  }

  v17 = sub_24B2D3184();
  __swift_project_value_buffer(v17, qword_27EFCF548);
  v18 = sub_24B2D3164();
  v19 = sub_24B2D5934();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2DDB20, v41);
    _os_log_impl(&dword_24AFD2000, v18, v19, "FindMyMessagesDetailsView: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C23D530](v21, -1, -1);
    MEMORY[0x24C23D530](v20, -1, -1);
  }

  if (!(a1 >> 62))
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_21:

    v24 = MEMORY[0x277D84F90];
    v32 = v37;
    if (v38)
    {
LABEL_19:
      sub_24B2D16E4();
      v33 = 0;
LABEL_23:
      v34 = sub_24B2D1704();
      (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
      sub_24B2BF820(v41);
      result = sub_24B27960C(v24, v32, v39, v40, v41, v42);
      v35 = v42[1];
      *a6 = v42[0];
      a6[1] = v35;
      return result;
    }

LABEL_22:
    v33 = 1;
    goto LABEL_23;
  }

  v22 = sub_24B2D5DA4();
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_7:
  v41[0] = MEMORY[0x277D84F90];
  result = sub_24B007848(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v36[0] = a6;
    v24 = v41[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v22; ++i)
      {
        MEMORY[0x24C23C450](i, a1);
        sub_24B2D14A4();
        v41[0] = v24;
        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_24B007848((v26 > 1), v27 + 1, 1);
          v24 = v41[0];
        }

        *(v24 + 16) = v27 + 1;
        (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v14, v8);
      }
    }

    else
    {
      v28 = 32;
      do
      {
        v29 = *(a1 + v28);
        sub_24B2D14A4();
        v41[0] = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_24B007848((v30 > 1), v31 + 1, 1);
          v24 = v41[0];
        }

        *(v24 + 16) = v31 + 1;
        (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, v11, v8);
        v28 += 8;
        --v22;
      }

      while (v22);
    }

    a6 = v36[0];
    v32 = v37;
    if (v38)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t FindMyMessagesDetailsView.init(people:from:customName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, void *a6@<X8>)
{
  v39 = a3;
  v38 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880, &unk_24B2DE440);
  MEMORY[0x28223BE20](v10 - 8);
  v40 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8, &qword_24B2F4CA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_24B2D15F4();
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v47 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC7728 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v17 = sub_24B2D3184();
    __swift_project_value_buffer(v17, qword_27EFCF548);
    v18 = sub_24B2D3164();
    v19 = sub_24B2D5934();
    v20 = os_log_type_enabled(v18, v19);
    v45 = a1;
    v42 = a5;
    v43 = a6;
    v41 = a4;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2DDB20, v48);
      _os_log_impl(&dword_24AFD2000, v18, v19, "FindMyMessagesDetailsView: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v23 = v22;
      a1 = v45;
      MEMORY[0x24C23D530](v23, -1, -1);
      MEMORY[0x24C23D530](v21, -1, -1);
    }

    a4 = *(a1 + 16);
    if (!a4)
    {
      break;
    }

    v24 = 0;
    a6 = (a1 + 32);
    v25 = (v46 + 48);
    v26 = (v46 + 32);
    v27 = MEMORY[0x277D84F90];
    v44 = (a1 + 32);
    while (v24 < *(a1 + 16))
    {

      sub_24B2D1584();
      if ((*v25)(v14, 1, v15) == 1)
      {
        sub_24AFF8258(v14, &qword_27EFCF4F8, &qword_24B2F4CA0);
      }

      else
      {
        a5 = *v26;
        (*v26)(v47, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_24B006880(0, *(v27 + 2) + 1, 1, v27);
        }

        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        if (v29 >= v28 >> 1)
        {
          v27 = sub_24B006880((v28 > 1), v29 + 1, 1, v27);
        }

        *(v27 + 2) = v29 + 1;
        a5(&v27[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29], v47, v15);
        a6 = v44;
        a1 = v45;
      }

      if (a4 == ++v24)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v27 = MEMORY[0x277D84F90];
LABEL_16:

  if (v39)
  {
    v30 = v40;
    sub_24B2D16E4();
    v31 = 0;
    v33 = v41;
    v32 = v42;
  }

  else
  {
    v31 = 1;
    v33 = v41;
    v32 = v42;
    v30 = v40;
  }

  v34 = sub_24B2D1704();
  (*(*(v34 - 8) + 56))(v30, v31, 1, v34);
  sub_24B2BF820(v48);
  result = sub_24B279C0C(v27, v30, v33, v32, v48, v49);
  v36 = v49[1];
  v37 = v43;
  *v43 = v49[0];
  v37[1] = v36;
  return result;
}

uint64_t sub_24B27AD50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B27ADBC(__n128 a1)
{
  v1 = sub_24B2D2204();
  __swift_allocate_value_buffer(v1, qword_27EFE4628);
  v2 = __swift_project_value_buffer(v1, qword_27EFE4628);
  *v2 = type metadata accessor for EmbeddedPeopleModule();
  v3 = *MEMORY[0x277CC9120];
  v4 = *(*(v1 - 8) + 104);

  return v4(v2, v3, v1);
}

void sub_24B27AEA0(uint64_t a1)
{
  sub_24B28120C(319, &qword_27EFCF580, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_24B27AF80(void (*a1)(uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);

  return result;
}

uint64_t sub_24B27B030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v79 = type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  v83 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v84 = v3;
  v85 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568, &unk_24B2F4D80);
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8B0, &unk_24B2F42D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF588, &qword_24B2F4E48);
  MEMORY[0x28223BE20](v76);
  v13 = (&v74 - v12);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF590, &qword_24B2F4E50);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF598, &qword_24B2F4E58);
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x28223BE20](v15);
  v90 = &v74 - v16;
  v17 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D4F44();
  sub_24B2985DC(v19);

  sub_24B2D4F44();
  v20 = sub_24B29ABE0();

  v88 = v4;
  sub_24B2D4F44();
  v21 = sub_24B29AE28();

  *v13 = v20;
  v13[1] = v21;
  type metadata accessor for NonInteractiveMapView(0);
  v22 = sub_24B2D1974();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  sub_24B008890(v11, v8, &qword_27EFCD8B0, &unk_24B2F42D0);
  sub_24B2D4CC4();
  sub_24AFF8258(v11, &qword_27EFCD8B0, &unk_24B2F42D0);
  v23 = sub_24B2D5064();
  v25 = v24;
  v26 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5A0, &qword_24B2F4E60) + 36);
  sub_24B27BBEC(v26);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5A8, &qword_24B2F4E68) + 36));
  *v27 = v23;
  v27[1] = v25;
  v28 = sub_24B2D3DF4();
  v29 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5B0, &qword_24B2F4E70) + 36);
  v30 = v2;
  v31 = v2;
  v32 = v19;
  sub_24B27C0C0(v31, v19, v29);
  v33 = sub_24B2D3424();
  LOBYTE(v26) = MEMORY[0x24C23AB40]((2 * v33));
  v34 = sub_24B2D3814();
  v35 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5B8, &qword_24B2F4E78) + 36);
  *v35 = v34;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 17) = v26;
  *(v35 + 24) = v28;
  v36 = sub_24B2D3DF4();
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = v76;
  v38 = v13 + *(v76 + 36);
  v77 = v32;
  sub_24B27C408(v32, v38);
  sub_24B2D5054();
  sub_24B2D3494();

  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5C0, &qword_24B2F4E80) + 36));
  v40 = v102;
  *v39 = v101;
  v39[1] = v40;
  v39[2] = v103;
  v41 = sub_24B2D3424();
  v42 = MEMORY[0x24C23AB40]((2 * v41));
  v43 = sub_24B2D3814();
  v44 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF5C8, &qword_24B2F4E88) + 36);
  *v44 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  *(v44 + 17) = v42;
  *(v44 + 24) = v36;
  v97 = 0x656E6961746E6F43;
  v98 = 0xE900000000000072;
  sub_24B2D5134();
  v45 = sub_24B280164();
  v46 = MEMORY[0x277D837D0];
  v47 = MEMORY[0x277D837E0];
  v48 = v75;
  sub_24B2D4864();
  sub_24AFF8258(v13, &qword_27EFCF588, &qword_24B2F4E48);
  v49 = v88;
  v50 = v30;
  sub_24B2D4F44();
  v51 = v97;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_24B2803BC;
  *(v52 + 24) = v51;
  v97 = v37;
  v98 = v46;
  v99 = v45;
  v100 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v80;
  sub_24B2D4704();

  (*(v78 + 8))(v48, v54);
  v55 = v81;
  sub_24B2D4F54();
  swift_getKeyPath();
  sub_24B2D4F74();

  (*(v82 + 8))(v55, v49);
  v82 = v96;
  v91 = v94;
  v92 = v95;
  v93 = v96;
  v56 = v85;
  sub_24B28098C(v50, v85, type metadata accessor for EmbeddedPeopleSummaryMapView);
  v57 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v58 = swift_allocObject();
  sub_24B280924(v56, v58 + v57, type metadata accessor for EmbeddedPeopleSummaryMapView);
  v85 = type metadata accessor for EmbeddedPeopleInteractiveMapViewModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF608, &qword_24B2F4EB8);
  v97 = v54;
  v98 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B280788(&qword_27EFCF4D0, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4964);
  v59 = type metadata accessor for EmbeddedPeopleInteractiveMapView(255);
  v60 = sub_24B2D40B4();
  v61 = sub_24B280788(&qword_27EFC9EE8, type metadata accessor for EmbeddedPeopleInteractiveMapView, &unk_24B2F4064);
  v97 = v59;
  v98 = v60;
  v99 = v61;
  v100 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v62 = v89;
  v63 = v87;
  v64 = v90;
  sub_24B2D4944();

  (*(v86 + 8))(v64, v63);
  sub_24B2D4F44();
  v65 = v97;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_24B280440;
  *(v66 + 24) = v65;
  v67 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF610, &qword_24B2F4EC0) + 36));
  *v67 = sub_24B26DE68;
  v67[1] = v66;
  v67[2] = 0;
  v67[3] = 0;
  sub_24B2D4F44();
  v68 = v97;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_24B280444;
  *(v69 + 24) = v68;
  v70 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF618, &qword_24B2F4EC8) + 36));
  *v70 = 0;
  v70[1] = 0;
  v70[2] = sub_24B26DE68;
  v70[3] = v69;
  v71 = sub_24B2D3804();
  LOBYTE(v68) = sub_24B2D42F4();
  v72 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF620, &unk_24B2F4ED0) + 36);
  *v72 = v71;
  *(v72 + 8) = v68;
  return sub_24B280448(v77, type metadata accessor for EmbeddedPeopleSummaryMapView.State);
}

void sub_24B27BBEC(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7A8, &qword_24B2F5290);
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = (v22 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7B0, &qword_24B2F5298);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = type metadata accessor for PinCollection.Style(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7B8, &qword_24B2F52A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  sub_24B2D5694();
  v22[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568, &unk_24B2F4D80);
  sub_24B2D4F44();
  sub_24B29B070(v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24AFF8258(v6, &qword_27EFCF7B0, &qword_24B2F5298);
    (*(v23 + 56))(v13, 1, 1, v24);
  }

  else
  {
    sub_24B280924(v6, v10, type metadata accessor for PinCollection.Style);
    v14 = sub_24B2D5064();
    v16 = v15;
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (qword_27EFC76F0 != -1)
    {
      swift_once();
    }

    v17 = qword_27EFCD2C0;
    v18 = type metadata accessor for PinCollection(0);
    sub_24B28098C(v10, v3 + *(v18 + 20), type metadata accessor for PinCollection.Style);

    *v3 = v17;
    v19 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7C0, &qword_24B2F52A8) + 36));
    *v19 = v14;
    v19[1] = v16;
    sub_24B2D34C4();
    sub_24B2D34C4();
    sub_24B2D50E4();
    sub_24B2D50A4();

    sub_24B2D34D4();

    v20 = sub_24B2D34B4();

    v21 = v24;
    *(v3 + *(v24 + 36)) = v20;
    sub_24B0391CC(v3, v13, &qword_27EFCF7A8, &qword_24B2F5290);
    (*(v23 + 56))(v13, 0, 1, v21);
    sub_24B280448(v10, type metadata accessor for PinCollection.Style);
  }

  sub_24B0391CC(v13, v25, &qword_27EFCF7B8, &qword_24B2F52A0);
}

double sub_24B27C0C0@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6F0, &qword_24B2F5090);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6F8, &qword_24B2F5098);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568, &unk_24B2F4D80);
  sub_24B2D4F44();
  v11 = v20;
  swift_getKeyPath();
  *&v20 = v11;
  sub_24B280788(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  if (*(v11 + 48) >= 2u)
  {

    goto LABEL_7;
  }

  v12 = sub_24B128D40();

  if (v12)
  {
LABEL_7:
    *v7 = sub_24B2D3DF4();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF700, &qword_24B2F50C8);
    sub_24B27CC34(v18, a1, &v7[*(v14 + 44)]);
    sub_24B2D5044();
    sub_24B2D3494();
    v15 = &v7[*(v4 + 36)];
    v16 = v21;
    *v15 = v20;
    *(v15 + 1) = v16;
    *(v15 + 2) = v22;
    sub_24B0391CC(v7, v10, &qword_27EFCF6F0, &qword_24B2F5090);
    v13 = 0;
    goto LABEL_8;
  }

  v13 = 1;
LABEL_8:
  (*(v5 + 56))(v10, v13, 1, v4);
  sub_24B0391CC(v10, v19, &qword_27EFCF6F8, &qword_24B2F5098);

  return result;
}

uint64_t sub_24B27C408@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF628, &qword_24B2F4EE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF630, &qword_24B2F4EE8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF638, &qword_24B2F4EF0);
  MEMORY[0x28223BE20](v37);
  v38 = &v35 - v15;
  *v10 = sub_24B2D3E04();
  *(v10 + 1) = 0x4008000000000000;
  v10[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF640, &qword_24B2F4EF8);
  sub_24B27EC04(a1, v2, &v10[*(v16 + 44)]);
  v17 = sub_24B2D42F4();
  v18 = &v10[*(v8 + 36)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = *MEMORY[0x277CDF998];
  v20 = sub_24B2D3764();
  (*(*(v20 - 8) + 104))(v7, v19, v20);
  sub_24B280788(&qword_27EFC8AE8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B2804A8();
    v36 = a2;
    v22 = v11;
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
    sub_24B2D4774();
    sub_24AFF8258(v7, &qword_27EFC8AD0, &qword_24B2E1EB0);
    sub_24AFF8258(v10, &qword_27EFCF628, &qword_24B2F4EE0);
    sub_24B2D5074();
    sub_24B2D3904();
    v23 = v38;
    (*(v12 + 32))(v38, v14, v22);
    v24 = (v23 + *(v37 + 36));
    v25 = v44;
    v24[4] = v43;
    v24[5] = v25;
    v24[6] = v45;
    v26 = v40;
    *v24 = v39;
    v24[1] = v26;
    v27 = v42;
    v24[2] = v41;
    v24[3] = v27;
    v28 = sub_24B2D5064();
    v30 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF660, &qword_24B2F4F08);
    v32 = v36;
    v33 = v36 + *(v31 + 36);
    sub_24B27FEB4(v33);
    v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF058, &unk_24B2F4F10) + 36));
    *v34 = v28;
    v34[1] = v30;
    return sub_24B0391CC(v23, v32, &qword_27EFCF638, &qword_24B2F4EF0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_24B27C86C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B280788(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap);

  return result;
}

double sub_24B27C94C@<D0>(uint64_t a3@<X8>)
{
  v13 = a3;
  v3 = sub_24B2D40B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmbeddedPeopleInteractiveMapView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for EmbeddedPeopleInteractiveMapViewModel(0);
  sub_24B280788(&qword_27EFC9D08, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4948);

  sub_24B2D4F64();
  v10 = &v9[*(v7 + 20)];
  v14 = 1;
  sub_24B2D4CC4();
  v11 = v16;
  *v10 = v15;
  *(v10 + 1) = v11;
  v15 = 0x656E6961746E6F43;
  v16 = 0xE900000000000072;
  type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  sub_24B2D5134();
  sub_24B2D3F14();
  sub_24B280788(&qword_27EFC9EE8, type metadata accessor for EmbeddedPeopleInteractiveMapView, &unk_24B2F4064);
  sub_24B2D4834();
  (*(v4 + 8))(v6, v3);
  sub_24B280448(v9, type metadata accessor for EmbeddedPeopleInteractiveMapView);

  return result;
}

void sub_24B27CC34(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a2;
  v171 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  MEMORY[0x28223BE20](v4);
  v6 = &v130 - v5;
  v7 = type metadata accessor for EmbeddedPeopleSummaryMapView(0);
  v143 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v8;
  MEMORY[0x28223BE20](v10);
  v144 = &v130 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF708, &qword_24B2F50D0);
  MEMORY[0x28223BE20](v147);
  v166 = &v130 - v12;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF710, &qword_24B2F50D8);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v130 - v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF718, &qword_24B2F50E0);
  MEMORY[0x28223BE20](v146);
  v165 = &v130 - v14;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF720, &qword_24B2F50E8);
  MEMORY[0x28223BE20](v152);
  v154 = &v130 - v15;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF728, &qword_24B2F50F0);
  MEMORY[0x28223BE20](v153);
  v156 = &v130 - v16;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF730, &qword_24B2F50F8);
  MEMORY[0x28223BE20](v159);
  v158 = &v130 - v17;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF738, &qword_24B2F5100);
  v157 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v155 = &v130 - v18;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF740, &qword_24B2F5108);
  MEMORY[0x28223BE20](v161);
  v162 = &v130 - v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF748, &qword_24B2F5110);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v135 = &v130 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF750, &qword_24B2F5118);
  v169 = *(v21 - 8);
  v170 = v21;
  MEMORY[0x28223BE20](v21);
  v137 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v136 = &v130 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF758, &qword_24B2F5120);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v130 - v26;
  Action = type metadata accessor for PersonLocateAction(0);
  v28 = *(Action - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](Action);
  v151 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v134 = &v130 - v31;
  MEMORY[0x28223BE20](v32);
  v145 = &v130 - v33;
  MEMORY[0x28223BE20](v34);
  v133 = &v130 - v35;
  MEMORY[0x28223BE20](v36);
  v142 = &v130 - v37;
  MEMORY[0x28223BE20](v38);
  v141 = &v130 - v39;
  MEMORY[0x28223BE20](v40);
  v140 = &v130 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v130 - v43;
  MEMORY[0x28223BE20](v45);
  v173 = &v130 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF760, &qword_24B2F5128);
  MEMORY[0x28223BE20](v47 - 8);
  v168 = &v130 - v48;
  sub_24B2D5694();
  v167 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  sub_24B008890(&v171[*(v49 + 36)], v27, &qword_27EFCF758, &qword_24B2F5120);
  if ((*(v28 + 48))(v27, 1, Action) == 1)
  {
    sub_24AFF8258(v27, &qword_27EFCF758, &qword_24B2F5120);
LABEL_7:
    v51 = 1;
    v52 = v170;
    v53 = v168;
LABEL_26:
    (*(v169 + 56))(v53, v51, 1, v52);
    sub_24B0391CC(v53, a3, &qword_27EFCF760, &qword_24B2F5128);

    return;
  }

  v50 = v173;
  sub_24B280924(v27, v173, type metadata accessor for PersonLocateAction);
  if (PersonLocateAction.isHidden(visibleIfDisabled:)())
  {
    sub_24B280448(v50, type metadata accessor for PersonLocateAction);
    goto LABEL_7;
  }

  v171 = v6;
  v130 = v4;
  v131 = a3;
  v54 = sub_24B2D32E4();
  (*(*(v54 - 8) + 56))(v166, 1, 1, v54);
  v132 = v9;
  v55 = v144;
  sub_24B28098C(v164, v144, type metadata accessor for EmbeddedPeopleSummaryMapView);
  sub_24B28098C(v173, v44, type metadata accessor for PersonLocateAction);
  v56 = *(v143 + 80);
  v57 = (v56 + 16) & ~v56;
  v58 = *(v28 + 80);
  v59 = (v163 + v58 + v57) & ~v58;
  v60 = swift_allocObject();
  v61 = v60 + v57;
  v62 = v60;
  v143 = v60;
  sub_24B280924(v55, v61, type metadata accessor for EmbeddedPeopleSummaryMapView);
  sub_24B280924(v44, v62 + v59, type metadata accessor for PersonLocateAction);
  v63 = v140;
  sub_24B28098C(v173, v140, type metadata accessor for PersonLocateAction);
  v64 = v132;
  sub_24B28098C(v164, v132, type metadata accessor for EmbeddedPeopleSummaryMapView);
  v65 = (v58 + 16) & ~v58;
  v66 = swift_allocObject();
  sub_24B280924(v63, v66 + v65, type metadata accessor for PersonLocateAction);
  sub_24B280924(v64, v66 + ((v29 + v56 + v65) & ~v56), type metadata accessor for EmbeddedPeopleSummaryMapView);
  v67 = v147;
  v68 = v166;
  v69 = &v166[*(v147 + 48)];
  v174 = 0;
  sub_24B2D4CC4();
  v70 = *(&v175 + 1);
  *v69 = v175;
  *(v69 + 1) = v70;
  v71 = &v68[v67[13]];
  v174 = 0;
  sub_24B2D4CC4();
  v72 = *(&v175 + 1);
  *v71 = v175;
  *(v71 + 1) = v72;
  v73 = &v68[v67[9]];
  v74 = v143;
  *v73 = &unk_24B2F5138;
  *(v73 + 1) = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_24B280B24;
  *(v75 + 24) = v66;
  v76 = &v68[v67[10]];
  *v76 = sub_24B280BF8;
  v76[1] = v75;
  v68[v67[11]] = 1;
  v77 = v141;
  sub_24B28098C(v173, v141, type metadata accessor for PersonLocateAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24AFF8258(v77, &qword_27EFCB280, &qword_24B2F4430);
  }

  LOWORD(v175) = EnumCaseMultiPayload == 1;
  v79 = sub_24B039184(&qword_27EFCF768, &qword_27EFCF708, &qword_24B2F50D0, &protocol conformance descriptor for AsyncButton<A>);
  sub_24B26CC44(v79, v80, v81);
  v82 = v148;
  v83 = v166;
  sub_24B2D46D4();
  sub_24AFF8258(v83, &qword_27EFCF708, &qword_24B2F50D0);
  v84 = v165;
  v85 = (v165 + *(v146 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10, &qword_24B2E9E00);
  sub_24B2D3954();
  *v85 = swift_getKeyPath();
  (*(v149 + 32))(v84, v82, v150);
  v86 = v173;
  v87 = v142;
  sub_24B28098C(v173, v142, type metadata accessor for PersonLocateAction);
  v88 = swift_getEnumCaseMultiPayload();
  v89 = v162;
  v90 = v161;
  v91 = v154;
  if (v88 == 1)
  {
    sub_24AFF8258(v87, &qword_27EFCB280, &qword_24B2F4430);
    v92 = v86;
    v93 = v133;
    sub_24B28098C(v92, v133, type metadata accessor for PersonLocateAction);
    v94 = swift_getEnumCaseMultiPayload();
    v95 = v171;
    if (v94 == 1)
    {
      v96 = sub_24B2D4A84();
      sub_24AFF8258(v93, &qword_27EFCB280, &qword_24B2F4430);
    }

    else
    {
      v96 = sub_24B2D4B54();
    }

    KeyPath = swift_getKeyPath();
    *&v175 = v96;

    v98 = sub_24B2D34A4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v98 = 0;
    v95 = v171;
  }

  v99 = v165;
  sub_24B008890(v165, v91, &qword_27EFCF718, &qword_24B2F50E0);

  v100 = (v91 + *(v152 + 36));
  *v100 = KeyPath;
  v100[1] = v98;
  sub_24AFF8258(v99, &qword_27EFCF718, &qword_24B2F50E0);
  v101 = v173;
  v102 = v145;
  sub_24B28098C(v173, v145, type metadata accessor for PersonLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AFF8258(v102, &qword_27EFCB280, &qword_24B2F4430);
    v103 = 0;
    v104 = v156;
  }

  else
  {
    v105 = v134;
    sub_24B28098C(v101, v134, type metadata accessor for PersonLocateAction);
    v106 = swift_getEnumCaseMultiPayload();
    v104 = v156;
    if (v106 == 1)
    {
      v103 = sub_24B2D4A84();
      sub_24AFF8258(v105, &qword_27EFCB280, &qword_24B2F4430);
    }

    else
    {
      v103 = sub_24B2D4B54();
    }
  }

  v107 = swift_getKeyPath();
  sub_24B0391CC(v91, v104, &qword_27EFCF720, &qword_24B2F50E8);
  v108 = (v104 + *(v153 + 36));
  *v108 = v107;
  v108[1] = v103;
  v109 = v151;
  sub_24B28098C(v101, v151, type metadata accessor for PersonLocateAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v110 = v109[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC678, &unk_24B2EBD30) + 48)];
    sub_24AFF8258(v109, &qword_27EFCB280, &qword_24B2F4430);
  }

  else
  {
    v110 = *v109;
  }

  v111 = swift_getKeyPath();
  v112 = swift_allocObject();
  *(v112 + 16) = v110;
  v113 = v104;
  v114 = v158;
  sub_24B0391CC(v113, v158, &qword_27EFCF728, &qword_24B2F50F0);
  v115 = (v114 + *(v159 + 36));
  *v115 = v111;
  v115[1] = sub_24B09A700;
  v115[2] = v112;
  sub_24B280C78();
  v116 = v155;
  sub_24B2D4884();
  sub_24AFF8258(v114, &qword_27EFCF730, &qword_24B2F50F8);
  LOBYTE(v111) = sub_24B2D42F4();
  (*(v157 + 32))(v89, v116, v160);
  v117 = v89 + *(v90 + 36);
  *v117 = v111;
  *(v117 + 8) = 0u;
  *(v117 + 24) = 0u;
  *(v117 + 40) = 1;
  v118 = *MEMORY[0x277CDF998];
  v119 = sub_24B2D3764();
  (*(*(v119 - 8) + 104))(v95, v118, v119);
  sub_24B280788(&qword_27EFC8AE8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if (sub_24B2D52A4())
  {
    sub_24B280FDC();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
    v120 = v135;
    sub_24B2D4774();
    sub_24AFF8258(v95, &qword_27EFC8AD0, &qword_24B2E1EB0);
    sub_24AFF8258(v89, &qword_27EFCF740, &qword_24B2F5108);
    sub_24B2D5074();
    sub_24B2D3904();
    sub_24B280448(v173, type metadata accessor for PersonLocateAction);
    v121 = v137;
    (*(v138 + 32))(v137, v120, v139);
    v122 = v170;
    v123 = &v121[*(v170 + 36)];
    v124 = v180;
    *(v123 + 4) = v179;
    *(v123 + 5) = v124;
    *(v123 + 6) = v181;
    v125 = v176;
    *v123 = v175;
    *(v123 + 1) = v125;
    v126 = v178;
    *(v123 + 2) = v177;
    *(v123 + 3) = v126;
    v127 = v121;
    v128 = v136;
    sub_24B0391CC(v127, v136, &qword_27EFCF750, &qword_24B2F5118);
    v129 = v128;
    v53 = v168;
    sub_24B0391CC(v129, v168, &qword_27EFCF750, &qword_24B2F5118);
    v52 = v122;
    v51 = 0;
    a3 = v131;
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_24B27E034(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_24B2D5694();
  v2[5] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_24B27E0CC, v4, v3);
}

uint64_t sub_24B27E0CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF568, &unk_24B2F4D80);
  sub_24B2D4F44();
  v0[8] = v0[2];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_24B27E188;
  v2 = v0[4];

  return sub_24B29C7E4(v2);
}

uint64_t sub_24B27E188()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B27E2CC, v3, v2);
}

uint64_t sub_24B27E2CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B27E32C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24B2D3CD4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1F0, &unk_24B2F5210);
  sub_24B27E4F8(a3 + *(v5 + 44));
  v6 = *(a2 + *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) + 24));
  KeyPath = swift_getKeyPath();
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1F8, &qword_24B2F4520) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = swift_getKeyPath();
  v10 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF1E0, &qword_24B2F5220) + 36);
  *v10 = v9;
  *(v10 + 8) = 1;
  *(v10 + 16) = 0;

  LOBYTE(v6) = sub_24B2D42F4();
  sub_24B2D32F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF798, &qword_24B2F5228) + 36);
  *v19 = v6;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  v20 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF7A0, &unk_24B2F5230) + 36);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF208, &unk_24B2F4560);
  sub_24B2D3994();
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24B2D3DC4();
  result = (*(*(v23 - 8) + 104))(v20, v22, v23);
  *(v20 + *(v21 + 36)) = 0;
  return result;
}

double sub_24B27E4F8@<D0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_24B2D2214();
  MEMORY[0x28223BE20](v1 - 8);
  v56 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24B2D3694();
  v55 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D3D64();
  MEMORY[0x28223BE20](v4 - 8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF210, &unk_24B2F5240);
  MEMORY[0x28223BE20](v53);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF218, &unk_24B2F4570);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_24B2D1BB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF220, &unk_24B2F4580);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  sub_24B2D5694();
  v58 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  PersonLocateAction.symbol.getter(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24AFF8258(v11, &qword_27EFC8A80, &qword_24B2E8E00);
    v21 = 1;
    v23 = v60;
    v22 = v61;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_24B2D3D54();
    v50 = v12;
    sub_24B2D3D44();
    sub_24B2D1AB4();
    sub_24B2D4BE4();
    sub_24B2D3D34();

    sub_24B2D3D44();
    sub_24B2D3D84();
    v47 = sub_24B2D45E4();
    v48 = v24;
    v26 = v25;
    v28 = v27;
    v29 = &v6[*(v53 + 36)];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC538, &qword_24B2F4590);
    v49 = v15;
    v31 = v13;
    v32 = *(v30 + 28);
    sub_24B2D3E34();
    v33 = sub_24B2D3E54();
    (*(*(v33 - 8) + 56))(v29 + v32, 0, 1, v33);
    *v29 = swift_getKeyPath();
    *v6 = v47;
    *(v6 + 1) = v26;
    v6[16] = v28 & 1;
    *(v6 + 3) = v48;
    v34 = v54;
    sub_24B2D3674();
    sub_24B26CEC0();
    v35 = v52;
    sub_24B2D4714();
    (*(v55 + 8))(v34, v51);
    sub_24AFF8258(v6, &qword_27EFCF210, &unk_24B2F5240);
    (*(v31 + 8))(v49, v50);
    v23 = v60;
    v22 = v61;
    (*(v60 + 32))(v20, v35, v61);
    v21 = 0;
  }

  (*(v23 + 56))(v20, v21, 1, v22);
  PersonLocateAction.compactLabel.getter(v56);
  v36 = sub_24B2D45F4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v59;
  sub_24B008890(v20, v59, &qword_27EFCF220, &unk_24B2F4580);
  v44 = v57;
  sub_24B008890(v43, v57, &qword_27EFCF220, &unk_24B2F4580);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF228, &unk_24B2F5250) + 48);
  *v45 = v36;
  *(v45 + 8) = v38;
  v40 &= 1u;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  sub_24B083C44(v36, v38, v40);

  sub_24AFF8258(v20, &qword_27EFCF220, &unk_24B2F4580);
  sub_24B083C34(v36, v38, v40);

  sub_24AFF8258(v43, &qword_27EFCF220, &unk_24B2F4580);

  return result;
}

double sub_24B27EC04@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v57 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF668, &unk_24B2F4F40);
  MEMORY[0x28223BE20](v51);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = sub_24B2D2214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  sub_24B2D5694();
  v52 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  v18 = v57;
  v19 = Text(separating:_:)(v57, &v57[*(v17 + 28)]);
  v60 = v20;
  v61 = v19;
  v58 = v22;
  v59 = v21;
  v23 = v62 + *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) + 24);
  v62 = *(v23 + 8);
  KeyPath = swift_getKeyPath();
  v55 = swift_getKeyPath();
  LOBYTE(v74[0]) = 0;
  sub_24B008890(v18 + *(v17 + 20), v16, &qword_27EFCB270, &unk_24B2EBD40);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {

    v54 = 0;
    v50 = 0;
    v49 = 0uLL;
  }

  else
  {
    (*(v9 + 32))(v13, v16, v8);
    (*(v9 + 16))(v54, v13, v8);

    v54 = sub_24B2D45F4();
    *(&v49 + 1) = v25;
    v50 = v24;
    v27 = v26;
    (*(v9 + 8))(v13, v8);
    *&v49 = v27 & 1;
  }

  v28 = *(v23 + 16);
  v48 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v47 = v29;
  v76 = 0;

  *v7 = sub_24B2D3CD4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF670, &qword_24B2F4FB0);
  sub_24B27F1CC(v57, &v7[*(v30 + 44)]);
  v31 = swift_getKeyPath();
  v32 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF678, &qword_24B2F4FB8) + 36)];
  *v32 = v31;
  v32[1] = v28;
  v46 = v28;

  *&v7[*(v51 + 36)] = sub_24B2D3FD4();
  v33 = v53;
  sub_24B008890(v7, v53, &qword_27EFCF668, &unk_24B2F4F40);
  *&v63 = v61;
  *(&v63 + 1) = v60;
  *&v64 = v59;
  *(&v64 + 1) = v58;
  *&v65 = KeyPath;
  *(&v65 + 1) = v62;
  v34 = v54;
  *&v66 = v55;
  *(&v66 + 1) = 1;
  v67 = 0;
  *(a3 + 64) = 0;
  v35 = v66;
  *(a3 + 32) = v65;
  *(a3 + 48) = v35;
  v36 = v64;
  *a3 = v63;
  *(a3 + 16) = v36;
  v38 = *(&v49 + 1);
  v37 = v50;
  *&v68[0] = v34;
  *(&v68[0] + 1) = v50;
  v39 = v49;
  v68[1] = v49;
  v57 = v7;
  v40 = v48;
  *&v69 = v48;
  *(&v69 + 1) = v28;
  *&v70 = v29;
  *(&v70 + 1) = 2;
  v71 = 0;
  v41 = v49;
  *(a3 + 72) = v68[0];
  v42 = v69;
  v43 = v70;
  *(a3 + 136) = 0;
  *(a3 + 120) = v43;
  *(a3 + 104) = v42;
  *(a3 + 88) = v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF680, &qword_24B2F4FC0);
  sub_24B008890(v33, a3 + *(v44 + 64), &qword_27EFCF668, &unk_24B2F4F40);
  sub_24B008890(&v63, v74, &qword_27EFCF688, &qword_24B2F4FC8);
  sub_24B008890(v68, v74, &qword_27EFCF688, &qword_24B2F4FC8);
  sub_24AFF8258(v57, &qword_27EFCF668, &unk_24B2F4F40);
  sub_24AFF8258(v33, &qword_27EFCF668, &unk_24B2F4F40);
  v72[0] = v54;
  v72[1] = v37;
  v72[2] = v39;
  v72[3] = v38;
  v72[4] = v40;
  v72[5] = v46;
  v72[6] = v47;
  v72[7] = 2;
  v73 = 0;
  sub_24AFF8258(v72, &qword_27EFCF688, &qword_24B2F4FC8);
  v74[0] = v61;
  v74[1] = v60;
  v74[2] = v59;
  v74[3] = v58;
  v74[4] = KeyPath;
  v74[5] = v62;
  v74[6] = v55;
  v74[7] = 1;
  v75 = 0;
  sub_24AFF8258(v74, &qword_27EFCF688, &qword_24B2F4FC8);

  return result;
}

double sub_24B27F1CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v95 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF690, &qword_24B2F4FD0);
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v86 = &v71 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF698, &qword_24B2F4FD8);
  MEMORY[0x28223BE20](v83);
  v85 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6A0, &unk_24B2F4FE0);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v71 - v10;
  v75 = sub_24B2D24A4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3E0, &qword_24B2F46E8);
  MEMORY[0x28223BE20](v82);
  v13 = &v71 - v12;
  v77 = sub_24B2D13C4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v71 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6A8, &qword_24B2F4FF0);
  MEMORY[0x28223BE20](v88);
  v19 = &v71 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6B0, &qword_24B2F4FF8);
  MEMORY[0x28223BE20](v79);
  v21 = &v71 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6B8, &unk_24B2F5000);
  MEMORY[0x28223BE20](v87);
  v81 = &v71 - v22;
  v78 = sub_24B2D2214();
  v23 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298, &qword_24B2F42E0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v71 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6C0, &unk_24B2F5010);
  MEMORY[0x28223BE20](v32 - 8);
  v90 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v96 = &v71 - v35;
  sub_24B2D5694();
  v89 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  sub_24B008890(v97 + *(v36 + 24), v31, &qword_27EFCB298, &qword_24B2F42E0);
  v37 = sub_24B2D1954();
  if ((*(*(v37 - 8) + 48))(v31, 1, v37) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24B280614();
    sub_24B2D3ED4();
  }

  else
  {
    v72 = v36;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v78;
      (*(v23 + 32))(v28, v31, v78);
      (*(v23 + 16))(v25, v28, v38);
      v39 = sub_24B2D45F4();
      v41 = v40;
      *v21 = v39;
      *(v21 + 1) = v40;
      v43 = v42 & 1;
      v21[16] = v42 & 1;
      *(v21 + 3) = v44;
      swift_storeEnumTagMultiPayload();
      sub_24B083C44(v39, v41, v43);
      sub_24B2806A0();

      v45 = v81;
      sub_24B2D3ED4();
      sub_24B008890(v45, v19, &qword_27EFCF6B8, &unk_24B2F5000);
      swift_storeEnumTagMultiPayload();
      sub_24B280614();
      sub_24B2D3ED4();
      sub_24B083C34(v39, v41, v43);

      sub_24AFF8258(v45, &qword_27EFCF6B8, &unk_24B2F5000);
      (*(v23 + 8))(v28, v78);
    }

    else
    {
      v46 = v76;
      v47 = v80;
      v48 = v77;
      (*(v76 + 32))(v80, v31, v77);
      (*(v46 + 16))(v15, v47, v48);
      v49 = type metadata accessor for RelativeDateText(0);
      sub_24B2D2254();
      v50 = v73;
      sub_24B2D2494();
      sub_24B2D1364();
      (*(v74 + 8))(v50, v75);
      v51 = *(v46 + 8);
      v51(v15, v48);
      v13[v49[5]] = 1;
      v13[v49[7]] = 0;
      v52 = &v13[v49[8]];
      *v52 = 0;
      *(v52 + 1) = 0;
      v53 = &v13[*(v82 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3E8, &qword_24B2F46F0);
      sub_24B2D39A4();
      *v53 = swift_getKeyPath();
      sub_24B008890(v13, v21, &qword_27EFCF3E0, &qword_24B2F46E8);
      swift_storeEnumTagMultiPayload();
      sub_24B2806A0();
      v54 = v81;
      sub_24B2D3ED4();
      sub_24B008890(v54, v19, &qword_27EFCF6B8, &unk_24B2F5000);
      swift_storeEnumTagMultiPayload();
      sub_24B280614();
      sub_24B2D3ED4();
      sub_24AFF8258(v54, &qword_27EFCF6B8, &unk_24B2F5000);
      sub_24AFF8258(v13, &qword_27EFCF3E0, &qword_24B2F46E8);
      v51(v80, v48);
    }

    v36 = v72;
  }

  v55 = v91;
  if (*(v97 + *(v36 + 32)) == 1)
  {
    v56 = v84;
    sub_24B2D33E4();
    v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF3C8, &qword_24B2F46D0) + 36));
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20, &qword_24B2EEC30) + 28);
    v59 = *MEMORY[0x277CDF438];
    v60 = sub_24B2D3364();
    (*(*(v60 - 8) + 104))(v57 + v58, v59, v60);
    *v57 = swift_getKeyPath();
    *(v56 + *(v83 + 36)) = 257;
    v61 = v85;
    sub_24B008890(v56, v85, &qword_27EFCF698, &qword_24B2F4FD8);
    v62 = v86;
    sub_24B008890(v61, v86, &qword_27EFCF698, &qword_24B2F4FD8);
    v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6E8, &qword_24B2F5058) + 48);
    *v63 = xmmword_24B2F4D70;
    *(v63 + 16) = 0;
    *(v63 + 24) = MEMORY[0x277D84F90];
    sub_24B083C44(32, 0xE100000000000000, 0);

    sub_24AFF8258(v56, &qword_27EFCF698, &qword_24B2F4FD8);
    sub_24B083C34(32, 0xE100000000000000, 0);

    sub_24AFF8258(v61, &qword_27EFCF698, &qword_24B2F4FD8);
    sub_24B0391CC(v62, v55, &qword_27EFCF690, &qword_24B2F4FD0);
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  (*(v93 + 56))(v55, v64, 1, v94);
  v65 = v96;
  v66 = v90;
  sub_24B008890(v96, v90, &qword_27EFCF6C0, &unk_24B2F5010);
  v67 = v92;
  sub_24B008890(v55, v92, &qword_27EFCF6A0, &unk_24B2F4FE0);
  v68 = v95;
  sub_24B008890(v66, v95, &qword_27EFCF6C0, &unk_24B2F5010);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF6E0, &qword_24B2F5020);
  sub_24B008890(v67, v68 + *(v69 + 48), &qword_27EFCF6A0, &unk_24B2F4FE0);
  sub_24AFF8258(v55, &qword_27EFCF6A0, &unk_24B2F4FE0);
  sub_24AFF8258(v65, &qword_27EFCF6C0, &unk_24B2F5010);
  sub_24AFF8258(v67, &qword_27EFCF6A0, &unk_24B2F4FE0);
  sub_24AFF8258(v66, &qword_27EFCF6C0, &unk_24B2F5010);

  return result;
}

uint64_t sub_24B27FEB4@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4FF4();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9F08, &qword_24B2E4320) + 56)) = 256;
  v2 = sub_24B2D5064();
  v4 = v3;
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CE8, &unk_24B2F4F20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B2DEAD0;
  sub_24B2D4AE4();
  *(v5 + 32) = sub_24B2D4F94();
  *(v5 + 40) = v6;
  sub_24B2D4B04();
  *(v5 + 48) = sub_24B2D4F94();
  *(v5 + 56) = v7;
  sub_24B2D5164();
  sub_24B2D5174();
  sub_24B2D4FA4();
  sub_24B2D3634();

  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF068, &unk_24B2F42A0) + 36);
  *v8 = v2;
  *(v8 + 8) = v4;
  *(v8 + 16) = v23;
  *(v8 + 40) = v25;
  *(v8 + 24) = v24;
  v9 = sub_24B2D4304();
  sub_24B2D32F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF070, &unk_24B2F4F30) + 36);
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = sub_24B2D3804();
  v20 = sub_24B2D42F4();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF078, &unk_24B2F42B0);
  v22 = a1 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v20;
  return result;
}

unint64_t sub_24B280164()
{
  result = qword_27EFCF5D0;
  if (!qword_27EFCF5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF588, &qword_24B2F4E48);
    sub_24B28021C();
    sub_24B039184(&qword_27EFCF600, &qword_27EFCF5C8, &qword_24B2F4E88, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF5D0);
  }

  return result;
}

unint64_t sub_24B28021C()
{
  result = qword_27EFCF5D8;
  if (!qword_27EFCF5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF5B0, &qword_24B2F4E70);
    sub_24B2802D4();
    sub_24B039184(&qword_27EFCF5F8, &qword_27EFCF5B8, &qword_24B2F4E78, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF5D8);
  }

  return result;
}

unint64_t sub_24B2802D4()
{
  result = qword_27EFCF5E0;
  if (!qword_27EFCF5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF5A0, &qword_24B2F4E60);
    sub_24B280788(&qword_27EFCF5E8, type metadata accessor for NonInteractiveMapView, &unk_24B2F5A90);
    sub_24B039184(&qword_27EFCF5F0, &qword_27EFCF5A8, &qword_24B2F4E68, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF5E0);
  }

  return result;
}

double sub_24B2803C0@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for EmbeddedPeopleSummaryMapView(0);

  return sub_24B27C94C(a2);
}

uint64_t sub_24B280448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B2804A8()
{
  result = qword_27EFCF648;
  if (!qword_27EFCF648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF628, &qword_24B2F4EE0);
    sub_24B039184(&qword_27EFCF650, &qword_27EFCF658, &qword_24B2F4F00, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF648);
  }

  return result;
}

uint64_t sub_24B2805B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B2D3C14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_24B280614()
{
  result = qword_27EFCF6C8;
  if (!qword_27EFCF6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF6B8, &unk_24B2F5000);
    sub_24B2806A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF6C8);
  }

  return result;
}

unint64_t sub_24B2806A0()
{
  result = qword_27EFCF6D0;
  if (!qword_27EFCF6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF3E0, &qword_24B2F46E8);
    sub_24B280788(&qword_27EFC9AD0, type metadata accessor for RelativeDateText, &protocol conformance descriptor for RelativeDateText);
    sub_24B039184(&qword_27EFCF6D8, &qword_27EFCF3E8, &qword_24B2F46F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF6D0);
  }

  return result;
}

uint64_t sub_24B280788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B2807D0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x24C23A3A0]();
  *a1 = result;
  return result;
}

uint64_t sub_24B280854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_24B280924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B28098C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B2809F4()
{
  v2 = *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PersonLocateAction(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFD370;

  return sub_24B27E034(v0 + v3, v0 + v6);
}

uint64_t sub_24B280B24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonLocateAction(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for EmbeddedPeopleSummaryMapView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24B27E32C(v7, a1);
}

uint64_t sub_24B280C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D3A84();
  *a1 = result;
  return result;
}

unint64_t sub_24B280C78()
{
  result = qword_27EFCF770;
  if (!qword_27EFCF770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF730, &qword_24B2F50F8);
    sub_24B280D30();
    sub_24B039184(&qword_27EFC9A78, &qword_27EFC9A80, &qword_24B2E33E0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF770);
  }

  return result;
}

unint64_t sub_24B280D30()
{
  result = qword_27EFCF778;
  if (!qword_27EFCF778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF728, &qword_24B2F50F0);
    sub_24B280DE8();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8, &qword_24B2EE960, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF778);
  }

  return result;
}

unint64_t sub_24B280DE8()
{
  result = qword_27EFCF780;
  if (!qword_27EFCF780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF720, &qword_24B2F50E8);
    sub_24B280EA0();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8, &qword_24B2E21D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF780);
  }

  return result;
}

unint64_t sub_24B280EA0()
{
  result = qword_27EFCF788;
  if (!qword_27EFCF788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF718, &qword_24B2F50E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF708, &qword_24B2F50D0);
    v3 = sub_24B039184(&qword_27EFCF768, &qword_27EFCF708, &qword_24B2F50D0, &protocol conformance descriptor for AsyncButton<A>);
    sub_24B26CC44(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10, &qword_24B2E9E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF788);
  }

  return result;
}

unint64_t sub_24B280FDC()
{
  result = qword_27EFCF790;
  if (!qword_27EFCF790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF740, &qword_24B2F5108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF730, &qword_24B2F50F8);
    sub_24B280C78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF790);
  }

  return result;
}

void sub_24B2810CC(uint64_t a1)
{
  sub_24B28120C(319, &qword_27EFCF098, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24B28120C(319, &qword_27EFCF0A0, MEMORY[0x277D08CE8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24B28120C(319, &qword_27EFCF7D8, type metadata accessor for PersonLocateAction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B28120C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24B281290()
{
  result = qword_27EFCF7E0;
  if (!qword_27EFCF7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF620, &unk_24B2F4ED0);
    sub_24B28131C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF7E0);
  }

  return result;
}

unint64_t sub_24B28131C()
{
  result = qword_27EFCF7E8;
  if (!qword_27EFCF7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF618, &qword_24B2F4EC8);
    sub_24B2813A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF7E8);
  }

  return result;
}

unint64_t sub_24B2813A8()
{
  result = qword_27EFCF7F0;
  if (!qword_27EFCF7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF610, &qword_24B2F4EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF598, &qword_24B2F4E58);
    type metadata accessor for EmbeddedPeopleInteractiveMapViewModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF608, &qword_24B2F4EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF590, &qword_24B2F4E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF588, &qword_24B2F4E48);
    sub_24B280164();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B280788(&qword_27EFCF4D0, type metadata accessor for EmbeddedPeopleInteractiveMapViewModel, &unk_24B2F4964);
    type metadata accessor for EmbeddedPeopleInteractiveMapView(255);
    sub_24B2D40B4();
    sub_24B280788(&qword_27EFC9EE8, type metadata accessor for EmbeddedPeopleInteractiveMapView, &unk_24B2F4064);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF7F0);
  }

  return result;
}

void sub_24B2815FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a2;
  v8 = sub_24B2D1654();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24B2D3164();
  v12 = sub_24B2D5934();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2DDC80, &v46);
    _os_log_impl(&dword_24AFD2000, v11, v12, "EmbeddedPeopleSummaryMapViewModel: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C23D530](v14, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);
  }

  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel___observationRegistrar;
  v46 = v5;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  if (*(v5 + 48))
  {
    swift_getKeyPath();
    v46 = v5;
    sub_24B2D2584();

    v42 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController;
    v16 = a3;
    v40 = a3;
    v17 = *(v5 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);

    v18 = sub_24B29F5A4(v16, v10);
    v39 = a4;
    MEMORY[0x28223BE20](v18);
    *(&v38 - 2) = &_s25OrganizedListExtraStorageVN_0;
    v38 = v10;
    v22 = sub_24B2A0804(v19, v20, v21);
    v41 = v15;
    v23 = v22;
    *(&v38 - 1) = v22;
    swift_getKeyPath();
    v46 = v17;
    sub_24B039184(&qword_27EFCF850, &qword_27EFCF858, &qword_24B2F55F8, &protocol conformance descriptor for PeopleListController<A>);
    sub_24B2D2584();

    v46 = v17;
    MEMORY[0x28223BE20](v24);
    *(&v38 - 2) = &_s25OrganizedListExtraStorageVN_0;
    *(&v38 - 1) = v23;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860, &unk_24B2F5600);
    sub_24B2D19B4();
    v25 = swift_endAccess();
    v46 = v17;
    MEMORY[0x28223BE20](v25);
    *(&v38 - 2) = &_s25OrganizedListExtraStorageVN_0;
    *(&v38 - 1) = v23;
    swift_getKeyPath();
    sub_24B2D2594();

    v46 = v43;
    v47 = v44;
    v48 = v40;
    v49 = v39;
    v50 = 0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v38 - 2) = v5;
    *(&v38 - 1) = &v46;
    v45 = v5;
    sub_24B2D2574();

    swift_getKeyPath();
    v45 = v5;
    sub_24B2D2584();

    sub_24B28AD30();
  }

  else
  {

    v27 = sub_24B2D3164();
    v28 = sub_24B2D5914();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2DDC80, &v45);
      *(v29 + 12) = 2080;
      swift_getKeyPath();
      v46 = v5;
      sub_24B2D2584();

      v31 = *(v5 + 24);
      v32 = *(v5 + 32);
      v33 = *(v5 + 40);
      v34 = *(v5 + 48);
      v46 = *(v5 + 16);
      v47 = v31;
      v48 = v32;
      v49 = v33;
      v50 = v34;
      sub_24B2A0910(v46, v31, v32, v33, v34);
      v35 = sub_24B2D53C4();
      v37 = sub_24AFF321C(v35, v36, &v45);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_24AFD2000, v27, v28, "EmbeddedPeopleSummaryMapViewModel: %s Already Running - %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v30, -1, -1);
      MEMORY[0x24C23D530](v29, -1, -1);
    }
  }
}

void sub_24B281C68()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, v17);
    _os_log_impl(&dword_24AFD2000, v2, v3, "EmbeddedPeopleSummaryMapViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_getKeyPath();
  v17[0] = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  sub_24B28B410();

  swift_getKeyPath();
  v17[0] = v1;
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController))
  {

    PersonDetailsController.onDisappear()();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v17[0] = v1;
  sub_24B2D2574();

  swift_getKeyPath();
  v17[0] = v1;
  sub_24B2D2584();

  if (!*(v1 + 48))
  {
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    v14 = *(v1 + 24);
    v17[0] = *(v1 + 16);
    v17[1] = v14;
    v17[2] = v12;
    v17[3] = v13;
    v18 = 1;
    v15 = swift_getKeyPath();
    v16[0] = v16;
    MEMORY[0x28223BE20](v15);
    v16[1] = v1;

    sub_24B2D2574();

    return;
  }

  if (*(v1 + 48) == 1)
  {
    v7 = sub_24B2D3164();
    v8 = sub_24B2D5934();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, v17);
      v11 = "EmbeddedPeopleSummaryMapViewModel: %s - Already Paused";
LABEL_12:
      _os_log_impl(&dword_24AFD2000, v7, v8, v11, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C23D530](v10, -1, -1);
      MEMORY[0x24C23D530](v9, -1, -1);
    }
  }

  else
  {
    v7 = sub_24B2D3164();
    v8 = sub_24B2D5934();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_24AFF321C(0x29286573756170, 0xE700000000000000, v17);
      v11 = "EmbeddedPeopleSummaryMapViewModel: %s - Trying to paused but it's not running";
      goto LABEL_12;
    }
  }
}

void sub_24B282140()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v15);
    _os_log_impl(&dword_24AFD2000, v2, v3, "EmbeddedPeopleSummaryMapViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_getKeyPath();
  v15 = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v7 = *(v1 + 32);
      v6 = *(v1 + 40);
      v8 = *(v1 + 16);
      v9 = *(v1 + 24);

      sub_24B2815FC(v8, v9, v7, v6);

      return;
    }

    v10 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v15);
      v14 = "EmbeddedPeopleSummaryMapViewModel: %s Trying to resume but it's not running";
      goto LABEL_10;
    }
  }

  else
  {
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24AFF321C(0x2928656D75736572, 0xE800000000000000, &v15);
      v14 = "EmbeddedPeopleSummaryMapViewModel: %s Trying to resume but it's not paused";
LABEL_10:
      _os_log_impl(&dword_24AFD2000, v10, v11, v14, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C23D530](v13, -1, -1);
      MEMORY[0x24C23D530](v12, -1, -1);
    }
  }
}

double sub_24B282460()
{
  v1 = v0;
  v2 = sub_24B2D1654();
  MEMORY[0x28223BE20](v2 - 8);
  v20[1] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5934();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v22[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24AFF321C(0x2928706F7473, 0xE600000000000000, v22);
    _os_log_impl(&dword_24AFD2000, v4, v5, "EmbeddedPeopleSummaryMapViewModel: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23D530](v7, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  swift_getKeyPath();
  *&v22[0] = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  v8 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController;

  sub_24B28B410();

  swift_getKeyPath();
  *&v22[0] = v1;
  sub_24B2D2584();

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController))
  {

    PersonDetailsController.onDisappear()();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v20[-2] = v1;
  v20[-1] = 0;
  *&v22[0] = v1;
  sub_24B2D2574();

  memset(v22, 0, sizeof(v22));
  v23 = 2;
  v10 = swift_getKeyPath();
  MEMORY[0x28223BE20](v10);
  v20[-2] = v1;
  v20[-1] = v22;
  v21 = v1;
  sub_24B2D2574();

  swift_getKeyPath();
  v21 = v1;
  sub_24B2D2584();

  v11 = *(v1 + v8);

  v12 = sub_24B2D1644();
  MEMORY[0x28223BE20](v12);
  v20[-2] = &_s25OrganizedListExtraStorageVN_0;
  v16 = sub_24B2A0804(v13, v14, v15);
  v20[-1] = v16;
  swift_getKeyPath();
  v21 = v11;
  sub_24B039184(&qword_27EFCF850, &qword_27EFCF858, &qword_24B2F55F8, &protocol conformance descriptor for PeopleListController<A>);
  sub_24B2D2584();

  v21 = v11;
  MEMORY[0x28223BE20](v17);
  v20[-2] = &_s25OrganizedListExtraStorageVN_0;
  v20[-1] = v16;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860, &unk_24B2F5600);
  sub_24B2D19B4();
  v18 = swift_endAccess();
  v21 = v11;
  MEMORY[0x28223BE20](v18);
  v20[-2] = &_s25OrganizedListExtraStorageVN_0;
  v20[-1] = v16;
  swift_getKeyPath();
  sub_24B2D2594();

  return result;
}

double sub_24B2829B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940, &unk_24B2F5610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  sub_24B283570();
  v8 = qword_27EFCCE58;
  v9 = type metadata accessor for DataControllerSessionMetrics(0);
  v10 = v9[6];
  v11 = sub_24B2D24A4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v7[v10], &v1[v8], v11);
  sub_24B2D2494();
  v13 = *(v12 + 56);
  v13(&v7[v9[8]], 1, 1, v11);
  v13(&v7[v9[10]], 1, 1, v11);
  v13(&v7[v9[12]], 1, 1, v11);
  sub_24B2D24F4();
  v14 = &v7[v9[5]];
  *v14 = 0xD000000000000014;
  *(v14 + 1) = 0x800000024B2DDCA0;
  v7[v9[9]] = 2;
  v15 = &v7[v9[11]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v7[v9[13]];
  *v16 = 0;
  v16[8] = 1;
  (*(*(v9 - 1) + 56))(v7, 0, 1, v9);
  v17 = *(*v1 + 160);
  swift_beginAccess();
  sub_24B068E10(v7, &v1[v17], qword_27EFCC940, &unk_24B2F5610);
  v18 = swift_endAccess();
  v19 = *v1;
  v20 = *(*v1 + 144);
  if (*&v1[v20])
  {

    sub_24B2D5764();

    v19 = *v1;
  }

  v1[*(v19 + 136)] = 1;
  MEMORY[0x28223BE20](v18);
  *(&v38 - 2) = &_s25OrganizedListExtraStorageVN_0;
  v24 = sub_24B2A0804(v21, v22, v23);
  *(&v38 - 1) = v24;
  swift_getKeyPath();
  v39 = v1;
  sub_24B039184(&qword_27EFCF850, &qword_27EFCF858, &qword_24B2F55F8, &protocol conformance descriptor for PeopleListController<A>);
  sub_24B2D2584();

  v39 = v1;
  MEMORY[0x28223BE20](v25);
  *(&v38 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v38 - 1) = v24;
  swift_getKeyPath();
  sub_24B2D25A4();

  v26 = &v1[*(*v1 + 128)];
  swift_beginAccess();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8);
  v28 = *(v27 + 36);
  if (v26[v28] == 3)
  {
    v26[v28] = 4;
  }

  v38 = v1;
  MEMORY[0x28223BE20](v27);
  *(&v38 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v38 - 1) = v24;
  swift_getKeyPath();
  sub_24B2D2594();

  v29 = sub_24B2D56D4();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v1 + 4);
  v32 = *(v1 + 5);
  v33 = *(v1 + 6);
  v34 = *(v1 + 7);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v30;
  v35[7] = v33;
  v35[8] = v34;

  v36 = sub_24AFFBE08(0, 0, v4, &unk_24B2F5628, v35);
  sub_24AFF8258(v4, &qword_27EFC8580, &qword_24B2E0010);
  *&v1[v20] = v36;

  return result;
}

double sub_24B282F94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940, &unk_24B2F5610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  sub_24B283570();
  v8 = qword_27EFCCE58;
  v9 = type metadata accessor for DataControllerSessionMetrics(0);
  v10 = v9[6];
  v11 = sub_24B2D24A4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v7[v10], &v1[v8], v11);
  sub_24B2D2494();
  v13 = *(v12 + 56);
  v13(&v7[v9[8]], 1, 1, v11);
  v13(&v7[v9[10]], 1, 1, v11);
  v13(&v7[v9[12]], 1, 1, v11);
  sub_24B2D24F4();
  v14 = &v7[v9[5]];
  *v14 = 0xD000000000000014;
  *(v14 + 1) = 0x800000024B2DDCA0;
  v7[v9[9]] = 2;
  v15 = &v7[v9[11]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v7[v9[13]];
  *v16 = 0;
  v16[8] = 1;
  (*(*(v9 - 1) + 56))(v7, 0, 1, v9);
  v17 = *(*v1 + 160);
  swift_beginAccess();
  sub_24B068E10(v7, &v1[v17], qword_27EFCC940, &unk_24B2F5610);
  v18 = swift_endAccess();
  v19 = *v1;
  v20 = *(*v1 + 144);
  if (*&v1[v20])
  {

    sub_24B2D5764();

    v19 = *v1;
  }

  v1[*(v19 + 136)] = 1;
  MEMORY[0x28223BE20](v18);
  *(&v38 - 2) = &_s25OrganizedListExtraStorageVN;
  v24 = sub_24B276AB0(v21, v22, v23);
  *(&v38 - 1) = v24;
  swift_getKeyPath();
  v39 = v1;
  sub_24B039184(&qword_27EFCF508, &qword_27EFCF4F0, &unk_24B2F5920, &protocol conformance descriptor for PeopleListController<A>);
  sub_24B2D2584();

  v39 = v1;
  MEMORY[0x28223BE20](v25);
  *(&v38 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v38 - 1) = v24;
  swift_getKeyPath();
  sub_24B2D25A4();

  v26 = &v1[*(*v1 + 128)];
  swift_beginAccess();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
  v28 = *(v27 + 36);
  if (v26[v28] == 3)
  {
    v26[v28] = 4;
  }

  v38 = v1;
  MEMORY[0x28223BE20](v27);
  *(&v38 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v38 - 1) = v24;
  swift_getKeyPath();
  sub_24B2D2594();

  v29 = sub_24B2D56D4();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v1 + 4);
  v32 = *(v1 + 5);
  v33 = *(v1 + 6);
  v34 = *(v1 + 7);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v30;
  v35[7] = v33;
  v35[8] = v34;

  v36 = sub_24AFFBE08(0, 0, v4, &unk_24B2F5938, v35);
  sub_24AFF8258(v4, &qword_27EFC8580, &qword_24B2E0010);
  *&v1[v20] = v36;

  return result;
}

uint64_t sub_24B283570()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v35 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCC940, &unk_24B2F5610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for DataControllerSessionMetrics(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v0 + 160);
  swift_beginAccess();
  v39 = v19;
  sub_24B008890(v0 + v19, v14, qword_27EFCC940, &unk_24B2F5610);
  v40 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_24AFF8258(v14, qword_27EFCC940, &unk_24B2F5610);
  }

  v36 = v3;
  v37 = v11;
  sub_24B2BF380(v14, v18, type metadata accessor for DataControllerSessionMetrics);
  v21 = *(v15 + 32);
  sub_24B008890(&v18[v21], v8, &qword_27EFC8450, &qword_24B2DE7A0);
  v22 = sub_24B2D24A4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v8, 1, v22);
  sub_24AFF8258(v8, &qword_27EFC8450, &qword_24B2DE7A0);
  if (v25 != 1)
  {
    return sub_24B2BF3E8(v18, type metadata accessor for DataControllerSessionMetrics);
  }

  v35 = v21;
  v26 = &v18[v21];
  v27 = v38;
  sub_24B008890(v26, v38, &qword_27EFC8450, &qword_24B2DE7A0);
  v28 = v24(v27, 1, v22);
  sub_24AFF8258(v27, &qword_27EFC8450, &qword_24B2DE7A0);
  if (v28 == 1)
  {
    v29 = v36;
    sub_24B2D2494();
    (*(v23 + 56))(v29, 0, 1, v22);
    sub_24B068E10(v29, &v18[v35], &qword_27EFC8450, &qword_24B2DE7A0);
  }

  v30 = v0[8];
  v41[3] = v15;
  v41[4] = &off_285E510D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  sub_24B2BF490(v18, boxed_opaque_existential_0, type metadata accessor for DataControllerSessionMetrics);
  v32 = v0;
  v30(v41);
  sub_24B2BF3E8(v18, type metadata accessor for DataControllerSessionMetrics);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v33 = v37;
  (*(v40 + 56))(v37, 1, 1, v15);
  v34 = v39;
  swift_beginAccess();
  sub_24B068E10(v33, v32 + v34, qword_27EFCC940, &unk_24B2F5610);
  return swift_endAccess();
}

uint64_t sub_24B283A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[48] = a7;
  v8[49] = a8;
  v8[46] = a5;
  v8[47] = a6;
  v8[45] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170);
  v8[50] = swift_task_alloc();
  v10 = sub_24B2D3184();
  v8[51] = v10;
  v8[52] = *(v10 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD60, &unk_24B2ECC60);
  v8[55] = swift_task_alloc();
  v8[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD68, &unk_24B2ED210);
  v8[57] = swift_task_alloc();
  v8[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD70, &unk_24B2ECC70);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD78, &unk_24B2ED220);
  v8[62] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0, &unk_24B2EC190);
  v8[63] = v11;
  v8[64] = *(v11 - 8);
  v8[65] = swift_task_alloc();
  v12 = sub_24B2D2504();
  v8[66] = v12;
  v8[67] = *(v12 - 8);
  v8[68] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A8, &unk_24B2ED230);
  v8[69] = v13;
  v8[70] = *(v13 - 8);
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B283D68, a4, 0);
}

uint64_t sub_24B283D68()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  *(v0 + 600) = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  v4 = v1 + v3;
  swift_beginAccess();
  *(v0 + 281) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_24B283DFC, v2, 0);
}

uint64_t sub_24B283DFC()
{
  v1 = *(v0 + 368);
  v2 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  *(v0 + 608) = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  v3 = v1 + v2;
  swift_beginAccess();
  *(v0 + 282) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_24B283E90, 0, 0);
}

uint64_t sub_24B283E90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[77] = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    v0[78] = sub_24B2D5684();
    v2 = sub_24B2D5604();
    v4 = v3;
    v5 = sub_24B283F68;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    v6 = v0[45];
    v5 = sub_24B284070;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24B283F68()
{
  v1 = *(v0 + 616);

  v2 = v1 + *(*v1 + 160);
  swift_beginAccess();
  v3 = type metadata accessor for DataControllerSessionMetrics(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v3 + 36);
    if (*(v2 + v4) == 2)
    {
      *(v2 + v4) = *(v0 + 281) & *(v0 + 282) & 1;
    }
  }

  v5 = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_24B284070, v5, 0);
}

uint64_t sub_24B284070(uint64_t a1)
{
  v2 = *(v1 + 544);
  v3 = *(v1 + 536);
  v4 = *(v1 + 528);
  v5 = *(v1 + 520);
  v6 = *(v1 + 512);
  v7 = *(v1 + 360);
  v12 = *(v1 + 368);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v1 + 284) = *MEMORY[0x277D85778];
  v9 = *(v6 + 104);
  *(v1 + 632) = v9;
  *(v1 + 640) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);
  sub_24B2D5744();

  v10 = *(v3 + 8);
  *(v1 + 648) = v10;
  *(v1 + 656) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);

  return MEMORY[0x2822009F8](sub_24B2841C0, v12, 0);
}

uint64_t sub_24B2841C0(uint64_t a1)
{
  v12 = *(v1 + 648);
  v2 = *(v1 + 632);
  v3 = *(v1 + 284);
  v4 = *(v1 + 544);
  v5 = *(v1 + 520);
  v6 = *(v1 + 504);
  v10 = *(v1 + 528);
  v11 = *(v1 + 384);
  v7 = *(v1 + 368);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v12(v4, v10);

  return MEMORY[0x2822009F8](sub_24B2842E8, v11, 0);
}

uint64_t sub_24B2842E8(uint64_t a1)
{
  v12 = *(v1 + 648);
  v2 = *(v1 + 632);
  v3 = *(v1 + 284);
  v4 = *(v1 + 544);
  v5 = *(v1 + 520);
  v6 = *(v1 + 504);
  v7 = *(v1 + 384);
  v10 = *(v1 + 528);
  v11 = *(v1 + 392);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v12(v4, v10);

  return MEMORY[0x2822009F8](sub_24B28440C, v11, 0);
}

uint64_t sub_24B28440C(uint64_t a1)
{
  v11 = *(v1 + 648);
  v2 = *(v1 + 632);
  v3 = *(v1 + 284);
  v4 = *(v1 + 544);
  v10 = *(v1 + 528);
  v5 = *(v1 + 520);
  v6 = *(v1 + 504);
  v7 = *(v1 + 392);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v11(v4, v10);

  return MEMORY[0x2822009F8](sub_24B284530, 0, 0);
}

uint64_t sub_24B284530()
{
  v2 = v0[59];
  v1 = v0[60];
  sub_24B039184(&qword_27EFCC8B0, &qword_27EFCC8A8, &unk_24B2ED230, MEMORY[0x277D857C0]);
  sub_24B2D3134();
  sub_24B2D3134();
  v3 = MEMORY[0x277CEF6F8];
  sub_24B039184(&qword_27EFCCD80, &qword_27EFCCD70, &unk_24B2ECC70, MEMORY[0x277CEF6F8]);
  sub_24B2D3134();
  sub_24AFF8258(v2, &qword_27EFCCD70, &unk_24B2ECC70);
  sub_24AFF8258(v1, &qword_27EFCCD70, &unk_24B2ECC70);
  sub_24B039184(&qword_27EFCCD88, &qword_27EFCCD78, &unk_24B2ED220, v3);
  sub_24B2D57D4();
  v0[40] = &unk_285E48C90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8C0, &qword_24B2EC1A0);
  sub_24B039184(&qword_27EFCC8C8, &qword_27EFCC8C0, &qword_24B2EC1A0, MEMORY[0x277CEF6C8]);
  sub_24B039184(&qword_27EFCCD90, &qword_27EFCCD68, &unk_24B2ED210, MEMORY[0x277CEF6C0]);
  sub_24B2D3134();
  v4 = sub_24B2D30C4();
  v0[83] = v4;
  v0[41] = v4;
  v0[84] = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v5 = swift_task_alloc();
  v0[85] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98, &unk_24B2ED240);
  *v5 = v0;
  v5[1] = sub_24B284890;

  return MEMORY[0x282141C10](v0 + 33, v6);
}

uint64_t sub_24B284890()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_24B284DD4;
  }

  else
  {
    v2 = sub_24B2849A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2849C0()
{
  v1 = *(v0 + 280);
  if (v1 == 255)
  {
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    v17 = *(v0 + 496);
    v18 = *(v0 + 456);
    v19 = *(v0 + 440);

    sub_24AFF8258(v19, &qword_27EFCCD60, &unk_24B2ECC60);
    sub_24AFF8258(v18, &qword_27EFCCD68, &unk_24B2ED210);
    sub_24AFF8258(v17, &qword_27EFCCD78, &unk_24B2ED220);
    v20 = *(v15 + 8);
    v20(v14, v16);
    v20(v13, v16);
    v20(v12, v16);
    v20(v11, v16);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v3 = *(v0 + 264);
    v2 = *(v0 + 272);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 416) + 16))(*(v0 + 424), Strong + qword_27EFCCE60, *(v0 + 408));

      sub_24B138120(v3, v2);
      v5 = sub_24B2D3164();
      v6 = sub_24B2D5904();
      sub_24B138128(v3, v2, v1);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *(v0 + 352) = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = (v0 + 288);
          v10 = (v0 + 296);
          *(v0 + 288) = 0x3A61746144;
        }

        else
        {
          v9 = (v0 + 304);
          v10 = (v0 + 312);
          *(v0 + 304) = 0x3A74696E49;
        }

        *v10 = 0xE500000000000000;
        MEMORY[0x24C23BC10](v3, v2);
        sub_24B138128(v3, v2, v1);
        v26 = *v9;
        v27 = *v10;
        v29 = *(v0 + 416);
        v28 = *(v0 + 424);
        v30 = *(v0 + 408);
        v31 = sub_24AFF321C(v26, v27, (v0 + 352));

        *(v7 + 4) = v31;
        _os_log_impl(&dword_24AFD2000, v5, v6, "PeopleListController: Stream Triggered - %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C23D530](v8, -1, -1);
        MEMORY[0x24C23D530](v7, -1, -1);

        (*(v29 + 8))(v28, v30);
      }

      else
      {
        v24 = *(v0 + 416);
        v23 = *(v0 + 424);
        v25 = *(v0 + 408);
        sub_24B138128(v3, v2, v1);

        (*(v24 + 8))(v23, v25);
      }
    }

    else
    {
      sub_24B138128(v3, v2, v1);
    }

    v32 = *(v0 + 360);

    return MEMORY[0x2822009F8](sub_24B284E60, v32, 0);
  }
}

uint64_t sub_24B284DD4()
{
  *(v0 + 336) = *(v0 + 688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_24B284E60()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360) + *(v0 + 600);
  *(v0 + 283) = *(v2 + 16);
  *(v0 + 696) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B284EE4, v1, 0);
}

uint64_t sub_24B284EE4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368) + *(v0 + 608);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  sub_24B008890(v0 + 16, v0 + 56, &qword_27EFCCF18, &qword_24B2ED250);

  return MEMORY[0x2822009F8](sub_24B284F80, v1, 0);
}

uint64_t sub_24B284F80()
{
  sub_24B008890(v0[49] + v0[84], v0[50], &qword_27EFCC880, &qword_24B2EC170);

  return MEMORY[0x2822009F8](sub_24B285000, 0, 0);
}

uint64_t sub_24B285000()
{
  v1 = v0[50];
  v2 = v0[48];
  v0[43] = v0[87];
  v3 = swift_task_alloc();
  v0[88] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[89] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF20, &qword_24B2ED260);
  v6 = type metadata accessor for ListPersonInfo(0);
  v7 = sub_24B039184(qword_27EFCCF28, &qword_27EFCCF20, &qword_24B2ED260, MEMORY[0x277D83520]);
  *v4 = v0;
  v4[1] = sub_24B28514C;

  return MEMORY[0x28215ED58](&unk_24B2ED258, v3, v5, v6, v7);
}

void sub_24B28514C(uint64_t a1)
{
  *(*v2 + 720) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B285298, 0, 0);
  }
}

uint64_t sub_24B285298()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 728) = Strong;
  if (Strong)
  {
    *(v0 + 744) = *(v0 + 32);
    sub_24B2D5694();
    *(v0 + 736) = sub_24B2D5684();
    v3 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B28540C, v3, v2);
  }

  else
  {

    sub_24AFF8258(v0 + 16, &qword_27EFCCF18, &qword_24B2ED250);
    sub_24AFF8258(*(v0 + 400), &qword_27EFCC880, &qword_24B2EC170);
    v4 = swift_task_alloc();
    *(v0 + 680) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98, &unk_24B2ED240);
    *v4 = v0;
    v4[1] = sub_24B284890;

    return MEMORY[0x282141C10](v0 + 264, v5);
  }
}

uint64_t sub_24B28540C()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 720);
  v3 = *(v0 + 283);

  sub_24B287084(v2, v3, v1);

  sub_24AFF8258(v0 + 16, &qword_27EFCCF18, &qword_24B2ED250);

  return MEMORY[0x2822009F8](sub_24B2854C8, 0, 0);
}

uint64_t sub_24B2854C8()
{
  sub_24AFF8258(*(v0 + 400), &qword_27EFCC880, &qword_24B2EC170);
  v1 = swift_task_alloc();
  *(v0 + 680) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98, &unk_24B2ED240);
  *v1 = v0;
  v1[1] = sub_24B284890;

  return MEMORY[0x282141C10](v0 + 264, v2);
}

uint64_t sub_24B285594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[48] = a7;
  v8[49] = a8;
  v8[46] = a5;
  v8[47] = a6;
  v8[45] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170);
  v8[50] = swift_task_alloc();
  v10 = sub_24B2D3184();
  v8[51] = v10;
  v8[52] = *(v10 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD60, &unk_24B2ECC60);
  v8[55] = swift_task_alloc();
  v8[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD68, &unk_24B2ED210);
  v8[57] = swift_task_alloc();
  v8[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD70, &unk_24B2ECC70);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD78, &unk_24B2ED220);
  v8[62] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A0, &unk_24B2EC190);
  v8[63] = v11;
  v8[64] = *(v11 - 8);
  v8[65] = swift_task_alloc();
  v12 = sub_24B2D2504();
  v8[66] = v12;
  v8[67] = *(v12 - 8);
  v8[68] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8A8, &unk_24B2ED230);
  v8[69] = v13;
  v8[70] = *(v13 - 8);
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2858E4, a4, 0);
}

uint64_t sub_24B2858E4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  *(v0 + 600) = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage;
  v4 = v1 + v3;
  swift_beginAccess();
  *(v0 + 281) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_24B285978, v2, 0);
}

uint64_t sub_24B285978()
{
  v1 = *(v0 + 368);
  v2 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  *(v0 + 608) = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  v3 = v1 + v2;
  swift_beginAccess();
  *(v0 + 282) = *(v3 + 16);

  return MEMORY[0x2822009F8](sub_24B285A0C, 0, 0);
}

uint64_t sub_24B285A0C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[77] = Strong;
  if (Strong)
  {
    sub_24B2D5694();
    v0[78] = sub_24B2D5684();
    v2 = sub_24B2D5604();
    v4 = v3;
    v5 = sub_24B285AE4;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    v6 = v0[45];
    v5 = sub_24B285BEC;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24B285AE4()
{
  v1 = *(v0 + 616);

  v2 = v1 + *(*v1 + 160);
  swift_beginAccess();
  v3 = type metadata accessor for DataControllerSessionMetrics(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v3 + 36);
    if (*(v2 + v4) == 2)
    {
      *(v2 + v4) = *(v0 + 281) & *(v0 + 282) & 1;
    }
  }

  v5 = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_24B285BEC, v5, 0);
}

uint64_t sub_24B285BEC(uint64_t a1)
{
  v2 = *(v1 + 544);
  v3 = *(v1 + 536);
  v4 = *(v1 + 528);
  v5 = *(v1 + 520);
  v6 = *(v1 + 512);
  v7 = *(v1 + 360);
  v12 = *(v1 + 368);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v1 + 284) = *MEMORY[0x277D85778];
  v9 = *(v6 + 104);
  *(v1 + 632) = v9;
  *(v1 + 640) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);
  sub_24B2D5744();

  v10 = *(v3 + 8);
  *(v1 + 648) = v10;
  *(v1 + 656) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);

  return MEMORY[0x2822009F8](sub_24B285D3C, v12, 0);
}

uint64_t sub_24B285D3C(uint64_t a1)
{
  v12 = *(v1 + 648);
  v2 = *(v1 + 632);
  v3 = *(v1 + 284);
  v4 = *(v1 + 544);
  v5 = *(v1 + 520);
  v6 = *(v1 + 504);
  v10 = *(v1 + 528);
  v11 = *(v1 + 384);
  v7 = *(v1 + 368);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v12(v4, v10);

  return MEMORY[0x2822009F8](sub_24B285E64, v11, 0);
}

uint64_t sub_24B285E64(uint64_t a1)
{
  v12 = *(v1 + 648);
  v2 = *(v1 + 632);
  v3 = *(v1 + 284);
  v4 = *(v1 + 544);
  v5 = *(v1 + 520);
  v6 = *(v1 + 504);
  v7 = *(v1 + 384);
  v10 = *(v1 + 528);
  v11 = *(v1 + 392);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v12(v4, v10);

  return MEMORY[0x2822009F8](sub_24B285F88, v11, 0);
}

uint64_t sub_24B285F88(uint64_t a1)
{
  v11 = *(v1 + 648);
  v2 = *(v1 + 632);
  v3 = *(v1 + 284);
  v4 = *(v1 + 544);
  v10 = *(v1 + 528);
  v5 = *(v1 + 520);
  v6 = *(v1 + 504);
  v7 = *(v1 + 392);
  sub_24B2D24F4();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v2(v5, v3, v6);
  sub_24B2D5744();

  v11(v4, v10);

  return MEMORY[0x2822009F8](sub_24B2860AC, 0, 0);
}

uint64_t sub_24B2860AC()
{
  v2 = v0[59];
  v1 = v0[60];
  sub_24B039184(&qword_27EFCC8B0, &qword_27EFCC8A8, &unk_24B2ED230, MEMORY[0x277D857C0]);
  sub_24B2D3134();
  sub_24B2D3134();
  v3 = MEMORY[0x277CEF6F8];
  sub_24B039184(&qword_27EFCCD80, &qword_27EFCCD70, &unk_24B2ECC70, MEMORY[0x277CEF6F8]);
  sub_24B2D3134();
  sub_24AFF8258(v2, &qword_27EFCCD70, &unk_24B2ECC70);
  sub_24AFF8258(v1, &qword_27EFCCD70, &unk_24B2ECC70);
  sub_24B039184(&qword_27EFCCD88, &qword_27EFCCD78, &unk_24B2ED220, v3);
  sub_24B2D57D4();
  v0[40] = &unk_285E48CC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8C0, &qword_24B2EC1A0);
  sub_24B039184(&qword_27EFCC8C8, &qword_27EFCC8C0, &qword_24B2EC1A0, MEMORY[0x277CEF6C8]);
  sub_24B039184(&qword_27EFCCD90, &qword_27EFCCD68, &unk_24B2ED210, MEMORY[0x277CEF6C0]);
  sub_24B2D3134();
  v4 = sub_24B2D30C4();
  v0[83] = v4;
  v0[41] = v4;
  v0[84] = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v5 = swift_task_alloc();
  v0[85] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98, &unk_24B2ED240);
  *v5 = v0;
  v5[1] = sub_24B28640C;

  return MEMORY[0x282141C10](v0 + 33, v6);
}

uint64_t sub_24B28640C()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_24B2BF7CC;
  }

  else
  {
    v2 = sub_24B286520;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B28653C()
{
  v1 = *(v0 + 280);
  if (v1 == 255)
  {
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    v17 = *(v0 + 496);
    v18 = *(v0 + 456);
    v19 = *(v0 + 440);

    sub_24AFF8258(v19, &qword_27EFCCD60, &unk_24B2ECC60);
    sub_24AFF8258(v18, &qword_27EFCCD68, &unk_24B2ED210);
    sub_24AFF8258(v17, &qword_27EFCCD78, &unk_24B2ED220);
    v20 = *(v15 + 8);
    v20(v14, v16);
    v20(v13, v16);
    v20(v12, v16);
    v20(v11, v16);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v3 = *(v0 + 264);
    v2 = *(v0 + 272);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v0 + 416) + 16))(*(v0 + 424), Strong + qword_27EFCCE60, *(v0 + 408));

      sub_24B138120(v3, v2);
      v5 = sub_24B2D3164();
      v6 = sub_24B2D5904();
      sub_24B138128(v3, v2, v1);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *(v0 + 352) = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = (v0 + 288);
          v10 = (v0 + 296);
          *(v0 + 288) = 0x3A61746144;
        }

        else
        {
          v9 = (v0 + 304);
          v10 = (v0 + 312);
          *(v0 + 304) = 0x3A74696E49;
        }

        *v10 = 0xE500000000000000;
        MEMORY[0x24C23BC10](v3, v2);
        sub_24B138128(v3, v2, v1);
        v26 = *v9;
        v27 = *v10;
        v29 = *(v0 + 416);
        v28 = *(v0 + 424);
        v30 = *(v0 + 408);
        v31 = sub_24AFF321C(v26, v27, (v0 + 352));

        *(v7 + 4) = v31;
        _os_log_impl(&dword_24AFD2000, v5, v6, "PeopleListController: Stream Triggered - %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C23D530](v8, -1, -1);
        MEMORY[0x24C23D530](v7, -1, -1);

        (*(v29 + 8))(v28, v30);
      }

      else
      {
        v24 = *(v0 + 416);
        v23 = *(v0 + 424);
        v25 = *(v0 + 408);
        sub_24B138128(v3, v2, v1);

        (*(v24 + 8))(v23, v25);
      }
    }

    else
    {
      sub_24B138128(v3, v2, v1);
    }

    v32 = *(v0 + 360);

    return MEMORY[0x2822009F8](sub_24B286950, v32, 0);
  }
}

uint64_t sub_24B286950()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360) + *(v0 + 600);
  *(v0 + 283) = *(v2 + 16);
  *(v0 + 696) = *(v2 + 24);

  return MEMORY[0x2822009F8](sub_24B2869D4, v1, 0);
}

uint64_t sub_24B2869D4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368) + *(v0 + 608);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  sub_24B008890(v0 + 16, v0 + 56, &qword_27EFCCF18, &qword_24B2ED250);

  return MEMORY[0x2822009F8](sub_24B286A70, v1, 0);
}

uint64_t sub_24B286A70()
{
  sub_24B008890(v0[49] + v0[84], v0[50], &qword_27EFCC880, &qword_24B2EC170);

  return MEMORY[0x2822009F8](sub_24B286AF0, 0, 0);
}

uint64_t sub_24B286AF0()
{
  v1 = v0[50];
  v2 = v0[48];
  v0[43] = v0[87];
  v3 = swift_task_alloc();
  v0[88] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[89] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCF20, &qword_24B2ED260);
  v6 = type metadata accessor for ListPersonInfo(0);
  v7 = sub_24B039184(qword_27EFCCF28, &qword_27EFCCF20, &qword_24B2ED260, MEMORY[0x277D83520]);
  *v4 = v0;
  v4[1] = sub_24B286C3C;

  return MEMORY[0x28215ED58](&unk_24B2F5940, v3, v5, v6, v7);
}

void sub_24B286C3C(uint64_t a1)
{
  *(*v2 + 720) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B286D88, 0, 0);
  }
}

uint64_t sub_24B286D88()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 728) = Strong;
  if (Strong)
  {
    *(v0 + 744) = *(v0 + 32);
    sub_24B2D5694();
    *(v0 + 736) = sub_24B2D5684();
    v3 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B286EFC, v3, v2);
  }

  else
  {

    sub_24AFF8258(v0 + 16, &qword_27EFCCF18, &qword_24B2ED250);
    sub_24AFF8258(*(v0 + 400), &qword_27EFCC880, &qword_24B2EC170);
    v4 = swift_task_alloc();
    *(v0 + 680) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98, &unk_24B2ED240);
    *v4 = v0;
    v4[1] = sub_24B28640C;

    return MEMORY[0x282141C10](v0 + 264, v5);
  }
}

uint64_t sub_24B286EFC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 720);
  v3 = *(v0 + 283);

  sub_24B287BD8(v2, v3, v1);

  sub_24AFF8258(v0 + 16, &qword_27EFCCF18, &qword_24B2ED250);

  return MEMORY[0x2822009F8](sub_24B286FB8, 0, 0);
}

uint64_t sub_24B286FB8()
{
  sub_24AFF8258(*(v0 + 400), &qword_27EFCC880, &qword_24B2EC170);
  v1 = swift_task_alloc();
  *(v0 + 680) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD98, &unk_24B2ED240);
  *v1 = v0;
  v1[1] = sub_24B28640C;

  return MEMORY[0x282141C10](v0 + 264, v2);
}

void sub_24B287084(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v85) = a3;
  v5 = a2;
  v83 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v73 - v7;
  v9 = type metadata accessor for ListPersonInfo(0);
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v73 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8);
  MEMORY[0x28223BE20](v19 - 8);
  v80 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v79 = &v73 - v22;
  MEMORY[0x28223BE20](v23);
  v81 = &v73 - v24;
  v93 = &_s25OrganizedListExtraStorageVN_0;
  v28 = sub_24B2A0804(v25, v26, v27);
  v94 = v28;
  swift_getKeyPath();
  v29 = *(*v3 + 168);
  v96 = v3;
  v30 = sub_24B039184(&qword_27EFCF850, &qword_27EFCF858, &qword_24B2F55F8, &protocol conformance descriptor for PeopleListController<A>);
  sub_24B2D2584();

  v96 = v3;
  v91 = &_s25OrganizedListExtraStorageVN_0;
  v92 = v28;
  swift_getKeyPath();
  sub_24B2D25A4();

  v31 = *(*v3 + 128);
  swift_beginAccess();
  v82 = v31;
  v32 = v85;
  sub_24B28A308(v83, v5, v85);
  swift_endAccess();
  v96 = v4;
  v89 = &_s25OrganizedListExtraStorageVN_0;
  v90 = v28;
  swift_getKeyPath();
  sub_24B2D2594();

  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v32 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v33);
  *(&v73 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v73 - 1) = v28;
  swift_getKeyPath();
  v96 = v4;
  sub_24B2D2584();

  v34 = v81;
  sub_24B008890(v4 + v82, v81, &qword_27EFCF500, &qword_24B2F4AC8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860, &unk_24B2F5600);
  v36 = sub_24B2D19A4();
  (*(*(v35 - 8) + 8))(v34, v35);
  sub_24B28872C(v36);

  v37 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v38 = type metadata accessor for DataControllerSessionMetrics(0);
  v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
  if (v39)
  {
    swift_endAccess();
    v32 = v85;
    goto LABEL_4;
  }

  MEMORY[0x28223BE20](v39);
  *(&v73 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v73 - 1) = v28;
  v81 = v28;
  swift_getKeyPath();
  v95 = v4;
  v83 = v29;
  v75 = v30;
  sub_24B2D2584();

  v55 = v79;
  sub_24B008890(v4 + v82, v79, &qword_27EFCF500, &qword_24B2F4AC8);
  v74 = *(sub_24B2D19A4() + 16);

  v56 = *(v38 + 40);
  v57 = v78;
  sub_24B008890(v37 + v56, v78, &qword_27EFC8450, &qword_24B2DE7A0);
  v58 = sub_24B2D24A4();
  v59 = *(v58 - 8);
  v60 = (*(v59 + 48))(v57, 1, v58);
  sub_24AFF8258(v57, &qword_27EFC8450, &qword_24B2DE7A0);
  if (v60 == 1)
  {
    v61 = v77;
    sub_24B2D2494();
    (*(v59 + 56))(v61, 0, 1, v58);
    sub_24B068E10(v61, v37 + v56, &qword_27EFC8450, &qword_24B2DE7A0);
    v62 = v37 + *(v38 + 44);
    *v62 = v74;
    *(v62 + 8) = 0;
  }

  swift_endAccess();
  sub_24AFF8258(v55, &qword_27EFCF500, &qword_24B2F4AC8);
  v28 = v81;
  if ((v85 & 1) == 0)
  {
    return;
  }

LABEL_5:
  v40 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v41 = type metadata accessor for DataControllerSessionMetrics(0);
  v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
  if (v42)
  {
LABEL_24:
    swift_endAccess();
    return;
  }

  v79 = v41;
  v81 = v40;
  MEMORY[0x28223BE20](v42);
  *(&v73 - 2) = &_s25OrganizedListExtraStorageVN_0;
  *(&v73 - 1) = v28;
  swift_getKeyPath();
  v95 = v4;
  sub_24B2D2584();

  v43 = v80;
  sub_24B008890(v4 + v82, v80, &qword_27EFCF500, &qword_24B2F4AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860, &unk_24B2F5600);
  v44 = sub_24B2D19A4();
  sub_24AFF8258(v43, &qword_27EFCF500, &qword_24B2F4AC8);
  v85 = *(v44 + 16);
  if (!v85)
  {
    v46 = MEMORY[0x277D84F90];
LABEL_22:

    v63 = *(v46 + 16);

    v64 = v79;
    v65 = *(v79 + 48);
    v66 = v81;
    v67 = v76;
    sub_24B008890(v81 + v65, v76, &qword_27EFC8450, &qword_24B2DE7A0);
    v68 = sub_24B2D24A4();
    v69 = *(v68 - 8);
    v70 = (*(v69 + 48))(v67, 1, v68);
    sub_24AFF8258(v67, &qword_27EFC8450, &qword_24B2DE7A0);
    if (v70 == 1)
    {
      v71 = v77;
      sub_24B2D2494();
      (*(v69 + 56))(v71, 0, 1, v68);
      sub_24B068E10(v71, v66 + v65, &qword_27EFC8450, &qword_24B2DE7A0);
      v72 = v66 + *(v64 + 52);
      *v72 = v63;
      *(v72 + 8) = 0;
    }

    goto LABEL_24;
  }

  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  v83 = v8;
  v47 = v84;
  while (v45 < *(v44 + 16))
  {
    v48 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v49 = *(v87 + 72);
    sub_24B2BF490(v44 + v48 + v49 * v45, v47, type metadata accessor for ListPersonInfo);
    sub_24B008890(v47 + *(v88 + 28), v8, &qword_27EFCB288, &unk_24B2EBD20);
    v50 = sub_24B2D1944();
    v51 = (*(*(v50 - 8) + 48))(v8, 1, v50);
    sub_24AFF8258(v8, &qword_27EFCB288, &unk_24B2EBD20);
    if (v51 == 1)
    {
      sub_24B2BF3E8(v47, type metadata accessor for ListPersonInfo);
    }

    else
    {
      sub_24B2BF380(v47, v86, type metadata accessor for ListPersonInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B007738(0, *(v46 + 16) + 1, 1);
        v46 = v95;
      }

      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_24B007738((v53 > 1), v54 + 1, 1);
        v46 = v95;
      }

      *(v46 + 16) = v54 + 1;
      sub_24B2BF380(v86, v46 + v48 + v54 * v49, type metadata accessor for ListPersonInfo);
      v8 = v83;
      v47 = v84;
    }

    if (v85 == ++v45)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_24B287BD8(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v85) = a3;
  v5 = a2;
  v83 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v73 - v7;
  v9 = type metadata accessor for ListPersonInfo(0);
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v73 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
  MEMORY[0x28223BE20](v19 - 8);
  v80 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v79 = &v73 - v22;
  MEMORY[0x28223BE20](v23);
  v81 = &v73 - v24;
  v93 = &_s25OrganizedListExtraStorageVN;
  v28 = sub_24B276AB0(v25, v26, v27);
  v94 = v28;
  swift_getKeyPath();
  v29 = *(*v3 + 168);
  v96 = v3;
  v30 = sub_24B039184(&qword_27EFCF508, &qword_27EFCF4F0, &unk_24B2F5920, &protocol conformance descriptor for PeopleListController<A>);
  sub_24B2D2584();

  v96 = v3;
  v91 = &_s25OrganizedListExtraStorageVN;
  v92 = v28;
  swift_getKeyPath();
  sub_24B2D25A4();

  v31 = *(*v3 + 128);
  swift_beginAccess();
  v82 = v31;
  v32 = v85;
  sub_24B28A81C(v83, v5, v85);
  swift_endAccess();
  v96 = v4;
  v89 = &_s25OrganizedListExtraStorageVN;
  v90 = v28;
  swift_getKeyPath();
  sub_24B2D2594();

  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v32 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v33);
  *(&v73 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v73 - 1) = v28;
  swift_getKeyPath();
  v96 = v4;
  sub_24B2D2584();

  v34 = v81;
  sub_24B008890(v4 + v82, v81, &qword_27EFCF4D8, &unk_24B2F4A20);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510, &qword_24B2F4B48);
  v36 = sub_24B2D19A4();
  (*(*(v35 - 8) + 8))(v34, v35);
  sub_24B289524(v36);

  v37 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v38 = type metadata accessor for DataControllerSessionMetrics(0);
  v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
  if (v39)
  {
    swift_endAccess();
    v32 = v85;
    goto LABEL_4;
  }

  MEMORY[0x28223BE20](v39);
  *(&v73 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v73 - 1) = v28;
  v81 = v28;
  swift_getKeyPath();
  v95 = v4;
  v83 = v29;
  v75 = v30;
  sub_24B2D2584();

  v55 = v79;
  sub_24B008890(v4 + v82, v79, &qword_27EFCF4D8, &unk_24B2F4A20);
  v74 = *(sub_24B2D19A4() + 16);

  v56 = *(v38 + 40);
  v57 = v78;
  sub_24B008890(v37 + v56, v78, &qword_27EFC8450, &qword_24B2DE7A0);
  v58 = sub_24B2D24A4();
  v59 = *(v58 - 8);
  v60 = (*(v59 + 48))(v57, 1, v58);
  sub_24AFF8258(v57, &qword_27EFC8450, &qword_24B2DE7A0);
  if (v60 == 1)
  {
    v61 = v77;
    sub_24B2D2494();
    (*(v59 + 56))(v61, 0, 1, v58);
    sub_24B068E10(v61, v37 + v56, &qword_27EFC8450, &qword_24B2DE7A0);
    v62 = v37 + *(v38 + 44);
    *v62 = v74;
    *(v62 + 8) = 0;
  }

  swift_endAccess();
  sub_24AFF8258(v55, &qword_27EFCF4D8, &unk_24B2F4A20);
  v28 = v81;
  if ((v85 & 1) == 0)
  {
    return;
  }

LABEL_5:
  v40 = v4 + *(*v4 + 160);
  swift_beginAccess();
  v41 = type metadata accessor for DataControllerSessionMetrics(0);
  v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
  if (v42)
  {
LABEL_24:
    swift_endAccess();
    return;
  }

  v79 = v41;
  v81 = v40;
  MEMORY[0x28223BE20](v42);
  *(&v73 - 2) = &_s25OrganizedListExtraStorageVN;
  *(&v73 - 1) = v28;
  swift_getKeyPath();
  v95 = v4;
  sub_24B2D2584();

  v43 = v80;
  sub_24B008890(v4 + v82, v80, &qword_27EFCF4D8, &unk_24B2F4A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510, &qword_24B2F4B48);
  v44 = sub_24B2D19A4();
  sub_24AFF8258(v43, &qword_27EFCF4D8, &unk_24B2F4A20);
  v85 = *(v44 + 16);
  if (!v85)
  {
    v46 = MEMORY[0x277D84F90];
LABEL_22:

    v63 = *(v46 + 16);

    v64 = v79;
    v65 = *(v79 + 48);
    v66 = v81;
    v67 = v76;
    sub_24B008890(v81 + v65, v76, &qword_27EFC8450, &qword_24B2DE7A0);
    v68 = sub_24B2D24A4();
    v69 = *(v68 - 8);
    v70 = (*(v69 + 48))(v67, 1, v68);
    sub_24AFF8258(v67, &qword_27EFC8450, &qword_24B2DE7A0);
    if (v70 == 1)
    {
      v71 = v77;
      sub_24B2D2494();
      (*(v69 + 56))(v71, 0, 1, v68);
      sub_24B068E10(v71, v66 + v65, &qword_27EFC8450, &qword_24B2DE7A0);
      v72 = v66 + *(v64 + 52);
      *v72 = v63;
      *(v72 + 8) = 0;
    }

    goto LABEL_24;
  }

  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  v83 = v8;
  v47 = v84;
  while (v45 < *(v44 + 16))
  {
    v48 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v49 = *(v87 + 72);
    sub_24B2BF490(v44 + v48 + v49 * v45, v47, type metadata accessor for ListPersonInfo);
    sub_24B008890(v47 + *(v88 + 28), v8, &qword_27EFCB288, &unk_24B2EBD20);
    v50 = sub_24B2D1944();
    v51 = (*(*(v50 - 8) + 48))(v8, 1, v50);
    sub_24AFF8258(v8, &qword_27EFCB288, &unk_24B2EBD20);
    if (v51 == 1)
    {
      sub_24B2BF3E8(v47, type metadata accessor for ListPersonInfo);
    }

    else
    {
      sub_24B2BF380(v47, v86, type metadata accessor for ListPersonInfo);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24B007738(0, *(v46 + 16) + 1, 1);
        v46 = v95;
      }

      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_24B007738((v53 > 1), v54 + 1, 1);
        v46 = v95;
      }

      *(v46 + 16) = v54 + 1;
      sub_24B2BF380(v86, v46 + v48 + v54 * v49, type metadata accessor for ListPersonInfo);
      v8 = v83;
      v47 = v84;
    }

    if (v85 == ++v45)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_24B28872C(uint64_t a1)
{
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v116 = *(v2 - 8);
  v117 = v2;
  MEMORY[0x28223BE20](v2);
  v118 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_24B2D1524();
  v105 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24B2D1544();
  v104 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContactsProvider.Subscription(0);
  v122 = *(v6 - 8);
  v123 = v6;
  MEMORY[0x28223BE20](v6);
  v121 = (&v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v109 = &v103 - v9;
  MEMORY[0x28223BE20](v10);
  v120 = (&v103 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018, &qword_24B2E71F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v103 - v13;
  v15 = sub_24B2D1794();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v125 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v111 = &v103 - v19;
  MEMORY[0x28223BE20](v20);
  v108 = &v103 - v21;
  MEMORY[0x28223BE20](v22);
  v106 = &v103 - v23;
  MEMORY[0x28223BE20](v24);
  v126 = &v103 - v25;
  MEMORY[0x28223BE20](v26);
  v119 = &v103 - v27;
  v28 = type metadata accessor for ListPersonInfo(0) - 8;
  MEMORY[0x28223BE20](v28);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  v129 = v15;
  v127 = v16;
  if (v32)
  {
    v33 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v34 = *(v29 + 72);
    v124 = (v16 + 16);
    v35 = (v16 + 56);
    v36 = (v16 + 48);
    v37 = (v16 + 32);
    v128 = MEMORY[0x277D84F90];
    v110 = v34;
    do
    {
      sub_24B2BF490(v33, v31, type metadata accessor for ListPersonInfo);
      (*v124)(v14, v31, v15);
      (*v35)(v14, 0, 1, v15);
      sub_24B2BF3E8(v31, type metadata accessor for ListPersonInfo);
      if ((*v36)(v14, 1, v15) == 1)
      {
        sub_24AFF8258(v14, &qword_27EFCB018, &qword_24B2E71F0);
      }

      else
      {
        v38 = *v37;
        v39 = v119;
        (*v37)(v119, v14, v15);
        v38(v126, v39, v15);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v128;
        }

        else
        {
          v40 = sub_24B006934(0, v128[2] + 1, 1, v128);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_24B006934((v41 > 1), v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v16 = v127;
        v43 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v128 = v40;
        v44 = v40 + v43 + *(v127 + 72) * v42;
        v15 = v129;
        v38(v44, v126, v129);
        v34 = v110;
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  else
  {
    v128 = MEMORY[0x277D84F90];
  }

  v45 = v107;
  v46 = v107 + *(*v107 + 152);
  swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {
    v48 = *(v46 + 1);

    v47(v128);
    sub_24AFD5890(v47, v48);
  }

  if (*(v45 + *(*v45 + 136)))
  {
    v49 = v45[6];
    v50 = v128;
    v51 = v128[2];
    v52 = MEMORY[0x277D84F90];
    if (v51)
    {
      v110 = v45[6];
      v130 = MEMORY[0x277D84F90];
      sub_24B007804(0, v51, 0);
      v52 = v130;
      v54 = *(v16 + 16);
      v53 = (v16 + 16);
      v124 = v54;
      v55 = v50 + ((v53[64] + 32) & ~v53[64]);
      v119 = *(v53 + 7);
      v126 = v53;
      v56 = (v53 - 8);
      v57 = v109;
      v58 = v106;
      do
      {
        (v124)(v58, v55, v15);
        v59 = sub_24B2D1604();
        if (v60)
        {
          v61 = v121;
          *v121 = v59;
          *(v61 + 8) = v60;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120);
          v62 = v121;
          sub_24B2D14D4();
          v63 = sub_24B2D14C4();
          (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
          sub_24B2D1724();
          v61 = v62;
          v57 = v109;
        }

        swift_storeEnumTagMultiPayload();
        sub_24B2BF380(v61, v57, type metadata accessor for ContactsProvider.Subscription);
        v64 = v120;
        sub_24B2BF380(v57, v120, type metadata accessor for ContactsProvider.Subscription);
        (*v56)(v58, v15);
        v130 = v52;
        v66 = *(v52 + 16);
        v65 = *(v52 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_24B007804((v65 > 1), v66 + 1, 1);
          v58 = v106;
          v52 = v130;
        }

        *(v52 + 16) = v66 + 1;
        sub_24B2BF380(v64, v52 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v66, type metadata accessor for ContactsProvider.Subscription);
        v55 = &v119[v55];
        --v51;
        v15 = v129;
      }

      while (v51);
      v45 = v107;
      v16 = v127;
      v49 = v110;
    }

    v67 = sub_24B1D032C(v52);

    v69 = v45[2];
    v68 = v45[3];
    v70 = swift_allocObject();
    v70[2] = v49;
    v70[3] = v67;
    v70[4] = v69;
    v70[5] = v68;

    sub_24B2D12C4();

    v71 = v128;
    v72 = MEMORY[0x277D84F90];
    v126 = v128[2];
    if (v126)
    {
      v73 = 0;
      v124 = (v16 + 16);
      v123 = (v105 + 8);
      v120 = (v16 + 8);
      v121 = (v16 + 32);
      v122 = v104 + 8;
      v74 = v108;
      v75 = v112;
      while (v73 < *(v71 + 2))
      {
        v76 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v77 = *(v16 + 72);
        v78 = *(v16 + 16);
        v79 = v129;
        v78(v74, &v71[v76 + v77 * v73], v129);
        sub_24B2D1554();
        v80 = v114;
        sub_24B2D1534();
        v81 = sub_24B2D1514();
        (*v123)(v80, v115);
        (*v122)(v75, v113);
        if (v81)
        {
          v82 = *v121;
          (*v121)(v111, v74, v79);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v130 = v72;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24B0077C0(0, *(v72 + 16) + 1, 1);
            v74 = v108;
            v72 = v130;
          }

          v85 = *(v72 + 16);
          v84 = *(v72 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_24B0077C0((v84 > 1), v85 + 1, 1);
            v74 = v108;
            v72 = v130;
          }

          *(v72 + 16) = v85 + 1;
          v82((v72 + v76 + v85 * v77), v111, v129);
        }

        else
        {
          (*v120)(v74, v79);
        }

        ++v73;
        v16 = v127;
        v71 = v128;
        if (v126 == v73)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_37:

      v86 = *(v72 + 16);
      if (v86)
      {
        v130 = MEMORY[0x277D84F90];
        sub_24B00777C(0, v86, 0);
        sub_24B2D5694();
        v87 = *(v16 + 16);
        v127 = v16 + 16;
        v128 = v87;
        v89 = v129;
        v88 = v130;
        v90 = v72 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
        v126 = *(v16 + 72);
        v91 = (v16 + 8);
        do
        {
          (v128)(v125, v90, v89);
          sub_24B2D5684();
          sub_24B2D5604();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v92 = v118;
          v93 = v125;
          _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
          v89 = v129;
          (*v91)(v93, v129);

          v94 = v92;
          v92[*(v117 + 20)] = 1;
          v130 = v88;
          v96 = *(v88 + 16);
          v95 = *(v88 + 24);
          if (v96 >= v95 >> 1)
          {
            sub_24B00777C((v95 > 1), v96 + 1, 1);
            v94 = v118;
            v88 = v130;
          }

          *(v88 + 16) = v96 + 1;
          sub_24B2BF380(v94, v88 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v96, type metadata accessor for PeopleLocationsProvider.Subscription);
          v90 += v126;
          --v86;
        }

        while (v86);
      }

      else
      {

        v88 = MEMORY[0x277D84F90];
      }

      v97 = v107;
      v98 = v107[5];
      v99 = sub_24B1D04BC(v88);

      v101 = v97[2];
      v100 = v97[3];
      v102 = swift_allocObject();
      v102[2] = v98;
      v102[3] = v99;
      v102[4] = v101;
      v102[5] = v100;

      sub_24B2D12C4();
    }
  }

  else
  {
  }
}

void sub_24B289524(uint64_t a1)
{
  v2 = type metadata accessor for ContactsProvider.Subscription(0);
  v115 = *(v2 - 8);
  v116 = v2;
  MEMORY[0x28223BE20](v2);
  v114 = (&v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v113 = (&v96 - v5);
  MEMORY[0x28223BE20](v6);
  v112 = &v96 - v7;
  v8 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v109 = *(v8 - 8);
  v110 = v8;
  MEMORY[0x28223BE20](v8);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24B2D1524();
  v98 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24B2D1544();
  v97 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018, &qword_24B2E71F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v96 - v13;
  v15 = sub_24B2D1794();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v119 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v99 = &v96 - v19;
  MEMORY[0x28223BE20](v20);
  v103 = &v96 - v21;
  MEMORY[0x28223BE20](v22);
  v118 = &v96 - v23;
  MEMORY[0x28223BE20](v24);
  v101 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v111 = &v96 - v27;
  v28 = type metadata accessor for ListPersonInfo(0) - 8;
  MEMORY[0x28223BE20](v28);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  v122 = v15;
  v120 = v16;
  if (v32)
  {
    v33 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v34 = *(v29 + 72);
    v117 = (v16 + 16);
    v35 = (v16 + 56);
    v36 = (v16 + 48);
    v37 = (v16 + 32);
    v121 = MEMORY[0x277D84F90];
    v102 = v34;
    do
    {
      sub_24B2BF490(v33, v31, type metadata accessor for ListPersonInfo);
      (*v117)(v14, v31, v15);
      (*v35)(v14, 0, 1, v15);
      sub_24B2BF3E8(v31, type metadata accessor for ListPersonInfo);
      if ((*v36)(v14, 1, v15) == 1)
      {
        sub_24AFF8258(v14, &qword_27EFCB018, &qword_24B2E71F0);
      }

      else
      {
        v38 = *v37;
        v39 = v111;
        (*v37)(v111, v14, v15);
        v38(v119, v39, v15);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v121;
        }

        else
        {
          v40 = sub_24B006934(0, v121[2] + 1, 1, v121);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_24B006934((v41 > 1), v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v43 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v121 = v40;
        v15 = v122;
        v38(v40 + v43 + *(v120 + 72) * v42, v119, v122);
        v34 = v102;
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  else
  {
    v121 = MEMORY[0x277D84F90];
  }

  v44 = v100;
  v45 = v100 + *(*v100 + 152);
  swift_beginAccess();
  v46 = *v45;
  if (*v45)
  {
    v47 = *(v45 + 1);

    v46(v121);
    sub_24AFD5890(v46, v47);
  }

  if (*(v44 + *(*v44 + 136)) == 1)
  {
    v48 = v44[6];
    v49 = v121;
    v50 = v121[2];
    v51 = MEMORY[0x277D84F90];
    if (v50)
    {
      v111 = v44[6];
      v123 = MEMORY[0x277D84F90];
      sub_24B007804(0, v50, 0);
      v51 = v123;
      v119 = *(v120 + 16);
      v52 = v49 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      v117 = *(v120 + 72);
      v53 = (v120 + 8);
      v54 = v99;
      v55 = v112;
      do
      {
        (v119)(v54, v52, v122);
        v56 = sub_24B2D1604();
        if (v57)
        {
          v58 = v114;
          *v114 = v56;
          *(v58 + 8) = v57;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120);
          v58 = v114;
          sub_24B2D14D4();
          v59 = sub_24B2D14C4();
          (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
          sub_24B2D1724();
        }

        swift_storeEnumTagMultiPayload();
        v60 = v113;
        sub_24B2BF380(v58, v113, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2BF380(v60, v55, type metadata accessor for ContactsProvider.Subscription);
        (*v53)(v54, v122);
        v123 = v51;
        v62 = *(v51 + 16);
        v61 = *(v51 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_24B007804((v61 > 1), v62 + 1, 1);
          v54 = v99;
          v51 = v123;
        }

        *(v51 + 16) = v62 + 1;
        sub_24B2BF380(v55, v51 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v62, type metadata accessor for ContactsProvider.Subscription);
        v52 = v117 + v52;
        --v50;
      }

      while (v50);
      v44 = v100;
      v15 = v122;
      v48 = v111;
    }

    v63 = sub_24B1D032C(v51);

    v65 = v44[2];
    v64 = v44[3];
    v66 = swift_allocObject();
    v66[2] = v48;
    v66[3] = v63;
    v66[4] = v65;
    v66[5] = v64;

    sub_24B2D12C4();

    v67 = v121;
    v68 = MEMORY[0x277D84F90];
    v119 = v121[2];
    if (v119)
    {
      v69 = 0;
      v117 = (v120 + 16);
      v116 = (v98 + 8);
      v113 = (v120 + 8);
      v114 = (v120 + 32);
      v115 = v97 + 8;
      v70 = v101;
      v71 = v104;
      while (v69 < *(v67 + 2))
      {
        v72 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v73 = *(v120 + 72);
        (*(v120 + 16))(v70, &v67[v72 + v73 * v69], v15);
        sub_24B2D1554();
        v74 = v106;
        sub_24B2D1534();
        v75 = sub_24B2D1514();
        (*v116)(v74, v107);
        (*v115)(v71, v105);
        if (v75)
        {
          v76 = *v114;
          (*v114)(v103, v70, v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v123 = v68;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24B0077C0(0, *(v68 + 16) + 1, 1);
            v70 = v101;
            v68 = v123;
          }

          v79 = *(v68 + 16);
          v78 = *(v68 + 24);
          if (v79 >= v78 >> 1)
          {
            sub_24B0077C0((v78 > 1), v79 + 1, 1);
            v70 = v101;
            v68 = v123;
          }

          *(v68 + 16) = v79 + 1;
          v80 = v68 + v72 + v79 * v73;
          v15 = v122;
          v76(v80, v103, v122);
        }

        else
        {
          (*v113)(v70, v15);
        }

        ++v69;
        v67 = v121;
        if (v119 == v69)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_37:

      v81 = *(v68 + 16);
      if (v81)
      {
        v123 = MEMORY[0x277D84F90];
        sub_24B00777C(0, v81, 0);
        sub_24B2D5694();
        v82 = *(v120 + 16);
        v120 += 16;
        v121 = v82;
        v83 = v123;
        v84 = v68 + ((*(v120 + 64) + 32) & ~*(v120 + 64));
        v119 = *(v120 + 56);
        v85 = (v120 - 8);
        do
        {
          (v121)(v118, v84, v122);
          sub_24B2D5684();
          sub_24B2D5604();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v86 = v108;
          v87 = v118;
          _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
          (*v85)(v87, v122);

          *(v86 + *(v110 + 20)) = 1;
          v123 = v83;
          v89 = *(v83 + 16);
          v88 = *(v83 + 24);
          if (v89 >= v88 >> 1)
          {
            sub_24B00777C((v88 > 1), v89 + 1, 1);
            v83 = v123;
          }

          *(v83 + 16) = v89 + 1;
          sub_24B2BF380(v86, v83 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v89, type metadata accessor for PeopleLocationsProvider.Subscription);
          v84 += v119;
          --v81;
        }

        while (v81);
      }

      else
      {

        v83 = MEMORY[0x277D84F90];
      }

      v90 = v100;
      v91 = v100[5];
      v92 = sub_24B1D04BC(v83);

      v94 = v90[2];
      v93 = v90[3];
      v95 = swift_allocObject();
      v95[2] = v91;
      v95[3] = v92;
      v95[4] = v94;
      v95[5] = v93;

      sub_24B2D12C4();
    }
  }

  else
  {
  }
}

unint64_t sub_24B28A308(uint64_t a1, int a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37[-v7];
  v49 = sub_24B2D1524();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_24B2D1544();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = type metadata accessor for ListPersonInfo(0);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v37[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860, &unk_24B2F5600);
  sub_24B2D1994();
  v19 = *(sub_24B2D19A4() + 16);

  if (v19)
  {
    v41 = a2;
    v39 = v18;
    v40 = v8;
    v38 = a3;
    v42 = v3;
    result = sub_24B2D19A4();
    v21 = result;
    v22 = 0;
    v46 = *(result + 16);
    v23 = (v9 + 8);
    v24 = (v43 + 8);
    do
    {
      if (v46 == v22)
      {

        if (v41)
        {
          v36 = 6;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_21;
      }

      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v25 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v26 = *(v47 + 72);
      sub_24B2BF490(v21 + v25 + v26 * v22++, v17, type metadata accessor for ListPersonInfo);
      sub_24B2D1554();
      sub_24B2D1534();
      v27 = sub_24B2D1514();
      (*v23)(v11, v49);
      (*v24)(v13, v48);
      result = sub_24B2BF3E8(v17, type metadata accessor for ListPersonInfo);
    }

    while ((v27 & 1) == 0);

    v28 = sub_24B2D19A4();
    result = v28 + v25;
    v29 = -*(v28 + 16);
    v30 = -1;
    v31 = v40;
    v32 = v44;
    while (v29 + v30 != -1)
    {
      if (++v30 >= *(v28 + 16))
      {
        goto LABEL_25;
      }

      v33 = result + v26;
      sub_24B2BF490(result, v32, type metadata accessor for ListPersonInfo);
      sub_24B008890(v32 + *(v45 + 28), v31, &qword_27EFCB288, &unk_24B2EBD20);
      v34 = sub_24B2D1944();
      v35 = (*(*(v34 - 8) + 48))(v31, 1, v34);
      sub_24AFF8258(v31, &qword_27EFCB288, &unk_24B2EBD20);
      sub_24B2BF3E8(v32, type metadata accessor for ListPersonInfo);
      result = v33;
      if (v35 != 1)
      {

        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8);
        v36 = 1;
        goto LABEL_22;
      }
    }

    if (v38)
    {
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

LABEL_21:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8);
LABEL_22:
    v3 = v42;
  }

  else
  {
    if (a2)
    {
      v36 = 5;
    }

    else
    {
      v36 = 4;
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8);
  }

  *(v3 + *(result + 36)) = v36;
  return result;
}

unint64_t sub_24B28A81C(uint64_t a1, int a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37[-v7];
  v49 = sub_24B2D1524();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_24B2D1544();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = type metadata accessor for ListPersonInfo(0);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v37[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF510, &qword_24B2F4B48);
  sub_24B2D1994();
  v19 = *(sub_24B2D19A4() + 16);

  if (v19)
  {
    v41 = a2;
    v39 = v18;
    v40 = v8;
    v38 = a3;
    v42 = v3;
    result = sub_24B2D19A4();
    v21 = result;
    v22 = 0;
    v46 = *(result + 16);
    v23 = (v9 + 8);
    v24 = (v43 + 8);
    do
    {
      if (v46 == v22)
      {

        if (v41)
        {
          v36 = 6;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_21;
      }

      if (v22 >= *(v21 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v25 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v26 = *(v47 + 72);
      sub_24B2BF490(v21 + v25 + v26 * v22++, v17, type metadata accessor for ListPersonInfo);
      sub_24B2D1554();
      sub_24B2D1534();
      v27 = sub_24B2D1514();
      (*v23)(v11, v49);
      (*v24)(v13, v48);
      result = sub_24B2BF3E8(v17, type metadata accessor for ListPersonInfo);
    }

    while ((v27 & 1) == 0);

    v28 = sub_24B2D19A4();
    result = v28 + v25;
    v29 = -*(v28 + 16);
    v30 = -1;
    v31 = v40;
    v32 = v44;
    while (v29 + v30 != -1)
    {
      if (++v30 >= *(v28 + 16))
      {
        goto LABEL_25;
      }

      v33 = result + v26;
      sub_24B2BF490(result, v32, type metadata accessor for ListPersonInfo);
      sub_24B008890(v32 + *(v45 + 28), v31, &qword_27EFCB288, &unk_24B2EBD20);
      v34 = sub_24B2D1944();
      v35 = (*(*(v34 - 8) + 48))(v31, 1, v34);
      sub_24AFF8258(v31, &qword_27EFCB288, &unk_24B2EBD20);
      sub_24B2BF3E8(v32, type metadata accessor for ListPersonInfo);
      result = v33;
      if (v35 != 1)
      {

        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
        v36 = 1;
        goto LABEL_22;
      }
    }

    if (v38)
    {
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

LABEL_21:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
LABEL_22:
    v3 = v42;
  }

  else
  {
    if (a2)
    {
      v36 = 5;
    }

    else
    {
      v36 = 4;
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4D8, &unk_24B2F4A20);
  }

  *(v3 + *(result + 36)) = v36;
  return result;
}

double sub_24B28AD30()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24AFF321C(0x7261657070416E6FLL, 0xEA00000000002928, &v25);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleListController: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  sub_24B2829B8();
  v10 = v1[4];
  v11 = sub_24B2D1574();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v13 = v1[2];
  v12 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80C8, &unk_24B2ED0C0);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DE430;
  sub_24B2BF490(v5, v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  v16 = sub_24B13405C(v15);
  swift_setDeallocating();
  sub_24B2BF3E8(v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  swift_deallocClassInstance();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v12;

  sub_24B2D12C4();

  sub_24B2BF3E8(v5, type metadata accessor for PeopleProvider.Subscription);
  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = sub_24B134824(&unk_285E482D0);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v20;
  v22[5] = v19;

  sub_24B2D12C4();

  return result;
}

double sub_24B28B0A0()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleProvider.Subscription(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_24AFF321C(0x7261657070416E6FLL, 0xEA00000000002928, &v25);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleListController: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  sub_24B282F94();
  v10 = v1[4];
  v11 = sub_24B2D1574();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v13 = v1[2];
  v12 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80C8, &unk_24B2ED0C0);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DE430;
  sub_24B2BF490(v5, v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  v16 = sub_24B13405C(v15);
  swift_setDeallocating();
  sub_24B2BF3E8(v15 + v14, type metadata accessor for PeopleProvider.Subscription);
  swift_deallocClassInstance();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v13;
  v17[5] = v12;

  sub_24B2D12C4();

  sub_24B2BF3E8(v5, type metadata accessor for PeopleProvider.Subscription);
  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = sub_24B134824(&unk_285E48D38);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v20;
  v22[5] = v19;

  sub_24B2D12C4();

  return result;
}

double sub_24B28B410()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x7070617369446E6FLL, 0xED00002928726165, &v23);
    _os_log_impl(&dword_24AFD2000, v2, v3, "PeopleListController: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  *(v1 + *(*v1 + 136)) = 0;
  if (*(v1 + *(*v1 + 144)))
  {

    sub_24B2D5764();
  }

  sub_24B283570();
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[2];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_24B2D12C4();

  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = v11;

  sub_24B2D12C4();

  v14 = v1[6];
  v16 = v1[2];
  v15 = v1[3];
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v15;

  sub_24B2D12C4();

  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  v21[4] = v19;

  sub_24B2D12C4();

  return result;
}

double sub_24B28B758()
{
  v1 = v0;
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x7070617369446E6FLL, 0xED00002928726165, &v23);
    _os_log_impl(&dword_24AFD2000, v2, v3, "PeopleListController: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  *(v1 + *(*v1 + 136)) = 0;
  if (*(v1 + *(*v1 + 144)))
  {

    sub_24B2D5764();
  }

  sub_24B283570();
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[2];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_24B2D12C4();

  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = v11;

  sub_24B2D12C4();

  v14 = v1[6];
  v16 = v1[2];
  v15 = v1[3];
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v15;

  sub_24B2D12C4();

  v18 = v1[7];
  v20 = v1[2];
  v19 = v1[3];
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  v21[4] = v19;

  sub_24B2D12C4();

  return result;
}

uint64_t sub_24B28BAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08, &qword_24B2EF5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_24B2D2504();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v8 + 16);
  v10(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00, &qword_24B2F02B0);
  v12 = *(v11 - 8);
  v19 = a3;
  v13 = v12;
  (*(v12 + 16))(v6, v20, v11);
  (*(v13 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170);
  sub_24B18C438(v6, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_endAccess();
  v14 = swift_allocObject();
  swift_weakInit();
  v10(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v7);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v8 + 32))(v16 + v15, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  return sub_24B2D56E4();
}

uint64_t sub_24B28BE70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a1;
  v25 = a7;
  v23[3] = a5;
  v23[4] = a6;
  v23[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08, &qword_24B2EF5F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_24B2D2504();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v23[2] = v13;
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(v12 + 16);
  v15(v14, a3, v11);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00, &qword_24B2F02B0);
  v17 = *(v16 - 8);
  v23[0] = a3;
  v18 = v17;
  (*(v17 + 16))(v10, v24, v16);
  (*(v18 + 56))(v10, 0, 1, v16);
  swift_beginAccess();
  sub_24B18C438(v10, v14);
  swift_endAccess();
  v19 = swift_allocObject();
  swift_weakInit();
  v15(v14, v23[0], v11);
  v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v12 + 32))(v21 + v20, v14, v11);
  return sub_24B2D56E4();
}

uint64_t sub_24B28C130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_24B2D2504();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_24B2D56D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v15;
  (*(v9 + 32))(&v17[v16], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_24AFFC0A8(0, 0, v13, a6, v17);

  return sub_24AFF8258(v13, &qword_27EFC8580, &qword_24B2E0010);
}

uint64_t sub_24B28C36C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00, &qword_24B2F02B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08, &qword_24B2EF5F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  v14 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880, &qword_24B2EC170) + 52));
  if (*(v14 + 16) && (v15 = sub_24B181398(a1), (v16 & 1) != 0))
  {
    (*(v4 + 16))(v12, *(v14 + 56) + *(v4 + 72) * v15, v3);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v4 + 56))(v12, v17, 1, v3);
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_24AFF8258(v12, qword_27EFCDD08, &qword_24B2EF5F0);
  }

  else
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_24AFF8258(v12, qword_27EFCDD08, &qword_24B2EF5F0);
    sub_24B2D5714();
    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  sub_24B23C2E0(a1, v9);
  sub_24AFF8258(v9, qword_27EFCDD08, &qword_24B2EF5F0);
  return swift_endAccess();
}

uint64_t sub_24B28C634(uint64_t a1, void *a2)
{
  v5 = sub_24B2D2504();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00, &qword_24B2F02B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v26[0] = v26 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFCDD08, &qword_24B2EF5F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v16 = v2 + *a2;
  swift_beginAccess();
  v17 = *(v16 + 8);
  v18 = *(v16 + 32);
  v19 = *(v18 + 16);
  v29 = a1;
  v26[1] = v17;
  if (v19)
  {

    v20 = sub_24B181398(a1);
    if (v21)
    {
      (*(v8 + 16))(v15, *(v18 + 56) + *(v8 + 72) * v20, v7);
      v22 = *(v8 + 56);
      v22(v15, 0, 1, v7);
    }

    else
    {
      v22 = *(v8 + 56);
      v22(v15, 1, 1, v7);
    }
  }

  else
  {
    v22 = *(v8 + 56);
    v22(v15, 1, 1, v7);
  }

  if ((*(v8 + 48))(v15, 1, v7))
  {
    sub_24AFF8258(v15, qword_27EFCDD08, &qword_24B2EF5F0);
  }

  else
  {
    v23 = v26[0];
    (*(v8 + 16))(v26[0], v15, v7);
    sub_24AFF8258(v15, qword_27EFCDD08, &qword_24B2EF5F0);
    sub_24B2D5714();
    (*(v8 + 8))(v23, v7);
  }

  v24 = v30;
  (*(v27 + 16))(v30, v29, v28);
  v22(v12, 1, 1, v7);
  swift_beginAccess();
  sub_24B18C438(v12, v24);
  return swift_endAccess();
}

uint64_t sub_24B28CA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_24B2D2504();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B28CB68, v3, 0);
}