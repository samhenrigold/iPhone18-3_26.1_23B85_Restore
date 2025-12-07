uint64_t sub_2658E07A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26596A2AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2658E07CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2658E080C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2658E084C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C70, &qword_265974180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2658E08B8(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_26596A20C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26596A22C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 specifier];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 target];

    if (v18)
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v46 = [v19 navigationItem];
        v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v21 = objc_opt_self();
        v44[1] = a3;
        v22 = v21;
        v23 = sub_26596A27C();
        v44[0] = a2;
        v24 = v23;
        v25 = [v22 preferredFontForTextStyle_];

        [v20 setFont_];
        v50 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029BB8, &qword_265973BD8);
        v49 = v12;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_265973B50;
        v47 = v18;
        v27 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v28 = objc_opt_self();
        v48 = v9;
        v29 = v28;
        v30 = v27;
        v31 = [v29 labelColor];
        v32 = [v31 colorWithAlphaComponent_];
        v45 = v13;
        v33 = v32;

        *(inited + 64) = sub_2658E2188(0, &qword_280029BC0, 0x277D75348);
        *(inited + 40) = v33;
        sub_2658E1F94(inited, &qword_280029BD8, &qword_265973BE8, &qword_280029BC8, &qword_265973BE0);
        swift_setDeallocating();
        sub_2658E21D0(inited + 32);
        v34 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v35 = sub_26596A27C();
        type metadata accessor for Key(0);
        sub_2658E20F8(&qword_280029BD0, type metadata accessor for Key, &unk_265973EC4);
        v36 = sub_26596A24C();

        v37 = [v34 initWithString:v35 attributes:v36];

        v38 = v50;
        [v50 setAttributedText_];

        sub_2658E2188(0, &qword_280029B98, 0x277D85C78);
        v39 = sub_26596A2FC();
        v40 = swift_allocObject();
        v41 = v46;
        *(v40 + 16) = v46;
        *(v40 + 24) = v38;
        aBlock[4] = sub_2658E20D0;
        aBlock[5] = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2658E0EE4;
        aBlock[3] = &block_descriptor;
        v42 = _Block_copy(aBlock);
        v43 = v41;

        sub_26596A21C();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_2658E20F8(&qword_280029BA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029BA8, &qword_265973BD0);
        sub_2658E2140(&qword_280029BB0, &qword_280029BA8, &qword_265973BD0, MEMORY[0x277D83970]);
        sub_26596A33C();
        MEMORY[0x2667638E0](0, v15, v11, v42);

        _Block_release(v42);
        swift_unknownObjectRelease();

        (*(v48 + 8))(v11, v8);
        (*(v45 + 8))(v15, v49);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_2658E0EE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2658E0F28()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_26596A00C();
  sub_2658E1F94(MEMORY[0x277D84F90], &qword_280029B88, &qword_265973BC0, &qword_280029B90, &qword_265973BC8);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2658E20F8(&qword_280029B80, type metadata accessor for OpenExternalURLOptionsKey, &unk_265973F08);
  v2 = sub_26596A24C();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

id sub_2658E10B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_26596A27C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_2658E12E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2658E131C(uint64_t a1, id *a2)
{
  result = sub_26596A28C();
  *a2 = 0;
  return result;
}

uint64_t sub_2658E1394(uint64_t a1, id *a2)
{
  v3 = sub_26596A29C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2658E1414@<X0>(uint64_t *a2@<X8>)
{
  sub_26596A2AC();
  v3 = sub_26596A27C();

  *a2 = v3;
  return result;
}

uint64_t sub_2658E1458()
{
  v0 = sub_26596A2AC();
  v1 = MEMORY[0x2667638B0](v0);

  return v1;
}

uint64_t sub_2658E1494(uint64_t a1)
{
  sub_26596A2AC();
  sub_26596A2CC();
}

uint64_t sub_2658E14E8(uint64_t a1)
{
  sub_26596A2AC();
  sub_26596A37C();
  sub_26596A2CC();
  v1 = sub_26596A38C();

  return v1;
}

uint64_t sub_2658E155C(void *a1, uint64_t *a2)
{
  v2 = sub_26596A2AC();
  v4 = v3;
  if (v2 == sub_26596A2AC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26596A36C();
  }

  return v7 & 1;
}

uint64_t sub_2658E15E4(uint64_t a1)
{
  v2 = sub_2658E20F8(&qword_280029BD0, type metadata accessor for Key, &unk_265973EC4);
  v3 = sub_2658E20F8(&qword_280029C20, type metadata accessor for Key, &unk_265973E18);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2658E16A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26596A27C();

  *a2 = v3;
  return result;
}

uint64_t sub_2658E16E8(uint64_t a1)
{
  v2 = sub_2658E20F8(&qword_280029B80, type metadata accessor for OpenExternalURLOptionsKey, &unk_265973F08);
  v3 = sub_2658E20F8(&qword_280029C28, type metadata accessor for OpenExternalURLOptionsKey, &unk_265973CF8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_2658E17A4(uint64_t a1)
{
  sub_26596A2AC();
  sub_26596A37C();
  sub_26596A2CC();
  v2 = sub_26596A38C();

  return sub_2658E1834(a1, v2);
}

unint64_t sub_2658E1834(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26596A2AC();
      v8 = v7;
      if (v6 == sub_26596A2AC() && v8 == v9)
      {
        break;
      }

      v11 = sub_26596A36C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2658E1938()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029B60, &qword_265973BB0);
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - v3;
  v5 = sub_26596A05C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_26596A26C();
  MEMORY[0x28223BE20](v6 - 8);
  [v1 setSelectionStyle_];
  v7 = [objc_opt_self() currentDevice];
  [v7 sf_isChinaRegionCellularDevice];

  sub_26596A25C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  sub_26596A04C();
  v11 = sub_26596A2BC();
  v13 = v12;
  sub_26596A25C();
  v14 = [v9 bundleForClass_];
  sub_26596A04C();
  v24[0] = sub_26596A2BC();
  v24[1] = v15;
  v16 = swift_allocObject();
  v16[2] = v1;
  v16[3] = v11;
  v16[4] = v13;
  v17 = MEMORY[0x28223BE20](v16);
  *(&v20 - 6) = v11;
  *(&v20 - 5) = v13;
  *(&v20 - 4) = v24;
  *(&v20 - 3) = sub_2658E1E28;
  *(&v20 - 2) = v17;
  v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029B68, &qword_265973BB8);
  sub_2658E2140(&qword_280029B70, &qword_280029B68, &qword_265973BB8, MEMORY[0x277D4D7A8]);
  sub_26596A13C();

  sub_26596A16C();
  v18 = v22;
  v23[3] = v22;
  v23[4] = sub_2658E2140(&qword_280029B78, &qword_280029B60, &qword_265973BB0, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_26596A12C();
  (*(v21 + 8))(v4, v18);
  MEMORY[0x2667638C0](v23);
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

uint64_t sub_2658E1E34()
{

  return sub_26596A23C();
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2658E1F94(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_26596A34C();
    v10 = a1 + 32;

    while (1)
    {
      sub_2658E2298(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_2658E17A4(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_2658E20C0(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_2658E20C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2658E20F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2658E2140(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2658E2188(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2658E21D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029BC8, &qword_265973BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2658E224C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2658E2298(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2658E24D8(void *a1)
{
  v2 = v1;
  v4 = sub_26596A03C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [a1 identifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_26596A2AC();
    v12 = v11;
  }

  else
  {
    sub_26596A02C();
    v10 = sub_26596A01C();
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  (*(*v2 + 200))(v10, v12);
  v14 = [a1 name];
  if (v14)
  {
    v15 = v14;
    v16 = sub_26596A2AC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  (*(*v2 + 248))(v16, v18);
  if ([a1 propertyForKey_])
  {
    sub_26596A32C();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (!*(&v23 + 1))
  {
    sub_2658E3CFC(v24);
    goto LABEL_14;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v19 = 1;
    return (*(*v2 + 296))(v19);
  }

  v19 = v21[15];
  return (*(*v2 + 296))(v19);
}

void (*sub_2658E2754(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_2658E27A0;
}

void sub_2658E27A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    sub_2658E24D8(v4);
    v6 = *(v3 + 16);
    *(v3 + 16) = v4;

    v5 = v6;
  }

  else
  {
    sub_2658E24D8(*a1);
    v5 = *(v3 + 16);
    *(v3 + 16) = v2;
  }
}

id sub_2658E2810()
{
  swift_getKeyPath();
  (*(*v0 + 320))();

  v1 = v0[2];

  return v1;
}

uint64_t sub_2658E2884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

void sub_2658E2924(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  sub_2658E2A70();
  v5 = v4;
  v6 = sub_26596A31C();

  if (v6)
  {
    sub_2658E24D8(a1);
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 328))(v9, sub_2658E2ABC);
  }
}

unint64_t sub_2658E2A70()
{
  result = qword_280029C30;
  if (!qword_280029C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280029C30);
  }

  return result;
}

void sub_2658E2ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2658E24D8(v2);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t (*sub_2658E2B08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2658E5470(&qword_280029C38, type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel, &unk_265974000);
  sub_26596A09C();

  v4[7] = sub_2658E2754(v4);
  return sub_2658E2C58;
}

uint64_t type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel(uint64_t a1)
{
  result = qword_28002AD50;
  if (!qword_28002AD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2658E2D00()
{
  swift_getKeyPath();
  (*(*v0 + 320))();

  swift_beginAccess();
  v1 = v0[3];

  return v1;
}

uint64_t sub_2658E2D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2658E2DDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);

  return v4(v2, v3);
}

uint64_t sub_2658E2E44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (sub_26596A36C() & 1) != 0)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 328))(v8, sub_2658E2F78);
  }
}

uint64_t sub_2658E2F78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

uint64_t (*sub_2658E2FE0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2658E5470(&qword_280029C38, type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel, &unk_265974000);
  sub_26596A09C();

  v4[7] = sub_2658E2CB0(v4);
  return sub_2658E3130;
}

uint64_t sub_2658E318C()
{
  swift_getKeyPath();
  (*(*v0 + 320))();

  swift_beginAccess();
  v1 = v0[5];

  return v1;
}

uint64_t sub_2658E321C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2658E3268(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 248);

  return v4(v2, v3);
}

uint64_t sub_2658E32D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[6];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[5] == a1 && v5 == a2;
      if (v6 || (sub_26596A36C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[5] = a1;
    v2[6] = a2;
  }

  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x28223BE20](KeyPath);
  v10 = v2;
  v11 = a1;
  v12 = a2;
  (*(*v2 + 328))(v9, sub_2658E3414);
}

uint64_t sub_2658E3414()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
}

uint64_t (*sub_2658E347C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2658E5470(&qword_280029C38, type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel, &unk_265974000);
  sub_26596A09C();

  v4[7] = sub_2658E313C(v4);
  return sub_2658E35CC;
}

uint64_t sub_2658E362C()
{
  swift_getKeyPath();
  (*(*v0 + 320))();

  swift_beginAccess();
  return v0[56];
}

uint64_t sub_2658E36AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2658E3754(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[56] == v2)
  {
    v1[56] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 328))(v5, sub_2658E3850);
  }

  return result;
}

uint64_t sub_2658E3850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t (*sub_2658E38A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2658E5470(&qword_280029C38, type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel, &unk_265974000);
  sub_26596A09C();

  v4[7] = sub_2658E35D8(v4);
  return sub_2658E39F4;
}

void sub_2658E3A00(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_26596A08C();

  free(v3);
}

uint64_t sub_2658E3A94(void *a1)
{
  v2 = swift_allocObject();
  sub_2658E3AD4(a1);
  return v2;
}

uint64_t sub_2658E3AD4(void *a1)
{
  v2 = v1;
  v4 = sub_26596A03C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  sub_26596A0AC();
  *(v2 + 16) = a1;
  v8 = a1;
  v9 = [v8 identifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_26596A2AC();
    v13 = v12;
  }

  else
  {
    sub_26596A02C();
    v11 = sub_26596A01C();
    v13 = v14;
    (*(v5 + 8))(v7, v4);
  }

  *(v2 + 24) = v11;
  *(v2 + 32) = v13;
  v15 = [v8 name];
  if (v15)
  {
    v16 = v15;
    v17 = sub_26596A2AC();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  *(v2 + 40) = v17;
  *(v2 + 48) = v19;
  if ([v8 propertyForKey_])
  {
    sub_26596A32C();

    swift_unknownObjectRelease();
  }

  else
  {

    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (!*(&v24 + 1))
  {
    sub_2658E3CFC(v25);
    goto LABEL_14;
  }

  if (!swift_dynamicCast())
  {
LABEL_14:
    v20 = 1;
    goto LABEL_15;
  }

  v20 = v22[15];
LABEL_15:
  *(v2 + 56) = v20;
  return v2;
}

uint64_t sub_2658E3CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C40, &qword_265973FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2658E3EA4()
{

  v1 = OBJC_IVAR____TtCC18SettingsCellularUI33SettingsCellularButtonSpinnerCell22ButtonContentViewModel___observationRegistrar;
  v2 = sub_26596A0BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2658E3F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v61 = sub_26596A11C();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26596A15C();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C68, &qword_265974178);
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = &v43 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C70, &qword_265974180);
  v10 = MEMORY[0x28223BE20](v57);
  v53 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v43 - v12;
  v13 = a1;
  v62 = a1;
  v63 = a2;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C78, &qword_265974188);
  v15 = sub_26596A1FC();
  v16 = (*(*v69 + 240))(v15);
  v18 = v17;

  if (v18)
  {
    v62 = v16;
    v63 = v18;
    sub_2658E5324();
    v19 = sub_26596A17C();
    v21 = v20;
    v48 = v22;
    v24 = v23 & 1;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v24 = 0;
    v48 = 0;
  }

  v25 = sub_26596A1DC();
  v46 = v25;
  KeyPath = swift_getKeyPath();
  v47 = KeyPath;
  v45 = v13;
  v62 = v13;
  v63 = v14;
  v44 = v14;
  v27 = sub_26596A1FC();
  v28 = (*(*v69 + 288))(v27);

  v29 = 0.5;
  v62 = v19;
  v63 = v21;
  if (v28)
  {
    v29 = 1.0;
  }

  v30 = v48;
  v64 = v24;
  v65 = v48;
  v66 = KeyPath;
  v67 = v25;
  v68 = v29;
  v31 = v49;
  sub_26596A14C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C80, &qword_2659741C0);
  v33 = sub_2658E5110();
  v34 = v50;
  sub_26596A1CC();
  (*(v51 + 8))(v31, v52);
  sub_2658E52D0(v19, v21, v24, v30);

  v62 = v45;
  v63 = v44;
  v35 = sub_26596A1FC();
  (*(*v69 + 192))(v35);

  v62 = v32;
  v63 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v53;
  v37 = v56;
  sub_26596A1AC();

  (*(v55 + 8))(v34, v37);
  v38 = v58;
  sub_26596A10C();
  v39 = v54;
  sub_26596A0CC();
  v40 = *(v59 + 8);
  v41 = v61;
  v40(v38, v61);
  sub_2658E084C(v36);
  sub_26596A0FC();
  sub_26596A0CC();
  v40(v38, v41);
  return sub_2658E084C(v39);
}

id sub_2658E4514()
{
  v1 = OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2658E458C(void *a1)
{
  v2 = v1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  result = objc_msgSendSuper2(&v18, sel_refreshCellContentsWithSpecifier_, a1);
  if (!a1)
  {
    __break(1u);
    return result;
  }

  if ([a1 propertyForKey_])
  {
    sub_26596A32C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v13 = v16;
  v14 = v17;
  if (!*(&v17 + 1))
  {
    sub_2658E3CFC(&v13);
LABEL_10:
    v7 = sub_2658E4514();
    [v7 stopAnimating];

    v6 = 0;
    goto LABEL_11;
  }

  if (!swift_dynamicCast() || (v12 & 1) != 0)
  {
    goto LABEL_10;
  }

  v5 = sub_2658E4514();
  [v5 startAnimating];

  v6 = *&v2[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator];
LABEL_11:
  [v2 setAccessoryView_];
  v8 = OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel;
  v9 = *&v2[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel];
  if (v9)
  {
    v10 = *(*v9 + 152);

    v10(a1);
  }

  else
  {
    type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel(0);
    v11 = swift_allocObject();
    sub_2658E3AD4(a1);
    *&v2[v8] = v11;

    *(&v14 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280029C50, &qword_265973FF8);
    v15 = sub_2658E2140(&qword_280029C58, &qword_280029C50, &qword_265973FF8, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_1(&v13);
    sub_2658E487C();
    sub_26596A13C();
    MEMORY[0x2667638C0](&v13);
  }
}

void *sub_2658E481C@<X0>(void *a1@<X8>)
{
  type metadata accessor for SettingsCellularButtonSpinnerCell.ButtonContentViewModel(0);

  result = sub_26596A1EC();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_2658E487C()
{
  result = qword_28002ACC8[0];
  if (!qword_28002ACC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28002ACC8);
  }

  return result;
}

id SettingsCellularButtonSpinnerCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_26596A27C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id SettingsCellularButtonSpinnerCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel] = 0;
  *&v4[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator] = 0;
  if (a3)
  {
    v7 = sub_26596A27C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id SettingsCellularButtonSpinnerCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_26596A27C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id SettingsCellularButtonSpinnerCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel] = 0;
  *&v3[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator] = 0;
  if (a3)
  {
    v5 = sub_26596A27C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id SettingsCellularButtonSpinnerCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SettingsCellularButtonSpinnerCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell_contentModel] = 0;
  *&v1[OBJC_IVAR____TtC18SettingsCellularUI33SettingsCellularButtonSpinnerCell____lazy_storage___activityIndicator] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SettingsCellularButtonSpinnerCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsCellularButtonSpinnerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2658E4F40(uint64_t a1)
{
  result = sub_26596A0BC();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2658E5008(uint64_t *a1, int a2)
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

uint64_t sub_2658E5050(uint64_t result, int a2, int a3)
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

uint64_t sub_2658E50B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26596A0DC();
  *a1 = result;
  return result;
}

unint64_t sub_2658E5110()
{
  result = qword_280029C88;
  if (!qword_280029C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029C80, &qword_2659741C0);
    sub_2658E519C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029C88);
  }

  return result;
}

unint64_t sub_2658E519C()
{
  result = qword_280029C90;
  if (!qword_280029C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029C98, &qword_2659741C8);
    sub_2658E5254();
    sub_2658E2140(&qword_280029CB0, &qword_280029CB8, &qword_2659741D8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029C90);
  }

  return result;
}

unint64_t sub_2658E5254()
{
  result = qword_280029CA0;
  if (!qword_280029CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029CA8, &qword_2659741D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029CA0);
  }

  return result;
}

uint64_t sub_2658E52D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2658E5314(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2658E5314(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2658E5324()
{
  result = qword_280029CC0;
  if (!qword_280029CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029CC0);
  }

  return result;
}

unint64_t sub_2658E5378()
{
  result = qword_280029CC8;
  if (!qword_280029CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029C70, &qword_265974180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280029C80, &qword_2659741C0);
    sub_2658E5110();
    swift_getOpaqueTypeConformance2();
    sub_2658E5470(&qword_280029CD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280029CC8);
  }

  return result;
}

uint64_t sub_2658E5470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2658E6870(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2658EE638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2658EF5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658F3218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658F3D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A5D0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA9F88;
    v7 = 0;
    qword_28156A5D0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_28156A5D0;
    if (qword_28156A5D0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A5D0;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A5D0 = result;
  return result;
}

void sub_2658F5E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A6D0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA9FC0;
    v7 = 0;
    qword_28156A6D0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_28156A6D0;
    if (qword_28156A6D0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A6D0;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28156A6C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A6D0 = result;
  return result;
}

void sub_2658FB034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658FFC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26590090C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2659011B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265901EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265903D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCLLocationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass;
  v7 = getCLLocationManagerClass_softClass;
  if (!getCLLocationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke;
    v3[3] = &unk_279BA9F68;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265903E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreLocationLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreLocationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279BAA030;
    v5 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreLocationLibraryCore_frameworkLibrary;
    if (CoreLocationLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreLocationLibraryCore_frameworkLibrary;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

CTUIListLoadingGroup *__getCLLocationManagerClass_block_invoke(uint64_t a1)
{
  CoreLocationLibrary();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "CLLocationManager");
    return [(CTUIListLoadingGroup *)v3 initWithHostController:v4 groupSpecifier:v5, v6];
  }

  return result;
}

uint64_t PSIsDataRoamingOptionAvailable()
{
  v0 = +[PSUICoreTelephonyDataCache sharedInstance];
  v1 = [v0 isCellularDataEnabled];

  return v1;
}

uint64_t PSIsCDMARoamingOptionAvailable()
{
  v0 = _CTServerConnectionCreate();
  if (v0)
  {
    v1 = v0;
    _CTServerConnectionIsCDMAInternationalRoamingSettingAllowed();
    CFRelease(v1);
  }

  return 0;
}

uint64_t PSIsVoiceRoamingOptionAvailable()
{
  v0 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v1 = [v0 shouldShowVoiceRoamingSwitchForDefaultVoicePlan];

  return v1;
}

uint64_t PSIsDataRoamingEnabled()
{
  v0 = +[PSUICoreTelephonyDataCache sharedInstance];
  v1 = [v0 getInternationalDataAccessStatus];

  return v1;
}

uint64_t PSIsVoiceRoamingEnabled()
{
  v0 = _CTServerConnectionCreate();
  if (v0)
  {
    v1 = v0;
    _CTServerConnectionGetEnableOnlyHomeNetwork();
    CFRelease(v1);
  }

  return 1;
}

void PSSetVoiceRoamingEnabled(int a1)
{
  v1 = _CTServerConnectionCreate();
  if (v1)
  {
    v2 = v1;
    _CTServerConnectionSetEnableOnlyHomeNetwork();
    CFRelease(v2);
  }
}

uint64_t PSIsDataRoamingEnabledForService(void *a1)
{
  v1 = a1;
  v2 = +[PSUICoreTelephonyDataCache sharedInstance];
  v3 = [v2 getInternationalDataAccessStatus:v1];

  return v3;
}

void PSSetDataRoamingEnabled(uint64_t a1)
{
  CFPreferencesSetAppValue(@"DeferredSMSMessageCount", 0, @"com.apple.springboard");
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v2 = +[PSUICoreTelephonyDataCache sharedInstance];
  [v2 setInternationalDataAccessStatus:a1];
}

void PSSetDataRoamingEnabledForService(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[PSUICoreTelephonyDataCache sharedInstance];
  [v4 setInternationalDataAccessStatus:v3 status:a2];
}

void PSSetCDMARoamingEnabled(uint64_t a1)
{
  v1 = _CTServerConnectionCreate();
  if (v1)
  {
    v2 = v1;
    _CTServerConnectionSetCDMAInternationalRoaming();
    CFRelease(v2);
  }
}

uint64_t PSShouldIncludeMMSFooterNote()
{
  v0 = +[PSUICoreTelephonyCarrierBundleCache sharedInstance];
  v1 = [v0 isMMSOnWhileRoamingForActiveDataPlan];

  return (CPCanSendMMS() != 0) & (v1 ^ 1u);
}

id PSDataRoamingSpecifiers(void *a1)
{
  v1 = MEMORY[0x277D3FAD8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = a1;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DATA_ROAMING_TOGGLE" value:&stru_287733598 table:@"Cellular"];
  v6 = [v1 preferenceSpecifierNamed:v5 target:v3 set:sel_setDataRoamingEnabled_specifier_ get:sel_getDataRoamingStatus_ detail:0 cell:6 edit:0];

  [v6 setIdentifier:@"DATA_ROAMING"];
  v7 = MEMORY[0x277CCABB0];
  v8 = +[PSUICoreTelephonyDataCache sharedInstance];
  v9 = +[SettingsCellularUtils singleSIMUIServiceDescriptor];
  v10 = [v7 numberWithInt:{objc_msgSend(v8, "hideDataRoaming:", v9) ^ 1}];
  [v6 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

  v11 = [MEMORY[0x277CBEB18] arrayWithObjects:{v6, 0}];

  return v11;
}

id PSCDMARoamingSpecifiers(void *a1)
{
  v1 = MEMORY[0x277D3FAD8];
  v2 = a1;
  v3 = [v1 groupSpecifierWithName:0];
  [v3 setProperty:@"CDMA_ROAMING_GROUP" forKey:*MEMORY[0x277D3FFB8]];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CDMA_ROAMING_EXPLANATION" value:&stru_287733598 table:@"Cellular"];
  [v3 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 selectedPlanItem];
  LODWORD(v4) = [v7 isBackedByCellularPlan];

  v8 = MEMORY[0x277D3FAD8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CDMA_ROAMING_TOGGLE" value:&stru_287733598 table:@"Cellular"];
  v11 = [v8 preferenceSpecifierNamed:v10 target:v2 set:sel_setCDMARoamingEnabled_specifier_ get:sel_getCDMARoamingStatus_ detail:0 cell:6 edit:0];

  [v11 setIdentifier:@"CDMA_ROAMING"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v4 ^ 1];
  [v11 setProperty:v12 forKey:*MEMORY[0x277D3FF38]];

  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v11, 0}];

  return v13;
}

id PSRoamingSubMenuSpecifiers(void *a1)
{
  v1 = MEMORY[0x277D3FAD8];
  v2 = a1;
  v3 = [v1 emptyGroupSpecifier];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ROAMING_LINK" value:&stru_287733598 table:@"Cellular"];
  v7 = [v4 preferenceSpecifierNamed:v6 target:v2 set:0 get:sel_roamingSettingsDescription_ detail:objc_opt_class() cell:2 edit:0];

  [v7 setIdentifier:@"ROAMING_LINK"];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v7, 0}];

  return v8;
}

void sub_2659097B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLockdownModeManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_28156A6F0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __LockdownModeLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA070;
    v6 = 0;
    qword_28156A6F0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_28156A6F0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LockdownModeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "LockdownModeManager");
  }

  _MergedGlobals_63 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LockdownModeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A6F0 = result;
  return result;
}

void sub_26590A800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26590BFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCLLocationManagerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass_0;
  v7 = getCLLocationManagerClass_softClass_0;
  if (!getCLLocationManagerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke_0;
    v3[3] = &unk_279BA9F68;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26590C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26590C5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreLocationLibrary_0();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreLocationLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreLocationLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279BAA0F0;
    v5 = 0;
    CoreLocationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreLocationLibraryCore_frameworkLibrary_0;
    if (CoreLocationLibraryCore_frameworkLibrary_0)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreLocationLibraryCore_frameworkLibrary_0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

PSUISubscriptionContextMenusGroup *__getCLLocationManagerClass_block_invoke_0(uint64_t a1)
{
  CoreLocationLibrary_0();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "CLLocationManager");
    return [(PSUISubscriptionContextMenusGroup *)v3 initWithFactory:v4, v5];
  }

  return result;
}

void sub_26590ECC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265913C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2659140CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2659148BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265915898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PSAnalyticsSendEvent(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = _MergedGlobals_65;
  v9 = _MergedGlobals_65;
  if (!_MergedGlobals_65)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getAnalyticsSendEventSymbolLoc_block_invoke_1;
    v5[3] = &unk_279BA9F68;
    v5[4] = &v6;
    __getAnalyticsSendEventSymbolLoc_block_invoke_1(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v3 = dlerror();
    v4 = abort_report_np("%s", v3);
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v2(v1, MEMORY[0x277CBEC10]);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A710)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA250;
    v7 = 0;
    qword_28156A710 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_28156A710;
    if (qword_28156A710)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A710;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_65 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A710 = result;
  return result;
}

uint64_t MobileStoreUILibraryCore(uint64_t a1)
{
  if (!MobileStoreUILibraryCore_frameworkLibrary)
  {
    MobileStoreUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return MobileStoreUILibraryCore_frameworkLibrary;
}

uint64_t __MobileStoreUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileStoreUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSUUIMetricsLaunchApplicationWithIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileStoreUILibrary();
  result = dlsym(v2, "SUUIMetricsLaunchApplicationWithIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28156A718 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileStoreUILibrary()
{
  v3 = 0;
  v0 = MobileStoreUILibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void *__getSUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileStoreUILibrary();
  result = dlsym(v2, "SUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28156A720 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_265918E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26591D3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

Class __getRemoteUIControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_28156A740)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __RemoteUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA368;
    v6 = 0;
    qword_28156A740 = _sl_dlopen();
    v2 = v4[0];
    if (qword_28156A740)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RemoteUIController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "RemoteUIController");
  }

  _MergedGlobals_67 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RemoteUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A740 = result;
  return result;
}

uint64_t MobileStoreUILibraryCore_0(uint64_t a1)
{
  if (!MobileStoreUILibraryCore_frameworkLibrary_0)
  {
    MobileStoreUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return MobileStoreUILibraryCore_frameworkLibrary_0;
}

uint64_t __MobileStoreUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  MobileStoreUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getSUUIItemOfferButtonClass_block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = MobileStoreUILibraryCore_0(&v7);
  v3 = v7;
  if (v2)
  {
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v7);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("SUUIItemOfferButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSUUIItemOfferButtonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v5 = abort_report_np("Unable to find class %s", "SUUIItemOfferButton");
    return +[(PSUIDeviceEthernetState *)v5];
  }

  return result;
}

Class __getAPGuardClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_28002AE48)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AppProtectionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA3D0;
    v6 = 0;
    qword_28002AE48 = _sl_dlopen();
    v2 = v4[0];
    if (qword_28002AE48)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("APGuard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "APGuard");
  }

  _MergedGlobals_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppProtectionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28002AE48 = result;
  return result;
}

void sub_2659230E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getCLLocationManagerClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass_1;
  v7 = getCLLocationManagerClass_softClass_1;
  if (!getCLLocationManagerClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke_1;
    v3[3] = &unk_279BA9F68;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26592895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26592AC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  objc_destroyWeak((v26 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CoreLocationLibrary_1();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreLocationLibrary_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreLocationLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279BAA5E0;
    v5 = 0;
    CoreLocationLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreLocationLibraryCore_frameworkLibrary_1;
    if (CoreLocationLibraryCore_frameworkLibrary_1)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreLocationLibraryCore_frameworkLibrary_1;
}

uint64_t __CoreLocationLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_1 = result;
  return result;
}

PSUIPlanPendingTransferDetailController *__getCLLocationManagerClass_block_invoke_1(uint64_t a1)
{
  CoreLocationLibrary_1();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "CLLocationManager");
    return [(PSUIPlanPendingTransferDetailController *)v3 init];
  }

  return result;
}

void sub_26592EA54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_265936744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCTCarrierSpaceClientClass_block_invoke(uint64_t a1)
{
  CTCarrierSpaceLibrary();
  result = objc_getClass("CTCarrierSpaceClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCTCarrierSpaceClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "CTCarrierSpaceClient");
    return CTCarrierSpaceLibrary();
  }

  return result;
}

uint64_t CTCarrierSpaceLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CTCarrierSpaceLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CTCarrierSpaceLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279BAA748;
    v5 = 0;
    CTCarrierSpaceLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = CTCarrierSpaceLibraryCore_frameworkLibrary;
    if (CTCarrierSpaceLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CTCarrierSpaceLibraryCore_frameworkLibrary;
}

uint64_t __CTCarrierSpaceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CTCarrierSpaceLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCTCarrierSpaceConnectionAccountIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CTCarrierSpaceLibrary();
  result = dlsym(v2, "kCTCarrierSpaceConnectionAccountIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTCarrierSpaceConnectionAccountIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26593A44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26593B730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26593BA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getCLLocationManagerClass_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_28156A790)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA790;
    v6 = 0;
    qword_28156A790 = _sl_dlopen();
    v2 = v4[0];
    if (qword_28156A790)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "CLLocationManager");
  }

  _MergedGlobals_72 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A790 = result;
  return result;
}

void PSAnalyticsSendEvent_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = _MergedGlobals_1_3;
  v12 = _MergedGlobals_1_3;
  if (!_MergedGlobals_1_3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getAnalyticsSendEventSymbolLoc_block_invoke_2;
    v8[3] = &unk_279BA9F68;
    v8[4] = &v9;
    __getAnalyticsSendEventSymbolLoc_block_invoke_2(v8);
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v5)
  {
    v6 = dlerror();
    v7 = abort_report_np("%s", v6);
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v7);
  }

  v5(v3, v4);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A620)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA818;
    v7 = 0;
    qword_28156A620 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_28156A620;
    if (qword_28156A620)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A620;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A620 = result;
  return result;
}

void sub_26593E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26593E76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26593F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCTCarrierSpaceClientClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_28156A630)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CTCarrierSpaceLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA858;
    v6 = 0;
    qword_28156A630 = _sl_dlopen();
    v2 = v4[0];
    if (qword_28156A630)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CTCarrierSpaceClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "CTCarrierSpaceClient");
  }

  _MergedGlobals_1_4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CTCarrierSpaceLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A630 = result;
  return result;
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A640)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke_3;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAA870;
    v7 = 0;
    qword_28156A640 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_28156A640;
    if (qword_28156A640)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A640;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_28156A638 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A640 = result;
  return result;
}

Class __getRemoteUIControllerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_28156A650)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __RemoteUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BAA888;
    v6 = 0;
    qword_28156A650 = _sl_dlopen();
    v2 = v4[0];
    if (qword_28156A650)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RemoteUIController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "RemoteUIController");
  }

  qword_28156A648 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RemoteUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A650 = result;
  return result;
}

void sub_265940970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v24 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265942014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265945398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26595271C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventSymbolLoc_block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!qword_28156A660)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreAnalyticsLibraryCore_block_invoke_4;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BAAB10;
    v7 = 0;
    qword_28156A660 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_28156A660;
    if (qword_28156A660)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_28156A660;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1_5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke_4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_28156A660 = result;
  return result;
}

id PSUIGetPlanSubscriptionStatus(unsigned int a1)
{
  if (a1 > 9)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_279BAABB0[a1];
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:v1 value:&stru_287733598 table:@"Cellular"];
  }

  return v3;
}

id PSUIFormatDataUsage(double a1, double a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D4D830] loggerWithCategory:@"PlanManagerCache"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "DataUsage: data: %@ bytes left for %@ seconds", buf, 0x16u);
  }

  v7 = [MEMORY[0x277D4D878] usageSizeString:a1];
  if (a2 <= 86400.0)
  {
    if (a2 <= 3600.0)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (a2 <= 0.0)
      {
        v17 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT";
        goto LABEL_14;
      }
    }

    else
    {
      v8 = (a2 / 3600.0);
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v8 >= 2)
      {
        v11 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT_FOR_%@_HOURS";
        goto LABEL_9;
      }
    }

    v17 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT_FOR_ONE_HOUR";
  }

  else
  {
    v8 = (a2 / 86400.0);
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v8 >= 2)
    {
      v11 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT_FOR_%@_DAYS";
LABEL_9:
      v12 = [v10 localizedStringForKey:v11 value:&stru_287733598 table:@"Cellular"];
      v13 = MEMORY[0x277CCABB8];
      v14 = [MEMORY[0x277CCABB0] numberWithInt:v8];
      v15 = [v13 localizedStringFromNumber:v14 numberStyle:0];
      v16 = [v9 stringWithFormat:v12, v7, v15];

      goto LABEL_15;
    }

    v17 = @"CELLULAR_PLAN_DATA_USAGE_%@_LEFT_FOR_ONE_DAY";
  }

LABEL_14:
  v12 = [v10 localizedStringForKey:v17 value:&stru_287733598 table:@"Cellular"];
  v16 = [v9 stringWithFormat:v12, v7];
LABEL_15:

  return v16;
}

id PSUIFormatPlanStatusForPlan(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 plan];

  if (v2)
  {
    v3 = [v1 plan];
    v4 = [v3 dataUsage];

    v5 = [v1 plan];
    if ([v5 status] || !v4)
    {
    }

    else
    {
      v6 = [v4 count];

      if (v6)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v7 = v4;
        v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
        v9 = 0.0;
        v10 = 0.0;
        v11 = 0.0;
        if (v8)
        {
          v12 = v8;
          v13 = *v35;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v7);
              }

              v15 = *(*(&v34 + 1) + 8 * i);
              [v15 dataCapacity];
              v11 = v11 + v16;
              [v15 dataUsed];
              v10 = v10 + v17;
            }

            v12 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v12);
        }

        if (v11 - v10 >= 0.0)
        {
          v9 = v11 - v10;
        }

        v18 = [v1 plan];
        [v18 timestamp];
        if (v19 > 0.0)
        {
          v20 = [v1 plan];
          [v20 billingEndDate];
          if (v21 <= 0.0)
          {
            v27 = PSUIFormatDataUsage(v9, 0.0);
          }

          else
          {
            v22 = [v1 plan];
            [v22 billingEndDate];
            v24 = v23;
            v25 = [v1 plan];
            [v25 timestamp];
            v27 = PSUIFormatDataUsage(v9, v24 - v26);
          }

          goto LABEL_21;
        }

        v28 = PSUIFormatDataUsage(v9, 0.0);
LABEL_20:
        v27 = v28;
LABEL_21:

        goto LABEL_22;
      }
    }

    v18 = [v1 plan];
    v28 = PSUIGetPlanSubscriptionStatus([v18 status]);
    goto LABEL_20;
  }

  v27 = 0;
LABEL_22:
  if ([v1 type] == 2 || objc_msgSend(v1, "type") == 3)
  {
    v29 = v27;
  }

  else
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"CELLULAR_PLAN_STATUS_SIM_CARD_AND_STATUS" value:&stru_287733598 table:@"Cellular"];
    v29 = [v30 stringWithFormat:v32, v27];
  }

  return v29;
}

void sub_265956284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26595676C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265956ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26595A5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getCLLocationManagerClass_2(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getCLLocationManagerClass_softClass_2;
  v9 = getCLLocationManagerClass_softClass_2;
  if (!getCLLocationManagerClass_softClass_2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getCLLocationManagerClass_block_invoke_3;
    v5[3] = &unk_279BA9F68;
    v5[4] = &v6;
    __getCLLocationManagerClass_block_invoke_3(v5, a2);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_26595B570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationManagerClass_block_invoke_3(uint64_t a1, uint64_t a2)
{
  CoreLocationLibrary_2();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "CLLocationManager");
    return CoreLocationLibrary_2();
  }

  return result;
}

uint64_t CoreLocationLibrary_2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreLocationLibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279BAAC88;
    v5 = 0;
    CoreLocationLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreLocationLibraryCore_frameworkLibrary_2;
    if (CoreLocationLibraryCore_frameworkLibrary_2)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreLocationLibraryCore_frameworkLibrary_2;
}

uint64_t __CoreLocationLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke_2(uint64_t a1)
{
  v2 = CoreLocationLibrary_2();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26596230C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265963F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}