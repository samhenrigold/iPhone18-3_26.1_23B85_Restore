uint64_t sub_25567A554(uint64_t a1, uint64_t a2)
{
  sub_25574EB00();
  swift_allocObject();
  sub_25574EAF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03E0, &qword_25575F3C0);
  sub_25567A73C();
  sub_25574EAE0();

  return v3;
}

unint64_t sub_25567A73C()
{
  result = qword_27F7C0400;
  if (!qword_27F7C0400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C03E0, &qword_25575F3C0);
    sub_255748FF8(&qword_27F7BE658, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0400);
  }

  return result;
}

uint64_t sub_25567A7F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_255678FC4(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_25567A8A4(v8, a2);

  sub_255750BC0();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25567A8A4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_255750E50();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for JournalEntryAssetMO();
        v8 = sub_2557503E0();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_255748284(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_25567AA00(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_25567AA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_25567AAF8(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

BOOL sub_25567AAF8(void **a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = sub_25574F0D0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = *a1;
  v21 = *a2;
  v22 = [v20 id];
  if (v22)
  {
    v40 = v21;
    v23 = v22;
    sub_25574F080();

    v24 = *(v12 + 32);
    v24(v10, v17, v11);
    v25 = *(v12 + 56);
    v25(v10, 0, 1, v11);
    v24(v19, v10, v11);
    v21 = v40;
  }

  else
  {
    v25 = *(v12 + 56);
    v25(v10, 1, 1, v11);
    sub_25574F0C0();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_255674B20(v10, &unk_27F7BED20, &unk_2557551D0);
    }
  }

  if (*(a3 + 16) && (v26 = sub_25567AF04(v19), (v27 & 1) != 0))
  {
    v40 = *(*(a3 + 56) + 8 * v26);
  }

  else
  {
    v40 = 0;
  }

  v28 = *(v12 + 8);
  v28(v19, v11);
  v29 = [v21 id];
  if (v29)
  {
    v30 = v29;
    sub_25574F080();

    v31 = *(v12 + 32);
    v32 = v41;
    v31(v41, v17, v11);
    v25(v32, 0, 1, v11);
    v33 = v42;
    v31(v42, v32, v11);
  }

  else
  {
    v34 = v41;
    v25(v41, 1, 1, v11);
    v33 = v42;
    sub_25574F0C0();
    if ((*(v12 + 48))(v34, 1, v11) != 1)
    {
      sub_255674B20(v34, &unk_27F7BED20, &unk_2557551D0);
    }
  }

  if (*(a3 + 16) && (v35 = sub_25567AF04(v33), (v36 & 1) != 0))
  {
    v37 = *(*(a3 + 56) + 8 * v35);
  }

  else
  {
    v37 = 0;
  }

  v28(v33, v11);
  return v40 < v37;
}

unint64_t sub_25567AF04(uint64_t a1)
{
  sub_25574F0D0();
  sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_255750090();

  return sub_25567AFE4(a1, v2);
}

uint64_t sub_25567AF9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25567AFE4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_255748FF8(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_255750100();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_25567B1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id WrappedMergeableEntryAttributes.init(_:)(uint64_t a1)
{
  sub_255678764(a1, v1 + OBJC_IVAR___WrappedMergeableEntryAttributes_value);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WrappedMergeableEntryAttributes(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2556740EC(a1);
  return v3;
}

uint64_t WorkoutIconAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BEB70, &qword_255758B78);
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = type metadata accessor for WorkoutIconAssetMetadata(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_25567BC2C();
  v76 = v12;
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v17 = v9;
  v18 = v74;
  v19 = v75;
  v71 = v15;
  v72 = v13;
  LOBYTE(v79) = 0;
  v20 = sub_255750D00();
  v22 = v71;
  *v71 = v20;
  v22[1] = v23;
  LOBYTE(v79) = 1;
  v24 = sub_255750D20();
  v70 = 0;
  v22[2] = v24;
  *(v22 + 24) = v25 & 1;
  sub_25574F020();
  LOBYTE(v79) = 2;
  sub_255671808(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v26 = v70;
  sub_255750D40();
  v70 = v26;
  if (v26)
  {
    (*(v18 + 8))(v76, v19);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_11;
  }

  sub_2556719B8(v17, v22 + v72[6]);
  LOBYTE(v79) = 3;
  v31 = v70;
  sub_255750D40();
  v70 = v31;
  if (v31)
  {
    (*(v18 + 8))(v76, v19);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 1;
    goto LABEL_11;
  }

  v32 = v72;
  sub_2556719B8(v7, v22 + v72[7]);
  LOBYTE(v79) = 4;
  v33 = v70;
  v34 = sub_255750D20();
  if (v33)
  {
    v70 = v33;
    (*(v18 + 8))(v76, v19);
    v29 = 0;
    v30 = 0;
    v27 = 1;
    v28 = 1;
    goto LABEL_11;
  }

  v36 = v22 + v32[8];
  *v36 = v34;
  v36[8] = v35 & 1;
  LOBYTE(v79) = 5;
  v37 = sub_255750D20();
  v38 = v22 + v32[9];
  *v38 = v37;
  v38[8] = v39 & 1;
  LOBYTE(v79) = 6;
  v40 = sub_255750D00();
  v42 = (v22 + v32[10]);
  *v42 = v40;
  v42[1] = v43;
  LOBYTE(v79) = 7;
  v44 = sub_255750D00();
  v45 = (v22 + v32[11]);
  *v45 = v44;
  v45[1] = v46;
  LOBYTE(v79) = 8;
  v47 = sub_255750D30();
  v70 = 0;
  v49 = v22 + v72[12];
  *v49 = v47;
  v49[8] = v48 & 1;
  LOBYTE(v79) = 9;
  v50 = v70;
  v51 = sub_255750D20();
  v70 = v50;
  if (v50 || (v53 = v71 + v72[13], *v53 = v51, v53[8] = v52 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB60, &qword_255758B70), v78 = 10, sub_25567BFBC(&qword_27F7BEB80, &qword_27F7BDC38, MEMORY[0x277CC95A0], MEMORY[0x277D83978]), v54 = v70, sub_255750D40(), (v70 = v54) != 0))
  {
    (*(v18 + 8))(v76, v75);
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v22 = v71;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v77);

    if (v27)
    {
      v41 = v72;
      result = sub_255674B20(v22 + v72[6], &qword_27F7BEB40, &unk_255754E40);
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v41 = v72;
      if (!v28)
      {
LABEL_13:
        if (v29)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    result = sub_255674B20(v22 + v41[7], &qword_27F7BEB40, &unk_255754E40);
    if (v29)
    {
LABEL_14:

      if ((v30 & 1) == 0)
      {
        return result;
      }
    }

LABEL_18:
    if (!v30)
    {
      return result;
    }
  }

  *(v71 + v72[14]) = v79;
  v78 = 11;
  v55 = v70;
  sub_255750D40();
  if (v55)
  {
    (*(v18 + 8))(v76, v75);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v62 = v71;

    v63 = v72;
    sub_255674B20(v62 + v72[6], &qword_27F7BEB40, &unk_255754E40);
    sub_255674B20(v62 + v63[7], &qword_27F7BEB40, &unk_255754E40);
  }

  else
  {
    *(v71 + v72[15]) = v79;
    LOBYTE(v79) = 12;
    v56 = sub_255750D20();
    v57 = v71 + v72[16];
    *v57 = v56;
    v57[8] = v58 & 1;
    LOBYTE(v79) = 13;
    v59 = sub_255750D20();
    v60 = v71 + v72[17];
    *v60 = v59;
    v60[8] = v61 & 1;
    LOBYTE(v79) = 14;
    v64 = sub_255750D00();
    v66 = v65;
    (*(v18 + 8))(v76, v75);
    v67 = v71;
    v68 = (v71 + v72[18]);
    *v68 = v64;
    v68[1] = v66;
    sub_25567C058(v67, v73, type metadata accessor for WorkoutIconAssetMetadata);
    __swift_destroy_boxed_opaque_existential_1(v77);
    return sub_25567C0C0(v67, type metadata accessor for WorkoutIconAssetMetadata);
  }
}

unint64_t sub_25567BB80()
{
  result = qword_27F7BEC58;
  if (!qword_27F7BEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC58);
  }

  return result;
}

unint64_t sub_25567BBD8()
{
  result = qword_27F7BEC60;
  if (!qword_27F7BEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC60);
  }

  return result;
}

unint64_t sub_25567BC2C()
{
  result = qword_27F7BEB50;
  if (!qword_27F7BEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEB50);
  }

  return result;
}

unint64_t sub_25567BC88(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x656D6954646E65;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 6:
      result = 0x736569726F6C6163;
      break;
    case 7:
      result = 0x65636E6174736964;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SettingsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25567BFBC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEB60, &qword_255758B70);
    sub_255671808(a2, MEMORY[0x277CC9578], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25567C058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25567C0C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NSManagedObjectContext.didMergeChangesNotifications.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE240, &qword_2557565F0);
  MEMORY[0x28223BE20](v0);
  v1 = [objc_opt_self() defaultCenter];
  sub_2556A3CB0();
  sub_255750860();

  swift_getOpaqueTypeConformance2();
  return sub_255750C30();
}

uint64_t NSManagedObjectContext.didSaveNotifications.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE260, &qword_255756608);
  MEMORY[0x28223BE20](v0);
  v1 = [objc_opt_self() defaultCenter];
  sub_2556A53E4();
  sub_255750860();

  swift_getOpaqueTypeConformance2();
  return sub_255750C30();
}

void sub_25567C3CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755050;
  if (qword_27F7BD680 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDD20;
  *(v0 + 32) = qword_27F7BDD20;
  v2 = qword_27F7BD5F0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDC90;
  *(v0 + 40) = qword_27F7BDC90;
  v5 = qword_27F7BD690;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD30;
  *(v0 + 48) = qword_27F7BDD30;
  v8 = qword_27F7BD688;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7BDD28;
  *(v0 + 56) = qword_27F7BDD28;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v11 = v10;
  v12 = sub_255750370();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  qword_27F7BDD38 = v13;
}

uint64_t sub_25567C588()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x8000000255752510;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x8000000255752510;
  result = sub_255750750();
  qword_27F7BDD20 = result;
  return result;
}

uint64_t sub_25567C65C()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000018;
  *(v0 + 40) = 0x80000002557524B0;
  result = sub_255750750();
  qword_27F7BDD30 = result;
  return result;
}

uint64_t sub_25567C724()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000002557524D0;
  result = sub_255750750();
  qword_27F7BDD28 = result;
  return result;
}

uint64_t type metadata accessor for WorkoutHeartRateFormatStyle(uint64_t a1)
{
  result = qword_27F7BEE20;
  if (!qword_27F7BEE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25567C834(uint64_t a1)
{
  result = sub_25574F100();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WorkoutIconAssetMetadata.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutIconAssetMetadata.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 24);

  return sub_2556700F4(v3, a1);
}

uint64_t sub_25567C914@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_2556700F4(v4, a2);
}

uint64_t sub_25567C9F0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 44));

  return v2;
}

uint64_t JournalEntryMO.mergeableAttributedText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = [v2 mergeableAttributes];
  if (v11)
  {
    v12 = v11;
    sub_255678960(v11 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v10, type metadata accessor for MergeableEntryAttributes);

    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_255674B20(v10, &qword_27F7BE7E8, &unk_255757F00);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_255678960(v10, v7, type metadata accessor for MergeableEntryAttributes);
    sub_255674B20(v10, &qword_27F7BE7E8, &unk_255757F00);
    v15 = *(v4 + 20);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
    v17 = *(v16 - 8);
    (*(v17 + 16))(a1, &v7[v15], v16);
    sub_2556C0F6C(v7, type metadata accessor for MergeableEntryAttributes);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }
}

uint64_t VisitAssetMetadata.typeOfPlace.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t storeEnumTagSinglePayload for AssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AudioAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE98, &unk_25575E0F0);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - v8;
  v10 = type metadata accessor for AudioAssetMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_25567D4A8();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v18 = v10;
  LOBYTE(v23) = 0;
  *v12 = sub_255750D20();
  v12[8] = v14 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE68, &qword_25575E0E0);
  v22 = 1;
  sub_25567D698(&qword_27F7BFEA0, sub_25567D710, MEMORY[0x277D83978]);
  sub_255750D40();
  *(v12 + 2) = v23;
  sub_25574F020();
  LOBYTE(v23) = 2;
  sub_2556718E0(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_255750D40();
  v15 = v18;
  sub_2556719B8(v6, &v12[*(v18 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE80, &qword_25575E0E8);
  v22 = 3;
  sub_25567D8D8(&qword_27F7BFEB0, &qword_27F7BFEB8, &protocol conformance descriptor for TranscriptViewModelSegment, MEMORY[0x277D83978]);
  sub_255750D40();
  (*(v7 + 8))(v9, v20);
  *&v12[*(v15 + 28)] = v23;
  sub_25567D974(v12, v19, type metadata accessor for AudioAssetMetadata);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_25567DA24(v12, type metadata accessor for AudioAssetMetadata);
}

unint64_t sub_25567D3FC()
{
  result = qword_27F7BFF38;
  if (!qword_27F7BFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF38);
  }

  return result;
}

unint64_t sub_25567D454()
{
  result = qword_27F7BFF40;
  if (!qword_27F7BFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF40);
  }

  return result;
}

unint64_t sub_25567D4A8()
{
  result = qword_27F7BFE60;
  if (!qword_27F7BFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE60);
  }

  return result;
}

unint64_t sub_25567D4FC()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x6E6964726F636572;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x7469736E65746E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t storeEnumTagSinglePayload for AppleAccountManager.AccountStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t WorkoutIconAssetMetadata.calories.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 40));

  return v1;
}

uint64_t sub_25567D698(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BFE68, &qword_25575E0E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25567D710()
{
  result = qword_27F7BFEA8;
  if (!qword_27F7BFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFEA8);
  }

  return result;
}

uint64_t sub_25567D770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AppleAccountManager.AccountStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25567D8D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BFE80, &qword_25575E0E8);
    sub_2556718E0(a2, type metadata accessor for TranscriptViewModelSegment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25567D974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25567DA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::String __swiftcall WorkoutHeartRateFormatStyle.format(_:)(Swift::Double a1)
{
  v3 = sub_25574F100();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_255750170();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB8, &qword_255759250);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  v12 = sub_255750150();
  MEMORY[0x28223BE20](v12 - 8);
  if (a1 <= 2.22044605e-16)
  {
    sub_255750110();
  }

  else
  {
    sub_255750140();
    sub_255750130();
    v17[0] = a1;
    sub_2556D4F04(v11);
    sub_2556D524C();
    sub_255663E98();
    sub_255750120();
    (*(v9 + 8))(v11, v8);
    sub_255750130();
    sub_255750160();
  }

  (*(v4 + 16))(v6, v1, v3);
  v13 = sub_2557501C0();
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_25567DDF4@<X0>(Swift::Double *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = WorkoutHeartRateFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t AudioAssetMetadata.transcriptSegments.getter()
{
  type metadata accessor for AudioAssetMetadata(0);
}

uint64_t type metadata accessor for StreakEvent(uint64_t a1)
{
  result = qword_27F7BE660;
  if (!qword_27F7BE660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25567DEA0(uint64_t a1)
{
  sub_25567DF24(319);
  if (v1 <= 0x3F)
  {
    sub_25574F020();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25567DF24(uint64_t a1)
{
  if (!qword_27F7BE670)
  {
    sub_25574F0D0();
    v1 = sub_255750950();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BE670);
    }
  }
}

uint64_t sub_25567DFA0()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCB8 = result;
  return result;
}

uint64_t sub_25567E018(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_25567E064(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_25567E09C(uint64_t a1, int a2)
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

uint64_t sub_25567E0BC(uint64_t result, int a2, int a3)
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

uint64_t sub_25567E104@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2557501B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25567E130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25567E278(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25567E3BC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25567E3FC()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void *sub_25567E4AC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  result = sub_25574F360();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25567E604(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_25574F860();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_25567E7B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_25574F860();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_25567E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD8, &qword_255755210);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE0, &qword_255755218);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25567EACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD8, &qword_255755210);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE0, &qword_255755218);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25567EC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE8, &qword_255755220);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF0, &qword_255755228);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF8, &qword_255755230);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25567EDA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE8, &qword_255755220);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF0, &qword_255755228);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF8, &qword_255755230);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25567EF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25567F074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

__n128 sub_25567F234(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25567F244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_25567F2C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25567F304()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25567F3E0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  v9 = *(v2 + 8);
  v7 = v3;

  return v9();
}

uint64_t sub_25567F47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25567F500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_2557505F0();
}

uint64_t sub_25567F584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

id sub_25567F608@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entity];
  *a2 = result;
  return result;
}

uint64_t sub_25567F6E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s14FetchedResultsVMa(255, *a1, a3, a4);

  return swift_getWitnessTable();
}

uint64_t sub_25567F760(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25567F81C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25567F8CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0x69746375646F7250;
  v5 = 0xE400000000000000;
  v6 = 1953719636;
  v7 = 0xEB00000000746E65;
  v8 = 0x6D706F6C65766544;
  if (v2 != 3)
  {
    v8 = 0x676E6967617453;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 16721;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25567F964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25574F020();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25567FA60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25574F020();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25567FC28()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25567FE58()
{
  v1 = sub_25574F0D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25567FF2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

void *sub_25567FFB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2556C6D10(&v3);
  *a1 = v3;
  return result;
}

void *sub_25567FFF4@<X0>(_BYTE *a1@<X8>)
{
  result = AppStorageMO.defaultMapSize.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_2556800B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_255680180(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255680230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2556802A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_255680338()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = sub_25574F020();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  v9 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_2556804B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2556804F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F100();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255680564(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F100();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2556805D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE50, &unk_2557594C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_255680724(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE50, &unk_2557594C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_2556808EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2556809A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255680A58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255680B94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255680CD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25574FB30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255680D7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_25574FB30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255680E20@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_255680E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_255680F98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2556810DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255681124(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255681260(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255681488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2556815EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25568175C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E0, &qword_25575B3C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2556818C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E0, &qword_25575B3C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255681A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255681B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255681D08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2556FCDA0(v1, v2);
}

uint64_t sub_255681D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255681DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_255681E58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255681F14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255682038(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_25574F860();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_2556821E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_25574F860();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_25568239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBA8, &qword_25575D740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB0, &unk_25575D748);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255682500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBA8, &qword_25575D740);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB0, &unk_25575D748);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255682670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB8, &qword_25575D758);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC0, &unk_25575D760);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2556827D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB8, &qword_25575D758);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC0, &unk_25575D760);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255682944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255682AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255682C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SidebarPreferences(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_25574F860();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255682D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SidebarPreferences(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_25574F860();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255682F94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25574EF10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_255683040(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25574EF10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2556830E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2556831A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25574F0D0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

id sub_255683260@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sortCategory];
  *a2 = result;
  return result;
}

id sub_2556832A8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t sub_2556832F8@<X0>(uint64_t *a1@<X8>)
{
  result = JournalMO.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_255683324(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return JournalMO.title.setter(v1, v2);
}

uint64_t sub_255683424(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0038, &qword_25575E620);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0040, &qword_25575E628);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0048, &unk_25575E630);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_2556835DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0038, &qword_25575E620);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0040, &qword_25575E628);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0048, &unk_25575E630);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2556837A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0050, &qword_25575E640);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0058, &qword_25575E648);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF558, &qword_25575B4B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_255683958(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0050, &qword_25575E640);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0058, &qword_25575E648);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF558, &qword_25575B4B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_255683B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_255683CD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_255683E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_255683F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25568402C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02C8, &qword_25575ECB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2556840A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02C8, &qword_25575ECB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_255684128@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F7C03D0;
  return result;
}

uint64_t sub_255684174(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27F7C03D0 = v1;
  return result;
}

uint64_t sub_2556841BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2556841FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_255684244@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mergeableAttributes];
  *a2 = result;
  return result;
}

id sub_25568431C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_255684364@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 asset];
  *a2 = result;
  return result;
}

id sub_255684434@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_25568447C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRemovedFromCloud];
  *a2 = result;
  return result;
}

id sub_2556844C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_25568454C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 needsProcessing];
  *a2 = result;
  return result;
}

id sub_2556845DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 asset];
  *a2 = result;
  return result;
}

id sub_2556847A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isBeingEdited];
  *a2 = result;
  return result;
}

id sub_2556847E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFullyRemoved];
  *a2 = result;
  return result;
}

id sub_255684830@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHidden];
  *a2 = result;
  return result;
}

id sub_255684878@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRemovedFromCloud];
  *a2 = result;
  return result;
}

id sub_2556848C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSlim];
  *a2 = result;
  return result;
}

id sub_255684908@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUndoablyDeleted];
  *a2 = result;
  return result;
}

id sub_255684950@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_255684998@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

id sub_255684AAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 refreshAssetMetadata];
  *a2 = result;
  return result;
}

id sub_255684C28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dataAttachments];
  *a2 = result;
  return result;
}

id sub_255684C78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entry];
  *a2 = result;
  return result;
}

id sub_255684CC8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileAttachments];
  *a2 = result;
  return result;
}

id sub_255684FA8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 flagged];
  *a2 = result;
  return result;
}

id sub_255684FF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDraft];
  *a2 = result;
  return result;
}

id sub_255685040@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFullyRemoved];
  *a2 = result;
  return result;
}

id sub_255685088@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRemovedFromCloud];
  *a2 = result;
  return result;
}

id sub_2556850D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isTip];
  *a2 = result;
  return result;
}

id sub_255685118@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_255685160@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mergeableAttributes];
  *a2 = result;
  return result;
}

id sub_2556851B0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

id sub_2556851F8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersionMode];
  *a2 = result;
  return result;
}

id sub_255685288@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 recentlyDeleted];
  *a2 = result;
  return result;
}

id sub_25568541C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showPhotoMemoryBanner];
  *a2 = result;
  return result;
}

id sub_255685464@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showTitle];
  *a2 = result;
  return result;
}

id sub_2556854EC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 textLength];
  *a2 = result;
  return result;
}

id sub_2556855C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assets];
  *a2 = result;
  return result;
}

id sub_255685610@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 journals];
  *a2 = result;
  return result;
}

id sub_255685670@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_2556856B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mergeableAttributes];
  *a2 = result;
  return result;
}

id sub_255685728@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 userDeleted];
  *a2 = result;
  return result;
}

id sub_255685770@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entries];
  *a2 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_255685A78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25574F2C0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_25574F2B0();
}

uint64_t sub_255685AF0()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C0528);
  __swift_project_value_buffer(v0, qword_27F7C0528);
  return sub_25574F2B0();
}

uint64_t sub_255685B70(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_25574F1F0();
}

uint64_t sub_255685BDC(uint64_t a1, id *a2)
{
  result = sub_255750190();
  *a2 = 0;
  return result;
}

uint64_t sub_255685C54(uint64_t a1, id *a2)
{
  v3 = sub_2557501A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_255685CD4(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAD8, type metadata accessor for URLResourceKey, &unk_255754A20);
  v3 = sub_25566CD50(&qword_27F7BDAE0, type metadata accessor for URLResourceKey, &unk_2557549C0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_255685D90(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAB8, type metadata accessor for URLFileProtection, &unk_255754CD0);
  v3 = sub_25566CD50(&qword_27F7BDAC0, type metadata accessor for URLFileProtection, &unk_255754C70);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_255685E4C(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDB28, type metadata accessor for Dataclass, &unk_255754DCC);
  v3 = sub_25566CD50(&qword_27F7BDB30, type metadata accessor for Dataclass, &unk_255754354);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_255686084(uint64_t a1, uint64_t a2)
{
  sub_255750F80();
  swift_getWitnessTable();
  sub_25574F200();
  return sub_255750FD0();
}

uint64_t sub_2556860EC(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAC8, type metadata accessor for FileProtectionType, &unk_255754B78);
  v3 = sub_25566CD50(&qword_27F7BDAD0, type metadata accessor for FileProtectionType, &unk_255754B18);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2556861A8(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDB18, type metadata accessor for Key, &unk_255754548);
  v3 = sub_25566CD50(&qword_27F7BDB20, type metadata accessor for Key, &unk_2557544E8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25568633C(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDB08, type metadata accessor for DocumentAttributeKey, &unk_255754D60);
  v3 = sub_25566CD50(&qword_27F7BDB10, type metadata accessor for DocumentAttributeKey, &unk_255754638);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_255686488(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAF8, type metadata accessor for DocumentType, &unk_255754790);
  v3 = sub_25566CD50(&qword_27F7BDB00, type metadata accessor for DocumentType, &unk_255754738);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2556865D4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_255750180();

  *a2 = v3;
  return result;
}

uint64_t sub_25568661C(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAE8, type metadata accessor for DocumentReadingOptionKey, &unk_2557548D0);
  v3 = sub_25566CD50(&qword_27F7BDAF0, type metadata accessor for DocumentReadingOptionKey, &unk_255754878);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2556866D8()
{
  v0 = sub_2557501B0();
  v1 = MEMORY[0x259C3DF50](v0);

  return v1;
}

uint64_t sub_255686714(uint64_t a1)
{
  sub_2557501B0();
  sub_2557501F0();
}

uint64_t LinkAssetMetadata.data.getter()
{
  v1 = *v0;
  sub_255674F54(*v0, *(v0 + 8));
  return v1;
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

uint64_t LinkAssetMetadata.init(data:date:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for LinkAssetMetadata(0);
  sub_255675060(a3, a5 + *(v8 + 20), &qword_27F7BEB40, &unk_255754E40);
  return sub_255675060(a4, a5 + *(v8 + 24), &qword_27F7BE270, &unk_25575A3F0);
}

uint64_t sub_255686D68()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t sub_255686DB0(uint64_t a1)
{
  v2 = *v1;
  sub_255750F80();
  MEMORY[0x259C3EC60](v2);
  return sub_255750FD0();
}

uint64_t sub_255686DF4()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_255686E38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255687950(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255686E78(uint64_t a1)
{
  v2 = sub_255687144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255686EB4(uint64_t a1)
{
  v2 = sub_255687144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDC00, &qword_255754E50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255687144();
  sub_255750FF0();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_255674F54(v12, v9);
  sub_255687198();
  sub_255750E30();
  sub_2556755A8(v12, v13);
  if (!v2)
  {
    type metadata accessor for LinkAssetMetadata(0);
    LOBYTE(v12) = 1;
    sub_25574F020();
    sub_255671730(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    LOBYTE(v12) = 2;
    sub_25574EF10();
    sub_255671730(&qword_27F7BDC20, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_255750DF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_255687144()
{
  result = qword_27F7BDC08;
  if (!qword_27F7BDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC08);
  }

  return result;
}

unint64_t sub_255687198()
{
  result = qword_27F7BDC10;
  if (!qword_27F7BDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC10);
  }

  return result;
}

uint64_t LinkAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDC28, &qword_255754E58);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for LinkAssetMetadata(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_255687144();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v17 = v9;
  v22 = v13;
  v18 = v24;
  v28 = 0;
  sub_255675208();
  v19 = v25;
  sub_255750D80();
  *v15 = v27;
  sub_25574F020();
  LOBYTE(v27) = 1;
  sub_255671730(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_255750D40();
  sub_255675060(v17, v15 + *(v22 + 20), &qword_27F7BEB40, &unk_255754E40);
  sub_25574EF10();
  LOBYTE(v27) = 2;
  sub_255671730(&qword_27F7BDC40, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v21 = 0;
  sub_255750D40();
  (*(v18 + 8))(v12, v19);
  sub_255675060(v6, v15 + *(v22 + 24), &qword_27F7BE270, &unk_25575A3F0);
  sub_25568769C(v15, v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_255687700(v15);
}

uint64_t sub_255687634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25568769C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255687700(uint64_t a1)
{
  v2 = type metadata accessor for LinkAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25568775C(uint64_t a1)
{
  *(a1 + 8) = sub_255671730(&qword_27F7BDC48, type metadata accessor for LinkAssetMetadata, &protocol conformance descriptor for LinkAssetMetadata);
  result = sub_255671730(&qword_27F7BDC50, type metadata accessor for LinkAssetMetadata, &protocol conformance descriptor for LinkAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25568784C()
{
  result = qword_27F7BDC78;
  if (!qword_27F7BDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC78);
  }

  return result;
}

unint64_t sub_2556878A4()
{
  result = qword_27F7BDC80;
  if (!qword_27F7BDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC80);
  }

  return result;
}

unint64_t sub_2556878FC()
{
  result = qword_27F7BDC88;
  if (!qword_27F7BDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC88);
  }

  return result;
}

uint64_t sub_255687950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_255687A68()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDC98 = result;
  return result;
}

uint64_t sub_255687AF0()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCA0 = result;
  return result;
}

void sub_255687C3C(uint64_t a1, uint64_t *a2, void **a3, void *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755050;
  if (qword_27F7BD5F0 != -1)
  {
    swift_once();
  }

  v9 = qword_27F7BDC90;
  *(v8 + 32) = qword_27F7BDC90;
  v10 = qword_27F7BD6A0;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_27F7BDD40;
  *(v8 + 40) = qword_27F7BDD40;
  v13 = *a2;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = *a3;
  *(v8 + 48) = *a3;
  v16 = qword_27F7BD620;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_27F7BDCC0;
  *(v8 + 56) = qword_27F7BDCC0;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v19 = v18;
  v20 = sub_255750370();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  *a4 = v21;
}

uint64_t sub_255687E18()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0x736C616E72756F6ALL;
  *(v0 + 40) = 0xE800000000000000;
  result = sub_255750750();
  qword_27F7BDD00 = result;
  return result;
}

id static NSPredicate.timelineEntriesFor(journalID:)(uint64_t a1)
{
  v1 = _sSo11NSPredicateC13JournalSharedE09belongsToB02idAB10Foundation4UUIDV_tFZ_0(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_255755070;
  if (qword_27F7BD650 != -1)
  {
    swift_once();
  }

  v3 = qword_27F7BDCF0;
  *(v2 + 32) = qword_27F7BDCF0;
  *(v2 + 40) = v1;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v4 = v3;
  v5 = v1;
  v6 = sub_255750370();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

uint64_t sub_255688010()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  *(v0 + 32) = 0x6F7250736465656ELL;
  *(v0 + 40) = 0xEF676E6973736563;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x6F7250736465656ELL;
  *(v0 + 80) = 0xEF676E6973736563;
  result = sub_255750750();
  qword_27F7BDD10 = result;
  return result;
}

id _sSo11NSPredicateC13JournalSharedE09belongsToB02idAB10Foundation4UUIDV_tFZ_0(uint64_t a1)
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = sub_25574F050();
  *(v1 + 56) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v1 + 64) = sub_255688670(&qword_27F7BDD68, &unk_27F7BF1F0, 0x277CCAD78);
  *(v1 + 32) = v2;
  v3 = sub_255750750();
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v4 = sub_25574F0D0();
  __swift_project_value_buffer(v4, qword_27F7BFF68);
  if ((sub_25574F070() & 1) == 0)
  {
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255755070;
  *(v5 + 32) = v3;
  v6 = qword_27F7BD660;
  v7 = v3;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_27F7BDD00;
  *(v5 + 40) = qword_27F7BDD00;
  v9 = v8;
  v10 = sub_255750370();

  v11 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v11;
}

id _sSo11NSPredicateC13JournalSharedE043recentlyDeletedEntriesToBeLocallyPermanenlyE0ABvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755040;
  if (qword_27F7BD648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCE8;
  *(v0 + 32) = qword_27F7BDCE8;
  v2 = qword_27F7BD5F0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDC90;
  *(v0 + 40) = qword_27F7BDC90;
  v5 = qword_27F7BD6A8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD48;
  *(v0 + 48) = qword_27F7BDD48;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755020;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_255666F5C();
  strcpy((v8 + 32), "deletedOnDate");
  *(v8 + 46) = -4864;
  v9 = objc_allocWithZone(MEMORY[0x277CBEAA8]);
  v10 = v7;
  v11 = [v9 initWithTimeIntervalSinceNow_];
  *(v8 + 96) = sub_255669A88(0, &qword_27F7BDD60, 0x277CBEAA8);
  *(v8 + 104) = sub_255688670(&qword_27F7BED40, &qword_27F7BDD60, 0x277CBEAA8);
  *(v8 + 72) = v11;
  *(v0 + 56) = sub_255750750();
  if (qword_27F7BD620 != -1)
  {
    swift_once();
  }

  v12 = qword_27F7BDCC0;
  *(v0 + 64) = qword_27F7BDCC0;
  v13 = v12;
  v14 = sub_255750370();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v15;
}

uint64_t sub_255688670(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_255669A88(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2556886C0()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BDD70);
  v1 = __swift_project_value_buffer(v0, qword_27F7BDD70);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_255688798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_255688870;

  return static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_255688870()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    if (*(v2 + 16))
    {
      swift_getObjectType();
      v6 = sub_255750490();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    return MEMORY[0x2822009F8](sub_25568B224, v6, v8);
  }
}

uint64_t static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v9 = sub_2557508A0();
  v7[7] = v9;
  v7[8] = *(v9 - 8);
  v7[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_255750490();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[10] = v10;
  v7[11] = v12;

  return MEMORY[0x2822009F8](sub_255688AD0, v10, v12);
}

uint64_t sub_255688AD0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  *(v7 + 16) = *(v0 + 32);
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = v6;
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_255688C0C;
  v11 = *(v0 + 72);
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v10, v11, sub_25568AAC0, v7, v12);
}

uint64_t sub_255688C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_255688E2C;
  }

  else
  {
    v8 = sub_255688DC8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_255688DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255688E2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ManagedObjectCloudKitSyncing.objectsToSave(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 56))(a2, a3);
  v6 = static ManagedObjectCloudKitSyncing.objectsMatchingPredicate(_:context:)(v5, a1, a2);

  return v6;
}

uint64_t static ManagedObjectCloudKitSyncing.objectsMatchingPredicate(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v6 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD88, &unk_2557550B0);
  sub_255750870();
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
    v4 = sub_255750CC0();

    if (!v4)
    {
      v4 = sub_255750060();
    }
  }

  return v4;
}

uint64_t static ManagedObjectCloudKitSyncing.objectsToDelete(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 64))(a2, a3);
  v6 = static ManagedObjectCloudKitSyncing.objectsMatchingPredicate(_:context:)(v5, a1, a2);

  return v6;
}

uint64_t sub_2556890A0@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  result = sub_2557508C0();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static ManagedObjectCloudKitSyncing.recordForObjectWithID(_:context:includeUnsavedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 56) = a8;
  *(v9 + 64) = v8;
  *(v9 + 136) = a6;
  *(v9 + 40) = a5;
  *(v9 + 48) = a7;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  v11 = sub_2557508A0();
  *(v9 + 72) = v11;
  *(v9 + 80) = *(v11 - 8);
  *(v9 + 88) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v12 = sub_255750490();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v9 + 96) = v12;
  *(v9 + 104) = v14;

  return MEMORY[0x2822009F8](sub_25568920C, v12, v14);
}

uint64_t sub_25568920C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 136);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  *(v0 + 112) = v9;
  *(v9 + 16) = *(v0 + 48);
  *(v9 + 32) = v4;
  *(v9 + 40) = v8;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);

  v10 = v7;
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD98, &qword_2557550C8);
  *v11 = v0;
  v11[1] = sub_255689374;
  v13 = *(v0 + 88);

  return MEMORY[0x28210EE50](v0 + 16, v13, sub_25568AB00, v9, v12);
}

uint64_t sub_255689374()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_25568959C;
  }

  else
  {
    v8 = sub_255689530;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_255689530()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25568959C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_255689600(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v13 = *(a6 + 8);
  static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)(a1, a2, a3, a4, a5, *(v13 + 8));
  if (!v7)
  {
    if (v14)
    {
      v15 = v14;
      v16 = (*(a6 + 24))(a5, a6);
      if (v16)
      {
        v17 = v16;

        *a7 = v17;
      }

      else
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v18 = sub_25574F2C0();
        __swift_project_value_buffer(v18, qword_27F7BDD70);

        v19 = v15;
        v20 = sub_25574F2A0();
        v21 = sub_255750780();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = v32;
          *v22 = 136446978;
          v23 = (*(v13 + 16))(a5, v13);
          v25 = sub_2556E474C(v23, v24, &v33);

          *(v22 + 4) = v25;
          *(v22 + 12) = 2082;
          v26 = sub_255751020();
          v28 = sub_2556E474C(v26, v27, &v33);

          *(v22 + 14) = v28;
          *(v22 + 22) = 2080;
          *(v22 + 24) = sub_2556E474C(a1, a2, &v33);
          *(v22 + 32) = 2112;
          *(v22 + 34) = v19;
          *v31 = v15;
          v29 = v19;
          _os_log_impl(&dword_255661000, v20, v21, "Failed to create %{public}s record from %{public}s object with id %s: %@", v22, 0x2Au);
          sub_255674B20(v31, &qword_27F7BEC80, &qword_255757E90);
          MEMORY[0x259C3F520](v31, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v32, -1, -1);
          MEMORY[0x259C3F520](v22, -1, -1);
        }

        sub_25568B1D0();
        swift_allocError();
        *v30 = 4;
        swift_willThrow();
      }
    }

    else
    {
      *a7 = 0;
    }
  }
}

void static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = static Identifiable<>.fetch(id:context:)(a1, a2, a3, a5);
  if (!v6 && !v13 && (a4 & 1) != 0)
  {
    sub_255689AFC(a1, a2, a3, a5, a6);
  }
}

uint64_t static Identifiable<>.fetchObjectForRecord(_:context:includeUnsavedObjects:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 recordID];
  v10 = [v9 recordName];

  v11 = sub_2557501B0();
  v13 = v12;

  static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)(v11, v13, a2, a3, a4, a5);
  v15 = v14;

  return v15;
}

uint64_t static Identifiable<>.fetchObjectForRecordID(_:context:includeUnsavedObjects:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 recordName];
  v10 = sub_2557501B0();
  v12 = v11;

  static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)(v10, v12, a2, a3, a4, a5);
  v14 = v13;

  return v14;
}

void sub_255689AFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();
  v40 = a3;
  v7 = [a3 updatedObjects];
  sub_25568B124();
  sub_25568B170();
  v8 = sub_255750580();

  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v9 = v45;
    v10 = v46;
    v11 = v47;
    v12 = v48;
    v13 = v49;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);

    v12 = 0;
    v9 = v8;
  }

  v17 = (v11 + 64) >> 6;
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = sub_255750A60();
  if (v18 && (v44 = v18, swift_dynamicCast(), v19 = v50, v20 = v12, v21 = v13, v50))
  {
    while ((sub_255689F80(v19, a1, a2, a4, a5) & 1) == 0)
    {

      v12 = v20;
      v13 = v21;
      if (v9 < 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v22 = v12;
      v23 = v13;
      v20 = v12;
      if (!v13)
      {
        while (1)
        {
          v20 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v20 >= v17)
          {
            goto LABEL_19;
          }

          v23 = *(v10 + 8 * v20);
          ++v22;
          if (v23)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_46;
      }

LABEL_15:
      v21 = (v23 - 1) & v23;
      v19 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    sub_25568B1C8(v9);

    if (swift_dynamicCastUnknownClass())
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  else
  {
LABEL_19:
    sub_25568B1C8(v9);
  }

  v24 = [v40 insertedObjects];
  v25 = sub_255750580();

  if ((v25 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v27 = v50;
    v26 = v51;
    v28 = v52;
    v29 = v53;
    v30 = v54;
  }

  else
  {
    v31 = -1 << *(v25 + 32);
    v26 = v25 + 56;
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v25 + 56);

    v29 = 0;
    v27 = v25;
  }

  v34 = (v28 + 64) >> 6;
  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (sub_255750A60() && (swift_dynamicCast(), v35 = v44, v36 = v29, v37 = v30, v44))
  {
    while (1)
    {
      if (sub_255689F80(v35, a1, a2, a4, a5))
      {

        sub_25568B1C8(v27);

        if (!swift_dynamicCastUnknownClass())
        {
        }

        return;
      }

      v29 = v36;
      v30 = v37;
      if (v27 < 0)
      {
        goto LABEL_27;
      }

LABEL_30:
      v38 = v29;
      v39 = v30;
      v36 = v29;
      if (!v30)
      {
        break;
      }

LABEL_34:
      v37 = (v39 - 1) & v39;
      v35 = *(*(v27 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v39)))));
      if (!v35)
      {
        goto LABEL_38;
      }
    }

    while (1)
    {
      v36 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v36 >= v34)
      {
        goto LABEL_38;
      }

      v39 = *(v26 + 8 * v36);
      ++v38;
      if (v39)
      {
        goto LABEL_34;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_38:
    sub_25568B1C8(v27);

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_255689F80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = swift_dynamicCastUnknownClass();
  if (v11)
  {
    v21[1] = v11;
    v12 = a1;
    sub_255750B20();
    v13 = sub_25574F0D0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_255674B20(v10, &unk_27F7BED20, &unk_2557551D0);
      v15 = 0;
    }

    else
    {
      v16 = sub_25574F040();
      v18 = v17;
      (*(v14 + 8))(v10, v13);
      if (v16 == a2 && v18 == a3)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_255750EB0();
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t ManagedObjectCloudKitSyncing.update<A>(keyPath:with:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a2;
  v6 = *(*a1 + *MEMORY[0x277D84568] + 8);
  v7 = sub_255750950();
  v22[0] = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = *(v6 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v17 = v23;
  result = CKRecord.encryptedValueForKey<A>(_:as:)(a3, a4, v6, v10);
  if (!v17)
  {
    v20 = v22[0];
    v19 = v22[1];
    v23 = 0;
    if ((*(v11 + 48))(v10, 1, v6) == 1)
    {
      return (*(v20 + 8))(v10, v7);
    }

    else
    {
      (*(v11 + 32))(v16, v10, v6);
      (*(v11 + 16))(v14, v16, v6);
      v24 = v19;
      v21 = v19;
      swift_setAtReferenceWritableKeyPath();

      return (*(v11 + 8))(v16, v6);
    }
  }

  return result;
}

uint64_t ManagedObjectCloudKitSyncing.update<A>(keyPath:with:key:)(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D84568];
  v61 = *a1;
  v6 = *(v61 + v5 + 8);
  v62 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = *(v6 + 16);
  v17 = v16;
  v19 = v18;
  result = CKRecord.encryptedValueForKey<A>(_:as:)(v16, v18, v15, &v53 - v13);
  if (!v2)
  {
    v55 = v17;
    v56 = v12;
    v59 = 0;
    v60 = a1;
    v21 = v19;
    v58 = v9;
    v22 = *(*(v15 - 8) + 48);
    v57 = v14;
    v23 = v6;
    if (v22(v14, 1, v15) == 1)
    {
      v65 = v63;
      v24 = v63;
      v25 = v56;
      swift_getAtKeyPath();

      LODWORD(v24) = v22(v25, 1, v15);
      (*(v62 + 8))(v25, v23);
      if (v24 != 1)
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v26 = sub_25574F2C0();
        __swift_project_value_buffer(v26, qword_27F7BDD70);
        v27 = a2;
        v28 = v60;

        v29 = v21;

        v30 = sub_25574F2A0();
        v31 = sub_255750760();

        v32 = os_log_type_enabled(v30, v31);
        v33 = v55;
        if (v32)
        {
          v34 = swift_slowAlloc();
          v54 = v27;
          v35 = v34;
          v56 = swift_slowAlloc();
          v65 = v56;
          *v35 = 136446978;
          v64 = v28;
          sub_255750E70();

          v36 = sub_2557501D0();
          v38 = sub_2556E474C(v36, v37, &v65);

          *(v35 + 4) = v38;
          LODWORD(v61) = v31;
          *(v35 + 12) = 2082;
          v39 = v54;
          v40 = sub_255750920();
          v42 = sub_2556E474C(v40, v41, &v65);

          *(v35 + 14) = v42;
          *(v35 + 22) = 2082;
          *(v35 + 24) = sub_2556E474C(v33, v29, &v65);
          *(v35 + 32) = 2080;
          v43 = [v39 recordID];
          v44 = [v43 recordName];

          v45 = sub_2557501B0();
          v47 = v46;

          v48 = sub_2556E474C(v45, v47, &v65);

          *(v35 + 34) = v48;
          _os_log_impl(&dword_255661000, v30, v61, "Intentionally setting an existing value to nil for keyPath %{public}s from %{public}s.%{public}s. ID: %s", v35, 0x2Au);
          v49 = v56;
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v49, -1, -1);
          MEMORY[0x259C3F520](v35, -1, -1);
        }
      }
    }

    v50 = v62;
    v51 = v57;
    (*(v62 + 16))(v58, v57, v23);
    v65 = v63;
    v52 = v63;
    swift_setAtReferenceWritableKeyPath();

    return (*(v50 + 8))(v51, v23);
  }

  return result;
}

void sub_25568A898(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = static Identifiable<>.fetchObjectForRecordID(_:context:includeUnsavedObjects:)(a2, a3, 1, a4, *(*(a5 + 8) + 8));
  if (!v5)
  {
    if (v10)
    {
      v11 = v10;
      (*(a5 + 40))(v10, a3, a4, a5);
    }

    else
    {
      if (qword_27F7BD6B8 != -1)
      {
        swift_once();
      }

      v12 = sub_25574F2C0();
      __swift_project_value_buffer(v12, qword_27F7BDD70);
      v13 = a2;
      v14 = sub_25574F2A0();
      v15 = sub_255750760();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26 = v17;
        *v16 = 136446466;
        v18 = sub_255751020();
        v20 = sub_2556E474C(v18, v19, &v26);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v21 = [v13 recordName];
        v22 = sub_2557501B0();
        v24 = v23;

        v25 = sub_2556E474C(v22, v24, &v26);

        *(v16 + 14) = v25;
        _os_log_impl(&dword_255661000, v14, v15, "Could not find %{public}s object to delete with ID %s.", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v17, -1, -1);
        MEMORY[0x259C3F520](v16, -1, -1);
      }
    }
  }
}

uint64_t sub_25568AB28()
{
  if (qword_27F7BD6D8 != -1)
  {
    swift_once();
  }

  return NSManagedObjectModel.modelVersion.getter();
}

uint64_t sub_25568AB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_25568AC58;

  return static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25568AC58()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    if (*(v2 + 16))
    {
      swift_getObjectType();
      v6 = sub_255750490();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    return MEMORY[0x2822009F8](sub_25568ADB4, v6, v8);
  }
}

uint64_t dispatch thunk of static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25568AFA0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25568AFA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_25568B0D0()
{
  result = qword_27F7BDDA0;
  if (!qword_27F7BDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDDA0);
  }

  return result;
}

unint64_t sub_25568B124()
{
  result = qword_27F7BDDA8;
  if (!qword_27F7BDDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BDDA8);
  }

  return result;
}

unint64_t sub_25568B170()
{
  result = qword_27F7BDDB0;
  if (!qword_27F7BDDB0)
  {
    sub_25568B124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDDB0);
  }

  return result;
}

unint64_t sub_25568B1D0()
{
  result = qword_27F7BDDC0;
  if (!qword_27F7BDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDDC0);
  }

  return result;
}

uint64_t MergeableJournalAttributes.title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  sub_25574F360();
  return v1;
}

uint64_t sub_25568B264(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  return sub_25574F370();
}

uint64_t (*MergeableJournalAttributes.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  *(v3 + 32) = sub_25574F350();
  return sub_25569BAE0;
}

uint64_t MergeableJournalAttributes.$title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);

  return sub_25574F390();
}

uint64_t sub_25568B3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_25574F3A0();
  return (*(v3 + 8))(v8, v2);
}

uint64_t MergeableJournalAttributes.$title.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_25574F3A0();
  return (*(v3 + 8))(a1, v2);
}

void (*MergeableJournalAttributes.$title.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  sub_25574F390();
  return sub_25568B740;
}

void sub_25568B740(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[1];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_25574F3A0();
    v10 = *(v8 + 8);
    v10(v5, v9);
    v10(v6, v9);
  }

  else
  {
    sub_25574F3A0();
    (*(v8 + 8))(v6, v9);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t sub_25568B868(uint64_t a1)
{
  v2 = type metadata accessor for MergeableColor(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_25568C188(a1, &v9 - v6, type metadata accessor for MergeableColor);
  sub_25568C188(v7, v5, type metadata accessor for MergeableColor);
  type metadata accessor for MergeableJournalAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  sub_25574F370();
  return sub_25568C1F0(v7, type metadata accessor for MergeableColor);
}

uint64_t MergeableJournalAttributes.color.setter(uint64_t a1)
{
  v2 = type metadata accessor for MergeableColor(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25568C188(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MergeableColor);
  type metadata accessor for MergeableJournalAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  sub_25574F370();
  return sub_25568C1F0(a1, type metadata accessor for MergeableColor);
}

uint64_t (*MergeableJournalAttributes.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MergeableJournalAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  *(v3 + 32) = sub_25574F350();
  return sub_25569BAE0;
}

uint64_t sub_25568BB14(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for MergeableJournalAttributes(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  return a1(v2);
}

uint64_t sub_25568BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for MergeableJournalAttributes(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  return a4(v5);
}

uint64_t sub_25568BBD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F3A0();
  return (*(v3 + 8))(v8, v2);
}

uint64_t MergeableJournalAttributes.$color.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F3A0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MergeableJournalAttributes.$color.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  sub_25574F390();
  return sub_25569BAE4;
}

uint64_t sub_25568BF90(uint64_t a1)
{
  v2 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_25568C188(a1, &v9 - v6, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25568C188(v7, v5, type metadata accessor for MergeableJournalAttributes.Icon);
  type metadata accessor for MergeableJournalAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  sub_25574F370();
  return sub_25568C1F0(v7, type metadata accessor for MergeableJournalAttributes.Icon);
}

uint64_t MergeableJournalAttributes.icon.setter(uint64_t a1)
{
  v2 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25568C188(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MergeableJournalAttributes.Icon);
  type metadata accessor for MergeableJournalAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  sub_25574F370();
  return sub_25568C1F0(a1, type metadata accessor for MergeableJournalAttributes.Icon);
}

uint64_t sub_25568C188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25568C1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*MergeableJournalAttributes.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MergeableJournalAttributes(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  *(v3 + 32) = sub_25574F350();
  return sub_25568C2EC;
}

void sub_25568C2F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static MergeableJournalAttributes.Icon.defaultIcon.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0x672E657261757173;
  a1[1] = 0xEF3378332E646972;
  type metadata accessor for MergeableJournalAttributes.Icon(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25568C3BC(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for MergeableJournalAttributes(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  return a1(v2);
}

uint64_t sub_25568C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for MergeableJournalAttributes(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  return a4(v5);
}

uint64_t sub_25568C478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F3A0();
  return (*(v3 + 8))(v8, v2);
}

uint64_t MergeableJournalAttributes.$icon.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F3A0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MergeableJournalAttributes.$icon.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  sub_25574F390();
  return sub_25568C820;
}

void sub_25568C824(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v11 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v4(v3[3], v5, v3[1]);
    sub_25574F3A0();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    sub_25574F3A0();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_25568CFC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

BOOL MergeableJournalAttributes.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v60 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  v65 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  MEMORY[0x28223BE20](v65);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  sub_25568C188(v2, v26, type metadata accessor for MergeableJournalAttributes.Partial);
  v70 = a1;
  v28 = MergeableJournalAttributes.Partial.canMerge(delta:)(a1);
  sub_25568C1F0(v26, type metadata accessor for MergeableJournalAttributes.Partial);
  if (!v28)
  {
    return v28;
  }

  v58 = v28;
  v59 = v9;
  sub_255663294(v2, v24, &qword_27F7BDE00, &qword_255755238);
  v57 = v17;
  v29 = *(v17 + 48);
  v30 = v29(v24, 1, v16);
  sub_255674B20(v24, &qword_27F7BDE00, &qword_255755238);
  if (v30 == 1)
  {
    sub_25568DF1C(v70, v27, &qword_27F7BDE00, &qword_255755238);
  }

  else
  {
    sub_255663294(v70, v22, &qword_27F7BDE00, &qword_255755238);
    if (v29(v22, 1, v16) != 1)
    {
      v33 = v57;
      v34 = v60;
      (*(v57 + 32))(v60, v22, v16);
      v31 = v27;
      v35 = v29(v27, 1, v16);
      v32 = v65;
      if (!v35)
      {
        sub_25574F450();
      }

      (*(v33 + 8))(v34, v16);
      goto LABEL_10;
    }

    sub_255674B20(v22, &qword_27F7BDE00, &qword_255755238);
  }

  v31 = v27;
  v32 = v65;
LABEL_10:
  v36 = *(v32 + 20);
  sub_255663294(v31 + v36, v15, &qword_27F7BDE08, &qword_255755240);
  v37 = *(v68 + 48);
  v38 = v66;
  v39 = v37(v15, 1, v66);
  sub_255674B20(v15, &qword_27F7BDE08, &qword_255755240);
  v40 = *(v32 + 20);
  v41 = v39 == 1;
  v42 = v69;
  if (v41)
  {
    sub_25568DF1C(v70 + v40, v31 + v36, &qword_27F7BDE08, &qword_255755240);
  }

  else
  {
    v43 = v63;
    sub_255663294(v70 + v40, v63, &qword_27F7BDE08, &qword_255755240);
    v44 = v37(v43, 1, v38);
    if (v44 == 1)
    {
      sub_255674B20(v43, &qword_27F7BDE08, &qword_255755240);
    }

    else
    {
      v45 = v68;
      v46 = v61;
      (*(v68 + 32))(v61, v43, v38);
      if (!v37((v31 + v36), 1, v38))
      {
        sub_25574F450();
      }

      (*(v45 + 8))(v46, v38);
    }
  }

  v47 = v67;
  v48 = *(v32 + 24);
  v49 = v59;
  sub_255663294(v31 + v48, v59, &qword_27F7BDE10, &qword_255755248);
  v50 = *(v42 + 48);
  v51 = v50(v49, 1, v47);
  sub_255674B20(v49, &qword_27F7BDE10, &qword_255755248);
  v52 = *(v32 + 24);
  if (v51 == 1)
  {
    sub_25568DF1C(v70 + v52, v31 + v48, &qword_27F7BDE10, &qword_255755248);
  }

  else
  {
    v53 = v64;
    sub_255663294(v70 + v52, v64, &qword_27F7BDE10, &qword_255755248);
    if (v50(v53, 1, v47) == 1)
    {
      sub_255674B20(v53, &qword_27F7BDE10, &qword_255755248);
    }

    else
    {
      v54 = v69;
      v55 = v62;
      (*(v69 + 32))(v62, v53, v47);
      if (!v50(v31 + v48, 1, v47))
      {
        sub_25574F450();
      }

      (*(v54 + 8))(v55, v47);
    }
  }

  LOBYTE(v28) = v58;
  return v28;
}

BOOL MergeableJournalAttributes.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v45 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  sub_255663294(a1, v19, &qword_27F7BDE00, &qword_255755238);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    v17 = v19;
    v25 = v54;
LABEL_5:
    sub_255674B20(v17, &qword_27F7BDE00, &qword_255755238);
    v26 = v52;
    v27 = v53;
    goto LABEL_6;
  }

  (*(v21 + 32))(v23, v19, v20);
  v25 = v54;
  sub_255663294(v54, v17, &qword_27F7BDE00, &qword_255755238);
  if (v24(v17, 1, v20) == 1)
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  v39 = sub_25574F480();
  v40 = *(v21 + 8);
  v40(v23, v20);
  v40(v17, v20);
  v26 = v52;
  v27 = v53;
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v28 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  sub_255663294(a1 + *(v28 + 20), v11, &qword_27F7BDE08, &qword_255755240);
  v29 = *(v26 + 48);
  if (v29(v11, 1, v12) == 1)
  {
    v27 = v11;
    v31 = v50;
    v30 = v51;
    v32 = v49;
  }

  else
  {
    v33 = v25;
    v34 = v47;
    (*(v26 + 32))(v47, v11, v12);
    sub_255663294(v33 + *(v28 + 20), v27, &qword_27F7BDE08, &qword_255755240);
    v35 = v29(v27, 1, v12);
    v32 = v49;
    if (v35 != 1)
    {
      v41 = sub_25574F480();
      v42 = *(v26 + 8);
      v42(v34, v12);
      v42(v27, v12);
      v31 = v50;
      v30 = v51;
      v25 = v54;
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v26 + 8))(v34, v12);
    v31 = v50;
    v30 = v51;
    v25 = v54;
  }

  sub_255674B20(v27, &qword_27F7BDE08, &qword_255755240);
LABEL_11:
  sub_255663294(a1 + *(v28 + 24), v32, &qword_27F7BDE10, &qword_255755248);
  v36 = *(v30 + 48);
  v37 = v48;
  if (v36(v32, 1, v48) == 1)
  {
LABEL_14:
    sub_255674B20(v32, &qword_27F7BDE10, &qword_255755248);
    return 1;
  }

  (*(v30 + 32))(v31, v32, v37);
  v32 = v46;
  sub_255663294(v25 + *(v28 + 24), v46, &qword_27F7BDE10, &qword_255755248);
  if (v36(v32, 1, v37) == 1)
  {
    (*(v30 + 8))(v31, v37);
    goto LABEL_14;
  }

  v43 = sub_25574F480();
  v44 = *(v30 + 8);
  v44(v31, v37);
  v44(v32, v37);
  return (v43 & 1) != 0;
}

uint64_t sub_25568DF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t MergeableJournalAttributes.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  sub_255663294(v2, &v20 - v10, &qword_27F7BDE00, &qword_255755238);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_255674B20(v11, &qword_27F7BDE00, &qword_255755238);
  }

  else
  {
    sub_25574F3B0();
    (*(v13 + 8))(v11, v12);
  }

  v14 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  sub_255663294(v2 + *(v14 + 20), v8, &qword_27F7BDE08, &qword_255755240);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_255674B20(v8, &qword_27F7BDE08, &qword_255755240);
  }

  else
  {
    sub_25574F3B0();
    (*(v16 + 8))(v8, v15);
  }

  sub_255663294(v2 + *(v14 + 24), v5, &qword_27F7BDE10, &qword_255755248);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    return sub_255674B20(v5, &qword_27F7BDE10, &qword_255755248);
  }

  sub_25574F3B0();
  return (*(v18 + 8))(v5, v17);
}

uint64_t MergeableJournalAttributes.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v10 = *(v9 - 8);
  v39 = *(v10 + 56);
  v40 = v9;
  v38 = v10 + 56;
  v39(a2, 1, 1);
  v11 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  v12 = *(v11 + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v14 = *(*(v13 - 8) + 56);
  v37 = v12;
  v14(a2 + v12, 1, 1, v13);
  v15 = *(v11 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v46 = a2;
  v18(a2 + v15, 1, 1, v16);
  v20 = v45;
  sub_25574FE90();
  v45 = v20;
  if (v20)
  {

    v21 = v46;
    return sub_25568C1F0(v21, type metadata accessor for MergeableJournalAttributes.Partial);
  }

  v33 = v14;
  v34 = v13;
  v31[1] = v19;
  v32 = v18;
  v35 = v16;
  v36 = v15;
  v22 = v43;
  if (sub_25574FED0())
  {
    v23 = v42;
    v24 = v45;
    sub_25574F420();
    v25 = v24;
    v21 = v46;
    if (v24)
    {
LABEL_9:

      return sub_25568C1F0(v21, type metadata accessor for MergeableJournalAttributes.Partial);
    }

    (v39)(v23, 0, 1, v40);
    sub_25568CFC8(v23, v21, &qword_27F7BDE00, &qword_255755238);
  }

  else
  {
    v21 = v46;
    v25 = v45;
  }

  if (sub_25574FED0())
  {
    type metadata accessor for MergeableColor(0);
    sub_255668318(&unk_27F7BFFA0, type metadata accessor for MergeableColor, &protocol conformance descriptor for MergeableColor);
    sub_25574F420();
    if (v25)
    {
      goto LABEL_9;
    }

    v33(v22, 0, 1, v34);
    sub_25568CFC8(v22, v21 + v37, &qword_27F7BDE08, &qword_255755240);
  }

  v27 = sub_25574FED0();
  v28 = v41;
  v30 = v35;
  v29 = v36;
  if (v27)
  {
    type metadata accessor for MergeableJournalAttributes.Icon(0);
    sub_255668318(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon, &protocol conformance descriptor for MergeableJournalAttributes.Icon);
    sub_25574F420();

    if (v25)
    {
      return sub_25568C1F0(v21, type metadata accessor for MergeableJournalAttributes.Partial);
    }

    v32(v28, 0, 1, v30);
    return sub_25568CFC8(v28, v21 + v29, &qword_27F7BDE10, &qword_255755248);
  }

  else
  {
  }
}

uint64_t MergeableJournalAttributes.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v30 - v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = v38;
  result = sub_25574FF10();
  if (!v17)
  {
    v31 = v3;
    v32 = v6;
    v38 = v9;
    v19 = v37;
    sub_255663294(v37, v12, &qword_27F7BDE00, &qword_255755238);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_255674B20(v12, &qword_27F7BDE00, &qword_255755238);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      sub_255669798(&qword_27F7BDE30, &unk_27F7BFF90, &qword_2557551F0, MEMORY[0x277CFB4F0]);
      sub_25574FF60();
      (*(v14 + 8))(v16, v13);
    }

    v20 = type metadata accessor for MergeableJournalAttributes.Partial(0);
    v21 = v32;
    sub_255663294(v19 + *(v20 + 20), v32, &qword_27F7BDE08, &qword_255755240);
    v22 = v36;
    v23 = (*(v36 + 48))(v21, 1, v7);
    v24 = v38;
    if (v23 == 1)
    {
      sub_255674B20(v21, &qword_27F7BDE08, &qword_255755240);
    }

    else
    {
      (*(v22 + 32))(v38, v21, v7);
      sub_255669798(&qword_27F7BDE28, &qword_27F7BDDC8, &qword_2557551F8, MEMORY[0x277CFB4F0]);
      sub_25574FF60();
      (*(v22 + 8))(v24, v7);
    }

    v25 = v34;
    sub_255663294(v19 + *(v20 + 24), v34, &qword_27F7BDE10, &qword_255755248);
    v26 = v35;
    v27 = v33;
    v28 = (*(v35 + 48))(v25, 1, v33);
    v29 = v31;
    if (v28 == 1)
    {

      return sub_255674B20(v25, &qword_27F7BDE10, &qword_255755248);
    }

    else
    {
      (*(v26 + 32))(v31, v25, v27);
      sub_255669798(&qword_27F7BDE20, &unk_27F7BFFB0, &unk_255755200, MEMORY[0x277CFB4F0]);
      sub_25574FF60();
      (*(v26 + 8))(v29, v27);
    }
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

uint64_t sub_25568EE90()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F626D79536673;
  }
}

uint64_t sub_25568EEE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25569A954(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25568EF10(uint64_t a1)
{
  v2 = sub_25569A318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25568EF4C(uint64_t a1)
{
  v2 = sub_25569A318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25568EF9C(uint64_t a1)
{
  v2 = sub_25569A3C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25568EFD8(uint64_t a1)
{
  v2 = sub_25569A3C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25568F014()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](0);
  return sub_255750FD0();
}

uint64_t sub_25568F058(uint64_t a1)
{
  sub_255750F80();
  MEMORY[0x259C3EC60](0);
  return sub_255750FD0();
}

uint64_t sub_25568F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255750EB0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25568F118(uint64_t a1)
{
  v2 = sub_25569A414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25568F154(uint64_t a1)
{
  v2 = sub_25569A414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25568F1A8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_25568F1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_255750EB0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255750EB0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25568F29C(uint64_t a1)
{
  v2 = sub_25569A36C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25568F2D8(uint64_t a1)
{
  v2 = sub_25569A36C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MergeableJournalAttributes.Icon.hash(into:)(uint64_t a1)
{
  v2 = sub_25574F320();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v1, v8, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v8;
  if (!EnumCaseMultiPayload)
  {
    v11 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = 1;
LABEL_5:
    MEMORY[0x259C3EC60](v11);
    sub_2557501F0();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(v3 + 32))(v5, &v8[*(v13 + 48)], v2);
  MEMORY[0x259C3EC60](2);
  MEMORY[0x259C3EC60](v10);
  sub_255668318(&qword_27F7BDE38, MEMORY[0x277CFB4B0], MEMORY[0x277CFB4C0]);
  sub_2557500A0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MergeableJournalAttributes.Icon.hashValue.getter()
{
  sub_255750F80();
  MergeableJournalAttributes.Icon.hash(into:)(v1);
  return sub_255750FD0();
}

uint64_t sub_25568F570()
{
  sub_255750F80();
  MergeableJournalAttributes.Icon.hash(into:)(v1);
  return sub_255750FD0();
}

uint64_t sub_25568F5B4(uint64_t a1)
{
  sub_255750F80();
  MergeableJournalAttributes.Icon.hash(into:)(v2);
  return sub_255750FD0();
}

uint64_t MergeableJournalAttributes.Icon.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE40, &qword_255755258);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - v3;
  v4 = sub_25574F320();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE48, &qword_255755260);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE50, &qword_255755268);
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE58, &qword_255755270);
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25569A318();
  sub_255750FF0();
  sub_25568C188(v42, v14, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v47 = 1;
      sub_25569A3C0();
      v19 = v45;
      sub_255750DA0();
      v20 = v35;
      sub_255750E00();

      (*(v34 + 8))(v8, v20);
      return (*(v44 + 8))(v17, v19);
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      v24 = v38;
      v25 = &v14[*(v23 + 48)];
      v26 = v36;
      v27 = v39;
      (*(v38 + 32))(v36, v25, v39);
      v50 = 2;
      sub_25569A36C();
      v28 = v37;
      v29 = v45;
      sub_255750DA0();
      v49 = 0;
      v30 = v41;
      v31 = v43;
      sub_255750E20();
      if (!v31)
      {
        v48 = 1;
        sub_255668318(&qword_27F7BDE70, MEMORY[0x277CFB4B0], MEMORY[0x277CFB4B8]);
        sub_255750E30();
      }

      (*(v40 + 8))(v28, v30);
      (*(v24 + 8))(v26, v27);
      return (*(v44 + 8))(v17, v29);
    }
  }

  else
  {
    v46 = 0;
    sub_25569A414();
    v22 = v45;
    sub_255750DA0();
    sub_255750E00();

    (*(v33 + 8))(v11, v9);
    return (*(v44 + 8))(v17, v22);
  }
}

uint64_t MergeableJournalAttributes.Icon.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE88, &qword_255755278);
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v74 = &v60 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE90, &qword_255755280);
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v73 = &v60 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE98, &qword_255755288);
  v67 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEA0, &unk_255755290);
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  v9 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v60 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  v21 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_25569A318();
  v22 = v78;
  sub_255750FE0();
  if (!v22)
  {
    v61 = v18;
    v62 = v15;
    v24 = v71;
    v23 = v72;
    v26 = v73;
    v25 = v74;
    v63 = v12;
    v64 = v20;
    v65 = 0;
    v78 = v9;
    v27 = v75;
    v28 = v77;
    v29 = sub_255750D90();
    v30 = *(v29 + 16);
    if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 3) : (v32 = 1), v32))
    {
      v33 = sub_255750B90();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEA8, &qword_25575AAB0);
      *v35 = v78;
      sub_255750CF0();
      sub_255750B80();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v76 + 8))(v8, v28);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    if (*(v29 + 32))
    {
      v72 = v29;
      if (v31 == 1)
      {
        v81 = 1;
        sub_25569A3C0();
        v37 = v26;
        v38 = v65;
        sub_255750CE0();
        v39 = v76;
        if (v38)
        {
          goto LABEL_18;
        }

        v43 = v66;
        v44 = sub_255750D50();
        v45 = v37;
        v51 = v44;
        v53 = v52;
        (*(v69 + 8))(v45, v43);
        (*(v39 + 8))(v8, v28);
        swift_unknownObjectRelease();
        v54 = v62;
        *v62 = v51;
        *(v54 + 8) = v53;
        swift_storeEnumTagMultiPayload();
        v55 = v27;
      }

      else
      {
        v84 = 2;
        sub_25569A36C();
        v41 = v65;
        sub_255750CE0();
        v42 = v76;
        if (v41)
        {
LABEL_18:
          (*(v76 + 8))(v8, v28);
          goto LABEL_9;
        }

        v55 = v27;
        v83 = 0;
        v48 = v25;
        v49 = v68;
        v50 = sub_255750D70();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
        v54 = v63;
        *v63 = v50;
        sub_25574F320();
        v82 = 1;
        sub_255668318(&qword_27F7BDEB0, MEMORY[0x277CFB4B0], MEMORY[0x277CFB4D0]);
        sub_255750D80();
        (*(v70 + 8))(v48, v49);
        (*(v42 + 8))(v8, v77);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v80 = 0;
      sub_25569A414();
      v40 = v65;
      sub_255750CE0();
      if (v40)
      {
        goto LABEL_18;
      }

      v46 = v8;
      v47 = v28;
      v56 = sub_255750D50();
      v58 = v57;
      (*(v67 + 8))(v24, v23);
      (*(v76 + 8))(v46, v47);
      swift_unknownObjectRelease();
      v54 = v61;
      *v61 = v56;
      *(v54 + 8) = v58;
      swift_storeEnumTagMultiPayload();
      v55 = v27;
    }

    v59 = v64;
    sub_25569A468(v54, v64, type metadata accessor for MergeableJournalAttributes.Icon);
    sub_25569A468(v59, v55, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_25569051C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255690550()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MergeableJournalAttributes.merge(_:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableJournalAttributes.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t MergeableJournalAttributes.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v50 = *(v48 - 8);
  v2 = MEMORY[0x28223BE20](v48);
  v49 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v47 = &v40 - v5;
  MEMORY[0x28223BE20](v4);
  v46 = &v40 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v45 = *(v43 - 8);
  v7 = MEMORY[0x28223BE20](v43);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v42 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v41 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = sub_25574F500();
  v23 = *(v22 - 8);
  v54 = v22;
  v55 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F4F0();
  sub_25574F390();
  sub_25574F390();
  sub_25574F460();
  v26 = *(v13 + 8);
  v26(v21, v12);
  (*(v13 + 16))(v16, v19, v12);
  sub_25574F3A0();
  v26(v19, v12);
  sub_25574F4E0();
  v40 = *(v55 + 8);
  v55 += 8;
  v40(v25, v54);
  v51 = type metadata accessor for MergeableJournalAttributes(0);
  v27 = v41;
  v28 = v43;
  sub_25574F390();
  v29 = v42;
  sub_25574F390();
  sub_25574F460();
  v30 = v45;
  v31 = *(v45 + 8);
  v31(v27, v28);
  (*(v30 + 16))(v44, v29, v28);
  sub_25574F3A0();
  v31(v29, v28);
  sub_25574F4E0();
  v32 = v40;
  v40(v25, v54);
  v33 = v46;
  v34 = v48;
  sub_25574F390();
  v35 = v47;
  sub_25574F390();
  sub_25574F460();
  v36 = v50;
  v37 = *(v50 + 8);
  v37(v33, v34);
  (*(v36 + 16))(v49, v35, v34);
  sub_25574F3A0();
  v37(v35, v34);
  sub_25574F4E0();
  v38 = v54;
  v32(v25, v54);
  sub_25574F810();
  sub_25574F4E0();
  return (v32)(v25, v38);
}

uint64_t MergeableJournalAttributes.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF8, &qword_255755230);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v46 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF0, &qword_255755228);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE8, &qword_255755220);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v43 - v23;
  sub_25574F390();
  sub_25574F390();
  sub_25574F3F0();
  v25 = *(v16 + 8);
  v26 = v19;
  v27 = v44;
  v25(v26, v15);
  v25(v21, v15);
  type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F390();
  v28 = v45;
  sub_25574F390();
  sub_25574F3F0();
  v29 = *(v46 + 8);
  v29(v28, v8);
  v30 = v12;
  v31 = v47;
  v29(v30, v8);
  v32 = v48;
  v33 = v50;
  sub_25574F390();
  v34 = v49;
  sub_25574F390();
  sub_25574F3F0();
  v35 = *(v51 + 8);
  v35(v34, v33);
  v35(v32, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEB8, &qword_2557552A0);
  if ((*(*(v36 - 8) + 48))(v24, 1, v36) == 1 && (v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEC0, &qword_2557552A8), (*(*(v37 - 8) + 48))(v27, 1, v37) == 1) && (v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEC8, &qword_2557552B0), (*(*(v38 - 8) + 48))(v31, 1, v38) == 1))
  {
    sub_255674B20(v24, &qword_27F7BDDE8, &qword_255755220);
    v39 = type metadata accessor for MergeableJournalAttributes.MutatingAction(0);
    (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  }

  else
  {
    v40 = v52;
    sub_255663294(v24, v52, &qword_27F7BDDE8, &qword_255755220);
    v41 = type metadata accessor for MergeableJournalAttributes.MutatingAction(0);
    sub_255663294(v27, v40 + *(v41 + 20), &qword_27F7BDDF0, &qword_255755228);
    sub_255663294(v31, v40 + *(v41 + 24), &qword_27F7BDDF8, &qword_255755230);
    sub_255674B20(v24, &qword_27F7BDDE8, &qword_255755220);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  sub_255674B20(v31, &qword_27F7BDDF8, &qword_255755230);
  return sub_255674B20(v27, &qword_27F7BDDF0, &qword_255755228);
}

uint64_t MergeableJournalAttributes.apply(_:)(uint64_t a1)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDED0, &qword_2557552B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for MergeableJournalAttributes.MutatingAction(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(v38, v18, &qword_27F7BDED0, &qword_2557552B8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_255674B20(v18, &qword_27F7BDED0, &qword_2557552B8);
  }

  sub_25569A468(v18, v22, type metadata accessor for MergeableJournalAttributes.MutatingAction);
  sub_25574F390();
  sub_25574F430();
  (*(v10 + 16))(v13, v15, v9);
  sub_25574F3A0();
  (*(v10 + 8))(v15, v9);
  type metadata accessor for MergeableJournalAttributes(0);
  v24 = v30;
  v25 = v33;
  sub_25574F390();
  sub_25574F430();
  v26 = v32;
  (*(v32 + 16))(v31, v24, v25);
  sub_25574F3A0();
  (*(v26 + 8))(v24, v25);
  v27 = v34;
  v28 = v37;
  sub_25574F390();
  sub_25574F430();
  v29 = v36;
  (*(v36 + 16))(v35, v27, v28);
  sub_25574F3A0();
  (*(v29 + 8))(v27, v28);
  return sub_25568C1F0(v22, type metadata accessor for MergeableJournalAttributes.MutatingAction);
}

uint64_t MergeableJournalAttributes.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v34 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  sub_25574F390();
  v35 = a1;
  sub_25574F390();
  v19 = sub_25574F490();
  v20 = *(v13 + 8);
  v20(v16, v12);
  v20(v18, v12);
  if (v19 & 1) != 0 || (type metadata accessor for MergeableJournalAttributes(0), sub_25574F390(), sub_25574F390(), v21 = sub_25574F490(), v22 = *(v34 + 8), v22(v9, v6), v22(v11, v6), (v21) || (v23 = v30, v24 = v33, sub_25574F390(), v25 = v31, sub_25574F390(), v26 = sub_25574F490(), v27 = *(v32 + 8), v27(v25, v24), v27(v23, v24), (v26))
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_25574F840();
  }

  return v28 & 1;
}

uint64_t MergeableJournalAttributes.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v4 = sub_25574F860();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v40 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v39 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v37 = v2;
  sub_25568C188(v2, a2, type metadata accessor for MergeableJournalAttributes);
  sub_25574F390();
  sub_25574F410();
  v23 = *(v17 + 8);
  v23(v20, v16);
  (*(v17 + 16))(v20, v22, v16);
  sub_25574F3A0();
  v23(v22, v16);
  v24 = type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F390();
  v25 = v39;
  sub_25574F410();
  v26 = v40;
  v27 = *(v40 + 8);
  v27(v14, v11);
  (*(v26 + 16))(v14, v25, v11);
  v36 = a2;
  sub_25574F3A0();
  v27(v25, v11);
  v29 = v42;
  v28 = v43;
  sub_25574F390();
  v30 = v41;
  sub_25574F410();
  v31 = v44;
  v32 = *(v44 + 8);
  v32(v29, v28);
  (*(v31 + 16))(v29, v30, v28);
  v33 = v36;
  sub_25574F3A0();
  v32(v30, v28);
  v34 = v45;
  sub_25574F800();
  return (*(v46 + 40))(v33 + *(v24 + 28), v34, v47);
}

uint64_t MergeableJournalAttributes.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25574F860();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v31 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v42 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v43 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v31 - v8;
  v9 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v31 - v13);
  v15 = type metadata accessor for MergeableColor(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_25574F340();
  v21 = type metadata accessor for MergeableJournalAttributes(0);
  v22 = v21[5];
  static MergeableColor.random.getter(v20);
  sub_25568C188(v20, v18, type metadata accessor for MergeableColor);
  sub_255668318(&unk_27F7BFFA0, type metadata accessor for MergeableColor, &protocol conformance descriptor for MergeableColor);
  v36 = v22;
  v39 = v15;
  sub_25574F340();
  sub_25568C1F0(v20, type metadata accessor for MergeableColor);
  v23 = v21[6];
  *v14 = 0x672E657261757173;
  v14[1] = 0xEF3378332E646972;
  swift_storeEnumTagMultiPayload();
  sub_25568C188(v14, v12, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_255668318(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon, &protocol conformance descriptor for MergeableJournalAttributes.Icon);
  sub_25574F340();
  sub_25568C1F0(v14, type metadata accessor for MergeableJournalAttributes.Icon);
  v24 = v21[7];
  sub_25574F850();
  v25 = v44;
  v26 = v47;
  sub_25574F330();
  if (v26)
  {
    return sub_25568C1F0(a1, type metadata accessor for MergeableJournalAttributes);
  }

  v47 = v9;
  v27 = v42;
  (*(v40 + 40))(a1, v25, v41);
  sub_25574F330();
  (*(v27 + 40))(a1 + v36, v43, v37);
  v28 = v38;
  sub_25574F330();
  (*(v33 + 40))(a1 + v23, v28, v34);
  v29 = v35;
  sub_25574F780();
  return (*(v31 + 40))(a1 + v24, v29, v32);
}

uint64_t MergeableJournalAttributes.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  type metadata accessor for MergeableJournalAttributes(0);
  if (sub_25574F790() & 1) != 0 && (sub_25574F390(), v11 = sub_25574F380(), (*(v8 + 8))(v10, v7), (v11) && (sub_25574F390(), v12 = sub_25574F380(), (*(v4 + 8))(v6, v3), (v12))
  {
    v13 = v17;
    sub_25574F390();
    v14 = sub_25574F380();
    (*(v16 + 8))(v2, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t MergeableJournalAttributes.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v2 = *(v1 - 8);
  v15 = v1;
  v16 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  sub_25574F390();
  sub_25574F3B0();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F390();
  sub_25574F3B0();
  (*(v6 + 8))(v8, v5);
  v13 = v15;
  sub_25574F390();
  sub_25574F3B0();
  (*(v16 + 8))(v4, v13);
  return sub_25574F7A0();
}

uint64_t MergeableJournalAttributes.newRefs(from:)(uint64_t a1)
{
  v30[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v33 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v31 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v30 - v17;
  v36 = MEMORY[0x277D84FA0];
  sub_25574F390();
  sub_25574F390();
  v19 = sub_25574F470();
  v20 = *(v13 + 8);
  v20(v16, v12);
  v20(v18, v12);
  sub_255692FAC(v19);
  type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F390();
  sub_25574F390();
  v21 = sub_25574F470();
  v22 = *(v31 + 8);
  v22(v9, v6);
  v22(v11, v6);
  sub_255692FAC(v21);
  v23 = v32;
  v24 = v34;
  sub_25574F390();
  v25 = v33;
  sub_25574F390();
  v26 = sub_25574F470();
  v27 = *(v35 + 8);
  v27(v25, v24);
  v27(v23, v24);
  sub_255692FAC(v26);
  v28 = sub_25574F830();
  sub_255692FAC(v28);
  return v36;
}

uint64_t sub_255692FAC(uint64_t a1)
{
  v2 = sub_25574FF90();
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
      sub_2556FEE80(v9, v6);
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

Swift::Bool __swiftcall MergeableJournalAttributes.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v17 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  sub_25574F390();
  v11 = sub_25574F400();
  (*(v8 + 8))(v10, v7);
  if (v11 & 1) != 0 || (type metadata accessor for MergeableJournalAttributes(0), sub_25574F390(), v12 = sub_25574F400(), (*(v4 + 8))(v6, v3), (v12) || (sub_25574F390(), v13 = sub_25574F400(), (*(v17 + 8))(v2, v0), (v13))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_25574F7D0();
  }

  return v14 & 1;
}

uint64_t MergeableJournalAttributes.finalizeTimestamps(_:)(uint64_t a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v28 = *(v25 - 8);
  v2 = MEMORY[0x28223BE20](v25);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v26 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_25574F390();
  sub_25574F3C0();
  (*(v12 + 16))(v15, v17, v11);
  sub_25574F3A0();
  (*(v12 + 8))(v17, v11);
  type metadata accessor for MergeableJournalAttributes(0);
  sub_25574F390();
  v18 = a1;
  sub_25574F3C0();
  (*(v6 + 16))(v24, v10, v5);
  sub_25574F3A0();
  (*(v6 + 8))(v10, v5);
  v19 = v25;
  v20 = v26;
  sub_25574F390();
  sub_25574F3C0();
  v21 = v28;
  (*(v28 + 16))(v27, v20, v19);
  sub_25574F3A0();
  (*(v21 + 8))(v20, v19);
  return MEMORY[0x259C3D480](v18);
}

uint64_t MergeableJournalAttributes.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v66 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - v7;
  v9 = sub_25574F770();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v54 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v54 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v65 = &v54 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v54 - v25;
  v64 = type metadata accessor for MergeableJournalAttributes(0);
  v70 = v1;
  sub_25574F7C0();
  v27 = *(v10 + 104);
  v68 = *MEMORY[0x277CFB5F0];
  v69 = v10 + 104;
  v67 = v27;
  v27(v24);
  v28 = sub_25574F760();
  v29 = *(v10 + 8);
  v29(v24, v9);
  if (v28)
  {
    return (*(v10 + 32))(v71, v26, v9);
  }

  sub_25574F390();
  sub_25574F3D0();
  v66[1](v8, v6);
  v54 = sub_255668318(&qword_27F7BDED8, MEMORY[0x277CFB600], MEMORY[0x277CFB608]);
  v31 = sub_2557500E0();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = v26;
  }

  else
  {
    v33 = v19;
  }

  if (v32)
  {
    v19 = v26;
  }

  v29(v33, v9);
  v34 = *(v10 + 32);
  v35 = v65;
  (v34)(v65, v19, v9);
  (v34)(v26, v35, v9);
  v67(v24, v68, v9);
  v36 = sub_25574F760();
  v29(v24, v9);
  if (v36)
  {
    return (v34)(v71, v26, v9);
  }

  v37 = v63;
  v66 = v34;
  v38 = v61;
  sub_25574F390();
  v39 = v59;
  sub_25574F3D0();
  (*(v62 + 8))(v38, v37);
  v40 = sub_2557500E0();
  v41 = (v40 & 1) == 0;
  v42 = (v40 & 1) != 0 ? v26 : v39;
  v43 = v41 ? v26 : v39;
  v29(v42, v9);
  v44 = v60;
  (v66)(v60, v43, v9);
  v45 = v44;
  v34 = v66;
  (v66)(v26, v45, v9);
  v67(v24, v68, v9);
  v46 = sub_25574F760();
  v29(v24, v9);
  if (v46)
  {
    return (v34)(v71, v26, v9);
  }

  v47 = v56;
  v48 = v58;
  sub_25574F390();
  v49 = v55;
  sub_25574F3D0();
  (*(v57 + 8))(v47, v48);
  v50 = sub_2557500E0();
  v51 = v71;
  if (v50)
  {
    v29(v26, v9);
    v52 = v51;
    v53 = v49;
  }

  else
  {
    v29(v49, v9);
    v52 = v51;
    v53 = v26;
  }

  return (v66)(v52, v53, v9);
}

uint64_t MergeableJournalAttributes.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v44[1] = a1;
  v55 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v52 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE0, &qword_255755218);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v48 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v47 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD8, &qword_255755210);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  MEMORY[0x28223BE20](v24 - 8);
  v45 = v44 - v25;
  sub_25574F390();
  sub_25574F390();
  sub_25574F3E0();
  v26 = *(v18 + 8);
  v26(v21, v17);
  v26(v23, v17);
  type metadata accessor for MergeableJournalAttributes(0);
  v27 = v46;
  sub_25574F390();
  v28 = v47;
  sub_25574F390();
  v56 = v16;
  sub_25574F3E0();
  v29 = *(v48 + 8);
  v30 = v28;
  v31 = v49;
  v29(v30, v10);
  v29(v27, v10);
  v32 = v51;
  v33 = v53;
  sub_25574F390();
  v34 = v52;
  sub_25574F390();
  v35 = v45;
  sub_25574F3E0();
  v36 = *(v54 + 8);
  v36(v34, v33);
  v36(v32, v33);
  v37 = sub_25574FB50();
  if ((*(*(v37 - 8) + 48))(v35, 1, v37) == 1 && (v38 = type metadata accessor for MergeableColor.ObservableDifference(0), (*(*(v38 - 8) + 48))(v56, 1, v38) == 1) && (v39 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0), (*(*(v39 - 8) + 48))(v31, 1, v39) == 1))
  {
    sub_255674B20(v35, &qword_27F7BDDD0, &qword_25575D7A0);
    v40 = type metadata accessor for MergeableJournalAttributes.ObservableDifference(0);
    (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  }

  else
  {
    v41 = v55;
    sub_255663294(v35, v55, &qword_27F7BDDD0, &qword_25575D7A0);
    v42 = type metadata accessor for MergeableJournalAttributes.ObservableDifference(0);
    sub_255663294(v56, v41 + *(v42 + 20), &qword_27F7BDDD8, &qword_255755210);
    sub_255663294(v31, v41 + *(v42 + 24), &qword_27F7BDDE0, &qword_255755218);
    sub_255674B20(v35, &qword_27F7BDDD0, &qword_25575D7A0);
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  }

  sub_255674B20(v31, &qword_27F7BDDE0, &qword_255755218);
  return sub_255674B20(v56, &qword_27F7BDDD8, &qword_255755210);
}

uint64_t MergeableJournalAttributes.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  result = sub_25574FF10();
  if (!v0)
  {
    v14 = v3;
    v15 = v6;
    sub_25574F390();
    sub_255669798(&qword_27F7BDE30, &unk_27F7BFF90, &qword_2557551F0, MEMORY[0x277CFB4F0]);
    sub_25574FF60();
    (*(v8 + 8))(v10, v7);
    type metadata accessor for MergeableJournalAttributes(0);
    v12 = v15;
    sub_25574F390();
    sub_255669798(&qword_27F7BDE28, &qword_27F7BDDC8, &qword_2557551F8, MEMORY[0x277CFB4F0]);
    sub_25574FF60();
    (*(v17 + 8))(v12, v4);
    v13 = v14;
    sub_25574F390();
    sub_255669798(&qword_27F7BDE20, &unk_27F7BFFB0, &unk_255755200, MEMORY[0x277CFB4F0]);
    sub_25574FF60();
    (*(v16 + 8))(v13, v1);
    sub_25574F820();
  }

  return result;
}

uint64_t MergeableJournalAttributes.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v3 = sub_25574F860();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = (v72 - v6);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v79 = *(v85 - 8);
  v7 = MEMORY[0x28223BE20](v85);
  v75 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = v72 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v87 = *(v92 - 1);
  MEMORY[0x28223BE20](v92);
  v86 = v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x28223BE20](v11);
  v88 = v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v91 = (v72 - v14);
  v15 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (v72 - v19);
  v21 = type metadata accessor for MergeableColor(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v72 - v25;
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_25574F340();
  v27 = type metadata accessor for MergeableJournalAttributes(0);
  v28 = v27[5];
  static MergeableColor.random.getter(v26);
  sub_25568C188(v26, v24, type metadata accessor for MergeableColor);
  sub_255668318(&unk_27F7BFFA0, type metadata accessor for MergeableColor, &protocol conformance descriptor for MergeableColor);
  v89 = v21;
  v90 = v28;
  sub_25574F340();
  sub_25568C1F0(v26, type metadata accessor for MergeableColor);
  v29 = v27[6];
  *v20 = 0x672E657261757173;
  v20[1] = 0xEF3378332E646972;
  swift_storeEnumTagMultiPayload();
  sub_25568C188(v20, v18, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_255668318(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon, &protocol conformance descriptor for MergeableJournalAttributes.Icon);
  v30 = a2;
  sub_25574F340();
  sub_25568C1F0(v20, type metadata accessor for MergeableJournalAttributes.Icon);
  v31 = v27[7];
  v94 = v30;
  sub_25574F850();
  v32 = v93;
  v33 = sub_25574FE90();
  if (v32)
  {

    return sub_25568C1F0(v94, type metadata accessor for MergeableJournalAttributes);
  }

  else
  {
    v72[1] = v15;
    v34 = v90;
    v73 = v29;
    v35 = v91;
    v72[0] = v31;
    v36 = v92;
    v93 = v33;
    if (sub_25574FED0())
    {
      sub_25574F420();
      (*(v82 + 40))(v94, v35, v83);
    }

    v37 = sub_25574FED0();
    v38 = v73;
    if (v37)
    {
      v39 = v88;
      sub_25574F420();
      (*(v80 + 40))(v94 + v34, v39, v81);
    }

    v40 = sub_25574FED0();
    v42 = v86;
    v41 = v87;
    if (v40)
    {
      sub_25574F420();
      (*(v41 + 40))(v94 + v38, v42, v36);
    }

    v44 = sub_25574FEC0();
    v45 = sub_2556771A4(v44);

    v96 = v45;
    sub_2556775F8(0x656C746974, 0xE500000000000000);

    sub_2556775F8(0x726F6C6F63, 0xE500000000000000);

    sub_2556775F8(1852793705, 0xE400000000000000);

    v46 = v96 + 56;
    v47 = 1 << *(v96 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v96 + 56);
    v50 = (v47 + 63) >> 6;
    v92 = (v79 + 56);
    v51 = v96;

    v52 = 0;
    v91 = MEMORY[0x277D84F90];
    while (1)
    {
      v53 = v52;
      if (!v49)
      {
        break;
      }

LABEL_17:
      v54 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v55 = (*(v51 + 48) + ((v52 << 10) | (16 * v54)));
      v57 = *v55;
      v56 = v55[1];

      if (sub_25574FED0())
      {
        v59 = v84;
        v90 = *(v85 + 48);
        *v84 = v57;
        *(v59 + 8) = v56;

        sub_25574FDA0();

        (*v92)(v59, 0, 1, v85);
        v60 = v74;
        sub_25569AA68(v59, v74);
        sub_25569AA68(v60, v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_255698770(0, v91[2] + 1, 1, v91, &qword_27F7BE120, &qword_255755C88, &qword_27F7BDEE8, &unk_25575B4D0);
        }

        v61 = v79;
        v63 = v91[2];
        v62 = v91[3];
        v64 = v75;
        if (v63 >= v62 >> 1)
        {
          v66 = sub_255698770((v62 > 1), v63 + 1, 1, v91, &qword_27F7BE120, &qword_255755C88, &qword_27F7BDEE8, &unk_25575B4D0);
          v61 = v79;
          v91 = v66;
          v64 = v75;
        }

        v65 = v91;
        v91[2] = v63 + 1;
        sub_25569AA68(v64, v65 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v63);
      }

      else
      {

        v58 = v84;
        (*v92)(v84, 1, 1, v85);
        sub_255674B20(v58, &qword_27F7BDEE0, &unk_2557552C0);
      }
    }

    while (1)
    {
      v52 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        return sub_25568C1F0(v94, type metadata accessor for MergeableJournalAttributes);
      }

      if (v52 >= v50)
      {
        break;
      }

      v49 = *(v46 + 8 * v52);
      ++v53;
      if (v49)
      {
        goto LABEL_17;
      }
    }

    v67 = v91;
    if (v91[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
      v68 = sub_255750C90();
    }

    else
    {
      v68 = MEMORY[0x277D84F98];
    }

    v70 = v77;
    v69 = v78;
    v71 = v76;
    v98 = v68;
    sub_255699548(v67, 1, &v98);
    sub_25574F870();

    return (*(v70 + 40))(v94 + v72[0], v71, v69);
  }
}

uint64_t sub_255695518()
{
  v0 = sub_25574F0D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v25 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C0, &qword_255755C58);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_255669798(&qword_27F7BE0D0, &qword_27F7BE0C8, &qword_255755C60, MEMORY[0x277CFB718]);
  v12 = sub_2557502A0();
  v13 = sub_255668318(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v27 = MEMORY[0x259C3E270](v12, v0, v13);
  v29 = v27;
  v14 = v11;
  sub_255750290();
  sub_255669798(&qword_27F7BE0D8, &qword_27F7BE0C0, &qword_255755C58, MEMORY[0x277CFB6E8]);
  sub_255750960();
  v15 = v1;
  v18 = *(v1 + 48);
  v16 = v1 + 48;
  v17 = v18;
  if (v18(v7, 1, v0) != 1)
  {
    v23 = v9;
    v26 = *(v15 + 32);
    v27 = v16;
    v28 = v11;
    v19 = v24;
    v20 = v25;
    do
    {
      v26(v19, v7, v0);
      sub_2556FF184(v20, v19);
      (*(v15 + 8))(v20, v0);
      sub_255750960();
    }

    while (v17(v7, 1, v0) != 1);
    v14 = v28;
    v27 = v29;
    v9 = v23;
  }

  (*(v9 + 8))(v14, v8);
  return v27;
}

uint64_t MergeableJournalAttributes.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v69 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v67 = *(v71 - 8);
  v5 = MEMORY[0x28223BE20](v71);
  v68 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v70 = v13;
  v74 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v65 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v57 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v72 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v62 = *(v21 - 8);
  v22 = v62;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v56 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v61 = &v56 - v31;
  v59 = v3;
  sub_25574F390();
  v60 = a2;
  sub_25574F390();
  sub_25574F440();
  v32 = *(v22 + 8);
  v32(v25, v21);
  v32(v27, v21);
  v33 = v12;
  type metadata accessor for MergeableJournalAttributes(0);
  v34 = v64;
  sub_25574F390();
  v35 = v65;
  sub_25574F390();
  v36 = v72;
  v37 = v35;
  sub_25574F440();
  v38 = *(v74 + 8);
  v38(v37, v13);
  v39 = v67;
  v38(v34, v13);
  v40 = v71;
  v41 = v66;
  sub_25574F390();
  v42 = v68;
  sub_25574F390();
  v73 = v33;
  v43 = v61;
  sub_25574F440();
  v44 = *(v39 + 8);
  v45 = v62;
  v44(v42, v40);
  v44(v41, v40);
  if ((*(v45 + 48))(v43, 1, v21) == 1 && (*(v74 + 48))(v36, 1, v70) == 1 && (*(v39 + 48))(v73, 1, v40) == 1)
  {
    sub_255674B20(v43, &qword_27F7BDE00, &qword_255755238);
    v46 = type metadata accessor for MergeableJournalAttributes.Partial(0);
    (*(*(v46 - 8) + 56))(v69, 1, 1, v46);
  }

  else
  {
    v47 = v56;
    sub_255663294(v43, v56, &qword_27F7BDE00, &qword_255755238);
    v48 = v57;
    sub_255663294(v36, v57, &qword_27F7BDE08, &qword_255755240);
    v49 = v58;
    sub_255663294(v73, v58, &qword_27F7BDE10, &qword_255755248);
    v50 = v69;
    (*(v45 + 56))(v69, 1, 1, v21);
    v51 = type metadata accessor for MergeableJournalAttributes.Partial(0);
    v52 = *(v51 + 20);
    (*(v74 + 56))(v50 + v52, 1, 1, v70);
    v53 = *(v51 + 24);
    (*(v39 + 56))(v50 + v53, 1, 1, v71);
    sub_25568CFC8(v47, v50, &qword_27F7BDE00, &qword_255755238);
    sub_25568CFC8(v48, v50 + v52, &qword_27F7BDE08, &qword_255755240);
    v54 = v50 + v53;
    v36 = v72;
    sub_25568CFC8(v49, v54, &qword_27F7BDE10, &qword_255755248);
    sub_255674B20(v43, &qword_27F7BDE00, &qword_255755238);
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  }

  sub_255674B20(v73, &qword_27F7BDE10, &qword_255755248);
  return sub_255674B20(v36, &qword_27F7BDE08, &qword_255755240);
}

BOOL MergeableJournalAttributes.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v50 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  sub_255663294(a1, v17, &qword_27F7BDE00, &qword_255755238);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_255674B20(v17, &qword_27F7BDE00, &qword_255755238);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    sub_25574F390();
    v25 = sub_25574F480();
    v26 = *(v19 + 8);
    v26(v22, v18);
    v26(v24, v18);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  v28 = a1;
  sub_255663294(a1 + *(v27 + 20), v10, &qword_27F7BDE08, &qword_255755240);
  v29 = v50;
  if ((*(v50 + 48))(v10, 1, v11) == 1)
  {
    sub_255674B20(v10, &qword_27F7BDE08, &qword_255755240);
  }

  else
  {
    v30 = v45;
    (*(v29 + 32))(v45, v10, v11);
    type metadata accessor for MergeableJournalAttributes(0);
    v31 = v46;
    sub_25574F390();
    v32 = sub_25574F480();
    v33 = *(v29 + 8);
    v33(v31, v11);
    v33(v30, v11);
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v47;
  sub_255663294(v28 + *(v27 + 24), v47, &qword_27F7BDE10, &qword_255755248);
  v36 = v48;
  v35 = v49;
  if ((*(v48 + 48))(v34, 1, v49) == 1)
  {
    sub_255674B20(v34, &qword_27F7BDE10, &qword_255755248);
    return 1;
  }

  v37 = v43;
  (*(v36 + 32))(v43, v34, v35);
  type metadata accessor for MergeableJournalAttributes(0);
  v38 = v44;
  sub_25574F390();
  v39 = sub_25574F480();
  v40 = *(v36 + 8);
  v40(v38, v35);
  v40(v37, v35);
  return (v39 & 1) != 0;
}

BOOL MergeableJournalAttributes.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v61 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v60 = v54 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v63 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v58 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v57 = v54 - v18;
  MEMORY[0x28223BE20](v17);
  v56 = v54 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v54 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v54 - v31;
  v33 = a1;
  v34 = a1;
  v35 = v1;
  v36 = MergeableJournalAttributes.canMerge(delta:)(v34);
  if (v36)
  {
    v55 = v36;
    sub_255663294(v33, v22, &qword_27F7BDE00, &qword_255755238);
    v37 = (*(v24 + 48))(v22, 1, v23);
    v38 = v33;
    v54[1] = v35;
    if (v37 == 1)
    {
      sub_255674B20(v22, &qword_27F7BDE00, &qword_255755238);
    }

    else
    {
      (*(v24 + 32))(v32, v22, v23);
      sub_25574F390();
      sub_25574F450();
      (*(v24 + 16))(v27, v30, v23);
      sub_25574F3A0();
      v39 = *(v24 + 8);
      v39(v30, v23);
      v39(v32, v23);
      v38 = v33;
    }

    v40 = v65;
    v41 = v66;
    v42 = type metadata accessor for MergeableJournalAttributes.Partial(0);
    v43 = v62;
    sub_255663294(v38 + *(v42 + 20), v62, &qword_27F7BDE08, &qword_255755240);
    v44 = v63;
    if ((*(v63 + 48))(v43, 1, v14) == 1)
    {
      sub_255674B20(v43, &qword_27F7BDE08, &qword_255755240);
    }

    else
    {
      v45 = v56;
      (*(v44 + 32))(v56, v43, v14);
      type metadata accessor for MergeableJournalAttributes(0);
      v65 = v38;
      v46 = v57;
      sub_25574F390();
      sub_25574F450();
      (*(v44 + 16))(v58, v46, v14);
      sub_25574F3A0();
      v47 = *(v44 + 8);
      v48 = v46;
      v38 = v65;
      v41 = v66;
      v47(v48, v14);
      v47(v45, v14);
    }

    v49 = v64;
    sub_255663294(v38 + *(v42 + 24), v64, &qword_27F7BDE10, &qword_255755248);
    if ((*(v41 + 48))(v49, 1, v40) == 1)
    {
      sub_255674B20(v49, &qword_27F7BDE10, &qword_255755248);
    }

    else
    {
      v50 = v59;
      (*(v41 + 32))(v59, v49, v40);
      type metadata accessor for MergeableJournalAttributes(0);
      v51 = v60;
      sub_25574F390();
      sub_25574F450();
      (*(v41 + 16))(v61, v51, v40);
      sub_25574F3A0();
      v52 = *(v41 + 8);
      v52(v51, v40);
      v52(v50, v40);
    }

    LOBYTE(v36) = v55;
  }

  return v36;
}

uint64_t sub_255696DC4(uint64_t a1)
{
  v2 = sub_255668318(&qword_27F7BDF18, type metadata accessor for MergeableJournalAttributes, &protocol conformance descriptor for MergeableJournalAttributes);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_255696E54(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  sub_25574F390();
  sub_25574F3B0();
  (*(v11 + 8))(v13, v10);
  sub_25574F390();
  sub_25574F3B0();
  (*(v7 + 8))(v9, v6);
  v14 = v17;
  sub_25574F390();
  sub_25574F3B0();
  (*(v18 + 8))(v5, v14);
  return sub_25574F7A0();
}

uint64_t sub_2556970F4(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableJournalAttributes.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t MergeableJournalAttributes.Icon.sfSymbol.getter()
{
  v1 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v0, v3, type metadata accessor for MergeableJournalAttributes.Icon);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v3;
  }

  sub_25568C1F0(v3, type metadata accessor for MergeableJournalAttributes.Icon);
  return 0;
}

uint64_t MergeableJournalAttributes.Icon.emoji.getter()
{
  v1 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v0, v3, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v3;
  }

  sub_25568C1F0(v3, type metadata accessor for MergeableJournalAttributes.Icon);
  return 0;
}

uint64_t MergeableJournalAttributes.Icon.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v2, v6, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
    v8 = sub_25574F320();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, &v6[v7], v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    sub_25568C1F0(v6, type metadata accessor for MergeableJournalAttributes.Icon);
    v11 = sub_25574F320();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t MergeableJournalAttributes.Icon.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v50 = a2;
  v53 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = sub_25574FB50();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v48 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v48 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF8, &qword_2557552D8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v48 - v24;
  v26 = (&v48 + *(v23 + 56) - v24);
  sub_25568C188(v4, &v48 - v24, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25568C188(a1, v26, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25568C188(v25, v21, type metadata accessor for MergeableJournalAttributes.Icon);
    v38 = v21[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v42 = *v26;
      v43 = v26[1];
      v56 = *v21;
      v57 = v38;
      v54 = v42;
      v55 = v43;
      sub_25574FDD0();

      v45 = v51;
      v44 = v52;
      if ((*(v51 + 48))(v10, 1, v52) != 1)
      {
        v47 = *(v45 + 32);
        v47(v15, v10, v44);
        v36 = v53;
        v47(v53, v15, v44);
        v37 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0);
        goto LABEL_12;
      }

LABEL_10:
      sub_255674B20(v10, &qword_27F7BDDD0, &qword_25575D7A0);
      sub_25568C1F0(v25, type metadata accessor for MergeableJournalAttributes.Icon);
      v46 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0);
      return (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_8:
    v39 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0);
    v40 = v53;
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v40, 0, 1, v39);
    return sub_255674B20(v25, &qword_27F7BDEF8, &qword_2557552D8);
  }

  sub_25568C188(v25, v19, type metadata accessor for MergeableJournalAttributes.Icon);
  v28 = v19[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_7:

    goto LABEL_8;
  }

  v29 = *v19;
  v30 = *v26;
  v31 = v26[1];
  v56 = v29;
  v57 = v28;
  v54 = v30;
  v55 = v31;
  v10 = v49;
  sub_25574FDD0();

  v33 = v51;
  v32 = v52;
  if ((*(v51 + 48))(v10, 1, v52) == 1)
  {
    goto LABEL_10;
  }

  v34 = *(v33 + 32);
  v35 = v48;
  v34(v48, v10, v32);
  v36 = v53;
  v34(v53, v35, v32);
  v37 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  return sub_25568C1F0(v25, type metadata accessor for MergeableJournalAttributes.Icon);
}

uint64_t MergeableJournalAttributes.Icon.visitReferences(_:)(uint64_t a1)
{
  v2 = sub_25574F320();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v1, v8, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_25568C1F0(v8, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(v3 + 32))(v5, &v8[*(v10 + 48)], v2);
  sub_25574F2E0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MergeableJournalAttributes.Icon.copy(renamingReferences:)@<X0>(void *a2@<X8>)
{
  v4 = sub_25574F320();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v2, v10, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v10;
  if (EnumCaseMultiPayload > 1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
    (*(v5 + 32))(v7, &v10[*(v14 + 48)], v4);
    *a2 = v12;
    sub_25574F300();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = *(v10 + 1);
    *a2 = v12;
    a2[1] = v13;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t MergeableJournalAttributes.Icon.init(from:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v24 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - v11);
  sub_25574FEA0();
  if (v2)
  {
  }

  v25 = a2;
  v13 = sub_25574FEB0();

  if (v13 == 2)
  {
    v21 = sub_255750260();
    v23 = v22;

    *v10 = v21;
    v10[1] = v23;
    swift_storeEnumTagMultiPayload();
    v7 = v10;
LABEL_9:
    v20 = v25;
    return sub_25569A468(v7, v20, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  if (v13 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
    *v7 = v13;
    sub_25574F310();

    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  v15 = sub_255750260();
  v17 = v16;

  v18 = v25;
  *v12 = v15;
  v12[1] = v17;
  v19 = v18;
  swift_storeEnumTagMultiPayload();
  v20 = v19;
  v7 = v12;
  return sub_25569A468(v7, v20, type metadata accessor for MergeableJournalAttributes.Icon);
}

uint64_t MergeableJournalAttributes.Icon.encode(to:)()
{
  v2 = sub_25574F320();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25574FF20();
  if (!v1)
  {
    sub_25568C188(v0, v8, type metadata accessor for MergeableJournalAttributes.Icon);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      (*(v3 + 32))(v5, &v8[*(v10 + 48)], v2);
      sub_25574FF50();
      sub_25574FF30();

      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      sub_25574FF40();

      sub_25574FF30();
    }
  }

  return result;
}

uint64_t MergeableJournalAttributes.Icon.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFB5E0];
  v3 = sub_25574F770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2556984D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_25574F320();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v2, v9, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_25568C1F0(v9, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(v4 + 32))(v7, &v9[*(v11 + 48)], v3);
  sub_25574F2E0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2556986B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFB5E0];
  v3 = sub_25574F770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_255698770(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_255698980(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0E0, &qword_255755C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_255698AA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_255698C80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED60, &qword_255755C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_255698D84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE098, &qword_255755C48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_255698E88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE090, &qword_255755C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255698F94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE088, &qword_255755C38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_255699098(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE080, &qword_255755C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}