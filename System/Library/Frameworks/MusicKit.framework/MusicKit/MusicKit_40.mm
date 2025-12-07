unint64_t sub_217573F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29BF0;
  if (!qword_27CB29BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29BF0);
  }

  return result;
}

unint64_t sub_217573FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29BF8;
  if (!qword_27CB29BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29BF8);
  }

  return result;
}

unint64_t sub_21757401C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C00;
  if (!qword_27CB29C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C00);
  }

  return result;
}

unint64_t sub_217574070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C08;
  if (!qword_27CB29C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C08);
  }

  return result;
}

unint64_t sub_2175740C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C10;
  if (!qword_27CB29C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C10);
  }

  return result;
}

unint64_t sub_217574118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C18;
  if (!qword_27CB29C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C18);
  }

  return result;
}

uint64_t LegacyModelKeepLocalEnabledStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t LegacyModelKeepLocalEnabledStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v73 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29C20, &qword_21777AB80);
  OUTLINED_FUNCTION_0_0();
  v70 = v3;
  v71 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_150();
  v76 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29C28, &qword_21777AB88);
  OUTLINED_FUNCTION_0_0();
  v68 = v7;
  v69 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v75 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29C30, &qword_21777AB90);
  OUTLINED_FUNCTION_0_0();
  v66 = v12;
  v67 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_150();
  v72 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29C38, &qword_21777AB98);
  OUTLINED_FUNCTION_0_0();
  v64 = v16;
  v65 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29C40, &qword_21777ABA0);
  OUTLINED_FUNCTION_0_0();
  v63 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29C48, &unk_21777ABA8);
  OUTLINED_FUNCTION_0_0();
  v74 = v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  v30 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217573F74(v30, v31, v32);
  v33 = v77;
  sub_2177532C8();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v20;
  v62 = v24;
  v77 = v19;
  v34 = v75;
  v35 = v76;
  v36 = v29;
  sub_217752EB8();
  result = sub_21733CF68();
  if (v39 == v40 >> 1)
  {
    v41 = v74;
LABEL_9:
    v53 = sub_217752B48();
    swift_allocError();
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v55 = &type metadata for LegacyModelKeepLocalEnabledStatus;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v41 + 8))(v36, v25);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v39 >= (v40 >> 1))
  {
    __break(1u);
  }

  else
  {
    v59 = *(v38 + v39);
    v42 = sub_21733CF64();
    v44 = v43;
    v46 = v45;
    v47 = swift_unknownObjectRelease();
    v60 = v42;
    if (v44 != v46 >> 1)
    {
      v41 = v74;
      v36 = v29;
      goto LABEL_9;
    }

    v50 = v73;
    v51 = v74;
    switch(v59)
    {
      case 1:
        v79 = 1;
        sub_2175740C4(v47, v48, v49);
        v34 = v77;
        OUTLINED_FUNCTION_1_86(&type metadata for LegacyModelKeepLocalEnabledStatus.NoneCodingKeys, &v79);
        swift_unknownObjectRelease();
        v57 = v64;
        v56 = v65;
        goto LABEL_15;
      case 2:
        v80 = 2;
        sub_217574070(v47, v48, v49);
        v34 = v72;
        OUTLINED_FUNCTION_1_86(&type metadata for LegacyModelKeepLocalEnabledStatus.EnabledCodingKeys, &v80);
        swift_unknownObjectRelease();
        v57 = v66;
        v56 = v67;
        goto LABEL_15;
      case 3:
        v81[0] = 3;
        sub_21757401C(v47, v48, v49);
        OUTLINED_FUNCTION_1_86(&type metadata for LegacyModelKeepLocalEnabledStatus.AutomaticCodingKeys, v81);
        swift_unknownObjectRelease();
        v56 = v68;
        v57 = v69;
LABEL_15:
        (*(v57 + 8))(v34, v56);
        break;
      case 4:
        v81[1] = 4;
        sub_217573FC8(v47, v48, v49);
        v42 = v29;
        sub_217752DE8();
        swift_unknownObjectRelease();
        (*(v71 + 8))(v35, v70);
        break;
      default:
        v78 = 0;
        sub_217574118(v47, v48, v49);
        v52 = v62;
        OUTLINED_FUNCTION_1_86(&type metadata for LegacyModelKeepLocalEnabledStatus.DisabledCodingKeys, &v78);
        swift_unknownObjectRelease();
        (*(v63 + 8))(v52, v61);
        break;
    }

    (*(v51 + 8))(v42, v25);
    *v50 = v59;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

MusicKit::LegacyModelKeepLocalEnabledStatus_optional __swiftcall LegacyModelKeepLocalEnabledStatus.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() keepLocalEnabledStateForRawValue_];
  v4 = 5;
  if (v3 < 5)
  {
    v4 = v3;
  }

  *v2 = v4;
  return v3;
}

Swift::Int sub_217574908@<X0>(Swift::Int *a1@<X8>)
{
  result = LegacyModelKeepLocalEnabledStatus.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t LegacyModelKeepLocalEnabledStatus.description.getter()
{
  result = 0x656C62617369642ELL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_6_60();
      break;
    case 2:
      result = OUTLINED_FUNCTION_5_63();
      break;
    case 3:
      result = OUTLINED_FUNCTION_3_78();
      break;
    case 4:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Optional<A>.musicKit_prettyDescription.getter()
{
  result = 7104878;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_6_60();
      break;
    case 2:
      result = OUTLINED_FUNCTION_5_63();
      break;
    case 3:
      result = OUTLINED_FUNCTION_3_78();
      break;
    case 4:
      result = 0x6C6C65636E61632ELL;
      break;
    case 5:
      return result;
    default:
      result = 0x656C62617369642ELL;
      break;
  }

  return result;
}

{
  result = 7104878;
  switch(*v0)
  {
    case 1:
    case 2:
      result = OUTLINED_FUNCTION_8_76();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_92();
      break;
    case 4:
      result = OUTLINED_FUNCTION_7_72();
      break;
    case 5:
      result = OUTLINED_FUNCTION_4_108();
      break;
    case 6:
      result = OUTLINED_FUNCTION_9_75();
      break;
    case 7:
      return result;
    default:
      result = 0x656E6F6E2ELL;
      break;
  }

  return result;
}

{
  if (*(v0 + 8))
  {
    return 7104878;
  }

  else
  {
    return LegacyModelKeepLocalManagedStatusReasons.description.getter();
  }
}

{
  v1 = v0;
  v2 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  sub_2175CD0A0(v1, v16 - v10);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return 7104878;
  }

  (*(v4 + 32))(v8, v11, v2);
  v16[0] = 34;
  v16[1] = 0xE100000000000000;
  sub_21736C310();
  v13 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v13);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000, v14);
  v12 = v16[0];
  (*(v4 + 8))(v8, v2);
  return v12;
}

unint64_t sub_217574A14()
{
  result = qword_27CB29C50;
  if (!qword_27CB29C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29C58, &qword_21777ABB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C50);
  }

  return result;
}

unint64_t sub_217574A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C60;
  if (!qword_27CB29C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C60);
  }

  return result;
}

_BYTE *sub_217574AE0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217574C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C68;
  if (!qword_27CB29C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C68);
  }

  return result;
}

unint64_t sub_217574C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C70;
  if (!qword_27CB29C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C70);
  }

  return result;
}

unint64_t sub_217574CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C78;
  if (!qword_27CB29C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C78);
  }

  return result;
}

unint64_t sub_217574D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C80;
  if (!qword_27CB29C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C80);
  }

  return result;
}

unint64_t sub_217574D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C88;
  if (!qword_27CB29C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C88);
  }

  return result;
}

unint64_t sub_217574DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C90;
  if (!qword_27CB29C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C90);
  }

  return result;
}

unint64_t sub_217574E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29C98;
  if (!qword_27CB29C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29C98);
  }

  return result;
}

unint64_t sub_217574E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CA0;
  if (!qword_27CB29CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CA0);
  }

  return result;
}

unint64_t sub_217574ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CA8;
  if (!qword_27CB29CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CA8);
  }

  return result;
}

unint64_t sub_217574F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CB0;
  if (!qword_27CB29CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CB0);
  }

  return result;
}

unint64_t sub_217574F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CB8;
  if (!qword_27CB29CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CB8);
  }

  return result;
}

unint64_t sub_217574FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CC0;
  if (!qword_27CB29CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CC0);
  }

  return result;
}

unint64_t sub_217575030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CC8;
  if (!qword_27CB29CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CC8);
  }

  return result;
}

void sub_21757508C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = 0;
  v26 = *(a1 + 16);
  while (v26 != v3)
  {
    sub_217751428();
    v4 = sub_217751408();
    v6 = v5;
    v7 = sub_217751418();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v27 = *v2;
      v12 = sub_21763246C(v4, v6);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        sub_217753178();
        __break(1u);
        return;
      }

      v14 = v12;
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28608, &qword_21777B260);
      if (sub_217752CB8())
      {
        v16 = sub_21763246C(v4, v6);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_20;
        }

        v14 = v16;
      }

      if (v15)
      {
        v18 = (v27[7] + 16 * v14);
        *v18 = v10;
        v18[1] = v9;
      }

      else
      {
        v27[(v14 >> 6) + 8] |= 1 << v14;
        v20 = (v27[6] + 16 * v14);
        *v20 = v4;
        v20[1] = v6;
        v21 = (v27[7] + 16 * v14);
        *v21 = v10;
        v21[1] = v9;
        v22 = v27[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_19;
        }

        v27[2] = v24;
        sub_217751DE8();
      }

      v2 = a2;
      *a2 = v27;
    }

    else
    {
      sub_21763246C(v4, v6);
      if (v19)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v28 = *v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28608, &qword_21777B260);
        sub_217752CB8();

        sub_217752CD8();
        *v2 = v28;
      }
    }

    ++v3;
  }
}

unint64_t sub_217575358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a4;
  v71 = a1;
  v8 = sub_217751518();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v69 = sub_2177513A8();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v68 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v20 - 8);
  v70 = &v63 - v21;
  v22 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v77 = v23;
  MEMORY[0x28223BE20](v24);
  v78 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v76 = &v63 - v28;
  v83 = 0xD000000000000012;
  v84 = 0x80000002177B0E20;
  v81 = 47;
  v82 = 0xE100000000000000;
  MEMORY[0x21CEA23B0](a2, a3, v27);
  if (a5)
  {
    v79 = 47;
    v80 = 0xE100000000000000;
    MEMORY[0x21CEA23B0](v75, a5);
    MEMORY[0x21CEA23B0](v79, v80);
  }

  MEMORY[0x21CEA23B0](0x7D687B787D777B2FLL, 0xE800000000000000, v29);
  MEMORY[0x21CEA23B0](v81, v82);
  if (*(v71 + 16))
  {
    v30 = sub_217751DE8();
    v79 = sub_2173B1944(v30);
    sub_217751DE8();
    sub_217577878(&v79);

    v31 = *(v79 + 16);
    if (v31)
    {
      v64 = v14;
      v65 = v10;
      v66 = v8;
      v67 = (v16 + 8);
      v73 = v77 + 8;
      v74 = (v77 + 16);
      v72 = v77 + 32;
      v63 = v79;
      v32 = (v79 + 40);
      v33 = MEMORY[0x277D84F90];
      v34 = v71;
      v75 = v22;
      while (1)
      {
        v36 = *(v32 - 1);
        v35 = *v32;
        v37 = *(v34 + 16);
        sub_217751DE8();
        if (v37)
        {
          v38 = sub_21763246C(v36, v35);
          if (v39)
          {
            v40 = (*(v34 + 56) + 16 * v38);
            v41 = *v40;
            v42 = v40[1];
            sub_217751DE8();
            if (v42)
            {
              sub_217751DE8();
              v43 = v70;
              sub_2177516C8();
              v44 = sub_2177516D8();
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v44);

              sub_2171F0738(v43, &unk_27CB277C0, &qword_217758DC0);
              if (EnumTagSinglePayload != 1)
              {
                v79 = v41;
                v80 = v42;
                v51 = v68;
                v52 = sub_217751388();
                sub_21733A5C8(v52, v53, v54);
                sub_2177529A8();
                (*v67)(v51, v69);

                OUTLINED_FUNCTION_10_44();
                sub_2177513F8();
                v34 = v71;
                goto LABEL_12;
              }

              v34 = v71;
            }
          }
        }

        OUTLINED_FUNCTION_10_44();
        sub_2177513F8();
LABEL_12:

        v47 = v75;
        (*v74)(v78, a3, v75, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172B1A50(0, *(v33 + 16) + 1, 1, v33);
          v33 = v55;
        }

        v49 = *(v33 + 16);
        v48 = *(v33 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_2172B1A50(v48 > 1, v49 + 1, 1, v33);
          v33 = v56;
        }

        v50 = v77;
        (*(v77 + 8))(a3, v47);
        *(v33 + 16) = v49 + 1;
        (*(v50 + 32))(v33 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, v78, v47);
        v32 += 2;
        if (!--v31)
        {

          v10 = v65;
          v8 = v66;
          v14 = v64;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    sub_217751508();
    v57 = sub_217751458();
    v58 = MEMORY[0x21CEA1820](v57);
    if (v60)
    {
      v79 = 63;
      v80 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](v58);

      MEMORY[0x21CEA23B0](v79, v80, v61);
    }

    (*(v10 + 8))(v14, v8, v59);
  }

  else
  {
  }

  return v83;
}

unint64_t sub_21757596C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29CD0, &unk_21777B250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_217751DE8();
  v5 = sub_217751DC8();
  v6 = sub_217575358(v5, 0x6E6569736E617274, 0xE900000000000074, 0, 0);

  return v6;
}

uint64_t sub_217575A44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_2177516D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2177512C8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2171F0738(v2, &unk_27CB277C0, &qword_217758DC0);
LABEL_18:
    v14 = 0;
    return v14 & 1;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = sub_2177516B8();
  if (!v8)
  {
    goto LABEL_17;
  }

  if (v7 == 0x74694B636973756DLL && v8 == 0xE800000000000000)
  {
  }

  else
  {
    v10 = sub_217753058();

    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v11 = sub_2177516A8();
  if (!v12)
  {
LABEL_17:
    (*(v4 + 8))(v6, v3);
    goto LABEL_18;
  }

  if (v11 == 0x6B726F77747261 && v12 == 0xE700000000000000)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_217753058();
  }

  (*(v4 + 8))(v6, v3, v16);
  return v14 & 1;
}

uint64_t sub_217575D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2177512F8();
  OUTLINED_FUNCTION_43();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_217575F08()
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_9_47();
  v4 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v5[5] = ObjectType;
  v6 = v0;
  sub_21765A6D8(0, 0, v1, &unk_21777B248, v5);
}

uint64_t sub_217575FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v6 = sub_2177512F8();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = sub_2177516D8();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217576164, 0, 0);
}

uint64_t sub_217576164()
{
  v3 = [*(v0 + 96) client];
  *(v0 + 200) = v3;
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = [*(v0 + 96) request];
  sub_2177512A8();

  sub_2177512C8();
  v10 = *(v7 + 8);
  *(v0 + 208) = v10;
  *(v0 + 216) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {
    sub_2171F0738(*(v0 + 128), &unk_27CB277C0, &qword_217758DC0);
LABEL_9:
    v16 = *(v0 + 208);
    v39 = *(v0 + 216);
    OUTLINED_FUNCTION_8_53();
    v17 = sub_217751F48();
    v40 = v18;
    v41 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24570, &unk_217758A80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2177586E0;
    v20 = sub_217751F48();
    OUTLINED_FUNCTION_7_54(v20, v21);

    OUTLINED_FUNCTION_3_79();
    v22 = [v2 &selRef_playlistTypeForRawValue_];
    sub_2177512A8();

    sub_2177512C8();
    v16(&selRef_musicKit_playbackID, v1);
    v23 = sub_217751FA8();
    MEMORY[0x21CEA23B0](v23);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v24);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v42;
    *(inited + 56) = v43;
    sub_217751DC8();
    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v33 = OUTLINED_FUNCTION_6_61(v25, v26, v27, v28, v29, v30, v31, v32, v39, v40, v41);
    v34 = v33;
    v35 = sub_217751628();

    OUTLINED_FUNCTION_5_64(v36, sel_URLProtocol_didFailWithError_);
    swift_unknownObjectRelease();
LABEL_10:
    OUTLINED_FUNCTION_4_78();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 192);
  (*(*(v0 + 176) + 32))(v11, *(v0 + 128), *(v0 + 168));
  v12 = sub_217576A44(v11);
  *(v0 + 224) = v12;
  if (!v12)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
    goto LABEL_9;
  }

  v13 = swift_task_alloc();
  *(v0 + 232) = v13;
  *v13 = v0;
  v13[1] = sub_2175764E0;
  OUTLINED_FUNCTION_13_3();

  return ArtworkCatalog.imageData.getter();
}

uint64_t sub_2175764E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v5 = sub_217576930;
  }

  else
  {
    v5 = sub_2175765F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2175765F8()
{
  v4 = v0[23];
  (*(v0[22] + 16))(v4, v0[24], v0[21]);
  v5 = objc_allocWithZone(MEMORY[0x277CCAA40]);
  v6 = sub_2175776B0(v4, 200, 0, 0, 0);
  if (v6)
  {
    v7 = v6;
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[25];
    v42 = v0[24];
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[12];
    [v10 URLProtocol:v13 didReceiveResponse:v6 cacheStoragePolicy:2];
    v14 = sub_217751738();
    [v10 URLProtocol:v13 didLoadData:v14];

    [v10 URLProtocolDidFinishLoading_];
    sub_217275694(v9, v8);

    swift_unknownObjectRelease();

    (*(v11 + 8))(v42, v12);
  }

  else
  {
    v15 = v0[30];
    v16 = v0[31];
    (*(v0[22] + 8))(v0[24], v0[21]);
    sub_217275694(v15, v16);

    v17 = v0[26];
    OUTLINED_FUNCTION_8_53();
    v18 = sub_217751F48();
    v41 = v19;
    v43 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24570, &unk_217758A80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2177586E0;
    v21 = sub_217751F48();
    OUTLINED_FUNCTION_7_54(v21, v22);

    OUTLINED_FUNCTION_3_79();
    v23 = [v3 request];
    sub_2177512A8();

    sub_2177512C8();
    v17(v1, v2);
    v24 = sub_217751FA8();
    MEMORY[0x21CEA23B0](v24);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v25);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v44;
    *(inited + 56) = v45;
    sub_217751DC8();
    v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v34 = OUTLINED_FUNCTION_6_61(v26, v27, v28, v29, v30, v31, v32, v33, v40, v41, v43);
    v35 = v34;
    v36 = sub_217751628();

    OUTLINED_FUNCTION_5_64(v37, sel_URLProtocol_didFailWithError_);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_4_78();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_13_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_217576930()
{
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];

  (*(v4 + 8))(v2, v3);
  v5 = v1;
  v6 = v0[32];
  v7 = v6;
  v8 = sub_217751628();

  OUTLINED_FUNCTION_5_64(v9, sel_URLProtocol_didFailWithError_);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4_78();

  OUTLINED_FUNCTION_20_0();

  return v10();
}

id sub_217576A44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_9_47();
  v4 = sub_217751518();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_217751678();
  v52 = v11;
  v12 = sub_2177516B8();
  if (!v13)
  {
    goto LABEL_24;
  }

  if (v12 == 0x74694B636973756DLL && v13 == 0xE800000000000000)
  {
  }

  else
  {
    v2 = sub_217753058();

    if ((v2 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v15 = sub_2177516A8();
  if (!v16)
  {
    goto LABEL_24;
  }

  if (v15 == 0x6B726F77747261 && v16 == 0xE700000000000000)
  {

    goto LABEL_17;
  }

  v2 = sub_217753058();

  if ((v2 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_17:
  if (*(v11 + 16) < 3uLL)
  {
    goto LABEL_24;
  }

  sub_2175B1394(0, 1);
  v18 = v52;
  if (v52[2])
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  sub_21750360C();
  v18 = v47;
LABEL_20:
  v19 = v18[2];
  if (!v19)
  {
    __break(1u);
    goto LABEL_54;
  }

  v52 = v18;
  v20 = v19 - 1;
  v21 = &v18[2 * v20];
  v22 = v21[4];
  v2 = v21[5];
  v18[2] = v20;
  if (!v20)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v23 = v18[5];
  v49 = v18[4];
  v50 = v22;
  sub_217751DE8();
  sub_2175B1394(0, 1);
  if (v52[2])
  {
    v24 = v52[4];
    v25 = v52[5];
    sub_217751DE8();
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  sub_217751478();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) != 1)
  {
    v48 = v2;
    (*(v6 + 32))(v10, v1, v4);
    v30 = sub_217751448();
    if (!v30)
    {
      v37 = *(v6 + 8);
      v6 += 8;
      v37(v10, v4);

      v1 = 0;
      goto LABEL_42;
    }

    v31 = v30;
    v51[0] = sub_217751DC8();
    sub_21757508C(v31, v51);

    v32 = v49 == 0x6E6569736E617274 && v23 == 0xE900000000000074;
    if (v32 || (sub_217753058() & 1) != 0)
    {
      v33 = v51[0];
      v34 = sub_2173AC8F0(25705, 0xE200000000000000, v51[0]);
      if (v35)
      {
        v1 = v34;
        v2 = v35;

        if (qword_280BE8888 != -1)
        {
          goto LABEL_56;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v33 = v51[0];
    }

    type metadata accessor for ArtworkCatalog();
    sub_217751DE8();
    v1 = sub_2173C997C(v49, v23, v24, v25, v33);
    goto LABEL_41;
  }

  v27 = sub_2171F0738(v1, &qword_27CB277B8, &unk_21776B220);
  v1 = 0;
  while (1)
  {
    v51[0] = v50;
    v51[1] = v2;
    sub_21733A5C8(v27, v28, v29);
    v4 = sub_217752978();

    if (v4[2] != 2 || (v39 = v4[4], v10 = v4[5], sub_217751DE8(), v40 = sub_217288064(v39, v10), (v41 & 1) != 0))
    {

      goto LABEL_50;
    }

    if (v4[2] >= 2uLL)
    {
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
LABEL_37:
    v1 = sub_2175771DC(v1, v2);

LABEL_41:
    v38 = *(v6 + 8);
    v6 += 8;
    v38(v10, v4, v36);

LABEL_42:
    v2 = v48;
  }

  v42 = *&v40;
  v43 = v4[6];
  v44 = v4[7];
  sub_217751DE8();

  v45 = sub_217288064(v43, v44);
  if ((v46 & 1) == 0 && v1)
  {
    sub_2173CA28C(v45, v42, *&v45);
  }

LABEL_50:

  return v1;
}

id sub_217576FF4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_217751288();
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ArtworkLoadingProtocol();
  v9 = objc_msgSendSuper2(&v12, sel_initWithRequest_cachedResponse_client_, v8, a2, a3);

  swift_unknownObjectRelease();
  sub_2177512F8();
  OUTLINED_FUNCTION_43();
  (*(v10 + 8))(a1);
  return v9;
}

id sub_21757715C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkLoadingProtocol();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2175771A0()
{
  type metadata accessor for ArtworkCatalogRegistry();
  v0 = swift_allocObject();
  result = sub_217577638();
  qword_280C025A0 = v0;
  return result;
}

id sub_2175771DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);

  sub_217751DE8();
  os_unfair_lock_lock(v4);
  v5 = *(v2 + 16);
  v6 = sub_217751F18();
  v7 = [v5 objectForKey_];

  os_unfair_lock_unlock(*(v3 + 16));

  return v7;
}

uint64_t sub_217577290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);
  v6 = *(v5 + 16);

  sub_217751DE8();
  os_unfair_lock_lock(v6);
  v7 = *(v3 + 16);
  v8 = sub_217751F18();
  [v7 setObject:a1 forKey:v8];

  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_217577358(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);

  sub_217751DE8();
  os_unfair_lock_lock(v4);
  v5 = *(v2 + 16);
  v6 = sub_217751F18();
  [v5 removeObjectForKey_];

  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_217577430()
{
  sub_217577408();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_217577488(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_217577548;

  return sub_217575FE8(a1, v4, v5, v7, v6);
}

uint64_t sub_217577548()
{

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_217577638()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:0];
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 24) = v1;
  return v0;
}

id sub_2175776B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_217751688();
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_217751F18();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_217751D88();

LABEL_6:
  v15 = [v6 initWithURL:v11 statusCode:a2 HTTPVersion:v13 headerFields:{v14, v12}];

  v16 = sub_2177516D8();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v15;
}

id sub_2175777C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_217751F18();

  if (a4)
  {
    v9 = sub_217751D88();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 initWithDomain:v7 code:a3 userInfo:{v9, v8}];

  return v10;
}

void sub_217577878(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2174923A8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_2175778E4(v5);
  *a1 = v2;
}

void sub_2175778E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_217752FB8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_217752348();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_217577AA0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2175779D8(0, v2, 1, a1);
  }
}

uint64_t sub_2175779D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_217753058();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_217577AA0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_217753058();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_217753058()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_217753058() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2310(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_2172B2310(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_2175780D4((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_217577FA8(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_217577FA8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_217717044(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2175780D4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2175780D4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_217230498(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_217753058() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_217230498(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_217753058() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t Station._FeaturedEditorialKind.hashValue.getter()
{
  sub_2177531E8();
  MEMORY[0x21CEA3550](0);
  return sub_217753238();
}

void Station._FeaturedEditorialKind.init(from:)(void *a1)
{
  sub_2171FF30C(a1, &v16);
  __swift_project_boxed_opaque_existential_1(&v16, v18);
  OUTLINED_FUNCTION_0_94();
  sub_2177532A8();
  v3 = v1;
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_0_94();
    v6 = sub_217753078();
    v8 = v7;
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    if (v6 == 0xD000000000000016 && 0x80000002177AC300 == v8)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v10 = sub_217753058();
      v11 = swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        sub_217578560(v11, v12, v13);
        v16 = 0;
        v17 = 0;
        swift_willThrowTypedImpl();
        v3 = swift_allocError();
        *v14 = 0;
        v14[1] = 0;
        goto LABEL_4;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  __swift_destroy_boxed_opaque_existential_1(&v16);
LABEL_4:
  v19 = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (swift_dynamicCast())
  {

    v15[0] = v16;
    v15[1] = v17;
    sub_217752B48();
    swift_allocError();
    CloudConversionError.convertToDecodingError(for:decodedTypeDescription:)(a1, 0xD00000000000001FLL, 0x80000002177B0E40, v5);

    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217578560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CD8;
  if (!qword_27CB29CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CD8);
  }

  return result;
}

uint64_t Station._FeaturedEditorialKind.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_21757865C()
{
  result = qword_27CB29CE0;
  if (!qword_27CB29CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29CE8, &qword_21777B268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CE0);
  }

  return result;
}

unint64_t sub_2175786C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CF0;
  if (!qword_27CB29CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CF0);
  }

  return result;
}

_BYTE *_s22_FeaturedEditorialKindOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_2175787F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_217578834(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217578898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29CF8;
  if (!qword_27CB29CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29CF8);
  }

  return result;
}

uint64_t sub_2175788EC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[4] == a2[4] && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = a2[7];
  if (v11)
  {
    if (v12)
    {
      v13 = a1[6] == a2[6] && v11 == v12;
      if (v13 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2175789E4(uint64_t a1)
{
  sub_217751FF8();
  if (v1[3])
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  if (v1[5])
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  if (!v1[7])
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_217578AC0()
{
  sub_2177531E8();
  sub_2175789E4(v1);
  return sub_217753238();
}

uint64_t sub_217578B0C(uint64_t a1)
{
  sub_2177531E8();
  sub_2175789E4(v2);
  return sub_217753238();
}

void AlbumPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v60 = v0;
  v61 = v1;
  v58 = v2;
  v59 = v3;
  v56 = v4;
  v57 = v5;
  v7 = v6;
  v9 = v8;
  memcpy(__dst, v10, sizeof(__dst));
  v11 = *v7;
  v12 = v7[1];
  v13 = *(v7 + 16);
  sub_2172A497C(__src);
  memcpy(v9, __src, 0x221uLL);
  v14 = type metadata accessor for AlbumPropertyProvider(0);
  *(v9 + 552) = 0u;
  v15 = v14[6];
  v16 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(v9 + v15, 1, 1, v16);
  *(v9 + v14[7]) = 0;
  v17 = OUTLINED_FUNCTION_55_8(v14[8]);
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_44_9(v14[9]);
  OUTLINED_FUNCTION_44_9(v14[10]);
  *(v9 + v14[11]) = 2;
  OUTLINED_FUNCTION_182_3(v14[12]);
  v20 = v14[13];
  v21 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(v9 + v20, 1, 1, v21);
  OUTLINED_FUNCTION_44_9(v14[14]);
  *(v9 + v14[15]) = 0;
  v22 = (v9 + v14[16]);
  *v22 = xmmword_2177586D0;
  v22[1] = 0u;
  v22[2] = 0u;
  v22[3] = 0u;
  *(v9 + v14[17]) = 0;
  v23 = OUTLINED_FUNCTION_55_8(v14[18]);
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
  *(v9 + v14[19]) = 3;
  *(v9 + v14[20]) = 0;
  *(v9 + v14[21]) = 2;
  *(v9 + v14[22]) = 2;
  *(v9 + v14[23]) = 2;
  *(v9 + v14[24]) = 2;
  *(v9 + v14[25]) = 2;
  *(v9 + v14[26]) = 2;
  *(v9 + v14[27]) = 2;
  *(v9 + v14[28]) = 2;
  *(v9 + v14[29]) = 2;
  *(v9 + v14[30]) = 2;
  *(v9 + v14[31]) = 5;
  *(v9 + v14[32]) = 7;
  OUTLINED_FUNCTION_44_9(v14[33]);
  v26 = OUTLINED_FUNCTION_55_8(v14[34]);
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
  v29 = OUTLINED_FUNCTION_55_8(v14[35]);
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v21);
  memcpy((v9 + v14[36]), __src, 0x221uLL);
  *(v9 + v14[37]) = 0;
  v32 = v9 + v14[38];
  *(v32 + 112) = 0;
  *(v32 + 80) = 0u;
  *(v32 + 96) = 0u;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *v32 = 0u;
  OUTLINED_FUNCTION_182_3(v14[39]);
  v33 = OUTLINED_FUNCTION_55_8(v14[40]);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v21);
  OUTLINED_FUNCTION_44_9(v14[41]);
  *(v9 + v14[42]) = 2;
  *(v9 + v14[43]) = 2;
  OUTLINED_FUNCTION_182_3(v14[44]);
  OUTLINED_FUNCTION_182_3(v14[45]);
  OUTLINED_FUNCTION_44_9(v14[46]);
  OUTLINED_FUNCTION_182_3(v14[47]);
  v36 = OUTLINED_FUNCTION_55_8(v14[48]);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v16);
  OUTLINED_FUNCTION_182_3(v14[49]);
  v39 = v9 + v14[50];
  *(v39 + 96) = 0;
  *(v39 + 64) = 0u;
  *(v39 + 80) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  OUTLINED_FUNCTION_2_3(v14[51], 0);
  OUTLINED_FUNCTION_2_3(v14[52], v40);
  OUTLINED_FUNCTION_2_3(v14[53], v41);
  OUTLINED_FUNCTION_2_3(v14[54], v42);
  OUTLINED_FUNCTION_2_3(v14[55], v43);
  OUTLINED_FUNCTION_2_3(v14[56], v44);
  OUTLINED_FUNCTION_2_3(v14[57], v45);
  OUTLINED_FUNCTION_2_3(v14[58], v46);
  OUTLINED_FUNCTION_2_3(v14[59], v47);
  OUTLINED_FUNCTION_2_3(v14[60], v48);
  *(v9 + v14[61]) = 0;
  v49 = v9 + v14[62];
  *v49 = xmmword_2177586D0;
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  OUTLINED_FUNCTION_182_3(v14[63]);
  *(v9 + v14[64]) = 0;
  v50 = (v9 + v14[65]);
  v50[6] = v51;
  v50[7] = v51;
  v50[4] = v51;
  v50[5] = v51;
  v50[2] = v51;
  v50[3] = v51;
  *v50 = v51;
  v50[1] = v51;
  OUTLINED_FUNCTION_2_3(v14[66], v51);
  if (qword_280BE88A0 != -1)
  {
    swift_once();
  }

  v52 = qword_280C025A8;
  if (qword_280C025A8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v55 = sub_217752D28();

    v52 = v55;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v9 + v14[67]) = v52;
  v53 = (v9 + v14[70]);
  memcpy((v9 + v14[68]), __dst, 0x161uLL);
  v54 = v9 + v14[69];
  *v54 = v11;
  *(v54 + 8) = v12;
  *(v54 + 16) = v13;
  *v53 = v56;
  v53[1] = v57;
  *(v9 + v14[71]) = v58;
  *(v9 + v14[72]) = v59;
  *(v9 + v14[73]) = v60;
  *(v9 + v14[74]) = v61;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for AlbumPropertyProvider(uint64_t a1)
{
  result = qword_280BE8890;
  if (!qword_280BE8890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlbumPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *AlbumPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

void AlbumPropertyProvider.artistName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 552) = a1;
  *(v2 + 560) = a2;
}

uint64_t AlbumPropertyProvider.audioVariants.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

void AlbumPropertyProvider.audioVariants.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 28);

  *(v1 + v2) = v0;
}

void AlbumPropertyProvider.cleanDownloadedTrackCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for AlbumPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 36));
}

void AlbumPropertyProvider.cleanTrackCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for AlbumPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 40));
}

uint64_t AlbumPropertyProvider.contentRating.setter()
{
  result = OUTLINED_FUNCTION_202_5();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.copyright.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void AlbumPropertyProvider.copyright.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for AlbumPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

void AlbumPropertyProvider.downloadedTrackCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for AlbumPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 56));
}

uint64_t AlbumPropertyProvider.editorialArtworks.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

void AlbumPropertyProvider.editorialArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 60);

  *(v1 + v2) = v0;
}

uint64_t AlbumPropertyProvider.editorialNotes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_142_9() + 64));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v5 = v2[3];
  v9 = v2[2];
  v4 = v9;
  v10 = v5;
  *v0 = v8[0];
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  return sub_21726A630(v8, &v7, &qword_27CB24B70, &unk_217759460);
}

__n128 AlbumPropertyProvider.editorialNotes.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_135_9() + 64));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v8[2] = v2[2];
  v8[3] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

uint64_t AlbumPropertyProvider.editorialVideoArtworks.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

void AlbumPropertyProvider.editorialVideoArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 68);

  *(v1 + v2) = v0;
}

uint64_t AlbumPropertyProvider.favoriteStatus.setter()
{
  result = OUTLINED_FUNCTION_202_5();
  *(v1 + *(result + 76)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.genreNames.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

void AlbumPropertyProvider.genreNames.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 80);

  *(v1 + v2) = v0;
}

uint64_t AlbumPropertyProvider.isAppleDigitalMaster.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isClassicalExperienceAvailable.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 88)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isCompilation.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 92)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isComplete.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 96)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isLibraryAdded.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 100)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isLibraryAddEligible.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 104)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isPinned.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 108)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isPreorder.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 112)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isSingle.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 116)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.isStoreRedownloadable.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 120)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.keepLocalEnabledStatus.setter()
{
  result = OUTLINED_FUNCTION_202_5();
  *(v1 + *(result + 124)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.keepLocalManagedStatus.setter()
{
  result = OUTLINED_FUNCTION_202_5();
  *(v1 + *(result + 128)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.keepLocalManagedStatusReasons.getter()
{
  result = OUTLINED_FUNCTION_142_9();
  v3 = (v1 + *(result + 132));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t AlbumPropertyProvider.keepLocalManagedStatusReasons.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for AlbumPropertyProvider(0);
  v5 = v1 + *(result + 132);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t AlbumPropertyProvider.mainUberArtwork.getter()
{
  v2 = *(OUTLINED_FUNCTION_142_9() + 144);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  memcpy(v0, (v1 + v2), 0x221uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB24400, &unk_21775E9A0);
}

void *AlbumPropertyProvider.mainUberArtwork.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 144);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  sub_2171F0738(__dst, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + v2), v0, 0x221uLL);
}

uint64_t AlbumPropertyProvider.offers.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

void AlbumPropertyProvider.offers.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 148);

  *(v1 + v2) = v0;
}

uint64_t AlbumPropertyProvider.playParameters.getter()
{
  v2 = *(OUTLINED_FUNCTION_142_9() + 152);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x78uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB244D0, &unk_21775D620);
}

void *AlbumPropertyProvider.playParameters.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 152);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_2171F0738(__dst, &qword_27CB244D0, &unk_21775D620);
  return memcpy((v1 + v2), v0, 0x78uLL);
}

uint64_t AlbumPropertyProvider.recordLabelName.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void AlbumPropertyProvider.recordLabelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for AlbumPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

void AlbumPropertyProvider.releaseYear.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for AlbumPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 164));
}

uint64_t AlbumPropertyProvider.representativeTrackHasVideo.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 168)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.representativeTrackIsUploadedContent.setter()
{
  result = OUTLINED_FUNCTION_135_9();
  *(v1 + *(result + 172)) = v0;
  return result;
}

uint64_t AlbumPropertyProvider.representativeTrackTitle.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void AlbumPropertyProvider.representativeTrackTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for AlbumPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t AlbumPropertyProvider.title.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void AlbumPropertyProvider.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for AlbumPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

void AlbumPropertyProvider.trackCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for AlbumPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 184));
}

uint64_t AlbumPropertyProvider.upc.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void AlbumPropertyProvider.upc.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for AlbumPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t AlbumPropertyProvider.versionHash.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void AlbumPropertyProvider.versionHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for AlbumPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t AlbumPropertyProvider.tracksPopularityProvider.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
}

uint64_t AlbumPropertyProvider.tracksPopularityProvider.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 244);

  *(v1 + v2) = v0;
  return result;
}

void AlbumPropertyProvider.pivotMetadata.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_142_9() + 248));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;

  sub_2172838F8(v3, v4, v5, v6);
}

__n128 AlbumPropertyProvider.pivotMetadata.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_135_9() + 248));
  sub_217283940(*v2, v2[1], v2[2], v2[3]);
  result = *v0;
  v4 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 1) = v4;
  return result;
}

uint64_t AlbumPropertyProvider.recommendationReason.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void AlbumPropertyProvider.recommendationReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for AlbumPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t AlbumPropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

void AlbumPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 256);

  *(v1 + v2) = v0;
}

void AlbumPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v335 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_31();
  v333 = v8;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_99();
  v332 = v10;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_99();
  v331 = v12;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v330 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v330 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v20 = OUTLINED_FUNCTION_45_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_31();
  v334 = v21;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_190_0();
  MEMORY[0x28223BE20](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB240E0, &qword_217757BB8);
  OUTLINED_FUNCTION_148();
  if (!swift_dynamicCastClass())
  {
    *&v340[0] = sub_21770B54C(39);
    *(&v340[0] + 1) = v175;
    MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177B0E90);
    v339[0] = v3;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_184_3();
    v176 = 102;
    goto LABEL_169;
  }

  v24 = qword_280BE9428;
  v336 = v3;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_109_12(&qword_280BE9428);
  }

  OUTLINED_FUNCTION_47_19();
  if (static AnyMusicProperty.== infix(_:_:)(v25, v26))
  {
    v27 = v335;
    OUTLINED_FUNCTION_225_3(v339);
    OUTLINED_FUNCTION_225_3(v340);
    OUTLINED_FUNCTION_104(v340);
    if (v123)
    {

      v34 = 0;
      v27 = 0;
    }

    else
    {
      swift_allocObject();
      OUTLINED_FUNCTION_197_5();
      sub_217284028(v338, v337);

      memcpy((v27 + 16), v340, 0x221uLL);
      v34 = &type metadata for Artwork;
    }

    *v5 = v27;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v34;
    goto LABEL_26;
  }

  v28 = qword_280BE9680;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_108_11(&qword_280BE9680);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v29, v30);
  OUTLINED_FUNCTION_201_5();
  if (v28)
  {
    v31 = *(v335 + 560);
    if (v31)
    {
      v32 = *(v335 + 552);
      sub_217751DE8();
      v33 = MEMORY[0x277D837D0];
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    *v5 = v32;
    v5[1] = v31;
    v5[2] = 0;
    v5[3] = v33;
    goto LABEL_26;
  }

  v330 = v5;
  v3 = v338;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  OUTLINED_FUNCTION_31_11(v35);
  OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v36, v37);
  OUTLINED_FUNCTION_195_4();
  v38 = qword_280BE9638;

  v39 = v330;
  if (v38 != -1)
  {
    OUTLINED_FUNCTION_23_42(&qword_280BE9638);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v40, v41);
  OUTLINED_FUNCTION_195_4();
  if (v38)
  {
    goto LABEL_20;
  }

  v38 = qword_280BE9600;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_22_39(&qword_280BE9600);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v42, v43);
  OUTLINED_FUNCTION_195_4();
  if (v38)
  {
LABEL_20:
    type metadata accessor for AlbumPropertyProvider(0);
    OUTLINED_FUNCTION_135_4();
    if (v38)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C70, &unk_217759670);
      sub_217751DE8();
    }

    else
    {
      v44 = 0;
    }

    *v39 = v38;
    v39[1] = 0;
    v39[2] = 0;
    v39[3] = v44;
    goto LABEL_26;
  }

  v45 = qword_280BE8228;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_107_9(&qword_280BE8228);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v46, v47);
  OUTLINED_FUNCTION_195_4();
  if (v45)
  {
    v48 = type metadata accessor for AlbumPropertyProvider(0);
    v49 = OUTLINED_FUNCTION_67_8(*(v48 + 32));
    sub_21726A630(v49, v1, v50, v51);
    sub_2177516D8();
    OUTLINED_FUNCTION_73(v1);
    if (!v123)
    {
LABEL_31:
      OUTLINED_FUNCTION_167_5();
      OUTLINED_FUNCTION_58();
      (*(v58 + 32))();

LABEL_38:
      v59 = v340[1];
      *v39 = v340[0];
      *(v39 + 1) = v59;
      goto LABEL_26;
    }

    v52 = &unk_27CB277C0;
    v53 = &qword_217758DC0;
    v54 = v1;
LABEL_33:
    sub_2171F0738(v54, v52, v53);
    memset(v340, 0, 32);
    goto LABEL_38;
  }

  v55 = qword_280BE81D8;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_106_9(&qword_280BE81D8);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v56, v57);
  OUTLINED_FUNCTION_195_4();
  if (v55)
  {
    goto LABEL_42;
  }

  v60 = qword_280BE8208;

  if (v60 != -1)
  {
    OUTLINED_FUNCTION_105_14(&qword_280BE8208);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v61, v62);
  OUTLINED_FUNCTION_195_4();
  if (v60)
  {
    goto LABEL_42;
  }

  v66 = qword_280BE95E8;

  if (v66 != -1)
  {
    OUTLINED_FUNCTION_104_11(&qword_280BE95E8);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v67, v68);
  OUTLINED_FUNCTION_195_4();
  if (v66)
  {
    v69 = *(v335 + *(type metadata accessor for AlbumPropertyProvider(0) + 44));

    v70 = &type metadata for ContentRating;
    if (v69 == 2)
    {
      v70 = 0;
    }

    *v39 = v69 & 1;
    v39[1] = 0;
    v39[2] = 0;
    v39[3] = v70;
    goto LABEL_26;
  }

  v71 = qword_280BE93E0;

  if (v71 != -1)
  {
    OUTLINED_FUNCTION_103_13(&qword_280BE93E0);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v72, v73);
  OUTLINED_FUNCTION_195_4();
  if (v71)
  {
    type metadata accessor for AlbumPropertyProvider(0);
    OUTLINED_FUNCTION_68_8();
    v75 = v74[1];
    if (v75)
    {
      v76 = *v74;
      sub_217751DE8();
      v77 = MEMORY[0x277D837D0];
    }

    else
    {
      v77 = 0;
      v76 = 0;
    }

    *v39 = v76;
    v39[1] = v75;
    v39[2] = 0;
    v39[3] = v77;
    goto LABEL_26;
  }

  v78 = qword_280BE9558;

  if (v78 != -1)
  {
    OUTLINED_FUNCTION_102_12(&qword_280BE9558);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v79, v80);
  OUTLINED_FUNCTION_195_4();
  if (v78)
  {
    v81 = type metadata accessor for AlbumPropertyProvider(0);
    v82 = OUTLINED_FUNCTION_67_8(*(v81 + 52));
    sub_21726A630(v82, v18, v83, v84);
    sub_2177517D8();
    OUTLINED_FUNCTION_73(v18);
    if (!v123)
    {
      goto LABEL_31;
    }

    v52 = &qword_27CB241C0;
    v53 = &qword_217759480;
    v54 = v18;
    goto LABEL_33;
  }

  v85 = qword_280BE81F0;

  if (v85 != -1)
  {
    OUTLINED_FUNCTION_101_11(&qword_280BE81F0);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v86, v87);
  OUTLINED_FUNCTION_195_4();
  if (v85)
  {
LABEL_42:
    type metadata accessor for AlbumPropertyProvider(0);
    v63 = 0;
    v64 = 0;
    OUTLINED_FUNCTION_68_8();
    if ((*(v65 + 8) & 1) == 0)
    {
      v64 = *v65;
      v63 = MEMORY[0x277D83B88];
    }

    *v39 = v64;
    v39[1] = 0;
    v39[2] = 0;
    v39[3] = v63;
    goto LABEL_26;
  }

  v88 = qword_280BE9528;

  if (v88 != -1)
  {
    OUTLINED_FUNCTION_21_36(&qword_280BE9528);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v89, v90);
  OUTLINED_FUNCTION_195_4();
  if (v88)
  {
    type metadata accessor for AlbumPropertyProvider(0);
    OUTLINED_FUNCTION_135_4();
    if (!v88)
    {
      goto LABEL_324;
    }

    v91 = &qword_27CB24BE8;
    v92 = &qword_2177595F0;
LABEL_73:
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(v91, v92);
    sub_217751DE8();
LABEL_325:

    v320 = v330;
    *v330 = v88;
    v320[1] = 0;
    v320[2] = 0;
    v320[3] = v93;
    goto LABEL_26;
  }

  v94 = qword_280BE9580;

  if (v94 != -1)
  {
    OUTLINED_FUNCTION_100(&qword_280BE9580);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v95, v96);
  OUTLINED_FUNCTION_195_4();
  if (v94)
  {
    v97 = (v335 + *(type metadata accessor for AlbumPropertyProvider(0) + 64));
    v99 = *v97;
    v98 = v97[1];
    v100 = *(v97 + 2);
    v338[0] = *(v97 + 1);
    v338[1] = v100;
    v338[2] = *(v97 + 3);
    if (v98 == 1)
    {

      v101 = 0;
      v102 = 0;
    }

    else
    {
      v102 = swift_allocObject();
      *&v340[0] = v99;
      *(&v340[0] + 1) = v98;
      v105 = *(v97 + 2);
      v340[1] = *(v97 + 1);
      v340[2] = v105;
      v340[3] = *(v97 + 3);
      sub_217350F74(v340, v339);

      *(v102 + 16) = v99;
      *(v102 + 24) = v98;
      v106 = v338[1];
      *(v102 + 32) = v338[0];
      *(v102 + 48) = v106;
      *(v102 + 64) = v338[2];
      v101 = &type metadata for EditorialNotes;
    }

    goto LABEL_85;
  }

  v88 = qword_280BE94B8;

  if (v88 != -1)
  {
    OUTLINED_FUNCTION_20_34(&qword_280BE94B8);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v103, v104);
  OUTLINED_FUNCTION_128_7();
  if (v88)
  {
    type metadata accessor for AlbumPropertyProvider(0);
    OUTLINED_FUNCTION_135_4();
    if (!v88)
    {
      goto LABEL_324;
    }

    v91 = &qword_27CB24BE0;
    v92 = &unk_2177657E0;
    goto LABEL_73;
  }

  v108 = qword_280BE9588;

  if (v108 != -1)
  {
    OUTLINED_FUNCTION_99_14(&qword_280BE9588);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v109, v110);
  OUTLINED_FUNCTION_128_7();
  if (v108)
  {
    v111 = type metadata accessor for AlbumPropertyProvider(0);
    v112 = OUTLINED_FUNCTION_67_8(*(v111 + 72));
    sub_21726A630(v112, v15, v113, v114);
    sub_2177517D8();
    OUTLINED_FUNCTION_73(v15);
    if (v123)
    {

      v115 = &qword_27CB241C0;
      v116 = &qword_217759480;
      v117 = v15;
      goto LABEL_93;
    }

LABEL_240:
    OUTLINED_FUNCTION_167_5();
    OUTLINED_FUNCTION_58();
    (*(v248 + 32))();

    goto LABEL_104;
  }

  v118 = qword_280BE9550;

  if (v118 != -1)
  {
    OUTLINED_FUNCTION_15_30(&qword_280BE9550);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v119, v120);
  OUTLINED_FUNCTION_128_7();
  if (v118)
  {
    v121 = *(v335 + *(type metadata accessor for AlbumPropertyProvider(0) + 76));

    v122 = &type metadata for LegacyModelFavoriteStatus;
    v123 = v121 == 3;
LABEL_98:
    if (v123)
    {
      v124 = 0;
    }

    else
    {
      v124 = v121;
    }

    if (v123)
    {
      v122 = 0;
    }

    v125 = v330;
    *v330 = v124;
    v125[1] = 0;
    v125[2] = 0;
    v125[3] = v122;
    goto LABEL_26;
  }

  v88 = qword_280BE9670;

  if (v88 != -1)
  {
    OUTLINED_FUNCTION_97_11(&qword_280BE9670);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v128, v129);
  OUTLINED_FUNCTION_128_7();
  if (v88)
  {
    type metadata accessor for AlbumPropertyProvider(0);
    OUTLINED_FUNCTION_135_4();
    if (!v88)
    {
      goto LABEL_324;
    }

    v91 = &qword_27CB24C58;
    v92 = &unk_2177677B0;
    goto LABEL_73;
  }

  v130 = qword_280BE9508;

  if (v130 != -1)
  {
    OUTLINED_FUNCTION_96_13(&qword_280BE9508);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v131, v132);
  OUTLINED_FUNCTION_128_7();
  if (v130)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 84);
    goto LABEL_150;
  }

  v134 = qword_280BE81D0;

  if (v134 != -1)
  {
    OUTLINED_FUNCTION_95_14(&qword_280BE81D0);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v135, v136);
  OUTLINED_FUNCTION_128_7();
  if (v134)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 88);
    goto LABEL_150;
  }

  v137 = qword_280BE95D8;

  if (v137 != -1)
  {
    OUTLINED_FUNCTION_94_11(&qword_280BE95D8);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v138, v139);
  OUTLINED_FUNCTION_128_7();
  if (v137)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 92);
    goto LABEL_150;
  }

  v140 = qword_280BE9660;

  if (v140 != -1)
  {
    OUTLINED_FUNCTION_91_12(&qword_280BE9660);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v141, v142);
  OUTLINED_FUNCTION_128_7();
  if (v140)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 96);
    goto LABEL_150;
  }

  v143 = qword_280BE9578;

  if (v143 != -1)
  {
    OUTLINED_FUNCTION_89_15(&qword_280BE9578);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v144, v145);
  OUTLINED_FUNCTION_128_7();
  if (v143)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 100);
    goto LABEL_150;
  }

  v146 = qword_280BE9500;

  if (v146 != -1)
  {
    OUTLINED_FUNCTION_88_13(&qword_280BE9500);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v147, v148);
  OUTLINED_FUNCTION_128_7();
  if (v146)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 104);
    goto LABEL_150;
  }

  v149 = qword_280BE81B0;

  if (v149 != -1)
  {
    OUTLINED_FUNCTION_87_16(&qword_280BE81B0);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v150, v151);
  OUTLINED_FUNCTION_128_7();
  if (v149)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 108);
    goto LABEL_150;
  }

  v152 = qword_280BE9658;

  if (v152 != -1)
  {
    OUTLINED_FUNCTION_134_10(&qword_280BE9658);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v153, v154);
  OUTLINED_FUNCTION_128_7();
  if (v152)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 112);
    goto LABEL_150;
  }

  v155 = qword_280BE9400;

  if (v155 != -1)
  {
    OUTLINED_FUNCTION_133_11(&qword_280BE9400);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v156, v157);
  OUTLINED_FUNCTION_128_7();
  if (v155)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 116);
    goto LABEL_150;
  }

  v158 = qword_280BE81E8;

  if (v158 != -1)
  {
    OUTLINED_FUNCTION_132_11(&qword_280BE81E8);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v159, v160);
  OUTLINED_FUNCTION_128_7();
  if (v158)
  {
    v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 120);
    goto LABEL_150;
  }

  v164 = qword_280BE94D0;

  if (v164 != -1)
  {
    OUTLINED_FUNCTION_131_10(&qword_280BE94D0);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v165, v166);
  OUTLINED_FUNCTION_128_7();
  if (v164)
  {
    v121 = *(v335 + *(type metadata accessor for AlbumPropertyProvider(0) + 124));

    v122 = &type metadata for LegacyModelKeepLocalEnabledStatus;
    v123 = v121 == 5;
    goto LABEL_98;
  }

  v167 = qword_280BE94C8;

  if (v167 != -1)
  {
    OUTLINED_FUNCTION_130_11(&qword_280BE94C8);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v168, v169);
  OUTLINED_FUNCTION_128_7();
  if (v167)
  {
    v121 = *(v335 + *(type metadata accessor for AlbumPropertyProvider(0) + 128));

    v122 = &type metadata for LegacyModelKeepLocalManagedStatus;
    v123 = v121 == 7;
    goto LABEL_98;
  }

  v170 = qword_280BE9490;

  if (v170 != -1)
  {
    OUTLINED_FUNCTION_129_10(&qword_280BE9490);
  }

  OUTLINED_FUNCTION_47_19();
  static AnyMusicProperty.== infix(_:_:)(v171, v172);
  OUTLINED_FUNCTION_128_7();
  if (v170)
  {
    type metadata accessor for AlbumPropertyProvider(0);
    OUTLINED_FUNCTION_134_5();
    OUTLINED_FUNCTION_68_8();
    if ((*(v173 + 8) & 1) == 0)
    {
      v3 = *v173;
      v170 = &type metadata for LegacyModelKeepLocalManagedStatusReasons;
    }

    goto LABEL_166;
  }

  while (1)
  {
    v177 = qword_280BE9570;

    if (v177 != -1)
    {
      OUTLINED_FUNCTION_128_12(&qword_280BE9570);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v178, v179);
    OUTLINED_FUNCTION_128_7();
    if (v177)
    {
      v180 = type metadata accessor for AlbumPropertyProvider(0);
      v181 = OUTLINED_FUNCTION_67_8(*(v180 + 136));
      v182 = v331;
      sub_21726A630(v181, v331, v183, v184);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v182);
      if (!v123)
      {
        goto LABEL_240;
      }

      v115 = &qword_27CB241C0;
      v116 = &qword_217759480;
      v117 = v331;
      goto LABEL_93;
    }

    v185 = qword_280BE9538;

    if (v185 != -1)
    {
      OUTLINED_FUNCTION_127_10(&qword_280BE9538);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v186, v187);
    OUTLINED_FUNCTION_128_7();
    if (v185)
    {
      v188 = type metadata accessor for AlbumPropertyProvider(0);
      v189 = OUTLINED_FUNCTION_67_8(*(v188 + 140));
      v190 = v332;
      sub_21726A630(v189, v332, v191, v192);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v190);
      if (!v123)
      {
        goto LABEL_240;
      }

      v115 = &qword_27CB241C0;
      v116 = &qword_217759480;
      v117 = v332;
      goto LABEL_93;
    }

    v193 = qword_280BE9548;

    if (v193 != -1)
    {
      OUTLINED_FUNCTION_126_12(&qword_280BE9548);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v194, v195);
    OUTLINED_FUNCTION_128_7();
    if (v193)
    {
      v102 = *(type metadata accessor for AlbumPropertyProvider(0) + 144);
      memcpy(v339, (v335 + v102), 0x221uLL);
      memcpy(v340, (v335 + v102), 0x221uLL);
      OUTLINED_FUNCTION_104(v340);
      if (!v123)
      {
        swift_allocObject();
        OUTLINED_FUNCTION_197_5();
        sub_217284028(v338, v337);

        memcpy((v102 + 16), v340, 0x221uLL);
        v101 = &type metadata for Artwork;
        goto LABEL_85;
      }

      goto LABEL_187;
    }

    v88 = qword_280BE81C0;

    if (v88 != -1)
    {
      OUTLINED_FUNCTION_32_31(&qword_280BE81C0);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v196, v197);
    OUTLINED_FUNCTION_128_7();
    if (v88)
    {
      type metadata accessor for AlbumPropertyProvider(0);
      OUTLINED_FUNCTION_135_4();
      if (!v88)
      {
        goto LABEL_324;
      }

      v91 = &qword_27CB24C50;
      v92 = &unk_217759650;
      goto LABEL_73;
    }

    v198 = qword_280BE9568;

    if (v198 != -1)
    {
      OUTLINED_FUNCTION_125_7(&qword_280BE9568);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v199, v200);
    OUTLINED_FUNCTION_128_7();
    if (v198)
    {
      v201 = (v335 + *(type metadata accessor for AlbumPropertyProvider(0) + 152));
      v203 = *v201;
      v202 = v201[1];
      memcpy(v338, v201 + 2, 0x68uLL);
      if (v202)
      {
        v102 = swift_allocObject();
        *&v340[0] = v203;
        *(&v340[0] + 1) = v202;
        memcpy(&v340[1], v201 + 2, 0x68uLL);
        sub_2172DF5A4(v340, v339);

        *(v102 + 16) = v203;
        *(v102 + 24) = v202;
        memcpy((v102 + 32), v338, 0x68uLL);
        v101 = &type metadata for PlayParameters;
LABEL_85:
        v107 = v330;
        *v330 = v102;
LABEL_86:
        v107[1] = 0;
        v107[2] = 0;
        v107[3] = v101;
        goto LABEL_26;
      }

LABEL_187:

      v102 = 0;
      v101 = 0;
      goto LABEL_85;
    }

    v204 = qword_280BE9540;

    if (v204 != -1)
    {
      OUTLINED_FUNCTION_124_9(&qword_280BE9540);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v205, v206);
    OUTLINED_FUNCTION_128_7();
    if (v204)
    {
LABEL_201:
      type metadata accessor for AlbumPropertyProvider(0);
      OUTLINED_FUNCTION_68_8();
      v208 = v207[1];
      if (v208)
      {
        v209 = *v207;
        sub_217751DE8();
        v210 = MEMORY[0x277D837D0];
      }

      else
      {
        v209 = 0;
        v210 = 0;
      }

      v222 = v330;
      *v330 = v209;
      v222[1] = v208;
      v222[2] = 0;
      v222[3] = v210;
      goto LABEL_26;
    }

    v211 = qword_280BE9628;

    if (v211 != -1)
    {
      OUTLINED_FUNCTION_123_11(&qword_280BE9628);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v212, v213);
    OUTLINED_FUNCTION_128_7();
    if (v211)
    {
      v214 = type metadata accessor for AlbumPropertyProvider(0);
      v215 = OUTLINED_FUNCTION_67_8(*(v214 + 160));
      v216 = v333;
      sub_21726A630(v215, v333, v217, v218);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v216);
      if (v123)
      {

        v115 = &qword_27CB241C0;
        v116 = &qword_217759480;
        v117 = v333;
        goto LABEL_93;
      }

      goto LABEL_240;
    }

    v170 = qword_280BE8240;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_122_8(&qword_280BE8240);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v219, v220);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
LABEL_212:
      type metadata accessor for AlbumPropertyProvider(0);
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_68_8();
      if ((*(v221 + 8) & 1) == 0)
      {
        v3 = *v221;
        v170 = MEMORY[0x277D83B88];
      }

LABEL_166:

LABEL_167:
      v174 = v330;
      *v330 = v3;
      v174[1] = 0;
      v174[2] = 0;
      v174[3] = v170;
      goto LABEL_26;
    }

    v223 = qword_280BE94A0;

    if (v223 != -1)
    {
      OUTLINED_FUNCTION_121_12(&qword_280BE94A0);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v224, v225);
    OUTLINED_FUNCTION_128_7();
    if (v223)
    {
      v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 168);
      goto LABEL_150;
    }

    v226 = qword_280BE9488;

    if (v226 != -1)
    {
      OUTLINED_FUNCTION_120_10(&qword_280BE9488);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v227, v228);
    OUTLINED_FUNCTION_128_7();
    if (v226)
    {
      break;
    }

    v229 = qword_280BE94B0;

    if (v229 != -1)
    {
      OUTLINED_FUNCTION_119_12(&qword_280BE94B0);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v230, v231);
    OUTLINED_FUNCTION_128_7();
    if (v229)
    {
      goto LABEL_201;
    }

    v232 = qword_280BE9470;

    if (v232 != -1)
    {
      OUTLINED_FUNCTION_118_10(&qword_280BE9470);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v233, v234);
    OUTLINED_FUNCTION_128_7();
    if (v232)
    {
      goto LABEL_201;
    }

    v170 = qword_280BE9648;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_117_14(&qword_280BE9648);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v235, v236);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      goto LABEL_212;
    }

    v237 = qword_280BE9480;

    if (v237 != -1)
    {
      OUTLINED_FUNCTION_116_13(&qword_280BE9480);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v238, v239);
    OUTLINED_FUNCTION_128_7();
    if (v237)
    {
      goto LABEL_201;
    }

    v240 = qword_280BE9478;

    if (v240 != -1)
    {
      OUTLINED_FUNCTION_115_8(&qword_280BE9478);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v241, v242);
    OUTLINED_FUNCTION_128_7();
    if (v240)
    {
      v243 = type metadata accessor for AlbumPropertyProvider(0);
      v244 = v334;
      sub_21726A630(v335 + *(v243 + 192), v334, &unk_27CB277C0, &qword_217758DC0);
      sub_2177516D8();
      OUTLINED_FUNCTION_73(v244);
      if (!v123)
      {
        goto LABEL_240;
      }

      v115 = &unk_27CB277C0;
      v116 = &qword_217758DC0;
      v117 = v334;
LABEL_93:
      sub_2171F0738(v117, v115, v116);
      OUTLINED_FUNCTION_186_5();
LABEL_104:
      v126 = v340[1];
      v127 = v330;
      *v330 = v340[0];
      *(v127 + 1) = v126;
      goto LABEL_26;
    }

    v245 = qword_280BE8230;

    if (v245 != -1)
    {
      OUTLINED_FUNCTION_31_30(&qword_280BE8230);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v246, v247);
    OUTLINED_FUNCTION_128_7();
    if (v245)
    {
      goto LABEL_201;
    }

    v170 = qword_280BE9430;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_7_4(&qword_280BE9430);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v249, v250);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v251 = type metadata accessor for AlbumPropertyProvider(0);
      v252 = OUTLINED_FUNCTION_67_8(*(v251 + 200));
      sub_21726A630(v252, v340, v253, v254);
      if (*(&v340[5] + 1))
      {
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
        goto LABEL_268;
      }

      v267 = &qword_27CB25310;
      v268 = &unk_21775D3D0;
LABEL_336:
      sub_2171F0738(v340, v267, v268);
      OUTLINED_FUNCTION_134_5();
      goto LABEL_167;
    }

    v170 = qword_280BE95F8;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_29_33(&qword_280BE95F8);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v255, v256);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v257 = *(type metadata accessor for AlbumPropertyProvider(0) + 204);
      goto LABEL_254;
    }

    v170 = qword_280BE9460;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_6_3(&qword_280BE9460);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v261, v262);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v263 = type metadata accessor for AlbumPropertyProvider(0);
      v264 = OUTLINED_FUNCTION_67_8(*(v263 + 208));
      sub_21726A630(v264, v340, v265, v266);
      if (!*(&v340[5] + 1))
      {

        v267 = &qword_27CB25320;
        v268 = &unk_21776E020;
        goto LABEL_336;
      }

      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C80, &unk_21775D420);
      goto LABEL_268;
    }

    v170 = qword_280BE9448;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_8_5(&qword_280BE9448);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v269, v270);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v271 = *(type metadata accessor for AlbumPropertyProvider(0) + 212);
      goto LABEL_266;
    }

    v170 = qword_280BE9410;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_26_30(&qword_280BE9410);
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v277, v278);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v257 = *(type metadata accessor for AlbumPropertyProvider(0) + 216);
      goto LABEL_254;
    }

    v170 = qword_280BE9618;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_15_47();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v279, v280);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v281 = type metadata accessor for AlbumPropertyProvider(0);
      v282 = OUTLINED_FUNCTION_67_8(*(v281 + 220));
      sub_21726A630(v282, v340, v283, v284);
      if (!*(&v340[5] + 1))
      {

        v267 = &unk_27CB25328;
        v268 = &unk_21775D3F0;
        goto LABEL_336;
      }

      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25390, &qword_217771CA0);
      goto LABEL_268;
    }

    v170 = qword_280BE94E0;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_14_43();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v285, v286);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v271 = *(type metadata accessor for AlbumPropertyProvider(0) + 224);
LABEL_266:
      v272 = OUTLINED_FUNCTION_67_8(v271);
      sub_21726A630(v272, v340, v273, v274);
      if (!*(&v340[5] + 1))
      {

        v267 = &unk_27CB28A60;
        v268 = &qword_217770B60;
        goto LABEL_336;
      }

      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240D0, &unk_21775D400);
      goto LABEL_268;
    }

    v170 = qword_280BE93E8;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_13_44();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v287, v288);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v289 = type metadata accessor for AlbumPropertyProvider(0);
      v290 = OUTLINED_FUNCTION_67_8(*(v289 + 228));
      sub_21726A630(v290, v340, v291, v292);
      if (!*(&v340[5] + 1))
      {

        v267 = &qword_27CB25330;
        v268 = &unk_21775E9B0;
        goto LABEL_336;
      }

      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
LABEL_268:
      v3 = swift_allocObject();
      v275 = v3 + 1;
      v276 = 104;
      goto LABEL_269;
    }

    v170 = qword_280BE95C0;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_12_39();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v293, v294);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v257 = *(type metadata accessor for AlbumPropertyProvider(0) + 232);
LABEL_254:
      v258 = OUTLINED_FUNCTION_67_8(v257);
      sub_21726A630(v258, v340, v259, v260);
      if (!*(&v340[5] + 1))
      {

        v267 = &qword_27CB25318;
        v268 = &qword_2177657C0;
        goto LABEL_336;
      }

      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
      goto LABEL_268;
    }

    v170 = qword_280BE95A8;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_11_52();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v295, v296);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v257 = *(type metadata accessor for AlbumPropertyProvider(0) + 236);
      goto LABEL_254;
    }

    v170 = qword_280BE9590;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_10_45();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v297, v298);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v299 = type metadata accessor for AlbumPropertyProvider(0);
      v300 = OUTLINED_FUNCTION_67_8(*(v299 + 240));
      sub_21726A630(v300, v340, v301, v302);
      if (!*(&v340[5] + 1))
      {

        v267 = &unk_27CB25338;
        v268 = &unk_21775D3E0;
        goto LABEL_336;
      }

      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25380, &unk_21775DAA0);
      goto LABEL_268;
    }

    v88 = qword_280BE81F8;

    if (v88 != -1)
    {
      OUTLINED_FUNCTION_9_48();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v303, v304);
    OUTLINED_FUNCTION_128_7();
    if (v88)
    {
      type metadata accessor for AlbumPropertyProvider(0);
      OUTLINED_FUNCTION_135_4();
      if (v88)
      {
        v93 = type metadata accessor for Album.TracksPopularityProvider();

        goto LABEL_325;
      }

LABEL_324:
      v93 = 0;
      goto LABEL_325;
    }

    v305 = qword_280BE8218;

    if (v305 != -1)
    {
      OUTLINED_FUNCTION_8_54();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v306, v307);
    OUTLINED_FUNCTION_128_7();
    if (v305)
    {
      type metadata accessor for AlbumPropertyProvider(0);
      OUTLINED_FUNCTION_68_8();
      v309 = v308[1];
      if (v309 == 1)
      {

        v310 = 0;
        v101 = 0;
      }

      else
      {
        v315 = v308[2];
        v314 = v308[3];
        v316 = *v308;
        v310 = swift_allocObject();
        sub_217751DE8();
        sub_217751DE8();

        v310[2] = v316;
        v310[3] = v309;
        v310[4] = v315;
        v310[5] = v314;
        v101 = &type metadata for CloudPivotMetadata;
      }

      v107 = v330;
      *v330 = v310;
      goto LABEL_86;
    }

    v311 = qword_280BE94F0;

    if (v311 != -1)
    {
      OUTLINED_FUNCTION_7_55();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v312, v313);
    OUTLINED_FUNCTION_128_7();
    if (v311)
    {
      goto LABEL_201;
    }

    v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25378, &qword_21775B608);
    OUTLINED_FUNCTION_31_11(v317);
    v3 = OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v318, v319);
    OUTLINED_FUNCTION_201_5();
    v170 = qword_280BE9518;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_6_62();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v321, v322);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v323 = type metadata accessor for AlbumPropertyProvider(0);
      v324 = OUTLINED_FUNCTION_67_8(*(v323 + 260));
      sub_21726A630(v324, v340, v325, v326);
      if (!*&v340[1])
      {

        v267 = &qword_27CB24230;
        v268 = &unk_21775E9D0;
        goto LABEL_336;
      }

      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
      v3 = swift_allocObject();
      v275 = v3 + 1;
      v276 = 128;
LABEL_269:
      memcpy(v275, v340, v276);
      goto LABEL_166;
    }

    v170 = qword_280BE81E0;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_5_65();
      swift_once();
    }

    OUTLINED_FUNCTION_47_19();
    static AnyMusicProperty.== infix(_:_:)(v327, v328);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v271 = *(type metadata accessor for AlbumPropertyProvider(0) + 264);
      goto LABEL_266;
    }

    *&v340[0] = sub_21770B54C(24);
    *(&v340[0] + 1) = v329;
    MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
    v339[0] = v336;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_184_3();
    v176 = 239;
LABEL_169:
    v330 = v176;
    OUTLINED_FUNCTION_150_7("Fatal error");
    __break(1u);
  }

  v133 = *(type metadata accessor for AlbumPropertyProvider(0) + 172);
LABEL_150:
  v161 = *(v335 + v133);

  v162 = MEMORY[0x277D839B0];
  if (v161 == 2)
  {
    v162 = 0;
  }

  v163 = v330;
  *v330 = v161 & 1;
  v163[1] = 0;
  v163[2] = 0;
  v163[3] = v162;
LABEL_26:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21757DC5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_21726A630(a1, v5, &qword_27CB2AD40, &qword_2177583F0);

  return AlbumPropertyProvider.subscript.setter(v5, v3);
}

uint64_t AlbumPropertyProvider.subscript.setter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB240E0, &qword_217757BB8);
  if (!swift_dynamicCastClass())
  {
    v100 = 0;
    v101 = 0xE000000000000000;
    v89 = &v100;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177B0E90);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    v99 = 0;
    v97 = 245;
    goto LABEL_95;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  swift_initStackObject();
  OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_55_18();
  static AnyMusicProperty.== infix(_:_:)(v4, v5);
  OUTLINED_FUNCTION_44_1();
  swift_retain_n();

  if ((v2 & 1) == 0)
  {
    v6 = qword_280BE9638;

    if (v6 != -1)
    {
      OUTLINED_FUNCTION_23_42(&qword_280BE9638);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v7, v8);
    OUTLINED_FUNCTION_44_1();

    if (v6)
    {
      goto LABEL_10;
    }

    v9 = qword_280BE9600;

    if (v9 != -1)
    {
      OUTLINED_FUNCTION_22_39(&qword_280BE9600);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v10, v11);
    OUTLINED_FUNCTION_44_1();

    if (v9)
    {
LABEL_10:
      swift_getKeyPath(byte_21777B718);
      OUTLINED_FUNCTION_15_6();
      sub_217351C90(v12, v13);
      goto LABEL_11;
    }

    v15 = qword_280BE9528;

    if (v15 != -1)
    {
      OUTLINED_FUNCTION_21_36(&qword_280BE9528);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v16, v17);
    OUTLINED_FUNCTION_44_1();

    if (v15)
    {
      swift_getKeyPath(byte_21777B6F8);
      OUTLINED_FUNCTION_15_6();
      sub_217351C74(v18, v19);
      goto LABEL_11;
    }

    v20 = qword_280BE94B8;

    if (v20 != -1)
    {
      OUTLINED_FUNCTION_20_34(&qword_280BE94B8);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v21, v22);
    OUTLINED_FUNCTION_44_1();

    if (v20)
    {
      swift_getKeyPath(byte_21777B6D8);
      OUTLINED_FUNCTION_15_6();
      sub_217351C78(v23, v24);
      goto LABEL_11;
    }

    v25 = qword_280BE81C0;

    if (v25 != -1)
    {
      OUTLINED_FUNCTION_32_31(&qword_280BE81C0);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v26, v27);
    OUTLINED_FUNCTION_44_1();

    if (v25)
    {
      swift_getKeyPath(asc_21777B6B8);
      OUTLINED_FUNCTION_15_6();
      sub_217351C80(v28, v29);
      goto LABEL_11;
    }

    v30 = qword_280BE8230;

    if (v30 != -1)
    {
      OUTLINED_FUNCTION_31_30(&qword_280BE8230);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v31, v32);
    OUTLINED_FUNCTION_44_1();

    if (v30)
    {
      swift_getKeyPath(asc_21777B698);
LABEL_28:
      OUTLINED_FUNCTION_15_6();
      sub_217351C94();
      goto LABEL_11;
    }

    v33 = qword_280BE9430;

    if (v33 != -1)
    {
      OUTLINED_FUNCTION_7_4(&qword_280BE9430);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v34, v35);
    OUTLINED_FUNCTION_44_1();

    if (v33)
    {
      swift_getKeyPath(aX_0);
      OUTLINED_FUNCTION_15_6();
      sub_217351CA8(v36, v37);
      goto LABEL_11;
    }

    v38 = qword_280BE95F8;

    if (v38 != -1)
    {
      OUTLINED_FUNCTION_29_33(&qword_280BE95F8);
    }

    OUTLINED_FUNCTION_55_18();
    static AnyMusicProperty.== infix(_:_:)(v39, v40);
    OUTLINED_FUNCTION_44_1();

    if (v38)
    {
      swift_getKeyPath(aP_1);
    }

    else
    {
      v43 = qword_280BE9460;

      if (v43 != -1)
      {
        OUTLINED_FUNCTION_6_3(&qword_280BE9460);
      }

      OUTLINED_FUNCTION_55_18();
      static AnyMusicProperty.== infix(_:_:)(v44, v45);
      OUTLINED_FUNCTION_44_1();

      if (v43)
      {
        swift_getKeyPath(byte_21777B638);
        OUTLINED_FUNCTION_15_6();
        sub_217351CA4(v46, v47);
        goto LABEL_11;
      }

      v48 = qword_280BE9410;

      if (v48 != -1)
      {
        OUTLINED_FUNCTION_26_30(&qword_280BE9410);
      }

      OUTLINED_FUNCTION_55_18();
      static AnyMusicProperty.== infix(_:_:)(v49, v50);
      OUTLINED_FUNCTION_44_1();

      if ((v48 & 1) == 0)
      {
        v51 = qword_280BE9618;

        if (v51 != -1)
        {
          OUTLINED_FUNCTION_15_47();
          swift_once();
        }

        OUTLINED_FUNCTION_55_18();
        static AnyMusicProperty.== infix(_:_:)(v52, v53);
        OUTLINED_FUNCTION_44_1();

        if (v51)
        {
          swift_getKeyPath(byte_21777B5F8);
          OUTLINED_FUNCTION_15_6();
          sub_21734A1C8();
          goto LABEL_11;
        }

        v54 = qword_280BE9448;

        if (v54 != -1)
        {
          OUTLINED_FUNCTION_8_5(&qword_280BE9448);
        }

        OUTLINED_FUNCTION_55_18();
        static AnyMusicProperty.== infix(_:_:)(v55, v56);
        OUTLINED_FUNCTION_44_1();

        if (v54)
        {
          swift_getKeyPath("Б=e");
        }

        else
        {
          v59 = qword_280BE93E8;

          if (v59 != -1)
          {
            OUTLINED_FUNCTION_13_44();
            swift_once();
          }

          OUTLINED_FUNCTION_55_18();
          static AnyMusicProperty.== infix(_:_:)(v60, v61);
          OUTLINED_FUNCTION_44_1();

          if (v59)
          {
            swift_getKeyPath(byte_21777B5B8);
            OUTLINED_FUNCTION_15_6();
            sub_217351CB4(v62, v63);
            goto LABEL_11;
          }

          v64 = qword_280BE95C0;

          if (v64 != -1)
          {
            OUTLINED_FUNCTION_12_39();
            swift_once();
          }

          OUTLINED_FUNCTION_55_18();
          static AnyMusicProperty.== infix(_:_:)(v65, v66);
          OUTLINED_FUNCTION_44_1();

          if (v64)
          {
            swift_getKeyPath(byte_21777B598);
            goto LABEL_37;
          }

          v67 = qword_280BE95A8;

          if (v67 != -1)
          {
            OUTLINED_FUNCTION_11_52();
            swift_once();
          }

          OUTLINED_FUNCTION_55_18();
          static AnyMusicProperty.== infix(_:_:)(v68, v69);
          OUTLINED_FUNCTION_44_1();

          if (v67)
          {
            swift_getKeyPath(byte_21777B578);
            goto LABEL_37;
          }

          v70 = qword_280BE9590;

          if (v70 != -1)
          {
            OUTLINED_FUNCTION_10_45();
            swift_once();
          }

          OUTLINED_FUNCTION_55_18();
          static AnyMusicProperty.== infix(_:_:)(v71, v72);
          OUTLINED_FUNCTION_44_1();

          if (v70)
          {
            swift_getKeyPath(a0_3);
            OUTLINED_FUNCTION_15_6();
            sub_217351CB0(v73, v74);
            goto LABEL_11;
          }

          v75 = qword_280BE94E0;

          if (v75 != -1)
          {
            OUTLINED_FUNCTION_14_43();
            swift_once();
          }

          OUTLINED_FUNCTION_55_18();
          static AnyMusicProperty.== infix(_:_:)(v76, v77);
          OUTLINED_FUNCTION_44_1();

          if (v75)
          {
            swift_getKeyPath(aH_1);
          }

          else
          {
            v78 = qword_280BE81F8;

            if (v78 != -1)
            {
              OUTLINED_FUNCTION_9_48();
              swift_once();
            }

            OUTLINED_FUNCTION_55_18();
            static AnyMusicProperty.== infix(_:_:)(v79, v80);
            OUTLINED_FUNCTION_44_1();

            if (v78)
            {
              swift_getKeyPath(asc_21777B518);
              OUTLINED_FUNCTION_15_6();
              sub_217349D18();
              goto LABEL_11;
            }

            v81 = qword_280BE8218;

            if (v81 != -1)
            {
              OUTLINED_FUNCTION_8_54();
              swift_once();
            }

            OUTLINED_FUNCTION_55_18();
            static AnyMusicProperty.== infix(_:_:)(v82, v83);
            OUTLINED_FUNCTION_44_1();

            if (v81)
            {
              swift_getKeyPath(aX_1);
              OUTLINED_FUNCTION_15_6();
              sub_217351C9C();
              goto LABEL_11;
            }

            v84 = qword_280BE94F0;

            if (v84 != -1)
            {
              OUTLINED_FUNCTION_7_55();
              swift_once();
            }

            OUTLINED_FUNCTION_55_18();
            static AnyMusicProperty.== infix(_:_:)(v85, v86);
            OUTLINED_FUNCTION_44_1();

            if (v84)
            {
              swift_getKeyPath(byte_21777B4D8);
              goto LABEL_28;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25378, &qword_21775B608);
            swift_initStackObject();
            OUTLINED_FUNCTION_54_0();
            OUTLINED_FUNCTION_55_18();
            static AnyMusicProperty.== infix(_:_:)(v87, v88);
            OUTLINED_FUNCTION_44_1();

            v89 = qword_280BE9518;

            if (v89 != -1)
            {
              goto LABEL_96;
            }

            while (1)
            {
              OUTLINED_FUNCTION_55_18();
              static AnyMusicProperty.== infix(_:_:)(v90, v91);
              OUTLINED_FUNCTION_44_1();

              if (v89)
              {
                swift_getKeyPath(byte_21777B498);
                OUTLINED_FUNCTION_15_6();
                sub_217351CC0(v92, v93);
                goto LABEL_11;
              }

              v94 = qword_280BE81E0;

              if (v94 != -1)
              {
                OUTLINED_FUNCTION_5_65();
                swift_once();
              }

              OUTLINED_FUNCTION_55_18();
              static AnyMusicProperty.== infix(_:_:)(v95, v96);
              OUTLINED_FUNCTION_44_1();

              if (v94)
              {
                break;
              }

              v100 = 0;
              v101 = 0xE000000000000000;
              v89 = &v100;
              sub_217752AA8();
              MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
              type metadata accessor for AnyMusicProperty();
              sub_217752C78();
              OUTLINED_FUNCTION_217_0();
              v99 = 0;
              v97 = 302;
LABEL_95:
              v98 = v97;
              OUTLINED_FUNCTION_150_7("Fatal error");
              __break(1u);
LABEL_96:
              OUTLINED_FUNCTION_6_62();
              swift_once();
            }

            swift_getKeyPath(byte_21777B470, v98, v99);
          }
        }

        OUTLINED_FUNCTION_15_6();
        sub_217351CBC(v57, v58);
        goto LABEL_11;
      }

      swift_getKeyPath(byte_21777B618);
    }

LABEL_37:
    OUTLINED_FUNCTION_15_6();
    sub_217351CA0(v41, v42);
    goto LABEL_11;
  }

  swift_getKeyPath("Ȑ=e");
  OUTLINED_FUNCTION_15_6();
  sub_217351C70();
LABEL_11:

  return sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
}

void (*AlbumPropertyProvider.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  AlbumPropertyProvider.subscript.getter();
  return sub_21757E740;
}

void sub_21757E740(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    AlbumPropertyProvider.subscript.setter(v2 + 32, v3);
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    AlbumPropertyProvider.subscript.setter(v2, v3);
  }

  free(v2);
}

void AlbumPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v81 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v80 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28300, &qword_21776C428);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  v18 = type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_81();
  v82 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB240B8, &qword_217757AF0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    OUTLINED_FUNCTION_157_7();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177AAC40);
    v83[0] = v5;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v6 + 216), v77, v78);
    sub_217753018();
    v75 = v84;
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_159_9();
    v79 = 309;
    goto LABEL_171;
  }

  v1 = v21;
  sub_2171FF30C(v3, v84);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    sub_2171F0738(v17, &qword_27CB28300, &qword_21776C428);
    OUTLINED_FUNCTION_157_7();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177B0EC0);
    sub_217752C78();
    v75 = v84;
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_159_9();
    v79 = 312;
    goto LABEL_171;
  }

  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  v22 = v82;
  sub_2174A5F48(v17, v82);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  OUTLINED_FUNCTION_31_11(v23);
  v24 = OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_174(v24);
  OUTLINED_FUNCTION_201_5();
  if (v17)
  {

    sub_21726A630(v22 + v18[6], v10, &unk_27CB277C0, &qword_217758DC0);
    sub_2174A5EEC(v22);
    v25 = sub_2177516D8();
    OUTLINED_FUNCTION_73(v10);
    if (v26)
    {
      v31 = v81;
      sub_21726A630(v81 + v18[6], v13, &unk_27CB277C0, &qword_217758DC0);
      OUTLINED_FUNCTION_73(v10);
      if (!v26)
      {
        sub_2171F0738(v10, &unk_27CB277C0, &qword_217758DC0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_58();
      (*(v30 + 32))(v13, v10, v25);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
      v31 = v81;
    }

    v32 = &unk_27CB277C0;
    v33 = &qword_217758DC0;
    v34 = v31 + v18[6];
    v35 = v13;
    goto LABEL_19;
  }

  v27 = qword_280BE9638;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_23_42(&qword_280BE9638);
  }

  OUTLINED_FUNCTION_174(qword_280C027F0);
  OUTLINED_FUNCTION_173_3();
  if (v27)
  {
    goto LABEL_14;
  }

  v27 = qword_280BE9600;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_22_39(&qword_280BE9600);
  }

  OUTLINED_FUNCTION_174(qword_280BE9608);
  OUTLINED_FUNCTION_173_3();
  if (v27)
  {
LABEL_14:

    OUTLINED_FUNCTION_199_4();
    sub_2174A5EEC(v22);
    v28 = v18[7];
LABEL_15:
    v29 = v81;
    if (!v27)
    {
      v27 = sub_217751DE8();
    }

    *(v29 + v28) = v27;
    goto LABEL_20;
  }

  v27 = qword_280BE9528;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_21_36(&qword_280BE9528);
  }

  OUTLINED_FUNCTION_174(qword_280C02778);
  OUTLINED_FUNCTION_173_3();
  if (v27)
  {

    OUTLINED_FUNCTION_199_4();
    sub_2174A5EEC(v22);
    v28 = v18[15];
    goto LABEL_15;
  }

  v27 = qword_280BE94B8;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_20_34(&qword_280BE94B8);
  }

  OUTLINED_FUNCTION_174(qword_280C02738);
  OUTLINED_FUNCTION_173_3();
  if (v27)
  {

    OUTLINED_FUNCTION_199_4();
    sub_2174A5EEC(v22);
    v28 = v18[17];
    goto LABEL_15;
  }

  v27 = qword_280BE81C0;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_32_31(&qword_280BE81C0);
  }

  OUTLINED_FUNCTION_174(qword_280C02498);
  OUTLINED_FUNCTION_173_3();
  if (v27)
  {

    OUTLINED_FUNCTION_199_4();
    sub_2174A5EEC(v22);
    v28 = v18[37];
    goto LABEL_15;
  }

  v36 = qword_280BE8230;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_31_30(&qword_280BE8230);
  }

  OUTLINED_FUNCTION_174(qword_280C024E8);
  OUTLINED_FUNCTION_173_3();
  if (v36)
  {

    v37 = (v22 + v18[49]);
    v39 = *v37;
    v38 = v37[1];
    sub_217751DE8();
    sub_2174A5EEC(v22);
    v40 = v18[49];
LABEL_37:
    v41 = (v81 + v40);
    if (!v38)
    {
      v39 = *v41;
      v38 = sub_217751DE8();
    }

    *v41 = v39;
    v41[1] = v38;
    goto LABEL_20;
  }

  v42 = qword_280BE9430;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_7_4(&qword_280BE9430);
  }

  OUTLINED_FUNCTION_174(qword_280BE9438);
  OUTLINED_FUNCTION_173_3();
  if (v42)
  {

    OUTLINED_FUNCTION_173_9(&qword_27CB25310, &unk_21775D3D0, v18[50]);
    sub_2174A5EEC(v22);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
      v42 = v81;
    }

    else
    {
      OUTLINED_FUNCTION_90_13(&qword_27CB25310, &unk_21775D3D0, v18[50]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25310, &unk_21775D3D0);
      }
    }

    v43 = v18[50];
    v32 = &qword_27CB25310;
    v33 = &unk_21775D3D0;
    goto LABEL_76;
  }

  v42 = qword_280BE95F8;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_29_33(&qword_280BE95F8);
  }

  OUTLINED_FUNCTION_174(qword_280C027E0);
  OUTLINED_FUNCTION_173_3();
  if (v42)
  {

    OUTLINED_FUNCTION_173_9(&qword_27CB25318, &qword_2177657C0, v18[51]);
    sub_2174A5EEC(v22);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
      v42 = v81;
    }

    else
    {
      OUTLINED_FUNCTION_90_13(&qword_27CB25318, &qword_2177657C0, v18[51]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25318, &qword_2177657C0);
      }
    }

    v43 = v18[51];
LABEL_67:
    v32 = &qword_27CB25318;
    v33 = &qword_2177657C0;
LABEL_76:
    v35 = v84;
    v34 = v42 + v43;
LABEL_19:
    sub_21733BBDC(v35, v34, v32, v33);
    goto LABEL_20;
  }

  v42 = qword_280BE9460;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_6_3(&qword_280BE9460);
  }

  OUTLINED_FUNCTION_174(qword_280BE9468);
  OUTLINED_FUNCTION_173_3();
  if (v42)
  {

    OUTLINED_FUNCTION_173_9(&qword_27CB25320, &unk_21776E020, v18[52]);
    sub_2174A5EEC(v22);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
      v42 = v81;
    }

    else
    {
      OUTLINED_FUNCTION_90_13(&qword_27CB25320, &unk_21776E020, v18[52]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25320, &unk_21776E020);
      }
    }

    v43 = v18[52];
    v32 = &qword_27CB25320;
    v33 = &unk_21776E020;
    goto LABEL_76;
  }

  v42 = qword_280BE9410;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_26_30(&qword_280BE9410);
  }

  OUTLINED_FUNCTION_174(qword_280BE9418);
  OUTLINED_FUNCTION_173_3();
  if (v42)
  {

    OUTLINED_FUNCTION_173_9(&qword_27CB25318, &qword_2177657C0, v18[54]);
    sub_2174A5EEC(v22);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
      v42 = v81;
    }

    else
    {
      OUTLINED_FUNCTION_90_13(&qword_27CB25318, &qword_2177657C0, v18[54]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25318, &qword_2177657C0);
      }
    }

    v43 = v18[54];
    goto LABEL_67;
  }

  v42 = qword_280BE9618;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_15_47();
    swift_once();
  }

  OUTLINED_FUNCTION_174(qword_280BE9620);
  OUTLINED_FUNCTION_173_3();
  if (v42)
  {

    OUTLINED_FUNCTION_173_9(&qword_27CB25328, &unk_21775D3F0, v18[55]);
    sub_2174A5EEC(v22);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
      v42 = v81;
    }

    else
    {
      OUTLINED_FUNCTION_90_13(&qword_27CB25328, &unk_21775D3F0, v18[55]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25328, &unk_21775D3F0);
      }
    }

    v43 = v18[55];
    v32 = &qword_27CB25328;
    v33 = &unk_21775D3F0;
    goto LABEL_76;
  }

  v42 = qword_280BE9448;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_8_5(&qword_280BE9448);
  }

  OUTLINED_FUNCTION_174(qword_280BE9450);
  OUTLINED_FUNCTION_173_3();
  if (v42)
  {

    OUTLINED_FUNCTION_173_9(&unk_27CB28A60, &qword_217770B60, v18[53]);
    sub_2174A5EEC(v22);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
      v42 = v81;
    }

    else
    {
      OUTLINED_FUNCTION_90_13(&unk_27CB28A60, &qword_217770B60, v18[53]);
      if (v83[11])
      {
        sub_2171F0738(v83, &unk_27CB28A60, &qword_217770B60);
      }
    }

    v43 = v18[53];
    v32 = &unk_27CB28A60;
    v33 = &qword_217770B60;
    goto LABEL_76;
  }

  v44 = qword_280BE93E8;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_13_44();
    swift_once();
  }

  OUTLINED_FUNCTION_174(qword_280BE93F0);
  OUTLINED_FUNCTION_173_3();
  if (v44)
  {

    OUTLINED_FUNCTION_86_14(&qword_27CB25330, &unk_21775E9B0, v18[57]);
    sub_2174A5EEC(v44);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
    }

    else
    {
      OUTLINED_FUNCTION_77_13(&qword_27CB25330, &unk_21775E9B0, v18[57]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25330, &unk_21775E9B0);
      }
    }

    v47 = v18[57];
    v32 = &qword_27CB25330;
    v33 = &unk_21775E9B0;
    goto LABEL_126;
  }

  v45 = qword_280BE95C0;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_12_39();
    swift_once();
  }

  OUTLINED_FUNCTION_174(qword_280BE95C8);
  OUTLINED_FUNCTION_173_3();
  if (v45)
  {

    OUTLINED_FUNCTION_86_14(&qword_27CB25318, &qword_2177657C0, v18[58]);
    sub_2174A5EEC(v45);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
    }

    else
    {
      OUTLINED_FUNCTION_77_13(&qword_27CB25318, &qword_2177657C0, v18[58]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25318, &qword_2177657C0);
      }
    }

    v47 = v18[58];
LABEL_125:
    v32 = &qword_27CB25318;
    v33 = &qword_2177657C0;
LABEL_126:
    v35 = v84;
    v34 = v81 + v47;
    goto LABEL_19;
  }

  v46 = qword_280BE95A8;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_11_52();
    swift_once();
  }

  OUTLINED_FUNCTION_174(qword_280BE95B0);
  OUTLINED_FUNCTION_173_3();
  if (v46)
  {

    OUTLINED_FUNCTION_86_14(&qword_27CB25318, &qword_2177657C0, v18[59]);
    sub_2174A5EEC(v46);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
    }

    else
    {
      OUTLINED_FUNCTION_77_13(&qword_27CB25318, &qword_2177657C0, v18[59]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25318, &qword_2177657C0);
      }
    }

    v47 = v18[59];
    goto LABEL_125;
  }

  v48 = qword_280BE9590;

  if (v48 != -1)
  {
    OUTLINED_FUNCTION_10_45();
    swift_once();
  }

  OUTLINED_FUNCTION_174(qword_280BE9598);
  OUTLINED_FUNCTION_173_3();
  if (v48)
  {

    OUTLINED_FUNCTION_86_14(&qword_27CB25338, &unk_21775D3E0, v18[60]);
    sub_2174A5EEC(v48);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
    }

    else
    {
      OUTLINED_FUNCTION_77_13(&qword_27CB25338, &unk_21775D3E0, v18[60]);
      if (v83[11])
      {
        sub_2171F0738(v83, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    v47 = v18[60];
    v32 = &qword_27CB25338;
    v33 = &unk_21775D3E0;
    goto LABEL_126;
  }

  v49 = qword_280BE94E0;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_14_43();
    swift_once();
  }

  OUTLINED_FUNCTION_174(qword_280C02750);
  OUTLINED_FUNCTION_173_3();
  if (v49)
  {

    OUTLINED_FUNCTION_86_14(&unk_27CB28A60, &qword_217770B60, v18[56]);
    sub_2174A5EEC(v49);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
    }

    else
    {
      OUTLINED_FUNCTION_77_13(&unk_27CB28A60, &qword_217770B60, v18[56]);
      if (v83[11])
      {
        sub_2171F0738(v83, &unk_27CB28A60, &qword_217770B60);
      }
    }

    v47 = v18[56];
LABEL_153:
    v32 = &unk_27CB28A60;
    v33 = &qword_217770B60;
    goto LABEL_126;
  }

  v50 = qword_280BE81F8;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_9_48();
    swift_once();
  }

  OUTLINED_FUNCTION_174(qword_280C024C8);
  OUTLINED_FUNCTION_173_3();
  if (v50)
  {

    v51 = v18[61];
    v52 = *(v81 + v51);
    v53 = *(v82 + v51);
    if (!v53)
    {

      v53 = v52;
    }

    v54 = v82;
    *(v81 + v51) = v53;
    sub_21726A630(v54 + v18[53], v83, &unk_27CB28A60, &qword_217770B60);
    sub_2174A5EEC(v54);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
    }

    else
    {
      OUTLINED_FUNCTION_77_13(&unk_27CB28A60, &qword_217770B60, v18[53]);
      if (v83[11])
      {
        sub_2171F0738(v83, &unk_27CB28A60, &qword_217770B60);
      }
    }

    v47 = v18[53];
    goto LABEL_153;
  }

  v55 = qword_280BE8218;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_8_54();
    swift_once();
  }

  OUTLINED_FUNCTION_174(qword_280C024D8);
  OUTLINED_FUNCTION_173_3();
  if ((v55 & 1) == 0)
  {
    v70 = qword_280BE94F0;

    if (v70 != -1)
    {
      OUTLINED_FUNCTION_7_55();
      swift_once();
    }

    OUTLINED_FUNCTION_174(qword_280C02758);
    OUTLINED_FUNCTION_173_3();
    if (v70)
    {

      v71 = v82;
      v72 = (v82 + v18[63]);
      v39 = *v72;
      v38 = v72[1];
      sub_217751DE8();
      sub_2174A5EEC(v71);
      v40 = v18[63];
      goto LABEL_37;
    }

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25378, &qword_21775B608);
    OUTLINED_FUNCTION_31_11(v73);
    v74 = OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_174(v74);
    OUTLINED_FUNCTION_201_5();
    v75 = qword_280BE9518;

    if (v75 != -1)
    {
      goto LABEL_172;
    }

    while (1)
    {
      OUTLINED_FUNCTION_174(qword_280C02770);
      OUTLINED_FUNCTION_173_3();
      if (v75)
      {

        OUTLINED_FUNCTION_86_14(&qword_27CB24230, &unk_21775E9D0, v18[65]);
        sub_2174A5EEC(v75);
        if (v83[2])
        {
          memcpy(v84, v83, 0x80uLL);
        }

        else
        {
          OUTLINED_FUNCTION_77_13(&qword_27CB24230, &unk_21775E9D0, v18[65]);
          if (v83[2])
          {
            sub_2171F0738(v83, &qword_27CB24230, &unk_21775E9D0);
          }
        }

        v47 = v18[65];
        v32 = &qword_27CB24230;
        v33 = &unk_21775E9D0;
        goto LABEL_126;
      }

      v76 = qword_280BE81E0;

      if (v76 != -1)
      {
        OUTLINED_FUNCTION_5_65();
        swift_once();
      }

      OUTLINED_FUNCTION_174(qword_280C024B0);
      OUTLINED_FUNCTION_173_3();
      if (v76)
      {
        break;
      }

      OUTLINED_FUNCTION_157_7();
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AAC70);
      v83[0] = v1;
      sub_217752C78();
      v75 = v84;
      OUTLINED_FUNCTION_217_0();
      OUTLINED_FUNCTION_159_9();
      v79 = 370;
LABEL_171:
      v80 = v79;
      OUTLINED_FUNCTION_150_7("Fatal error");
      __break(1u);
LABEL_172:
      OUTLINED_FUNCTION_6_62();
      swift_once();
    }

    OUTLINED_FUNCTION_86_14(&unk_27CB28A60, &qword_217770B60, v18[66]);
    sub_2174A5EEC(v76);
    if (v83[11])
    {
      OUTLINED_FUNCTION_65_21();
    }

    else
    {
      OUTLINED_FUNCTION_77_13(&unk_27CB28A60, &qword_217770B60, v18[66]);
      if (v83[11])
      {
        sub_2171F0738(v83, &unk_27CB28A60, &qword_217770B60);
      }
    }

    v47 = v18[66];
    goto LABEL_153;
  }

  v56 = v82;
  v57 = (v82 + v18[62]);
  v58 = *v57;
  v59 = v57[1];
  v60 = v57[2];
  v61 = v57[3];
  OUTLINED_FUNCTION_36();
  sub_2172838F8(v62, v63, v64, v61);
  sub_2174A5EEC(v56);
  if (v59 == 1)
  {
    v65 = (v81 + v18[62]);
    v58 = *v65;
    v59 = v65[1];
    v60 = v65[2];
    v61 = v65[3];
    OUTLINED_FUNCTION_36();
    sub_2172838F8(v66, v67, v68, v61);
  }

  v69 = (v81 + v18[62]);
  sub_217283940(*v69, v69[1], v69[2], v69[3]);
  *v69 = v58;
  v69[1] = v59;
  v69[2] = v60;
  v69[3] = v61;
LABEL_20:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21757FBA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21777B460;
  if (qword_280BE9428 != -1)
  {
    OUTLINED_FUNCTION_109_12(&qword_280BE9428);
  }

  *(v0 + 32) = qword_280C026F8;
  v1 = qword_280BE9680;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_108_11(&qword_280BE9680);
  }

  *(v0 + 40) = qword_280C02818;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  OUTLINED_FUNCTION_31_11(v2);
  *(v0 + 48) = OUTLINED_FUNCTION_53_11();
  v3 = qword_280BE9638;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_23_42(&qword_280BE9638);
  }

  *(v0 + 56) = qword_280C027F0;
  v4 = qword_280BE9600;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_22_39(&qword_280BE9600);
  }

  *(v0 + 64) = qword_280BE9608;
  v5 = qword_280BE95E8;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_104_11(&qword_280BE95E8);
  }

  *(v0 + 72) = qword_280C027D8;
  v6 = qword_280BE93E0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_103_13(&qword_280BE93E0);
  }

  *(v0 + 80) = qword_280C026E8;
  v7 = qword_280BE8228;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_107_9(&qword_280BE8228);
  }

  *(v0 + 88) = qword_280C024E0;
  v8 = qword_280BE81D8;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_106_9(&qword_280BE81D8);
  }

  *(v0 + 96) = qword_280C024A8;
  v9 = qword_280BE8208;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_105_14(&qword_280BE8208);
  }

  *(v0 + 104) = qword_280C024D0;
  v10 = qword_280BE9558;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_102_12(&qword_280BE9558);
  }

  *(v0 + 112) = qword_280C027A0;
  v11 = qword_280BE81F0;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_101_11(&qword_280BE81F0);
  }

  *(v0 + 120) = qword_280C024C0;
  v12 = qword_280BE9528;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_21_36(&qword_280BE9528);
  }

  *(v0 + 128) = qword_280C02778;
  v13 = qword_280BE9580;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_100(&qword_280BE9580);
  }

  *(v0 + 136) = qword_280C027C0;
  v14 = qword_280BE94B8;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_20_34(&qword_280BE94B8);
  }

  *(v0 + 144) = qword_280C02738;
  v15 = qword_280BE9588;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_99_14(&qword_280BE9588);
  }

  *(v0 + 152) = qword_280C027C8;
  v16 = qword_280BE9550;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_15_30(&qword_280BE9550);
  }

  *(v0 + 160) = qword_280C02798;
  v17 = qword_280BE9670;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_97_11(&qword_280BE9670);
  }

  *(v0 + 168) = qword_280C02810;
  v18 = qword_280BE9508;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_96_13(&qword_280BE9508);
  }

  *(v0 + 176) = qword_280C02768;
  v19 = qword_280BE81D0;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_95_14(&qword_280BE81D0);
  }

  *(v0 + 184) = qword_280C024A0;
  v20 = qword_280BE95D8;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_94_11(&qword_280BE95D8);
  }

  *(v0 + 192) = qword_280C027D0;
  v21 = qword_280BE9660;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_91_12(&qword_280BE9660);
  }

  *(v0 + 200) = qword_280C02808;
  v22 = qword_280BE9578;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_89_15(&qword_280BE9578);
  }

  *(v0 + 208) = qword_280C027B8;
  v23 = qword_280BE9500;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_88_13(&qword_280BE9500);
  }

  *(v0 + 216) = qword_280C02760;
  v24 = qword_280BE81B0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_87_16(&qword_280BE81B0);
  }

  *(v0 + 224) = qword_280C02490;
  v25 = qword_280BE9658;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_134_10(&qword_280BE9658);
  }

  *(v0 + 232) = qword_280C02800;
  v26 = qword_280BE9400;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_133_11(&qword_280BE9400);
  }

  *(v0 + 240) = qword_280C026F0;
  v27 = qword_280BE81E8;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_132_11(&qword_280BE81E8);
  }

  *(v0 + 248) = qword_280C024B8;
  v28 = qword_280BE94D0;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_131_10(&qword_280BE94D0);
  }

  *(v0 + 256) = qword_280C02748;
  v29 = qword_280BE94C8;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_130_11(&qword_280BE94C8);
  }

  *(v0 + 264) = qword_280C02740;
  v30 = qword_280BE9490;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_129_10(&qword_280BE9490);
  }

  *(v0 + 272) = qword_280C02720;
  v31 = qword_280BE9570;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_128_12(&qword_280BE9570);
  }

  *(v0 + 280) = qword_280C027B0;
  v32 = qword_280BE9538;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_127_10(&qword_280BE9538);
  }

  *(v0 + 288) = qword_280C02780;
  v33 = qword_280BE9548;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_126_12(&qword_280BE9548);
  }

  *(v0 + 296) = qword_280C02790;
  v34 = qword_280BE81C0;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_32_31(&qword_280BE81C0);
  }

  *(v0 + 304) = qword_280C02498;
  v35 = qword_280BE9568;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_125_7(&qword_280BE9568);
  }

  *(v0 + 312) = qword_280C027A8;
  v36 = qword_280BE9540;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_124_9(&qword_280BE9540);
  }

  *(v0 + 320) = qword_280C02788;
  v37 = qword_280BE9628;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_123_11(&qword_280BE9628);
  }

  *(v0 + 328) = qword_280C027E8;
  v38 = qword_280BE8240;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_122_8(&qword_280BE8240);
  }

  *(v0 + 336) = qword_280C024F0;
  v39 = qword_280BE94A0;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_121_12(&qword_280BE94A0);
  }

  *(v0 + 344) = qword_280C02728;
  v40 = qword_280BE9488;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_120_10(&qword_280BE9488);
  }

  *(v0 + 352) = qword_280C02718;
  v41 = qword_280BE94B0;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_119_12(&qword_280BE94B0);
  }

  *(v0 + 360) = qword_280C02730;
  v42 = qword_280BE94E0;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_14_43();
    swift_once();
  }

  *(v0 + 368) = qword_280C02750;
  v43 = qword_280BE9470;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_118_10(&qword_280BE9470);
  }

  *(v0 + 376) = qword_280C02700;
  v44 = qword_280BE9648;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_117_14(&qword_280BE9648);
  }

  *(v0 + 384) = qword_280C027F8;
  v45 = qword_280BE9480;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_116_13(&qword_280BE9480);
  }

  *(v0 + 392) = qword_280C02710;
  v46 = qword_280BE9478;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_115_8(&qword_280BE9478);
  }

  *(v0 + 400) = qword_280C02708;
  v47 = qword_280BE8230;

  if (v47 != -1)
  {
    OUTLINED_FUNCTION_31_30(&qword_280BE8230);
  }

  *(v0 + 408) = qword_280C024E8;
  v48 = qword_280BE9430;

  if (v48 != -1)
  {
    OUTLINED_FUNCTION_7_4(&qword_280BE9430);
  }

  *(v0 + 416) = qword_280BE9438;
  v49 = qword_280BE95F8;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_29_33(&qword_280BE95F8);
  }

  *(v0 + 424) = qword_280C027E0;
  v50 = qword_280BE9460;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_6_3(&qword_280BE9460);
  }

  *(v0 + 432) = qword_280BE9468;
  v51 = qword_280BE9410;

  if (v51 != -1)
  {
    OUTLINED_FUNCTION_26_30(&qword_280BE9410);
  }

  *(v0 + 440) = qword_280BE9418;
  v52 = qword_280BE9618;

  if (v52 != -1)
  {
    OUTLINED_FUNCTION_15_47();
    swift_once();
  }

  *(v0 + 448) = qword_280BE9620;
  v53 = qword_280BE9448;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_8_5(&qword_280BE9448);
  }

  *(v0 + 456) = qword_280BE9450;
  v54 = qword_280BE93E8;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_13_44();
    swift_once();
  }

  *(v0 + 464) = qword_280BE93F0;
  v55 = qword_280BE95C0;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_12_39();
    swift_once();
  }

  *(v0 + 472) = qword_280BE95C8;
  v56 = qword_280BE95A8;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_11_52();
    swift_once();
  }

  *(v0 + 480) = qword_280BE95B0;
  v57 = qword_280BE9590;

  if (v57 != -1)
  {
    OUTLINED_FUNCTION_10_45();
    swift_once();
  }

  *(v0 + 488) = qword_280BE9598;
  v58 = qword_280BE81F8;

  if (v58 != -1)
  {
    OUTLINED_FUNCTION_9_48();
    swift_once();
  }

  *(v0 + 496) = qword_280C024C8;
  v59 = qword_280BE8218;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_8_54();
    swift_once();
  }

  *(v0 + 504) = qword_280C024D8;
  v60 = qword_280BE94F0;

  if (v60 != -1)
  {
    OUTLINED_FUNCTION_7_55();
    swift_once();
  }

  *(v0 + 512) = qword_280C02758;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25378, &qword_21775B608);
  OUTLINED_FUNCTION_31_11(v61);
  *(v0 + 520) = OUTLINED_FUNCTION_54_0();
  v62 = qword_280BE9518;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_6_62();
    swift_once();
  }

  *(v0 + 528) = qword_280C02770;
  v63 = qword_280BE81E0;

  if (v63 != -1)
  {
    OUTLINED_FUNCTION_5_65();
    swift_once();
  }

  *(v0 + 536) = qword_280C024B0;
  qword_280C025A8 = v0;
}

uint64_t AlbumPropertyProvider.knownProperties.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t AlbumPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_142_9() + 272);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *AlbumPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_135_9() + 272);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t AlbumPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_142_9() + 276));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

void AlbumPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t AlbumPropertyProvider.href.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void AlbumPropertyProvider.href.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for AlbumPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t AlbumPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t AlbumPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t AlbumPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t AlbumPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for AlbumPropertyProvider(0);

  return sub_217751DE8();
}

void static AlbumPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v745 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v743 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_81();
  v741 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31();
  v736 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_99();
  v734 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_99();
  v732 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_99();
  v739 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  v742 = &v726 - v19;
  v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_31();
  v735 = v21;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_99();
  v733 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_99();
  v731 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_99();
  v740 = v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28);
  v746 = &v726 - v29;
  v30 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_81();
  v747 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v36 = OUTLINED_FUNCTION_45_0(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_31();
  v738 = v37;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_190_0();
  MEMORY[0x28223BE20](v39);
  v41 = &v726 - v40;
  v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_31();
  v737 = v43;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v44);
  v46 = &v726 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v726 - v48;
  v50 = OUTLINED_FUNCTION_162();
  memcpy(v50, v5, 0x221uLL);
  v51 = OUTLINED_FUNCTION_163_6();
  memcpy(v51, v3, 0x221uLL);
  v52 = OUTLINED_FUNCTION_50_21();
  memcpy(v52, v5, 0x221uLL);
  memcpy(v772, v3, sizeof(v772));
  memcpy(v773, v5, 0x221uLL);
  OUTLINED_FUNCTION_104(v773);
  if (v67)
  {
    v53 = OUTLINED_FUNCTION_49_24();
    OUTLINED_FUNCTION_223_2(v53);
    v54 = OUTLINED_FUNCTION_49_24();
    OUTLINED_FUNCTION_104(v54);
    if (!v67)
    {
      v74 = OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_157(v74, &v764);
      v75 = OUTLINED_FUNCTION_163_6();
      v76 = &v764;
LABEL_10:
      OUTLINED_FUNCTION_157(v75, v76);
      goto LABEL_11;
    }

    v729 = v32;
    v730 = v30;
    v55 = v5;
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_53_20();
    memcpy(v56, v57, 0x221uLL);
    v58 = OUTLINED_FUNCTION_162();
    OUTLINED_FUNCTION_171_8(v58, v759);
    v59 = OUTLINED_FUNCTION_163_6();
    OUTLINED_FUNCTION_171_8(v59, v759);
    v60 = OUTLINED_FUNCTION_93_0();
    sub_2171F0738(v60, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_53_20();
    memcpy(v61, v62, 0x221uLL);
    OUTLINED_FUNCTION_53_20();
    memcpy(v63, v64, 0x221uLL);
    v65 = OUTLINED_FUNCTION_49_24();
    OUTLINED_FUNCTION_223_2(v65);
    v66 = OUTLINED_FUNCTION_49_24();
    OUTLINED_FUNCTION_104(v66);
    if (v67)
    {
      OUTLINED_FUNCTION_53_20();
      memcpy(v68, v69, 0x221uLL);
      v70 = OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_157(v70, v755);
      v71 = OUTLINED_FUNCTION_163_6();
      OUTLINED_FUNCTION_157(v71, v755);
      v72 = OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_157(v72, v755);
      v73 = v756;
LABEL_9:
      sub_217284084(v73);
LABEL_11:
      OUTLINED_FUNCTION_49_24();
      OUTLINED_FUNCTION_53_20();
      memcpy(v77, v78, 0x449uLL);
      v79 = OUTLINED_FUNCTION_49_24();
LABEL_12:
      sub_2171F0738(v79, v80, v81);
      goto LABEL_13;
    }

    v729 = v32;
    v730 = v30;
    v55 = v5;
    OUTLINED_FUNCTION_223_2(v756);
    v82 = OUTLINED_FUNCTION_162();
    OUTLINED_FUNCTION_171_8(v82, v755);
    v83 = OUTLINED_FUNCTION_163_6();
    OUTLINED_FUNCTION_171_8(v83, v755);
    v84 = OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_171_8(v84, v755);
    v85 = static Artwork.== infix(_:_:)(v759, v756);
    memcpy(v754, v756, 0x221uLL);
    sub_217284084(v754);
    memcpy(v755, v759, 0x221uLL);
    sub_217284084(v755);
    OUTLINED_FUNCTION_53_20();
    memcpy(v86, v87, 0x221uLL);
    sub_2171F0738(v756, &qword_27CB24400, &unk_21775E9A0);
    if ((v85 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v88 = *(v55 + 560);
  v89 = v3[70];
  if (v88)
  {
    if (!v89)
    {
      goto LABEL_13;
    }

    v90 = *(v55 + 552) == v3[69] && v88 == v89;
    if (!v90 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v89)
  {
    goto LABEL_13;
  }

  v91 = type metadata accessor for AlbumPropertyProvider(0);
  v727 = v55;
  v728 = v3;
  v726 = v91;
  v92 = *(v748 + 48);
  OUTLINED_FUNCTION_171_8(v55 + v91[6], v49);
  v93 = OUTLINED_FUNCTION_192_7();
  v94 = v728;
  OUTLINED_FUNCTION_171_8(v93, &v49[v92]);
  v95 = v730;
  OUTLINED_FUNCTION_133(v49, 1, v730);
  if (v67)
  {
    OUTLINED_FUNCTION_9(&v49[v92]);
    if (v67)
    {
      sub_2171F0738(v49, &unk_27CB277C0, &qword_217758DC0);
      v96 = v729;
      goto LABEL_34;
    }

LABEL_32:
    v80 = &qword_27CB24840;
    v81 = &unk_217758DD0;
    v79 = v49;
    goto LABEL_12;
  }

  sub_21726A630(v49, v41, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_9(&v49[v92]);
  if (v97)
  {
    (*(v729 + 8))(v41, v95);
    goto LABEL_32;
  }

  v98 = &v49[v92];
  v99 = v729;
  v100 = v747;
  (*(v729 + 32))(v747, v98, v95);
  OUTLINED_FUNCTION_1_87();
  sub_217584D1C(v101, v102, MEMORY[0x277CC9278]);
  v103 = sub_217751F08();
  v104 = *(v99 + 8);
  v105 = v100;
  v96 = v99;
  v104(v105, v95);
  v104(v41, v95);
  v94 = v728;
  sub_2171F0738(v49, &unk_27CB277C0, &qword_217758DC0);
  if ((v103 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_34:
  v107 = v726;
  v106 = v727;
  v108 = v726[7];
  v109 = *(v94 + v108);
  if (*(v727 + v108))
  {
    if (!v109 || (sub_2172849D0() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v109)
  {
    goto LABEL_13;
  }

  v110 = *(v748 + 48);
  OUTLINED_FUNCTION_157(v106 + v107[8], v46);
  v111 = OUTLINED_FUNCTION_192_7();
  v112 = v728;
  OUTLINED_FUNCTION_157(v111, &v46[v110]);
  v113 = v730;
  OUTLINED_FUNCTION_133(v46, 1, v730);
  if (v67)
  {
    OUTLINED_FUNCTION_73(&v46[v110]);
    if (v67)
    {
      v729 = v96;
      sub_2171F0738(v46, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_49;
    }

LABEL_47:
    v80 = &qword_27CB24840;
    v81 = &unk_217758DD0;
    v79 = v46;
    goto LABEL_12;
  }

  sub_21726A630(v46, v0, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_73(&v46[v110]);
  if (v114)
  {
    (*(v96 + 8))(v0, v113);
    goto LABEL_47;
  }

  v115 = v747;
  (*(v96 + 32))(v747, &v46[v110], v113);
  OUTLINED_FUNCTION_1_87();
  sub_217584D1C(v116, v117, MEMORY[0x277CC9278]);
  v118 = v96;
  v119 = sub_217751F08();
  v729 = v118;
  v120 = *(v118 + 8);
  v121 = v115;
  v112 = v728;
  v120(v121, v113);
  v120(v0, v113);
  sub_2171F0738(v46, &unk_27CB277C0, &qword_217758DC0);
  if ((v119 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_49:
  OUTLINED_FUNCTION_113_1();
  if (v123)
  {
    if (!v122)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v124)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_113_1();
  if (v126)
  {
    if (!v125)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v127)
    {
      goto LABEL_13;
    }
  }

  v128 = v107[11];
  v129 = *(v106 + v128);
  v130 = *(v112 + v128);
  LOBYTE(v768) = v129;
  BYTE1(v768) = v130;
  if (v129 == 2)
  {
    if (v130 != 2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v760) = v129;
    if (v130 == 2)
    {
      goto LABEL_13;
    }

    v131 = OUTLINED_FUNCTION_41_25();
    if (!static ContentRating.== infix(_:_:)(v131, v132))
    {
      goto LABEL_13;
    }
  }

  v133 = v107[12];
  v134 = *(v112 + v133 + 8);
  if (*(v106 + v133 + 8))
  {
    if (!v134)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v106 + v133);
    v137 = v67 && v135 == v136;
    if (!v137 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v134)
  {
    goto LABEL_13;
  }

  v138 = v107[13];
  OUTLINED_FUNCTION_166_8();
  v139 = &qword_27CB241C0;
  v140 = &qword_217759480;
  v141 = v746;
  OUTLINED_FUNCTION_157(v106 + v138, v746);
  v142 = OUTLINED_FUNCTION_192_7();
  OUTLINED_FUNCTION_157(v142, v141 + v0);
  v143 = v745;
  OUTLINED_FUNCTION_133(v141, 1, v745);
  if (v67)
  {
    OUTLINED_FUNCTION_133(v141 + v0, 1, v143);
    if (v67)
    {
      sub_2171F0738(v141, &qword_27CB241C0, &qword_217759480);
      goto LABEL_81;
    }

LABEL_79:
    v80 = &qword_27CB25C10;
    v81 = &unk_217765A50;
    v79 = v141;
    goto LABEL_12;
  }

  v144 = v742;
  sub_21726A630(v141, v742, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_133(v141 + v0, 1, v143);
  if (v145)
  {
    OUTLINED_FUNCTION_165_6();
    v146(v144, v143);
    goto LABEL_79;
  }

  v147 = v743;
  v148 = v741;
  (*(v743 + 32))(v741, v141 + v0, v143);
  OUTLINED_FUNCTION_0_95();
  sub_217584D1C(v149, v150, MEMORY[0x277CC9598]);
  v151 = v144;
  v139 = sub_217751F08();
  v140 = (v147 + 8);
  v152 = *(v147 + 8);
  v152(v148, v143);
  v152(v151, v143);
  sub_2171F0738(v746, &qword_27CB241C0, &qword_217759480);
  if ((v139 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_81:
  OUTLINED_FUNCTION_114_9();
  if (v154)
  {
    if (!v153)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v155)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_72_14();
  if (v140)
  {
    if (!v139)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_727();
    sub_217262A00();
    OUTLINED_FUNCTION_200_5();
    if ((v140 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v139)
  {
    goto LABEL_13;
  }

  v156 = v726[16];
  v157 = (v727 + v156);
  v158 = *(v727 + v156 + 16);
  v757[0] = *(v727 + v156);
  v757[1] = v158;
  v159 = *(v727 + v156 + 16);
  v757[2] = *(v727 + v156 + 32);
  v160 = *(v727 + v156 + 32);
  v757[3] = *(v727 + v156 + 48);
  v161 = (v728 + v156);
  v162 = v161[1];
  v758[0] = *v161;
  v758[1] = v162;
  v163 = v161[1];
  v758[2] = v161[2];
  v164 = v161[2];
  v758[3] = v161[3];
  v755[0] = v159;
  v755[1] = v160;
  v755[2] = v157[3];
  v165 = v757[0];
  v166 = *(&v758[0] + 1);
  v167 = *&v758[0];
  v754[0] = v163;
  v754[1] = v164;
  v754[2] = v161[3];
  if (*(&v757[0] + 1) == 1)
  {
    if (*(&v758[0] + 1) == 1)
    {
      *&v768 = *&v757[0];
      *(&v768 + 1) = 1;
      OUTLINED_FUNCTION_152_11(v157[1], v157[2]);
      v769[2] = *(v168 + 48);
      v169 = &qword_27CB24B70;
      v170 = &unk_217759460;
      OUTLINED_FUNCTION_66_15();
      OUTLINED_FUNCTION_157(v171, v172);
      OUTLINED_FUNCTION_66_15();
      OUTLINED_FUNCTION_157(v173, v174);
      v175 = OUTLINED_FUNCTION_50_21();
      OUTLINED_FUNCTION_169_1(v175);
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_38_24(v757);
    OUTLINED_FUNCTION_38_24(v758);
LABEL_96:
    v768 = v165;
    OUTLINED_FUNCTION_152_11(v755[0], v755[1]);
    v769[2] = v179[37];
    *&v769[3] = v167;
    *(&v769[3] + 1) = v166;
    v180 = v179[1];
    v769[4] = *v179;
    v769[5] = v180;
    v769[6] = v179[2];
    goto LABEL_97;
  }

  v768 = v757[0];
  v176 = v157[2];
  v769[0] = v157[1];
  v769[1] = v176;
  v769[2] = v157[3];
  v760 = v757[0];
  v761 = v769[0];
  v762 = v176;
  v763 = v769[2];
  if (*(&v758[0] + 1) == 1)
  {
    v764 = v768;
    v765 = v769[0];
    v766 = v769[1];
    v767 = v769[2];
    OUTLINED_FUNCTION_157(v757, v759);
    OUTLINED_FUNCTION_157(v758, v759);
    v177 = OUTLINED_FUNCTION_50_21();
    OUTLINED_FUNCTION_157(v177, v759);
    v178 = OUTLINED_FUNCTION_93_0();
    sub_217351248(v178);
    goto LABEL_96;
  }

  v181 = v161[2];
  v765 = v161[1];
  v766 = v181;
  v767 = v161[3];
  v764 = v758[0];
  v182 = OUTLINED_FUNCTION_49_24();
  v169 = static EditorialNotes.== infix(_:_:)(v182, &v764);
  v756[0] = v764;
  v756[1] = v765;
  v756[2] = v766;
  v756[3] = v767;
  v170 = &qword_27CB24B70;
  v166 = &unk_217759460;
  OUTLINED_FUNCTION_172_8(v757);
  OUTLINED_FUNCTION_172_8(v758);
  v183 = OUTLINED_FUNCTION_50_21();
  OUTLINED_FUNCTION_172_8(v183);
  sub_217351248(v756);
  v759[0] = v760;
  v759[1] = v761;
  v759[2] = v762;
  v759[3] = v763;
  sub_217351248(v759);
  v764 = v165;
  v765 = v755[0];
  v766 = v755[1];
  v767 = v755[2];
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v184, v185, v186);
  if ((v169 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_99:
  OUTLINED_FUNCTION_72_14();
  if (v170)
  {
    if (!v169)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_727();
    sub_217262CB4();
    OUTLINED_FUNCTION_200_5();
    if ((v170 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v169)
  {
    goto LABEL_13;
  }

  v187 = v726[18];
  OUTLINED_FUNCTION_166_8();
  v188 = v740;
  OUTLINED_FUNCTION_157(v727 + v187, v740);
  v189 = OUTLINED_FUNCTION_192_7();
  OUTLINED_FUNCTION_157(v189, v188 + v166);
  OUTLINED_FUNCTION_24_33(v188);
  if (v67)
  {
    OUTLINED_FUNCTION_24_33(v740 + v166);
    if (v67)
    {
      sub_2171F0738(v740, &qword_27CB241C0, &qword_217759480);
      goto LABEL_114;
    }

LABEL_112:
    v80 = &qword_27CB25C10;
    v81 = &unk_217765A50;
    v79 = v740;
    goto LABEL_12;
  }

  v190 = v740;
  sub_21726A630(v740, v739, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_24_33(v190 + v166);
  if (v191)
  {
    OUTLINED_FUNCTION_165_6();
    v192(v739, v745);
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_156_9();
  v194 = v740;
  v193 = v741;
  v195 = v745;
  v196(v741, v740 + v166, v745);
  OUTLINED_FUNCTION_0_95();
  sub_217584D1C(v197, v198, MEMORY[0x277CC9598]);
  v199 = v739;
  OUTLINED_FUNCTION_47_19();
  v200 = sub_217751F08();
  v166 = 0x6B1FE36C6B1FEA89;
  MEMORY[0x6B1FE36C6B1FEA88](v193, v195);
  MEMORY[0x6B1FE36C6B1FEA88](v199, v195);
  sub_2171F0738(v194, &qword_27CB241C0, &qword_217759480);
  if ((v200 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_114:
  OUTLINED_FUNCTION_34_29();
  OUTLINED_FUNCTION_111_13(v201);
  if (v203 == 3)
  {
    if (v202 != 3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v204 + 2368) = v203;
    if (v202 == 3)
    {
      goto LABEL_13;
    }

    v205 = OUTLINED_FUNCTION_41_25();
    if (!static LegacyModelFavoriteStatus.== infix(_:_:)(v205, v206))
    {
      goto LABEL_13;
    }
  }

  if (OUTLINED_FUNCTION_59_16(v726[20]))
  {
    if (!v207)
    {
      goto LABEL_13;
    }

    sub_217270790();
    if ((v208 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v207)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v209 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v209 == 2 || ((v209 ^ v210) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v211 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v211 == 2 || ((v211 ^ v212) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v213 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v213 == 2 || ((v213 ^ v214) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v215 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v215 == 2 || ((v215 ^ v216) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v217 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v217 == 2 || ((v217 ^ v218) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v219 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v219 == 2 || ((v219 ^ v220) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v221 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v221 == 2 || ((v221 ^ v222) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v223 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v223 == 2 || ((v223 ^ v224) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v225 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v225 == 2 || ((v225 ^ v226) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v227 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v227 == 2 || ((v227 ^ v228) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_34_29();
  OUTLINED_FUNCTION_111_13(v229);
  if (v231 == 5)
  {
    if (v230 != 5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v232 + 2368) = v231;
    if (v230 == 5)
    {
      goto LABEL_13;
    }

    v233 = OUTLINED_FUNCTION_41_25();
    if (!static LegacyModelKeepLocalEnabledStatus.== infix(_:_:)(v233, v234))
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_34_29();
  OUTLINED_FUNCTION_111_13(v235);
  if (v237 == 7)
  {
    if (v236 != 7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v238 + 2368) = v237;
    if (v236 == 7)
    {
      goto LABEL_13;
    }

    v239 = OUTLINED_FUNCTION_41_25();
    if (!static LegacyModelKeepLocalManagedStatus.== infix(_:_:)(v239, v240))
    {
      goto LABEL_13;
    }
  }

  v241 = v726[33];
  v242 = (v727 + v241);
  v243 = *(v727 + v241 + 8);
  v244 = v728 + v241;
  if (v243)
  {
    if ((v244[8] & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v244[8] & 1) != 0 || !sub_21770C140(*v242, *v244))
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_166_8();
  v245 = OUTLINED_FUNCTION_188_6();
  v246 = v731;
  OUTLINED_FUNCTION_157(v245, v731);
  OUTLINED_FUNCTION_69_16();
  OUTLINED_FUNCTION_24_33(v246);
  if (v67)
  {
    OUTLINED_FUNCTION_24_33(v731 + v166);
    if (v67)
    {
      sub_2171F0738(v731, &qword_27CB241C0, &qword_217759480);
      goto LABEL_209;
    }

LABEL_207:
    v80 = &qword_27CB25C10;
    v81 = &unk_217765A50;
    v79 = v731;
    goto LABEL_12;
  }

  v247 = v731;
  sub_21726A630(v731, v732, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_24_33(v247 + v166);
  if (v248)
  {
    OUTLINED_FUNCTION_165_6();
    v249(v732, v745);
    goto LABEL_207;
  }

  OUTLINED_FUNCTION_156_9();
  v250 = v731;
  v251 = OUTLINED_FUNCTION_158_7();
  v252 = v745;
  v253(v251);
  OUTLINED_FUNCTION_0_95();
  sub_217584D1C(v254, v255, MEMORY[0x277CC9598]);
  v256 = v732;
  OUTLINED_FUNCTION_55_18();
  sub_217751F08();
  v257 = OUTLINED_FUNCTION_183_7();
  (v166)(v257);
  (v166)(v256, v252);
  sub_2171F0738(v250, &qword_27CB241C0, &qword_217759480);
  if ((v247 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_209:
  OUTLINED_FUNCTION_166_8();
  v258 = OUTLINED_FUNCTION_188_6();
  v259 = v733;
  OUTLINED_FUNCTION_157(v258, v733);
  OUTLINED_FUNCTION_69_16();
  OUTLINED_FUNCTION_24_33(v259);
  if (v67)
  {
    OUTLINED_FUNCTION_24_33(v733 + v166);
    if (v67)
    {
      sub_2171F0738(v733, &qword_27CB241C0, &qword_217759480);
      goto LABEL_219;
    }

LABEL_217:
    v80 = &qword_27CB25C10;
    v81 = &unk_217765A50;
    v79 = v733;
    goto LABEL_12;
  }

  v260 = v733;
  sub_21726A630(v733, v734, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_24_33(v260 + v166);
  if (v261)
  {
    OUTLINED_FUNCTION_165_6();
    v262(v734, v745);
    goto LABEL_217;
  }

  OUTLINED_FUNCTION_156_9();
  v263 = v733;
  v264 = OUTLINED_FUNCTION_158_7();
  v265 = v745;
  v266(v264);
  OUTLINED_FUNCTION_0_95();
  sub_217584D1C(v267, v268, MEMORY[0x277CC9598]);
  v269 = v734;
  OUTLINED_FUNCTION_55_18();
  sub_217751F08();
  v270 = OUTLINED_FUNCTION_183_7();
  (v166)(v270);
  (v166)(v269, v265);
  sub_2171F0738(v263, &qword_27CB241C0, &qword_217759480);
  if ((v260 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_219:
  v271 = v727;
  v272 = v726[36];
  memcpy(v756, (v727 + v272), 0x221uLL);
  v273 = v726[36];
  v274 = v728;
  memcpy(v759, v728 + v273, 0x221uLL);
  v275 = OUTLINED_FUNCTION_50_21();
  memcpy(v275, (v271 + v272), 0x221uLL);
  memcpy(v772, (v274 + v273), sizeof(v772));
  v276 = OUTLINED_FUNCTION_93_0();
  memcpy(v276, (v271 + v272), 0x221uLL);
  v277 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_104(v277);
  if (v67)
  {
    v278 = OUTLINED_FUNCTION_49_24();
    OUTLINED_FUNCTION_223_2(v278);
    v279 = OUTLINED_FUNCTION_49_24();
    OUTLINED_FUNCTION_104(v279);
    if (v67)
    {
      OUTLINED_FUNCTION_53_20();
      memcpy(v280, v281, 0x221uLL);
      OUTLINED_FUNCTION_80_15(v756);
      OUTLINED_FUNCTION_80_15(v759);
      OUTLINED_FUNCTION_169_1(v755);
      goto LABEL_228;
    }

    OUTLINED_FUNCTION_157(v756, v755);
    v75 = v759;
    v76 = v755;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_53_20();
  memcpy(v282, v283, 0x221uLL);
  OUTLINED_FUNCTION_53_20();
  memcpy(v284, v285, 0x221uLL);
  v286 = OUTLINED_FUNCTION_49_24();
  OUTLINED_FUNCTION_223_2(v286);
  v287 = OUTLINED_FUNCTION_49_24();
  OUTLINED_FUNCTION_104(v287);
  if (v288)
  {
    OUTLINED_FUNCTION_53_20();
    memcpy(v289, v290, 0x221uLL);
    OUTLINED_FUNCTION_112_13(v756);
    OUTLINED_FUNCTION_112_13(v759);
    OUTLINED_FUNCTION_112_13(v755);
    v73 = v751;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_223_2(v751);
  OUTLINED_FUNCTION_112_13(v756);
  OUTLINED_FUNCTION_112_13(v759);
  OUTLINED_FUNCTION_112_13(v755);
  v291 = static Artwork.== infix(_:_:)(v754, v751);
  memcpy(v749, v751, 0x221uLL);
  sub_217284084(v749);
  memcpy(v750, v754, 0x221uLL);
  sub_217284084(v750);
  OUTLINED_FUNCTION_53_20();
  memcpy(v292, v293, 0x221uLL);
  OUTLINED_FUNCTION_169_1(v751);
  if ((v291 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_228:
  OUTLINED_FUNCTION_72_14();
  if (&unk_21775E9A0)
  {
    if (!&qword_27CB24400)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_727();
    sub_2172711A8();
    OUTLINED_FUNCTION_200_5();
    if ((&unk_21775E9A0 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (&qword_27CB24400)
  {
    goto LABEL_13;
  }

  v294 = v726[38];
  v295 = v727 + v294;
  memcpy(v752, (v727 + v294), sizeof(v752));
  v296 = v728 + v294;
  memcpy(v753, v296, sizeof(v753));
  v297 = *v752;
  v298 = *&v752[8];
  memcpy(v750, (v295 + 16), 0x68uLL);
  v299 = v753[0];
  v300 = v753[1];
  memcpy(v749, v296 + 16, 0x68uLL);
  if (!*&v752[8])
  {
    if (!v753[1])
    {
      v768 = *v752;
      OUTLINED_FUNCTION_175_7();
      OUTLINED_FUNCTION_66_15();
      OUTLINED_FUNCTION_157(v312, v313);
      OUTLINED_FUNCTION_66_15();
      OUTLINED_FUNCTION_157(v314, v315);
      v316 = OUTLINED_FUNCTION_50_21();
      OUTLINED_FUNCTION_169_1(v316);
      goto LABEL_242;
    }

    OUTLINED_FUNCTION_38_24(v752);
    OUTLINED_FUNCTION_38_24(v753);
LABEL_240:
    *&v768 = v297;
    *(&v768 + 1) = v298;
    memcpy(v769, v750, 0x68uLL);
    *(&v769[6] + 1) = v299;
    v770 = v300;
    memcpy(v771, v749, sizeof(v771));
    goto LABEL_97;
  }

  v768 = *v752;
  OUTLINED_FUNCTION_175_7();
  OUTLINED_FUNCTION_49_24();
  OUTLINED_FUNCTION_53_20();
  memcpy(v301, v302, 0x78uLL);
  if (!v300)
  {
    OUTLINED_FUNCTION_53_20();
    memcpy(v309, v310, 0x78uLL);
    OUTLINED_FUNCTION_80_15(v752);
    OUTLINED_FUNCTION_80_15(v753);
    v311 = OUTLINED_FUNCTION_50_21();
    OUTLINED_FUNCTION_80_15(v311);
    sub_2172848C0(v755);
    goto LABEL_240;
  }

  memcpy(&v755[1], v296 + 16, 0x68uLL);
  v755[0].n128_u64[0] = v299;
  v755[0].n128_u64[1] = v300;
  OUTLINED_FUNCTION_80_15(v752);
  OUTLINED_FUNCTION_80_15(v753);
  v303 = OUTLINED_FUNCTION_50_21();
  OUTLINED_FUNCTION_80_15(v303);
  v304 = OUTLINED_FUNCTION_35_27();
  static PlayParameters.== infix(_:_:)(v304, v305);
  v300 = v306;
  memcpy(v751, v755, 0x78uLL);
  sub_2172848C0(v751);
  OUTLINED_FUNCTION_66_15();
  memcpy(v307, v308, 0x78uLL);
  sub_2172848C0(v754);
  v755[0].n128_u64[0] = v297;
  v755[0].n128_u64[1] = v298;
  memcpy(&v755[1], v750, 0x68uLL);
  OUTLINED_FUNCTION_169_1(v755);
  if ((v300 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_242:
  OUTLINED_FUNCTION_16_49();
  if (v319)
  {
    if (!v317)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v318);
    v322 = v67 && v320 == v321;
    if (!v322 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v317)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_166_8();
  v323 = OUTLINED_FUNCTION_188_6();
  v324 = v735;
  OUTLINED_FUNCTION_157(v323, v735);
  OUTLINED_FUNCTION_69_16();
  OUTLINED_FUNCTION_24_33(v324);
  if (v67)
  {
    OUTLINED_FUNCTION_24_33(v735 + v300);
    if (v67)
    {
      sub_2171F0738(v735, &qword_27CB241C0, &qword_217759480);
      goto LABEL_261;
    }

LABEL_259:
    v80 = &qword_27CB25C10;
    v81 = &unk_217765A50;
    v79 = v735;
    goto LABEL_12;
  }

  v325 = v735;
  sub_21726A630(v735, v736, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_24_33(v325 + v300);
  if (v326)
  {
    OUTLINED_FUNCTION_165_6();
    v327(v736, v745);
    goto LABEL_259;
  }

  v328 = v735;
  v329 = OUTLINED_FUNCTION_158_7();
  v330 = v745;
  v331(v329);
  OUTLINED_FUNCTION_0_95();
  sub_217584D1C(v332, v333, MEMORY[0x277CC9598]);
  v334 = v736;
  OUTLINED_FUNCTION_196_7();
  v335 = OUTLINED_FUNCTION_184_5();
  (qword_217759480)(v335);
  (qword_217759480)(v334, v330);
  sub_2171F0738(v328, &qword_27CB241C0, &qword_217759480);
  if ((v325 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_261:
  OUTLINED_FUNCTION_114_9();
  if (v337)
  {
    if (!v336)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v338)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v339 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v339 == 2 || ((v339 ^ v340) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_79();
  if (v67)
  {
    if (v341 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v341 == 2 || ((v341 ^ v342) & 1) != 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_49();
  if (v345)
  {
    if (!v343)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v344);
    v348 = v67 && v346 == v347;
    if (!v348 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v343)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_49();
  if (v351)
  {
    if (!v349)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v350);
    v354 = v67 && v352 == v353;
    if (!v354 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v349)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_114_9();
  if (v356)
  {
    if (!v355)
    {
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v357)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_16_49();
  if (v360)
  {
    if (!v358)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v359);
    v363 = v67 && v361 == v362;
    if (!v363 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v358)
  {
    goto LABEL_13;
  }

  v364 = *(v748 + 48);
  v365 = OUTLINED_FUNCTION_188_6();
  v366 = v737;
  OUTLINED_FUNCTION_157(v365, v737);
  OUTLINED_FUNCTION_69_16();
  OUTLINED_FUNCTION_133(v366, 1, v730);
  if (v67)
  {
    OUTLINED_FUNCTION_133(v737 + v364, 1, v730);
    if (v67)
    {
      sub_2171F0738(v737, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_318;
    }

LABEL_316:
    v80 = &qword_27CB24840;
    v81 = &unk_217758DD0;
    v79 = v737;
    goto LABEL_12;
  }

  v367 = v737;
  sub_21726A630(v737, v738, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v367 + v364, 1, v730);
  if (v368)
  {
    (*(v729 + 8))(v738, v730);
    goto LABEL_316;
  }

  v369 = v737;
  v370 = v737 + v364;
  v371 = v730;
  (*(v729 + 32))(v747, v370, v730);
  OUTLINED_FUNCTION_1_87();
  sub_217584D1C(v372, v373, MEMORY[0x277CC9278]);
  v374 = v738;
  OUTLINED_FUNCTION_196_7();
  v375 = OUTLINED_FUNCTION_184_5();
  (qword_217758DC0)(v375);
  (qword_217758DC0)(v374, v371);
  sub_2171F0738(v369, &unk_27CB277C0, &qword_217758DC0);
  if ((v367 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_318:
  OUTLINED_FUNCTION_16_49();
  if (v378)
  {
    if (!v376)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v377);
    v381 = v67 && v379 == v380;
    if (!v381 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v376)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v382);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v383 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v383, v384, v385, v386);
    if (!v771[7])
    {
      v413 = OUTLINED_FUNCTION_49_24();
      sub_2171F0738(v413, v414, v415);
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_68_18();
    v387 = OUTLINED_FUNCTION_35_27();
    v389 = sub_21733E820(v387, v388);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v390, v391, v392);
    OUTLINED_FUNCTION_39_20();
    v393 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v393, v394, v395);
    if ((v389 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v396 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v396, v397, v398);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v399);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v400 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v400, v401, v402, v403);
    if (!v771[7])
    {
      goto LABEL_399;
    }

    OUTLINED_FUNCTION_68_18();
    v404 = OUTLINED_FUNCTION_35_27();
    v406 = sub_21733E33C(v404, v405);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v407, v408, v409);
    OUTLINED_FUNCTION_39_20();
    v410 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v410, v411, v412);
    if ((v406 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v416 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v416, v417, v418);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v419);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v420 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v420, v421, v422, v423);
    if (!v771[7])
    {
      v450 = OUTLINED_FUNCTION_49_24();
      sub_2171F0738(v450, v451, v452);
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_68_18();
    v424 = OUTLINED_FUNCTION_35_27();
    v426 = sub_21733E874(v424, v425);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v427, v428, v429);
    OUTLINED_FUNCTION_39_20();
    v430 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v430, v431, v432);
    if ((v426 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v433 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v433, v434, v435);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v436);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v437 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v437, v438, v439, v440);
    if (!v771[7])
    {
      goto LABEL_457;
    }

    OUTLINED_FUNCTION_68_18();
    v441 = OUTLINED_FUNCTION_35_27();
    v443 = sub_21733E778(v441, v442);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v444, v445, v446);
    OUTLINED_FUNCTION_39_20();
    v447 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v447, v448, v449);
    if ((v443 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v453 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v453, v454, v455);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v456);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v457 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v457, v458, v459, v460);
    if (!v771[7])
    {
      goto LABEL_399;
    }

    OUTLINED_FUNCTION_68_18();
    v461 = OUTLINED_FUNCTION_35_27();
    v463 = sub_21733E33C(v461, v462);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v464, v465, v466);
    OUTLINED_FUNCTION_39_20();
    v467 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v467, v468, v469);
    if ((v463 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v470 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v470, v471, v472);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v473);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v474 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v474, v475, v476, v477);
    if (!v771[7])
    {
      v504 = OUTLINED_FUNCTION_49_24();
      sub_2171F0738(v504, v505, v506);
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_68_18();
    v478 = OUTLINED_FUNCTION_35_27();
    v480 = sub_21733E9C4(v478, v479);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v481, v482, v483);
    OUTLINED_FUNCTION_39_20();
    v484 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v484, v485, v486);
    if ((v480 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v487 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v487, v488, v489);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v490);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v491 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v491, v492, v493, v494);
    if (v771[7])
    {
      OUTLINED_FUNCTION_68_18();
      v495 = OUTLINED_FUNCTION_35_27();
      v497 = sub_21733E778(v495, v496);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v498, v499, v500);
      OUTLINED_FUNCTION_39_20();
      v501 = OUTLINED_FUNCTION_50_21();
      sub_2171F0738(v501, v502, v503);
      if ((v497 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_375;
    }

LABEL_457:
    v712 = OUTLINED_FUNCTION_49_24();
    sub_2171F0738(v712, v713, v714);
    goto LABEL_97;
  }

  if (v771[7])
  {
    goto LABEL_97;
  }

  v507 = OUTLINED_FUNCTION_50_21();
  sub_2171F0738(v507, v508, v509);
LABEL_375:
  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v510);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v511 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v511, v512, v513, v514);
    if (!v771[7])
    {
      v541 = OUTLINED_FUNCTION_49_24();
      sub_2171F0738(v541, v542, v543);
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_68_18();
    v515 = OUTLINED_FUNCTION_35_27();
    v517 = sub_21733E390(v515, v516);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v518, v519, v520);
    OUTLINED_FUNCTION_39_20();
    v521 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v521, v522, v523);
    if ((v517 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v524 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v524, v525, v526);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v527);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v528 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v528, v529, v530, v531);
    if (!v771[7])
    {
      goto LABEL_399;
    }

    OUTLINED_FUNCTION_68_18();
    v532 = OUTLINED_FUNCTION_35_27();
    v534 = sub_21733E33C(v532, v533);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v535, v536, v537);
    OUTLINED_FUNCTION_39_20();
    v538 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v538, v539, v540);
    if ((v534 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v544 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v544, v545, v546);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v547);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v548 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v548, v549, v550, v551);
    if (v771[7])
    {
      OUTLINED_FUNCTION_68_18();
      v552 = OUTLINED_FUNCTION_35_27();
      v554 = sub_21733E33C(v552, v553);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v555, v556, v557);
      OUTLINED_FUNCTION_39_20();
      v558 = OUTLINED_FUNCTION_50_21();
      sub_2171F0738(v558, v559, v560);
      if ((v554 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_395;
    }

LABEL_399:
    v579 = OUTLINED_FUNCTION_49_24();
    sub_2171F0738(v579, v580, v581);
    goto LABEL_97;
  }

  if (v771[7])
  {
    goto LABEL_97;
  }

  v561 = OUTLINED_FUNCTION_50_21();
  sub_2171F0738(v561, v562, v563);
LABEL_395:
  OUTLINED_FUNCTION_76_13();
  v564 = &qword_27CB25338;
  v565 = &unk_21775D3E0;
  OUTLINED_FUNCTION_18_41(v566);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v567 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v567, v568, v569, v570);
    if (!v771[7])
    {
      v586 = OUTLINED_FUNCTION_49_24();
      sub_2171F0738(v586, v587, v588);
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_68_18();
    v571 = OUTLINED_FUNCTION_35_27();
    v564 = sub_21733E8C8(v571, v572);
    v565 = &qword_27CB25380;
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v573, v574, v575);
    OUTLINED_FUNCTION_39_20();
    v576 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v576, v577, v578);
    if ((v564 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[7])
    {
      goto LABEL_97;
    }

    v582 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v582, v583, v584);
  }

  OUTLINED_FUNCTION_72_14();
  if (v565)
  {
    if (!v564)
    {
      goto LABEL_13;
    }

    type metadata accessor for Album.TracksPopularityProvider();
    v585 = OUTLINED_FUNCTION_92_13();
    if (!static Album.TracksPopularityProvider.== infix(_:_:)(v585, v564))
    {
      goto LABEL_13;
    }
  }

  else if (v564)
  {
    goto LABEL_13;
  }

  v589 = v726[62];
  v590 = (v727 + v589);
  v591 = *(v727 + v589);
  v592 = *(v727 + v589 + 8);
  v594 = *(v727 + v589 + 16);
  v593 = *(v727 + v589 + 24);
  v595 = (v728 + v589);
  v596 = *v595;
  v597 = v595[1];
  v599 = v595[2];
  v598 = v595[3];
  if (v592 == 1)
  {
    v600 = OUTLINED_FUNCTION_182_7();
    sub_2172838F8(v600, v601, v602, v603);
    if (v597 == 1)
    {
      OUTLINED_FUNCTION_195_7();
      v604 = OUTLINED_FUNCTION_182_7();
      sub_217283940(v604, v605, v606, v607);
      goto LABEL_418;
    }

    v616 = OUTLINED_FUNCTION_110_11();
    sub_2172838F8(v616, v617, v618, v619);
LABEL_416:
    v620 = OUTLINED_FUNCTION_5_1();
    sub_217283940(v620, v621, v622, v623);
    v624 = OUTLINED_FUNCTION_110_11();
    sub_217283940(v624, v625, v626, v627);
    goto LABEL_13;
  }

  *&v768 = *v590;
  *(&v768 + 1) = v592;
  *&v769[0] = v594;
  *(&v769[0] + 1) = v593;
  if (v597 == 1)
  {
    v608 = OUTLINED_FUNCTION_5_1();
    sub_2172838F8(v608, v609, v610, v611);
    OUTLINED_FUNCTION_195_7();
    v612 = OUTLINED_FUNCTION_5_1();
    sub_2172838F8(v612, v613, v614, v615);

    goto LABEL_416;
  }

  *&v760 = v596;
  *(&v760 + 1) = v597;
  *&v761 = v599;
  *(&v761 + 1) = v598;
  v628 = OUTLINED_FUNCTION_3_80();
  LODWORD(v748) = static CloudPivotMetadata.== infix(_:_:)(v628, v629);
  v747 = *(&v761 + 1);
  v630 = OUTLINED_FUNCTION_5_1();
  sub_2172838F8(v630, v631, v632, v633);
  v634 = OUTLINED_FUNCTION_110_11();
  sub_2172838F8(v634, v635, v636, v637);
  v638 = OUTLINED_FUNCTION_5_1();
  sub_2172838F8(v638, v639, v640, v641);

  v642 = OUTLINED_FUNCTION_5_1();
  sub_217283940(v642, v643, v644, v645);
  if ((v748 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_418:
  OUTLINED_FUNCTION_16_49();
  if (v648)
  {
    if (!v646)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v647);
    v651 = v67 && v649 == v650;
    if (!v651 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v646)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_72_14();
  if (v594)
  {
    if (!v593)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_727();
    sub_21726F358();
    OUTLINED_FUNCTION_200_5();
    if ((v594 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v593)
  {
    goto LABEL_13;
  }

  v652 = v726[65];
  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v653);
  OUTLINED_FUNCTION_157(v728 + v652, v591 + 128);
  if (*&v769[0])
  {
    v654 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v654, v655, v656, v657);
    if (!v771[1])
    {
      v684 = OUTLINED_FUNCTION_49_24();
      sub_2171F0738(v684, v685, v686);
      goto LABEL_97;
    }

    memcpy(v755, (v591 + 128), 0x80uLL);
    v658 = OUTLINED_FUNCTION_35_27();
    v660 = sub_2172DE0D0(v658, v659);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v661, v662, v663);
    OUTLINED_FUNCTION_39_20();
    v664 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v664, v665, v666);
    if ((v660 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v771[1])
    {
      goto LABEL_97;
    }

    v667 = OUTLINED_FUNCTION_50_21();
    sub_2171F0738(v667, v668, v669);
  }

  OUTLINED_FUNCTION_76_13();
  OUTLINED_FUNCTION_18_41(v670);
  OUTLINED_FUNCTION_33_30();
  if (*(&v769[4] + 1))
  {
    v671 = OUTLINED_FUNCTION_3_80();
    sub_21726A630(v671, v672, v673, v674);
    if (v771[7])
    {
      OUTLINED_FUNCTION_68_18();
      v675 = OUTLINED_FUNCTION_35_27();
      v677 = sub_21733E778(v675, v676);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v678, v679, v680);
      OUTLINED_FUNCTION_39_20();
      v681 = OUTLINED_FUNCTION_50_21();
      sub_2171F0738(v681, v682, v683);
      if ((v677 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_446;
    }

    goto LABEL_457;
  }

  if (v771[7])
  {
LABEL_97:
    v79 = OUTLINED_FUNCTION_50_21();
    goto LABEL_12;
  }

  v687 = OUTLINED_FUNCTION_50_21();
  sub_2171F0738(v687, v688, v689);
LABEL_446:
  v690 = OUTLINED_FUNCTION_59_16(v726[67]);
  sub_217270140(v690, v691, v692, v693, v694, v695, v696, v697, v726, v727, v728, v729);
  if ((v698 & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_255(v754);
  OUTLINED_FUNCTION_255(v751);
  OUTLINED_FUNCTION_255(v755);
  OUTLINED_FUNCTION_255(v750);
  sub_217269EF4(v754, v749);
  sub_217269EF4(v755, v749);
  static MusicIdentifierSet.== infix(_:_:)();
  v700 = v699;
  v701 = OUTLINED_FUNCTION_49_24();
  memcpy(v701, v750, 0x161uLL);
  v702 = OUTLINED_FUNCTION_49_24();
  sub_217269F50(v702);
  v703 = OUTLINED_FUNCTION_50_21();
  memcpy(v703, v751, 0x161uLL);
  v704 = OUTLINED_FUNCTION_50_21();
  sub_217269F50(v704);
  if ((v700 & 1) == 0)
  {
    goto LABEL_13;
  }

  v705 = v726[69];
  if ((sub_2177060AC(*(v727 + v705), *(v727 + v705 + 8), *(v727 + v705 + 16), *(v728 + v705), *(v728 + v705 + 8)) & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_49();
  if (!v708)
  {
    if (v706)
    {
      goto LABEL_13;
    }

    goto LABEL_460;
  }

  if (v706)
  {
    OUTLINED_FUNCTION_59_0(v707);
    v711 = v67 && v709 == v710;
    if (v711 || (sub_217753058() & 1) != 0)
    {
LABEL_460:
      v715 = OUTLINED_FUNCTION_59_16(v726[71]);
      sub_217261FB0(v715, v716);
      if (v717)
      {
        v718 = OUTLINED_FUNCTION_59_16(v726[72]);
        sub_217261FB0(v718, v719);
        if (v720)
        {
          v721 = OUTLINED_FUNCTION_59_16(v726[73]);
          sub_217261FB0(v721, v722);
          if (v723)
          {
            v724 = OUTLINED_FUNCTION_59_16(v726[74]);
            sub_217261FB0(v724, v725);
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_13();
}

void AlbumPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v3 = v0;
  OUTLINED_FUNCTION_168_0();
  v4 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_81();
  v131 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31();
  v130 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_99();
  v129 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_99();
  v128 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_99();
  v127 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  v126 = &v126 - v19;
  v20 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v136 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_81();
  v135 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v25 = OUTLINED_FUNCTION_45_0(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_31();
  v134 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v126 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v126 - v31;
  OUTLINED_FUNCTION_225_3(v148);
  OUTLINED_FUNCTION_225_3(v149);
  OUTLINED_FUNCTION_104(v149);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v141, v148, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v142, v148, 0x221uLL);
    sub_217284028(v142, v143);
    Artwork.hash(into:)(v1);
    memcpy(v143, v141, 0x221uLL);
    sub_217284084(v143);
  }

  v34 = *(v0 + 560);
  v137 = v20;
  if (v34)
  {
    OUTLINED_FUNCTION_119();
    v20 = v137;
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v35 = type metadata accessor for AlbumPropertyProvider(0);
  sub_21726A630(v0 + v35[6], v32, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v32, 1, v20);
  v132 = v6;
  v133 = v4;
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v36 = OUTLINED_FUNCTION_189_5();
    v37(v36, v32, v20);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_87();
    sub_217584D1C(v38, v39, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_92_13();
    sub_217751EB8();
    v40 = *(v4 + 8);
    v4 += 8;
    v40(v6, v20);
  }

  if (*(v0 + v35[7]))
  {
    OUTLINED_FUNCTION_119();
    sub_2172849DC();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v41 = v131;
  sub_21726A630(v0 + v35[8], v29, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v29, 1, v20);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v42 = OUTLINED_FUNCTION_189_5();
    v43(v42, v29, v20);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_87();
    sub_217584D1C(v44, v45, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_92_13();
    sub_217751EB8();
    (*(v4 + 8))(v6, v20);
  }

  v47 = v132;
  v46 = v133;
  OUTLINED_FUNCTION_189_0();
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_113_12();
    MEMORY[0x21CEA3550](v29);
  }

  OUTLINED_FUNCTION_189_0();
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_113_12();
    MEMORY[0x21CEA3550](v29);
  }

  v48 = *(v0 + v35[11]);
  if (v48 == 2)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v48 & 1);
  }

  OUTLINED_FUNCTION_140_10();
  if (v48)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_83_15();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v49 = v126;
  sub_21726A630(v3 + v35[13], v126, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_9(v49);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_36_30();
    v51(v50);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_95();
    v54 = sub_217584D1C(v52, v53, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_71_16(v54);
    v55 = OUTLINED_FUNCTION_63_19();
    v56(v55);
  }

  OUTLINED_FUNCTION_189_0();
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_113_12();
    MEMORY[0x21CEA3550](v48);
  }

  if (*(v3 + v35[15]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_148();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v57 = (v3 + v35[16]);
  v58 = v57[1];
  v144 = *v57;
  v145 = v58;
  v59 = v57[3];
  v146 = v57[2];
  v147 = v59;
  sub_217265238();
  if (*(v3 + v35[17]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_148();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v60 = v127;
  sub_21726A630(v3 + v35[18], v127, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_9(v60);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v61 = OUTLINED_FUNCTION_36_30();
    v62(v61);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_95();
    v65 = sub_217584D1C(v63, v64, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_71_16(v65);
    v66 = OUTLINED_FUNCTION_63_19();
    v67(v66);
  }

  v68 = *(v3 + v35[19]);
  if (v68 == 3)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v68);
  }

  if (*(v3 + v35[20]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_148();
    sub_217281100();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v69 = *(v3 + v35[31]);
  if (v69 == 5)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v69);
  }

  v70 = *(v3 + v35[32]);
  if (v70 == 7)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v70);
  }

  OUTLINED_FUNCTION_189_0();
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_113_12();
    MEMORY[0x21CEA3550](v70);
  }

  v71 = v128;
  sub_21726A630(v3 + v35[34], v128, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_9(v71);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v72 = OUTLINED_FUNCTION_36_30();
    v73(v72);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_95();
    v76 = sub_217584D1C(v74, v75, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_71_16(v76);
    v77 = OUTLINED_FUNCTION_63_19();
    v78(v77);
  }

  v79 = v129;
  sub_21726A630(v3 + v35[35], v129, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_9(v79);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v80 = OUTLINED_FUNCTION_36_30();
    v81(v80);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_95();
    v84 = sub_217584D1C(v82, v83, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_71_16(v84);
    v85 = OUTLINED_FUNCTION_63_19();
    v86(v85);
  }

  v87 = v35[36];
  memcpy(v142, (v3 + v87), 0x221uLL);
  memcpy(v143, (v3 + v87), 0x221uLL);
  OUTLINED_FUNCTION_104(v143);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v139, v142, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v140, v142, 0x221uLL);
    sub_217284028(v140, v141);
    Artwork.hash(into:)(v1);
    memcpy(v141, v139, 0x221uLL);
    sub_217284084(v141);
  }

  if (*(v3 + v35[37]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_148();
    sub_217280F7C();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v88 = (v3 + v35[38]);
  v89 = *v88;
  v90 = v88[1];
  memcpy(v138, v88 + 2, sizeof(v138));
  if (v90)
  {
    memcpy(&v139[2], v88 + 2, 0x68uLL);
    v139[0] = v89;
    v139[1] = v90;
    OUTLINED_FUNCTION_119();
    v140[0] = v89;
    v140[1] = v90;
    memcpy(&v140[2], v138, 0x68uLL);
    sub_2172DF5A4(v140, v141);
    PlayParameters.hash(into:)(v1);
    memcpy(v141, v139, 0x78uLL);
    sub_2172848C0(v141);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_140_10();
  if (v89)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_83_15();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v91 = v130;
  sub_21726A630(v3 + v35[40], v130, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_9(v91);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v92 = OUTLINED_FUNCTION_36_30();
    v93(v92);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_95();
    v96 = sub_217584D1C(v94, v95, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_71_16(v96);
    (*(v47 + 8))(v41, v46);
  }

  OUTLINED_FUNCTION_189_0();
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_113_12();
    MEMORY[0x21CEA3550](v89);
  }

  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_237_1();
  if (!v33)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_140_10();
  if (v89)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_83_15();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_140_10();
  if (v89)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_83_15();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0();
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_113_12();
    MEMORY[0x21CEA3550](v89);
  }

  OUTLINED_FUNCTION_140_10();
  if (v89)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_83_15();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v97 = v134;
  sub_21726A630(v3 + v35[48], v134, &unk_27CB277C0, &qword_217758DC0);
  v98 = v137;
  OUTLINED_FUNCTION_133(v97, 1, v137);
  if (v33)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v100 = v135;
    v99 = v136;
    (*(v136 + 32))(v135, v97, v98);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_87();
    sub_217584D1C(v101, v102, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_92_13();
    sub_217751EB8();
    (*(v99 + 8))(v100, v98);
  }

  OUTLINED_FUNCTION_140_10();
  if (v98)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_83_15();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25310, &unk_21775D3D0, v35[50]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25318, &qword_2177657C0, v35[51]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25320, &unk_21776E020, v35[52]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&unk_27CB28A60, &qword_217770B60, v35[53]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB240D0, &unk_21775D400);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25318, &qword_2177657C0, v35[54]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25328, &unk_21775D3F0, v35[55]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB25390, &qword_217771CA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&unk_27CB28A60, &qword_217770B60, v35[56]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB240D0, &unk_21775D400);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25330, &unk_21775E9B0, v35[57]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25318, &qword_2177657C0, v35[58]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25318, &qword_2177657C0, v35[59]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB25338, &unk_21775D3E0, v35[60]);
  if (v141[11])
  {
    OUTLINED_FUNCTION_70_16();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_79_16();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v140, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v103 = *(v3 + v35[61]);
  if (v103)
  {
    OUTLINED_FUNCTION_119();
    sub_21765A154();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v104 = (v3 + v35[62]);
  v105 = v104[1];
  if (v105 != 1)
  {
    v103 = v104[2];
    v106 = v104[3];
    OUTLINED_FUNCTION_119();
    if (v105)
    {
      OUTLINED_FUNCTION_119();
      sub_217751FF8();
      if (v106)
      {
LABEL_163:
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_148();
        sub_217751FF8();
        goto LABEL_166;
      }
    }

    else
    {
      OUTLINED_FUNCTION_120();
      if (v106)
      {
        goto LABEL_163;
      }
    }
  }

  OUTLINED_FUNCTION_120();
LABEL_166:
  OUTLINED_FUNCTION_140_10();
  if (v103)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_83_15();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v107 = *(v3 + v35[64]);
  if (v107)
  {
    OUTLINED_FUNCTION_119();
    v108 = OUTLINED_FUNCTION_148();
    sub_21727DDE0(v108, v109, v110, v111, v112, v113, v114);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_151_8(&qword_27CB24230, &unk_21775E9D0, v35[65]);
  if (v141[2])
  {
    memcpy(v140, v141, 0x80uLL);
    OUTLINED_FUNCTION_119();
    v115 = OUTLINED_FUNCTION_79_16();
    sub_2172DE694(v115);
    sub_2171F0738(v140, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v3 + v35[66], v140, &unk_27CB28A60, &qword_217770B60);
  if (v140[11])
  {
    memcpy(v141, v140, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v141, &qword_27CB240D0, &unk_21775D400);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v116 = OUTLINED_FUNCTION_201();
  sub_217281970(v116, v117);
  memcpy(v141, (v3 + v35[68]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v1);
  sub_217751FF8();
  OUTLINED_FUNCTION_140_10();
  if (v107)
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_83_15();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v118 = OUTLINED_FUNCTION_201();
  sub_217265A08(v118, v119);
  v120 = OUTLINED_FUNCTION_201();
  sub_217265A08(v120, v121);
  v122 = OUTLINED_FUNCTION_201();
  sub_217265A08(v122, v123);
  v124 = OUTLINED_FUNCTION_201();
  sub_217265A08(v124, v125);
  OUTLINED_FUNCTION_13();
}