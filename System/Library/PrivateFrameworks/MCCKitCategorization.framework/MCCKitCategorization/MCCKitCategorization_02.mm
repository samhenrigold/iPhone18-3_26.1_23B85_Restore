id sub_22B3CED78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22B3F6564();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22B3F6064();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_22B3CEE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloomFilterData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3CEEB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22B3CEF2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B3CEFE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22B3CF04C()
{
  result = qword_27D8BE388;
  if (!qword_27D8BE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE388);
  }

  return result;
}

uint64_t type metadata accessor for MCCNLP(uint64_t a1)
{
  result = qword_28140C298;
  if (!qword_28140C298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B3CF0F4(uint64_t a1)
{
  result = type metadata accessor for BlackPearlLevels(319);
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

unint64_t sub_22B3CF3F4()
{
  result = qword_27D8BE390;
  if (!qword_27D8BE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE390);
  }

  return result;
}

uint64_t DomainMapDataFrame.__allocating_init(withFileAtPath:)(char *a1)
{
  v2 = swift_allocObject();
  DomainMapDataFrame.init(withFileAtPath:)(a1);
  return v2;
}

uint64_t DomainMapDataFrame.init(withFileAtPath:)(char *a1)
{
  v55 = sub_22B3F6354();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE398, &qword_22B3F9350);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v49 - v3;
  v70 = sub_22B3F63F4();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22B3F63A4();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v49 - v7;
  v8 = sub_22B3F64D4();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22B3F6504();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22B3F6184();
  v56 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B3F6434();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B3F63D4();
  v74 = *(v17 - 8);
  v75 = v17;
  MEMORY[0x28223BE20](v17);
  v57 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  v72 = a1;
  if (sub_22B3F6094())
  {
    sub_22B3D063C(&unk_283F04FB0);
    swift_arrayDestroy();
    sub_22B3D063C(&unk_283F05070);
    swift_arrayDestroy();
    sub_22B3D063C(&unk_283F050D0);
    swift_arrayDestroy();
    (*(v14 + 104))(v16, *MEMORY[0x277CE1918], v13);
    sub_22B3F63C4();
    v22 = v56;
    (*(v56 + 16))(v12, v72, v76);
    v23 = [objc_opt_self() defaultManager];
    sub_22B3F6144();
    v24 = sub_22B3F6564();

    v25 = [v23 fileExistsAtPath_];

    if (!v25)
    {
      sub_22B3CCCD4();
      v48 = swift_allocError();
      swift_willThrow();
      (*(v22 + 8))(v12, v76);
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_22B3F6AC4();
      MEMORY[0x23188FF80](0xD000000000000019, 0x800000022B3FBA00);
      v79 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
      sub_22B3F6B04();
      goto LABEL_14;
    }

    v26 = sub_22B3F6194();
    v27 = v58;
    v28 = v26;
    v30 = v29;
    v73 = v21;
    sub_22B3B7874(v26, v29);
    sub_22B3B7564(v28, v30);
    v77 = sub_22B3CCF0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE108, &qword_22B3F7E10);
    sub_22B3D0990(&qword_28140BF90, &qword_27D8BE108, &qword_22B3F7E10, MEMORY[0x277CC9C28]);
    v31 = v59;
    sub_22B3F64C4();
    sub_22B3F64E4();
    sub_22B3B78C8(v28, v30);
    (*(v62 + 8))(v31, v63);
    (*(v60 + 8))(v27, v61);
    v63 = *(v22 + 8);
    v63(v12, v76);
    (*(v74 + 16))(v57, v73, v75);
    sub_22B3D07B4(MEMORY[0x277D84F90]);
    v32 = v64;
    sub_22B3F62F4();
    v33 = OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe;
    v34 = v67;
    v35 = v71;
    v36 = v69;
    (*(v67 + 32))(v71 + OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe, v32, v69);
    swift_beginAccess();
    v37 = v68;
    v38 = v66;
    v39 = v70;
    (*(v68 + 104))(v66, *MEMORY[0x277CE18E0], v70);
    sub_22B3F6374();
    swift_endAccess();
    (*(v37 + 8))(v38, v39);
    v40 = v65;
    (*(v34 + 16))(v65, v35 + v33, v36);
    sub_22B3F6304();
    LOBYTE(v39) = v41;
    (*(v34 + 8))(v40, v36);
    if ((v39 & 1) == 0)
    {
      v63(v72, v76);
LABEL_10:
      (*(v74 + 8))(v73, v75);
      return v35;
    }

    swift_beginAccess();
    v42 = v53;
    sub_22B3F6364();
    swift_endAccess();
    v43 = sub_22B3F6344();
    (*(v54 + 8))(v42, v55);
    if ((v43 & 0x8000000000000000) == 0)
    {
      if (v43)
      {
        v44 = sub_22B3F67B4();
        *(v44 + 16) = v43;
        memset_pattern16((v44 + 32), &unk_22B3F93E0, 8 * v43);
      }

      else
      {
        v44 = MEMORY[0x277D84F90];
      }

      v77 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3A0, &qword_22B3F9358);
      sub_22B3D0990(&qword_28140BFA8, &qword_27D8BE3A0, &qword_22B3F9358, MEMORY[0x277D83970]);
      v45 = v50;
      sub_22B3F6404();
      swift_beginAccess();
      sub_22B3F6384();
      swift_endAccess();
      v63(v72, v76);
      (*(v51 + 8))(v45, v52);
      goto LABEL_10;
    }

    __break(1u);
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  sub_22B3F6AC4();

  v77 = 0xD000000000000014;
  v78 = 0x800000022B3FB9E0;
  sub_22B3C5EC8();
  v47 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v47);

LABEL_14:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t sub_22B3D0178(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE398, &qword_22B3F9350);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - v5;
  v6 = sub_22B3F63A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3A8, &qword_22B3F9360);
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v21 = v2;
  v14(v9, v2 + v13, v6);
  sub_22B3F63B4();
  v15 = *(v7 + 8);
  v15(v9, v6);
  v16 = sub_22B3D09D8(v12, a1, v25);
  if (v17)
  {
    (*(v26 + 8))(v12, v27);
  }

  else
  {
    v14(v9, v21 + v13, v6);
    v18 = v22;
    sub_22B3F63B4();
    v15(v9, v6);
    v19 = v24;
    sub_22B3F6424();
    (*(v23 + 8))(v18, v19);
    (*(v26 + 8))(v12, v27);
    return v28;
  }

  return v16;
}

uint64_t DomainMapDataFrame.deinit()
{
  v1 = OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe;
  v2 = sub_22B3F63A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DomainMapDataFrame.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe;
  v2 = sub_22B3F63A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22B3D05C4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DomainMapDataFrame(0);
  v4 = swift_allocObject();
  result = DomainMapDataFrame.init(withFileAtPath:)(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_22B3D063C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0E0, &qword_22B3F7CD0);
    v3 = sub_22B3F6A84();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22B3F6D34();

      sub_22B3F6624();
      result = sub_22B3F6D54();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        while (1)
        {
          v17 = (*(v3 + 48) + 16 * v12);
          if (*v17 == v9 && v17[1] == v8)
          {
            break;
          }

          result = sub_22B3F6C84();
          if (result)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        *(v5 + 8 * v13) = v15 | v14;
        v19 = (*(v3 + 48) + 16 * v12);
        *v19 = v9;
        v19[1] = v8;
        v20 = *(v3 + 16);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v22;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_22B3D07B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3B0, &qword_22B3F93C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3B8, &unk_22B3F93D0);
    v7 = sub_22B3F6B54();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22B3D0D58(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22B3B79DC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_22B3F6434();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_22B3D0990(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_22B3D09D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3A8, &qword_22B3F9360);
  v5 = sub_22B3F6414();
  v6 = 0;
LABEL_2:
  v7 = v5;
  while (v6 < v7)
  {
    if (__OFSUB__(v7, v6))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v5 = v6 + (v7 - v6) / 2;
    if (__OFADD__(v6, (v7 - v6) / 2))
    {
      goto LABEL_22;
    }

    sub_22B3F6424();
    if (!v15)
    {
      if (qword_28140BFC8 == -1)
      {
LABEL_16:
        v9 = sub_22B3F6464();
        __swift_project_value_buffer(v9, qword_28140D680);
        v10 = sub_22B3F6444();
        v11 = sub_22B3F68C4();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_22B3A7000, v10, v11, "Index out of bound, returning nil", v12, 2u);
          MEMORY[0x231890C40](v12, -1, -1);
        }

        return 0;
      }

LABEL_23:
      swift_once();
      goto LABEL_16;
    }

    if (v14 == a2 && v15 == a3 || (sub_22B3F6C84() & 1) != 0)
    {
      goto LABEL_14;
    }

    v8 = sub_22B3F6C84();

    if ((v8 & 1) == 0)
    {
      goto LABEL_2;
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:

      return v5;
    }
  }

  return 0;
}

uint64_t type metadata accessor for DomainMapDataFrame(uint64_t a1)
{
  result = qword_28140C5A0;
  if (!qword_28140C5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B3D0C14(uint64_t a1)
{
  result = sub_22B3F63A4();
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

uint64_t sub_22B3D0D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3B0, &qword_22B3F93C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

MCCKitCategorization::Category_optional __swiftcall Category.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 4) > 0xA)
  {
    *v1 = 11;
  }

  else
  {
    *v1 = byte_22B3F952E[rawValue + 4];
  }

  return rawValue;
}

void static Category.getCategory(for:)(char *a3@<X8>)
{
  v5 = sub_22B3F65E4();
  v6 = v4;
  if (v5 == 0x4C414E4F53524550 && v4 == 0xE800000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 4;
  }

  else if (v5 == 0x4F49544F4D4F5250 && v6 == 0xEA0000000000534ELL || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 5;
  }

  else if (v5 == 0x4C4149434F53 && v6 == 0xE600000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 6;
  }

  else if (v5 == 0x544341534E415254 && v6 == 0xEC000000534E4F49 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 7;
  }

  else if (v5 == 1398228302 && v6 == 0xE400000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 8;
  }

  else
  {
    if (v5 == 0x53524548544FLL && v6 == 0xE600000000000000 || (sub_22B3F6C84() & 1) != 0)
    {
    }

    else
    {
      if (v5 == 0xD000000000000014 && 0x800000022B3FBA60 == v6 || (sub_22B3F6C84() & 1) != 0)
      {

        v7 = 0;
        goto LABEL_5;
      }

      if (v5 == 0x41535F504F4ELL && v6 == 0xE600000000000000 || (sub_22B3F6C84() & 1) != 0)
      {

        v7 = 10;
        goto LABEL_5;
      }

      if (v5 == 0x524F525245 && v6 == 0xE500000000000000)
      {

        v7 = 1;
        goto LABEL_5;
      }

      v8 = sub_22B3F6C84();

      if (v8)
      {
        v7 = 1;
        goto LABEL_5;
      }

      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v9 = sub_22B3F6464();
      __swift_project_value_buffer(v9, qword_28140D680);

      v10 = sub_22B3F6444();
      v11 = sub_22B3F68C4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        v14 = sub_22B3F65E4();
        v16 = sub_22B3BDABC(v14, v15, &v17);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_22B3A7000, v10, v11, "Invalid category key: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x231890C40](v13, -1, -1);
        MEMORY[0x231890C40](v12, -1, -1);
      }
    }

    v7 = 9;
  }

LABEL_5:
  *a3 = v7;
}

unint64_t static Category.getCategoryText(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v2 = 0x4C414E4F53524550;
    if (v1 == 3)
    {
      v2 = 0x524F525245;
    }

    if (v1 == 2)
    {
      v2 = 0x524F525245;
    }

    v4 = 0xD000000000000014;
    if (*a1)
    {
      v4 = 0x524F525245;
    }

    v6 = *a1 <= 1u;
  }

  else
  {
    v2 = 1398228302;
    v3 = 0x53524548544FLL;
    if (v1 != 9)
    {
      v3 = 0x41535F504F4ELL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x4F49544F4D4F5250;
    v5 = 0x4C4149434F53;
    if (v1 != 6)
    {
      v5 = 0x544341534E415254;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    v6 = *a1 <= 7u;
  }

  if (v6)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B3D13A8()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3F9540[v1]);
  return sub_22B3F6D54();
}

uint64_t sub_22B3D1430(uint64_t a1)
{
  v2 = *v1;
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3F9540[v2]);
  return sub_22B3F6D54();
}

unint64_t sub_22B3D14B0()
{
  result = qword_28140C088[0];
  if (!qword_28140C088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28140C088);
  }

  return result;
}

unint64_t sub_22B3D1508()
{
  result = qword_27D8BE3C0;
  if (!qword_27D8BE3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE3C8, &qword_22B3F9490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE3C0);
  }

  return result;
}

void __swiftcall HashingVectorizer.init(charNgramLow:charNgramHigh:tokenNgramLow:tokenNgramHigh:buckets:)(MCCKitCategorization::HashingVectorizer *__return_ptr retstr, Swift::Int charNgramLow, Swift::Int charNgramHigh, Swift::Int tokenNgramLow, Swift::Int tokenNgramHigh, Swift::Int buckets)
{
  v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v13 = sub_22B3CED78(0x100000000000001ALL, 0x800000022B3FB790, 0);
  retstr->charNgramLow = charNgramLow;
  retstr->charNgramHigh = charNgramHigh;
  retstr->tokenNgramLow = tokenNgramLow;
  retstr->tokenNgramHigh = tokenNgramHigh;
  retstr->buckets = buckets;
  retstr->tokenRegexPattern._countAndFlagsBits = 0x100000000000001ALL;
  retstr->tokenRegexPattern._object = 0x800000022B3FB790;
  retstr->token_regex.super.isa = v13;
}

uint64_t sub_22B3D16D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v11 = *(a8 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_22B3C1FE0(0, *(v11 + 2) + 1, 1, v11);
    *(a8 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_22B3C1FE0((v13 > 1), v14 + 1, 1, v11);
  }

  v15 = 0xE000000000000000;
  if (a2)
  {
    v15 = a2;
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  *(v11 + 2) = v14 + 1;
  v17 = &v11[16 * v14];
  *(v17 + 4) = v16;
  *(v17 + 5) = v15;
  *(a8 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_22B3D17C4(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v3;
  v7 = v3[1];
  v52 = v3[4];
  v9 = sub_22B3F6634();
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = MEMORY[0x277D84F90];
    v12 = v9;
    v13 = sub_22B3D238C(v9, 0);

    v50 = v13;
    v14 = sub_22B3D22C4(&v54, v13 + 4, v12, a1, a2);

    if (v14 != v12)
    {
      goto LABEL_58;
    }

    v10 = v11;
    if (v7 >= v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
    if (v7 >= v8)
    {
LABEL_4:
      if (v8 == v7)
      {
LABEL_5:
      }

      v48 = v7;
      v49 = v50[2];
      while (1)
      {
        if (v8 >= v7)
        {
          goto LABEL_54;
        }

        v16 = v49 - v8;
        if (__OFSUB__(v49, v8))
        {
          goto LABEL_55;
        }

        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_56;
        }

        if (v17 > 0)
        {
          break;
        }

LABEL_9:
        ++v8;
        v7 = v48;
        if (v8 == v48)
        {
          goto LABEL_5;
        }
      }

      if (v52)
      {
        v18 = 0;
        v19 = v50 + 5;
        v51 = v8;
        while (1)
        {
          if (v18 >= v17)
          {
            goto LABEL_46;
          }

          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_47;
          }

          v54 = v10;
          v21 = v18 + v8;
          if (__OFADD__(v18, v8))
          {
            goto LABEL_48;
          }

          if (v21 < v18)
          {
            goto LABEL_49;
          }

          v22 = v10;
          if (v18 != v21)
          {
            v23 = v19;
            if (v21 > v50[2])
            {
              goto LABEL_52;
            }

            do
            {
              v24 = *(v23 - 1);
              v25 = *v23;

              sub_22B3CB3B4(v24, v25);
              v23 += 2;
              --v8;
            }

            while (v8);
            v10 = v54;
          }

          v26 = _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(v10, 0);

          if (v26)
          {
            v27 = 1;
          }

          else
          {
            v27 = -1;
          }

          v28 = (v26 >> 1) % v52;
          v29 = *a3;
          v30 = *(*a3 + 16);
          if (v30)
          {
            v31 = sub_22B3B7BC0(v28);
            if (v32)
            {
              v30 = *(*(v29 + 56) + 8 * v31);
            }

            else
            {
              v30 = 0;
            }
          }

          v33 = v30 + v27;
          if (__OFADD__(v30, v27))
          {
            goto LABEL_50;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = *a3;
          v53 = *a3;
          v36 = sub_22B3B7BC0(v28);
          v38 = *(v35 + 16);
          v39 = (v37 & 1) == 0;
          v40 = __OFADD__(v38, v39);
          v41 = v38 + v39;
          if (v40)
          {
            goto LABEL_51;
          }

          v42 = v37;
          if (*(v35 + 24) < v41)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_39;
          }

          v47 = v36;
          sub_22B3B9908();
          v10 = v22;
          v36 = v47;
          v44 = v53;
          if (v42)
          {
LABEL_16:
            *(v44[7] + 8 * v36) = v33;
            goto LABEL_17;
          }

LABEL_40:
          v44[(v36 >> 6) + 8] |= 1 << v36;
          *(v44[6] + 8 * v36) = v28;
          *(v44[7] + 8 * v36) = v33;
          v45 = v44[2];
          v40 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v40)
          {
            goto LABEL_53;
          }

          v44[2] = v46;
LABEL_17:
          *a3 = v44;
          v19 += 2;
          v18 = v20;
          v8 = v51;
          if (v20 == v17)
          {
            goto LABEL_9;
          }
        }

        sub_22B3B8790(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_22B3B7BC0(v28);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_59;
        }

LABEL_39:
        v10 = v22;
        v44 = v53;
        if (v42)
        {
          goto LABEL_16;
        }

        goto LABEL_40;
      }

      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
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
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

uint64_t sub_22B3D1B30(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3[2];
  v5 = v3[3];
  v65 = v3[4];
  v7 = v3[7];
  v8 = sub_22B3F6634();
  v9 = sub_22B3F6564();
  v10 = sub_22B3F6564();
  v11 = [v7 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v8, v10}];

  sub_22B3F6594();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = (v12 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3D0, &qword_22B3F95F8);
  sub_22B3B4258();
  sub_22B3D2418();
  sub_22B3F69F4();

  swift_beginAccess();
  v14 = *v13;

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v15 = sub_22B3F67B4();
      *(v15 + 16) = v5;
      bzero((v15 + 32), 4 * v5);
      v16 = *(v14 + 16);
      if (!v16)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      v16 = *(v14 + 16);
      if (!v16)
      {
LABEL_52:
      }
    }

    v17 = 0;
    v18 = v6;
    v19 = v14 + 32;
    v20 = v5 - 1;
    v21 = __OFSUB__(v18, 1);
    v61 = v21;
    v57 = v15 + 4 * v18 + 28;
    v22 = 1;
    v59 = v16;
    v60 = v14;
    v58 = v14 + 32;
    v62 = v18 - 1;
    while (1)
    {
      v64 = v22;
      if (v22 >= v20)
      {
        v22 = v20;
      }

      v66 = v22;
      if (v17 >= *(v14 + 16))
      {
        goto LABEL_61;
      }

      v23 = sub_22B3C20EC(*(v19 + 16 * v17), *(v19 + 16 * v17 + 8));
      v24 = _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(v23, 0);

      v25 = (v15 + 4 * v5 + 24);
      v26 = v20;
      if (v5 >= 3)
      {
        while (v5 > v26)
        {
          v31 = v26 - 2;
          v32 = *(v15 + 16);
          if (v31 >= v32)
          {
            goto LABEL_54;
          }

          v26 = v31 + 1;
          if (v26 >= v32)
          {
            goto LABEL_55;
          }

          LODWORD(v33) = v24 ^ __ROR4__(*(v25 - 1), 9);
          HIDWORD(v33) = v33;
          *v25-- = (v33 >> 5) + v24;
          if (v26 == 1)
          {
            goto LABEL_15;
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
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

LABEL_15:
      if (!*(v15 + 16))
      {
        goto LABEL_63;
      }

      *(v15 + 32) = v24;
      if (v61)
      {
        goto LABEL_64;
      }

      v27 = v17 + 1;
      if (v27 >= v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v27;
      }

      if (v28 < v62)
      {
        goto LABEL_65;
      }

      v63 = v27;
      if (v62 != v28)
      {
        break;
      }

LABEL_10:
      v22 = v64 + 1;
      v14 = v60;
      v17 = v63;
      v20 = v5 - 1;
      v19 = v58;
      if (v63 == v59)
      {
        goto LABEL_52;
      }
    }

    if (v62 >= v28)
    {
      goto LABEL_66;
    }

    if (v65)
    {
      v29 = v57;
      v30 = v62;
      while (1)
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        if (v30 >= *(v15 + 16))
        {
          goto LABEL_57;
        }

        v34 = *v29;
        if (v34)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        v36 = (v34 >> 1) % v65;
        v37 = *a3;
        v38 = *(*a3 + 16);
        if (v38)
        {
          v39 = sub_22B3B7BC0(v36);
          if (v40)
          {
            v38 = *(*(v37 + 56) + 8 * v39);
          }

          else
          {
            v38 = 0;
          }
        }

        v41 = __OFADD__(v38, v35);
        v42 = v38 + v35;
        if (v41)
        {
          goto LABEL_58;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = *a3;
        v67 = *a3;
        v45 = sub_22B3B7BC0(v36);
        v47 = *(v44 + 16);
        v48 = (v46 & 1) == 0;
        v41 = __OFADD__(v47, v48);
        v49 = v47 + v48;
        if (v41)
        {
          goto LABEL_59;
        }

        v50 = v46;
        if (*(v44 + 24) < v49)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_47;
        }

        v55 = v45;
        sub_22B3B9908();
        v45 = v55;
        v52 = v67;
        if (v50)
        {
LABEL_30:
          *(v52[7] + 8 * v45) = v42;
          goto LABEL_31;
        }

LABEL_48:
        v52[(v45 >> 6) + 8] |= 1 << v45;
        *(v52[6] + 8 * v45) = v36;
        *(v52[7] + 8 * v45) = v42;
        v53 = v52[2];
        v41 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v41)
        {
          goto LABEL_60;
        }

        v52[2] = v54;
LABEL_31:
        ++v30;
        *a3 = v52;
        ++v29;
        if (v66 == v30)
        {
          goto LABEL_10;
        }
      }

      sub_22B3B8790(v49, isUniquelyReferenced_nonNull_native);
      v45 = sub_22B3B7BC0(v36);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_68;
      }

LABEL_47:
      v52 = v67;
      if (v50)
      {
        goto LABEL_30;
      }

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_68:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

uint64_t sub_22B3D204C(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v22 = *v2;
  v23 = v3;
  v4 = *(v2 + 4);
  v20 = *(v2 + 40);
  v21 = *(v2 + 7);
  v19 = sub_22B3CBDDC(MEMORY[0x277D84F90]);
  v5 = sub_22B3F65D4();
  v7 = v6;
  sub_22B3D17C4(v5, v6, &v19);
  sub_22B3D1B30(v5, v7, &v19);

  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      v9 = sub_22B3F67B4();
      *(v9 + 16) = v4;
      bzero((v9 + 32), 8 * v4);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v10 = 0;
    result = v19;
    v11 = 1 << *(v19 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v19 + 64;
    v14 = v12 & *(v19 + 64);
    v15 = (v11 + 63) >> 6;
    if (v14)
    {
      while (1)
      {
        v16 = v10;
LABEL_12:
        v17 = (v16 << 9) | (8 * __clz(__rbit64(v14)));
        v18 = *(*(result + 48) + v17);
        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v9 + 16))
        {
          goto LABEL_19;
        }

        v14 &= v14 - 1;
        *(v9 + 32 + 8 * v18) = *(*(result + 56) + v17);
        v10 = v16;
        if (!v14)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      while (1)
      {
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v16 >= v15)
        {

          return v9;
        }

        v14 = *(v13 + 8 * v16);
        ++v10;
        if (v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3D221C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B3D2264(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_22B3D22C4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_22B3F6694();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22B3D238C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3D8, &unk_22B3F9600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_22B3D2418()
{
  result = qword_28140BF88;
  if (!qword_28140BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE3D0, &qword_22B3F95F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140BF88);
  }

  return result;
}

void *GuaranteeListRule.__allocating_init(fromSenderCategoryFile:)(uint64_t a1)
{
  v2 = sub_22B3F6184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v7 = type metadata accessor for DomainMapDataFrame(0);
  swift_allocObject();
  v8 = DomainMapDataFrame.init(withFileAtPath:)(v5);
  v6[5] = v7;
  v6[6] = &protocol witness table for DomainMapDataFrame;
  v6[2] = v8;
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t GuaranteeListRule.init(fromSenderCategoryFile:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B3F6184();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = type metadata accessor for DomainMapDataFrame(0);
  swift_allocObject();
  v10 = DomainMapDataFrame.init(withFileAtPath:)(v8);
  v14 = v9;
  v15 = &protocol witness table for DomainMapDataFrame;
  *&v13 = v10;
  (*(v5 + 8))(a1, v4);
  sub_22B3CEEB8(&v13, v2 + 16);
  return v2;
}

uint64_t GuaranteeListRule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_22B3D2790()
{
  v0 = sub_22B3F6464();
  __swift_allocate_value_buffer(v0, qword_28140D680);
  __swift_project_value_buffer(v0, qword_28140D680);

  return sub_22B3F6454();
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

uint64_t static MurmurHash3.getMurmurHash3(text:seed:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = sub_22B3C20EC(a1, a2);
  v5 = _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(v4, v3);

  return v5;
}

unint64_t sub_22B3D28CC(unint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 16);
  v8 = v7 >= result;
  v9 = v7 - result;
  if (!v8)
  {
    v9 = 0;
  }

  while (v9 != v5)
  {
    if (v5 == 0x1000000000000000)
    {
      goto LABEL_17;
    }

    if (v2 < -32 || v2 > 32)
    {
LABEL_4:
      if (v4)
      {
        return v6;
      }

      goto LABEL_5;
    }

    v10 = *(result + a2 + 32 + v5);
    if (v2 < 0)
    {
      v6 = (v10 >> (v3 & 0x18)) | v6;
      if (v4)
      {
        return v6;
      }
    }

    else
    {
      if (v2 == 32)
      {
        goto LABEL_4;
      }

      v6 = (v10 << (v2 & 0x18)) | v6;
      if (v4)
      {
        return v6;
      }
    }

LABEL_5:
    v4 = v5 == 2;
    v3 -= 8;
    v2 += 8;
    if (__OFADD__(result, ++v5))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4 >= 4)
  {
    v5 = 0;
    do
    {
      v6 = sub_22B3D28CC(v5, a1);
      HIDWORD(v7) = (461845907 * ((380141568 * v6) | ((-862048943 * v6) >> 17))) ^ a2;
      LODWORD(v7) = HIDWORD(v7);
      a2 = 5 * (v7 >> 19) - 430675100;
      v5 += 4;
    }

    while (4 * (v4 >> 2) != v5);
  }

  if ((v4 & 0x7FFFFFFFFFFFFFFCLL) == v4)
  {
    goto LABEL_10;
  }

  v8 = v4 & 3;
  if ((v4 & 3) == 0)
  {
    goto LABEL_13;
  }

  v9 = a1 + (v4 & 0x7FFFFFFFFFFFFFFCLL) + 32;
  v10 = *(v9 + v8 - 1);
  if (v8 != 1)
  {
    v10 = *(v9 + v8 - 2) | (v10 << 8);
    if (v8 != 2)
    {
      v10 = *(v9 + v8 - 3) | (v10 << 8);
    }
  }

  while (1)
  {
    a2 ^= 461845907 * ((380141568 * v10) | ((-862048943 * v10) >> 17));
LABEL_10:
    if (!HIDWORD(v4))
    {
      break;
    }

    __break(1u);
LABEL_13:
    v10 = 0;
  }

  v11 = -2048144789 * (a2 ^ v4 ^ ((a2 ^ v4) >> 16));
  return (-1028477387 * (v11 ^ (v11 >> 13))) ^ ((-1028477387 * (v11 ^ (v11 >> 13))) >> 16);
}

uint64_t sub_22B3D2AE0(uint64_t a1)
{
  if ((a1 - 63) >= 0xFFFFFFFFFFFFFFC3)
  {
    if (a1 == 12)
    {
      return 1;
    }

    else
    {
      return 5;
    }
  }

  if ((a1 - 85) > 0xFFFFFFFFFFFFFFE9)
  {
    return 7;
  }

  if ((a1 - 105) > 0xFFFFFFFFFFFFFFEBLL)
  {
    return 4;
  }

  if ((a1 - 112) > 0xFFFFFFFFFFFFFFF8)
  {
    return 2;
  }

  if ((a1 - 166) > 0xFFFFFFFFFFFFFFC9)
  {
    return 0;
  }

  if ((a1 - 202) > 0xFFFFFFFFFFFFFFDBLL)
  {
    return 4;
  }

  if ((a1 - 221) >= 0xFFFFFFFFFFFFFFEDLL)
  {
    if (a1 == 216)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  if ((a1 - 243) > 0xFFFFFFFFFFFFFFE9)
  {
    return 1;
  }

  if ((a1 - 273) > 0xFFFFFFFFFFFFFFE1)
  {
    return 5;
  }

  if ((a1 - 324) > 0xFFFFFFFFFFFFFFCCLL)
  {
    return 6;
  }

  if ((a1 - 342) > 0xFFFFFFFFFFFFFFEDLL)
  {
    return 5;
  }

  if ((a1 - 378) > 0xFFFFFFFFFFFFFFDBLL)
  {
    return 4;
  }

  if ((a1 - 421) > 0xFFFFFFFFFFFFFFD4)
  {
    return 0;
  }

  if ((a1 - 467) > 0xFFFFFFFFFFFFFFD1)
  {
    return 5;
  }

  if ((a1 - 489) > 0xFFFFFFFFFFFFFFE9)
  {
    return 4;
  }

  if ((a1 - 527) > 0xFFFFFFFFFFFFFFD9)
  {
    return 0;
  }

  if ((a1 - 565) > 0xFFFFFFFFFFFFFFD9)
  {
    return 2;
  }

  if ((a1 - 606) > 0xFFFFFFFFFFFFFFD6)
  {
    return 5;
  }

  if ((a1 - 621) < 0xFFFFFFFFFFFFFFF1)
  {
    if (a1 >= 623)
    {
      if (a1 == 623)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (a1 == 610)
  {
    return 7;
  }

  else
  {
    return 3;
  }
}

uint64_t DecisionResult.blackPearlVersion.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[10];
  v25 = v1[11];
  v26 = v2;
  v4 = v1[12];
  v27[0] = v1[13];
  *(v27 + 9) = *(v1 + 217);
  v5 = v1[8];
  v7 = v1[6];
  v21 = v1[7];
  v6 = v21;
  v22 = v5;
  v8 = v1[8];
  v9 = v1[10];
  v23 = v1[9];
  v10 = v23;
  v24 = v9;
  v11 = v1[4];
  v18[0] = v1[3];
  v18[1] = v11;
  v12 = v1[6];
  v14 = v1[3];
  v13 = v1[4];
  v19 = v1[5];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[13];
  *(a1 + 169) = *(v1 + 217);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_22B3A9F54(v18, &v17);
}

__n128 sub_22B3D2DA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22B3BB2B8(&v12);
  v4 = v13;
  v5 = v14;
  result = v12;
  *a2 = 16842752;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a2 + 8) = _Q1;
  *(a2 + 24) = _Q1;
  *(a2 + 40) = a1;
  *(a2 + 48) = 16718;
  *(a2 + 56) = 0xE200000000000000;
  *(a2 + 64) = 16718;
  *(a2 + 72) = 0xE200000000000000;
  *(a2 + 80) = 16718;
  *(a2 + 88) = 0xE200000000000000;
  *(a2 + 96) = 16718;
  *(a2 + 104) = 0xE200000000000000;
  *(a2 + 112) = 16718;
  *(a2 + 120) = 0xE200000000000000;
  *(a2 + 128) = xmmword_22B3F96E0;
  *(a2 + 144) = xmmword_22B3F96E0;
  *(a2 + 160) = -1;
  *(a2 + 168) = -1;
  *(a2 + 176) = xmmword_22B3F96E0;
  *(a2 + 192) = xmmword_22B3F96E0;
  *(a2 + 208) = result;
  *(a2 + 224) = v4;
  *(a2 + 232) = v5;
  return result;
}

uint64_t static DecisionResultBuilder.buildUnsupportedLanguageResult(reasonCodes:version:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[9];
  v5 = a2[7];
  v32 = a2[8];
  v4 = v32;
  v33 = v3;
  v6 = a2[9];
  v34[0] = a2[10];
  *(v34 + 9) = *(a2 + 169);
  v7 = a2[5];
  v9 = a2[3];
  v28 = a2[4];
  v8 = v28;
  v29 = v7;
  v10 = a2[5];
  v11 = a2[7];
  v30 = a2[6];
  v12 = v30;
  v31 = v11;
  v13 = a2[1];
  v25[0] = *a2;
  v25[1] = v13;
  v14 = a2[3];
  v16 = *a2;
  v15 = a2[1];
  v26 = a2[2];
  v17 = v26;
  v27 = v14;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 8) = _Q0;
  *(a3 + 24) = _Q0;
  *(a3 + 176) = v4;
  *(a3 + 192) = v6;
  *(a3 + 208) = a2[10];
  *(a3 + 217) = *(a2 + 169);
  *(a3 + 112) = v8;
  *(a3 + 128) = v10;
  *(a3 + 144) = v12;
  *(a3 + 160) = v5;
  *(a3 + 48) = v16;
  *(a3 + 64) = v15;
  *a3 = 0;
  *(a3 + 40) = a1;
  *(a3 + 80) = v17;
  *(a3 + 96) = v9;

  return sub_22B3A9F54(v25, &v24);
}

uint64_t sub_22B3D2F2C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, int8x8_t a4@<D0>, int8x8_t a5@<D1>)
{
  v5 = a2[9];
  v7 = a2[7];
  v34 = a2[8];
  v6 = v34;
  v35 = v5;
  v8 = a2[9];
  v36[0] = a2[10];
  *(v36 + 9) = *(a2 + 169);
  v9 = a2[5];
  v11 = a2[3];
  v30 = a2[4];
  v10 = v30;
  v31 = v9;
  v12 = a2[5];
  v13 = a2[7];
  v32 = a2[6];
  v14 = v32;
  v33 = v13;
  v15 = a2[1];
  v27[0] = *a2;
  v27[1] = v15;
  v16 = a2[3];
  v18 = *a2;
  v17 = a2[1];
  v28 = a2[2];
  v19 = v28;
  v29 = v16;
  *a3 = vuzp1_s8(a5, a4).u32[0];
  *(a3 + 16) = a4;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 24) = _Q0;
  *(a3 + 176) = v6;
  *(a3 + 192) = v8;
  *(a3 + 208) = a2[10];
  *(a3 + 217) = *(a2 + 169);
  *(a3 + 112) = v10;
  *(a3 + 128) = v12;
  *(a3 + 144) = v14;
  *(a3 + 160) = v7;
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 40) = a1;
  *(a3 + 48) = v18;
  *(a3 + 64) = v17;
  *(a3 + 80) = v19;
  *(a3 + 96) = v11;

  return sub_22B3A9F54(v27, &v26);
}

uint64_t static DecisionResultBuilder.buildXpcResult(info:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22B3F6084();
  v106 = *(v4 - 8);
  v107 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v7;
  v8 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v110;
      goto LABEL_9;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v9 = 0;
LABEL_9:
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v10;
  v11 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = v110;
      goto LABEL_17;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v12 = 0;
LABEL_17:
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v13;
  v14 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  static Category.getCategory(for:)(&v114);

  v109 = v114;
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v15;
  v16 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = v110;
      goto LABEL_31;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v17 = -1;
LABEL_31:
  CategoryTS.init(rawValue:)(v17);
  v108 = v114;
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v18;
  v19 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v20 = v110;
      goto LABEL_39;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v20 = 0;
LABEL_39:
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v21;
  v22 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = v110;
      goto LABEL_47;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v23 = 0;
LABEL_47:
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v24;
  v25 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v25)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v26 = v110;
      goto LABEL_55;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v26 = 0;
LABEL_55:
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v27;
  v28 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v29 = v110;
      goto LABEL_63;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v29 = 0;
LABEL_63:
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v30;

  v31 = [a1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (!v31)
  {
    __break(1u);
    return result;
  }

  v104 = v12;

  sub_22B3F6A44();
  swift_unknownObjectRelease();
  sub_22B3BADA8(&v112, &v114);
  sub_22B3D42FC();
  swift_dynamicCast();
  v33 = v110;
  sub_22B3F6954();

  sub_22B3F6074();
  v105 = v9;
  v34 = MEMORY[0x277D84F90];
  while (*(&v115 + 1))
  {
    sub_22B3BADA8(&v114, &v112);
    if (swift_dynamicCast())
    {
      v35 = v110;
      v36 = v111;
    }

    else
    {
      v36 = 0xE400000000000000;
      v35 = 1162760014;
    }

    ReasonCode.init(rawValue:)(*&v35);
    if (v112 == 50)
    {
      v37 = 14;
    }

    else
    {
      v37 = v112;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_22B3C1CD8(0, *(v34 + 2) + 1, 1, v34);
    }

    v39 = *(v34 + 2);
    v38 = *(v34 + 3);
    if (v39 >= v38 >> 1)
    {
      v34 = sub_22B3C1CD8((v38 > 1), v39 + 1, 1, v34);
    }

    *(v34 + 2) = v39 + 1;
    v34[v39 + 32] = v37;
    sub_22B3F6074();
  }

  (*(v106 + 8))(v6, v107);
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v40;
  v41 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v41)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v42 = v111;
      v107 = v110;
      goto LABEL_84;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v107 = 0;
  v42 = 0xE000000000000000;
LABEL_84:
  v106 = v42;
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v43;
  v44 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v44)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v45 = v111;
      v103 = v110;
      goto LABEL_92;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v103 = 0;
  v45 = 0xE000000000000000;
LABEL_92:
  v102 = v45;
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v46;
  v47 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v47)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v48 = v111;
      v101 = v110;
      goto LABEL_100;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v101 = 0;
  v48 = 0xE000000000000000;
LABEL_100:
  v100 = v48;
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v49;
  v50 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v50)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v51 = v111;
      v99 = v110;
      goto LABEL_108;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v99 = 0;
  v51 = 0xE000000000000000;
LABEL_108:
  v98 = v51;
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v52;
  v53 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v53)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v54 = v111;
      v97 = v110;
      goto LABEL_116;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v97 = 0;
  v54 = 0xE000000000000000;
LABEL_116:
  v96 = v54;
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v55;
  v56 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v56)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v57 = v111;
      v95 = v110;
      goto LABEL_124;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v95 = 0;
  v57 = 0xE000000000000000;
LABEL_124:
  v94 = v57;
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v58;
  v59 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v59)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v93 = v110;
      goto LABEL_132;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v93 = 0;
LABEL_132:
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v60;
  v61 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v61)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v62 = v111;
      v92 = v110;
      goto LABEL_140;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v92 = 0;
  v62 = 0xE000000000000000;
LABEL_140:
  v91 = v62;
  *&v114 = sub_22B3F6594();
  *(&v114 + 1) = v63;
  v64 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v64)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v90 = v110;
      goto LABEL_148;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v90 = 0;
LABEL_148:
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v65;
  v66 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v66)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    if (swift_dynamicCast())
    {
      v67 = v110;
      v68 = v111;
      goto LABEL_156;
    }
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  v67 = 0;
  v68 = 0xE000000000000000;
LABEL_156:
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v69;
  v70 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v70)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  if (!*(&v113 + 1))
  {
    sub_22B3D4294(&v114);
    goto LABEL_163;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_163:
    v72 = 0;
    v71 = 0xE000000000000000;
    goto LABEL_164;
  }

  v72 = v110;
  v71 = v111;
LABEL_164:
  *&v112 = sub_22B3F6594();
  *(&v112 + 1) = v73;
  v74 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v74)
  {
    sub_22B3F6A44();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v75 = v105;
  v114 = v112;
  v115 = v113;
  if (*(&v113 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_22B3D4294(&v114);
  }

  if (v108 == 12)
  {
    v76 = 1;
  }

  else
  {
    v76 = v108;
  }

  result = sub_22B3BB2B8(&v114);
  v77 = v115;
  v78 = BYTE8(v115);
  v79 = v114;
  *a2 = v75;
  *(a2 + 1) = v104;
  *(a2 + 2) = v109;
  *(a2 + 3) = v76;
  *(a2 + 8) = v20;
  *(a2 + 16) = v23;
  *(a2 + 24) = v26;
  *(a2 + 32) = v29;
  v80 = v106;
  v81 = v107;
  *(a2 + 40) = v34;
  *(a2 + 48) = v81;
  *(a2 + 56) = v80;
  v82 = v102;
  *(a2 + 64) = v103;
  *(a2 + 72) = v82;
  v83 = v100;
  *(a2 + 80) = v101;
  *(a2 + 88) = v83;
  v84 = v98;
  *(a2 + 96) = v99;
  *(a2 + 104) = v84;
  v85 = v96;
  *(a2 + 112) = v97;
  *(a2 + 120) = v85;
  v86 = v94;
  *(a2 + 128) = v95;
  *(a2 + 136) = v86;
  v87 = v91;
  *(a2 + 144) = v92;
  *(a2 + 152) = v87;
  v88 = v90;
  *(a2 + 160) = v93;
  *(a2 + 168) = v88;
  *(a2 + 176) = v67;
  *(a2 + 184) = v68;
  *(a2 + 192) = v72;
  *(a2 + 200) = v71;
  *(a2 + 208) = v79;
  *(a2 + 224) = v77;
  *(a2 + 232) = v78;
  return result;
}

uint64_t sub_22B3D4294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE150, &qword_22B3F7F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B3D42FC()
{
  result = qword_28140BF40;
  if (!qword_28140BF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28140BF40);
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_22B3D43AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B3D43F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B3D44C0(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for BloomFilterSerDe();
  static BloomFilterSerDe.readFromFile(withFilePath:)(&v7);
  v3 = sub_22B3F6184();
  (*(*(v3 - 8) + 8))(a1, v3);
  v4 = v9;
  v5 = v10;
  *(v2 + 16) = v7;
  *(v2 + 24) = v8;
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;
  return v2;
}

__n128 FinalRule.__allocating_init(thresholds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  result = *a1;
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  return result;
}

uint64_t sub_22B3D45CC(uint64_t a1)
{
  type metadata accessor for BloomFilterSerDe();
  static BloomFilterSerDe.readFromFile(withFilePath:)(&v7);
  v3 = sub_22B3F6184();
  (*(*(v3 - 8) + 8))(a1, v3);
  v4 = v9;
  v5 = v10;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  return v1;
}

uint64_t CommerceSenderRule.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_22B3D46CC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701147238;
  v4 = 0xE400000000000000;
  v5 = 1937204590;
  if (*v1 != 2)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 7761767;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FinalRule.init(thresholds:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t sub_22B3D4758(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  if ((a2 - 430) >= 0xFFFFFFFFFFFFFFF7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if ((a2 - 406) >= 0xE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if ((a2 - 380) < 3 || a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if ((a3 - 430) >= 0xFFFFFFFFFFFFFFF7)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if ((a3 - 406) >= 0xE)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if (a3 == -1)
  {
    v10 = 0;
  }

  if ((a3 - 380) >= 3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      if (v4[3] >= a4)
      {
        v12 = 1;
        v13 = 25;
        goto LABEL_41;
      }
    }

    else
    {
      v15 = a1;
      if (v11)
      {
        v16 = sub_22B3F6C84();

        if ((v16 & 1) == 0)
        {
          a1 = v15;
          if (v4[10] > a4)
          {
            v12 = 1;
            v13 = 26;
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }

      else
      {
      }

      a1 = v15;
      if (v4[4] >= a4)
      {
        v12 = 1;
        v13 = 23;
        goto LABEL_41;
      }
    }

LABEL_40:
    v12 = 0;
    v13 = 14;
    goto LABEL_41;
  }

  if (v8)
  {
    if (v4[5] >= a4)
    {
      v12 = 1;
      v13 = 24;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v4[2] < a4)
  {
    goto LABEL_40;
  }

  v12 = 1;
  v13 = 22;
LABEL_41:
  *a1 = v13;
  return v12;
}

uint64_t ReasonCode.rawValue.getter()
{
  result = 5854019;
  switch(*v0)
  {
    case 1:
      result = 5854037;
      break;
    case 2:
      result = 4541768;
      break;
    case 3:
      result = 5854787;
      break;
    case 4:
      result = 4408658;
      break;
    case 5:
      result = 5261654;
      break;
    case 6:
      result = 5132099;
      break;
    case 7:
      result = 4805200;
      break;
    case 8:
      result = 4805196;
      break;
    case 9:
      result = 4411980;
      break;
    case 0xA:
      result = 5521731;
      break;
    case 0xB:
      result = 5260622;
      break;
    case 0xC:
      result = 5129550;
      break;
    case 0xD:
      result = 5195086;
      break;
    case 0xE:
      result = 1162760014;
      break;
    case 0xF:
      result = 5002069;
      break;
    case 0x10:
      result = 5852231;
      break;
    case 0x11:
      result = 5262675;
      break;
    case 0x12:
      result = 4410707;
      break;
    case 0x13:
      result = 5067604;
      break;
    case 0x14:
      result = 4403792;
      break;
    case 0x15:
      result = 4474446;
      break;
    case 0x16:
      result = 4409428;
      break;
    case 0x17:
      result = 4540500;
      break;
    case 0x18:
      result = 5261396;
      break;
    case 0x19:
      result = 5130324;
      break;
    case 0x1A:
      result = 5195860;
      break;
    case 0x1B:
      result = 5263182;
      break;
    case 0x1C:
      result = 5456211;
      break;
    case 0x1D:
      result = 4543046;
      break;
    case 0x1E:
      result = 4280403;
      break;
    case 0x1F:
      result = 5394256;
      break;
    case 0x20:
      result = 4281417;
      break;
    case 0x21:
      result = 5391687;
      break;
    case 0x22:
      result = 5132362;
      break;
    case 0x23:
      result = 4802627;
      break;
    case 0x24:
      result = 5523523;
      break;
    case 0x25:
      result = 5394251;
      break;
    case 0x26:
      result = 4673093;
      break;
    case 0x27:
      result = 4540758;
      break;
    case 0x28:
      result = 5395796;
      break;
    case 0x29:
      result = 5526852;
      break;
    case 0x2A:
      result = 4544339;
      break;
    case 0x2B:
      result = 5394254;
      break;
    case 0x2C:
      result = 5128516;
      break;
    case 0x2D:
      result = 4281157;
      break;
    case 0x2E:
      result = 5457221;
      break;
    case 0x2F:
      result = 5066309;
      break;
    case 0x30:
      result = 5066053;
      break;
    case 0x31:
      result = 4541765;
      break;
    default:
      return result;
  }

  return result;
}

MCCKitCategorization::ReasonCode_optional __swiftcall ReasonCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B3F6CA4();

  v5 = 0;
  v6 = 32;
  switch(v3)
  {
    case 0:
      goto LABEL_49;
    case 1:
      v5 = 1;
      goto LABEL_49;
    case 2:
      v5 = 2;
      goto LABEL_49;
    case 3:
      v5 = 3;
      goto LABEL_49;
    case 4:
      v5 = 4;
      goto LABEL_49;
    case 5:
      v5 = 5;
      goto LABEL_49;
    case 6:
      v5 = 6;
      goto LABEL_49;
    case 7:
      v5 = 7;
      goto LABEL_49;
    case 8:
      v5 = 8;
      goto LABEL_49;
    case 9:
      v5 = 9;
      goto LABEL_49;
    case 10:
      v5 = 10;
      goto LABEL_49;
    case 11:
      v5 = 11;
      goto LABEL_49;
    case 12:
      v5 = 12;
      goto LABEL_49;
    case 13:
      v5 = 13;
      goto LABEL_49;
    case 14:
      v5 = 14;
      goto LABEL_49;
    case 15:
      v5 = 15;
      goto LABEL_49;
    case 16:
      v5 = 16;
      goto LABEL_49;
    case 17:
      v5 = 17;
      goto LABEL_49;
    case 18:
      v5 = 18;
      goto LABEL_49;
    case 19:
      v5 = 19;
      goto LABEL_49;
    case 20:
      v5 = 20;
      goto LABEL_49;
    case 21:
      v5 = 21;
      goto LABEL_49;
    case 22:
      v5 = 22;
      goto LABEL_49;
    case 23:
      v5 = 23;
      goto LABEL_49;
    case 24:
      v5 = 24;
      goto LABEL_49;
    case 25:
      v5 = 25;
      goto LABEL_49;
    case 26:
      v5 = 26;
      goto LABEL_49;
    case 27:
      v5 = 27;
      goto LABEL_49;
    case 28:
      v5 = 28;
      goto LABEL_49;
    case 29:
      v5 = 29;
      goto LABEL_49;
    case 30:
      v5 = 30;
      goto LABEL_49;
    case 31:
      v5 = 31;
LABEL_49:
      v6 = v5;
      break;
    case 32:
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    default:
      v6 = 50;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static ReasonCode.getStringReason(reasonCodes:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v16 = MEMORY[0x277D84F90];
  sub_22B3B791C(0, v1, 0);
  v3 = v16;
  v4 = a1 + 32;
  v5 = *(v16 + 16);
  v6 = 16 * v5;
  do
  {
    ++v4;
    v7 = ReasonCode.rawValue.getter();
    v17 = v3;
    v9 = *(v3 + 24);
    v10 = v5 + 1;
    if (v5 >= v9 >> 1)
    {
      v12 = v7;
      v13 = v8;
      sub_22B3B791C((v9 > 1), v10, 1);
      v8 = v13;
      v7 = v12;
      v3 = v17;
    }

    *(v3 + 16) = v10;
    v11 = v3 + v6;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
    v6 += 16;
    v5 = v10;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3F0, &qword_22B3F98A0);
  sub_22B3D0990(&qword_28140BFB0, &qword_27D8BE3F0, &qword_22B3F98A0, MEMORY[0x277D83958]);
  v14 = sub_22B3F6544();

  return v14;
}

uint64_t sub_22B3D50B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE410, &qword_22B3F9A78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F9890;
  v1 = *MEMORY[0x277CD8708];
  *(inited + 32) = *MEMORY[0x277CD8708];
  *(inited + 40) = 38;
  v34 = *MEMORY[0x277CD8718];
  *(inited + 48) = *MEMORY[0x277CD8718];
  *(inited + 56) = 29;
  v33 = *MEMORY[0x277CD8810];
  *(inited + 64) = *MEMORY[0x277CD8810];
  *(inited + 72) = 30;
  v32 = *MEMORY[0x277CD87D8];
  *(inited + 80) = *MEMORY[0x277CD87D8];
  *(inited + 88) = 31;
  v31 = *MEMORY[0x277CD8768];
  *(inited + 96) = *MEMORY[0x277CD8768];
  *(inited + 104) = 32;
  v30 = *MEMORY[0x277CD8728];
  *(inited + 112) = *MEMORY[0x277CD8728];
  *(inited + 120) = 33;
  v29 = *MEMORY[0x277CD8770];
  *(inited + 128) = *MEMORY[0x277CD8770];
  *(inited + 136) = 34;
  v2 = *MEMORY[0x277CD87F8];
  *(inited + 144) = *MEMORY[0x277CD87F8];
  *(inited + 152) = 35;
  v3 = *MEMORY[0x277CD8840];
  *(inited + 160) = *MEMORY[0x277CD8840];
  *(inited + 168) = 36;
  v4 = *MEMORY[0x277CD8790];
  *(inited + 176) = *MEMORY[0x277CD8790];
  *(inited + 184) = 37;
  v5 = *MEMORY[0x277CD8868];
  *(inited + 192) = *MEMORY[0x277CD8868];
  *(inited + 200) = 39;
  v6 = *MEMORY[0x277CD8848];
  *(inited + 208) = *MEMORY[0x277CD8848];
  *(inited + 216) = 40;
  v7 = *MEMORY[0x277CD8700];
  *(inited + 224) = *MEMORY[0x277CD8700];
  *(inited + 232) = 41;
  v8 = *MEMORY[0x277CD8818];
  *(inited + 240) = *MEMORY[0x277CD8818];
  *(inited + 248) = 42;
  v9 = *MEMORY[0x277CD87C0];
  *(inited + 256) = *MEMORY[0x277CD87C0];
  *(inited + 264) = 43;
  v10 = *MEMORY[0x277CD86F8];
  *(inited + 272) = *MEMORY[0x277CD86F8];
  *(inited + 280) = 44;
  v11 = v1;
  v12 = v34;
  v13 = v33;
  v14 = v32;
  v15 = v31;
  v16 = v30;
  v17 = v29;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = sub_22B3CC0C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE418, &qword_22B3F9A80);
  result = swift_arrayDestroy();
  off_28140D260 = v27;
  return result;
}

uint64_t static ReasonCode.languageReasonCodeMap.getter()
{
  if (qword_28140D258 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22B3D53C0()
{
  v0 = ReasonCode.rawValue.getter();
  v2 = v1;
  if (v0 == ReasonCode.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22B3F6C84();
  }

  return v5 & 1;
}

uint64_t sub_22B3D545C()
{
  sub_22B3F6D34();
  ReasonCode.rawValue.getter();
  sub_22B3F6624();

  return sub_22B3F6D54();
}

uint64_t sub_22B3D54C4(uint64_t a1)
{
  ReasonCode.rawValue.getter();
  sub_22B3F6624();
}

uint64_t sub_22B3D5528(uint64_t a1)
{
  sub_22B3F6D34();
  ReasonCode.rawValue.getter();
  sub_22B3F6624();

  return sub_22B3F6D54();
}

uint64_t sub_22B3D5598@<X0>(uint64_t *a1@<X8>)
{
  result = ReasonCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22B3D55D4()
{
  result = qword_27D8BE3F8;
  if (!qword_27D8BE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE3F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReasonCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCF)
  {
    goto LABEL_17;
  }

  if (a2 + 49 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 49) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 49;
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

      return (*a1 | (v4 << 8)) - 49;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 49;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x32;
  v8 = v6 - 50;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReasonCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 49) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCF)
  {
    v4 = 0;
  }

  if (a2 > 0xCE)
  {
    v5 = ((a2 - 207) >> 8) + 1;
    *result = a2 + 49;
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
    *result = a2 + 49;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *DecisionStrategy.__allocating_init(hashing:modelLoader:nerRule:domainHelper:tsSubjectMap:tsSenderMap:catMap:saasSenderMap:mbertDomainMap:commerceSenderRule:guaranteeList:finalRule:)(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a12)
{
  v29 = *(a5 + 32);
  v30 = *(a5 + 24);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(a5, v30);
  v14 = *(a6 + 24);
  v27 = *(a6 + 32);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(a6, v14);
  v15 = *(a7 + 24);
  v25 = *(a7 + 32);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v16 = *(a8 + 24);
  v17 = *(a8 + 32);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(a8, v16);
  v19 = *(a9 + 24);
  v18 = *(a9 + 32);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a9, v19);
  *(&v24 + 1) = v18;
  *(&v23 + 1) = v29;
  *&v24 = v25;
  *&v23 = v17;
  v21 = sub_22B3E2C44(a1, a2, a3, a4, v32, v31, v28, v26, v20, a10, a12, v35, v16, v30, v15, v19, v14, v23, v24, v27);
  __swift_destroy_boxed_opaque_existential_0(a9);
  __swift_destroy_boxed_opaque_existential_0(a8);
  __swift_destroy_boxed_opaque_existential_0(a7);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v21;
}

unint64_t sub_22B3D5918(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_22B3F6764();
  }

  __break(1u);
  return result;
}

uint64_t PredictionRequest.senderEmail.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PredictionRequest.senderEmail.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PredictionRequest.receiverEmail.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PredictionRequest.emailSubject.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall PredictionRequest.init(senderEmail:receiverEmail:emailSubject:isUnsubscribeHeaderPresent:senderScore:senderModelResult:isHME:)(MCCKitCategorization::PredictionRequest *__return_ptr retstr, Swift::String senderEmail, Swift::String receiverEmail, Swift::String emailSubject, Swift::Bool isUnsubscribeHeaderPresent, Swift::Double senderScore, MCCKitCategorization::ReasonCode senderModelResult, Swift::Bool isHME)
{
  v8 = *senderModelResult;
  retstr->senderEmail = senderEmail;
  retstr->receiverEmail = receiverEmail;
  retstr->emailSubject = emailSubject;
  retstr->isUnsubscribeHeaderPresent = isUnsubscribeHeaderPresent;
  retstr->senderScore = senderScore;
  retstr->senderModelResult = v8;
  retstr->isHME = isHME;
}

void __swiftcall PredictionRequest.init(decisionRequest:originalSender:isHME:senderScore:senderModelResult:)(MCCKitCategorization::PredictionRequest *__return_ptr retstr, MCCKitCategorization::DecisionRequest *decisionRequest, Swift::String originalSender, Swift::Bool isHME, Swift::Double senderScore, MCCKitCategorization::ReasonCode senderModelResult)
{
  v6 = senderModelResult;
  v26 = isHME;
  v25 = originalSender;
  v10 = sub_22B3F5F94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  emailSubject = decisionRequest->emailSubject;
  receiverEmail = decisionRequest->receiverEmail;
  v30 = emailSubject;
  v31 = *&decisionRequest->isUnsubscribeHeaderPresent;
  object = decisionRequest->localRuleCategory.value._object;
  senderEmail = decisionRequest->senderEmail;
  v28[0] = decisionRequest->senderName;
  v28[1] = senderEmail;
  v16 = *v6;
  if (receiverEmail.value._object)
  {
    countAndFlagsBits = receiverEmail.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (receiverEmail.value._object)
  {
    v18 = receiverEmail.value._object;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v27 = v30;

  sub_22B3F5F64();
  sub_22B3B4258();
  v19 = sub_22B3F69E4();
  v21 = v20;
  (*(v11 + 8))(v13, v10);

  sub_22B3E3034(v28);
  v22 = v31;
  v23 = v25._object;
  retstr->senderEmail._countAndFlagsBits = v25._countAndFlagsBits;
  retstr->senderEmail._object = v23;
  retstr->receiverEmail._countAndFlagsBits = countAndFlagsBits;
  retstr->receiverEmail._object = v18;
  retstr->emailSubject._countAndFlagsBits = v19;
  retstr->emailSubject._object = v21;
  retstr->isUnsubscribeHeaderPresent = v22;
  retstr->senderScore = senderScore;
  retstr->senderModelResult = v16;
  retstr->isHME = v26;
}

_OWORD *DecisionStrategy.init(hashing:modelLoader:nerRule:domainHelper:tsSubjectMap:tsSenderMap:catMap:saasSenderMap:mbertDomainMap:commerceSenderRule:guaranteeList:finalRule:)(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v57 = a1;
  v58 = a2;
  v56 = a10;
  v14 = *(a5 + 24);
  v54 = *(a5 + 32);
  v55 = a11;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a5, v14);
  v16 = MEMORY[0x28223BE20](v15);
  v52 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v16);
  v53 = a6;
  v19 = *(a6 + 24);
  v51 = *(a6 + 32);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a6, v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v21);
  v25 = *(a7 + 24);
  v49 = *(a7 + 32);
  v50 = a7;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(a7, v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  v31 = *(a8 + 24);
  v47 = *(a8 + 32);
  v48 = a8;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(a8, v31);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v46 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35, v33);
  v46 = a9;
  v38 = *(a9 + 24);
  v37 = *(a9 + 32);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(a9, v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v46 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42, v40);
  v44 = sub_22B3E2534(v57, v58, v60, v61, v52, v23, v29, v35, v42, v56, *(&v56 + 1), v55, v59, v31, v14, v25, v38, v19, v47, v54, v49, v37, v51);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v48);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v62);
  return v44;
}

uint64_t DecisionStrategy.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v3 = type metadata accessor for BlackPearlModel(0);
  v4 = *(v3 + 32);
  v45 = *(v2 + v4);
  *(v2 + v4) = 0;
  *(v2 + *(v3 + 36)) = 0;
  v5 = type metadata accessor for BlackPearlLevels(0);
  v6 = v2 + v5[7];
  v7 = *(v3 + 32);
  v8 = *(v6 + v7);
  *(v6 + v7) = 0;
  *(v6 + *(v3 + 36)) = 0;
  v9 = v2 + v5[8];
  v10 = *(v3 + 32);
  v11 = *(v9 + v10);
  *(v9 + v10) = 0;
  *(v9 + *(v3 + 36)) = 0;
  v12 = v2 + v5[5];
  v13 = *(v3 + 32);
  v14 = *(v12 + v13);
  *(v12 + v13) = 0;
  *(v12 + *(v3 + 36)) = 0;
  v15 = v2 + v5[9];
  v16 = *(v3 + 32);
  v17 = *(v15 + v16);
  *(v15 + v16) = 0;
  *(v15 + *(v3 + 36)) = 0;
  v18 = v2 + v5[6];
  v19 = *(v3 + 32);
  v20 = *(v18 + v19);
  *(v18 + v19) = 0;
  *(v18 + *(v3 + 36)) = 0;
  v21 = v2 + v5[10];
  v22 = *(v3 + 32);
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;
  *(v21 + *(v3 + 36)) = 0;

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v24 = sub_22B3F6464();
  __swift_project_value_buffer(v24, qword_28140D680);

  v25 = sub_22B3F6444();
  v26 = sub_22B3F68B4();

  if (os_log_type_enabled(v25, v26))
  {
    v44 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138413826;
    v29 = *(v2 + *(v3 + 32));
    *(v27 + 4) = v29;
    *v28 = v29;
    *(v27 + 12) = 2112;
    v43 = *(v2 + v5[7] + *(v3 + 32));
    *(v27 + 14) = v43;
    v28[1] = v43;
    *(v27 + 22) = 2112;
    v30 = *(v2 + v5[8] + *(v3 + 32));
    *(v27 + 24) = v30;
    v28[2] = v30;
    *(v27 + 32) = 2112;
    v31 = *(v2 + v5[5] + *(v3 + 32));
    *(v27 + 34) = v31;
    v28[3] = v31;
    *(v27 + 42) = 2112;
    v46 = v25;
    v32 = *(v2 + v5[9] + *(v3 + 32));
    *(v27 + 44) = v32;
    v28[4] = v32;
    *(v27 + 52) = 2112;
    v33 = *(v2 + v5[6] + *(v3 + 32));
    *(v27 + 54) = v33;
    v28[5] = v33;
    *(v27 + 62) = 2112;
    v34 = *(v2 + v5[10] + *(v3 + 32));
    *(v27 + 64) = v34;
    v28[6] = v34;
    v35 = v29;
    v36 = v43;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v25 = v46;
    v40 = v33;
    v41 = v34;
    _os_log_impl(&dword_22B3A7000, v46, v44, "Destroyed DecisionStrategy model  %@, %@, %@, %@, %@, %@, %@", v27, 0x48u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE078, &qword_22B3F8C50);
    swift_arrayDestroy();
    MEMORY[0x231890C40](v28, -1, -1);
    MEMORY[0x231890C40](v27, -1, -1);
  }

  sub_22B3E3088(v2);
  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader);

  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSubjectMap);
  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSenderMap);
  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMap);
  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap);
  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_mbertDomainMap);

  return v1;
}

uint64_t DecisionStrategy.__deallocating_deinit()
{
  DecisionStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B3D6534@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_22B3F5F94();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x28223BE20](v4);
  v94 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  v11 = *(a1 + 6);
  v10 = *(a1 + 7);
  v12 = *(a1 + 64);
  v115 = v12;
  v13 = *(a1 + 65);
  v14 = *(a1 + 69);
  v114 = v14;
  v130 = *a1;
  v99 = v7;
  v100 = v6;
  *&v131 = v6;
  *(&v131 + 1) = v7;
  *&v132 = v9;
  *(&v132 + 1) = v8;
  *&v133 = v11;
  *(&v133 + 1) = v10;
  LOBYTE(v134[0]) = v12;
  LODWORD(v97) = v13;
  *(v134 + 1) = v13;
  BYTE5(v134[0]) = v14;
  *(v134 + 6) = *(a1 + 70);
  WORD3(v134[1]) = *(a1 + 43);
  sub_22B3DA168(&v130, &v116);
  v134[8] = v128;
  v135[0] = v129[0];
  *(v135 + 9) = *(v129 + 9);
  v134[4] = v124;
  v134[5] = v125;
  v134[6] = v126;
  v134[7] = v127;
  v134[0] = v120;
  v134[1] = v121;
  v134[2] = v122;
  v134[3] = v123;
  v130 = v116;
  v131 = v117;
  v132 = v118;
  v133 = v119;
  result = sub_22B3E30E4(&v130);
  if (result != 1)
  {
    v47 = v129[0];
    a2[12] = v128;
    a2[13] = v47;
    *(a2 + 217) = *(v129 + 9);
    v48 = v125;
    a2[8] = v124;
    a2[9] = v48;
    v49 = v127;
    a2[10] = v126;
    a2[11] = v49;
    v50 = v121;
    a2[4] = v120;
    a2[5] = v50;
    v51 = v123;
    a2[6] = v122;
    a2[7] = v51;
    v52 = v117;
    *a2 = v116;
    a2[1] = v52;
    v53 = v119;
    a2[2] = v118;
    a2[3] = v53;
    return result;
  }

  v104 = *a1;
  *&v105 = v100;
  *(&v105 + 1) = v99;
  v91 = v9;
  v92 = v8;
  *&v106 = v9;
  *(&v106 + 1) = v8;
  *&v107 = v11;
  *(&v107 + 1) = v10;
  v93 = v10;
  LOBYTE(v108[0]) = v12;
  *(v108 + 1) = v97;
  BYTE5(v108[0]) = v14;
  *(v108 + 6) = *(a1 + 70);
  WORD3(v108[1]) = *(a1 + 43);
  v16 = sub_22B3E30FC(&v104);
  if (v17)
  {
    v18 = v16;
    v19 = v98;
    v20 = a2;
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v21 = sub_22B3F6464();
    __swift_project_value_buffer(v21, qword_28140D680);
    v22 = sub_22B3F6444();
    v23 = sub_22B3F68A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B3A7000, v22, v23, "Returning categorization result for CVR sender", v24, 2u);
      MEMORY[0x231890C40](v24, -1, -1);
    }

    v25 = v19 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v26 = (v25 + *(type metadata accessor for BlackPearlLevels(0) + 44));
    v27 = v26[9];
    v29 = v26[7];
    v111 = v26[8];
    v28 = v111;
    v112 = v27;
    v30 = v26[9];
    v113[0] = v26[10];
    *(v113 + 9) = *(v26 + 169);
    v31 = v26[5];
    v33 = v26[3];
    v108[0] = v26[4];
    v32 = v108[0];
    v108[1] = v31;
    v34 = v26[5];
    v35 = v26[7];
    v109 = v26[6];
    v36 = v109;
    v110 = v35;
    v37 = v26[1];
    v39 = v26[2];
    v38 = v26[3];
    v106 = v39;
    v107 = v38;
    v40 = v26[1];
    v104 = *v26;
    v41 = v104;
    v105 = v40;
    *v20 = 151257088;
    __asm { FMOV            V0.2D, #1.0 }

    *(v20 + 8) = _Q0;
    *(v20 + 24) = _Q0;
    v20[11] = v28;
    v20[12] = v30;
    v20[13] = v26[10];
    *(v20 + 217) = *(v26 + 169);
    v20[7] = v32;
    v20[8] = v34;
    v20[9] = v36;
    v20[10] = v29;
    v20[3] = v41;
    v20[4] = v37;
    *(v20 + 5) = v18;
LABEL_15:
    v20[5] = v39;
    v20[6] = v33;
    return sub_22B3A9F54(&v104, v101);
  }

  v54 = v98;
  sub_22B3D6C40(v100, v99, &v104);
  v55 = v104;
  v20 = a2;
  if (v104)
  {
    v56 = BYTE8(v104);
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v57 = sub_22B3F6464();
    __swift_project_value_buffer(v57, qword_28140D680);
    v58 = sub_22B3F6444();
    v59 = sub_22B3F68A4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_22B3A7000, v58, v59, "Returning categorization result from Guaranteed list", v60, 2u);
      MEMORY[0x231890C40](v60, -1, -1);
    }

    v61 = v54 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v62 = (v61 + *(type metadata accessor for BlackPearlLevels(0) + 44));
    v63 = v62[9];
    v65 = v62[7];
    v111 = v62[8];
    v64 = v111;
    v112 = v63;
    v66 = v62[9];
    v113[0] = v62[10];
    *(v113 + 9) = *(v62 + 169);
    v67 = v62[5];
    v33 = v62[3];
    v108[0] = v62[4];
    v68 = v108[0];
    v108[1] = v67;
    v69 = v62[5];
    v70 = v62[7];
    v109 = v62[6];
    v71 = v109;
    v110 = v70;
    v72 = v62[1];
    v39 = v62[2];
    v73 = v62[3];
    v106 = v39;
    v107 = v73;
    v74 = v62[1];
    v104 = *v62;
    v75 = v104;
    v105 = v74;
    __asm { FMOV            V0.2D, #1.0 }

    *(v20 + 8) = _Q0;
    *(v20 + 24) = _Q0;
    v20[11] = v64;
    v20[12] = v66;
    v20[13] = v62[10];
    *(v20 + 217) = *(v62 + 169);
    v20[7] = v68;
    v20[8] = v69;
    v20[9] = v71;
    v20[10] = v65;
    v20[3] = v75;
    v20[4] = v72;
    *v20 = v56 != 4;
    *(v20 + 1) = 0;
    *(v20 + 2) = v56;
    *(v20 + 3) = 9;
    *(v20 + 5) = v55;
    goto LABEL_15;
  }

  v77 = v11;
  v78 = sub_22B3DD400(v100, v99);
  v80 = v79;
  v82 = v81;
  sub_22B3DCEC0(&v104, v78, v79);
  v84 = v83;
  LODWORD(v100) = v104;
  v85 = v91;
  if (!v92)
  {
    v85 = 0;
  }

  v99 = v85;
  v86 = 0xE000000000000000;
  if (v92)
  {
    v86 = v92;
  }

  v97 = v86;
  *&v101[0] = v77;
  *(&v101[0] + 1) = v93;

  v87 = v94;
  sub_22B3F5F64();
  sub_22B3B4258();
  v88 = sub_22B3F69E4();
  v90 = v89;
  (*(v95 + 8))(v87, v96);

  *&v104 = v78;
  *(&v104 + 1) = v80;
  *&v105 = v99;
  *(&v105 + 1) = v97;
  *&v106 = v88;
  *(&v106 + 1) = v90;
  LOBYTE(v107) = v115;
  *(&v107 + 1) = v103[0];
  DWORD1(v107) = *(v103 + 3);
  *(&v107 + 1) = v84;
  LOBYTE(v108[0]) = v100;
  BYTE1(v108[0]) = v82 & 1;
  v101[2] = v106;
  v101[3] = v107;
  v102 = v108[0];
  v101[0] = v104;
  v101[1] = v105;
  if (v114 == 1)
  {
    sub_22B3D9344(v101, v20);
  }

  else
  {
    sub_22B3D6F70(v101, v20);
  }

  return sub_22B3E331C(&v104);
}

char sub_22B3D6C40@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_guaranteeList);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_0(v7 + 2, v8);
  v10 = (*(v9 + 16))(a1, a2, v8, v9);
  if ((v11 & 1) != 0 || (LOBYTE(v10) = Category.init(rawValue:)(v10), v12 = v18, v18 == 11))
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v10 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = v10;
    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v10 = sub_22B3C1CD8((v14 > 1), v15 + 1, 1, v10);
      v16 = v15 + 1;
      v13 = v10;
    }

    *(v13 + 2) = v16;
    v13[v15 + 32] = 16;
  }

  *a3 = v13;
  *(a3 + 8) = v12;
  return v10;
}

char *sub_22B3D6D50(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = sub_22B3F65D4();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  BloomFilter.mayContain(object:)(v9);

  if (ReasonCode.rawValue.getter() == 5854019 && v10 == 0xE300000000000000)
  {

LABEL_5:
    v12 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      v12 = sub_22B3C1CD8((v13 > 1), v14 + 1, 1, v12);
    }

    v16 = 0;
    goto LABEL_8;
  }

  v11 = sub_22B3F6C84();

  if (v11)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    v16 = 1;
    v12 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v18 = *(v12 + 3);
    v15 = v14 + 1;
    if (v14 >= v18 >> 1)
    {
      v16 = 1;
      v12 = sub_22B3C1CD8((v18 > 1), v14 + 1, 1, v12);
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }

    v12 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v19 = *(v12 + 3);
    v15 = v14 + 1;
    if (v14 >= v19 >> 1)
    {
      v12 = sub_22B3C1CD8((v19 > 1), v14 + 1, 1, v12);
    }

    v16 = 2;
  }

LABEL_8:
  *(v12 + 2) = v15;
  v12[v14 + 32] = v16;
  return v12;
}

void sub_22B3D6F70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v184 = type metadata accessor for BlackPearlLevels(0);
  MEMORY[0x28223BE20](v184);
  v186 = v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  v187 = *a1;
  v188 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 65);
  if ((v10 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v189 = v2;
  v181 = v10;
  v182 = v9;
  if (v14)
  {
    v15 = sub_22B3C3158(&v194, v9, v10);
    v183 = v194;
    if (qword_28140D258 != -1)
    {
      v168 = v15;
      swift_once();
      v15 = v168;
    }

    v16 = off_28140D260;
    v17 = *(off_28140D260 + 2);
    v185 = v15;
    if (v17)
    {
      v18 = v15;
      v19 = sub_22B3BA424();
      if (v20)
      {
        v21 = *(v16[7] + v19);
      }

      else
      {
        v21 = 15;
      }
    }

    else
    {
      v21 = 15;
    }

    v22 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(v22 + 2);
    v26 = *(v22 + 3);
    v25 = v24 + 1;
    if (v24 >= v26 >> 1)
    {
      v22 = sub_22B3C1CD8((v26 > 1), v24 + 1, 1, v22);
    }
  }

  else
  {
    v185 = *MEMORY[0x277CD8858];
    v22 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v22 = sub_22B3C1CD8((v23 > 1), v24 + 1, 1, v22);
    }

    v183 = 3;
    v21 = 46;
  }

  *(v22 + 2) = v25;
  v22[v24 + 32] = v21;
  v206 = v22;
  v27 = v187;
  v28 = v189;
  sub_22B3D6D50(v187, v188, v11, v13);
  v30 = v29;

  sub_22B3CB69C(v31);
  if ((v30 & 1) == 0)
  {
    v32 = HIBYTE(v188) & 0xF;
    if ((v188 & 0x2000000000000000) == 0)
    {
      v32 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v33 = sub_22B3B6414(v27, v188);
      v35 = sub_22B3B568C(v33, v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v36 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v37 = sub_22B3B6414(v7, v8);
      v39 = sub_22B3B568C(v37, v38);
    }

    else
    {
      v39 = -1;
    }

    v28 = v189;
    if (sub_22B3D4758(&v194, v35, v39, v12))
    {
      v40 = v194;

      v41 = v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_22B3C1CD8(0, *(v41 + 2) + 1, 1, v41);
      }

      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_22B3C1CD8((v42 > 1), v43 + 1, 1, v41);
      }

      *(v41 + 2) = v43 + 1;
      v41[v43 + 32] = v40;
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v44 = sub_22B3F6464();
      __swift_project_value_buffer(v44, qword_28140D680);
      v45 = sub_22B3F6444();
      v46 = sub_22B3F68A4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22B3A7000, v45, v46, "Returning categorization result for non commerce sender", v47, 2u);
        MEMORY[0x231890C40](v47, -1, -1);
      }

      v48 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
      v49 = v189;
      swift_beginAccess();
      v50 = v49 + v48;
      v51 = v186;
      sub_22B3B2A74(v50, v186);
      v52 = (v51 + *(v184 + 44));
      v53 = v52[9];
      v202 = v52[8];
      v203 = v53;
      v204[0] = v52[10];
      *(v204 + 9) = *(v52 + 169);
      v54 = v52[5];
      v198 = v52[4];
      v199 = v54;
      v55 = v52[7];
      v200 = v52[6];
      v201 = v55;
      v56 = v52[3];
      v196 = v52[2];
      v197 = v56;
      v57 = v52[1];
      v194 = *v52;
      v195 = v57;
      sub_22B3A9F54(&v194, v190);
      sub_22B3E3088(v51);
      *a2 = 151257088;
      *(a2 + 8) = 0x3FF0000000000000;
      *(a2 + 16) = v12;
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 24) = _Q0;
      *(a2 + 40) = v41;
      v63 = v203;
      *(a2 + 176) = v202;
      *(a2 + 192) = v63;
      *(a2 + 208) = v204[0];
      v64 = *(v204 + 9);
      goto LABEL_68;
    }
  }

  if (!v14)
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v66 = sub_22B3F6464();
    __swift_project_value_buffer(v66, qword_28140D680);
    v67 = sub_22B3F6444();
    v68 = sub_22B3F68A4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22B3A7000, v67, v68, "Returning categorization result for empty subject", v69, 2u);
      MEMORY[0x231890C40](v69, -1, -1);
    }

    v70 = v206;
    v71 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v72 = v28 + v71;
    v73 = v186;
    sub_22B3B2A74(v72, v186);
    v74 = (v73 + *(v184 + 44));
    v75 = v74[9];
    v202 = v74[8];
    v203 = v75;
    v204[0] = v74[10];
    *(v204 + 9) = *(v74 + 169);
    v76 = v74[5];
    v198 = v74[4];
    v199 = v76;
    v77 = v74[7];
    v200 = v74[6];
    v201 = v77;
    v78 = v74[3];
    v196 = v74[2];
    v197 = v78;
    v79 = v74[1];
    v194 = *v74;
    v195 = v79;
    sub_22B3A9F54(&v194, v190);
    sub_22B3E3088(v73);
    *a2 = 151584768;
    *(a2 + 8) = 0x3FF0000000000000;
    *(a2 + 16) = v12;
    __asm { FMOV            V0.2D, #1.0 }

    goto LABEL_67;
  }

  v65 = v183;
  if (v183 > 1 && v183 != 2)
  {

    goto LABEL_62;
  }

  v81 = sub_22B3F6C84();

  if (v81)
  {
LABEL_62:

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v94 = sub_22B3F6464();
    __swift_project_value_buffer(v94, qword_28140D680);
    v95 = sub_22B3F6444();
    v96 = sub_22B3F68A4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_22B3A7000, v95, v96, "Returning categorization result for unsupported language", v97, 2u);
      MEMORY[0x231890C40](v97, -1, -1);
    }

    v70 = v206;
    v98 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v99 = v28 + v98;
    v100 = v186;
    sub_22B3B2A74(v99, v186);
    v101 = (v100 + *(v184 + 44));
    v102 = v101[9];
    v202 = v101[8];
    v203 = v102;
    v204[0] = v101[10];
    *(v204 + 9) = *(v101 + 169);
    v103 = v101[5];
    v198 = v101[4];
    v199 = v103;
    v104 = v101[7];
    v200 = v101[6];
    v201 = v104;
    v105 = v101[3];
    v196 = v101[2];
    v197 = v105;
    v106 = v101[1];
    v194 = *v101;
    v195 = v106;
    sub_22B3A9F54(&v194, v190);
    sub_22B3E3088(v100);
    *a2 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a2 + 8) = _Q0;
LABEL_67:
    *(a2 + 24) = _Q0;
    *(a2 + 40) = v70;
    v107 = v203;
    *(a2 + 176) = v202;
    *(a2 + 192) = v107;
    *(a2 + 208) = v204[0];
    v64 = *(v204 + 9);
LABEL_68:
    *(a2 + 217) = v64;
    v108 = v199;
    *(a2 + 112) = v198;
    *(a2 + 128) = v108;
    v109 = v201;
    *(a2 + 144) = v200;
    *(a2 + 160) = v109;
    v110 = v195;
    *(a2 + 48) = v194;
    *(a2 + 64) = v110;
    v111 = v197;
    *(a2 + 80) = v196;
    *(a2 + 96) = v111;
    return;
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v82 = sub_22B3F6464();
  v83 = __swift_project_value_buffer(v82, qword_28140D680);
  v84 = v185;
  v180 = v83;
  v85 = sub_22B3F6444();
  v86 = sub_22B3F68A4();
  v185 = v84;

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v194 = v88;
    *v87 = 136315138;
    v89 = 0xE500000000000000;
    v90 = 0x6E6974616CLL;
    if (v65 != 1)
    {
      v90 = 0xD000000000000011;
      v89 = 0x800000022B3FA140;
    }

    if (v65)
    {
      v91 = v90;
    }

    else
    {
      v91 = 0x6873696C676E65;
    }

    if (v65)
    {
      v92 = v89;
    }

    else
    {
      v92 = 0xE700000000000000;
    }

    v93 = sub_22B3BDABC(v91, v92, &v194);

    *(v87 + 4) = v93;
    _os_log_impl(&dword_22B3A7000, v85, v86, "Using language model %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x231890C40](v88, -1, -1);
    MEMORY[0x231890C40](v87, -1, -1);

    v28 = v189;
  }

  else
  {
  }

  v112 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v178 = v112;
  v113 = v186;
  sub_22B3B2A74(v28 + v112, v186);
  LOBYTE(v194) = v65;
  LOBYTE(v112) = BlackPearlLevels.isModelAssetAvailable(forLanguage:)(&v194);
  sub_22B3E3088(v113);
  if (v112)
  {
LABEL_89:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_22B3F9AA0;
    sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
    *(v140 + 32) = sub_22B3F6964();
    *(v140 + 40) = sub_22B3F6964();
    v141 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v142 = sub_22B3E0294(v140, 65600);
    if (!v142)
    {
      while (1)
      {
        sub_22B3F6B14();
        __break(1u);

        v170 = 0;
        v171 = sub_22B3F6444();
        v172 = sub_22B3F68C4();

        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          *v173 = 138412290;
          v175 = 0;
          v176 = _swift_stdlib_bridgeErrorToNSError();
          *(v173 + 4) = v176;
          *v174 = v176;
          _os_log_impl(&dword_22B3A7000, v171, v172, "MBert model execution failed %@", v173, 0xCu);
          sub_22B3B4B3C(v174, &qword_27D8BE078, &qword_22B3F8C50);
          MEMORY[0x231890C40](v174, -1, -1);
          MEMORY[0x231890C40](v173, -1, -1);
        }
      }
    }

    if (v65)
    {
      v150 = sub_22B3F6C84();

      if ((v150 & 1) == 0)
      {
        LOBYTE(v194) = v65;
        v162 = sub_22B3DC148(v182, v181, v187, v188, &v194, v185);

        v190[0] = v65;
        v142 = v162;
        sub_22B3DB3B8(&v194, v142, v190);
        v152 = v163;

LABEL_99:
        v153 = v194;
        v154 = v206;
        v155 = v142;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_22B3C1CD8(0, *(v154 + 2) + 1, 1, v154);
        }

        v157 = *(v154 + 2);
        v156 = *(v154 + 3);
        if (v157 >= v156 >> 1)
        {
          v154 = sub_22B3C1CD8((v156 > 1), v157 + 1, 1, v154);
        }

        *(v154 + 2) = v157 + 1;
        v154[v157 + 32] = 10;
        if (v153 == 5)
        {
          v158 = 0;
          v159 = 9;
          v160 = 0;
          v161 = 0;
LABEL_115:
          LOBYTE(v194) = v153;
          *(&v194 + 1) = v152;
          *&v195 = v12;
          BYTE8(v195) = 1;
          v190[0] = v159;
          v191 = v161;
          v192 = v160;
          v193 = v158;
          sub_22B3D8828(&v194, v190, v154, a2);

          return;
        }

        if (v65)
        {
          v164 = sub_22B3F6C84();

          if ((v164 & 1) == 0)
          {
            v190[0] = v65;
            sub_22B3DF910(v155, v190, &v194);
            v159 = v194;
            v161 = *(&v194 + 1);
            v160 = v195;
            if (BYTE8(v195) == 1)
            {
              goto LABEL_110;
            }

            goto LABEL_114;
          }
        }

        else
        {
        }

        sub_22B3DF0DC(v187, v188, v182, v181, &v194);
        v159 = v194;
        v161 = *(&v194 + 1);
        v160 = v195;
        if (BYTE8(v195))
        {
LABEL_110:
          v166 = *(v154 + 2);
          v165 = *(v154 + 3);
          if (v166 >= v165 >> 1)
          {
            v187 = v161;
            v188 = v160;
            v169 = sub_22B3C1CD8((v165 > 1), v166 + 1, 1, v154);
            v161 = v187;
            v160 = v188;
            v154 = v169;
          }

          *(v154 + 2) = v166 + 1;
          v154[v166 + 32] = 19;
          v158 = 1;
          goto LABEL_115;
        }

LABEL_114:
        v158 = 0;
        goto LABEL_115;
      }
    }

    else
    {
    }

    sub_22B3DA254(&v194, v187, v188, v182, v181);
    v152 = v151;
    goto LABEL_99;
  }

  v114 = swift_allocObject();
  v179 = v114;
  *(v114 + 16) = 0;
  v177[1] = (v114 + 16);
  v115 = v185;
  v116 = sub_22B3F6444();
  v117 = sub_22B3F68C4();
  v177[0] = v115;

  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v194 = v119;
    *v118 = 136315138;
    v120 = 0xD000000000000011;
    v121 = 0x800000022B3FA140;
    if (v183 != 2)
    {
      v120 = 0x726F707075536E75;
      v121 = 0xEB00000000646574;
    }

    v122 = 0xE700000000000000;
    v123 = 0x6E6974616CLL;
    if (v183)
    {
      v122 = 0xE500000000000000;
    }

    else
    {
      v123 = 0x6873696C676E65;
    }

    if (v183 <= 1)
    {
      v124 = v123;
    }

    else
    {
      v124 = v120;
    }

    if (v183 <= 1)
    {
      v125 = v122;
    }

    else
    {
      v125 = v121;
    }

    v126 = sub_22B3BDABC(v124, v125, &v194);

    *(v118 + 4) = v126;
    _os_log_impl(&dword_22B3A7000, v116, v117, "Model asset is not available for the selected language %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x231890C40](v119, -1, -1);
    MEMORY[0x231890C40](v118, -1, -1);

    v28 = v189;
  }

  else
  {
  }

  v127 = (v28 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader);
  v128 = *(v28 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader + 24);
  v129 = *(v28 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader + 32);
  __swift_project_boxed_opaque_existential_0((v28 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader), v128);
  LOBYTE(v194) = v183;
  v130 = *(v129 + 336);
  v131 = v179;

  v130(&v194, sub_22B3E334C, v131, v128, v129);

  swift_beginAccess();
  if (*(v131 + 16))
  {
    v132 = sub_22B3F6444();
    v133 = sub_22B3F68B4();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_22B3A7000, v132, v133, "Reload BlackPearl levels after model download", v134, 2u);
      MEMORY[0x231890C40](v134, -1, -1);
    }

    v135 = v127[3];
    v136 = v127[4];
    __swift_project_boxed_opaque_existential_0(v127, v135);
    v137 = v186;
    (*(v136 + 304))(v135, v136);
    v138 = v189;
    v139 = v178;
    swift_beginAccess();
    sub_22B3B2AD8(v137, v138 + v139);
    swift_endAccess();

    v65 = v183;
    goto LABEL_89;
  }

  v143 = v177[0];
  v144 = sub_22B3F6444();
  v145 = sub_22B3F68C4();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&v194 = v147;
    *v146 = 136315138;
    if (v183 > 1)
    {
      v148 = 0xEB00000000646574;
      v149 = 0x726F707075536E75;
      if (v183 == 2)
      {
        v149 = 0xD000000000000011;
        v148 = 0x800000022B3FA140;
      }
    }

    else if (v183)
    {
      v148 = 0xE500000000000000;
      v149 = 0x6E6974616CLL;
    }

    else
    {
      v148 = 0xE700000000000000;
      v149 = 0x6873696C676E65;
    }

    v167 = sub_22B3BDABC(v149, v148, &v194);

    *(v146 + 4) = v167;
    _os_log_impl(&dword_22B3A7000, v144, v145, "Returning error as model asset is not available for the selected language %s", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v147);
    MEMORY[0x231890C40](v147, -1, -1);
    MEMORY[0x231890C40](v146, -1, -1);
  }

  type metadata accessor for DecisionResultBuilder();
  static DecisionResultBuilder.buildCategorizationNotReadyResult()(a2);
}

void sub_22B3D868C(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (a1[1])
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v3 = sub_22B3F6464();
    __swift_project_value_buffer(v3, qword_28140D680);
    oslog = sub_22B3F6444();
    v4 = sub_22B3F68C4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_22B3B30D4();
      swift_allocError();
      *v7 = v2;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_22B3A7000, oslog, v4, "Failed model download %@", v5, 0xCu);
      sub_22B3B4B3C(v6, &qword_27D8BE078, &qword_22B3F8C50);
      MEMORY[0x231890C40](v6, -1, -1);
      MEMORY[0x231890C40](v5, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = v2 & 1;
  }
}

__n128 sub_22B3D8828@<Q0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v8 = type metadata accessor for BlackPearlLevels(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v9.n128_u64[0] = *(a1 + 1);
  v113 = v9;
  v9.n128_u64[0] = *(a1 + 2);
  v91 = v9;
  v110 = a1[24];
  v13 = *a2;
  v9.n128_u64[0] = *(a2 + 1);
  v112 = v9;
  v9.n128_u64[0] = *(a2 + 2);
  v87 = v9;
  v14 = a2[24];
  v125 = 0;
  v126 = 0xE000000000000000;
  v15 = v4 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v16 = (v15 + *(v8 + 44));
  v17 = v16[9];
  v120 = v16[8];
  v121 = v17;
  v122[0] = v16[10];
  *(v122 + 9) = *(v16 + 169);
  v18 = v16[5];
  v116 = v16[4];
  v117 = v18;
  v19 = v16[7];
  v118 = v16[6];
  v119 = v19;
  v20 = v16[1];
  v114[0] = *v16;
  v114[1] = v20;
  v21 = v16[3];
  v114[2] = v16[2];
  v115 = v21;
  sub_22B3F6B04();
  v108 = v125;
  v109 = v126;
  if (v12 > 4)
  {
LABEL_6:
    v24 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_7;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      goto LABEL_19;
    }

    v24 = 0;
    v22 = 0;
    v23 = 1;
  }

  else
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 1;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v24 = 0;
    v23 = 0;
    v22 = 1;
  }

LABEL_7:
  if (v13 > 5)
  {
    goto LABEL_15;
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      goto LABEL_16;
    }

LABEL_15:
    v26 = 0;
    v25 = 0;
    if (!v24)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (!v13)
  {
    v26 = 0;
    v25 = 1;
    if (!v24)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (v13 == 1)
  {
LABEL_19:
    type metadata accessor for DecisionResultBuilder();
    static DecisionResultBuilder.buildCategorizationNotReadyResult()(v114);
    goto LABEL_20;
  }

  v25 = 0;
  v26 = 1;
  if (v24)
  {
LABEL_16:
    type metadata accessor for DecisionResultBuilder();
    static DecisionResultBuilder.buildMbertNotReadyResult()(v114);
LABEL_20:
    v110 = LOBYTE(v114[0]);
    v91.n128_u32[0] = BYTE1(v114[0]);
    v12 = BYTE2(v114[0]);
    v111 = BYTE3(v114[0]);
    v112 = *(&v114[1] + 8);
    v113 = *(v114 + 8);
    v27 = *(&v114[2] + 1);
    v93 = *(&v115 + 1);
    v94 = *(&v116 + 1);
    v95 = v115;
    v96 = *(&v117 + 1);
    v99 = v117;
    v97 = v116;
    v98 = *(&v118 + 1);
    v100 = *(&v119 + 1);
    v104 = v119;
    v101 = v118;
    v105 = v121;
    v106 = v122[1];
    v102 = v120;
    v103 = v122[0];
    v92 = v122[3];
    v90 = v122[2];
    v89 = v123;
    v88 = v124;

    goto LABEL_37;
  }

LABEL_23:
  if ((v22 | v26) == 1)
  {
    v28 = v107;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_22B3C1CD8(0, *(v28 + 2) + 1, 1, v28);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v113.n128_u64[0] = v30 + 1;
      v85 = sub_22B3C1CD8((v29 > 1), v30 + 1, 1, v28);
      v31 = v113.n128_u64[0];
      v28 = v85;
    }

    *(v28 + 2) = v31;
    v32 = &v28[v30];
    v33 = 49;
LABEL_35:
    v32[32] = v33;
    sub_22B3B2A74(v15, v11);
    v37 = &v11[*(v8 + 44)];
    v38 = *(v37 + 9);
    v120 = *(v37 + 8);
    v121 = v38;
    v122[0] = *(v37 + 10);
    *(v122 + 9) = *(v37 + 169);
    v39 = *(v37 + 5);
    v116 = *(v37 + 4);
    v117 = v39;
    v40 = *(v37 + 7);
    v118 = *(v37 + 6);
    v119 = v40;
    v41 = *(v37 + 3);
    v114[2] = *(v37 + 2);
    v115 = v41;
    v42 = *(v37 + 1);
    v114[0] = *v37;
    v114[1] = v42;
    sub_22B3A9F54(v114, &v125);
    sub_22B3E3088(v11);
    v105 = v118;
    v106 = v120;
    v102 = v117;
    v103 = v119;
    v100 = *(&v116 + 1);
    v104 = v116;
    v98 = *(&v115 + 1);
    v101 = v115;
    v96 = *(&v114[2] + 1);
    v99 = *&v114[2];
    v94 = *(&v114[1] + 1);
    v97 = *&v114[1];
    v93 = *(&v114[0] + 1);
    v95 = *&v114[0];
    v92 = v122[0];
    v90 = v121;
    v89 = *&v122[1];
    v88 = BYTE8(v122[1]);

    v110 = 0;
    v91.n128_u32[0] = 0;
    v12 = 0;
    v111 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v112 = _Q0;
    v113 = _Q0;
    v27 = v28;
    goto LABEL_37;
  }

  if ((v23 | v25) == 1)
  {
    v28 = v107;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_22B3C1CD8(0, *(v28 + 2) + 1, 1, v28);
    }

    v35 = *(v28 + 2);
    v34 = *(v28 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v113.n128_u64[0] = v35 + 1;
      v86 = sub_22B3C1CD8((v34 > 1), v35 + 1, 1, v28);
      v36 = v113.n128_u64[0];
      v28 = v86;
    }

    *(v28 + 2) = v36;
    v32 = &v28[v35];
    v33 = 15;
    goto LABEL_35;
  }

  v48 = (v15 + *(v8 + 44));
  v49 = v48[9];
  v120 = v48[8];
  v121 = v49;
  v122[0] = v48[10];
  *(v122 + 9) = *(v48 + 169);
  v50 = v48[5];
  v116 = v48[4];
  v117 = v50;
  v51 = v48[7];
  v118 = v48[6];
  v119 = v51;
  v52 = v48[1];
  v114[0] = *v48;
  v114[1] = v52;
  v53 = v48[3];
  v114[2] = v48[2];
  v115 = v53;
  v105 = v118;
  v106 = v120;
  v102 = v117;
  v103 = v119;
  v100 = *(&v116 + 1);
  v104 = v116;
  v98 = *(&v53 + 1);
  v101 = v53;
  v96 = *(&v114[2] + 1);
  v99 = *&v114[2];
  v94 = *(&v114[1] + 1);
  v97 = *&v114[1];
  v93 = *(&v114[0] + 1);
  v95 = *&v114[0];
  v92 = v122[0];
  v90 = v121;
  v89 = *&v122[1];
  v88 = BYTE8(v122[1]);
  v27 = v107;
  v111 = v13;
  swift_bridgeObjectRetain_n();
  sub_22B3A9F54(v114, &v125);
  v54.n128_u64[0] = v113.n128_u64[0];
  v54.n128_u64[1] = v91.n128_u64[0];
  v113 = v54;
  v54.n128_u64[0] = v112.n128_u64[0];
  v54.n128_u64[1] = v87.n128_u64[0];
  v112 = v54;
  v91.n128_u32[0] = v14;
LABEL_37:
  *&v114[0] = 0;
  *(&v114[0] + 1) = 0xE000000000000000;
  sub_22B3F6AC4();
  MEMORY[0x23188FF80](0xD000000000000011, 0x800000022B3FBE20);
  v107 = v12;
  v125 = qword_22B3F9D30[v12];
  v55 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v55);

  MEMORY[0x23188FF80](0xD000000000000014, 0x800000022B3FBE40);
  if (v14)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v14)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  MEMORY[0x23188FF80](v56, v57);

  MEMORY[0x23188FF80](0xD000000000000020, 0x800000022B3FBE60);
  v125 = qword_22B3F9D88[v111];
  v58 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v58);

  MEMORY[0x23188FF80](0x6C65646F4D0A0A20, 0xEF203A65726F6353);
  sub_22B3F6824();
  MEMORY[0x23188FF80](0xD000000000000010, 0x800000022B3FBE90);
  sub_22B3F6824();
  MEMORY[0x23188FF80](0x6F63535354200A20, 0xEC000000203A6572);
  sub_22B3F6824();
  MEMORY[0x23188FF80](0xD000000000000014, 0x800000022B3FBEB0);
  sub_22B3F6824();
  MEMORY[0x23188FF80](0x6D6F4373490A0A20, 0xEF203A656372656DLL);
  v59 = v110;
  if (v110)
  {
    v60 = 1702195828;
  }

  else
  {
    v60 = 0x65736C6166;
  }

  if (v110)
  {
    v61 = 0xE400000000000000;
  }

  else
  {
    v61 = 0xE500000000000000;
  }

  MEMORY[0x23188FF80](v60, v61);

  MEMORY[0x23188FF80](0xD000000000000010, 0x800000022B3FBED0);
  v62 = MEMORY[0x2318900A0](v27, &type metadata for ReasonCode);
  v64 = v63;

  MEMORY[0x23188FF80](v62, v64);

  MEMORY[0x23188FF80](0x6973726556200A20, 0xED0000203A736E6FLL);
  MEMORY[0x23188FF80](v108, v109);

  MEMORY[0x23188FF80](41, 0xE100000000000000);
  v65 = v114[0];
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v66 = sub_22B3F6464();
  __swift_project_value_buffer(v66, qword_28140D680);

  v67 = sub_22B3F6444();
  v68 = sub_22B3F68A4();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = v59;
    v71 = swift_slowAlloc();
    *&v114[0] = v71;
    *v69 = 136315138;
    v72 = sub_22B3BDABC(v65, *(&v65 + 1), v114);

    *(v69 + 4) = v72;
    _os_log_impl(&dword_22B3A7000, v67, v68, "%s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    v73 = v71;
    v59 = v70;
    MEMORY[0x231890C40](v73, -1, -1);
    MEMORY[0x231890C40](v69, -1, -1);
  }

  else
  {
  }

  v74 = v107;
  v75 = v88 & 1;
  *a4 = v59;
  *(a4 + 1) = v91.n128_u8[0];
  *(a4 + 2) = v74;
  *(a4 + 3) = v111;
  v76 = v112;
  *(a4 + 8) = v113;
  *(a4 + 24) = v76;
  v77 = v95;
  *(a4 + 40) = v27;
  *(a4 + 48) = v77;
  v78 = v97;
  *(a4 + 56) = v93;
  *(a4 + 64) = v78;
  v79 = v99;
  *(a4 + 72) = v94;
  *(a4 + 80) = v79;
  v80 = v101;
  *(a4 + 88) = v96;
  *(a4 + 96) = v80;
  v81 = v104;
  *(a4 + 104) = v98;
  *(a4 + 112) = v81;
  *(a4 + 120) = v100;
  v82 = v105;
  *(a4 + 128) = v102;
  *(a4 + 144) = v82;
  v83 = v106;
  *(a4 + 160) = v103;
  *(a4 + 176) = v83;
  result = v92;
  *(a4 + 192) = v90;
  *(a4 + 208) = result;
  *(a4 + 224) = v89;
  *(a4 + 232) = v75;
  return result;
}

uint64_t sub_22B3D9344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v147 = *(a1 + 32);
  v148 = *(a1 + 48);
  v7 = *(a1 + 56);
  v117 = *(a1 + 64);
  v120 = v3;
  sub_22B3B6414(v4, v3);
  v8 = sub_22B3F65D4();
  v10 = v9;

  v118 = v6;
  v119 = v5;
  sub_22B3B6414(v5, v6);
  v11 = sub_22B3F65D4();
  v13 = v12;

  v14 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  v121 = v4;
  if (v16 >= v15 >> 1)
  {
    v14 = sub_22B3C1CD8((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v14[v16 + 32] = 27;
  v146 = v14;
  if (v8 == v11 && v10 == v13 || (sub_22B3F6C84() & 1) != 0)
  {
    goto LABEL_14;
  }

  sub_22B3B568C(v8, v10);
  v18 = v17;
  v20 = v19;
  sub_22B3B568C(v11, v13);
  if (v18 == v22 && v20 == v21)
  {

    goto LABEL_14;
  }

  v24 = sub_22B3F6C84();

  if (v24)
  {
LABEL_14:
    v64 = sub_22B3B568C(v8, v10);

    v65 = sub_22B3B568C(v11, v13);

    if (sub_22B3D4758(v126, v64, v65, v7))
    {
      v66 = v126[0];
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v67 = sub_22B3F6464();
      __swift_project_value_buffer(v67, qword_28140D680);
      v68 = sub_22B3F6444();
      v69 = sub_22B3F68A4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_22B3A7000, v68, v69, "Returning NOP categorization result for person", v70, 2u);
        MEMORY[0x231890C40](v70, -1, -1);
      }

      v72 = *(v14 + 2);
      v71 = *(v14 + 3);
      if (v72 >= v71 >> 1)
      {
        v14 = sub_22B3C1CD8((v71 > 1), v72 + 1, 1, v14);
      }

      *(v14 + 2) = v72 + 1;
      v14[v72 + 32] = v66;
      v73 = v123 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
      swift_beginAccess();
      v74 = (v73 + *(type metadata accessor for BlackPearlLevels(0) + 44));
      v76 = v74[8];
      v75 = v74[9];
      v77 = v74[7];
      v132 = v76;
      v133 = v75;
      v78 = v74[9];
      v134[0] = v74[10];
      *(v134 + 9) = *(v74 + 169);
      v80 = v74[4];
      v79 = v74[5];
      v81 = v74[3];
      v128 = v80;
      v129 = v79;
      v82 = v74[5];
      v84 = v74[6];
      v83 = v74[7];
      v130 = v84;
      v131 = v83;
      v85 = v74[1];
      v87 = v74[2];
      v86 = v74[3];
      *&v126[32] = v87;
      v127 = v86;
      v88 = v74[1];
      v89 = *v74;
      *v126 = *v74;
      *&v126[16] = v88;
      v90 = 151257088;
      goto LABEL_30;
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v91 = sub_22B3F6464();
    __swift_project_value_buffer(v91, qword_28140D680);
    v92 = sub_22B3F6444();
    v93 = sub_22B3F68A4();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_22B3A7000, v92, v93, "Returning NOP categorization result for SA sender", v94, 2u);
      MEMORY[0x231890C40](v94, -1, -1);
    }

    v96 = *(v14 + 2);
    v95 = *(v14 + 3);
    if (v96 >= v95 >> 1)
    {
      v14 = sub_22B3C1CD8((v95 > 1), v96 + 1, 1, v14);
    }

    *(v14 + 2) = v96 + 1;
    v14[v96 + 32] = 18;
    v97 = v123 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
LABEL_29:
    swift_beginAccess();
    v74 = (v97 + *(type metadata accessor for BlackPearlLevels(0) + 44));
    v76 = v74[8];
    v98 = v74[9];
    v77 = v74[7];
    v132 = v76;
    v133 = v98;
    v78 = v74[9];
    v134[0] = v74[10];
    *(v134 + 9) = *(v74 + 169);
    v80 = v74[4];
    v99 = v74[5];
    v81 = v74[3];
    v128 = v80;
    v129 = v99;
    v82 = v74[5];
    v84 = v74[6];
    v100 = v74[7];
    v130 = v84;
    v131 = v100;
    v85 = v74[1];
    v87 = v74[2];
    v101 = v74[3];
    *&v126[32] = v87;
    v127 = v101;
    v102 = v74[1];
    v89 = *v74;
    *v126 = *v74;
    *&v126[16] = v102;
    v90 = 151650304;
LABEL_30:
    *a2 = v90;
    *(a2 + 16) = v7;
    __asm { FMOV            V0.2D, #1.0 }

    *(a2 + 24) = _Q0;
    *(a2 + 176) = v76;
    *(a2 + 192) = v78;
    *(a2 + 208) = v74[10];
    *(a2 + 217) = *(v74 + 169);
    *(a2 + 112) = v80;
    *(a2 + 128) = v82;
    *(a2 + 144) = v84;
    *(a2 + 160) = v77;
    *(a2 + 48) = v89;
    *(a2 + 64) = v85;
    *(a2 + 8) = 0x3FF0000000000000;
    *(a2 + 40) = v14;
    *(a2 + 80) = v87;
    *(a2 + 96) = v81;
    v62 = v126;
    v63 = &v135;
    return sub_22B3A9F54(v62, v63);
  }

  v25 = sub_22B3F65D4();
  v27 = v26;
  v28 = sub_22B3B5AF0(v11, v13);
  v30 = v29;

  v31 = sub_22B3D9CD0(v25, v27);
  v33 = v32;

  *v126 = v31;
  *&v126[8] = v33;
  *&v135 = v28;
  *(&v135 + 1) = v30;
  strcpy(v125, "<company_name>");
  v125[15] = -18;
  sub_22B3B4258();
  sub_22B3F6A04();

  v34 = sub_22B3F65D4();
  v36 = v35;

  v37 = *(v123 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap + 24);
  v38 = *(v123 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap + 32);
  __swift_project_boxed_opaque_existential_0((v123 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap), v37);
  (*(v38 + 16))(v34, v36, v37, v38);
  LOBYTE(v34) = v39;

  if ((v34 & 1) == 0)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v108 = sub_22B3F6464();
    __swift_project_value_buffer(v108, qword_28140D680);
    v109 = sub_22B3F6444();
    v110 = sub_22B3F68A4();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_22B3A7000, v109, v110, "Returning NOP categorization result for Saas sender", v111, 2u);
      MEMORY[0x231890C40](v111, -1, -1);
    }

    v113 = *(v14 + 2);
    v112 = *(v14 + 3);
    if (v113 >= v112 >> 1)
    {
      v14 = sub_22B3C1CD8((v112 > 1), v113 + 1, 1, v14);
    }

    *(v14 + 2) = v113 + 1;
    v14[v113 + 32] = 28;
    v114 = sub_22B3F6444();
    v115 = sub_22B3F68A4();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_22B3A7000, v114, v115, "Returning NOP categorization result for SA sender", v116, 2u);
      MEMORY[0x231890C40](v116, -1, -1);
    }

    v97 = v123 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    goto LABEL_29;
  }

  *&v135 = v121;
  *(&v135 + 1) = v120;
  *&v136 = v119;
  *(&v136 + 1) = v118;
  v137 = v147;
  *&v138 = v148;
  *(&v138 + 1) = v7;
  LOWORD(v139) = v117;
  sub_22B3D6F70(&v135, v126);

  sub_22B3CB69C(v40);
  sub_22B3E3354(v126);
  v41 = v126[0];
  v42 = v126[1];
  v43 = *&v126[2];
  v44 = v146;
  v45 = v123 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  v122 = *&v126[24];
  v124 = *&v126[8];
  swift_beginAccess();
  v46 = (v45 + *(type metadata accessor for BlackPearlLevels(0) + 44));
  v47 = v46[9];
  v49 = v46[7];
  v143 = v46[8];
  v48 = v143;
  v144 = v47;
  v50 = v46[9];
  v145[0] = v46[10];
  *(v145 + 9) = *(v46 + 169);
  v51 = v46[5];
  v53 = v46[3];
  v139 = v46[4];
  v52 = v139;
  v140 = v51;
  v54 = v46[5];
  v55 = v46[7];
  v141 = v46[6];
  v56 = v141;
  v142 = v55;
  v57 = v46[1];
  v58 = v46[3];
  v137 = v46[2];
  v59 = v137;
  v138 = v58;
  v60 = v46[1];
  v135 = *v46;
  v61 = v135;
  v136 = v60;
  *(a2 + 24) = v122;
  *(a2 + 8) = v124;
  *(a2 + 176) = v48;
  *(a2 + 192) = v50;
  *(a2 + 208) = v46[10];
  *(a2 + 217) = *(v46 + 169);
  *(a2 + 112) = v52;
  *(a2 + 128) = v54;
  *(a2 + 144) = v56;
  *(a2 + 160) = v49;
  *a2 = v41;
  *(a2 + 1) = v42;
  *(a2 + 2) = v43;
  *(a2 + 40) = v44;
  *(a2 + 48) = v61;
  *(a2 + 64) = v57;
  *(a2 + 80) = v59;
  *(a2 + 96) = v53;
  v62 = &v135;
  v63 = v125;
  return sub_22B3A9F54(v62, v63);
}

uint64_t sub_22B3D9CD0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE458, &qword_22B3F9BF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v46 - v5;
  v47 = a1;
  v48 = a2;
  v51 = 0x796C706572;
  v52 = 0xE500000000000000;
  v7 = sub_22B3F62E4();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  sub_22B3B4258();
  sub_22B3F6A14();
  v10 = v9;
  v12 = v11;
  result = sub_22B3B4B3C(v6, &qword_27D8BE458, &qword_22B3F9BF8);
  if (v12)
  {
    goto LABEL_9;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 >> 14 > 4 * v14)
  {
    __break(1u);
  }

  else
  {
    v46[0] = v10 >> 14;
    v47 = a1;
    v48 = a2;
    v51 = 64;
    v52 = 0xE100000000000000;
    v8(v6, 1, 1, v7);
    v15 = sub_22B3F6A14();
    v17 = v16;
    result = sub_22B3B4B3C(v6, &qword_27D8BE458, &qword_22B3F9BF8);
    if (v17)
    {
      goto LABEL_9;
    }

    if (v46[0] <= v15 >> 14)
    {
      v18 = sub_22B3F6764();
      v19 = MEMORY[0x23188FF00](v18);
      v21 = v20;

      v22 = MEMORY[0x23188FFF0](v19, v21);

      v23 = *(v46[1] + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_alphaNumericRegex);
      v24 = sub_22B3F6564();

      v25 = [v23 firstMatchInString:v24 options:0 range:{0, v22}];

      if (v25)
      {

        v26 = sub_22B3F6764();
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v47 = sub_22B3D5918(v15, a1, a2);
        v48 = v33;
        v49 = v34;
        v50 = v35;
        v36 = MEMORY[0x23188FF00](v26, v28, v30, v32);
        v38 = v37;

        v51 = v36;
        v52 = v38;
        sub_22B3C0304();
        sub_22B3F6664();
        v39 = sub_22B3F69C4();
        v41 = v40;
        v43 = v42;
        v45 = v44;

        a1 = MEMORY[0x23188FF00](v39, v41, v43, v45);

        return a1;
      }

LABEL_9:

      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3DA088@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v4 = (v3 + *(type metadata accessor for BlackPearlLevels(0) + 44));
  v5 = v4[9];
  v6 = v4[7];
  v28 = v4[8];
  v29 = v5;
  v7 = v4[9];
  v30[0] = v4[10];
  *(v30 + 9) = *(v4 + 169);
  v8 = v4[5];
  v10 = v4[3];
  v24 = v4[4];
  v9 = v24;
  v25 = v8;
  v11 = v4[5];
  v12 = v4[7];
  v26 = v4[6];
  v13 = v26;
  v27 = v12;
  v14 = v4[1];
  v15 = v4[3];
  v22 = v4[2];
  v16 = v22;
  v23 = v15;
  v17 = v4[1];
  v21[0] = *v4;
  v18 = v21[0];
  v21[1] = v17;
  a1[8] = v28;
  a1[9] = v7;
  a1[10] = v4[10];
  *(a1 + 169) = *(v4 + 169);
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v6;
  *a1 = v18;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v10;
  return sub_22B3A9F54(v21, v20);
}

__n128 sub_22B3DA168@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (*&v12[0] = *(a1 + 16), *(&v12[0] + 1) = v3, v14 = 64, v15 = 0xE100000000000000, sub_22B3B4258(), (sub_22B3F6A24() & 1) != 0))
  {
    sub_22B3E52FC(v12);
  }

  else
  {
    type metadata accessor for DecisionResultBuilder();
    static DecisionResultBuilder.buildErrorResult()(v12);
    nullsub_1();
  }

  v5 = v13[0];
  *(a2 + 192) = v12[12];
  *(a2 + 208) = v5;
  *(a2 + 217) = *(v13 + 9);
  v6 = v12[9];
  *(a2 + 128) = v12[8];
  *(a2 + 144) = v6;
  v7 = v12[11];
  *(a2 + 160) = v12[10];
  *(a2 + 176) = v7;
  v8 = v12[5];
  *(a2 + 64) = v12[4];
  *(a2 + 80) = v8;
  v9 = v12[7];
  *(a2 + 96) = v12[6];
  *(a2 + 112) = v9;
  v10 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v10;
  result = v12[3];
  *(a2 + 32) = v12[2];
  *(a2 + 48) = result;
  return result;
}

void sub_22B3DA254(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v11 = v5 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v12 = type metadata accessor for BlackPearlModel(0);
  if ((*(v11 + *(v12 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v13 = *(v11 + *(v12 + 32));
  swift_endAccess();
  if (!v13)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v69 = sub_22B3F6464();
    __swift_project_value_buffer(v69, qword_28140D680);
    v70 = sub_22B3F6444();
    v71 = sub_22B3F68C4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_22B3A7000, v70, v71, "Model creation failed", v72, 2u);
      MEMORY[0x231890C40](v72, -1, -1);
    }

    goto LABEL_38;
  }

  v14 = v13;
  v15 = sub_22B3E3A98(a4, a5, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 72) = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
  *(inited + 48) = v15;
  v17 = v15;
  v18 = sub_22B3CBFB4(inited);
  swift_setDeallocating();
  sub_22B3B4B3C(inited + 32, &qword_27D8BE348, &unk_22B3F8F88);
  v19 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v20 = 0;
  v88 = v14;
  v21 = sub_22B3E0390(v18);
  *&v91[0] = 0;
  v22 = [v14 predictionFromFeatures:v21 error:v91];
  if (!v22)
  {
    v73 = *&v91[0];
    v74 = sub_22B3F6064();

    v75 = v21;
    v76 = v74;
    swift_willThrow();

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v77 = sub_22B3F6464();
    __swift_project_value_buffer(v77, qword_28140D680);
    v78 = v74;
    v79 = sub_22B3F6444();
    v80 = sub_22B3F68C4();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      v83 = v76;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v84;
      *v82 = v84;
      _os_log_impl(&dword_22B3A7000, v79, v80, "Model execution failed %@", v81, 0xCu);
      sub_22B3B4B3C(v82, &qword_27D8BE078, &qword_22B3F8C50);
      MEMORY[0x231890C40](v82, -1, -1);
      MEMORY[0x231890C40](v81, -1, -1);
    }

    goto LABEL_38;
  }

  v23 = v22;
  v24 = *&v91[0];
  v25 = sub_22B3F6564();
  v26 = [v23 featureValueForName_];

  if (!v26)
  {
    goto LABEL_38;
  }

  v27 = (v11 + *(type metadata accessor for BlackPearlLevels(0) + 44));
  v28 = v27[9];
  v91[8] = v27[8];
  v91[9] = v28;
  v92[0] = v27[10];
  *(v92 + 9) = *(v27 + 169);
  v29 = v27[5];
  v91[4] = v27[4];
  v91[5] = v29;
  v30 = v27[7];
  v91[6] = v27[6];
  v91[7] = v30;
  v31 = v27[3];
  v91[2] = v27[2];
  v91[3] = v31;
  v32 = v27[1];
  v91[0] = *v27;
  v91[1] = v32;
  sub_22B3A9F54(v91, &v90);
  v33 = sub_22B3F6724();
  sub_22B3BE034(v91);
  if (v33)
  {
    v34 = [v26 dictionaryValue];
    sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
    v35 = sub_22B3F6524();

    v36 = sub_22B3E4F00(v35);

    goto LABEL_10;
  }

  v37 = [v26 multiArrayValue];
  if (!v37)
  {
LABEL_38:
    sub_22B3F6B14();
    __break(1u);
    return;
  }

  v38 = v37;
  v36 = sub_22B3E4510(v37);

LABEL_10:
  v85 = v21;
  v86 = v17;

  v39 = v36[2];
  if (v39)
  {
    v89 = v26;
    v40 = sub_22B3E04FC(v39, 0);
    v41 = sub_22B3E23D8(&v90, v40 + 4, v39, v36);

    sub_22B3E4EF8();
    if (v41 != v39)
    {
      __break(1u);
    }

    v20 = 0;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v90 = v40;
  sub_22B3E0FA4(&v90);

  v42 = v90;
  if (!v90[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v20 = v90[5];
  v89 = v90[4];
  v6 = v90[6];
  v43 = qword_28140BFC8;

  if (v43 != -1)
  {
LABEL_26:
    swift_once();
  }

  v44 = sub_22B3F6464();
  __swift_project_value_buffer(v44, qword_28140D680);

  v45 = sub_22B3F6444();
  v46 = sub_22B3F68B4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v90 = v48;
    *v47 = 136315138;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
    v50 = MEMORY[0x2318900A0](v42, v49);
    v51 = v26;
    v53 = v52;

    v54 = v50;
    v14 = v88;
    v55 = sub_22B3BDABC(v54, v53, &v90);
    v26 = v51;

    *(v47 + 4) = v55;
    _os_log_impl(&dword_22B3A7000, v45, v46, "Sorted Category: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x231890C40](v48, -1, -1);
    MEMORY[0x231890C40](v47, -1, -1);
  }

  else
  {
  }

  v56 = sub_22B3F6444();
  v57 = sub_22B3F68B4();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v90 = v59;
    *v58 = 136315394;

    v60 = sub_22B3BDABC(v89, v20, &v90);

    *(v58 + 4) = v60;
    *(v58 + 12) = 2048;
    *(v58 + 14) = v6;
    _os_log_impl(&dword_22B3A7000, v56, v57, "Top Category: %s Value %f ", v58, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x231890C40](v59, -1, -1);
    MEMORY[0x231890C40](v58, -1, -1);
  }

  v61 = sub_22B3F6444();
  v62 = sub_22B3F68A4();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v90 = v64;
    *v63 = 136315138;
    v65 = sub_22B3F6534();
    v67 = v66;

    v68 = sub_22B3BDABC(v65, v67, &v90);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_22B3A7000, v61, v62, "Category Scores: %s ", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x231890C40](v64, -1, -1);
    MEMORY[0x231890C40](v63, -1, -1);
  }

  else
  {
  }

  static Category.getCategory(for:)(&v90);
  swift_unknownObjectRelease();

  *a1 = v90;
}

void *sub_22B3DAD58(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1 && *a1)
  {

    goto LABEL_7;
  }

  v3 = sub_22B3F6C84();

  if (v3)
  {
LABEL_7:
    v4 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v5 = v4 + *(type metadata accessor for BlackPearlLevels(0) + 20);
    v6 = type metadata accessor for BlackPearlModel(0);
    if ((*(v5 + *(v6 + 36)) & 1) == 0)
    {
      BlackPearlModel.loadModel()();
    }

    v7 = *(v5 + *(v6 + 32));
    swift_endAccess();
    if (v7)
    {
      goto LABEL_33;
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B3F6464();
    __swift_project_value_buffer(v8, qword_28140D680);
    v9 = sub_22B3F6444();
    v10 = sub_22B3F68C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v48[0] = v12;
      *v11 = 136315138;
      v13 = 0xE500000000000000;
      v14 = 0xD000000000000011;
      v15 = 0x800000022B3FA140;
      if (v2 != 2)
      {
        v14 = 0x726F707075536E75;
        v15 = 0xEB00000000646574;
      }

      if (v2)
      {
        v16 = 0x6E6974616CLL;
      }

      else
      {
        v16 = 0x6873696C676E65;
      }

      if (!v2)
      {
        v13 = 0xE700000000000000;
      }

      if (v2 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      if (v2 <= 1)
      {
        v18 = v13;
      }

      else
      {
        v18 = v15;
      }

      v19 = sub_22B3BDABC(v17, v18, v48);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_22B3A7000, v9, v10, "Model not available %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x231890C40](v12, -1, -1);
      MEMORY[0x231890C40](v11, -1, -1);
    }

    return 0;
  }

  if (v2 == 2)
  {
  }

  else
  {
    v20 = sub_22B3F6C84();

    if ((v20 & 1) == 0)
    {
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v25 = sub_22B3F6464();
      __swift_project_value_buffer(v25, qword_28140D680);
      v26 = sub_22B3F6444();
      v27 = sub_22B3F68C4();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_68;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 136315138;
      v30 = 0xE500000000000000;
      if (v2)
      {
        v31 = 0x6E6974616CLL;
      }

      else
      {
        v31 = 0x6873696C676E65;
      }

      if (!v2)
      {
        v30 = 0xE700000000000000;
      }

      if (v2 <= 1)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0x726F707075536E75;
      }

      if (v2 <= 1)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0xEB00000000646574;
      }

      v34 = sub_22B3BDABC(v32, v33, v48);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_22B3A7000, v26, v27, "Unsupported Model %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x231890C40](v29, -1, -1);
      v35 = v28;
      goto LABEL_67;
    }
  }

  v21 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v22 = v21 + *(type metadata accessor for BlackPearlLevels(0) + 24);
  v23 = type metadata accessor for BlackPearlModel(0);
  if ((*(v22 + *(v23 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v7 = *(v22 + *(v23 + 32));
  swift_endAccess();
  if (!v7)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v36 = sub_22B3F6464();
    __swift_project_value_buffer(v36, qword_28140D680);
    v26 = sub_22B3F6444();
    v37 = sub_22B3F68C4();
    if (!os_log_type_enabled(v26, v37))
    {
      goto LABEL_68;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48[0] = v39;
    *v38 = 136315138;
    v40 = 0xE500000000000000;
    v41 = 0xD000000000000011;
    if (v2 == 2)
    {
      v42 = 0x800000022B3FA140;
    }

    else
    {
      v41 = 0x726F707075536E75;
      v42 = 0xEB00000000646574;
    }

    if (v2)
    {
      v43 = 0x6E6974616CLL;
    }

    else
    {
      v43 = 0x6873696C676E65;
    }

    if (!v2)
    {
      v40 = 0xE700000000000000;
    }

    if (v2 <= 1)
    {
      v44 = v43;
    }

    else
    {
      v44 = v41;
    }

    if (v2 <= 1)
    {
      v45 = v40;
    }

    else
    {
      v45 = v42;
    }

    v46 = sub_22B3BDABC(v44, v45, v48);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_22B3A7000, v26, v37, "Model not available %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x231890C40](v39, -1, -1);
    v35 = v38;
LABEL_67:
    MEMORY[0x231890C40](v35, -1, -1);
LABEL_68:

    return 0;
  }

LABEL_33:
  v24 = v7;
  return v7;
}

void sub_22B3DB3B8(_BYTE *a1, void *a2, _BYTE *a3)
{
  v5 = v3;
  v97 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  LOBYTE(v95[0]) = *a3;
  v8 = sub_22B3DAD58(v95);
  if (!v8)
  {
    v32 = 0xEB00000000646574;
    v33 = 0x726F707075536E75;
    v31 = 0x6873696C676E65;
    if (v7 <= 1 || v7 == 2)
    {
      v65 = sub_22B3F6C84();

      if ((v65 & 1) == 0)
      {
        *a1 = 1;
        return;
      }
    }

    else
    {
    }

    if (qword_28140BFC8 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_47;
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = 0x7365727574616566;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
  *(inited + 48) = a2;
  v11 = a2;
  v12 = sub_22B3CBFB4(inited);
  swift_setDeallocating();
  sub_22B3B4B3C(inited + 32, &qword_27D8BE348, &unk_22B3F8F88);
  v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v14 = 0;
  v15 = sub_22B3E0390(v12);
  *&v95[0] = 0;
  v16 = [v9 predictionFromFeatures:v15 error:v95];
  v17 = *&v95[0];
  if (!v16)
  {
    v78 = *&v95[0];
    v79 = sub_22B3F6064();

    v80 = v79;
    swift_willThrow();

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v81 = sub_22B3F6464();
    __swift_project_value_buffer(v81, qword_28140D680);
    v82 = v79;
    v83 = sub_22B3F6444();
    v84 = sub_22B3F68C4();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      v87 = v80;
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 4) = v88;
      *v86 = v88;
      _os_log_impl(&dword_22B3A7000, v83, v84, "Model execution failed %@", v85, 0xCu);
      sub_22B3B4B3C(v86, &qword_27D8BE078, &qword_22B3F8C50);
      MEMORY[0x231890C40](v86, -1, -1);
      MEMORY[0x231890C40](v85, -1, -1);
    }

    goto LABEL_53;
  }

  v90 = v15;
  v18 = v16;
  swift_unknownObjectRetain();
  v19 = v17;
  v20 = sub_22B3F6564();
  v21 = [v18 featureValueForName_];

  swift_unknownObjectRelease();
  v92 = v21;
  if (!v21)
  {
LABEL_53:
    sub_22B3F6B14();
    __break(1u);
    return;
  }

  v22 = v5 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v23 = (v22 + *(type metadata accessor for BlackPearlLevels(0) + 44));
  v24 = v23[9];
  v95[8] = v23[8];
  v95[9] = v24;
  v96[0] = v23[10];
  *(v96 + 9) = *(v23 + 169);
  v25 = v23[5];
  v95[4] = v23[4];
  v95[5] = v25;
  v26 = v23[7];
  v95[6] = v23[6];
  v95[7] = v26;
  v27 = v23[3];
  v95[2] = v23[2];
  v95[3] = v27;
  v28 = v23[1];
  v95[0] = *v23;
  v95[1] = v28;
  sub_22B3A9F54(v95, v94);
  LOBYTE(v22) = sub_22B3F6724();
  sub_22B3BE034(v95);
  if ((v22 & 1) == 0)
  {
    v34 = [v21 multiArrayValue];
    if (v34)
    {
      v35 = v34;
      v31 = sub_22B3E4510(v34);

      goto LABEL_10;
    }

    goto LABEL_53;
  }

  v29 = [v21 dictionaryValue];
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  v30 = sub_22B3F6524();

  v31 = sub_22B3E4F00(v30);

LABEL_10:

  v36 = *(v31 + 16);
  v91 = v9;
  if (!v36)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:
    v94[0] = v37;
    sub_22B3E0FA4(v94);

    v39 = v94[0];
    if (*(v94[0] + 16))
    {
      v7 = *(v94[0] + 32);
      v14 = *(v94[0] + 40);
      v4 = *(v94[0] + 48);
      v40 = qword_28140BFC8;

      if (v40 == -1)
      {
LABEL_16:
        v41 = sub_22B3F6464();
        __swift_project_value_buffer(v41, qword_28140D680);

        v42 = sub_22B3F6444();
        v43 = sub_22B3F68B4();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v89 = v7;
          v45 = swift_slowAlloc();
          v94[0] = v45;
          *v44 = 136315138;
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
          v47 = MEMORY[0x2318900A0](v39, v46);
          v49 = v48;

          v50 = sub_22B3BDABC(v47, v49, v94);

          *(v44 + 4) = v50;
          _os_log_impl(&dword_22B3A7000, v42, v43, "Sorted Category: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          v51 = v45;
          v7 = v89;
          MEMORY[0x231890C40](v51, -1, -1);
          MEMORY[0x231890C40](v44, -1, -1);
        }

        else
        {
        }

        v52 = sub_22B3F6444();
        v53 = sub_22B3F68B4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v94[0] = v55;
          *v54 = 136315394;

          v56 = sub_22B3BDABC(v7, v14, v94);

          *(v54 + 4) = v56;
          *(v54 + 12) = 2048;
          *(v54 + 14) = v4;
          _os_log_impl(&dword_22B3A7000, v52, v53, "Top Category: %s Value %f ", v54, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v55);
          MEMORY[0x231890C40](v55, -1, -1);
          MEMORY[0x231890C40](v54, -1, -1);
        }

        v57 = sub_22B3F6444();
        v58 = sub_22B3F68A4();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v94[0] = v60;
          *v59 = 136315138;
          v61 = sub_22B3F6534();
          v63 = v62;

          v64 = sub_22B3BDABC(v61, v63, v94);

          *(v59 + 4) = v64;
          _os_log_impl(&dword_22B3A7000, v57, v58, "Category Scores: %s ", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x231890C40](v60, -1, -1);
          MEMORY[0x231890C40](v59, -1, -1);
        }

        else
        {
        }

        static Category.getCategory(for:)(v94);

        swift_unknownObjectRelease();
        *a1 = v94[0];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_16;
  }

  v37 = sub_22B3E04FC(v36, 0);
  v38 = sub_22B3E23D8(v94, v37 + 4, v36, v31);
  v7 = v94[0];
  v33 = v94[3];
  v32 = v31;

  sub_22B3E4EF8();
  if (v38 == v36)
  {
    v14 = 0;
    goto LABEL_14;
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_30:
  v66 = sub_22B3F6464();
  __swift_project_value_buffer(v66, qword_28140D680);
  v67 = sub_22B3F6444();
  v68 = sub_22B3F68C4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v95[0] = v70;
    *v69 = 136315138;
    v71 = 0xD000000000000011;
    v72 = 0x800000022B3FA140;
    if (v7 != 2)
    {
      v71 = v33;
      v72 = v32;
    }

    v73 = 0xE700000000000000;
    v74 = 0x6E6974616CLL;
    if (v7)
    {
      v73 = 0xE500000000000000;
    }

    else
    {
      v74 = v31;
    }

    if (v7 <= 1)
    {
      v75 = v74;
    }

    else
    {
      v75 = v71;
    }

    if (v7 <= 1)
    {
      v76 = v73;
    }

    else
    {
      v76 = v72;
    }

    v77 = sub_22B3BDABC(v75, v76, v95);

    *(v69 + 4) = v77;
    _os_log_impl(&dword_22B3A7000, v67, v68, "Unsupported Model %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x231890C40](v70, -1, -1);
    MEMORY[0x231890C40](v69, -1, -1);
  }

  *a1 = 0;
}

uint64_t sub_22B3DBF88()
{
  v1 = sub_22B3B4258();
  result = MEMORY[0x231890330](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v1);
  v3 = result;
  v4 = 0;
  v5 = (v0 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_mbertDomainMap);
  v6 = *(result + 16);
  while (1)
  {
    if (v6 == v4)
    {

      return 0;
    }

    if (*(v3 + 16) < v6)
    {
      break;
    }

    v7 = v4 + 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE100, &qword_22B3F7DB0);
    sub_22B3D0990(&qword_28140BF20, &qword_27D8BE100, &qword_22B3F7DB0, MEMORY[0x277D83FB0]);
    sub_22B3B63C0();
    v8 = sub_22B3F6774();
    v10 = v9;

    v11 = v5[3];
    v12 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v11);
    v13 = (*(v12 + 16))(v8, v10, v11, v12);
    LOBYTE(v11) = v14;

    v4 = v7;
    if ((v11 & 1) == 0)
    {

      return v13;
    }
  }

  __break(1u);
  return result;
}

id sub_22B3DC148(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t a6)
{
  v8 = v6;
  v14 = *(v8 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_bertEmbeddings);
  LOBYTE(v39) = *a5;

  v15 = a2;
  v16 = v14;
  sub_22B3CA9DC(a1, v15, &v39, a6);

  if (v7)
  {
    return v16;
  }

  v17 = sub_22B3E475C();
  LOBYTE(v39) = 0;
  v20 = sub_22B3CA9DC(v17, v18, &v39, *MEMORY[0x277CD8708]);

  v39 = v20;

  sub_22B3CB2C8(v21);
  v22 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2B0, &qword_22B3F9C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  v24 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v24 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v36 = v22;
    v37 = inited;
    v25 = sub_22B3B6414(a3, a4);
    v27 = sub_22B3B568C(v25, v26);

    v28 = v27;
    v22 = v36;
    inited = v37;
  }

  else
  {
    v28 = -1.0;
  }

  *(inited + 32) = v28;
  v38 = v22;
  sub_22B3CB2C8(inited);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_22B3F79B0;
  sub_22B3B6414(a3, a4);
  v30 = sub_22B3DBF88();

  *(v29 + 32) = v30;
  sub_22B3CB2C8(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22B3F9AA0;
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  *(v31 + 32) = sub_22B3F6964();
  *(v31 + 40) = sub_22B3F6964();
  v32 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v16 = sub_22B3E0294(v31, 65600);
  if (v16)
  {

    v33 = v38[2];
    if (v33)
    {
      for (i = 0; i != v33; ++i)
      {
        v35 = sub_22B3F6804();
        [v16 setObject:v35 atIndexedSubscript:i];
      }
    }

    return v16;
  }

  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t sub_22B3DC4CC(uint64_t a1, void *a2)
{
  v5 = v3;
  v6 = a2;
  v8 = sub_22B3B5BCC(a1, a2);
  v10 = v9;
  v11 = v2[2];
  v102[0] = v2[1];
  v102[1] = v11;
  v12 = v2[4];
  v14 = v2[1];
  v13 = v2[2];
  v102[2] = v2[3];
  v102[3] = v12;
  v98 = v14;
  v99 = v13;
  v15 = v2[4];
  v100 = v2[3];
  v101 = v15;
  sub_22B3CEED0(v102, v97);
  isUniquelyReferenced_nonNull_native = sub_22B3D204C(v8, v10);
  v103[0] = v98;
  v103[1] = v99;
  v103[2] = v100;
  v103[3] = v101;
  sub_22B3CEF90(v103);
  v95 = a1;
  *&v98 = a1;
  *(&v98 + 1) = v6;
  v17 = sub_22B3B4258();
  v18 = MEMORY[0x231890330](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v17);
  if (*(v18 + 16) < 2uLL)
  {

    sub_22B3E52A8();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return isUniquelyReferenced_nonNull_native;
  }

  v20 = sub_22B3F69A4();
  v22 = v21;

  *&v98 = v20;
  *(&v98 + 1) = v22;
  if (!*(v18 + 16))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
    goto LABEL_8;
  }

  v23 = sub_22B3F69A4();
  v25 = v24;

  v97[0] = v23;
  v97[1] = v25;
  v26 = sub_22B3F6A24();

  if (v26)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v96 = sub_22B3CBEB8(MEMORY[0x277D84F90]);
  if (qword_28140BFC8 != -1)
  {
    goto LABEL_64;
  }

LABEL_8:
  v27 = sub_22B3F6464();
  __swift_project_value_buffer(v27, qword_28140D680);

  v28 = sub_22B3F6444();
  v29 = sub_22B3F68B4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = *(isUniquelyReferenced_nonNull_native + 16);

    _os_log_impl(&dword_22B3A7000, v28, v29, "SenderHashingSize: %ld", v30, 0xCu);
    MEMORY[0x231890C40](v30, -1, -1);
  }

  else
  {
  }

  v31 = *(isUniquelyReferenced_nonNull_native + 16);
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    *&v98 = MEMORY[0x277D84F90];
    sub_22B3B799C(0, v31, 0);
    v32 = v98;
    v33 = (isUniquelyReferenced_nonNull_native + 32);
    v34 = *(v98 + 16);
    do
    {
      v36 = *v33++;
      v35 = v36;
      *&v98 = v32;
      v37 = *(v32 + 24);
      if (v34 >= v37 >> 1)
      {
        sub_22B3B799C((v37 > 1), v34 + 1, 1);
        v32 = v98;
      }

      *(v32 + 16) = v34 + 1;
      *(v32 + 4 * v34++ + 32) = v35;
      --v31;
    }

    while (v31);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE290, &unk_22B3F88E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = v4;
  *&v98 = v32;

  sub_22B3CB4C4(inited);
  v39 = v98;
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_22B3F79B0;
  v41 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v41 = v95 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = v40;
    v43 = sub_22B3B6414(v95, v6);
    v45 = sub_22B3B568C(v43, v44);

    v40 = v42;
    v46 = v45;
  }

  else
  {
    v46 = -1.0;
  }

  *(v40 + 32) = v46;
  *&v98 = v39;
  sub_22B3CB4C4(v40);
  v47 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_22B3F9AA0;
  v49 = sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  *(v48 + 32) = sub_22B3F6964();
  *(v48 + 40) = sub_22B3F6964();
  v50 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v51 = v5;
  v52 = sub_22B3E0294(v48, 65600);
  if (v5)
  {
LABEL_69:

    goto LABEL_70;
  }

  v95 = v52;
  if (!v52)
  {
LABEL_70:
    sub_22B3F6B14();
    __break(1u);

    __break(1u);
    return result;
  }

  v53 = *(v47 + 16);
  isUniquelyReferenced_nonNull_native = v52;
  if (v53)
  {
    for (i = 0; i != v53; ++i)
    {
      v55 = sub_22B3F6834();
      [v95 setObject:v55 atIndexedSubscript:i];
    }
  }

  v56 = [v95 count];
  v57 = v56 - 1;
  if (__OFSUB__(v56, 1))
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    sub_22B3F6CC4();
    __break(1u);
    goto LABEL_69;
  }

  if ((v57 & 0x8000000000000000) != 0)
  {
    goto LABEL_66;
  }

  v5 = 0;
  v6 = &off_2786FD000;
  while (1)
  {
    v58 = [isUniquelyReferenced_nonNull_native *(v6 + 1336)];
    v59 = sub_22B3F6964();
    v60 = sub_22B3F6974();

    if (v60)
    {
      goto LABEL_48;
    }

    v61 = v6;
    v62 = [isUniquelyReferenced_nonNull_native *(v6 + 1336)];
    if (v62)
    {
      v6 = v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v98 = v96;
      v64 = sub_22B3B7BC0(v5);
      v65 = *(v96 + 16);
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_61;
      }

      v68 = v63;
      if (*(v96 + 24) >= v67)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B3B9A54();
        }
      }

      else
      {
        sub_22B3B89F4(v67, isUniquelyReferenced_nonNull_native);
        v69 = sub_22B3B7BC0(v5);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_68;
        }

        v64 = v69;
      }

      isUniquelyReferenced_nonNull_native = v95;
      v76 = v98;
      v96 = v98;
      if (v68)
      {
        v77 = *(v98 + 56);
        v78 = *(v77 + 8 * v64);
        *(v77 + 8 * v64) = v6;

LABEL_44:
        v6 = v61;
        if (v57 == v5)
        {
          break;
        }

        goto LABEL_49;
      }

      *(v98 + 8 * (v64 >> 6) + 64) |= 1 << v64;
      *(v76[6] + 8 * v64) = v5;
      *(v76[7] + 8 * v64) = v6;
      v79 = v76[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (v80)
      {
        goto LABEL_62;
      }

      v76[2] = v81;
      v6 = v61;
LABEL_48:
      if (v57 == v5)
      {
        break;
      }

      goto LABEL_49;
    }

    v71 = v96;
    v72 = sub_22B3B7BC0(v5);
    if ((v73 & 1) == 0)
    {
      goto LABEL_44;
    }

    v74 = v72;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = v96;
    if (!v75)
    {
      sub_22B3B9A54();
      v71 = v98;
    }

    v96 = v71;
    sub_22B3C8518(v74, v71);
    if (v57 == v5)
    {
      break;
    }

LABEL_49:
    v80 = __OFADD__(v5++, 1);
    if (v80)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }
  }

  v82 = *(v96 + 16);
  if (v82)
  {
    v49 = sub_22B3E0478(*(v96 + 16), 0);
    v83 = sub_22B3E2280(&v98, v49 + 4, v82, v96);
    v51 = v98;

    sub_22B3E4EF8();
    if (v83 != v82)
    {
      goto LABEL_67;
    }

    isUniquelyReferenced_nonNull_native = v95;
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  *&v98 = v49;
  sub_22B3E0E50(&v98);

  v84 = v98;

  v85 = sub_22B3F6444();
  v86 = sub_22B3F68B4();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v98 = v88;
    *v87 = 136315138;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE440, &qword_22B3F9BE0);
    v90 = MEMORY[0x2318900A0](v84, v89);
    v92 = v91;

    v93 = sub_22B3BDABC(v90, v92, &v98);
    isUniquelyReferenced_nonNull_native = v95;

    *(v87 + 4) = v93;
    _os_log_impl(&dword_22B3A7000, v85, v86, "Sender input: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x231890C40](v88, -1, -1);
    MEMORY[0x231890C40](v87, -1, -1);
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

void sub_22B3DCEC0(char *a1, uint64_t a2, void *a3)
{
  v42[3] = *MEMORY[0x277D85DE8];
  v7 = v3 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v8 = type metadata accessor for BlackPearlLevels(0);
  v9 = v7 + *(v8 + 28);
  v10 = type metadata accessor for BlackPearlModel(0);
  if ((*(v9 + *(v10 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v11 = *(v9 + *(v10 + 32));
  swift_endAccess();
  if (!v11)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v36 = sub_22B3F6464();
    __swift_project_value_buffer(v36, qword_28140D680);
    v37 = sub_22B3F6444();
    v38 = sub_22B3F68C4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22B3A7000, v37, v38, "Could not create sender model", v39, 2u);
      MEMORY[0x231890C40](v39, -1, -1);
    }

LABEL_26:
    sub_22B3F6B14();
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = sub_22B3DC4CC(a2, a3);
  if (v4)
  {
    v14 = v12;
LABEL_7:

    return;
  }

  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 72) = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
  *(inited + 48) = v15;
  v14 = v15;
  v17 = sub_22B3CBFB4(inited);
  swift_setDeallocating();
  sub_22B3B4B3C(inited + 32, &qword_27D8BE348, &unk_22B3F8F88);
  v18 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v19 = sub_22B3E0390(v17);
  v20 = v19;
  v42[0] = 0;
  v21 = [v12 predictionFromFeatures:v19 error:v42];
  if (!v21)
  {
    v35 = v42[0];
    sub_22B3F6064();

    swift_willThrow();
    goto LABEL_7;
  }

  v22 = v21;
  v23 = v42[0];
  v24 = sub_22B3F6564();
  v25 = [v22 featureValueForName_];

  if (!v25)
  {
    goto LABEL_26;
  }

  v26 = [v25 multiArrayValue];

  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = [v26 objectAtIndexedSubscript_];

  if (!v27)
  {
    goto LABEL_26;
  }

  v40 = v27;
  sub_22B3F67F4();
  v29 = v28;
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v30 = sub_22B3F6464();
  __swift_project_value_buffer(v30, qword_28140D680);
  v31 = sub_22B3F6444();
  v32 = sub_22B3F68A4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v29;
    _os_log_impl(&dword_22B3A7000, v31, v32, "Sender Scores: %f", v33, 0xCu);
    MEMORY[0x231890C40](v33, -1, -1);
  }

  swift_unknownObjectRelease();
  if (*(v7 + *(v8 + 48) + 40) >= v29)
  {
    v34 = 17;
  }

  else
  {
    v34 = 18;
  }

  *a1 = v34;
}

uint64_t sub_22B3DD400(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B3B4258();
  v5 = MEMORY[0x231890330](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v4);
  if (v5[2] > 1uLL)
  {
    v39 = v2;
    v8 = v5[4];
    v9 = v5[5];
    v11 = v5[6];
    v10 = v5[7];

    v12 = MEMORY[0x23188FF00](v8, v9, v11, v10);
    v14 = v13;

    v15 = MEMORY[0x23188FFF0](v12, v14);

    if (sub_22B3F69A4() == 0xD000000000000018 && 0x800000022B3FBF30 == v16)
    {
      goto LABEL_11;
    }

    v18 = sub_22B3F6C84();

    if (v18)
    {
      goto LABEL_12;
    }

    if (sub_22B3F69A4() == 0x632E64756F6C6369 && v19 == 0xEA00000000006D6FLL)
    {
LABEL_11:
    }

    else
    {
      v33 = sub_22B3F6C84();

      if ((v33 & 1) == 0)
      {
        v34 = sub_22B3F69A4();
        v36 = v35;

        if (v34 != 0xD000000000000012 || 0x800000022B3FBF50 != v36)
        {
          v37 = sub_22B3F6C84();

          if ((v37 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }
      }
    }

LABEL_12:

LABEL_13:
    v20 = *(v39 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_privateRelayRegex);
    v21 = sub_22B3F6564();
    v22 = v15;
    v23 = v21;
    v24 = [v20 firstMatchInString:v21 options:0 range:{0, v22}];

    if (v24)
    {

      a1 = sub_22B3E36B4();

      return a1;
    }

LABEL_25:

    return a1;
  }

  sub_22B3E52A8();
  v6 = swift_allocError();
  *v7 = 0;
  swift_willThrow();
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v25 = sub_22B3F6464();
  __swift_project_value_buffer(v25, qword_28140D680);
  v26 = v6;
  v27 = sub_22B3F6444();
  v28 = sub_22B3F68C4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = v6;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_22B3A7000, v27, v28, "Failed to resolve private relay email %@", v29, 0xCu);
    sub_22B3B4B3C(v30, &qword_27D8BE078, &qword_22B3F8C50);
    MEMORY[0x231890C40](v30, -1, -1);
    MEMORY[0x231890C40](v29, -1, -1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_22B3DD884(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    if (result)
    {
      v3 = *(a2 + 16);
      if (v3)
      {
        v4 = 0;
        v5 = 0;
        v6 = a2 + 56;
        v35 = *(a2 + 16);
        v31 = v3 - 1;
        v7 = MEMORY[0x277D84F90];
        v34 = MEMORY[0x277D84F90];
        v36 = result;
        v32 = a2 + 56;
        while (1)
        {
          v33 = v5;
          v8 = (v6 + 32 * v4);
          while (1)
          {
            if (v4 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v9 = *(v8 - 3);
            v10 = *(v8 - 2);
            v12 = *(v8 - 1);
            v11 = *v8;
            v13 = v4 + 1;
            v14 = *(v7 + 16);
            if (v14 >= result)
            {
              break;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22B3B797C(0, v14 + 1, 1);
            }

            v16 = *(v7 + 16);
            v15 = *(v7 + 24);
            if (v16 >= v15 >> 1)
            {
              sub_22B3B797C((v15 > 1), v16 + 1, 1);
            }

            *(v7 + 16) = v16 + 1;
            v17 = (v7 + 32 * v16);
            v17[4] = v9;
            v17[5] = v10;
            v17[6] = v12;
            v17[7] = v11;
            v8 += 4;
            v4 = v13;
            result = v36;
            v2 = a2;
            if (v35 == v13)
            {
              goto LABEL_29;
            }
          }

          if (v33 >= v14)
          {
            goto LABEL_33;
          }

          v18 = (v7 + 32 * v33);
          v29 = v18[4];
          v30 = *(v8 - 3);
          v19 = v18[7];
          v27 = v18[6];
          v28 = v18[5];

          v20 = v19;

          v21 = v34;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22B3B797C(0, *(v34 + 16) + 1, 1);
            v21 = v34;
          }

          v23 = *(v21 + 16);
          v22 = *(v21 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_22B3B797C((v22 > 1), v23 + 1, 1);
            v21 = v34;
          }

          *(v21 + 16) = v23 + 1;
          v34 = v21;
          v24 = (v21 + 32 * v23);
          v24[4] = v29;
          v24[5] = v28;
          v24[6] = v27;
          v24[7] = v20;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_22B3E2244(v7);
            v7 = result;
          }

          v2 = a2;
          v6 = v32;
          if (v33 >= *(v7 + 16))
          {
            goto LABEL_34;
          }

          v25 = (v7 + 32 * v33);
          v25[4] = v30;
          v25[5] = v10;
          v25[6] = v12;
          v25[7] = v11;

          result = v36;
          if ((v33 + 1) < v36)
          {
            v5 = v33 + 1;
          }

          else
          {
            v5 = 0;
          }

          if (v31 == v4++)
          {
            goto LABEL_29;
          }
        }
      }

      v34 = MEMORY[0x277D84F90];
LABEL_29:

      return v34;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *sub_22B3DDB0C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsRegex);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3D0, &qword_22B3F95F8);
  sub_22B3D0990(&qword_28140BF88, &qword_27D8BE3D0, &qword_22B3F95F8, MEMORY[0x277D83D30]);
  sub_22B3B4258();
  v4 = sub_22B3F6984();
  v6 = v5;
  v7 = sub_22B3F6564();
  v8 = [v3 matchesInString:v7 options:0 range:{v4, v6}];

  sub_22B3B41C4(0, &qword_28140BF58, 0x277CCACC0);
  v9 = sub_22B3F6794();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_16:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3F0, &qword_22B3F98A0);
    sub_22B3D0990(&qword_28140BFB0, &qword_27D8BE3F0, &qword_22B3F98A0, MEMORY[0x277D83958]);
    v26 = sub_22B3F6544();

    return v26;
  }

  v10 = sub_22B3F6B24();
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_3:
  v28 = MEMORY[0x277D84F90];
  result = sub_22B3B791C(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v9;
    v27 = v9 & 0xC000000000000001;
    v14 = v9;
    v15 = v10;
    do
    {
      if (v27)
      {
        v16 = MEMORY[0x2318903E0](v12, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v12 + 32);
      }

      v17 = v16;
      [v16 range];
      sub_22B3F6894();
      if (v18)
      {

        v19 = 0;
        v20 = 0xE000000000000000;
      }

      else
      {
        v21 = sub_22B3F6764();
        v19 = MEMORY[0x23188FF00](v21);
        v20 = v22;
      }

      v24 = *(v28 + 16);
      v23 = *(v28 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22B3B791C((v23 > 1), v24 + 1, 1);
      }

      ++v12;
      *(v28 + 16) = v24 + 1;
      v25 = v28 + 16 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v20;
      v13 = v14;
    }

    while (v15 != v12);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3DDE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B3F5F94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v44 = a2;
  v41 = 2843740;
  v42 = 0xE300000000000000;
  v39 = 0x737469676964;
  v40 = 0xE600000000000000;
  sub_22B3B4258();
  v8 = sub_22B3F6A04();
  v10 = sub_22B3DDB0C(v8, v9);
  v12 = v11;

  v43 = v10;
  v44 = v12;
  v41 = 95;
  v42 = 0xE100000000000000;
  v39 = 2121504;
  v40 = 0xE300000000000000;
  v13 = sub_22B3F6A04();
  v15 = v14;

  v43 = v13;
  v44 = v15;
  sub_22B3F5F64();
  v16 = sub_22B3F69D4();
  v18 = *(v5 + 8);
  v17 = v5 + 8;
  v37 = v18;
  v38 = v7;
  v18(v7, v4);

  v20 = 0;
  v21 = *(v16 + 16);
  v22 = MEMORY[0x277D84F90];
LABEL_2:
  v23 = (v16 + 40 + 16 * v20);
  while (1)
  {
    if (v21 == v20)
    {

      v43 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3F0, &qword_22B3F98A0);
      sub_22B3D0990(&qword_28140BFB0, &qword_27D8BE3F0, &qword_22B3F98A0, MEMORY[0x277D83958]);
      v30 = sub_22B3F6544();
      v32 = v31;

      v43 = v30;
      v44 = v32;
      v33 = v38;
      sub_22B3F5F64();
      v34 = sub_22B3F69E4();
      v37(v33, v4);

      return v34;
    }

    if (v20 >= *(v16 + 16))
    {
      break;
    }

    ++v20;
    v25 = *(v23 - 1);
    v24 = *v23;
    v23 += 2;
    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v43 = v22;
      v35 = v17;
      v36 = v4;
      if ((result & 1) == 0)
      {
        result = sub_22B3B791C(0, *(v22 + 16) + 1, 1);
        v22 = v43;
      }

      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_22B3B791C((v27 > 1), v28 + 1, 1);
        v22 = v43;
      }

      *(v22 + 16) = v28 + 1;
      v29 = v22 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v24;
      v17 = v35;
      v4 = v36;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3DE25C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void *a4)
{
  a3(a1, a2);
  v6 = sub_22B3B4258();
  v7 = MEMORY[0x231890330](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v6);

  v9 = 0;
  v22 = *(v7 + 16);
  v23 = v7;
  v10 = (v4 + *a4);
  v11 = v7 + 56;
  v20 = v7 + 56;
  v21 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = v11 + 32 * v9;
  while (1)
  {
    if (v22 == v9)
    {

      return v21;
    }

    if (v9 >= *(v23 + 16))
    {
      break;
    }

    ++v9;
    v13 = v12 + 32;
    v14 = v10[4];
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);

    sub_22B3F69A4();
    v15 = sub_22B3F6754();
    v16 = (*(v14 + 16))(v15);
    LOBYTE(v14) = v17;

    v12 = v13;
    if ((v14 & 1) == 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22B3C199C(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_22B3C199C((v18 > 1), v19 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v19 + 1;
      *(v21 + 8 * v19 + 32) = v16;
      v11 = v20;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_22B3DE460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42[3] = *MEMORY[0x277D85DE8];
  v9 = v4 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v10 = type metadata accessor for BlackPearlLevels(0);
  v11 = v9 + *(v10 + 32);
  v12 = type metadata accessor for BlackPearlModel(0);
  if ((*(v11 + *(v12 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v13 = *(v11 + *(v12 + 32));
  swift_endAccess();
  if (v13)
  {
    v40 = v13;
    v14 = sub_22B3DE21C(a3, a4);
    v15 = sub_22B3DE23C(a1, a2);
    v16 = sub_22B3E3940(v14, *(v9 + *(v10 + 48) + 80));

    v17 = sub_22B3E3940(v15, *(v9 + *(v10 + 48) + 72));

    v18 = sub_22B3E4A64(v16, *(v9 + *(v10 + 48) + 80));

    v19 = sub_22B3E4A64(v17, *(v9 + *(v10 + 48) + 72));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3F79C0;
    *(inited + 32) = 0x6275735F78;
    *(inited + 40) = 0xE500000000000000;
    v21 = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
    *(inited + 48) = v18;
    *(inited + 72) = v21;
    *(inited + 80) = 0x6E65735F78;
    *(inited + 120) = v21;
    *(inited + 88) = 0xE500000000000000;
    *(inited + 96) = v19;
    v22 = v18;
    v23 = v19;
    v24 = sub_22B3CBFB4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE348, &unk_22B3F8F88);
    swift_arrayDestroy();
    v25 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v26 = sub_22B3E0390(v24);
    if (v41)
    {
    }

    else
    {
      v33 = v26;
      v42[0] = 0;
      v34 = [v40 predictionFromFeatures:v26 error:v42];
      v24 = v42[0];
      if (v34)
      {
        v35 = v34;
        v36 = v42[0];
        v37 = sub_22B3F6564();
        v24 = [v35 featureValueForName_];

        if (!v24)
        {
          v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v39 = sub_22B3F6564();
          [v24 initWithDomain:v39 code:1 userInfo:0];

          swift_willThrow();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v38 = v42[0];
        sub_22B3F6064();

        swift_willThrow();
      }
    }
  }

  else
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v27 = sub_22B3F6464();
    __swift_project_value_buffer(v27, qword_28140D680);
    v28 = sub_22B3F6444();
    v29 = sub_22B3F68C4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B3A7000, v28, v29, "Failed to create TS model", v30, 2u);
      MEMORY[0x231890C40](v30, -1, -1);
    }

    v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v31 = sub_22B3F6564();
    [v24 initWithDomain:v31 code:2 userInfo:0];

    swift_willThrow();
  }

  return v24;
}

uint64_t sub_22B3DE958@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v6 = type metadata accessor for BlackPearlLevels(0);
  v7 = (v5 + *(v6 + 44));
  v8 = v7[9];
  v67[8] = v7[8];
  v67[9] = v8;
  v68[0] = v7[10];
  *(v68 + 9) = *(v7 + 169);
  v9 = v7[5];
  v67[4] = v7[4];
  v67[5] = v9;
  v10 = v7[7];
  v67[6] = v7[6];
  v67[7] = v10;
  v11 = v7[3];
  v67[2] = v7[2];
  v67[3] = v11;
  v12 = v7[1];
  v67[0] = *v7;
  v67[1] = v12;
  sub_22B3A9F54(v67, &v66);
  v13 = sub_22B3F6724();
  sub_22B3BE034(v67);
  if ((v13 & 1) == 0)
  {
    v23 = [a1 multiArrayValue];
    if (!v23)
    {
LABEL_34:
      result = sub_22B3F6B14();
      __break(1u);
      return result;
    }

    v24 = v23;
    v16 = sub_22B3E4CAC(v23);

    if (v16[2])
    {
      goto LABEL_3;
    }

LABEL_10:
    v19 = 0.0;
    v18 = 0.0;
    goto LABEL_11;
  }

  v14 = [a1 dictionaryValue];
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  v15 = sub_22B3F6524();

  v16 = sub_22B3E4F00(v15);

  if (!v16[2])
  {
    goto LABEL_10;
  }

LABEL_3:
  v17 = sub_22B3B79DC(0x5354544F4ELL, 0xE500000000000000);
  v18 = 0.0;
  v19 = 0.0;
  if (v20)
  {
    v19 = *(v16[7] + 8 * v17);
  }

  if (v16[2])
  {
    v21 = sub_22B3B79DC(0x544341534E415254, 0xEC000000534E4F49);
    if (v22)
    {
      v18 = *(v16[7] + 8 * v21);
    }
  }

LABEL_11:
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v25 = sub_22B3F6464();
  __swift_project_value_buffer(v25, qword_28140D680);
  v26 = sub_22B3F6444();
  v27 = sub_22B3F68B4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v19;
    _os_log_impl(&dword_22B3A7000, v26, v27, "NOTTS Score: %f", v28, 0xCu);
    MEMORY[0x231890C40](v28, -1, -1);
  }

  v63 = v6;
  v64 = v5;
  v65 = a2;

  v29 = v16[2];
  if (v29)
  {
    v30 = sub_22B3E04FC(v16[2], 0);
    v31 = sub_22B3E23D8(&v66, v30 + 4, v29, v16);

    sub_22B3E4EF8();
    if (v31 == v29)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v30 = MEMORY[0x277D84F90];
LABEL_19:
  v66 = v30;
  sub_22B3E0FA4(&v66);
  v32 = v66;
  if (!*(v66 + 2))
  {
    __break(1u);

    __break(1u);
    goto LABEL_34;
  }

  v34 = *(v66 + 4);
  v33 = *(v66 + 5);
  v35 = v66[6];

  v36 = sub_22B3F6444();
  v37 = sub_22B3F68B4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v66 = v39;
    *v38 = 136315138;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
    v41 = MEMORY[0x2318900A0](v32, v40);
    v42 = v34;
    v44 = v43;

    v45 = sub_22B3BDABC(v41, v44, &v66);
    v34 = v42;

    *(v38 + 4) = v45;
    _os_log_impl(&dword_22B3A7000, v36, v37, "Sorted TS Category: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x231890C40](v39, -1, -1);
    MEMORY[0x231890C40](v38, -1, -1);
  }

  else
  {
  }

  v46 = sub_22B3F6444();
  v47 = sub_22B3F68B4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v66 = v49;
    *v48 = 136315394;

    v50 = sub_22B3BDABC(v34, v33, &v66);

    *(v48 + 4) = v50;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v35;
    _os_log_impl(&dword_22B3A7000, v46, v47, "Top TS Category: %s Value %f ", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x231890C40](v49, -1, -1);
    MEMORY[0x231890C40](v48, -1, -1);
  }

  v51 = sub_22B3F6444();
  v52 = sub_22B3F68A4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v66 = v54;
    *v53 = 136315138;
    v55 = sub_22B3F6534();
    v57 = v56;

    v58 = sub_22B3BDABC(v55, v57, &v66);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_22B3A7000, v51, v52, "Category TS Scores: %s ", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x231890C40](v54, -1, -1);
    MEMORY[0x231890C40](v53, -1, -1);
  }

  else
  {
  }

  static CategoryTS.getCategory(for:)(&v66);

  v60 = 1.0 - v19;
  v62 = v66 - 9 >= 2 && (v61 = v64 + *(v63 + 48), *(v61 + 56) < v35) && *(v61 + 48) < v60;
  *v65 = v66;
  *(v65 + 8) = v60 - v18;
  *(v65 + 16) = v35;
  *(v65 + 24) = v62;
  return result;
}

__n128 sub_22B3DF0DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = sub_22B3DE460(a1, a2, a3, a4);
  sub_22B3DE958(v6, v9);

  v7 = v11;
  result = v10;
  *a5 = v9[0];
  *(a5 + 8) = result;
  *(a5 + 24) = v7;
  return result;
}

void *sub_22B3DF2B0(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1 && *a1)
  {

    goto LABEL_7;
  }

  v3 = sub_22B3F6C84();

  if (v3)
  {
LABEL_7:
    v4 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v5 = v4 + *(type metadata accessor for BlackPearlLevels(0) + 36);
    v6 = type metadata accessor for BlackPearlModel(0);
    if ((*(v5 + *(v6 + 36)) & 1) == 0)
    {
      BlackPearlModel.loadModel()();
    }

    v7 = *(v5 + *(v6 + 32));
    swift_endAccess();
    if (v7)
    {
      goto LABEL_33;
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B3F6464();
    __swift_project_value_buffer(v8, qword_28140D680);
    v9 = sub_22B3F6444();
    v10 = sub_22B3F68C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v48[0] = v12;
      *v11 = 136315138;
      v13 = 0xE500000000000000;
      v14 = 0xD000000000000011;
      v15 = 0x800000022B3FA140;
      if (v2 != 2)
      {
        v14 = 0x726F707075536E75;
        v15 = 0xEB00000000646574;
      }

      if (v2)
      {
        v16 = 0x6E6974616CLL;
      }

      else
      {
        v16 = 0x6873696C676E65;
      }

      if (!v2)
      {
        v13 = 0xE700000000000000;
      }

      if (v2 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      if (v2 <= 1)
      {
        v18 = v13;
      }

      else
      {
        v18 = v15;
      }

      v19 = sub_22B3BDABC(v17, v18, v48);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_22B3A7000, v9, v10, "HI Model not available %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x231890C40](v12, -1, -1);
      MEMORY[0x231890C40](v11, -1, -1);
    }

    return 0;
  }

  if (v2 == 2)
  {
  }

  else
  {
    v20 = sub_22B3F6C84();

    if ((v20 & 1) == 0)
    {
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v25 = sub_22B3F6464();
      __swift_project_value_buffer(v25, qword_28140D680);
      v26 = sub_22B3F6444();
      v27 = sub_22B3F68C4();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_68;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 136315138;
      v30 = 0xE500000000000000;
      if (v2)
      {
        v31 = 0x6E6974616CLL;
      }

      else
      {
        v31 = 0x6873696C676E65;
      }

      if (!v2)
      {
        v30 = 0xE700000000000000;
      }

      if (v2 <= 1)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0x726F707075536E75;
      }

      if (v2 <= 1)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0xEB00000000646574;
      }

      v34 = sub_22B3BDABC(v32, v33, v48);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_22B3A7000, v26, v27, "Unsupported HI Model %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x231890C40](v29, -1, -1);
      v35 = v28;
      goto LABEL_67;
    }
  }

  v21 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v22 = v21 + *(type metadata accessor for BlackPearlLevels(0) + 40);
  v23 = type metadata accessor for BlackPearlModel(0);
  if ((*(v22 + *(v23 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v7 = *(v22 + *(v23 + 32));
  swift_endAccess();
  if (!v7)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v36 = sub_22B3F6464();
    __swift_project_value_buffer(v36, qword_28140D680);
    v26 = sub_22B3F6444();
    v37 = sub_22B3F68C4();
    if (!os_log_type_enabled(v26, v37))
    {
      goto LABEL_68;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48[0] = v39;
    *v38 = 136315138;
    v40 = 0xE500000000000000;
    v41 = 0xD000000000000011;
    if (v2 == 2)
    {
      v42 = 0x800000022B3FA140;
    }

    else
    {
      v41 = 0x726F707075536E75;
      v42 = 0xEB00000000646574;
    }

    if (v2)
    {
      v43 = 0x6E6974616CLL;
    }

    else
    {
      v43 = 0x6873696C676E65;
    }

    if (!v2)
    {
      v40 = 0xE700000000000000;
    }

    if (v2 <= 1)
    {
      v44 = v43;
    }

    else
    {
      v44 = v41;
    }

    if (v2 <= 1)
    {
      v45 = v40;
    }

    else
    {
      v45 = v42;
    }

    v46 = sub_22B3BDABC(v44, v45, v48);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_22B3A7000, v26, v37, "HI Model not available %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x231890C40](v39, -1, -1);
    v35 = v38;
LABEL_67:
    MEMORY[0x231890C40](v35, -1, -1);
LABEL_68:

    return 0;
  }

LABEL_33:
  v24 = v7;
  return v7;
}

void sub_22B3DF910(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  LOBYTE(v73[0]) = *a2;
  v6 = sub_22B3DF2B0(v73);
  if (!v6)
  {
    if (v5 <= 1 || v5 == 2)
    {
      v47 = sub_22B3F6C84();

      if ((v47 & 1) == 0)
      {
        *a3 = 1;
LABEL_55:
        __asm { FMOV            V0.2D, #-1.0 }

        *(a3 + 8) = _Q0;
        *(a3 + 24) = 0;
        return;
      }
    }

    else
    {
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v49 = sub_22B3F6464();
    __swift_project_value_buffer(v49, qword_28140D680);
    v50 = sub_22B3F6444();
    v51 = sub_22B3F68C4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v73[0] = v53;
      *v52 = 136315138;
      v54 = 0xD000000000000011;
      v55 = 0x800000022B3FA140;
      if (v5 != 2)
      {
        v54 = 0x726F707075536E75;
        v55 = 0xEB00000000646574;
      }

      v56 = 0xE700000000000000;
      v57 = 0x6E6974616CLL;
      if (v5)
      {
        v56 = 0xE500000000000000;
      }

      else
      {
        v57 = 0x6873696C676E65;
      }

      if (v5 <= 1)
      {
        v58 = v57;
      }

      else
      {
        v58 = v54;
      }

      if (v5 <= 1)
      {
        v59 = v56;
      }

      else
      {
        v59 = v55;
      }

      v60 = sub_22B3BDABC(v58, v59, v73);

      *(v52 + 4) = v60;
      _os_log_impl(&dword_22B3A7000, v50, v51, "Unsupported Model %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x231890C40](v53, -1, -1);
      MEMORY[0x231890C40](v52, -1, -1);
    }

    *a3 = 0;
    goto LABEL_55;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = 0x7365727574616566;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
  *(inited + 48) = a1;
  v9 = a1;
  v10 = sub_22B3CBFB4(inited);
  swift_setDeallocating();
  sub_22B3B4B3C(inited + 32, &qword_27D8BE348, &unk_22B3F8F88);
  v11 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v27 = sub_22B3E0390(v10);
  v73[0] = 0;
  v28 = [v7 predictionFromFeatures:v27 error:v73];
  v29 = v73[0];
  if (v28)
  {
    v30 = v28;
    swift_unknownObjectRetain();
    v31 = v29;
    v32 = sub_22B3F6564();
    v33 = [v30 featureValueForName_];

    swift_unknownObjectRelease();
    if (v33)
    {
      v34 = [v33 dictionaryValue];
      sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
      v35 = sub_22B3F6524();

      v36 = sub_22B3E4F00(v35);

      v37 = 0;
      if (v36[2])
      {
        v38 = sub_22B3B79DC(0x4948544F4ELL, 0xE500000000000000);
        if (v39)
        {
          v37 = *(v36[7] + 8 * v38);
        }
      }

      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v40 = sub_22B3F6464();
      __swift_project_value_buffer(v40, qword_28140D680);
      v41 = sub_22B3F6444();
      v42 = sub_22B3F68B4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        *(v43 + 4) = v37;
        _os_log_impl(&dword_22B3A7000, v41, v42, "NOTTS Score: %f", v43, 0xCu);
        MEMORY[0x231890C40](v43, -1, -1);
      }

      if (v36[2] && (v44 = sub_22B3B79DC(18760, 0xE200000000000000), (v45 & 1) != 0))
      {
        v46 = *(v36[7] + 8 * v44);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();

        v46 = 0.0;
      }

      if (v46 < 0.5)
      {
        v48 = 9;
      }

      else
      {
        v48 = 11;
      }

      *a3 = v48;
      *(a3 + 8) = v46;
      *(a3 + 16) = v46;
      *(a3 + 24) = v46 >= 0.5;
      return;
    }

LABEL_62:
    sub_22B3F6B14();
    __break(1u);
    return;
  }

  v62 = v73[0];
  v63 = sub_22B3F6064();

  swift_willThrow();
  v73[0] = v63;
  v12 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
  if (!swift_dynamicCast())
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v64 = sub_22B3F6464();
    __swift_project_value_buffer(v64, qword_28140D680);
    v65 = v63;
    v66 = sub_22B3F6444();
    v67 = sub_22B3F68C4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      v70 = v63;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 4) = v71;
      *v69 = v71;
      _os_log_impl(&dword_22B3A7000, v66, v67, "TS Model execution failed %@", v68, 0xCu);
      sub_22B3B4B3C(v69, &qword_27D8BE078, &qword_22B3F8C50);
      MEMORY[0x231890C40](v69, -1, -1);
      MEMORY[0x231890C40](v68, -1, -1);
    }

    goto LABEL_62;
  }

  if (v72)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v13 = sub_22B3F6464();
    __swift_project_value_buffer(v13, qword_28140D680);
    v14 = sub_22B3F6444();
    v15 = sub_22B3F68C4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B3A7000, v14, v15, "Mbert returns empty tokens execution failed", v16, 2u);
      MEMORY[0x231890C40](v16, -1, -1);
    }

    v17 = 2;
  }

  else
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v18 = sub_22B3F6464();
    __swift_project_value_buffer(v18, qword_28140D680);
    v19 = sub_22B3F6444();
    v20 = sub_22B3F68C4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B3A7000, v19, v20, "Mbert model not available execution failed", v21, 2u);
      MEMORY[0x231890C40](v21, -1, -1);
    }

    v17 = 3;
  }

  *a3 = v17;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 8) = _Q0;
  *(a3 + 24) = 0;
}

id sub_22B3E0294(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  v4 = sub_22B3F6784();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22B3F6064();

    swift_willThrow();
  }

  return v5;
}

id sub_22B3E0390(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22B3F6514();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_22B3F6064();

    swift_willThrow();
  }

  return v3;
}

void *sub_22B3E0478(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE450, &unk_22B3F9BE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22B3E04FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE430, &qword_22B3F9BC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

char *sub_22B3E058C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE298, &unk_22B3F9C20);
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