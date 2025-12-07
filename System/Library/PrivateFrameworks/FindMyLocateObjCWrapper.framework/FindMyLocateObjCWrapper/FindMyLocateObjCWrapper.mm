uint64_t sub_24AE9C8E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AE9C8F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AE9C908()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE9C960()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00F0, &qword_24AEC8948);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24AE9C990()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE9C9E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AE9CA18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE9CA50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AE9CB64()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AE9CBB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AE9CC10()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AE9CC60()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE9CCB0(unint64_t a1)
{
  v2 = sub_24AEC5CFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v6 = sub_24AEC625C();
  __swift_project_value_buffer(v6, qword_280E21578);
  v7 = sub_24AEC623C();
  v8 = sub_24AEC645C();
  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_6;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v18 = v10;
  *v9 = 141558275;
  *(v9 + 4) = 1752392040;
  *(v9 + 12) = 2081;
  if (a1 < 5)
  {
    v11 = v10;
    (*(v3 + 104))(v5, **(&unk_278FFFD40 + a1), v2);
    sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038], MEMORY[0x277D09040]);
    v12 = sub_24AEC663C();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_24AEBFE20(v12, v14, &v18);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_24AE9B000, v7, v8, "validFriends: %{private,mask.hash}s not supported", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C234F80](v11, -1, -1);
    MEMORY[0x24C234F80](v9, -1, -1);
LABEL_6:

    return MEMORY[0x277D84F90];
  }

  result = sub_24AEC65DC();
  __break(1u);
  return result;
}

uint64_t sub_24AE9CF80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AE9CFE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24AE9D100()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t FriendshipExpiration.wrapped.getter()
{
  v1 = sub_24AEC5D7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  result = 0;
  if (v5 != *MEMORY[0x277D09110])
  {
    if (v5 == *MEMORY[0x277D09118])
    {
      return 1;
    }

    else if (v5 == *MEMORY[0x277D09108])
    {
      return 2;
    }

    else
    {
      result = sub_24AEC65DC();
      __break(1u);
    }
  }

  return result;
}

uint64_t FMLFriend.fmlFriend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD0, &qword_24AEC8560);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v31 - v4;
  v5 = sub_24AEC5D1C();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v31 - v10;
  v11 = sub_24AEC5CFC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24AEC5F4C();
  v15 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v16 = [v1 handle];
  v17 = [v16 identifier];
  sub_24AEC62FC();

  sub_24AEA07E0(MEMORY[0x277D84F90]);
  sub_24AEC5F3C();

  v18 = [v1 handleType];
  if (v18 >= 5)
  {
    goto LABEL_9;
  }

  (*(v12 + 104))(v14, **(&unk_278FFFCB8 + v18), v11);
  v19 = [v1 expiry];
  if (v19)
  {
    v20 = v38;
    v21 = v19;
    sub_24AEC5CCC();

    v22 = 0;
  }

  else
  {
    v22 = 1;
    v20 = v38;
  }

  v23 = sub_24AEC5CDC();
  v24 = *(*(v23 - 8) + 56);
  v25 = 1;
  v24(v20, v22, 1, v23);
  v26 = [v2 createdAt];
  v27 = v32;
  if (v26)
  {
    v28 = v26;
    sub_24AEC5CCC();

    v25 = 0;
  }

  v24(v27, v25, 1, v23);
  v29 = [v2 origin];
  if (v29 >= 3)
  {
LABEL_9:
    result = sub_24AEC65DC();
    __break(1u);
  }

  else
  {
    (*(v33 + 104))(v35, **(&unk_278FFFCE0 + v29), v34);
    (*(v15 + 56))(v36, 1, 1, v31);
    return sub_24AEC5EBC();
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

id FMLFriend.init(_:)(uint64_t a1)
{
  v2 = sub_24AEC5D1C();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v47 - v9;
  v10 = sub_24AEC5CFC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = sub_24AEC5F4C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEC5ECC();
  sub_24AEC5EFC();
  (*(v18 + 8))(v20, v17);
  v21 = a1;
  v22 = sub_24AEC62EC();

  v23 = [objc_opt_self() handleWithIdentifier_];

  sub_24AEC5E9C();
  (*(v11 + 16))(v14, v16, v10);
  v24 = (*(v11 + 88))(v14, v10);
  v25 = 0;
  if (v24 != *MEMORY[0x277D09028])
  {
    if (v24 == *MEMORY[0x277D09030])
    {
      v25 = 1;
    }

    else if (v24 == *MEMORY[0x277D09018])
    {
      v25 = 2;
    }

    else if (v24 == *MEMORY[0x277D09020])
    {
      v25 = 3;
    }

    else
    {
      if (v24 != *MEMORY[0x277D09010])
      {
        goto LABEL_22;
      }

      v25 = 4;
    }
  }

  v48 = v25;
  v50 = v23;
  (*(v11 + 8))(v16, v10);
  v26 = v49;
  sub_24AEC5EDC();
  v27 = sub_24AEC5CDC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = 0;
  if (v29(v26, 1, v27) != 1)
  {
    v30 = sub_24AEC5CAC();
    (*(v28 + 8))(v26, v27);
  }

  v31 = v51;
  sub_24AEC5EAC();
  v32 = v29(v31, 1, v27);
  v33 = v53;
  if (v32 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_24AEC5CAC();
    (*(v28 + 8))(v31, v27);
  }

  v35 = v54;
  sub_24AEC5E7C();
  v36 = v52;
  v37 = v55;
  (*(v35 + 16))(v52, v33, v55);
  v38 = (*(v35 + 88))(v36, v37);
  if (v38 == *MEMORY[0x277D09048])
  {
    v39 = 0;
LABEL_21:
    v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    (*(v35 + 8))(v33, v37);
    v41 = sub_24AEC5E8C() & 1;
    v42 = v40;
    v43 = v50;
    v44 = [v42 initWithHandle:v50 handleType:v48 createDate:v30 expiry:v34 origin:v39 originatedFromTheSameClient:v41];

    v45 = sub_24AEC5EEC();
    (*(*(v45 - 8) + 8))(v21, v45);
    return v44;
  }

  if (v38 == *MEMORY[0x277D09050])
  {
    v39 = 1;
    goto LABEL_21;
  }

  if (v38 == *MEMORY[0x277D09060])
  {
    v39 = 2;
    goto LABEL_21;
  }

LABEL_22:
  result = sub_24AEC65DC();
  __break(1u);
  return result;
}

uint64_t sub_24AEA035C(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0000, type metadata accessor for FMLSessionError, &unk_24AEC8710);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24AEA03C8(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0000, type metadata accessor for FMLSessionError, &unk_24AEC8710);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24AEA0438(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24AEA04C4(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24AEA0530(uint64_t a1)
{
  v2 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24AEA059C(void *a1, uint64_t a2)
{
  v4 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24AEA0650(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24AEA06CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AEC66AC();
  sub_24AEC62BC();
  return sub_24AEC66BC();
}

void *sub_24AEA072C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24AEA0748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AEA0968(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_24AEA07E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0040, &qword_24AEC8868);
    v3 = sub_24AEC662C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24AEBF788(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_24AEA0968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AEA0B30()
{
  result = qword_27EFC0028;
  if (!qword_27EFC0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0028);
  }

  return result;
}

void sub_24AEA0C50(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_24AEA0CA0(uint64_t a1)
{
  sub_24AEC620C();
  v2 = sub_24AEC62EC();

  sub_24AEC61DC();
  v3 = sub_24AEC62EC();

  sub_24AEC61FC();
  v4 = sub_24AEC62EC();

  sub_24AEC621C();
  v5 = sub_24AEC62EC();

  sub_24AEC61CC();
  v6 = sub_24AEC62EC();

  sub_24AEC61BC();
  v7 = sub_24AEC62EC();

  sub_24AEC61EC();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_24AEC636C();

  v10 = [v8 initWithLocality:v2 administrativeArea:v3 country:v4 stateCode:v5 streetAddress:v6 streetName:v7 formattedAddressLines:v9];

  v11 = sub_24AEC622C();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_24AEA0E90(uint64_t a1)
{
  v2 = sub_24AEC5D2C();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v51 - v5;
  v6 = sub_24AEC60EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0068, &qword_24AEC88C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - v11;
  v13 = sub_24AEC622C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  sub_24AEC615C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24AEA147C(v12);
    v20 = 0;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    sub_24AEA14E4();
    (*(v14 + 16))(v17, v19, v13);
    v21 = sub_24AEA0CA0(v17);
    (*(v14 + 8))(v19, v13);
    v20 = v21;
  }

  (*(v7 + 104))(v9, *MEMORY[0x277D094B0], v6);
  sub_24AEC612C();
  v23 = v22;
  (*(v7 + 8))(v9, v6);
  sub_24AEC616C();
  v25 = v24;
  sub_24AEC618C();
  v27 = v26;
  sub_24AEC613C();
  v29 = v28;
  v30 = sub_24AEC60DC();
  v31 = v55;
  if (v30 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  v32 = v30;
  if (v30 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_24AEC611C();
  v34 = v33;
  sub_24AEC614C();
  v35 = sub_24AEC636C();

  sub_24AEC617C();
  v37 = v36;
  sub_24AEC619C();
  v39 = v38;
  sub_24AEC610C();
  v41 = v40;
  sub_24AEC60FC();
  v42 = v52;
  v43 = v53;
  v44 = v54;
  (*(v53 + 16))(v52, v31, v54);
  v45 = (*(v43 + 88))(v42, v44);
  if (v45 != *MEMORY[0x277D09088])
  {
    if (v45 == *MEMORY[0x277D09078])
    {
      v46 = 1;
      goto LABEL_14;
    }

    if (v45 == *MEMORY[0x277D09080])
    {
      v46 = 2;
      goto LABEL_14;
    }

    if (v45 == *MEMORY[0x277D09090])
    {
      v46 = 3;
      goto LABEL_14;
    }

LABEL_20:
    result = sub_24AEC65DC();
    __break(1u);
    return result;
  }

  v46 = 0;
LABEL_14:
  (*(v43 + 8))(v31, v44);
  if (v23)
  {
    v47 = sub_24AEC62EC();
  }

  else
  {
    v47 = 0;
  }

  v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAddress:v20 altitude:v32 longitude:v35 speed:v46 floorLevel:v47 horizontalAccuracy:v25 labels:v27 latitude:v29 timestamp:v34 verticalAccuracy:v37 locationType:v39 coarseAddressLabel:v41];

  v49 = sub_24AEC61AC();
  (*(*(v49 - 8) + 8))(a1, v49);
  return v48;
}

uint64_t sub_24AEA147C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0068, &qword_24AEC88C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AEA14E4()
{
  result = qword_27EFC0070;
  if (!qword_27EFC0070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFC0070);
  }

  return result;
}

id sub_24AEA1530(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_24AEC5E1C();
  v3 = sub_24AEC62EC();

  sub_24AEC5E0C();
  v4 = sub_24AEC62EC();

  sub_24AEC5DEC();
  v5 = sub_24AEC62EC();

  v6 = sub_24AEC5E4C();
  v7 = sub_24AEC5DFC();
  v8 = sub_24AEC5E2C();
  LOBYTE(v12) = sub_24AEC5E3C() & 1;
  v9 = [v2 initWithIdentifier:v3 deviceName:v4 idsDeviceId:v5 isActive:v6 & 1 isThisDevice:v7 & 1 isCompanion:v8 & 1 isAutoMeCapable:v12];

  v10 = sub_24AEC5E5C();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_24AEA1664()
{
  v0 = sub_24AEC625C();
  __swift_allocate_value_buffer(v0, qword_280E21560);
  __swift_project_value_buffer(v0, qword_280E21560);
  return sub_24AEC624C();
}

uint64_t sub_24AEA16DC()
{
  v0 = sub_24AEC625C();
  __swift_allocate_value_buffer(v0, qword_280E21578);
  v1 = __swift_project_value_buffer(v0, qword_280E21578);
  if (qword_280E21540 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E21560);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_24AEA18A0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_24AEA1A04@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AEA523C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AE9C8E8(v4, v5);
}

uint64_t sub_24AEA1AA4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AEA51D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24AE9C8E8(v3, v4);
  return sub_24AE9C8F8(v8, v9);
}

void sub_24AEA1CCC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24AEA1E20@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AEA520C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AE9C8E8(v4, v5);
}

uint64_t sub_24AEA1EC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AEA51D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24AE9C8E8(v3, v4);
  return sub_24AE9C8F8(v8, v9);
}

uint64_t sub_24AEA20E4(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_24AEA214C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_24AEA2298(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_24AEA22FC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24AEA51A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AE9C8E8(v4, v5);
}

uint64_t sub_24AEA239C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AEA516C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24AE9C8E8(v3, v4);
  return sub_24AE9C8F8(v8, v9);
}

uint64_t sub_24AEA24C4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24AEA2534, 0, 0);
}

uint64_t sub_24AEA2534()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_24AEA2624;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEA2624()
{

  return MEMORY[0x2822009F8](sub_24AEA273C, 0, 0);
}

uint64_t sub_24AEA273C()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

id ObjCBootstrap.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCBootstrap.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v23 - v2;
  v3 = sub_24AEC646C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24AEC628C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24AEC647C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationRefreshTaskLock];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendsUpdateTaskLock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session] = 0;
  v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_isInitialized] = 0;
  v14 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations] = MEMORY[0x277D84F90];
  v24 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue;
  v23 = sub_24AEA2C00();
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v5);
  sub_24AEC627C();
  v27 = v14;
  sub_24AEA536C(&qword_280E21518, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00C8, &qword_24AEC88F8);
  sub_24AEA53B4(&qword_280E21520, &qword_27EFC00C8, &qword_24AEC88F8);
  sub_24AEC64FC();
  *&v0[v24] = sub_24AEC64AC();
  v15 = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followings] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers] = v15;
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_pendingOffers] = v15;
  *&v0[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles] = v15;
  v16 = type metadata accessor for ObjCBootstrap();
  v26.receiver = v0;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, sel_init);
  v18 = sub_24AEC63EC();
  v19 = v25;
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v17;
  v21 = v17;
  sub_24AEA2EF0(0, 0, v19, &unk_24AEC8908, v20);

  return v21;
}

unint64_t sub_24AEA2C00()
{
  result = qword_280E21510;
  if (!qword_280E21510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E21510);
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

uint64_t sub_24AEA2CB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AEA2D48;

  return sub_24AEA3204();
}

uint64_t sub_24AEA2D48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AEA2E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AEA2D48;

  return sub_24AEA2CB8();
}

uint64_t sub_24AEA2EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AEA5414(a3, v25 - v10);
  v12 = sub_24AEC63EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AEA5484(v11, &qword_27EFC0090, &qword_24AEC88F0);
  }

  else
  {
    sub_24AEC63DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AEC63BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AEC632C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24AEA3204()
{
  v1[17] = v0;
  v1[18] = swift_getObjectType();
  v2 = sub_24AEC60BC();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_24AEC60CC();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v4 = sub_24AEC5D1C();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEA33A0, 0, 0);
}

uint64_t sub_24AEA33A0()
{
  v53 = v0;
  v50 = objc_opt_self();
  v1 = [v50 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_24AEC62FC();
    v5 = v4;

    v0[8] = v3;
    v0[9] = v5;
    v0[10] = 0xD000000000000013;
    v0[11] = 0x800000024AEC7960;
    sub_24AEA50EC();
    if (sub_24AEC64EC())
    {

LABEL_5:
      v7 = MEMORY[0x277D09050];
      goto LABEL_7;
    }

    v0[12] = v3;
    v0[13] = v5;
    v0[14] = 0xD000000000000012;
    v0[15] = 0x800000024AEC7980;
    v6 = sub_24AEC64EC();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = MEMORY[0x277D09060];
LABEL_7:
  v8 = v0 + 2;
  v51 = *(v0[26] + 104);
  v51(v0[29], *v7, v0[25]);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[25];
  v11 = v0[26];
  v13 = sub_24AEC625C();
  v0[30] = __swift_project_value_buffer(v13, qword_280E21578);
  (*(v11 + 16))(v10, v9, v12);
  v14 = sub_24AEC623C();
  v15 = sub_24AEC645C();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[28];
  v19 = v0[25];
  v18 = v0[26];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v20 = 136315138;
    sub_24AEA536C(&qword_280E21550, MEMORY[0x277D09068], MEMORY[0x277D09070]);
    v21 = sub_24AEC663C();
    v23 = v22;
    v24 = v19;
    v25 = *(v18 + 8);
    v25(v17, v24);
    v26 = sub_24AEBFE20(v21, v23, &v52);
    v8 = v0 + 2;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Init Session with origin: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x24C234F80](v49, -1, -1);
    MEMORY[0x24C234F80](v20, -1, -1);
  }

  else
  {

    v27 = v19;
    v25 = *(v18 + 8);
    v25(v17, v27);
  }

  v0[31] = v25;
  v29 = v0[17];
  v28 = v0[18];
  sub_24AEC609C();
  v30 = sub_24AEC5FAC();
  v0[32] = v30;
  v31 = *&v29[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v32 = swift_allocObject();
  v0[33] = v32;
  v32[2] = v29;
  v32[3] = v30;
  v32[4] = v28;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_24AEA45C4;
  *(v33 + 24) = v32;
  v0[6] = sub_24AEA45D0;
  v0[7] = v33;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AEA421C;
  v0[5] = &block_descriptor;
  v34 = _Block_copy(v8);
  v35 = v29;

  dispatch_sync(v31, v34);
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
    return MEMORY[0x28215FB98](v36);
  }

  v37 = v0[26];
  v38 = v0[27];
  v39 = v0[25];
  v51(v38, *MEMORY[0x277D09050], v39);
  v40 = sub_24AEC5D0C();
  v0[34] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v38, v39);
  if (v40)
  {
    v41 = sub_24AEC623C();
    v42 = sub_24AEC645C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_24AE9B000, v41, v42, "Subscribing to background proactive locations", v43, 2u);
      MEMORY[0x24C234F80](v43, -1, -1);
    }

    v44 = [v50 mainBundle];
    v45 = [v44 bundleIdentifier];

    if (v45)
    {
      sub_24AEC62FC();
    }

    (*(v0[20] + 104))(v0[21], *MEMORY[0x277D094A8], v0[19]);
    sub_24AEC60AC();
    v48 = swift_task_alloc();
    v0[35] = v48;
    *v48 = v0;
    v48[1] = sub_24AEA3AD0;
    v36 = v0[24];

    return MEMORY[0x28215FB98](v36);
  }

  v25(v0[29], v0[25]);

  v46 = v0[1];

  return v46();
}

uint64_t sub_24AEA3AD0()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  *(*v1 + 288) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24AEA3D98;
  }

  else
  {
    v5 = sub_24AEA3C40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AEA3C40(uint64_t a1)
{
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[31];
  v6 = v1[29];
  v7 = v1[25];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24AE9B000, v2, v3, "Finished subscribing to background proactive locations", v8, 2u);
    MEMORY[0x24C234F80](v8, -1, -1);
  }

  else
  {
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_24AEA3D98()
{
  v22 = v0;
  v1 = v0[36];
  v2 = v1;
  v3 = sub_24AEC623C();
  v4 = sub_24AEC644C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[36];
    v19 = v0[29];
    v20 = v0[31];
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v0[16] = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00F8, &qword_24AEC8950);
    v10 = sub_24AEC630C();
    v12 = sub_24AEBFE20(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AE9B000, v3, v4, "Background proactive locations subscription error: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C234F80](v8, -1, -1);
    MEMORY[0x24C234F80](v7, -1, -1);

    v20(v19, v6);
  }

  else
  {
    v13 = v0[36];
    v14 = v0[31];
    v15 = v0[29];
    v16 = v0[25];

    v14(v15, v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AEA3FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v8 = sub_24AEC625C();
  __swift_project_value_buffer(v8, qword_280E21578);
  v9 = sub_24AEC623C();
  v10 = sub_24AEC645C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24AE9B000, v9, v10, "FindMyLocate.Session async init is done.", v11, 2u);
    MEMORY[0x24C234F80](v11, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session) = a2;

  v12 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations;
  v13 = *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations);
  v14 = *(v13 + 16);
  if (v14)
  {
    v21 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations;
    v22 = a1;
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);

    do
    {
      v16(v7, v18, v4);
      sub_24AEC63CC();
      (*(v15 - 8))(v7, v4);
      v18 += v19;
      --v14;
    }

    while (v14);

    v12 = v21;
    a1 = v22;
  }

  *(a1 + v12) = MEMORY[0x277D84F90];

  *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_isInitialized) = 1;
  return result;
}

id ObjCBootstrap.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCBootstrap();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AEA4610(uint64_t a1, char *a2, uint64_t a3)
{
  v21[0] = a3;
  v5 = sub_24AEC626C();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AEC628C();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  v21[1] = *&a2[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  (*(v12 + 16))(v21 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21[0];
  aBlock[4] = sub_24AEA52D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AEA5684;
  aBlock[3] = &block_descriptor_77;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  sub_24AEC627C();
  v25 = MEMORY[0x277D84F90];
  sub_24AEA536C(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEA53B4(&qword_280E21528, &qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v24 + 8))(v7, v5);
  (*(v22 + 8))(v10, v23);
}

uint64_t sub_24AEA49BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  if (*(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_isInitialized))
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v8 = sub_24AEC625C();
    __swift_project_value_buffer(v8, qword_280E21578);
    v9 = sub_24AEC623C();
    v10 = sub_24AEC645C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AE9B000, v9, v10, "Init is done. Resume all.", v11, 2u);
      MEMORY[0x24C234F80](v11, -1, -1);
    }

    return sub_24AEC63CC();
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v13 = sub_24AEC625C();
    __swift_project_value_buffer(v13, qword_280E21578);
    v14 = sub_24AEC623C();
    v15 = sub_24AEC643C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24AE9B000, v14, v15, "Init in progress; appending continuation.", v16, 2u);
      MEMORY[0x24C234F80](v16, -1, -1);
    }

    (*(v5 + 16))(v7, a2, v4);
    v17 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations;
    v18 = *(a1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_initContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v17) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_24AEA4EB0(0, v18[2] + 1, 1, v18);
      *(a1 + v17) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_24AEA4EB0((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    result = (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v4);
    *(a1 + v17) = v18;
  }

  return result;
}

uint64_t sub_24AEA4CC0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AEA4DB8;

  return v6(a1);
}

uint64_t sub_24AEA4DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_24AEA4EB0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0118, &qword_24AEC8970);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t sub_24AEA50EC()
{
  result = qword_280E21530;
  if (!qword_280E21530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E21530);
  }

  return result;
}

uint64_t sub_24AEA516C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_24AEA51D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_24AEA52D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0100, &qword_24AEC8958) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24AEA49BC(v2, v3);
}

uint64_t sub_24AEA536C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AEA53B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24AEA5414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AEA5484(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AEA54E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AEA5670;

  return sub_24AEA4CC0(a1, v4);
}

uint64_t sub_24AEA559C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AEA2D48;

  return sub_24AEA4CC0(a1, v4);
}

uint64_t sub_24AEA5684(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t ObjCBootstrap.sendFriendshipOffer(to:from:end:isFromGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 272) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 80) = swift_getObjectType();
  v6 = sub_24AEC5DDC();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_24AEC5D7C();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = sub_24AEC5F4C();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD0, &qword_24AEC8560);
  *(v5 + 176) = swift_task_alloc();
  v9 = sub_24AEC5DBC();
  *(v5 + 184) = v9;
  *(v5 + 192) = *(v9 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEA5918, 0, 0);
}

uint64_t sub_24AEA5918()
{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *(v1 + 16) = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_24AEA5A08;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEA5A08()
{

  return MEMORY[0x2822009F8](sub_24AEA5B20, 0, 0);
}

uint64_t sub_24AEA5B20()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 240) = v1;

  if (v1)
  {
    v2 = *(v0 + 48);
    if (v2 >> 62)
    {
      v3 = sub_24AEC65AC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (!v3)
    {
LABEL_22:
      *(v0 + 248) = v4;
      v26 = *(v0 + 56);
      if (v26)
      {
        v27 = [v26 identifier];
        sub_24AEC62FC();

        sub_24AEA07E0(MEMORY[0x277D84F90]);
        sub_24AEC5F3C();
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = *(v0 + 64);
      (*(*(v0 + 152) + 56))(*(v0 + 176), v28, 1, *(v0 + 144));
      if (v29 >= 3)
      {
        return sub_24AEC65DC();
      }

      (*(*(v0 + 128) + 104))(*(v0 + 136), **(&unk_278FFFD28 + v29), *(v0 + 120));
      v30 = swift_task_alloc();
      *(v0 + 256) = v30;
      *v30 = v0;
      v30[1] = sub_24AEA6194;
      v31 = *(v0 + 216);
      v32 = *(v0 + 176);
      v33 = *(v0 + 136);
      v34 = *(v0 + 272);

      return MEMORY[0x28215FAD0](v31, v4, v32, v33, v34);
    }

    v35 = MEMORY[0x277D84F90];
    sub_24AEC03C8(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v35;
      v5 = *(v0 + 152);
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v3; ++i)
        {
          MEMORY[0x24C234830](i, *(v0 + 48));
          v7 = [swift_unknownObjectRetain() identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          swift_unknownObjectRelease_n();
          v9 = *(v35 + 16);
          v8 = *(v35 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_24AEC03C8((v8 > 1), v9 + 1, 1);
          }

          v10 = *(v0 + 168);
          v11 = *(v0 + 144);
          *(v35 + 16) = v9 + 1;
          (*(v5 + 32))(v35 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v10, v11);
        }
      }

      else
      {
        v18 = (*(v0 + 48) + 32);
        do
        {
          v19 = v3;
          v20 = *v18;
          v21 = [v20 identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          v23 = *(v35 + 16);
          v22 = *(v35 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_24AEC03C8((v22 > 1), v23 + 1, 1);
          }

          v24 = *(v0 + 160);
          v25 = *(v0 + 144);
          *(v35 + 16) = v23 + 1;
          (*(v5 + 32))(v35 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v24, v25);
          ++v18;
          v3 = v19 - 1;
        }

        while (v19 != 1);
      }

      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_280E21548 != -1)
  {
LABEL_32:
    swift_once();
  }

  v12 = sub_24AEC625C();
  __swift_project_value_buffer(v12, qword_280E21578);
  v13 = sub_24AEC623C();
  v14 = sub_24AEC644C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24AE9B000, v13, v14, "Missing FindMyLocate.Session!", v15, 2u);
    MEMORY[0x24C234F80](v15, -1, -1);
  }

  type metadata accessor for FMLSessionError(0);
  *(v0 + 24) = 5;
  sub_24AEC2A3C(MEMORY[0x277D84F90]);
  sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
  sub_24AEC5C8C();
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24AEA6194()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = v2[22];
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];

    (*(v5 + 8))(v4, v6);
    sub_24AEA5484(v3, &qword_27EFBFFD0, &qword_24AEC8560);
    v7 = sub_24AEA6B68;
  }

  else
  {
    v8 = v2[22];
    (*(v2[16] + 8))(v2[17], v2[15]);
    sub_24AEA5484(v8, &qword_27EFBFFD0, &qword_24AEC8560);
    v7 = sub_24AEA6328;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AEA6328()
{
  v75 = v0;
  if (qword_280E21548 != -1)
  {
LABEL_27:
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v5 = sub_24AEC625C();
  __swift_project_value_buffer(v5, qword_280E21578);
  v66 = *(v4 + 16);
  v66(v2, v1, v3);
  v6 = sub_24AEC623C();
  v7 = sub_24AEC645C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v73 = v0;
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v74[0] = v13;
    *v12 = 136315138;
    sub_24AEC59BC(&qword_27EFC0128, MEMORY[0x277D091B0], MEMORY[0x277D091B8]);
    v14 = sub_24AEC663C();
    v16 = v15;
    v67 = *(v10 + 8);
    v67(v9, v11);
    v17 = sub_24AEBFE20(v14, v16, v74);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_24AE9B000, v6, v7, "sendFriendshipOffer result: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C234F80](v13, -1, -1);
    MEMORY[0x24C234F80](v12, -1, -1);
  }

  else
  {

    v67 = *(v10 + 8);
    v67(v9, v11);
  }

  v18 = v0[12];
  v19 = sub_24AEC5DAC();
  v20 = v19 + 64;
  v21 = -1;
  v22 = -1 << *(v19 + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & *(v19 + 64);
  v24 = (63 - v22) >> 6;
  v68 = *MEMORY[0x277D091C0];
  v70 = v19;

  v0 = 0;
  while (v23)
  {
    v25 = v0;
LABEL_14:
    v27 = v73[13];
    v26 = v73[14];
    v28 = v73[11];
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    (*(v18 + 16))(v26, *(v70 + 56) + *(v18 + 72) * (v29 | (v25 << 6)), v28);
    (*(v18 + 104))(v27, v68, v28);
    v30 = sub_24AEC5DCC();
    v31 = *(v18 + 8);
    v31(v27, v28);
    v31(v26, v28);
    if ((v30 & 1) == 0)
    {
      v32 = v73[27];
      v33 = v73[25];
      v34 = v73[23];

      v66(v33, v32, v34);
      v35 = sub_24AEC623C();
      v36 = sub_24AEC644C();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v73[25];
      v39 = v73[23];
      if (v37)
      {
        v40 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v74[0] = v71;
        *v40 = 136315138;
        sub_24AEC5DAC();
        sub_24AEC59BC(&qword_27EFC0120, MEMORY[0x277D092D8], MEMORY[0x277D092E0]);
        v41 = sub_24AEC629C();
        v43 = v42;

        v67(v38, v39);
        v44 = sub_24AEBFE20(v41, v43, v74);
        v45 = v67;

        *(v40 + 4) = v44;
        _os_log_impl(&dword_24AE9B000, v35, v36, "sendFriendshipOffer failed %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x24C234F80](v71, -1, -1);
        MEMORY[0x24C234F80](v40, -1, -1);
      }

      else
      {

        v45 = v67;
        v67(v38, v39);
      }

      v64 = v73[27];
      v65 = v73[23];
      type metadata accessor for FMLSessionError(0);
      v73[5] = 7;
      sub_24AEC2A3C(MEMORY[0x277D84F90]);
      sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
      sub_24AEC5C8C();
      swift_willThrow();

      v45(v64, v65);

      v62 = v73[1];
      goto LABEL_21;
    }
  }

  while (1)
  {
    v25 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v25 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v25);
    v0 = (v0 + 1);
    if (v23)
    {
      v0 = v25;
      goto LABEL_14;
    }
  }

  v46 = v73;

  v47 = sub_24AEC623C();
  v48 = sub_24AEC645C();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v73[31];
  v51 = v73[27];
  v52 = v73[23];
  if (v49)
  {
    v53 = v73[18];
    v72 = v73[23];
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v74[0] = v55;
    *v54 = 136315138;
    v56 = MEMORY[0x24C234690](v50, v53);
    v69 = v51;
    v58 = v57;

    v59 = sub_24AEBFE20(v56, v58, v74);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_24AE9B000, v47, v48, "Successfully sent friendship offer to %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v46 = v73;
    MEMORY[0x24C234F80](v55, -1, -1);
    MEMORY[0x24C234F80](v54, -1, -1);

    v60 = v69;
    v61 = v72;
  }

  else
  {

    v60 = v51;
    v61 = v52;
  }

  v67(v60, v61);

  v62 = v46[1];
LABEL_21:

  return v62();
}

uint64_t sub_24AEA6B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEA6DF0(uint64_t a1, void *a2, uint64_t a3, char a4, void *aBlock, void *a6)
{
  v6[2] = a2;
  v6[3] = a6;
  v6[4] = _Block_copy(aBlock);
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  v11 = sub_24AEC637C();
  v6[5] = v11;
  v12 = a2;
  a6;
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_24AEA6F00;

  return ObjCBootstrap.sendFriendshipOffer(to:from:end:isFromGroup:)(v11, a2, a3, a4);
}

uint64_t sub_24AEA6F00()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_24AEC5C9C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t ObjCBootstrap.sendFriendshipInvite(to:from:isFromGroup:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 232) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = swift_getObjectType();
  v5 = sub_24AEC5DDC();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD0, &qword_24AEC8560);
  *(v4 + 112) = swift_task_alloc();
  v6 = sub_24AEC5DBC();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v7 = sub_24AEC5F4C();
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEA72B4, 0, 0);
}

uint64_t sub_24AEA72B4()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *(v1 + 16) = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_24AEA73A4;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEA73A4()
{

  return MEMORY[0x2822009F8](sub_24AEA74BC, 0, 0);
}

uint64_t sub_24AEA74BC()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 208) = v1;

  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = [*(v0 + 48) identifier];
    sub_24AEC62FC();

    sub_24AEA07E0(MEMORY[0x277D84F90]);
    sub_24AEC5F3C();
    if (v2)
    {
      v4 = [*(v0 + 56) identifier];
      sub_24AEC62FC();

      sub_24AEA07E0(MEMORY[0x277D84F90]);
      sub_24AEC5F3C();
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    (*(*(v0 + 168) + 56))(*(v0 + 112), v5, 1, *(v0 + 160));
    v12 = swift_task_alloc();
    *(v0 + 216) = v12;
    *v12 = v0;
    v12[1] = sub_24AEA7864;
    v13 = *(v0 + 184);
    v14 = *(v0 + 152);
    v15 = *(v0 + 112);
    v16 = *(v0 + 232);

    return MEMORY[0x28215FAE8](v14, v13, v15, v16);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v6 = sub_24AEC625C();
    __swift_project_value_buffer(v6, qword_280E21578);
    v7 = sub_24AEC623C();
    v8 = sub_24AEC644C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AE9B000, v7, v8, "Missing FindMyLocate.Session!", v9, 2u);
      MEMORY[0x24C234F80](v9, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    *(v0 + 24) = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24AEA7864()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  sub_24AEA5484(*(v2 + 112), &qword_27EFBFFD0, &qword_24AEC8560);
  if (v0)
  {
    v3 = sub_24AEA82A8;
  }

  else
  {
    v3 = sub_24AEA79A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEA79A8()
{
  v87 = v0;
  if (qword_280E21548 != -1)
  {
LABEL_27:
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = sub_24AEC625C();
  __swift_project_value_buffer(v5, qword_280E21578);
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = sub_24AEC623C();
  v8 = sub_24AEC645C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v84 = v0;
  v76 = v6;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v86[0] = v14;
    *v13 = 136315138;
    sub_24AEC59BC(&qword_27EFC0128, MEMORY[0x277D091B0], MEMORY[0x277D091B8]);
    v15 = sub_24AEC663C();
    v17 = v16;
    v77 = *(v11 + 8);
    v77(v10, v12);
    v18 = sub_24AEBFE20(v15, v17, v86);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24AE9B000, v7, v8, "sendFriendshipInvite result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C234F80](v14, -1, -1);
    MEMORY[0x24C234F80](v13, -1, -1);
  }

  else
  {

    v77 = *(v11 + 8);
    v77(v10, v12);
  }

  v19 = v0[11];
  v20 = sub_24AEC5DAC();
  v21 = v20 + 64;
  v22 = -1;
  v23 = -1 << *(v20 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v20 + 64);
  v25 = (63 - v23) >> 6;
  v80 = *MEMORY[0x277D091C0];
  v82 = v20;

  v0 = 0;
  while (v24)
  {
    v26 = v0;
LABEL_14:
    v28 = v84[12];
    v27 = v84[13];
    v29 = v84[10];
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    (*(v19 + 16))(v27, *(v82 + 56) + *(v19 + 72) * (v30 | (v26 << 6)), v29);
    (*(v19 + 104))(v28, v80, v29);
    v31 = sub_24AEC5DCC();
    v32 = *(v19 + 8);
    v32(v28, v29);
    v32(v27, v29);
    if ((v31 & 1) == 0)
    {
      v33 = v84[19];
      v34 = v84[17];
      v35 = v84[15];

      v76(v34, v33, v35);
      v36 = sub_24AEC623C();
      v37 = sub_24AEC644C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v84[17];
        v83 = v84[15];
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v86[0] = v40;
        *v39 = 136315138;
        sub_24AEC5DAC();
        v41 = v84;
        sub_24AEC59BC(&qword_27EFC0120, MEMORY[0x277D092D8], MEMORY[0x277D092E0]);
        v42 = sub_24AEC629C();
        v44 = v43;

        v77(v38, v83);
        v45 = sub_24AEBFE20(v42, v44, v86);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_24AE9B000, v36, v37, "sendFriendshipInvitefailed %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C234F80](v40, -1, -1);
        MEMORY[0x24C234F80](v39, -1, -1);
      }

      else
      {
        v70 = v84[17];
        v71 = v84[15];

        v41 = v84;
        v77(v70, v71);
      }

      v85 = v41[23];
      v73 = v41[20];
      v72 = v41[21];
      v74 = v41[19];
      v75 = v41[15];
      type metadata accessor for FMLSessionError(0);
      v41[5] = 7;
      sub_24AEC2A3C(MEMORY[0x277D84F90]);
      sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
      sub_24AEC5C8C();
      swift_willThrow();

      v77(v74, v75);
      (*(v72 + 8))(v85, v73);

      v68 = v41[1];
      goto LABEL_21;
    }
  }

  while (1)
  {
    v26 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v26 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v26);
    v0 = (v0 + 1);
    if (v24)
    {
      v0 = v26;
      goto LABEL_14;
    }
  }

  v46 = v84;
  v48 = v84[22];
  v47 = v84[23];
  v50 = v84[20];
  v49 = v84[21];

  (*(v49 + 16))(v48, v47, v50);
  v51 = sub_24AEC623C();
  v52 = sub_24AEC645C();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v84[22];
  v55 = v84[23];
  v56 = v84[20];
  v57 = v84[21];
  v58 = v84[19];
  v59 = v84[15];
  if (v53)
  {
    v81 = v84[15];
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v86[0] = v61;
    *v60 = 136315138;
    sub_24AEC59BC(&qword_27EFC0130, MEMORY[0x277D092D8], MEMORY[0x277D092F0]);
    v78 = v58;
    v79 = v55;
    v62 = sub_24AEC663C();
    v64 = v63;
    v65 = *(v57 + 8);
    v65(v54, v56);
    v66 = sub_24AEBFE20(v62, v64, v86);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_24AE9B000, v51, v52, "Successfully sent friendship invite to %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x24C234F80](v61, -1, -1);
    v46 = v84;
    MEMORY[0x24C234F80](v60, -1, -1);

    v77(v78, v81);
    v65(v79, v56);
  }

  else
  {

    v67 = *(v57 + 8);
    v67(v54, v56);
    v77(v58, v59);
    v67(v55, v56);
  }

  v68 = v46[1];
LABEL_21:

  return v68();
}

uint64_t sub_24AEA82A8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AEA8534(void *a1, void *a2, char a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_24AEA8618;

  return ObjCBootstrap.sendFriendshipInvite(to:from:isFromGroup:)(v10, a2, a3);
}

uint64_t sub_24AEA8618()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 40);
  if (v2)
  {
    v10 = sub_24AEC5C9C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t ObjCBootstrap.stopSharingLocation(with:from:isFromGroup:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 240) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = swift_getObjectType();
  v5 = sub_24AEC5DDC();
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_24AEC5F4C();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD0, &qword_24AEC8560);
  *(v4 + 144) = swift_task_alloc();
  v7 = sub_24AEC5DBC();
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEA89C8, 0, 0);
}

uint64_t sub_24AEA89C8()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *(v1 + 16) = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_24AEA8AB8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEA8AB8()
{

  return MEMORY[0x2822009F8](sub_24AEA8BD0, 0, 0);
}

uint64_t sub_24AEA8BD0()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 208) = v1;

  if (v1)
  {
    v2 = *(v0 + 48);
    if (v2 >> 62)
    {
      v3 = sub_24AEC65AC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (!v3)
    {
LABEL_22:
      *(v0 + 216) = v4;
      v26 = *(v0 + 56);
      if (v26)
      {
        v27 = [v26 identifier];
        sub_24AEC62FC();

        sub_24AEA07E0(MEMORY[0x277D84F90]);
        sub_24AEC5F3C();
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      (*(*(v0 + 120) + 56))(*(v0 + 144), v28, 1, *(v0 + 112));
      v29 = swift_task_alloc();
      *(v0 + 224) = v29;
      *v29 = v0;
      v29[1] = sub_24AEA9198;
      v30 = *(v0 + 184);
      v31 = *(v0 + 144);
      v32 = *(v0 + 240);

      return MEMORY[0x28215FA38](v30, v4, v31, v32);
    }

    v33 = MEMORY[0x277D84F90];
    sub_24AEC03C8(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v33;
      v5 = *(v0 + 120);
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v3; ++i)
        {
          MEMORY[0x24C234830](i, *(v0 + 48));
          v7 = [swift_unknownObjectRetain() identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          swift_unknownObjectRelease_n();
          v9 = *(v33 + 16);
          v8 = *(v33 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_24AEC03C8((v8 > 1), v9 + 1, 1);
          }

          v10 = *(v0 + 136);
          v11 = *(v0 + 112);
          *(v33 + 16) = v9 + 1;
          (*(v5 + 32))(v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v10, v11);
        }
      }

      else
      {
        v18 = (*(v0 + 48) + 32);
        do
        {
          v19 = v3;
          v20 = *v18;
          v21 = [v20 identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          v23 = *(v33 + 16);
          v22 = *(v33 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_24AEC03C8((v22 > 1), v23 + 1, 1);
          }

          v24 = *(v0 + 128);
          v25 = *(v0 + 112);
          *(v33 + 16) = v23 + 1;
          (*(v5 + 32))(v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v24, v25);
          ++v18;
          v3 = v19 - 1;
        }

        while (v19 != 1);
      }

      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (qword_280E21548 != -1)
  {
LABEL_30:
    swift_once();
  }

  v12 = sub_24AEC625C();
  __swift_project_value_buffer(v12, qword_280E21578);
  v13 = sub_24AEC623C();
  v14 = sub_24AEC644C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24AE9B000, v13, v14, "Missing FindMyLocate.Session!", v15, 2u);
    MEMORY[0x24C234F80](v15, -1, -1);
  }

  type metadata accessor for FMLSessionError(0);
  *(v0 + 24) = 5;
  sub_24AEC2A3C(MEMORY[0x277D84F90]);
  sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
  sub_24AEC5C8C();
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24AEA9198()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  sub_24AEA5484(*(v2 + 144), &qword_27EFBFFD0, &qword_24AEC8560);
  if (v0)
  {

    v3 = sub_24AEA9B14;
  }

  else
  {
    v3 = sub_24AEA92E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEA92E8()
{
  v77 = v0;
  if (qword_280E21548 != -1)
  {
LABEL_27:
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v5 = sub_24AEC625C();
  __swift_project_value_buffer(v5, qword_280E21578);
  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = sub_24AEC623C();
  v8 = sub_24AEC645C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v75 = v0;
  v69 = v6;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v76[0] = v14;
    *v13 = 136315138;
    sub_24AEC59BC(&qword_27EFC0128, MEMORY[0x277D091B0], MEMORY[0x277D091B8]);
    v15 = sub_24AEC663C();
    v17 = v16;
    v70 = *(v11 + 8);
    v70(v10, v12);
    v18 = sub_24AEBFE20(v15, v17, v76);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24AE9B000, v7, v8, "stopSharingLocation result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C234F80](v14, -1, -1);
    MEMORY[0x24C234F80](v13, -1, -1);
  }

  else
  {

    v70 = *(v11 + 8);
    v70(v10, v12);
  }

  v19 = v0[11];
  v20 = sub_24AEC5DAC();
  v21 = v20 + 64;
  v22 = -1;
  v23 = -1 << *(v20 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v20 + 64);
  v25 = (63 - v23) >> 6;
  v71 = *MEMORY[0x277D091C0];
  v73 = v20;

  v0 = 0;
  while (v24)
  {
    v26 = v0;
LABEL_14:
    v28 = v75[12];
    v27 = v75[13];
    v29 = v75[10];
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    (*(v19 + 16))(v27, *(v73 + 56) + *(v19 + 72) * (v30 | (v26 << 6)), v29);
    (*(v19 + 104))(v28, v71, v29);
    v31 = sub_24AEC5DCC();
    v32 = *(v19 + 8);
    v32(v28, v29);
    v32(v27, v29);
    if ((v31 & 1) == 0)
    {
      v33 = v75;
      v34 = v75[23];
      v35 = v75[21];
      v36 = v75[19];

      v69(v35, v34, v36);
      v37 = sub_24AEC623C();
      v38 = sub_24AEC644C();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v75[21];
      v41 = v75[19];
      if (v39)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v76[0] = v43;
        *v42 = 136315138;
        sub_24AEC5DAC();
        sub_24AEC59BC(&qword_27EFC0120, MEMORY[0x277D092D8], MEMORY[0x277D092E0]);
        v44 = sub_24AEC629C();
        v46 = v45;

        v47 = v70;
        v70(v40, v41);
        v48 = sub_24AEBFE20(v44, v46, v76);
        v33 = v75;

        *(v42 + 4) = v48;
        _os_log_impl(&dword_24AE9B000, v37, v38, "stopSharingLocationFailed %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C234F80](v43, -1, -1);
        MEMORY[0x24C234F80](v42, -1, -1);
      }

      else
      {

        v47 = v70;
        v70(v40, v41);
      }

      v67 = v33[23];
      v68 = v33[19];
      type metadata accessor for FMLSessionError(0);
      v33[5] = 7;
      sub_24AEC2A3C(MEMORY[0x277D84F90]);
      sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
      sub_24AEC5C8C();
      swift_willThrow();

      v47(v67, v68);

      v65 = v33[1];
      goto LABEL_21;
    }
  }

  while (1)
  {
    v26 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v26 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v26);
    v0 = (v0 + 1);
    if (v24)
    {
      v0 = v26;
      goto LABEL_14;
    }
  }

  v49 = v75;

  v50 = sub_24AEC623C();
  v51 = sub_24AEC645C();

  v52 = os_log_type_enabled(v50, v51);
  v53 = v75[27];
  v54 = v75[23];
  v55 = v75[19];
  if (v52)
  {
    v56 = v75[14];
    v74 = v75[19];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v76[0] = v58;
    *v57 = 136315138;
    v59 = MEMORY[0x24C234690](v53, v56);
    v72 = v54;
    v61 = v60;

    v49 = v75;
    v62 = sub_24AEBFE20(v59, v61, v76);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_24AE9B000, v50, v51, "Successfully stop location share with %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x24C234F80](v58, -1, -1);
    MEMORY[0x24C234F80](v57, -1, -1);

    v63 = v72;
    v64 = v74;
  }

  else
  {

    v63 = v54;
    v64 = v55;
  }

  v70(v63, v64);

  v65 = v49[1];
LABEL_21:

  return v65();
}

uint64_t sub_24AEA9B14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEA9D80(uint64_t a1, void *a2, char a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  v9 = sub_24AEC637C();
  v5[5] = v9;
  v10 = a2;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_24AEC5BCC;

  return ObjCBootstrap.stopSharingLocation(with:from:isFromGroup:)(v9, a2, a3);
}

uint64_t ObjCBootstrap.startRefreshingLocation(for:priority:isFromGroup:reverseGeocode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_24AEA5670;

  return sub_24AEC2B80(a1, v5);
}

unint64_t sub_24AEA9F40(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = sub_24AEC5F1C();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24AEC656C();
    v5 = objc_opt_self();
    v6 = v2 + 40;
    do
    {

      v7 = sub_24AEC62EC();

      v8 = [v5 handleWithIdentifier_];

      sub_24AEC654C();
      sub_24AEC657C();
      sub_24AEC658C();
      sub_24AEC655C();
      v6 += 16;
      --v3;
    }

    while (v3);

    v9 = v21;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v21 = v4;
  if (v9 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24AEC65AC())
  {
    v11 = v19;
    swift_bridgeObjectRetain_n();
    if (!i)
    {
      break;
    }

    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C234830](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v20 = v13;
      MEMORY[0x28223BE20](v13);
      v18[2] = &v20;
      if (sub_24AEBD9C0(sub_24AEC5A04, v18, v11))
      {
        sub_24AEC654C();
        sub_24AEC657C();
        v11 = v19;
        sub_24AEC658C();
        sub_24AEC655C();
      }

      else
      {
      }

      ++v12;
      if (v15 == i)
      {
        v16 = v21;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_21:

  swift_bridgeObjectRelease_n();
  return v16;
}

BOOL sub_24AEAA1B4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_24AEC5EEC();
    ++v2;
    sub_24AEC59BC(&qword_27EFC01B8, MEMORY[0x277D092C0], MEMORY[0x277D092C8]);
  }

  while ((sub_24AEC62DC() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_24AEAA2C0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_24AEC5EEC();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24AEC040C(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24AEC040C((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_24AEAA590(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v27 = a5;
  v28 = a3;
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v30 = a1;
  v15 = *a1;
  if (v15)
  {
    sub_24AEC641C();
  }

  v16 = sub_24AEC63EC();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  (*(v8 + 16))(v11, a2, v7);
  v17 = *(v8 + 80);
  v26[1] = v15;
  v18 = (v17 + 32) & ~v17;
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v8 + 32))(v21 + v18, v11, v7);
  v22 = v29;
  *(v21 + v19) = v28;
  *(v21 + v20) = v22;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  v23 = v22;
  v24 = sub_24AEA2EF0(0, 0, v14, &unk_24AEC8D38, v21);

  *v30 = v24;
  return result;
}

uint64_t sub_24AEAA808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = sub_24AEC626C();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = sub_24AEC628C();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = sub_24AEC5F4C();
  v6[31] = v9;
  v6[32] = *(v9 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v10 = sub_24AEC61AC();
  v6[37] = v10;
  v6[38] = *(v10 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v11 = sub_24AEC5D8C();
  v6[42] = v11;
  v6[43] = *(v11 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0228, &qword_24AEC8D40);
  v6[46] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0230, &qword_24AEC8D48);
  v6[47] = v12;
  v6[48] = *(v12 - 8);
  v6[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEAAB24, 0, 0);
}

uint64_t sub_24AEAAB24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28);
  sub_24AEC63FC();
  v1 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback;
  *(v0 + 400) = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue;
  *(v0 + 408) = v1;
  v2 = MEMORY[0x277D09128];
  *(v0 + 424) = *MEMORY[0x277D09130];
  *(v0 + 428) = *v2;
  v3 = swift_task_alloc();
  *(v0 + 416) = v3;
  *v3 = v0;
  v3[1] = sub_24AEAAC28;
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_24AEAAC28()
{

  return MEMORY[0x2822009F8](sub_24AEAAD24, 0, 0);
}

uint64_t sub_24AEAAD24()
{
  v161 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(*(v0 + 360), v1, v2);
    if (sub_24AEC642C())
    {
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v4 = sub_24AEC625C();
      __swift_project_value_buffer(v4, qword_280E21578);
      v5 = sub_24AEC623C();
      v6 = sub_24AEC645C();
      v7 = os_log_type_enabled(v5, v6);
      v9 = *(v0 + 384);
      v8 = *(v0 + 392);
      v10 = *(v0 + 376);
      v11 = *(v0 + 360);
      v13 = *(v0 + 336);
      v12 = *(v0 + 344);
      if (v7)
      {
        aBlock = *(v0 + 392);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v160 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_24AEBFE20(0xD000000000000041, 0x800000024AEC7EC0, &v160);
        _os_log_impl(&dword_24AE9B000, v5, v6, "%{public}s has been canceled", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x24C234F80](v15, -1, -1);
        MEMORY[0x24C234F80](v14, -1, -1);

        (*(v12 + 8))(v11, v13);
        (*(v9 + 8))(aBlock, v10);
      }

      else
      {

        (*(v12 + 8))(v11, v13);
        (*(v9 + 8))(v8, v10);
      }

      goto LABEL_14;
    }

    v16 = *(v0 + 424);
    v17 = *(v0 + 352);
    v18 = *(v0 + 336);
    v19 = *(v0 + 344);
    (*(v19 + 16))(v17, *(v0 + 360), v18);
    v20 = (*(v19 + 88))(v17, v18);
    if (v20 != v16)
    {
      if (v20 != *(v0 + 428))
      {
        if (qword_280E21548 != -1)
        {
          swift_once();
        }

        v101 = sub_24AEC625C();
        __swift_project_value_buffer(v101, qword_280E21578);
        v102 = sub_24AEC623C();
        v103 = sub_24AEC644C();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&dword_24AE9B000, v102, v103, "Unknown location update case", v104, 2u);
          MEMORY[0x24C234F80](v104, -1, -1);
        }

        v106 = *(v0 + 352);
        v105 = *(v0 + 360);
        v107 = *(v0 + 336);
        v108 = *(v0 + 344);

        v109 = *(v108 + 8);
        v109(v105, v107);
        v109(v106, v107);
        goto LABEL_54;
      }

      v59 = (v0 + 16);
      v60 = *(v0 + 352);
      v61 = *(v0 + 272);
      v63 = *(v0 + 248);
      v62 = *(v0 + 256);
      v64 = *(v0 + 184);
      (*(*(v0 + 344) + 96))(v60, *(v0 + 336));
      (*(v62 + 32))(v61, v60, v63);
      v30 = sub_24AEA9F40(v61, v64);
      if (qword_280E21548 == -1)
      {
LABEL_19:
        v66 = *(v0 + 264);
        v65 = *(v0 + 272);
        v68 = *(v0 + 248);
        v67 = *(v0 + 256);
        v69 = sub_24AEC625C();
        __swift_project_value_buffer(v69, qword_280E21578);
        (*(v67 + 16))(v66, v65, v68);
        v70 = sub_24AEC623C();
        v71 = sub_24AEC645C();
        v72 = os_log_type_enabled(v70, v71);
        v74 = *(v0 + 256);
        v73 = *(v0 + 264);
        v75 = *(v0 + 248);
        if (v72)
        {
          v76 = swift_slowAlloc();
          aBlocka = swift_slowAlloc();
          v160 = aBlocka;
          *v76 = 141558275;
          *(v76 + 4) = 1752392040;
          *(v76 + 12) = 2081;
          v77 = v59;
          v78 = sub_24AEC5EFC();
          v154 = v71;
          v80 = v79;
          v150 = *(v74 + 8);
          v150(v73, v75);
          v81 = v78;
          v59 = v77;
          v82 = sub_24AEBFE20(v81, v80, &v160);

          *(v76 + 14) = v82;
          _os_log_impl(&dword_24AE9B000, v70, v154, "locationStreams received unavailable location for handle: %{private,mask.hash}s", v76, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(aBlocka);
          MEMORY[0x24C234F80](aBlocka, -1, -1);
          MEMORY[0x24C234F80](v76, -1, -1);
        }

        else
        {

          v150 = *(v74 + 8);
          v150(v73, v75);
        }

        v111 = *(v0 + 232);
        v110 = *(v0 + 240);
        v112 = *(v0 + 216);
        v113 = *(v0 + 200);
        v114 = *(v0 + 208);
        v115 = *(v0 + 192);
        aBlockb = *(v0 + 224);
        v116 = swift_allocObject();
        *(v116 + 16) = v30;
        *(v116 + 24) = v115;
        *(v0 + 48) = sub_24AEC59A8;
        *(v0 + 56) = v116;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_24AEA5684;
        *(v0 + 40) = &block_descriptor_418;
        v117 = _Block_copy(v59);
        v118 = v115;

        sub_24AEC627C();
        *(v0 + 160) = MEMORY[0x277D84F90];
        sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
        sub_24AEC3EB4();
        sub_24AEC64FC();
        MEMORY[0x24C2347A0](0, v110, v112, v117);
        _Block_release(v117);
        (*(v114 + 8))(v112, v113);
        (*(v111 + 8))(v110, aBlockb);

        if (v30 >> 62)
        {
          v119 = sub_24AEC65AC();
          v123 = v119;
          if (v119)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v123 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v123)
          {
LABEL_40:
            if (v123 < 1)
            {
              __break(1u);
              return MEMORY[0x2822003E8](v119, v120, v121, v122);
            }

            swift_beginAccess();
            for (i = 0; i != v123; ++i)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v125 = MEMORY[0x24C234830](i, v30);
              }

              else
              {
                v125 = *(v30 + 8 * i + 32);
              }

              v126 = v125;
              v127 = *(v0 + 192) + *(v0 + 408);
              v128 = *v127;
              if (*v127)
              {
                v129 = *(v127 + 8);

                v128(0, v126);
                sub_24AE9C8F8(v128, v129);
              }
            }
          }
        }

        v135 = *(v0 + 360);
        v136 = *(v0 + 336);
        v137 = *(v0 + 344);
        v138 = *(v0 + 272);
        v139 = *(v0 + 248);

        v150(v138, v139);
        (*(v137 + 8))(v135, v136);
LABEL_54:
        v140 = swift_task_alloc();
        *(v0 + 416) = v140;
        *v140 = v0;
        v140[1] = sub_24AEAAC28;
        v119 = *(v0 + 368);
        v122 = *(v0 + 376);
        v120 = 0;
        v121 = 0;

        return MEMORY[0x2822003E8](v119, v120, v121, v122);
      }

LABEL_51:
      swift_once();
      goto LABEL_19;
    }

    v21 = *(v0 + 352);
    v22 = *(v0 + 328);
    v152 = *(v0 + 320);
    v23 = *(v0 + 296);
    v24 = *(v0 + 304);
    v25 = *(v0 + 288);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 184);
    (*(*(v0 + 344) + 96))(v21, *(v0 + 336));
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0238, &qword_24AEC8D50) + 48);
    (*(v24 + 32))(v22, v21, v23);
    (*(v27 + 32))(v25, v21 + v29, v26);
    v30 = sub_24AEA9F40(v25, v28);
    sub_24AEC52B4(0, &qword_27EFC01E0, off_278FFF8F0);
    v148 = *(v24 + 16);
    v148(v152, v22, v23);
    v153 = sub_24AEA0E90(v152);
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 328);
    v32 = *(v0 + 312);
    v33 = *(v0 + 296);
    v145 = *(v0 + 288);
    v34 = *(v0 + 280);
    v36 = *(v0 + 248);
    v35 = *(v0 + 256);
    v37 = sub_24AEC625C();
    __swift_project_value_buffer(v37, qword_280E21578);
    v148(v32, v31, v33);
    (*(v35 + 16))(v34, v145, v36);
    v38 = sub_24AEC623C();
    v39 = sub_24AEC645C();
    v40 = os_log_type_enabled(v38, v39);
    v42 = *(v0 + 304);
    v41 = *(v0 + 312);
    v43 = *(v0 + 296);
    v44 = *(v0 + 280);
    v46 = *(v0 + 248);
    v45 = *(v0 + 256);
    if (v40)
    {
      v146 = v39;
      v47 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v160 = v149;
      *v47 = 136315394;
      sub_24AEC59BC(&qword_27EFC0240, MEMORY[0x277D094C0], MEMORY[0x277D094C8]);
      v141 = v46;
      v48 = sub_24AEC663C();
      log = v38;
      v50 = v49;
      v143 = *(v42 + 8);
      v143(v41, v43);
      v51 = sub_24AEBFE20(v48, v50, &v160);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = sub_24AEC5EFC();
      v54 = v53;
      v55 = v141;
      v142 = *(v45 + 8);
      v142(v44, v55);
      v56 = sub_24AEBFE20(v52, v54, &v160);

      *(v47 + 14) = v56;
      _os_log_impl(&dword_24AE9B000, log, v146, "locationStreams received location %s for handle: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C234F80](v149, -1, -1);
      MEMORY[0x24C234F80](v47, -1, -1);
    }

    else
    {

      v142 = *(v45 + 8);
      v142(v44, v46);
      v143 = *(v42 + 8);
      v143(v41, v43);
    }

    v83 = *(v0 + 240);
    v84 = *(v0 + 216);
    v147 = *(v0 + 232);
    v151 = *(v0 + 224);
    v85 = *(v0 + 200);
    v86 = *(v0 + 208);
    v87 = *(v0 + 192);
    v88 = swift_allocObject();
    v88[2] = v30;
    v88[3] = v87;
    v88[4] = v153;
    *(v0 + 96) = sub_24AEC59B0;
    *(v0 + 104) = v88;
    *(v0 + 64) = MEMORY[0x277D85DD0];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_24AEA5684;
    *(v0 + 88) = &block_descriptor_424;
    v89 = _Block_copy((v0 + 64));

    v90 = v87;
    v91 = v153;
    sub_24AEC627C();
    *(v0 + 168) = MEMORY[0x277D84F90];
    sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
    sub_24AEC3EB4();
    sub_24AEC64FC();
    MEMORY[0x24C2347A0](0, v83, v84, v89);
    _Block_release(v89);
    v92 = *(v86 + 8);
    v59 = (v86 + 8);
    v92(v84, v85);
    (*(v147 + 8))(v83, v151);

    if (v30 >> 62)
    {
      v93 = sub_24AEC65AC();
      if (v93)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v93 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v93)
      {
LABEL_24:
        if (v93 >= 1)
        {
          swift_beginAccess();
          for (j = 0; j != v93; ++j)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v95 = MEMORY[0x24C234830](j, v30);
            }

            else
            {
              v95 = *(v30 + 8 * j + 32);
            }

            v96 = v95;
            v97 = *(v0 + 192) + *(v0 + 408);
            v98 = *v97;
            if (*v97)
            {
              v99 = *(v97 + 8);
              v100 = v91;
              sub_24AEA5664(v98, v99);
              v98(v91, v96);
              sub_24AE9C8F8(v98, v99);
            }
          }

          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_51;
      }
    }

LABEL_49:
    v130 = *(v0 + 344);
    v155 = *(v0 + 336);
    aBlockc = *(v0 + 360);
    v131 = *(v0 + 328);
    v132 = *(v0 + 296);
    v133 = *(v0 + 288);
    v134 = *(v0 + 248);

    v142(v133, v134);
    v143(v131, v132);
    (*(v130 + 8))(aBlockc, v155);
    goto LABEL_54;
  }

  (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
LABEL_14:

  v57 = *(v0 + 8);

  return v57();
}

void sub_24AEABCE8(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AEC65AC())
  {
    v7 = 0;
    v8 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles;
    v34 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C234830](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v11 = *(a1 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      swift_beginAccess();
      v14 = *(a2 + v8);
      if ((v14 & 0xC000000000000001) != 0)
      {
        if (v14 < 0)
        {
          v15 = *(a2 + v8);
        }

        else
        {
          v15 = v14 & 0xFFFFFFFFFFFFFF8;
        }

        v16 = v12;
        v17 = a3;
        v18 = sub_24AEC65AC();
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }

        *(a2 + v8) = sub_24AEC07B0(v15, v18 + 1);
      }

      else
      {
        v19 = v12;
        v20 = a3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(a2 + v8);
      *(a2 + v8) = 0x8000000000000000;
      v23 = sub_24AEC09FC(v12);
      v25 = v22[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_29;
      }

      v29 = v24;
      if (v22[3] < v28)
      {
        sub_24AEC0B5C(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_24AEC09FC(v12);
        if ((v29 & 1) != (v30 & 1))
        {
          sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
          sub_24AEC666C();
          __break(1u);
          return;
        }

LABEL_23:
        if (v29)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v33 = v23;
      sub_24AEC19A8();
      v23 = v33;
      if (v29)
      {
LABEL_4:
        v9 = v22[7];
        v10 = *(v9 + 8 * v23);
        *(v9 + 8 * v23) = a3;

        goto LABEL_5;
      }

LABEL_24:
      v22[(v23 >> 6) + 8] |= 1 << v23;
      *(v22[6] + 8 * v23) = v12;
      *(v22[7] + 8 * v23) = a3;
      v31 = v22[2];
      v27 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v27)
      {
        goto LABEL_31;
      }

      v22[2] = v32;
LABEL_5:
      *(a2 + v8) = v22;
      swift_endAccess();

      ++v7;
      if (v13 == v34)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }
}

uint64_t sub_24AEABF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01D8, &qword_24AEC8CD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24AEC5EEC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24AEA5484(a1, &qword_27EFC01D8, &qword_24AEC8CD8);
    sub_24AEC062C(a2, a3, v9);

    return sub_24AEA5484(v9, &qword_27EFC01D8, &qword_24AEC8CD8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AEC14BC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void sub_24AEAC144(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      v5 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles;
      if ((v3 & 0xC000000000000001) == 0)
      {
        v22 = (v3 + 32);
        do
        {
          v24 = *v22;
          swift_beginAccess();
          v3 = *(a2 + v5);
          if ((v3 & 0xC000000000000001) != 0)
          {
            if (v3 < 0)
            {
              v25 = *(a2 + v5);
            }

            else
            {
              v25 = v3 & 0xFFFFFFFFFFFFFF8;
            }

            v26 = v24;
            if (sub_24AEC65BC())
            {
              swift_unknownObjectRelease();

              v27 = sub_24AEC65AC();
              v28 = sub_24AEC07B0(v25, v27);

              v29 = sub_24AEC09FC(v26);
              v31 = v30;

              if ((v31 & 1) == 0)
              {
                goto LABEL_32;
              }

              v32 = *(*(v28 + 56) + 8 * v29);
              sub_24AEC1144(v29, v28);

              *(a2 + v5) = v28;
            }
          }

          else
          {
            v33 = sub_24AEC09FC(v24);
            if (v34)
            {
              v35 = v33;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v37 = *(a2 + v5);
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_24AEC19A8();
              }

              v23 = *(*(v37 + 56) + 8 * v35);
              sub_24AEC1144(v35, v37);
              *(a2 + v5) = v37;
            }
          }

          swift_endAccess();

          ++v22;
          --v4;
        }

        while (v4);
        return;
      }

      v6 = 0;
      while (1)
      {
        v8 = MEMORY[0x24C234830](v6, v3);
        swift_beginAccess();
        v9 = *(a2 + v5);
        if ((v9 & 0xC000000000000001) == 0)
        {
          v17 = sub_24AEC09FC(v8);
          if (v18)
          {
            v19 = v17;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            v21 = *(a2 + v5);
            if (!v20)
            {
              sub_24AEC19A8();
            }

            v7 = *(*(v21 + 56) + 8 * v19);
            sub_24AEC1144(v19, v21);
            *(a2 + v5) = v21;
          }

          goto LABEL_7;
        }

        v10 = v9 < 0 ? *(a2 + v5) : v9 & 0xFFFFFFFFFFFFFF8;
        if (sub_24AEC65BC())
        {
          break;
        }

LABEL_7:
        ++v6;
        swift_endAccess();
        swift_unknownObjectRelease();
        if (v4 == v6)
        {
          return;
        }
      }

      swift_unknownObjectRelease();

      v11 = sub_24AEC65AC();
      v12 = sub_24AEC07B0(v10, v11);

      v13 = sub_24AEC09FC(v8);
      v15 = v14;

      if (v15)
      {
        break;
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v4 = sub_24AEC65AC();
      if (!v4)
      {
        return;
      }
    }

    v16 = *(*(v12 + 56) + 8 * v13);
    sub_24AEC1144(v13, v12);

    *(a2 + v5) = v12;

    goto LABEL_7;
  }
}

uint64_t sub_24AEAC60C(uint64_t a1, int a2, int a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  v9 = sub_24AEC637C();
  v6[4] = v9;
  a6;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_24AEC5B64;

  return sub_24AEC2B80(v9, a4);
}

uint64_t ObjCBootstrap.stopRefreshingLocation(for:priority:isFromGroup:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AEA2D48;

  return sub_24AEC391C(a1);
}

uint64_t sub_24AEAC7C4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00F8, &qword_24AEC8950);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24AEACA0C(uint64_t a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  v7 = sub_24AEC637C();
  v5[4] = v7;
  a5;
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_24AEACB08;

  return sub_24AEC391C(v7);
}

uint64_t sub_24AEACB08()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_24AEC5C9C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_24AEACCC8()
{
  v10 = v0;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_24AEBFE20(0xD000000000000018, 0x800000024AEC7A70, &v9);
    _os_log_impl(&dword_24AE9B000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C234F80](v5, -1, -1);
    MEMORY[0x24C234F80](v4, -1, -1);
  }

  v6 = *(v0 + 16) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationRefreshTaskLock;
  os_unfair_lock_lock(v6);
  if (*(v6 + 8))
  {
    sub_24AEC641C();
  }

  *(v6 + 8) = 0;

  os_unfair_lock_unlock(v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24AEAD00C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AEC5BBC;

  return ObjCBootstrap.stopRefreshingLocation()();
}

uint64_t ObjCBootstrap.startUpdatingFriends(initialUpdates:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 112) = a1;
  *(v2 + 40) = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0138, &qword_24AEC8A10);
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEAD190, 0, 0);
}

uint64_t sub_24AEAD190()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_24AEAD280;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEAD280()
{

  return MEMORY[0x2822009F8](sub_24AEAD398, 0, 0);
}

uint64_t sub_24AEAD398()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 88) = v1;

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_24AEAD5CC;
    v3 = *(v0 + 64);
    v4 = *(v0 + 112);

    return MEMORY[0x28215FAF0](v3, v4);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v5 = sub_24AEC625C();
    __swift_project_value_buffer(v5, qword_280E21578);
    v6 = sub_24AEC623C();
    v7 = sub_24AEC644C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AE9B000, v6, v7, "Missing FindMyLocate.Session!", v8, 2u);
      MEMORY[0x24C234F80](v8, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    *(v0 + 24) = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24AEAD5CC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24AEAD8A4;
  }

  else
  {
    v2 = sub_24AEAD6E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24AEAD6E0()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE9B000, v2, v3, "Successfully startUpdatingFriends stream", v4, 2u);
    MEMORY[0x24C234F80](v4, -1, -1);
  }

  v5 = v0[13];
  v6 = v0[8];
  v8 = v0[4];
  v7 = v0[5];

  v9 = &v8[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendsUpdateTaskLock];
  os_unfair_lock_lock(&v8[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendsUpdateTaskLock]);
  sub_24AEAD910(v9 + 1, v6, v8, v7);
  if (v5)
  {

    os_unfair_lock_unlock(v9);
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    os_unfair_lock_unlock(v9);

    (*(v11 + 8))(v10, v12);

    v13 = v0[1];

    v13();
  }
}

uint64_t sub_24AEAD8A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEAD910(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a4;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0138, &qword_24AEC8A10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v26 = a1;
  if (*a1)
  {
    sub_24AEC641C();
  }

  v14 = sub_24AEC63EC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a2, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v15, v10, v6);
  v19 = v24;
  v18 = v25;
  *(v17 + v16) = v25;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v20 = v18;
  v21 = sub_24AEA2EF0(0, 0, v13, &unk_24AEC8D00, v17);

  *v26 = v21;
  return result;
}

uint64_t sub_24AEADB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[69] = a5;
  v5[68] = a4;
  v6 = sub_24AEC626C();
  v5[70] = v6;
  v5[71] = *(v6 - 8);
  v5[72] = swift_task_alloc();
  v7 = sub_24AEC628C();
  v5[73] = v7;
  v5[74] = *(v7 - 8);
  v5[75] = swift_task_alloc();
  v8 = sub_24AEC5CFC();
  v5[76] = v8;
  v5[77] = *(v8 - 8);
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v9 = sub_24AEC5EEC();
  v5[82] = v9;
  v10 = *(v9 - 8);
  v5[83] = v10;
  v5[84] = *(v10 + 64);
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v11 = sub_24AEC5D6C();
  v5[95] = v11;
  v5[96] = *(v11 - 8);
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0200, &qword_24AEC8D08);
  v5[102] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0208, &qword_24AEC8D10);
  v5[103] = v12;
  v5[104] = *(v12 - 8);
  v5[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEADF08, 0, 0);
}

uint64_t sub_24AEADF08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0138, &qword_24AEC8A10);
  sub_24AEC63FC();
  *(v0 + 848) = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue;
  *(v0 + 856) = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback;
  swift_beginAccess();
  v1 = MEMORY[0x277D090C8];
  *(v0 + 872) = *MEMORY[0x277D090C0];
  *(v0 + 876) = *v1;
  *(v0 + 880) = *MEMORY[0x277D090D0];
  v2 = MEMORY[0x277D09030];
  *(v0 + 884) = *MEMORY[0x277D09028];
  *(v0 + 888) = *v2;
  *(v0 + 892) = *MEMORY[0x277D09018];
  v3 = MEMORY[0x277D09010];
  *(v0 + 896) = *MEMORY[0x277D09020];
  *(v0 + 900) = *v3;
  v4 = swift_task_alloc();
  *(v0 + 864) = v4;
  *v4 = v0;
  v4[1] = sub_24AEAE094;
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_24AEAE094()
{

  return MEMORY[0x2822009F8](sub_24AEAE190, 0, 0);
}

uint64_t sub_24AEAE190()
{
  v397 = v0;
  v1 = v0;
  v2 = v0[102];
  v3 = v0[96];
  v4 = v0[95];
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    (*(v1[104] + 8))(v1[105], v1[103]);
LABEL_13:
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v40 = sub_24AEC625C();
    __swift_project_value_buffer(v40, qword_280E21578);
    v41 = sub_24AEC623C();
    v42 = sub_24AEC645C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_24AE9B000, v41, v42, "Successfully startUpdatingFriends", v43, 2u);
      MEMORY[0x24C234F80](v43, -1, -1);
    }

    v44 = v1[1];

    return v44();
  }

  (*(v3 + 32))(v1[101], v2, v4);
  if (sub_24AEC642C())
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v5 = sub_24AEC625C();
    __swift_project_value_buffer(v5, qword_280E21578);
    v6 = sub_24AEC623C();
    v7 = sub_24AEC645C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[105];
    v10 = v1[104];
    v11 = v1[103];
    v12 = v1[101];
    v13 = v1[96];
    v14 = v1[95];
    if (v8)
    {
      v389 = v1[105];
      v386 = v1[103];
      v15 = swift_slowAlloc();
      v391 = v1;
      v396 = swift_slowAlloc();
      v16 = v396;
      *v15 = 136446210;
      *(v15 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v396);
      _os_log_impl(&dword_24AE9B000, v6, v7, "%{public}s has been canceled", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v17 = v16;
      v1 = v391;
      MEMORY[0x24C234F80](v17, -1, -1);
      MEMORY[0x24C234F80](v15, -1, -1);

      (*(v13 + 8))(v12, v14);
      (*(v10 + 8))(v389, v386);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      (*(v10 + 8))(v9, v11);
    }

    goto LABEL_13;
  }

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v18 = v1[101];
  v19 = v1[100];
  v20 = v1[96];
  v21 = v1[95];
  v22 = sub_24AEC625C();
  __swift_project_value_buffer(v22, qword_280E21578);
  v23 = *(v20 + 16);
  v23(v19, v18, v21);
  v24 = sub_24AEC623C();
  v25 = sub_24AEC645C();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v1[100];
  v387 = v1 + 101;
  if (v26)
  {
    v28 = v1[99];
    v29 = v1[96];
    v30 = v1;
    v31 = v1[95];
    v32 = swift_slowAlloc();
    v364 = v23;
    v33 = swift_slowAlloc();
    v396 = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v396);
    *(v32 + 12) = 2080;
    v364(v28, v27, v31);
    v34 = sub_24AEC630C();
    v36 = v35;
    v37 = v31;
    v1 = v30;
    v390 = *(v29 + 8);
    v390(v27, v37);
    v38 = sub_24AEBFE20(v34, v36, &v396);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_24AE9B000, v24, v25, "%{public}s friendshipUpdate: %s", v32, 0x16u);
    swift_arrayDestroy();
    v39 = v33;
    v23 = v364;
    MEMORY[0x24C234F80](v39, -1, -1);
    MEMORY[0x24C234F80](v32, -1, -1);
  }

  else
  {
    v46 = v1[96];
    v47 = v1[95];

    v390 = *(v46 + 8);
    v390(v27, v47);
  }

  v48 = *(v1 + 218);
  v49 = v1[98];
  v50 = v1[96];
  v51 = v1[95];
  v23(v49, v1[101], v51);
  v52 = (*(v50 + 88))(v49, v51);
  if (v52 == v48)
  {
    v53 = *(v1 + 221);
    v54 = v1[98];
    v55 = v1[94];
    v56 = v1[83];
    v57 = v1[82];
    v58 = v1[81];
    v59 = v1[77];
    v60 = v1[76];
    (*(v1[96] + 96))(v54, v1[95]);
    v61 = *(v56 + 32);
    v61(v55, v54, v57);
    sub_24AEC5E9C();
    v62 = (*(v59 + 88))(v58, v60);
    if (v62 == v53)
    {
      v63 = v1[93];
      v64 = v61;
      v65 = v1[83];
      v66 = v1[82];
      v365 = v1[74];
      v377 = v1[73];
      v322 = v1[75];
      v331 = v1[72];
      v340 = v1[70];
      v67 = v1[69];
      v352 = v1[71];
      v68 = *(v65 + 16);
      v68(v63, v1[94], v66);
      v69 = (*(v65 + 80) + 24) & ~*(v65 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = v67;
      v64(v70 + v69, v63, v66);
      v1[54] = sub_24AEC5BB8;
      v1[55] = v70;
      v1[50] = MEMORY[0x277D85DD0];
      v1[51] = 1107296256;
      v1[52] = sub_24AEA5684;
      v1[53] = &block_descriptor_399;
      v71 = _Block_copy(v1 + 50);
      v72 = v67;
      sub_24AEC627C();
      v1[67] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v322, v331, v71);
      v73 = v71;
      v74 = v68;
      _Block_release(v73);
      (*(v352 + 8))(v331, v340);
      (*(v365 + 8))(v322, v377);
    }

    else if (v62 == *(v1 + 222))
    {
      v97 = v1[93];
      v98 = v61;
      v99 = v1[83];
      v100 = v1[82];
      v354 = v1[74];
      v367 = v1[73];
      v316 = v1[75];
      v324 = v1[72];
      v333 = v1[70];
      v101 = v1[69];
      log = v1[71];
      v102 = *(v99 + 16);
      v102(v97, v1[94], v100);
      v103 = (*(v99 + 80) + 24) & ~*(v99 + 80);
      v104 = swift_allocObject();
      *(v104 + 16) = v101;
      v98(v104 + v103, v97, v100);
      v1[48] = sub_24AEC5738;
      v1[49] = v104;
      v1[44] = MEMORY[0x277D85DD0];
      v1[45] = 1107296256;
      v1[46] = sub_24AEA5684;
      v1[47] = &block_descriptor_393;
      v105 = _Block_copy(v1 + 44);
      v106 = v101;
      sub_24AEC627C();
      v1[66] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v316, v324, v105);
      v107 = v105;
      v74 = v102;
      _Block_release(v107);
      (log[1].isa)(v324, v333);
      (*(v354 + 8))(v316, v367);
    }

    else if (v62 == *(v1 + 223) || v62 == *(v1 + 224))
    {
      v74 = *(v1[83] + 16);
    }

    else if (v62 == *(v1 + 225))
    {
      v141 = v1[93];
      v142 = v61;
      v143 = v1[83];
      v144 = v1[82];
      v357 = v1[74];
      v370 = v1[73];
      v318 = v1[75];
      v327 = v1[72];
      v336 = v1[70];
      v145 = v1[69];
      logb = v1[71];
      v146 = *(v143 + 16);
      v146(v141, v1[94], v144);
      v147 = (*(v143 + 80) + 24) & ~*(v143 + 80);
      v148 = swift_allocObject();
      *(v148 + 16) = v145;
      v142(v148 + v147, v141, v144);
      v1[42] = sub_24AEC572C;
      v1[43] = v148;
      v1[38] = MEMORY[0x277D85DD0];
      v1[39] = 1107296256;
      v1[40] = sub_24AEA5684;
      v1[41] = &block_descriptor_387;
      v149 = _Block_copy(v1 + 38);
      v150 = v145;
      sub_24AEC627C();
      v1[65] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v318, v327, v149);
      v151 = v149;
      v74 = v146;
      _Block_release(v151);
      (logb[1].isa)(v327, v336);
      (*(v357 + 8))(v318, v370);
    }

    else
    {
      v74 = *(v1[83] + 16);
      v74(v1[92], v1[94], v1[82]);
      v203 = sub_24AEC623C();
      v204 = sub_24AEC644C();
      v205 = os_log_type_enabled(v203, v204);
      v206 = v1[92];
      v207 = v1[83];
      v208 = v1[82];
      if (v205)
      {
        v209 = v1[80];
        v210 = v1[77];
        v211 = v1[76];
        v380 = v204;
        v361 = v1[82];
        v212 = swift_slowAlloc();
        v374 = swift_slowAlloc();
        v396 = v374;
        *v212 = 136446466;
        *(v212 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v396);
        *(v212 + 12) = 2080;
        sub_24AEC5E9C();
        sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038], MEMORY[0x277D09040]);
        v213 = sub_24AEC663C();
        logf = v203;
        v214 = v74;
        v216 = v215;
        v217 = *(v210 + 8);
        v217(v209, v211);
        (*(v207 + 8))(v206, v361);
        v218 = sub_24AEBFE20(v213, v216, &v396);
        v74 = v214;

        *(v212 + 14) = v218;
        _os_log_impl(&dword_24AE9B000, logf, v380, "%{public}s Unknown friend.type %s!", v212, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C234F80](v374, -1, -1);
        MEMORY[0x24C234F80](v212, -1, -1);

        v217(v1[81], v1[76]);
      }

      else
      {
        v235 = v1[77];

        (*(v207 + 8))(v206, v208);
        (*(v235 + 8))(v1[81], v1[76]);
      }
    }

    v74(v1[91], v1[94], v1[82]);
    v236 = sub_24AEC623C();
    v237 = sub_24AEC645C();
    v238 = os_log_type_enabled(v236, v237);
    v239 = v1[91];
    v240 = v1[83];
    v241 = v1[82];
    v382 = v74;
    if (v238)
    {
      v242 = swift_slowAlloc();
      v393 = swift_slowAlloc();
      v396 = v393;
      *v242 = 136446466;
      *(v242 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v396);
      *(v242 + 12) = 2080;
      sub_24AEC59BC(&qword_27EFC0198, MEMORY[0x277D092C0], MEMORY[0x277D092D0]);
      v243 = sub_24AEC663C();
      v244 = v1;
      v246 = v245;
      v247 = *(v240 + 8);
      v247(v239, v241);
      v248 = sub_24AEBFE20(v243, v246, &v396);
      v1 = v244;

      *(v242 + 14) = v248;
      _os_log_impl(&dword_24AE9B000, v236, v237, "%{public}s Added friend: %s", v242, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C234F80](v393, -1, -1);
      MEMORY[0x24C234F80](v242, -1, -1);
    }

    else
    {

      v247 = *(v240 + 8);
      v247(v239, v241);
    }

    v249 = v1[69] + v1[107];
    v250 = *v249;
    v166 = v390;
    if (*v249)
    {
      v251 = v1[94];
      v252 = v1[93];
      v253 = v1[82];
      v254 = *(v249 + 8);
      sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
      v382(v252, v251, v253);

      v255 = FMLFriend.init(_:)(v252);
      v250(v255, 1);

      sub_24AE9C8F8(v250, v254);
    }

    v256 = v1[94];
  }

  else if (v52 == *(v1 + 219))
  {
    v75 = *(v1 + 221);
    v76 = v1[98];
    v77 = v1[90];
    v78 = v1[83];
    v79 = v1[82];
    v80 = v1[79];
    v81 = v1[77];
    v82 = v1[76];
    (*(v1[96] + 96))(v76, v1[95]);
    v83 = *(v78 + 32);
    v83(v77, v76, v79);
    sub_24AEC5E9C();
    v84 = (*(v81 + 88))(v80, v82);
    if (v84 == v75)
    {
      v85 = v1[93];
      v86 = v83;
      v87 = v1[83];
      v88 = v1[82];
      v366 = v1[74];
      v378 = v1[73];
      v323 = v1[75];
      v332 = v1[72];
      v341 = v1[70];
      v89 = v1[69];
      v353 = v1[71];
      v90 = *(v87 + 16);
      v90(v85, v1[90], v88);
      v91 = (*(v87 + 80) + 24) & ~*(v87 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = v89;
      v86(v92 + v91, v85, v88);
      v1[36] = sub_24AEC5720;
      v1[37] = v92;
      v1[32] = MEMORY[0x277D85DD0];
      v1[33] = 1107296256;
      v1[34] = sub_24AEA5684;
      v1[35] = &block_descriptor_381;
      v93 = _Block_copy(v1 + 32);
      v94 = v89;
      sub_24AEC627C();
      v1[64] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v323, v332, v93);
      v95 = v93;
      v96 = v90;
      _Block_release(v95);
      (*(v353 + 8))(v332, v341);
      (*(v366 + 8))(v323, v378);
    }

    else if (v84 == *(v1 + 222))
    {
      v130 = v1[93];
      v131 = v83;
      v132 = v1[83];
      v133 = v1[82];
      v356 = v1[74];
      v369 = v1[73];
      v317 = v1[75];
      v326 = v1[72];
      v335 = v1[70];
      v134 = v1[69];
      loga = v1[71];
      v135 = *(v132 + 16);
      v135(v130, v1[90], v133);
      v136 = (*(v132 + 80) + 24) & ~*(v132 + 80);
      v137 = swift_allocObject();
      *(v137 + 16) = v134;
      v131(v137 + v136, v130, v133);
      v1[30] = sub_24AEC56BC;
      v1[31] = v137;
      v1[26] = MEMORY[0x277D85DD0];
      v1[27] = 1107296256;
      v1[28] = sub_24AEA5684;
      v1[29] = &block_descriptor_375;
      v138 = _Block_copy(v1 + 26);
      v139 = v134;
      sub_24AEC627C();
      v1[63] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v317, v326, v138);
      v140 = v138;
      v96 = v135;
      _Block_release(v140);
      (loga[1].isa)(v326, v335);
      (*(v356 + 8))(v317, v369);
    }

    else if (v84 == *(v1 + 223) || v84 == *(v1 + 224))
    {
      v96 = *(v1[83] + 16);
    }

    else if (v84 == *(v1 + 225))
    {
      v180 = v1[93];
      v181 = v83;
      v182 = v1[83];
      v183 = v1[82];
      v359 = v1[74];
      v372 = v1[73];
      v320 = v1[75];
      v329 = v1[72];
      v338 = v1[70];
      v184 = v1[69];
      logd = v1[71];
      v185 = *(v182 + 16);
      v185(v180, v1[90], v183);
      v186 = (*(v182 + 80) + 24) & ~*(v182 + 80);
      v187 = swift_allocObject();
      *(v187 + 16) = v184;
      v181(v187 + v186, v180, v183);
      v1[24] = sub_24AEC5648;
      v1[25] = v187;
      v1[20] = MEMORY[0x277D85DD0];
      v1[21] = 1107296256;
      v1[22] = sub_24AEA5684;
      v1[23] = &block_descriptor_369;
      v188 = _Block_copy(v1 + 20);
      v189 = v184;
      sub_24AEC627C();
      v1[62] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v320, v329, v188);
      v190 = v188;
      v96 = v185;
      _Block_release(v190);
      (logd[1].isa)(v329, v338);
      (*(v359 + 8))(v320, v372);
    }

    else
    {
      v96 = *(v1[83] + 16);
      v96(v1[89], v1[90], v1[82]);
      v219 = sub_24AEC623C();
      v220 = sub_24AEC644C();
      v221 = os_log_type_enabled(v219, v220);
      v222 = v1[89];
      v223 = v1[83];
      v224 = v1[82];
      if (v221)
      {
        v225 = v1[80];
        v226 = v1[77];
        v227 = v1[76];
        v381 = v220;
        v362 = v1[82];
        v228 = swift_slowAlloc();
        v375 = swift_slowAlloc();
        v396 = v375;
        *v228 = 136446466;
        *(v228 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v396);
        *(v228 + 12) = 2080;
        sub_24AEC5E9C();
        sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038], MEMORY[0x277D09040]);
        v229 = sub_24AEC663C();
        logg = v219;
        v230 = v96;
        v232 = v231;
        v233 = *(v226 + 8);
        v233(v225, v227);
        (*(v223 + 8))(v222, v362);
        v234 = sub_24AEBFE20(v229, v232, &v396);
        v96 = v230;

        *(v228 + 14) = v234;
        _os_log_impl(&dword_24AE9B000, logg, v381, "%{public}s Unknown friend.type %s!", v228, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C234F80](v375, -1, -1);
        MEMORY[0x24C234F80](v228, -1, -1);

        v233(v1[79], v1[76]);
      }

      else
      {
        v273 = v1[77];

        (*(v223 + 8))(v222, v224);
        (*(v273 + 8))(v1[79], v1[76]);
      }
    }

    v96(v1[88], v1[90], v1[82]);
    v274 = sub_24AEC623C();
    v275 = sub_24AEC645C();
    v276 = os_log_type_enabled(v274, v275);
    v277 = v1[88];
    v278 = v1[83];
    v279 = v1[82];
    v384 = v96;
    if (v276)
    {
      v280 = swift_slowAlloc();
      v394 = swift_slowAlloc();
      v396 = v394;
      *v280 = 136446466;
      *(v280 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v396);
      *(v280 + 12) = 2080;
      sub_24AEC59BC(&qword_27EFC0198, MEMORY[0x277D092C0], MEMORY[0x277D092D0]);
      v281 = sub_24AEC663C();
      v282 = v1;
      v284 = v283;
      v247 = *(v278 + 8);
      v247(v277, v279);
      v285 = sub_24AEBFE20(v281, v284, &v396);
      v1 = v282;

      *(v280 + 14) = v285;
      _os_log_impl(&dword_24AE9B000, v274, v275, "%{public}s Removed friend: %s", v280, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C234F80](v394, -1, -1);
      MEMORY[0x24C234F80](v280, -1, -1);
    }

    else
    {

      v247 = *(v278 + 8);
      v247(v277, v279);
    }

    v286 = v1[69] + v1[107];
    v287 = *v286;
    v166 = v390;
    if (*v286)
    {
      v288 = v1[93];
      v289 = v1[90];
      v290 = v1[82];
      v291 = *(v286 + 8);
      sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
      v384(v288, v289, v290);

      v292 = FMLFriend.init(_:)(v288);
      v287(v292, 0);

      sub_24AE9C8F8(v287, v291);
    }

    v256 = v1[90];
  }

  else
  {
    if (v52 != *(v1 + 220))
    {
      v152 = v1 + 98;
      v23(v1[97], v1[101], v1[95]);
      v153 = sub_24AEC623C();
      v154 = sub_24AEC644C();
      v155 = os_log_type_enabled(v153, v154);
      v388 = v1[101];
      if (v155)
      {
        v156 = v1[99];
        v157 = v1[97];
        v158 = v1[95];
        v159 = v23;
        v160 = swift_slowAlloc();
        v392 = v1;
        v396 = swift_slowAlloc();
        v161 = v396;
        *v160 = 136315138;
        v159(v156, v157, v158);
        v162 = sub_24AEC630C();
        v164 = v163;
        v165 = v157;
        v166 = v390;
        v390(v165, v158);
        v167 = sub_24AEBFE20(v162, v164, &v396);

        *(v160 + 4) = v167;
        _os_log_impl(&dword_24AE9B000, v153, v154, "Unknown friendship update type %s", v160, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v161);
        v168 = v161;
        v1 = v392;
        MEMORY[0x24C234F80](v168, -1, -1);
        MEMORY[0x24C234F80](v160, -1, -1);
      }

      else
      {
        v191 = v1[97];
        v158 = v1[95];

        v166 = v390;
        v390(v191, v158);
      }

      v390(v388, v158);
      goto LABEL_83;
    }

    v108 = *(v1 + 221);
    v109 = v1[98];
    v110 = v1[87];
    v111 = v1[83];
    v112 = v1[82];
    v113 = v1[78];
    v114 = v1[77];
    v115 = v1[76];
    (*(v1[96] + 96))(v109, v1[95]);
    v116 = *(v111 + 32);
    v116(v110, v109, v112);
    sub_24AEC5E9C();
    v117 = (*(v114 + 88))(v113, v115);
    if (v117 == v108)
    {
      v118 = v1[93];
      v119 = v116;
      v120 = v1[83];
      v121 = v1[82];
      v368 = v1[74];
      v379 = v1[73];
      v325 = v1[75];
      v334 = v1[72];
      v342 = v1[70];
      v122 = v1[69];
      v355 = v1[71];
      v123 = *(v120 + 16);
      v123(v118, v1[87], v121);
      v124 = (*(v120 + 80) + 24) & ~*(v120 + 80);
      v125 = swift_allocObject();
      *(v125 + 16) = v122;
      v119(v125 + v124, v118, v121);
      v1[18] = sub_24AEC563C;
      v1[19] = v125;
      v1[14] = MEMORY[0x277D85DD0];
      v1[15] = 1107296256;
      v1[16] = sub_24AEA5684;
      v1[17] = &block_descriptor_363;
      v126 = _Block_copy(v1 + 14);
      v127 = v122;
      sub_24AEC627C();
      v1[61] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v325, v334, v126);
      v128 = v126;
      v129 = v123;
      _Block_release(v128);
      (*(v355 + 8))(v334, v342);
      (*(v368 + 8))(v325, v379);
    }

    else if (v117 == *(v1 + 222))
    {
      v169 = v1[93];
      v170 = v116;
      v171 = v1[83];
      v172 = v1[82];
      v358 = v1[74];
      v371 = v1[73];
      v319 = v1[75];
      v328 = v1[72];
      v337 = v1[70];
      v173 = v1[69];
      logc = v1[71];
      v174 = *(v171 + 16);
      v174(v169, v1[87], v172);
      v175 = (*(v171 + 80) + 24) & ~*(v171 + 80);
      v176 = swift_allocObject();
      *(v176 + 16) = v173;
      v170(v176 + v175, v169, v172);
      v1[12] = sub_24AEC5BB4;
      v1[13] = v176;
      v1[8] = MEMORY[0x277D85DD0];
      v1[9] = 1107296256;
      v1[10] = sub_24AEA5684;
      v1[11] = &block_descriptor_357;
      v177 = _Block_copy(v1 + 8);
      v178 = v173;
      sub_24AEC627C();
      v1[60] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v319, v328, v177);
      v179 = v177;
      v129 = v174;
      _Block_release(v179);
      (logc[1].isa)(v328, v337);
      (*(v358 + 8))(v319, v371);
    }

    else if (v117 == *(v1 + 223) || v117 == *(v1 + 224))
    {
      v129 = *(v1[83] + 16);
    }

    else if (v117 == *(v1 + 225))
    {
      v192 = v1[93];
      v193 = v116;
      v194 = v1[83];
      v195 = v1[82];
      v360 = v1[74];
      v373 = v1[73];
      v321 = v1[75];
      v330 = v1[72];
      v339 = v1[70];
      v196 = v1[69];
      loge = v1[71];
      v197 = *(v194 + 16);
      v197(v192, v1[87], v195);
      v198 = (*(v194 + 80) + 24) & ~*(v194 + 80);
      v199 = swift_allocObject();
      *(v199 + 16) = v196;
      v193(v199 + v198, v192, v195);
      v1[6] = sub_24AEC5BB0;
      v1[7] = v199;
      v1[2] = MEMORY[0x277D85DD0];
      v1[3] = 1107296256;
      v1[4] = sub_24AEA5684;
      v1[5] = &block_descriptor_351;
      v200 = _Block_copy(v1 + 2);
      v201 = v196;
      sub_24AEC627C();
      v1[59] = MEMORY[0x277D84F90];
      sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
      sub_24AEC3EB4();
      sub_24AEC64FC();
      MEMORY[0x24C2347A0](0, v321, v330, v200);
      v202 = v200;
      v129 = v197;
      _Block_release(v202);
      (loge[1].isa)(v330, v339);
      (*(v360 + 8))(v321, v373);
    }

    else
    {
      v129 = *(v1[83] + 16);
      v129(v1[86], v1[87], v1[82]);
      v257 = sub_24AEC623C();
      v258 = sub_24AEC644C();
      v259 = os_log_type_enabled(v257, v258);
      v260 = v1[86];
      v261 = v1[83];
      v262 = v1[82];
      if (v259)
      {
        v263 = v1[80];
        v264 = v1[77];
        v265 = v1[76];
        v383 = v258;
        v363 = v1[82];
        v266 = swift_slowAlloc();
        v376 = swift_slowAlloc();
        v396 = v376;
        *v266 = 136446466;
        *(v266 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v396);
        *(v266 + 12) = 2080;
        sub_24AEC5E9C();
        sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038], MEMORY[0x277D09040]);
        v267 = sub_24AEC663C();
        logh = v257;
        v268 = v129;
        v270 = v269;
        v271 = *(v264 + 8);
        v271(v263, v265);
        (*(v261 + 8))(v260, v363);
        v272 = sub_24AEBFE20(v267, v270, &v396);
        v129 = v268;

        *(v266 + 14) = v272;
        _os_log_impl(&dword_24AE9B000, logh, v383, "%{public}s Unknown friend.type %s!", v266, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C234F80](v376, -1, -1);
        MEMORY[0x24C234F80](v266, -1, -1);

        v271(v1[78], v1[76]);
      }

      else
      {
        v293 = v1[77];

        (*(v261 + 8))(v260, v262);
        (*(v293 + 8))(v1[78], v1[76]);
      }
    }

    v129(v1[85], v1[87], v1[82]);
    v294 = sub_24AEC623C();
    v295 = sub_24AEC645C();
    v296 = os_log_type_enabled(v294, v295);
    v297 = v1[85];
    v298 = v1[83];
    v299 = v1[82];
    v385 = v129;
    if (v296)
    {
      v300 = swift_slowAlloc();
      v395 = swift_slowAlloc();
      v396 = v395;
      *v300 = 136446466;
      *(v300 + 4) = sub_24AEBFE20(0xD000000000000025, 0x800000024AEC7E70, &v396);
      *(v300 + 12) = 2080;
      sub_24AEC59BC(&qword_27EFC0198, MEMORY[0x277D092C0], MEMORY[0x277D092D0]);
      v301 = sub_24AEC663C();
      v302 = v1;
      v304 = v303;
      v247 = *(v298 + 8);
      v247(v297, v299);
      v305 = sub_24AEBFE20(v301, v304, &v396);
      v1 = v302;

      *(v300 + 14) = v305;
      _os_log_impl(&dword_24AE9B000, v294, v295, "%{public}s Modified friend: %s", v300, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C234F80](v395, -1, -1);
      MEMORY[0x24C234F80](v300, -1, -1);
    }

    else
    {

      v247 = *(v298 + 8);
      v247(v297, v299);
    }

    v306 = v1[69] + v1[107];
    v307 = *v306;
    v166 = v390;
    if (*v306)
    {
      v308 = v1[93];
      v309 = v1[87];
      v310 = v1[82];
      v311 = *(v306 + 8);
      sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
      v385(v308, v309, v310);

      v312 = FMLFriend.init(_:)(v308);
      v307(v312, 2);

      sub_24AE9C8F8(v307, v311);
    }

    v256 = v1[87];
  }

  v247(v256, v1[82]);
  v152 = v387;
LABEL_83:
  v166(*v152, v1[95]);
  v313 = swift_task_alloc();
  v1[108] = v313;
  *v313 = v1;
  v313[1] = sub_24AEAE094;
  v314 = v1[103];
  v315 = v1[102];

  return MEMORY[0x2822003E8](v315, 0, 0, v314);
}

uint64_t sub_24AEB0D04(uint64_t a1, uint64_t a2)
{
  v60[1] = a2;
  v3 = sub_24AEC5F4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01D8, &qword_24AEC8CD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v60 - v11;
  sub_24AEC5ECC();
  v13 = sub_24AEC5EFC();
  v15 = v14;
  v16 = *(v4 + 8);
  v16(v9, v3);
  swift_beginAccess();
  sub_24AEC062C(v13, v15, v12);
  sub_24AEA5484(v12, &qword_27EFC01D8, &qword_24AEC8CD8);
  swift_endAccess();

  sub_24AEC5ECC();
  v17 = sub_24AEC5F1C();
  v16(v7, v3);
  v18 = *(v17 + 16);
  if (v18)
  {
    v62 = MEMORY[0x277D84F90];
    sub_24AEC656C();
    v19 = objc_opt_self();
    v20 = v17 + 40;
    do
    {

      v21 = sub_24AEC62EC();

      v22 = [v19 handleWithIdentifier_];

      sub_24AEC654C();
      sub_24AEC657C();
      sub_24AEC658C();
      sub_24AEC655C();
      v20 += 16;
      --v18;
    }

    while (v18);

    v24 = v62;
    if (!(v62 >> 62))
    {
LABEL_5:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }
  }

  result = sub_24AEC65AC();
  v25 = result;
  if (!result)
  {
  }

LABEL_6:
  if (v25 < 1)
  {
    goto LABEL_39;
  }

  v26 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles;
  if ((v24 & 0xC000000000000001) == 0)
  {
    v43 = 32;
    do
    {
      v45 = *(v24 + v43);
      swift_beginAccess();
      v46 = *(a1 + v26);
      if ((v46 & 0xC000000000000001) != 0)
      {
        if (v46 < 0)
        {
          v47 = *(a1 + v26);
        }

        else
        {
          v47 = v46 & 0xFFFFFFFFFFFFFF8;
        }

        v48 = v45;
        if (sub_24AEC65BC())
        {
          swift_unknownObjectRelease();

          v49 = sub_24AEC65AC();
          v50 = sub_24AEC07B0(v47, v49);

          v51 = sub_24AEC09FC(v48);
          v53 = v52;

          if ((v53 & 1) == 0)
          {
            goto LABEL_38;
          }

          v54 = *(*(v50 + 56) + 8 * v51);
          sub_24AEC1144(v51, v50);

          *(a1 + v26) = v50;
        }
      }

      else
      {
        v55 = sub_24AEC09FC(v45);
        if (v56)
        {
          v57 = v55;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = *(a1 + v26);
          v61 = v59;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24AEC19A8();
            v59 = v61;
          }

          v44 = *(*(v59 + 56) + 8 * v57);
          sub_24AEC1144(v57, v59);
          *(a1 + v26) = v59;
        }
      }

      swift_endAccess();

      v43 += 8;
      --v25;
    }

    while (v25);
  }

  v27 = 0;
  while (1)
  {
    v29 = MEMORY[0x24C234830](v27, v24);
    swift_beginAccess();
    v30 = *(a1 + v26);
    if ((v30 & 0xC000000000000001) == 0)
    {
      v38 = sub_24AEC09FC(v29);
      if (v39)
      {
        v40 = v38;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(a1 + v26);
        v61 = v42;
        if (!v41)
        {
          sub_24AEC19A8();
          v42 = v61;
        }

        v28 = *(*(v42 + 56) + 8 * v40);
        sub_24AEC1144(v40, v42);
        *(a1 + v26) = v42;
      }

      goto LABEL_10;
    }

    v31 = v30 < 0 ? *(a1 + v26) : v30 & 0xFFFFFFFFFFFFFF8;
    if (sub_24AEC65BC())
    {
      break;
    }

LABEL_10:
    ++v27;
    swift_endAccess();
    swift_unknownObjectRelease();
    if (v25 == v27)
    {
    }
  }

  swift_unknownObjectRelease();

  v32 = sub_24AEC65AC();
  v33 = sub_24AEC07B0(v31, v32);

  v34 = sub_24AEC09FC(v29);
  v36 = v35;

  if (v36)
  {

    v37 = *(*(v33 + 56) + 8 * v34);
    sub_24AEC1144(v34, v33);

    *(a1 + v26) = v33;

    goto LABEL_10;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_24AEB12A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_24AEC5F4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01D8, &qword_24AEC8CD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  sub_24AEC5ECC();
  v10 = sub_24AEC5EFC();
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  sub_24AEC062C(v10, v12, v9);
  sub_24AEA5484(v9, &qword_27EFC01D8, &qword_24AEC8CD8);
  swift_endAccess();
}

uint64_t sub_24AEB143C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01D8, &qword_24AEC8CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24AEC5F4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEC5ECC();
  v11 = sub_24AEC5EFC();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v14 = sub_24AEC5EEC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, a2, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  swift_beginAccess();
  sub_24AEABF6C(v6, v11, v13);
  return swift_endAccess();
}

uint64_t sub_24AEB17B0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24AEC5BBC;

  return ObjCBootstrap.startUpdatingFriends(initialUpdates:)(a1);
}

uint64_t ObjCBootstrap.stopUpdatingFriends()()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24AEB18DC, 0, 0);
}

uint64_t sub_24AEB18DC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_24AEB19CC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB19CC()
{

  return MEMORY[0x2822009F8](sub_24AEB1AE4, 0, 0);
}

uint64_t sub_24AEB1AE4()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[8] = v2;

  if (v2)
  {
    v3 = v1 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendsUpdateTaskLock;
    os_unfair_lock_lock(v3);
    if (*(v3 + 8))
    {
      sub_24AEC641C();
    }

    *(v3 + 8) = 0;

    os_unfair_lock_unlock(v3);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_24AEB1D58;

    return MEMORY[0x28215FAD8]();
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v5 = sub_24AEC625C();
    __swift_project_value_buffer(v5, qword_280E21578);
    v6 = sub_24AEC623C();
    v7 = sub_24AEC644C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AE9B000, v6, v7, "Missing FindMyLocate.Session!", v8, 2u);
      MEMORY[0x24C234F80](v8, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[3] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24AEB1D58()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24AEB1F90;
  }

  else
  {
    v2 = sub_24AEB1E6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEB1E6C()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE9B000, v2, v3, "Successfully stopUpdatingFriends", v4, 2u);
    MEMORY[0x24C234F80](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AEB1F90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEB2168(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AEB2210;

  return ObjCBootstrap.stopUpdatingFriends()();
}

uint64_t sub_24AEB2210()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_24AEC5C9C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t ObjCBootstrap.startMonitoringActiveLocationSharingDevice()()
{
  v1[4] = v0;
  v1[5] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v1[6] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0140, &qword_24AEC8A28);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB24B8, 0, 0);
}

uint64_t sub_24AEB24B8()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_24AEB25A8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB25A8()
{

  return MEMORY[0x2822009F8](sub_24AEB26C0, 0, 0);
}

uint64_t sub_24AEB26C0()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[14] = v1;

  if (v1)
  {
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_24AEB2904;
    v3 = v0[11];

    return MEMORY[0x28215FB78](v3);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v4 = sub_24AEC625C();
    __swift_project_value_buffer(v4, qword_280E21578);
    v5 = sub_24AEC623C();
    v6 = sub_24AEC644C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24AE9B000, v5, v6, "Missing FindMyLocate.Session!", v7, 2u);
      MEMORY[0x24C234F80](v7, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[3] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24AEB2904()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24AEB2BE8;
  }

  else
  {
    v2 = sub_24AEB2A18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEB2A18()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v15 = v0[5];
  v8 = sub_24AEC63EC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  (*(v4 + 16))(v1, v2, v6);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v4 + 32))(v11 + v9, v1, v6);
  *(v11 + v10) = v7;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v12 = v7;
  sub_24AEA2EF0(0, 0, v5, &unk_24AEC8A38, v11);

  (*(v4 + 8))(v2, v6);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24AEB2BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEB2C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01E8, &qword_24AEC8CE0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = sub_24AEC5D9C();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01F0, &qword_24AEC8CE8);
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01F8, &qword_24AEC8CF0);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB2E30, 0, 0);
}

uint64_t sub_24AEB2E30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0140, &qword_24AEC8A28);
  sub_24AEC63FC();
  *(v0 + 152) = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback;
  swift_beginAccess();
  v1 = *MEMORY[0x277D09178];
  *(v0 + 168) = *MEMORY[0x277D091A0];
  *(v0 + 172) = v1;
  v2 = *MEMORY[0x277D09180];
  *(v0 + 176) = *MEMORY[0x277D09198];
  *(v0 + 180) = v2;
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_24AEB2F5C;
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_24AEB2F5C()
{

  return MEMORY[0x2822009F8](sub_24AEB3058, 0, 0);
}

uint64_t sub_24AEB3058()
{
  v63 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v10 = *(v0 + 168);
    v11 = *(v0 + 112);
    (*(v3 + 32))(v11, v1, v2);
    v12 = (*(v3 + 88))(v11, v2);
    if (v12 == v10)
    {
      v13 = *(v0 + 112);
      v14 = *(v0 + 88);
      (*(*(v0 + 104) + 96))(v13, *(v0 + 96));
      sub_24AEC5340(v13, v14, &qword_27EFC01E8, &qword_24AEC8CE0);
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      v17 = sub_24AEC625C();
      __swift_project_value_buffer(v17, qword_280E21578);
      sub_24AEC5A6C(v16, v15, &qword_27EFC01E8, &qword_24AEC8CE0);
      v18 = sub_24AEC623C();
      v19 = sub_24AEC645C();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 80);
      if (v20)
      {
        v22 = *(v0 + 72);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v62 = v24;
        *v23 = 136315138;
        sub_24AEC5A6C(v21, v22, &qword_27EFC01E8, &qword_24AEC8CE0);
        v25 = sub_24AEC630C();
        v27 = v26;
        sub_24AEA5484(v21, &qword_27EFC01E8, &qword_24AEC8CE0);
        v28 = sub_24AEBFE20(v25, v27, &v62);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_24AE9B000, v18, v19, "preferencesChangeStream received meDevice updated: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C234F80](v24, -1, -1);
        MEMORY[0x24C234F80](v23, -1, -1);
      }

      else
      {

        sub_24AEA5484(v21, &qword_27EFC01E8, &qword_24AEC8CE0);
      }

      v38 = *(v0 + 48) + *(v0 + 152);
      v39 = *v38;
      if (*v38)
      {
        v40 = *(v38 + 8);
        v41 = *(v0 + 88);
        v42 = sub_24AEC5E5C();
        v43 = *(v42 - 8);
        v44 = *(v43 + 48);
        if (v44(v41, 1, v42) == 1)
        {

          v45 = 0;
        }

        else
        {
          v61 = v43;
          v46 = *(v0 + 64);
          sub_24AEC5A6C(v41, v46, &qword_27EFC01E8, &qword_24AEC8CE0);
          v47 = v44(v46, 1, v42);
          if (v47 == 1)
          {
            __break(1u);
            return MEMORY[0x2822003E8](v47, v48, v49, v50);
          }

          v51 = *(v0 + 64);
          v60 = objc_allocWithZone(FMLDevice);

          sub_24AEC5E1C();
          v59 = sub_24AEC62EC();

          sub_24AEC5E0C();
          v52 = sub_24AEC62EC();

          sub_24AEC5DEC();
          v53 = sub_24AEC62EC();

          v54 = sub_24AEC5E4C();
          v55 = sub_24AEC5DFC();
          v56 = sub_24AEC5E2C();
          LOBYTE(v58) = sub_24AEC5E3C() & 1;
          v45 = [v60 initWithIdentifier:v59 deviceName:v52 idsDeviceId:v53 isActive:v54 & 1 isThisDevice:v55 & 1 isCompanion:v56 & 1 isAutoMeCapable:v58];

          (*(v61 + 8))(v51, v42);
        }

        v39(v45);

        sub_24AE9C8F8(v39, v40);
      }

      sub_24AEA5484(*(v0 + 88), &qword_27EFC01E8, &qword_24AEC8CE0);
    }

    else if (v12 != *(v0 + 172) && v12 != *(v0 + 176) && v12 != *(v0 + 180))
    {
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v31 = sub_24AEC625C();
      __swift_project_value_buffer(v31, qword_280E21578);
      v32 = sub_24AEC623C();
      v33 = sub_24AEC644C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_24AE9B000, v32, v33, "Unknown me device update type", v34, 2u);
        MEMORY[0x24C234F80](v34, -1, -1);
      }

      v36 = *(v0 + 104);
      v35 = *(v0 + 112);
      v37 = *(v0 + 96);

      (*(v36 + 8))(v35, v37);
    }

    v57 = swift_task_alloc();
    *(v0 + 160) = v57;
    *v57 = v0;
    v57[1] = sub_24AEB2F5C;
    v47 = *(v0 + 120);
    v50 = *(v0 + 128);
    v48 = 0;
    v49 = 0;

    return MEMORY[0x2822003E8](v47, v48, v49, v50);
  }

  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v4 = sub_24AEC625C();
  __swift_project_value_buffer(v4, qword_280E21578);
  v5 = sub_24AEC623C();
  v6 = sub_24AEC645C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24AE9B000, v5, v6, "Successfully startMonitoringActiveLocationSharingDevice", v7, 2u);
    MEMORY[0x24C234F80](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24AEB3920(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AEC5BBC;

  return ObjCBootstrap.startMonitoringActiveLocationSharingDevice()();
}

uint64_t ObjCBootstrap.setActiveLocationSharingDevice(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24AEB3A3C, 0, 0);
}

uint64_t sub_24AEB3A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_24AEB3B2C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB3B2C()
{

  return MEMORY[0x2822009F8](sub_24AEB3C44, 0, 0);
}

uint64_t sub_24AEB3C44()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[10] = v1;

  if (v1)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_24AEB3E6C;
    v4 = v0[4];
    v3 = v0[5];

    return MEMORY[0x28215FB70](v4, v3);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v5 = sub_24AEC625C();
    __swift_project_value_buffer(v5, qword_280E21578);
    v6 = sub_24AEC623C();
    v7 = sub_24AEC644C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AE9B000, v6, v7, "Missing FindMyLocate.Session!", v8, 2u);
      MEMORY[0x24C234F80](v8, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[3] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24AEB3E6C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24AEB40A4;
  }

  else
  {
    v2 = sub_24AEB3F80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEB3F80()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = sub_24AEC625C();
  __swift_project_value_buffer(v1, qword_280E21578);
  v2 = sub_24AEC623C();
  v3 = sub_24AEC645C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE9B000, v2, v3, "Successfully set active location sharing device", v4, 2u);
    MEMORY[0x24C234F80](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AEB40A4()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_24AEC625C();
  __swift_project_value_buffer(v2, qword_280E21578);
  v3 = v1;
  v4 = sub_24AEC623C();
  v5 = sub_24AEC644C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = sub_24AEC5C9C();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AE9B000, v4, v5, "Error setting active location sharing device: %{public}@", v6, 0xCu);
    sub_24AEA5484(v7, &qword_27EFC0148, &qword_24AEC8A48);
    MEMORY[0x24C234F80](v7, -1, -1);
    MEMORY[0x24C234F80](v6, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24AEB43C8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_24AEC62FC();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_24AEC5B64;

  return ObjCBootstrap.setActiveLocationSharingDevice(_:)(v5, v7);
}

uint64_t ObjCBootstrap.getActiveLocationSharingDevice()()
{
  v1[4] = v0;
  v1[5] = swift_getObjectType();
  v2 = sub_24AEC5E5C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB4580, 0, 0);
}

uint64_t sub_24AEB4580()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_24AEB4670;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB4670()
{

  return MEMORY[0x2822009F8](sub_24AEB4788, 0, 0);
}

uint64_t sub_24AEB4788()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[13] = v1;

  if (v1)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_24AEB49D0;
    v3 = v0[10];

    return MEMORY[0x28215FB40](v3, 1);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v4 = sub_24AEC625C();
    __swift_project_value_buffer(v4, qword_280E21578);
    v5 = sub_24AEC623C();
    v6 = sub_24AEC644C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24AE9B000, v5, v6, "Missing FindMyLocate.Session!", v7, 2u);
      MEMORY[0x24C234F80](v7, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[3] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24AEB49D0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24AEB4DCC;
  }

  else
  {
    v2 = sub_24AEB4AE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEB4AE4()
{
  v30 = v0;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_24AEC625C();
  __swift_project_value_buffer(v5, qword_280E21578);
  v28 = *(v4 + 16);
  v28(v1, v2, v3);
  v6 = sub_24AEC623C();
  v7 = sub_24AEC645C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v12 = 136315138;
    sub_24AEC59BC(&qword_27EFC0158, MEMORY[0x277D092B0], MEMORY[0x277D092B8]);
    v13 = sub_24AEC663C();
    v15 = v14;
    v26 = v7;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = v16;
    v18 = sub_24AEBFE20(v13, v15, &v29);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_24AE9B000, v6, v26, "Successfully get active location sharing device: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C234F80](v27, -1, -1);
    MEMORY[0x24C234F80](v12, -1, -1);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v10);
    v17 = v19;
  }

  v20 = v0[10];
  v21 = v0[8];
  v22 = v0[6];
  sub_24AEC52B4(0, &qword_27EFC0150, off_278FFF8D8);
  v28(v21, v20, v22);
  v23 = sub_24AEA1530(v21);

  v17(v20, v22);

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_24AEB4DCC()
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_24AEC625C();
  __swift_project_value_buffer(v2, qword_280E21578);
  v3 = v1;
  v4 = sub_24AEC623C();
  v5 = sub_24AEC644C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = sub_24AEC5C9C();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AE9B000, v4, v5, "Error getting active location sharing device: %{public}@", v6, 0xCu);
    sub_24AEA5484(v7, &qword_27EFC0148, &qword_24AEC8A48);
    MEMORY[0x24C234F80](v7, -1, -1);
    MEMORY[0x24C234F80](v6, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24AEB50F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AEB51A0;

  return ObjCBootstrap.getActiveLocationSharingDevice()();
}

uint64_t sub_24AEB51A0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_24AEC5C9C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t ObjCBootstrap.getFriends(with:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v2[27] = swift_getObjectType();
  v3 = sub_24AEC5EEC();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v4 = sub_24AEC626C();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = sub_24AEC628C();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB54E8, 0, 0);
}

uint64_t sub_24AEB54E8()
{
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *(v1 + 16) = *(v0 + 208);
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_24AEB55D8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB55D8()
{

  return MEMORY[0x2822009F8](sub_24AEB56F0, 0, 0);
}

uint64_t sub_24AEB56F0()
{
  v1 = *(v0[26] + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  v0[42] = v1;

  if (v1)
  {
    v2 = v0[25];
    if (v2 > 1)
    {
      if ((v2 - 2) < 2)
      {
        if (qword_280E21548 != -1)
        {
          swift_once();
        }

        v3 = sub_24AEC625C();
        __swift_project_value_buffer(v3, qword_280E21578);
        v4 = sub_24AEC623C();
        v5 = sub_24AEC645C();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_32;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "getFriends with unsupported handle Type, return emtpy list";
LABEL_31:
        _os_log_impl(&dword_24AE9B000, v4, v5, v7, v6, 2u);
        MEMORY[0x24C234F80](v6, -1, -1);
LABEL_32:

        v18 = v0[1];
        v19 = MEMORY[0x277D84F90];

        return v18(v19);
      }

      if (v2 == 4)
      {
        v15 = swift_task_alloc();
        v0[49] = v15;
        *v15 = v0;
        v15[1] = sub_24AEB67FC;

        return MEMORY[0x28215FB28]();
      }

LABEL_27:
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v17 = sub_24AEC625C();
      __swift_project_value_buffer(v17, qword_280E21578);
      v4 = sub_24AEC623C();
      v5 = sub_24AEC644C();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_32;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "getFriends with unknown handle Type, return empty list";
      goto LABEL_31;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_27;
      }

      v14 = swift_task_alloc();
      v0[46] = v14;
      *v14 = v0;
      v14[1] = sub_24AEB6228;

      return MEMORY[0x28215FB60]();
    }

    else
    {
      v16 = swift_task_alloc();
      v0[43] = v16;
      *v16 = v0;
      v16[1] = sub_24AEB5C54;

      return MEMORY[0x28215FA40]();
    }
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v8 = sub_24AEC625C();
    __swift_project_value_buffer(v8, qword_280E21578);
    v9 = sub_24AEC623C();
    v10 = sub_24AEC644C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AE9B000, v9, v10, "Missing FindMyLocate.Session!", v11, 2u);
      MEMORY[0x24C234F80](v11, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    v0[21] = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24AEB5C54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_24AEB6DD4;
  }

  else
  {
    v4 = sub_24AEB5D68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AEB5D68()
{
  v38 = v0;
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v36 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[26];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[18] = sub_24AEC3F3C;
  v0[19] = v8;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_24AEA5684;
  v0[17] = &block_descriptor_57;
  v9 = _Block_copy(v0 + 14);
  v10 = v7;

  sub_24AEC627C();
  v0[24] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v36);

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v11 = sub_24AEC625C();
  __swift_project_value_buffer(v11, qword_280E21578);

  v12 = sub_24AEC623C();
  v13 = sub_24AEC645C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[44];
    v15 = v0[28];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x24C234690](v14, v15);
    v20 = sub_24AEBFE20(v18, v19, &v37);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24AE9B000, v12, v13, "Followers: %s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C234F80](v17, -1, -1);
    MEMORY[0x24C234F80](v16, -1, -1);
  }

  v21 = v0[44];
  v37 = MEMORY[0x277D84F90];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[29];
    sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v26 = *(v23 + 16);
    v24 = v23 + 16;
    v25 = v26;
    v27 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v35 = *(v24 + 56);
    do
    {
      v28 = v0[32];
      v29 = v0[33];
      v30 = v0[28];
      v25(v29, v27, v30);
      v25(v28, v29, v30);
      FMLFriend.init(_:)(v28);
      v31 = (*(v24 - 8))(v29, v30);
      MEMORY[0x24C234660](v31);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v27 += v35;
      --v22;
    }

    while (v22);
    v32 = v37;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v33 = v0[1];

  return v33(v32);
}

uint64_t sub_24AEB6228(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_24AEB6E84;
  }

  else
  {
    v4 = sub_24AEB633C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AEB633C()
{
  v38 = v0;
  v1 = v0[47];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v36 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[26];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[12] = sub_24AEC3F18;
  v0[13] = v8;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24AEA5684;
  v0[11] = &block_descriptor_50;
  v9 = _Block_copy(v0 + 8);
  v10 = v7;

  sub_24AEC627C();
  v0[23] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v36);

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v11 = sub_24AEC625C();
  __swift_project_value_buffer(v11, qword_280E21578);

  v12 = sub_24AEC623C();
  v13 = sub_24AEC645C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[47];
    v15 = v0[28];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x24C234690](v14, v15);
    v20 = sub_24AEBFE20(v18, v19, &v37);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24AE9B000, v12, v13, "Followings: %s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C234F80](v17, -1, -1);
    MEMORY[0x24C234F80](v16, -1, -1);
  }

  v21 = v0[47];
  v37 = MEMORY[0x277D84F90];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[29];
    sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v26 = *(v23 + 16);
    v24 = v23 + 16;
    v25 = v26;
    v27 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v35 = *(v24 + 56);
    do
    {
      v29 = v0[31];
      v28 = v0[32];
      v30 = v0[28];
      v25(v29, v27, v30);
      v25(v28, v29, v30);
      FMLFriend.init(_:)(v28);
      v31 = (*(v24 - 8))(v29, v30);
      MEMORY[0x24C234660](v31);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v27 += v35;
      --v22;
    }

    while (v22);
    v32 = v37;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v33 = v0[1];

  return v33(v32);
}

uint64_t sub_24AEB67FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v4 = sub_24AEB6F34;
  }

  else
  {
    v4 = sub_24AEB6910;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AEB6910()
{
  v38 = v0;
  v1 = v0[50];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v36 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[26];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[6] = sub_24AEC3E78;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AEA5684;
  v0[5] = &block_descriptor_0;
  v9 = _Block_copy(v0 + 2);
  v10 = v7;

  sub_24AEC627C();
  v0[22] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v36);

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v11 = sub_24AEC625C();
  __swift_project_value_buffer(v11, qword_280E21578);

  v12 = sub_24AEC623C();
  v13 = sub_24AEC645C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[50];
    v15 = v0[28];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x24C234690](v14, v15);
    v20 = sub_24AEBFE20(v18, v19, &v37);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24AE9B000, v12, v13, "Pending Offers: %s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C234F80](v17, -1, -1);
    MEMORY[0x24C234F80](v16, -1, -1);
  }

  v21 = v0[50];
  v37 = MEMORY[0x277D84F90];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[29];
    sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v26 = *(v23 + 16);
    v24 = v23 + 16;
    v25 = v26;
    v27 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v35 = *(v24 + 56);
    do
    {
      v28 = v0[32];
      v29 = v0[30];
      v30 = v0[28];
      v25(v29, v27, v30);
      v25(v28, v29, v30);
      FMLFriend.init(_:)(v28);
      v31 = (*(v24 - 8))(v29, v30);
      MEMORY[0x24C234660](v31);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v27 += v35;
      --v22;
    }

    while (v22);
    v32 = v37;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v33 = v0[1];

  return v33(v32);
}

uint64_t sub_24AEB6DD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEB6E84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEB6F34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEB6FE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v43 = a3;
  v44 = a1;
  v53 = sub_24AEC5F4C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24AEC5EEC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v42 - v11;
  v12 = sub_24AEC4F6C(MEMORY[0x277D84F90]);
  v13 = *(a2 + 16);
  if (v13)
  {
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v16 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v50 = (v4 + 8);
    v51 = v15;
    v48 = *(v14 + 56);
    v49 = (v14 - 8);
    v45 = (v14 + 24);
    v46 = (v14 + 16);
    v47 = v14;
    while (1)
    {
      v54 = v16;
      v55 = v13;
      v17 = v56;
      v18 = v51;
      (v51)(v56);
      v19 = v52;
      sub_24AEC5ECC();
      v20 = sub_24AEC5EFC();
      v22 = v21;
      (*v50)(v19, v53);
      v23 = v17;
      v24 = v6;
      v18(v10, v23, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v12;
      v27 = sub_24AEC0A40(v20, v22, sub_24AEBF7A0);
      v28 = v12[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (v12[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24AEC1B08();
        }
      }

      else
      {
        sub_24AEC0DC4(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_24AEC0A40(v20, v22, sub_24AEBF7A0);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_17;
        }

        v27 = v32;
      }

      v6 = v24;
      v34 = v48;
      if (v31)
      {

        v12 = v57;
        (*v45)(v57[7] + v27 * v34, v10, v24);
        (*v49)(v56, v24);
      }

      else
      {
        v12 = v57;
        v57[(v27 >> 6) + 8] |= 1 << v27;
        v35 = (v12[6] + 16 * v27);
        *v35 = v20;
        v35[1] = v22;
        (*v46)(v12[7] + v27 * v34, v10, v24);
        (*v49)(v56, v24);
        v36 = v12[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_16;
        }

        v12[2] = v38;
      }

      v16 = v54 + v34;
      v13 = v55 - 1;
      if (v55 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_24AEC666C();
    __break(1u);
  }

  else
  {
LABEL_14:
    v39 = v44;
    v40 = *v43;
    swift_beginAccess();
    *(v39 + v40) = v12;
  }

  return result;
}

uint64_t sub_24AEB7578(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24AEB7634;

  return ObjCBootstrap.getFriends(with:)(a1);
}

uint64_t sub_24AEB7634(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_24AEC5C9C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v10 = sub_24AEC636C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t ObjCBootstrap.canShareLocationWithHandle(_:isFromGroup:)(uint64_t a1, char a2)
{
  *(v3 + 176) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  return MEMORY[0x2822009F8](sub_24AEB77F4, 0, 0);
}

uint64_t sub_24AEB77F4()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24AEB7924;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0160, &qword_24AEC8A68);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24AEB7ABC;
  *(v0 + 104) = &block_descriptor_60;
  *(v0 + 112) = v4;
  [v2 friendshipStateWithHandle:v3 isFromGroup:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24AEB7924()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_24AEB7A50;
  }

  else
  {
    v2 = sub_24AEB7A34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEB7A50(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24AEB7ABC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC00F8, &qword_24AEC8950);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24AEB7D18(void *a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 184) = a2;
  *(v4 + 152) = a1;
  *(v4 + 160) = a4;
  *(v4 + 168) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_24AEB7DA8, 0, 0);
}

uint64_t sub_24AEB7DA8()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24AEB7ED8;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0160, &qword_24AEC8A68);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24AEB7ABC;
  *(v0 + 104) = &block_descriptor_132;
  *(v0 + 112) = v4;
  [v2 friendshipStateWithHandle:v3 isFromGroup:v1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24AEB7ED8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_24AEB8070;
  }

  else
  {
    v2 = sub_24AEB7FE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AEB7FE8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  (*(v1 + 16))(v1, *(v0 + 144), 0);
  _Block_release(*(v0 + 168));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AEB8070(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v5 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_willThrow();

  v6 = sub_24AEC5C9C();
  (*(v2 + 16))(v2, 0, v6);

  _Block_release(*(v1 + 168));
  v7 = *(v1 + 8);

  return v7();
}

uint64_t ObjCBootstrap.friendshipStateWithHandle(_:isFromGroup:)(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = swift_getObjectType();
  v4 = sub_24AEC5F4C();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_24AEC5D5C();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB8254, 0, 0);
}

uint64_t sub_24AEB8254()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_24AEB8344;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB8344()
{

  return MEMORY[0x2822009F8](sub_24AEB845C, 0, 0);
}

uint64_t sub_24AEB845C()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 120) = v1;

  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = [*(v0 + 32) identifier];
    sub_24AEC62FC();

    sub_24AEA07E0(MEMORY[0x277D84F90]);
    sub_24AEC5F3C();
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_24AEB8728;
    v5 = *(v0 + 96);
    v6 = *(v0 + 72);

    return MEMORY[0x28215FAA0](v5, v6, v2);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v7 = sub_24AEC625C();
    __swift_project_value_buffer(v7, qword_280E21578);
    v8 = sub_24AEC623C();
    v9 = sub_24AEC644C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24AE9B000, v8, v9, "Missing FindMyLocate.Session!", v10, 2u);
      MEMORY[0x24C234F80](v10, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    *(v0 + 24) = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24AEB8728()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_24AEB8984;
  }

  else
  {
    v3 = sub_24AEB8890;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEB8890()
{
  v1 = sub_24AEC5D3C();
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  if (v1)
  {
    v5 = sub_24AEC5D4C();

    (*(v3 + 8))(v2, v4);
    v6 = ~v5 & 1;
  }

  else
  {
    (*(v3 + 8))(v0[12], v0[10]);

    v6 = 2;
  }

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_24AEB8984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEB8B8C(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_24AEB8C58;

  return ObjCBootstrap.friendshipStateWithHandle(_:isFromGroup:)(v8, a2);
}

uint64_t sub_24AEB8C58(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_24AEC5C9C();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t ObjCBootstrap.getOfferExpirationForHandle(_:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = swift_getObjectType();
  v6 = sub_24AEC5F4C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEB8EDC, 0, 0);
}

uint64_t sub_24AEB8EDC()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_24AEB8FCC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEB8FCC()
{

  return MEMORY[0x2822009F8](sub_24AEB90E4, 0, 0);
}

uint64_t sub_24AEB90E4()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 120) = v1;

  if (v1)
  {
    v2 = [*(v0 + 40) identifier];
    sub_24AEC62FC();

    sub_24AEA07E0(MEMORY[0x277D84F90]);
    sub_24AEC5F3C();
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_24AEB9394;
    v4 = *(v0 + 96);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 32);

    return MEMORY[0x28215FAA8](v7, v4, v5, v6);
  }

  else
  {
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v8 = sub_24AEC625C();
    __swift_project_value_buffer(v8, qword_280E21578);
    v9 = sub_24AEC623C();
    v10 = sub_24AEC644C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AE9B000, v9, v10, "Missing FindMyLocate.Session!", v11, 2u);
      MEMORY[0x24C234F80](v11, -1, -1);
    }

    type metadata accessor for FMLSessionError(0);
    *(v0 + 24) = 5;
    sub_24AEC2A3C(MEMORY[0x277D84F90]);
    sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError, &unk_24AEC8754);
    sub_24AEC5C8C();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24AEB9394()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_24AEB956C;
  }

  else
  {
    v3 = sub_24AEB94FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEB94FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEB956C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AEB9768(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  v4[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[5] = v9;
  v4[6] = _Block_copy(a3);
  if (a2)
  {
    a2 = sub_24AEC62FC();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[7] = v11;
  v12 = a1;
  a4;
  v13 = swift_task_alloc();
  v4[8] = v13;
  *v13 = v4;
  v13[1] = sub_24AEB98B4;

  return ObjCBootstrap.getOfferExpirationForHandle(_:groupId:)(v9, v12, a2, v11);
}

uint64_t sub_24AEB98B4()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    v6 = v2[6];
    v7 = sub_24AEC5C9C();

    (v6)[2](v6, 0, v7);
    _Block_release(v6);
  }

  else
  {
    v8 = v2[4];
    sub_24AEC5340(v2[5], v8, &qword_27EFBFFD8, &qword_24AEC8568);
    v9 = sub_24AEC5CDC();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v8, 1, v9);
    v12 = 0;
    if (v11 != 1)
    {
      v13 = v2[4];
      v12 = sub_24AEC5CAC();
      (*(v10 + 8))(v13, v9);
    }

    v14 = v2[6];
    (v14)[2](v14, v12, 0);
    _Block_release(v14);
  }

  v15 = *(v5 + 8);

  return v15();
}

void __swiftcall ObjCBootstrap.cachedLocation(for:includeAddress:)(FMLLocation_optional *__return_ptr retstr, FMLHandle a2, Swift::Bool includeAddress)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0168, &qword_24AEC8A80);
  sub_24AEC648C();
}

void sub_24AEB9BC4(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v7 = sub_24AEC625C();
  __swift_project_value_buffer(v7, qword_280E21578);
  v8 = a1;
  v9 = sub_24AEC623C();
  v10 = sub_24AEC645C();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48[0] = v13;
    *v11 = 136446722;
    *(v11 + 4) = sub_24AEBFE20(0xD000000000000023, 0x800000024AEC7E40, v48);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 1024;
    *(v11 + 24) = a2 & 1;
    v14 = v8;
    _os_log_impl(&dword_24AE9B000, v9, v10, "%{public}s for handle: %@ includeAddress: %{BOOL}d", v11, 0x1Cu);
    sub_24AEA5484(v12, &qword_27EFC0148, &qword_24AEC8A48);
    MEMORY[0x24C234F80](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C234F80](v13, -1, -1);
    v15 = v11;
    a4 = v43;
    MEMORY[0x24C234F80](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationForHandles;
  swift_beginAccess();
  v17 = *(a3 + v16);

  v18 = sub_24AEBA064(v8, v17);

  if (v18 && (a2 & 1) != 0)
  {
    v19 = [v18 address];
    if (v19)
    {

      v20 = v18;
      v21 = sub_24AEC623C();
      v22 = sub_24AEC645C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49 = v46;
        *v23 = 136315138;
        v24 = v20;
        v25 = [v24 description];
        v44 = v22;
        v26 = a4;
        v27 = sub_24AEC62FC();
        v29 = v28;

        v30 = v27;
        a4 = v26;
        v31 = sub_24AEBFE20(v30, v29, &v49);

        *(v23 + 4) = v31;
        _os_log_impl(&dword_24AE9B000, v21, v44, "Cached location: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x24C234F80](v46, -1, -1);
        MEMORY[0x24C234F80](v23, -1, -1);
      }
    }

    else
    {
      v32 = v18;
      v33 = sub_24AEC623C();
      v34 = sub_24AEC645C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v35 = 136315138;
        v36 = v32;
        v37 = [v36 description];
        v38 = sub_24AEC62FC();
        v39 = a4;
        v41 = v40;

        v42 = sub_24AEBFE20(v38, v41, &v49);
        a4 = v39;

        *(v35 + 4) = v42;
        _os_log_impl(&dword_24AE9B000, v33, v34, "Found cached location: %s, but no address!", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x24C234F80](v47, -1, -1);
        MEMORY[0x24C234F80](v35, -1, -1);
      }

      else
      {
      }

      v18 = 0;
    }
  }

  *a4 = v18;
}

void *sub_24AEBA064(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_24AEC65BC();

    if (v4)
    {
      sub_24AEC52B4(0, &qword_27EFC01E0, off_278FFF8F0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_24AEC09FC(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_24AEBA200@<X0>(uint64_t *a1@<X8>)
{
  v36 = sub_24AEC5EEC();
  v33 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - v5;
  v7 = sub_24AEBA5A0(1);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v8 = sub_24AEC625C();
  __swift_project_value_buffer(v8, qword_280E21578);

  v9 = sub_24AEC623C();
  v10 = sub_24AEC645C();

  v11 = os_log_type_enabled(v9, v10);
  v32 = a1;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v13 = v37;
    *v12 = 136446466;
    *(v12 + 4) = sub_24AEBFE20(0xD000000000000024, 0x800000024AEC7E10, &v37);
    *(v12 + 12) = 2080;
    v14 = MEMORY[0x24C234690](v7, v36);
    v16 = v7;
    v17 = sub_24AEBFE20(v14, v15, &v37);

    *(v12 + 14) = v17;
    v7 = v16;
    _os_log_impl(&dword_24AE9B000, v9, v10, "%{public}s: %s", v12, 0x16u);
    swift_arrayDestroy();
    v18 = v13;
    a1 = v32;
    MEMORY[0x24C234F80](v18, -1, -1);
    MEMORY[0x24C234F80](v12, -1, -1);
  }

  v37 = MEMORY[0x277D84F90];
  v19 = *(v7 + 16);
  if (v19)
  {
    v31[2] = v1;
    v20 = sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v21 = v33 + 16;
    v22 = *(v33 + 16);
    v23 = *(v33 + 80);
    v31[1] = v7;
    v24 = v7 + ((v23 + 32) & ~v23);
    v33 = *(v33 + 72);
    v34 = v20;
    v25 = (v21 - 8);
    do
    {
      v26 = v36;
      v22(v6, v24, v36);
      v27 = v35;
      v22(v35, v6, v26);
      FMLFriend.init(_:)(v27);
      v28 = (*v25)(v6, v26);
      MEMORY[0x24C234660](v28);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v24 += v33;
      --v19;
    }

    while (v19);
    v29 = v37;

    a1 = v32;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  *a1 = v29;
  return result;
}

uint64_t sub_24AEBA5A0(int64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  MEMORY[0x28223BE20](v5 - 8);
  v146 = &v137 - v6;
  v7 = sub_24AEC5CFC();
  v140 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v137 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = &v137 - v10;
  v165 = sub_24AEC5F4C();
  v11 = *(v165 - 8);
  v12 = MEMORY[0x28223BE20](v165);
  v152 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v137 - v14;
  v156 = sub_24AEC5EEC();
  v149 = *(v156 - 8);
  v16 = MEMORY[0x28223BE20](v156);
  v150 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v137 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v157 = &v137 - v21;
  MEMORY[0x28223BE20](v20);
  v153 = &v137 - v22;
  v23 = sub_24AEC5CDC();
  v148 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEC609C();
  v155 = v25;
  sub_24AEC5FBC();
  v164 = v15;
  v147 = v23;
  v141 = v7;
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_13;
    }

    if (a1 != 1)
    {
      goto LABEL_3;
    }

    v28 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followings;
    v26 = swift_beginAccess();
    v29 = *&v2[v28];
    v30 = *(v29 + 16);
    if (!v30)
    {
      goto LABEL_16;
    }

    v31 = v11;
    v144 = ObjectType;
    v143 = 1;
    v32 = sub_24AEBFD24(v30, 0);
    v168 = sub_24AEC2798(&v169, &v32[(*(v149 + 80) + 32) & ~*(v149 + 80)], v30, v29);
    v11 = v169;
    a1 = v170;
    ObjectType = v171;

    v26 = sub_24AEC5260(v11);
    if (v168 == v30)
    {
LABEL_15:
      a1 = v143;
      ObjectType = v144;
      v27 = v32;
      v11 = v31;
      goto LABEL_17;
    }

    __break(1u);
  }

  else if ((a1 - 2) < 2)
  {
LABEL_3:
    v26 = sub_24AE9CCB0(a1);
    v27 = v26;
    goto LABEL_17;
  }

  if (a1 != 4)
  {
    goto LABEL_3;
  }

  v33 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_pendingOffers;
  v26 = swift_beginAccess();
  v34 = *&v2[v33];
  v35 = *(v34 + 16);
  if (!v35)
  {
    goto LABEL_16;
  }

  v31 = v11;
  v144 = ObjectType;
  v143 = 4;
  v32 = sub_24AEBFD24(v35, 0);
  v168 = sub_24AEC2798(&v169, &v32[(*(v149 + 80) + 32) & ~*(v149 + 80)], v35, v34);
  v11 = v169;
  a1 = v170;
  ObjectType = v171;

  v26 = sub_24AEC5260(v11);
  if (v168 == v35)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_13:
  v36 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers;
  v26 = swift_beginAccess();
  v37 = *&v2[v36];
  v38 = *(v37 + 16);
  if (v38)
  {
    v31 = v11;
    v144 = ObjectType;
    v143 = a1;
    v32 = sub_24AEBFD24(v38, 0);
    v168 = sub_24AEC2798(&v169, &v32[(*(v149 + 80) + 32) & ~*(v149 + 80)], v38, v37);
    v39 = v169;
    a1 = v170;
    ObjectType = v171;

    v26 = sub_24AEC5260(v39);
    if (v168 != v38)
    {
      __break(1u);
      goto LABEL_63;
    }

    goto LABEL_15;
  }

LABEL_16:
  v27 = MEMORY[0x277D84F90];
LABEL_17:
  MEMORY[0x28223BE20](v26);
  v135 = v155;

  v40 = sub_24AEAA2C0(sub_24AEC516C, (&v137 - 4), v27);
  v41 = v27;
  if (*(v40 + 16))
  {
    v163 = 0;
    v37 = sub_24AEC4F6C(MEMORY[0x277D84F90]);
    v43 = *(v27 + 16);
    v142 = v27;
    if (v43)
    {
      v144 = ObjectType;
      v143 = a1;
      v138 = v2;
      v44 = *(v149 + 16);
      v45 = v27 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
      v46 = *(v149 + 72);
      v166 = (v11 + 8);
      v160 = (v149 + 8);
      v161 = v46;
      *&v42 = 141558275;
      v145 = v42;
      v47 = v156;
      v48 = v153;
      v167 = v44;
      v168 = (v149 + 16);
      v162 = v40;
      do
      {
        v44(v48, v45, v47);
        v55 = sub_24AEAA1B4(v48, v40);
        v56 = v164;
        sub_24AEC5ECC();
        if (v55)
        {
          v158 = v43;
          v159 = v37;
          v57 = sub_24AEC5F0C();
          v58 = v56;
          v59 = v165;
          v60 = *v166;
          v61 = (*v166)(v56, v165);
          MEMORY[0x28223BE20](v61);
          v135 = v155;
          v62 = v163;
          v63 = sub_24AEC1D88(sub_24AEC5268, (&v137 - 4), v57);
          v163 = v62;

          if (v63[2])
          {
            v64 = v152;
            sub_24AEC5ECC();
            sub_24AEC5F2C();

            v60(v64, v59);
            v65 = v157;
            sub_24AEC5E6C();
            sub_24AEC5ECC();
            v154 = sub_24AEC5EFC();
            v67 = v66;
            v60(v64, v59);
            v68 = v65;
            v69 = v151;
            v70 = v156;
            v167(v151, v68, v156);
            v71 = v159;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v169 = v71;
            v73 = v69;
            v74 = v68;
            v48 = v153;
            sub_24AEC14BC(v73, v154, v67, isUniquelyReferenced_nonNull_native);

            v75 = *v160;
            (*v160)(v74, v70);
            v60(v58, v59);
            v47 = v70;
            v75(v48, v70);
            v37 = v169;
            v43 = v158;
          }

          else
          {

            if (qword_280E21548 != -1)
            {
              swift_once();
            }

            v76 = sub_24AEC625C();
            __swift_project_value_buffer(v76, qword_280E21578);
            v77 = v150;
            v47 = v156;
            v167(v150, v48, v156);
            v78 = sub_24AEC623C();
            v79 = sub_24AEC645C();
            v80 = os_log_type_enabled(v78, v79);
            v43 = v158;
            if (v80)
            {
              v81 = swift_slowAlloc();
              v82 = v77;
              v154 = swift_slowAlloc();
              v169 = v154;
              *v81 = v145;
              *(v81 + 4) = 1752392040;
              *(v81 + 12) = 2081;
              sub_24AEC59BC(&qword_27EFC0198, MEMORY[0x277D092C0], MEMORY[0x277D092D0]);
              v83 = sub_24AEC663C();
              v85 = v84;
              v86 = *v160;
              v87 = v82;
              v48 = v153;
              (*v160)(v87, v156);
              v88 = sub_24AEBFE20(v83, v85, &v169);
              v47 = v156;

              *(v81 + 14) = v88;
              _os_log_impl(&dword_24AE9B000, v78, v79, "friend: %{private,mask.hash}s expired", v81, 0x16u);
              v89 = v154;
              __swift_destroy_boxed_opaque_existential_0(v154);
              MEMORY[0x24C234F80](v89, -1, -1);
              MEMORY[0x24C234F80](v81, -1, -1);

              v86(v48, v47);
            }

            else
            {

              v90 = *v160;
              (*v160)(v77, v47);
              v90(v48, v47);
            }

            v37 = v159;
          }
        }

        else
        {
          v49 = v37;
          v50 = sub_24AEC5EFC();
          v52 = v51;
          (*v166)(v56, v165);
          v53 = v157;
          v44(v157, v48, v47);
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v169 = v49;
          sub_24AEC14BC(v53, v50, v52, v54);

          (*v160)(v48, v47);
          v37 = v169;
        }

        v40 = v162;
        v45 += v161;
        --v43;
        v44 = v167;
      }

      while (v43);

      v2 = v138;
      a1 = v143;
      ObjectType = v144;
      if (v143 > 1)
      {
LABEL_32:
        if ((a1 - 2) < 2)
        {
          v91 = v37;
          if (qword_280E21548 != -1)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v92 = sub_24AEC625C();
            __swift_project_value_buffer(v92, qword_280E21578);
            v93 = sub_24AEC623C();
            v94 = sub_24AEC645C();
            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v138 = v2;
              v168 = v96;
              *v95 = 141558275;
              *(v95 + 4) = 1752392040;
              *(v95 + 12) = 2081;
              v97 = ObjectType;
              v98 = v140;
              v99 = *(v140 + 104);
              v100 = MEMORY[0x277D09020];
              v169 = v96;
              if (a1 != 3)
              {
                v100 = MEMORY[0x277D09018];
              }

              v101 = *v100;
              v102 = v139;
              v159 = v91;
              v103 = v141;
              v99(v139, v101, v141);
              sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038], MEMORY[0x277D09040]);
              v104 = sub_24AEC663C();
              v106 = v105;
              v107 = v103;
              v108 = v159;
              (*(v98 + 8))(v102, v107);
              ObjectType = v97;
              v109 = sub_24AEBFE20(v104, v106, &v169);

              *(v95 + 14) = v109;
              v110 = v94;
              v37 = v108;
              _os_log_impl(&dword_24AE9B000, v93, v110, "validFriends: %{private,mask.hash}s not supported", v95, 0x16u);
              v111 = v168;
              __swift_destroy_boxed_opaque_existential_0(v168);
              v2 = v138;
              MEMORY[0x24C234F80](v111, -1, -1);
              MEMORY[0x24C234F80](v95, -1, -1);
LABEL_52:

LABEL_53:
              v113 = v146;
            }

            else
            {

              v113 = v146;
              v37 = v91;
            }

LABEL_54:
            v127 = sub_24AEC63EC();
            (*(*(v127 - 8) + 56))(v113, 1, 1, v127);
            v128 = swift_allocObject();
            v128[2] = 0;
            v128[3] = 0;
            v128[4] = v2;
            v128[5] = a1;
            v128[6] = v142;
            v128[7] = ObjectType;
            v129 = v2;
            sub_24AEBF4DC(0, 0, v113, &unk_24AEC8CA8, v128);

            v130 = *(v37 + 16);
            if (!v130)
            {
              break;
            }

            a1 = sub_24AEBFD24(*(v37 + 16), 0);
            v131 = sub_24AEC2798(&v169, (a1 + ((*(v149 + 80) + 32) & ~*(v149 + 80))), v130, v37);
            ObjectType = v37;
            v132 = v169;
            v91 = v171;
            v2 = v172;

            sub_24AEC5260(v132);
            if (v131 == v130)
            {

              v133 = v148;
              v41 = a1;
              goto LABEL_59;
            }

            __break(1u);
LABEL_61:
            swift_once();
          }

          v41 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }

        if (a1 == 4)
        {
          v112 = &OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_pendingOffers;
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    else
    {

      if (a1 > 1)
      {
        goto LABEL_32;
      }
    }

    if (!a1)
    {
      v112 = &OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers;
      goto LABEL_47;
    }

    if (a1 == 1)
    {
      v112 = &OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followings;
LABEL_47:
      v114 = *v112;
      swift_beginAccess();
      *&v2[v114] = v37;

      goto LABEL_53;
    }

LABEL_48:
    if (qword_280E21548 == -1)
    {
LABEL_49:
      v115 = sub_24AEC625C();
      __swift_project_value_buffer(v115, qword_280E21578);
      v93 = sub_24AEC623C();
      v116 = sub_24AEC645C();
      if (!os_log_type_enabled(v93, v116))
      {
        goto LABEL_52;
      }

      v144 = ObjectType;
      v159 = v37;
      v138 = v2;
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v169 = v118;
      *v117 = 141558275;
      *(v117 + 4) = 1752392040;
      *(v117 + 12) = 2081;
      if (a1 == 4)
      {
        v119 = v118;
        v120 = v140;
        v121 = v137;
        v122 = v141;
        (*(v140 + 104))(v137, *MEMORY[0x277D09010], v141);
        sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038], MEMORY[0x277D09040]);
        v123 = sub_24AEC663C();
        v125 = v124;
        (*(v120 + 8))(v121, v122);
        v126 = sub_24AEBFE20(v123, v125, &v169);

        *(v117 + 14) = v126;
        _os_log_impl(&dword_24AE9B000, v93, v116, "validFriends: %{private,mask.hash}s not supported", v117, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v119);
        MEMORY[0x24C234F80](v119, -1, -1);
        MEMORY[0x24C234F80](v117, -1, -1);

        v2 = v138;
        v113 = v146;
        v37 = v159;
        ObjectType = v144;
        goto LABEL_54;
      }

      v136 = 0;
      v135 = 72;
      result = sub_24AEC65DC();
      __break(1u);
      return result;
    }

LABEL_63:
    swift_once();
    goto LABEL_49;
  }

LABEL_58:
  v133 = v148;
LABEL_59:
  (*(v133 + 8))(v155, v147);
  return v41;
}

uint64_t sub_24AEBB8DC@<X0>(uint64_t *a1@<X8>)
{
  v36 = sub_24AEC5EEC();
  v33 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - v5;
  v7 = sub_24AEBA5A0(0);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v8 = sub_24AEC625C();
  __swift_project_value_buffer(v8, qword_280E21578);

  v9 = sub_24AEC623C();
  v10 = sub_24AEC645C();

  v11 = os_log_type_enabled(v9, v10);
  v32 = a1;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v13 = v37;
    *v12 = 136446466;
    *(v12 + 4) = sub_24AEBFE20(0xD000000000000022, 0x800000024AEC7DE0, &v37);
    *(v12 + 12) = 2080;
    v14 = MEMORY[0x24C234690](v7, v36);
    v16 = v7;
    v17 = sub_24AEBFE20(v14, v15, &v37);

    *(v12 + 14) = v17;
    v7 = v16;
    _os_log_impl(&dword_24AE9B000, v9, v10, "%{public}s: %s", v12, 0x16u);
    swift_arrayDestroy();
    v18 = v13;
    a1 = v32;
    MEMORY[0x24C234F80](v18, -1, -1);
    MEMORY[0x24C234F80](v12, -1, -1);
  }

  v37 = MEMORY[0x277D84F90];
  v19 = *(v7 + 16);
  if (v19)
  {
    v31[2] = v1;
    v20 = sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v21 = v33 + 16;
    v22 = *(v33 + 16);
    v23 = *(v33 + 80);
    v31[1] = v7;
    v24 = v7 + ((v23 + 32) & ~v23);
    v33 = *(v33 + 72);
    v34 = v20;
    v25 = (v21 - 8);
    do
    {
      v26 = v36;
      v22(v6, v24, v36);
      v27 = v35;
      v22(v35, v6, v26);
      FMLFriend.init(_:)(v27);
      v28 = (*v25)(v6, v26);
      MEMORY[0x24C234660](v28);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v24 += v33;
      --v19;
    }

    while (v19);
    v29 = v37;

    a1 = v32;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  *a1 = v29;
  return result;
}

id sub_24AEBBC94(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0170, &qword_24AEC8A88);
  sub_24AEC648C();

  sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
  v4 = sub_24AEC636C();

  return v4;
}

uint64_t sub_24AEBBD78(uint64_t a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0170, &qword_24AEC8A88);
  sub_24AEC648C();
  return v2;
}

uint64_t sub_24AEBBDF8@<X0>(uint64_t *a1@<X8>)
{
  v36 = sub_24AEC5EEC();
  v33 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - v5;
  v7 = sub_24AEBA5A0(4);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v8 = sub_24AEC625C();
  __swift_project_value_buffer(v8, qword_280E21578);

  v9 = sub_24AEC623C();
  v10 = sub_24AEC645C();

  v11 = os_log_type_enabled(v9, v10);
  v32 = a1;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v13 = v37;
    *v12 = 136446466;
    *(v12 + 4) = sub_24AEBFE20(0xD000000000000020, 0x800000024AEC7DB0, &v37);
    *(v12 + 12) = 2080;
    v14 = MEMORY[0x24C234690](v7, v36);
    v16 = v7;
    v17 = sub_24AEBFE20(v14, v15, &v37);

    *(v12 + 14) = v17;
    v7 = v16;
    _os_log_impl(&dword_24AE9B000, v9, v10, "%{public}s: %s", v12, 0x16u);
    swift_arrayDestroy();
    v18 = v13;
    a1 = v32;
    MEMORY[0x24C234F80](v18, -1, -1);
    MEMORY[0x24C234F80](v12, -1, -1);
  }

  v37 = MEMORY[0x277D84F90];
  v19 = *(v7 + 16);
  if (v19)
  {
    v31[2] = v1;
    v20 = sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v21 = v33 + 16;
    v22 = *(v33 + 16);
    v23 = *(v33 + 80);
    v31[1] = v7;
    v24 = v7 + ((v23 + 32) & ~v23);
    v33 = *(v33 + 72);
    v34 = v20;
    v25 = (v21 - 8);
    do
    {
      v26 = v36;
      v22(v6, v24, v36);
      v27 = v35;
      v22(v35, v6, v26);
      FMLFriend.init(_:)(v27);
      v28 = (*v25)(v6, v26);
      MEMORY[0x24C234660](v28);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v24 += v33;
      --v19;
    }

    while (v19);
    v29 = v37;

    a1 = v32;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  *a1 = v29;
  return result;
}

void *ObjCBootstrap.cachedOfferExpiration(for:groupId:)()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  return sub_24AEC648C();
}

uint64_t sub_24AEBC258@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a5;
  v75 = a4;
  v7 = sub_24AEC5F4C();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  v9 = MEMORY[0x28223BE20](v66);
  v65 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v71 = &v65 - v13;
  v14 = sub_24AEC5EEC();
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x28223BE20](v14);
  v72 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0188, &qword_24AEC8C98);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - v17;
  v19 = sub_24AEC5F7C();
  v20 = *(v19 - 1);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  if (!a2)
  {
    (*(v20 + 104))(v23, *MEMORY[0x277D09300], v19);
    sub_24AEC5F6C();
    (*(v20 + 8))(v23, v19);
  }

  sub_24AEC5F5C();
  v26 = *(v20 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    (*(v20 + 104))(v25, *MEMORY[0x277D09308], v19);
    if (v26(v18, 1, v19) != 1)
    {
      sub_24AEA5484(v18, &qword_27EFC0188, &qword_24AEC8C98);
    }
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
  }

  v27 = [v75 identifier];
  sub_24AEC62FC();

  v28 = sub_24AEC631C();
  v30 = v29;

  v31 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers;
  swift_beginAccess();
  v32 = *(a3 + v31);
  if (*(v32 + 16) && (, v33 = sub_24AEC0A40(v28, v30, sub_24AEBF7A0), v35 = v34, , (v35 & 1) != 0))
  {
    (*(v73 + 16))(v72, *(v32 + 56) + *(v73 + 72) * v33, v74);

    v36 = v67;
    sub_24AEC5ECC();
    v37 = sub_24AEC5F0C();
    (*(v68 + 8))(v36, v69);
    if (*(v37 + 16) && (v38 = sub_24AEC0AC4(v25), (v39 & 1) != 0))
    {
      v40 = v38;
      v41 = *(v37 + 56);
      v42 = sub_24AEC5CDC();
      v43 = *(v42 - 8);
      v44 = v43;
      v45 = v41 + *(v43 + 72) * v40;
      v46 = v71;
      (*(v43 + 16))(v71, v45, v42);

      (*(v44 + 56))(v46, 0, 1, v42);
    }

    else
    {

      v53 = sub_24AEC5CDC();
      v46 = v71;
      (*(*(v53 - 8) + 56))(v71, 1, 1, v53);
    }

    v54 = v70;
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v55 = sub_24AEC625C();
    __swift_project_value_buffer(v55, qword_280E21578);
    sub_24AEC5A6C(v46, v54, &qword_27EFBFFD8, &qword_24AEC8568);
    v56 = sub_24AEC623C();
    v57 = sub_24AEC645C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v77 = v59;
      *v58 = 136315138;
      sub_24AEC5A6C(v54, v65, &qword_27EFBFFD8, &qword_24AEC8568);
      v60 = sub_24AEC630C();
      v75 = v19;
      v61 = v60;
      v70 = v25;
      v63 = v62;
      sub_24AEA5484(v54, &qword_27EFBFFD8, &qword_24AEC8568);
      v64 = sub_24AEBFE20(v61, v63, &v77);

      *(v58 + 4) = v64;
      v46 = v71;
      _os_log_impl(&dword_24AE9B000, v56, v57, "Expiration date: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x24C234F80](v59, -1, -1);
      MEMORY[0x24C234F80](v58, -1, -1);

      (*(v73 + 8))(v72, v74);
      (*(v20 + 8))(v70, v75);
    }

    else
    {

      sub_24AEA5484(v54, &qword_27EFBFFD8, &qword_24AEC8568);
      (*(v73 + 8))(v72, v74);
      (*(v20 + 8))(v25, v19);
    }

    return sub_24AEC5340(v46, v76, &qword_27EFBFFD8, &qword_24AEC8568);
  }

  else
  {

    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v47 = sub_24AEC625C();
    __swift_project_value_buffer(v47, qword_280E21578);
    v48 = sub_24AEC623C();
    v49 = sub_24AEC645C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_24AE9B000, v48, v49, "Trying to get cached offer expiration for handle that is not a follower, returning nil", v50, 2u);
      MEMORY[0x24C234F80](v50, -1, -1);
    }

    (*(v20 + 8))(v25, v19);
    v51 = sub_24AEC5CDC();
    return (*(*(v51 - 8) + 56))(v76, 1, 1, v51);
  }
}

uint64_t ObjCBootstrap.cachedCanShareLocationWithHandle(_:isFromGroup:)(uint64_t a1, char a2)
{
  swift_getObjectType();
  type metadata accessor for FMLLocationShareState(0);
  sub_24AEC648C();
  return v3;
}

void sub_24AEBCE28(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v78 = a4;
  v80 = a2;
  v74 = sub_24AEC5F7C();
  v76 = *(v74 - 8);
  v6 = MEMORY[0x28223BE20](v74);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v66 - v8;
  v9 = sub_24AEC5F4C();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v66 - v12;
  v13 = sub_24AEC5EEC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v66 - v17;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v18 = sub_24AEC625C();
  v19 = __swift_project_value_buffer(v18, qword_280E21578);
  v20 = a1;
  v77 = v19;
  v21 = sub_24AEC623C();
  v22 = sub_24AEC645C();

  v23 = v13;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v79[0] = v26;
    *v24 = 136446722;
    *(v24 + 4) = sub_24AEBFE20(0xD000000000000030, 0x800000024AEC7D70, v79);
    *(v24 + 12) = 2112;
    *(v24 + 14) = v20;
    *v25 = v20;
    *(v24 + 22) = 1024;
    *(v24 + 24) = v80 & 1;
    v27 = v20;
    _os_log_impl(&dword_24AE9B000, v21, v22, "%{public}s for handle: %@ isFromGroup: %{BOOL}d", v24, 0x1Cu);
    sub_24AEA5484(v25, &qword_27EFC0148, &qword_24AEC8A48);
    MEMORY[0x24C234F80](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x24C234F80](v26, -1, -1);
    MEMORY[0x24C234F80](v24, -1, -1);
  }

  v28 = [v20 identifier];
  sub_24AEC62FC();

  v29 = sub_24AEC631C();
  v31 = v30;

  v32 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers;
  swift_beginAccess();
  v33 = *(a3 + v32);
  if (*(v33 + 16) && (, v34 = sub_24AEC0A40(v29, v31, sub_24AEBF7A0), v36 = v35, , (v36 & 1) != 0))
  {
    v37 = v14;
    v38 = *(v33 + 56) + *(v14 + 72) * v34;
    v39 = v75;
    v40 = v23;
    (*(v14 + 16))(v75, v38, v23);

    if ((v80 & 1) == 0)
    {
      (*(v14 + 8))(v39, v23);
      goto LABEL_21;
    }

    v41 = v69;
    sub_24AEC5ECC();
    v42 = sub_24AEC5F0C();
    (*(v72 + 8))(v41, v73);
    v43 = v70;
    v44 = v74;
    (*(v76 + 104))(v70, *MEMORY[0x277D092F8], v74);
    if (*(v42 + 16))
    {
      sub_24AEC0AC4(v43);
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    (*(v76 + 8))(v43, v44);
    (*(v37 + 8))(v75, v40);

    if (v46)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v40 = v23;
    v37 = v14;
  }

  v47 = [v20 identifier];
  sub_24AEC62FC();

  v48 = sub_24AEC631C();
  v50 = v49;

  v51 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_pendingOffers;
  swift_beginAccess();
  v52 = *(a3 + v51);
  if (!*(v52 + 16) || (, v53 = sub_24AEC0A40(v48, v50, sub_24AEBF7A0), v55 = v54, , (v55 & 1) == 0))
  {

    v62 = 0;
    goto LABEL_24;
  }

  v56 = v71;
  (*(v37 + 16))(v71, *(v52 + 56) + *(v37 + 72) * v53, v40);

  if (v80)
  {
    v57 = v67;
    sub_24AEC5ECC();
    v58 = sub_24AEC5F0C();
    (*(v72 + 8))(v57, v73);
    v59 = v68;
    v60 = v74;
    (*(v76 + 104))(v68, *MEMORY[0x277D092F8], v74);
    if (*(v58 + 16))
    {
      sub_24AEC0AC4(v59);
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    (*(v76 + 8))(v59, v60);
    (*(v37 + 8))(v56, v40);

    goto LABEL_24;
  }

  (*(v37 + 8))(v56, v40);
LABEL_21:
  v62 = 1;
LABEL_24:
  v63 = sub_24AEC623C();
  v64 = sub_24AEC645C();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 67109120;
    *(v65 + 4) = v62 & 1;
    _os_log_impl(&dword_24AE9B000, v63, v64, "hasShared: %{BOOL}d", v65, 8u);
    MEMORY[0x24C234F80](v65, -1, -1);
  }

  *v78 = (v62 & 1) == 0;
}

uint64_t sub_24AEBD6D8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01C8, &qword_24AEC8CD0);
  MEMORY[0x28223BE20](v24);
  v3 = &v23 - v2;
  v4 = sub_24AEC5F4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEC5ECC();
  v8 = sub_24AEC5F0C();
  (*(v5 + 8))(v7, v4);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v8 + 48);
    v19 = sub_24AEC5F7C();
    (*(*(v19 - 8) + 16))(v3, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = *(v8 + 56);
    v21 = sub_24AEC5CDC();
    (*(*(v21 - 8) + 16))(&v3[*(v24 + 48)], v20 + *(*(v21 - 8) + 72) * v17, v21);
    sub_24AEC59BC(&qword_27EFC01D0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    LOBYTE(v17) = sub_24AEC62CC();
    result = sub_24AEA5484(v3, &qword_27EFC01C8, &qword_24AEC8CD0);
    if ((v17 & 1) == 0)
    {
      v22 = 1;
LABEL_13:

      return v22;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v22 = 0;
      goto LABEL_13;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}