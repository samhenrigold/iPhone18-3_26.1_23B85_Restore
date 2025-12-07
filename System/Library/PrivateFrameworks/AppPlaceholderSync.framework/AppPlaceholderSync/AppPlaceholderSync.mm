BOOL sub_222568B18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_222568B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2225904C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222568BEC@<X0>(uint64_t *a1@<X8>)
{
  result = Defaults.pairedMirroringDevices.getter();
  *a1 = result;
  return result;
}

uint64_t sub_222568C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22258FD68();
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
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_222568CF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22258FD68();
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
    *(a1 + *(a4 + 48)) = a2 + 1;
  }

  return result;
}

uint64_t sub_222568DAC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222568DF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222568E2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222568E64()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222568EB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222568EEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void SelfDestruct(void *a1)
{
  [a1 UTF8String];
  _os_crash();
  __break(1u);
}

uint64_t StoreContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222569140(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDE0, &qword_2225912C0);
    v1 = sub_222590828();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_22256EADC(&v27[8], v25);
    sub_22256EADC(v25, v27);
    sub_2225904C8();
    sub_222590948();
    sub_2225904F8();
    v16 = sub_222590968();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_22256EADC(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t Store.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_222569460(uint64_t a1)
{
  v2 = v1;
  v77[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22258FCA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49[3] = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_222590268();
  v7 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2225903C8();
  MEMORY[0x28223BE20](v9 - 8);
  v63 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222590378();
  MEMORY[0x28223BE20](v11 - 8);
  v62 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22258FD68();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v49[4] = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v49[2] = v49 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v49 - v19;
  v61 = sub_222590388();
  v21 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v70 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v24 = *(v14 + 16);
  v68 = a1;
  v72 = v24;
  v24((v2 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_url), a1, v13);
  v59 = type metadata accessor for PlaceholderRecord(0);
  v58 = sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  v57 = sub_2225902E8();
  v49[5] = 0;
  v55 = v21 + 16;
  v60 = v21;
  v56 = (v21 + 8);
  v51 = v7 + 8;
  v73 = v14 + 16;
  v66 = *MEMORY[0x277CC91D8];
  v65 = v5 + 104;
  v64 = v5 + 8;
  *&v25 = 136315138;
  v50 = v25;
  v69 = xmmword_222591200;
  v74 = v13;
  v76 = v20;
  v71 = v23;
  v67 = v4;
  v54 = (v14 + 8);
  v49[1] = v2;
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v26 = sub_2225901D8();
  v27 = __swift_project_value_buffer(v26, qword_28130F918);

  v75 = v27;
  v28 = sub_2225901B8();
  v29 = sub_222590678();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77[0] = v31;
    *v30 = v50;
    v32 = v2;
    v33 = sub_22258FD28();
    v35 = sub_222580F0C(v33, v34, v77);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_222567000, v28, v29, "Loading store: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v36 = v31;
    v20 = v76;
    MEMORY[0x223DBA5D0](v36, -1, -1);
    MEMORY[0x223DBA5D0](v30, -1, -1);
  }

  else
  {
    v32 = v2;
  }

  v37 = v68;
  v72(v20, v68, v74);
  sub_222590368();
  v38 = v70;
  sub_222590398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDB8, &qword_222591298);
  v39 = swift_allocObject();
  *(v39 + 16) = v69;
  v40 = v58;
  *(v39 + 32) = v59;
  *(v39 + 40) = v40;
  sub_2225903D8();
  sub_222590428();
  swift_allocObject();
  sub_222590438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC0, &unk_2225912A0);
  v41 = v60;
  v42 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v69;
  v44 = *(v41 + 16);
  v45 = v61;
  v44(v43 + v42, v38, v61);

  v46 = sub_2225902D8();

  sub_22256DC28(v37);
  (*v56)(v70, v45);

  *(v32 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container) = v46;
  sub_2225902B8();
  swift_allocObject();

  v47 = sub_2225902C8();
  (*v54)(v68, v74);
  *(v32 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_context) = v47;
  return v32;
}

uint64_t sub_22256A384()
{
  type metadata accessor for StoreContext();
  v0 = swift_allocObject();
  sub_2225902B8();
  swift_allocObject();

  *(v0 + 16) = sub_2225902C8();
  return v0;
}

uint64_t Store.deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v2 = sub_22258FD68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Store.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v2 = sub_22258FD68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t StoreContext.add(item:)(uint64_t a1)
{
  v3 = sub_22258FDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22258FDD8();
  v9 = sub_22256A8F0(v7, v8);

  if (v9)
  {
    v16[3] = v1;
    v17 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate;
    v10 = OBJC_IVAR____TtC18AppPlaceholderSync17PlaceholderRecord___observationRegistrar;
    v18 = v9;
    swift_getKeyPath();
    v16[1] = sub_22256D478(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
    v16[2] = v10;
    sub_22258FE28();

    swift_getKeyPath();
    sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
    sub_22256D478(&qword_2813101A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_222590348();
    v11 = v17;

    v12 = sub_22258FD98();
    v13 = *(v4 + 8);
    v13(v6, v3);
    if (v12)
    {
      (*(v4 + 16))(v6, a1 + v11, v3);
      v18 = v9;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v16[-2] = v9;
      v16[-1] = v6;
      sub_22258FE18();

      v13(v6, v3);
      sub_222590278();
    }
  }

  else
  {
    sub_22258AC2C();
    type metadata accessor for PlaceholderRecord(0);
    sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
    sub_2225902A8();

    return sub_222590278();
  }
}

unint64_t sub_22256A8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDE8, &qword_2225912C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF0, &qword_2225912D0);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF8, &qword_2225912D8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  v18[1] = a1;
  v21 = a1;
  v22 = a2;
  v23 = type metadata accessor for PlaceholderRecord(0);
  sub_22258FE08();
  (*(v11 + 16))(v6, v13, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_2225902F8();
  v19 = v9;
  result = sub_222590288();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v15 = 0;
    goto LABEL_9;
  }

  v16 = result;
  v17 = sub_2225907F8();
  result = v16;
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x223DB9CC0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v7 + 8))(v19, v20);
    (*(v11 + 8))(v13, v10);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t StoreContext.delete(item:)(uint64_t a1)
{
  v1 = sub_22258FDD8();
  v3 = sub_22256A8F0(v1, v2);

  if (v3)
  {
    type metadata accessor for PlaceholderRecord(0);
    sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
    sub_222590298();
    sub_222590278();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoreContext.delete(items:)(Swift::OpaquePointer items)
{
  if (items._rawValue >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((items._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2225907F8())
  {
    v3 = 0;
    while ((items._rawValue & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DB9CC0](v3, items._rawValue);
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

LABEL_8:
      v5 = sub_22258FDD8();
      v7 = sub_22256A8F0(v5, v6);

      if (v7)
      {
        type metadata accessor for PlaceholderRecord(0);
        sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
        sub_222590298();
      }

      ++v3;
      if (v4 == i)
      {
        goto LABEL_15;
      }
    }

    if (v3 >= *((items._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  sub_222590278();
}

uint64_t sub_22256B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDE8, &qword_2225912C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF0, &qword_2225912D0);
  v14 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v25 - v15;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF8, &qword_2225912D8);
  v16 = *(v28 - 8);
  v17 = MEMORY[0x28223BE20](v28);
  v19 = v25 - v18;
  v25[1] = a1;
  v25[2] = a2;
  MEMORY[0x28223BE20](v17);
  if (a4)
  {
    v25[-6] = a1;
    v25[-5] = a2;
    v25[-4] = a3;
    v25[-3] = a4;
  }

  else
  {
    v25[-4] = a1;
    v25[-3] = a2;
  }

  v20 = v26;
  v25[-2] = a5;
  v25[-1] = v20;
  v30 = type metadata accessor for PlaceholderRecord(0);
  sub_22258FE08();
  v21 = v28;
  (*(v16 + 16))(v13, v19, v28);
  (*(v16 + 56))(v13, 0, 1, v21);
  type metadata accessor for PlaceholderRecord(0);
  sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  v22 = v29;
  sub_2225902F8();
  v23 = sub_222590288();
  (*(v14 + 8))(v22, v27);
  (*(v16 + 8))(v19, v21);
  return v23;
}

uint64_t sub_22256B5A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a6;
  v61 = a7;
  v57 = a5;
  v56 = a4;
  v71 = a3;
  v62 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE08, &qword_2225912E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE10, &qword_2225912F0);
  v15 = *(v14 - 8);
  v74 = v14;
  v75 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE18, &qword_2225912F8);
  v73 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE20, &qword_222591300);
  v76 = *(v55 - 8);
  v21 = MEMORY[0x28223BE20](v55);
  v54 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v53 = &v52 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE28, &qword_222591308);
  v25 = *(v24 - 8);
  v58 = v24;
  v59 = v25;
  MEMORY[0x28223BE20](v24);
  v72 = &v52 - v26;
  v70 = *a1;
  v77 = a2;
  v78 = v71;
  sub_22258FC38();
  v64 = sub_22256EF08(&qword_2813101C8, &qword_27D00EE08, &qword_2225912E8, MEMORY[0x277CC90F8]);
  sub_22258FC48();
  swift_getKeyPath();
  v63 = v10;
  sub_22258FC18();

  v69 = *(v11 + 8);
  v71 = v11 + 8;
  v69(v13, v10);
  v66 = sub_22256EF08(&qword_2813101F0, &qword_27D00EE18, &qword_2225912F8, MEMORY[0x277CC9080]);
  v68 = sub_22256EF08(&qword_2813101D8, &qword_27D00EE10, &qword_2225912F0, MEMORY[0x277CC90C0]);
  v27 = v17;
  v65 = v18;
  v28 = v74;
  sub_22258FC08();
  v29 = v75 + 8;
  v67 = *(v75 + 8);
  v67(v17, v28);
  v75 = v29;
  v30 = v73 + 8;
  v31 = *(v73 + 8);
  v32 = v20;
  v31(v20, v18);
  v33 = v31;
  v73 = v30;
  v77 = v56;
  v78 = v57;
  sub_22258FC38();
  v34 = v13;
  v35 = v63;
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  v69(v34, v35);
  v36 = v54;
  v37 = v27;
  v38 = v65;
  v39 = v74;
  sub_22258FC08();
  v67(v37, v39);
  v33(v32, v38);
  v40 = v33;
  v57 = sub_22256EF08(&qword_281310200, &qword_27D00EE20, &qword_222591300, MEMORY[0x277CC9070]);
  v41 = v53;
  v42 = v55;
  sub_22258FC28();
  v43 = *(v76 + 8);
  v76 += 8;
  v43(v36, v42);
  v43(v41, v42);
  v77 = v60;
  v78 = v61;
  sub_22258FC38();
  v44 = v63;
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  v69(v34, v44);
  v45 = v65;
  v46 = v74;
  sub_22258FC08();
  v67(v37, v46);
  v40(v32, v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE30, &qword_222591388);
  v48 = v62;
  *(v62 + 24) = v47;
  v48[4] = sub_22256EC38();
  __swift_allocate_boxed_opaque_existential_1(v48);
  sub_22256EF08(&qword_281310218, &qword_27D00EE28, &qword_222591308, MEMORY[0x277CC8F18]);
  v49 = v72;
  v50 = v58;
  sub_22258FC28();
  v43(v41, v42);
  return (*(v59 + 8))(v49, v50);
}

uint64_t sub_22256BDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v37 = a3;
  v35 = a2;
  v43 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE08, &qword_2225912E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE10, &qword_2225912F0);
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE18, &qword_2225912F8);
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE20, &qword_222591300);
  v18 = *(v17 - 8);
  v41 = v17;
  v42 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v38 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v36 = v34 - v21;
  v34[2] = *a1;
  v46 = v35;
  v47 = v37;
  sub_22258FC38();
  sub_22256EF08(&qword_2813101C8, &qword_27D00EE08, &qword_2225912E8, MEMORY[0x277CC90F8]);
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  v22 = *(v8 + 8);
  v35 = v8 + 8;
  v37 = v22;
  v22(v10, v7);
  v34[1] = sub_22256EF08(&qword_2813101F0, &qword_27D00EE18, &qword_2225912F8, MEMORY[0x277CC9080]);
  v34[0] = sub_22256EF08(&qword_2813101D8, &qword_27D00EE10, &qword_2225912F0, MEMORY[0x277CC90C0]);
  v23 = v11;
  sub_22258FC08();
  v24 = *(v45 + 8);
  v45 += 8;
  v24(v13, v11);
  v25 = *(v44 + 8);
  v44 += 8;
  v25(v16, v14);
  v46 = v39;
  v47 = v40;
  sub_22258FC38();
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  v37(v10, v7);
  v26 = v38;
  sub_22258FC08();
  v24(v13, v23);
  v25(v16, v14);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE28, &qword_222591308);
  v28 = v43;
  *(v43 + 24) = v27;
  v28[4] = sub_22256ECC4();
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_22256EF08(&qword_281310200, &qword_27D00EE20, &qword_222591300, MEMORY[0x277CC9070]);
  v29 = v36;
  v30 = v26;
  v31 = v41;
  sub_22258FC28();
  v32 = *(v42 + 8);
  v32(v30, v31);
  return (v32)(v29, v31);
}

uint64_t sub_22256C350@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE08, &qword_2225912E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE10, &qword_2225912F0);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE18, &qword_2225912F8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  v24 = a2;
  v25 = v21;
  sub_22258FC38();
  sub_22256EF08(&qword_2813101C8, &qword_27D00EE08, &qword_2225912E8, MEMORY[0x277CC90F8]);
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  (*(v7 + 8))(v9, v6);
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE20, &qword_222591300);
  a4[4] = sub_22256ED48();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_22256EF08(&qword_2813101F0, &qword_27D00EE18, &qword_2225912F8, MEMORY[0x277CC9080]);
  sub_22256EF08(&qword_2813101D8, &qword_27D00EE10, &qword_2225912F0, MEMORY[0x277CC90C0]);
  v18 = v22;
  sub_22258FC08();
  (*(v23 + 8))(v13, v18);
  return (*(v15 + 8))(v17, v14);
}

unint64_t StoreContext.fetchItem(bundleIdentifier:version:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_22256B03C(a1, a2, a3, a4, a5, a6);
  if (result >> 62)
  {
    v8 = result;
    v9 = sub_2225907F8();
    result = v8;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223DB9CC0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);

LABEL_6:

    return sub_22258D370(v7);
  }

  __break(1u);
  return result;
}

uint64_t StoreContext.fetchItems(bundleIdentifier:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22256B03C(a1, a2, 0, 0, a3, a4);
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v6 = sub_2225907F8();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  v10 = MEMORY[0x277D84F90];
  result = sub_2225907B8();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DB9CC0](v8, v5);
      }

      else
      {
      }

      ++v8;
      sub_22258D370(v9);
      sub_222590798();
      sub_2225907C8();
      sub_2225907D8();
      sub_2225907A8();
    }

    while (v6 != v8);

    return v10;
  }

  return result;
}

unint64_t StoreContext.fetchItem(identifier:)(uint64_t a1, uint64_t a2)
{
  result = sub_22256A8F0(a1, a2);
  if (result)
  {
    return sub_22258D370(result);
  }

  return result;
}

uint64_t sub_22256C8C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDE8, &qword_2225912C8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF0, &qword_2225912D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF8, &qword_2225912D8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v13[1] = type metadata accessor for PlaceholderRecord(0);
  sub_22258FE08();
  (*(v8 + 16))(v2, v10, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_2225902F8();
  v11 = sub_222590288();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_22256CCC4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE00, &qword_2225912E0);
  a1[4] = sub_22256EAEC();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22258FC38();
}

uint64_t StoreContext.fetchAllItems()()
{
  v0 = sub_22256C8C8();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_2225907F8();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = MEMORY[0x277D84F90];
  result = sub_2225907B8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DB9CC0](v4, v1);
      }

      else
      {
      }

      ++v4;
      sub_22258D370(v5);
      sub_222590798();
      sub_2225907C8();
      sub_2225907D8();
      sub_2225907A8();
    }

    while (v2 != v4);

    return v6;
  }

  return result;
}

Swift::Void __swiftcall StoreContext.purgeAllItems()()
{
  v1 = v0;
  v2 = sub_22256C8C8();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_222590278();
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v13 = sub_2225901D8();
    __swift_project_value_buffer(v13, qword_28130F918);
    oslog = sub_2225901B8();
    v14 = sub_222590678();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v4;
      _os_log_impl(&dword_222567000, oslog, v14, "Removed %ld store records", v15, 0xCu);
      MEMORY[0x223DBA5D0](v15, -1, -1);
    }

    goto LABEL_17;
  }

  v4 = sub_2225907F8();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DB9CC0](v5, v3);
      }

      else
      {
      }

      ++v5;
      type metadata accessor for PlaceholderRecord(0);
      sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
      sub_222590298();
    }

    while (v4 != v5);
    goto LABEL_10;
  }

  __break(1u);
  swift_once();
  v6 = sub_2225901D8();
  __swift_project_value_buffer(v6, qword_28130F918);
  v7 = v0;
  oslog = sub_2225901B8();
  v8 = sub_222590668();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_222567000, oslog, v8, "Error purging items: %@", v9, 0xCu);
    sub_22256EA7C(v10, &qword_27D00EDB0, &unk_222591A20);
    MEMORY[0x223DBA5D0](v10, -1, -1);
    MEMORY[0x223DBA5D0](v9, -1, -1);

LABEL_17:
    v16 = oslog;

    goto LABEL_19;
  }

  v16 = v0;

LABEL_19:
}

uint64_t sub_22256D1B8(uint64_t *a1)
{
  swift_getKeyPath();
  sub_22256D478(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_22256D478(&qword_2813101A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_222590348();
}

uint64_t sub_22256D2F0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22258FDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_22256D478(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE18();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22256D478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22256D4DC(uint64_t a1, id *a2)
{
  result = sub_2225904A8();
  *a2 = 0;
  return result;
}

uint64_t sub_22256D554(uint64_t a1, id *a2)
{
  v3 = sub_2225904B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22256D5D4@<X0>(uint64_t *a2@<X8>)
{
  sub_2225904C8();
  v3 = sub_222590498();

  *a2 = v3;
  return result;
}

uint64_t sub_22256D618(void *a1, uint64_t *a2)
{
  v2 = sub_2225904C8();
  v4 = v3;
  if (v2 == sub_2225904C8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2225908C8();
  }

  return v7 & 1;
}

uint64_t sub_22256D6A0(uint64_t a1)
{
  v2 = sub_22256D478(&qword_28130F7C8, type metadata accessor for FileAttributeKey, &unk_222591868);
  v3 = sub_22256D478(&qword_27D00EE98, type metadata accessor for FileAttributeKey, &unk_22259150C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22256D75C(uint64_t a1)
{
  v2 = sub_22256D478(&qword_27D00EE88, type metadata accessor for FileProtectionType, &unk_222591680);
  v3 = sub_22256D478(&qword_27D00EE90, type metadata accessor for FileProtectionType, &unk_222591620);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22256D818@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_222590498();

  *a2 = v3;
  return result;
}

uint64_t sub_22256D860(uint64_t a1)
{
  v2 = sub_22256D478(&qword_27D00EE78, type metadata accessor for URLResourceKey, &unk_2225917D8);
  v3 = sub_22256D478(&qword_27D00EE80, type metadata accessor for URLResourceKey, &unk_222591778);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22256D91C()
{
  v0 = sub_2225904C8();
  v1 = MEMORY[0x223DB9A90](v0);

  return v1;
}

uint64_t sub_22256D958(uint64_t a1)
{
  sub_2225904C8();
  sub_2225904F8();
}

uint64_t sub_22256D9AC(uint64_t a1)
{
  sub_2225904C8();
  sub_222590948();
  sub_2225904F8();
  v1 = sub_222590968();

  return v1;
}

uint64_t sub_22256DA20(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22256DA6C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_22256DACC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_22256DADC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_22256DAFC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_22256DB70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t (*sub_22256DBA0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DB9CC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_22256DC20;
  }

  __break(1u);
  return result;
}

void sub_22256DC28(uint64_t a1)
{
  v102 = *MEMORY[0x277D85DE8];
  v3 = sub_22258FCA8();
  v97 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22258FD68();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v94 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v79 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v79 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v98 = a1;
  sub_22258FD28();
  v15 = sub_222590498();

  v100 = 0;
  v16 = [v14 attributesOfItemAtPath:v15 error:&v100];

  v17 = v100;
  if (!v16)
  {
    v30 = v100;
    v31 = sub_22258FC68();

    swift_willThrow();
LABEL_11:

    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v32 = sub_2225901D8();
    __swift_project_value_buffer(v32, qword_28130F918);
    v33 = v31;
    v34 = sub_2225901B8();
    v35 = sub_222590668();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_222567000, v34, v35, "Error fixing file protection: %@", v36, 0xCu);
      sub_22256EA7C(v37, &qword_27D00EDB0, &unk_222591A20);
      MEMORY[0x223DBA5D0](v37, -1, -1);
      MEMORY[0x223DBA5D0](v36, -1, -1);
    }

    else
    {
    }

    return;
  }

  type metadata accessor for FileAttributeKey(0);
  v19 = v18;
  v92 = sub_22256D478(&qword_28130F7C8, type metadata accessor for FileAttributeKey, &unk_222591868);
  v93 = v19;
  v20 = sub_222590458();
  v21 = v17;

  if (!*(v20 + 16) || (v22 = *MEMORY[0x277CCA1B0], v23 = sub_222585DE8(*MEMORY[0x277CCA1B0]), (v24 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_22256EA0C(*(v20 + 56) + 32 * v23, &v100);

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return;
  }

  v90 = v1;
  v25 = *MEMORY[0x277CCA1B8];
  v91 = v99;
  v26 = sub_2225904C8();
  v28 = v27;
  v89 = v25;
  if (v26 == sub_2225904C8() && v28 == v29)
  {

    return;
  }

  v40 = sub_2225908C8();

  if (v40)
  {
    goto LABEL_17;
  }

  v87 = sub_22258FCC8();
  v88 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDD0, &qword_2225912B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222591200;
  *(inited + 32) = v22;
  v43 = v89;
  *(inited + 40) = v89;
  v44 = v22;
  v45 = v43;
  v46 = sub_22258C544(inited);
  swift_setDeallocating();
  sub_22256EA7C(inited + 32, &qword_27D00EDD8, &qword_2225912B8);
  v89 = v46;
  sub_222569140(v46);
  v47 = sub_222590448();

  sub_22258FD28();
  v48 = sub_222590498();

  v100 = 0;
  LODWORD(v46) = [v14 setAttributes:v47 ofItemAtPath:v48 error:&v100];

  v49 = v100;
  if (!v46 || (v50 = v100, sub_222569140(v89), v86 = sub_222590448(), , sub_22258FCF8(), v100 = v87, v101 = v88, , MEMORY[0x223DB9A60](1835561773, 0xE400000000000000), v51 = v97, v52 = *(v97 + 104), v81 = *MEMORY[0x277CC91D8], v82 = v97 + 104, v80 = v52, v52(v5), v79[1] = sub_22256E958(), sub_22258FD58(), v53 = *(v51 + 8), v97 = v51 + 8, v79[0] = v53, v53(v5, v3), , v54 = v96, v56 = v95 + 8, v55 = *(v95 + 8), v55(v11, v96), v85 = sub_22258FD28(), v84 = v55, v83 = v56, v55(v13, v54), v57 = sub_222590498(), , v100 = 0, v58 = v86, LODWORD(v54) = [v14 setAttributes:v86 ofItemAtPath:v57 error:&v100], v58, v57, v49 = v100, !v54))
  {
    v77 = v49;

    v31 = sub_22258FC68();

LABEL_26:
    swift_willThrow();

    v14 = v91;
    goto LABEL_11;
  }

  v59 = v100;
  sub_222569140(v89);

  v60 = sub_222590448();

  sub_22258FCF8();
  v100 = v87;
  v101 = v88;
  MEMORY[0x223DB9A60](1818326829, 0xE400000000000000);
  v80(v5, v81, v3);
  sub_22258FD58();
  (v79[0])(v5, v3);

  v61 = v96;
  v62 = v84;
  v84(v11, v96);
  sub_22258FD28();
  v62(v13, v61);
  v63 = sub_222590498();

  v100 = 0;
  v64 = [v14 setAttributes:v60 ofItemAtPath:v63 error:&v100];

  if (!v64)
  {
    v78 = v100;
    v31 = sub_22258FC68();

    goto LABEL_26;
  }

  v65 = qword_28130F910;
  v66 = v100;
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_2225901D8();
  __swift_project_value_buffer(v67, qword_28130F918);
  v68 = v94;
  (*(v95 + 16))(v94, v98, v61);
  v69 = sub_2225901B8();
  v70 = sub_222590678();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v100 = v72;
    *v71 = 136315138;
    v73 = sub_22258FD28();
    v75 = v74;
    v84(v68, v61);
    v76 = sub_222580F0C(v73, v75, &v100);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_222567000, v69, v70, "Fixed file protection on %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x223DBA5D0](v72, -1, -1);
    MEMORY[0x223DBA5D0](v71, -1, -1);

LABEL_17:
    return;
  }

  v84(v68, v61);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t type metadata accessor for Store(uint64_t a1)
{
  result = qword_28130F9E8;
  if (!qword_28130F9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22256E87C(uint64_t a1)
{
  result = sub_22258FD68();
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

unint64_t sub_22256E958()
{
  result = qword_28130F800;
  if (!qword_28130F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130F800);
  }

  return result;
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

uint64_t sub_22256EA0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22256EA7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_22256EADC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22256EAEC()
{
  result = qword_2813101E8;
  if (!qword_2813101E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE00, &qword_2225912E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101E8);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_22256EC38()
{
  result = qword_281310210;
  if (!qword_281310210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE30, &qword_222591388);
    sub_22256ECC4();
    sub_22256ED48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281310210);
  }

  return result;
}

unint64_t sub_22256ECC4()
{
  result = qword_281310220;
  if (!qword_281310220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE28, &qword_222591308);
    sub_22256ED48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281310220);
  }

  return result;
}

unint64_t sub_22256ED48()
{
  result = qword_281310208;
  if (!qword_281310208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE20, &qword_222591300);
    sub_22256EDD4();
    sub_22256EE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281310208);
  }

  return result;
}

unint64_t sub_22256EDD4()
{
  result = qword_2813101F8;
  if (!qword_2813101F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE18, &qword_2225912F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101F8);
  }

  return result;
}

unint64_t sub_22256EE58()
{
  result = qword_2813101E0;
  if (!qword_2813101E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE10, &qword_2225912F0);
    sub_22256EF08(&qword_2813101D0, &qword_27D00EE08, &qword_2225912E8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101E0);
  }

  return result;
}

uint64_t sub_22256EF08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_22256EF7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22256EF9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_22256EFD8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ContainerLookup(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContainerLookup(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_22256F3F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  if (!container_query_create())
  {
    sub_22256F678();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    return swift_willThrow();
  }

  container_query_set_class();
  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  xpc_string_create("com.apple.appplaceholdersyncd");
  container_query_set_identifiers();
  swift_unknownObjectRelease();
  if (!container_query_get_single_result())
  {
    if (container_query_get_last_error() && (v7 = container_error_copy_unlocalized_description()) != 0)
    {
      v8 = v7;
      v9 = sub_222590518();
      v11 = v10;
      MEMORY[0x223DBA5D0](v8, -1, -1);
    }

    else
    {
      v11 = 0x8000000222593940;
      v9 = 0xD000000000000017;
    }

    sub_22256F678();
    swift_allocError();
    *v14 = v9;
    v14[1] = v11;
    goto LABEL_15;
  }

  path = container_get_path();
  if (!path)
  {
    sub_22256F678();
    swift_allocError();
    v13 = xmmword_2225918C0;
LABEL_14:
    *v12 = v13;
LABEL_15:
    swift_willThrow();
    return container_query_free();
  }

  if (strlen(path) <= 0)
  {
    sub_22256F678();
    swift_allocError();
    v13 = xmmword_2225918B0;
    goto LABEL_14;
  }

  sub_22256F6CC();
  v4 = sub_22258FD68();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_22258FD08();
  sub_22256F848(v2);
  return container_query_free();
}

unint64_t sub_22256F678()
{
  result = qword_27D00EEA8;
  if (!qword_27D00EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00EEA8);
  }

  return result;
}

void sub_22256F6CC()
{
  if (container_copy_sandbox_token())
  {
    if (sandbox_extension_consume() != -1)
    {

      JUMPOUT(0x223DBA5D0);
    }

    sub_222590758();
    v1 = MEMORY[0x223DB9A60](0xD000000000000025, 0x8000000222593990);
    v2 = MEMORY[0x223DB9750](v1);
    if (!strerror(v2))
    {
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEB0, &qword_222591900);
    sub_2225907E8();
    v3 = MEMORY[0x223DB9A60](10272, 0xE200000000000000);
    MEMORY[0x223DB9750](v3);
    v4 = sub_2225908B8();
    MEMORY[0x223DB9A60](v4);

    MEMORY[0x223DB9A60](41, 0xE100000000000000);

    v5 = sub_222590498();

    SelfDestruct(v5);
  }

  v0 = sub_222590498();
  SelfDestruct(v0);
}

uint64_t sub_22256F848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18AppPlaceholderSync15ContainerLookupV08RetrieveD5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22256F8D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22256F930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_22256F984(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_22256F9B4()
{
  v0 = type metadata accessor for Defaults(0);
  __swift_allocate_value_buffer(v0, qword_28130F8F8);
  v1 = __swift_project_value_buffer(v0, qword_28130F8F8);
  return sub_22256FA00(v1);
}

uint64_t sub_22256FA00@<X0>(char *a1@<X8>)
{
  v76 = sub_222590198();
  v75 = *(v76 - 8);
  v2 = MEMORY[0x28223BE20](v76);
  v73 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v74 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v68 - v6;
  v85 = sub_22258FCA8();
  v90 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22258FD68();
  v83 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - v11;
  *a1 = 6;
  _set_user_dir_suffix();
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEB8, &unk_222591A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222591200;
  *(inited + 32) = 0xD000000000000011;
  v16 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x80000002225939C0;
  *(inited + 48) = 1;
  sub_22258CC5C(inited);
  swift_setDeallocating();
  sub_22256EA7C(v16, &qword_27D00EEC0, &unk_222592390);
  v17 = sub_222590448();

  [v14 registerDefaults_];

  v18 = [v13 standardUserDefaults];
  v19 = sub_222590498();
  v20 = [v18 integerForKey_];

  if (v20 >= 7)
  {
    v21 = [v13 standardUserDefaults];
    v22 = sub_222590498();
    [v21 setInteger:6 forKey:v22];
  }

  sub_22256F3F4();
  v23 = type metadata accessor for Defaults(0);
  v24 = v83;
  v25 = *(v83 + 32);
  v26 = v23[9];
  v79 = v26;
  v25(&v26[a1], v12, v8);
  v88 = *MEMORY[0x277CC91C0];
  v27 = *(v90 + 104);
  v90 += 104;
  v28 = v84;
  v29 = v8;
  v30 = a1;
  v31 = v85;
  v27(v84);
  v80 = *(v24 + 16);
  v87 = v24 + 16;
  v32 = &v26[v30];
  v33 = v71;
  v80(v71, v32, v29);
  v34 = *(v24 + 56);
  v86 = v24 + 56;
  v89 = v34;
  v77 = 1;
  v35 = v29;
  v78 = v29;
  v34(v33, 0, 1, v29);
  v70 = v23[11];
  v69 = v23;
  sub_22258FD38();
  v36 = v28;
  v37 = v88;
  v81 = v27;
  (v27)(v36, v88, v31);
  v38 = v29;
  v39 = v80;
  v80(v33, &v79[v30], v38);
  v89(v33, 0, 1, v35);
  v82 = v23[10];
  v40 = v84;
  sub_22258FD38();
  v41 = v37;
  v42 = v30;
  (v27)(v40, v41, v31);
  v43 = &v79[v30];
  v44 = v33;
  v45 = v33;
  v46 = v78;
  v39(v45, v43, v78);
  v47 = v46;
  v89(v44, 0, 1, v46);
  v48 = v72;
  sub_22258FD38();
  v49 = v69;
  sub_22258FC98();
  (*(v83 + 8))(v48, v47);
  v92[0] = 0;
  v92[1] = 0xE000000000000000;
  sub_222590758();

  v92[0] = 0xD000000000000010;
  v92[1] = 0x8000000222593A50;
  v91 = 6;
  v50 = sub_2225908B8();
  MEMORY[0x223DB9A60](v50);

  MEMORY[0x223DB9A60](0x726F74737370612ELL, 0xE900000000000065);
  v83 = v92[0];
  v79 = v92[1];
  v51 = v31;
  v52 = v31;
  v53 = v81;
  (v81)(v40, v88, v52);
  v54 = v47;
  v55 = v47;
  v56 = v80;
  v80(v44, &v42[v70], v55);
  v57 = v44;
  v58 = v44;
  v59 = v89;
  v89(v57, 0, 1, v54);
  sub_22258FD38();
  v79 = "PublisherStore-v";
  (v53)(v40, v88, v51);
  v60 = v78;
  v56(v58, &v42[v82], v78);
  v59(v58, 0, 1, v60);
  v83 = v49[7];
  sub_22258FD38();
  v92[0] = 0;
  v92[1] = 0xE000000000000000;
  sub_222590758();

  strcpy(v92, "Placeholders-v");
  HIBYTE(v92[1]) = -18;
  v91 = 6;
  v61 = sub_2225908B8();
  MEMORY[0x223DB9A60](v61);

  MEMORY[0x223DB9A60](0x7865646E696F6E2ELL, 0xE800000000000000);
  (v81)(v40, v88, v85);
  v62 = v49;
  v56(v58, &v42[v82], v60);
  v89(v58, 0, 1, v60);
  sub_22258FD38();
  v63 = v74;
  sub_222590158();
  v64 = v73;
  sub_222590168();
  LOBYTE(v58) = sub_222590188();
  v65 = *(v75 + 8);
  v66 = v76;
  v65(v64, v76);
  if ((v58 & 1) == 0)
  {
    sub_222590178();
    v77 = sub_222590188();
    v65(v64, v66);
  }

  v42[v62[12]] = v77 & 1;
  sub_222571A3C();
  sub_222571A3C();
  return (v65)(v63, v66);
}

uint64_t static Defaults.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults(0);
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  return sub_222570628(v3, a1);
}

uint64_t type metadata accessor for Defaults(uint64_t a1)
{
  result = qword_28130F8E0;
  if (!qword_28130F8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222570628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Defaults(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Defaults.shared.setter(uint64_t a1)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults(0);
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  sub_222570728(a1, v3);
  swift_endAccess();
  return sub_22257078C(a1);
}

uint64_t sub_222570728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Defaults(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22257078C(uint64_t a1)
{
  v2 = type metadata accessor for Defaults(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static Defaults.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Defaults(0);
  __swift_project_value_buffer(v1, qword_28130F8F8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_222570880@<X0>(uint64_t a1@<X8>)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults(0);
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  return sub_222570628(v3, a1);
}

uint64_t sub_22257090C(uint64_t a1)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults(0);
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  sub_222570728(a1, v3);
  return swift_endAccess();
}

uint64_t Defaults.publisherStoreURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults(0) + 20);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.tmpURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults(0) + 24);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.generatedPlaceholdersDirURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults(0) + 28);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.installedPlaceholdersDirURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults(0) + 32);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.containerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults(0) + 36);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.cachesDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults(0) + 40);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.documentsDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults(0) + 44);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id Defaults.lastSchemaVersion.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_222590498();
  v2 = [v0 integerForKey_];

  return v2;
}

void sub_222570DBC(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  v4 = [v2 integerForKey_];

  *a1 = v4;
}

void sub_222570E4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  [v2 setInteger:v1 forKey:v3];
}

void Defaults.lastSchemaVersion.setter(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  [v2 setInteger:a1 forKey:v3];
}

void (*Defaults.lastSchemaVersion.modify(void *a1))(uint64_t *a1)
{
  v2 = objc_opt_self();
  a1[1] = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_222590498();
  v5 = [v3 integerForKey_];

  *a1 = v5;
  return sub_222571034;
}

void sub_222571034(uint64_t *a1)
{
  v1 = *a1;
  v3 = [a1[1] standardUserDefaults];
  v2 = sub_222590498();
  [v3 setInteger:v1 forKey:v2];
}

uint64_t Defaults.pairedMirroringDevices.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_222590498();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_222590568();

    v4 = sub_222571320(v3);

    if (v4)
    {
      return v4;
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_2225711A8(uint64_t *a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_222590558();
  v3 = sub_222590498();
  [v1 setObject:v2 forKey:v3];
}

void Defaults.pairedMirroringDevices.setter(uint64_t a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_222590558();

  v3 = sub_222590498();
  [v1 setObject:v2 forKey:v3];
}

uint64_t sub_222571320(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2225814B4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22256EA0C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2225814B4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_222571478(uint64_t *a1, char a2)
{
  v3 = objc_opt_self();
  if (a2)
  {
    v4 = v3;

    v7 = [v4 standardUserDefaults];
    v5 = sub_222590558();

    v6 = sub_222590498();
    [v7 setObject:v5 forKey:v6];
  }

  else
  {
    v7 = [v3 standardUserDefaults];
    v5 = sub_222590558();

    v6 = sub_222590498();
    [v7 setObject:v5 forKey:v6];
  }
}

id Defaults.isResetting.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_222590498();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_22257165C(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_2225716F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  [v2 setBool:v1 forKey:v3];
}

void Defaults.isResetting.setter(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  [v2 setBool:a1 & 1 forKey:v3];
}

void (*Defaults.isResetting.modify(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_222590498();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_2225718E4;
}

void sub_2225718E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = [*a1 standardUserDefaults];
  v2 = sub_222590498();
  [v3 setBool:v1 forKey:v2];
}

uint64_t sub_2225719A8(uint64_t a1)
{
  result = sub_22258FD68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_222571A3C()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_22258FCD8();
  v20[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v20];

  v3 = v20[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v20[0];
    v6 = sub_22258FC68();

    swift_willThrow();
    v7 = sub_22258FD28();
    v9 = v8;
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v10 = sub_2225901D8();
    __swift_project_value_buffer(v10, qword_28130F918);

    v11 = v6;
    v12 = sub_2225901B8();
    v13 = sub_222590668();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[0] = v16;
      *v14 = 136315394;
      v17 = sub_222580F0C(v7, v9, v20);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = v6;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      *v15 = v19;
      _os_log_impl(&dword_222567000, v12, v13, "error creating %s: %@", v14, 0x16u);
      sub_22256EA7C(v15, &qword_27D00EDB0, &unk_222591A20);
      MEMORY[0x223DBA5D0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DBA5D0](v16, -1, -1);
      MEMORY[0x223DBA5D0](v14, -1, -1);
    }

    else
    {
    }
  }
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

uint64_t sub_222571DEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2225901D8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2225901C8();
}

uint64_t sub_222571E88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2225901D8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_222571F70()
{
  v0 = sub_22258FEB8();
  __swift_allocate_value_buffer(v0, qword_281310230);
  __swift_project_value_buffer(v0, qword_281310230);
  return sub_22258FE98();
}

uint64_t sub_222571FC4(unint64_t a1, uint64_t *a2)
{
  isUniquelyReferenced_nonNull_native = sub_22258FDF8();
  v26 = *(isUniquelyReferenced_nonNull_native - 8);
  result = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v34 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_24:
    result = sub_2225907F8();
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v30 = a1 & 0xFFFFFFFFFFFFFF8;
      v31 = a1 & 0xC000000000000001;
      v32 = (v26 + 16);
      v27 = (v26 + 8);
      v28 = v7;
      v29 = a1;
      do
      {
        if (v31)
        {
          v9 = MEMORY[0x223DB9CC0](v8, a1);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v8 >= *(v30 + 16))
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 8 * v8 + 32);

          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v33 = v10;
        v11 = *v32;
        v12 = v34;
        v13 = isUniquelyReferenced_nonNull_native;
        (*v32)(v34, v9 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, isUniquelyReferenced_nonNull_native);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *a2;
        a1 = v35;
        v14 = a2;
        *a2 = 0x8000000000000000;
        v16 = sub_222585FC8(v12);
        v17 = *(a1 + 16);
        v18 = (v15 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          goto LABEL_22;
        }

        a2 = v15;
        if (*(a1 + 24) >= v19)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222582354();
          }
        }

        else
        {
          sub_2225817D8(v19, isUniquelyReferenced_nonNull_native);
          v20 = sub_222585FC8(v34);
          if ((a2 & 1) != (v21 & 1))
          {
            result = sub_2225908E8();
            __break(1u);
            return result;
          }

          v16 = v20;
        }

        isUniquelyReferenced_nonNull_native = v13;
        a1 = v35;
        if (a2)
        {
          *(*(v35 + 56) + 8 * v16) = v9;
        }

        else
        {
          *(v35 + 8 * (v16 >> 6) + 64) |= 1 << v16;
          v11(*(a1 + 48) + *(v26 + 72) * v16, v34, v13);
          *(*(a1 + 56) + 8 * v16) = v9;
          v22 = *(a1 + 16);
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          *(a1 + 16) = v24;
        }

        (*v27)(v34, v13);
        a2 = v14;
        *v14 = a1;

        ++v8;
        a1 = v29;
      }

      while (v33 != v28);
    }
  }

  return result;
}

unint64_t sub_2225722E4(unint64_t result, uint64_t *a2, void *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223DB9CC0](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_222576790(&v11, a2, a3);

        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_2225907F8();
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2225723F8()
{
  if (qword_28130FAE0 != -1)
  {
    swift_once();
  }

  type metadata accessor for SyncManager();
  swift_allocObject();

  v1 = sub_222584290(v0);

  off_28130FDC0 = v1;
  return result;
}

uint64_t static SyncManager.shared.getter()
{
  if (qword_28130FDB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2225724DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF58, &qword_222591BC8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281310248 = result;
  return result;
}

uint64_t sub_22257251C(uint64_t a1)
{
  if (qword_28130FDC8 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_281310248;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_222580818();
  os_unfair_lock_unlock(v1 + 4);
  MEMORY[0x28223BE20](v3);
  os_unfair_lock_lock(v1 + 4);
  sub_222585A74();
  os_unfair_lock_unlock(v1 + 4);
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v1 + 4);
  sub_222585A74();
  os_unfair_lock_unlock(v1 + 4);
  v6 = MEMORY[0x277D84F90];

  return v6;
}

void sub_222572724(uint64_t a1)
{
  if (qword_28130FDC8 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_281310248;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock(v1 + 4);
  sub_222585A74();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_2225727D8(void (*a1)(void, void, void))
{
  v69 = a1;
  v1 = sub_22258FDF8();
  v2 = *(v1 - 8);
  v71 = v1;
  v72 = v2;
  MEMORY[0x28223BE20](v1);
  v70 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222590208();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  MEMORY[0x28223BE20](v4);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2225906B8();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2225906A8();
  MEMORY[0x28223BE20](v8);
  v61 = sub_222590228();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(v11 + 16) = MEMORY[0x277D84F90];
  v13 = v12;
  v68 = v11 + 16;
  v58 = sub_222585984(0, &qword_28130F7D0, 0x277D85C78);
  sub_222590218();
  aBlock[0] = v13;
  sub_2225850A8(&qword_28130F7D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF98, &qword_222591C00);
  v66 = MEMORY[0x277D83970];
  sub_22256EF08(&qword_28130F7F0, &qword_27D00EF98, &qword_222591C00, MEMORY[0x277D83970]);
  sub_2225906E8();
  v65[13](v59, *MEMORY[0x277D85260], v67);
  v14 = v11;
  v15 = sub_2225906D8();
  v16 = [objc_allocWithZone(MEMORY[0x277D54C10]) initWithQueue_];
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = swift_allocObject();
  v19 = v69;
  v18[2] = v16;
  v18[3] = v19;
  v18[4] = v14;
  v18[5] = v17;
  aBlock[4] = sub_222585954;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222573898;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);
  v65 = v16;

  v67 = v14;

  v21 = v17;
  sub_222590218();
  v73 = MEMORY[0x277D84F90];
  sub_2225850A8(&qword_28130F810, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EFA0, &qword_222591C08);
  sub_22256EF08(&qword_28130F7F8, &qword_27D00EFA0, &qword_222591C08, v66);
  v22 = v62;
  v23 = v63;
  sub_2225906E8();
  v66 = v15;
  MEMORY[0x223DB9C20](0, v10, v22, v20);
  _Block_release(v20);
  (v64[1].isa)(v22, v23);
  (*(v60 + 8))(v10, v61);

  v64 = v21;
  sub_222590698();
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v24 = sub_2225901D8();
  __swift_project_value_buffer(v24, qword_28130F918);
  v25 = v67;

  v26 = sub_2225901B8();
  v27 = sub_222590678();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136446210;
    v30 = v68;
    swift_beginAccess();
    v31 = *(v25 + 16);

    v32 = MEMORY[0x223DB9AD0](v31, v71);
    v34 = v33;

    v35 = sub_222580F0C(v32, v34, aBlock);

    *(v28 + 4) = v35;
    v36 = v30;
    _os_log_impl(&dword_222567000, v26, v27, "paired devices relationshipIDS: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223DBA5D0](v29, -1, -1);
    MEMORY[0x223DBA5D0](v28, -1, -1);
  }

  else
  {

    v36 = v68;
  }

  v37 = v69;
  swift_beginAccess();
  v38 = *v36;
  v37[6] = *v36;
  v39 = qword_28130F8F0;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Defaults(0);
  __swift_project_value_buffer(v40, qword_28130F8F8);

  v41 = *(v38 + 16);
  if (v41)
  {
    v75 = MEMORY[0x277D84F90];

    sub_2225814B4(0, v41, 0);
    v42 = v75;
    v43 = *(v72 + 16);
    v44 = *(v72 + 80);
    v63 = v38;
    v45 = v38 + ((v44 + 32) & ~v44);
    v68 = *(v72 + 72);
    v69 = v43;
    v72 += 16;
    v46 = (v72 - 8);
    do
    {
      v47 = v70;
      v48 = v71;
      v69(v70, v45, v71);
      v49 = sub_22258FDD8();
      v51 = v50;
      (*v46)(v47, v48);
      v75 = v42;
      v53 = *(v42 + 16);
      v52 = *(v42 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_2225814B4((v52 > 1), v53 + 1, 1);
        v42 = v75;
      }

      *(v42 + 16) = v53 + 1;
      v54 = v42 + 16 * v53;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
      v45 += v68;
      --v41;
    }

    while (v41);
  }

  v55 = [objc_opt_self() standardUserDefaults];
  v56 = sub_222590558();

  v57 = sub_222590498();
  [v55 setObject:v56 forKey:v57];
}

void sub_222573164(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_222585978;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2225737DC;
  v11[3] = &block_descriptor_55;
  v9 = _Block_copy(v11);

  v10 = a4;

  [a1 listCandidateDevicesForType:6 completionHandler:v9];
  _Block_release(v9);
}

void sub_222573284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_222583ED0(a1, v8, (a4 + 16));

  dispatch_group_leave(a5);
}

uint64_t sub_222573338(void **a1, uint64_t a2, uint64_t *a3)
{
  v43 = a3;
  v5 = sub_22258FDF8();
  v42 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v50 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v40 - v8;
  v9 = sub_22258FFB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if ([v13 enabledAsKey])
    {
      v51[0] = *(v15 + 24);
      sub_22258FF88();
      v16 = sub_22258FED8();
      v17 = *(v16 + 16);
      if (v17)
      {
        v40[2] = v15;
        v40[3] = v3;
        v48 = v13;
        v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v40[1] = v16;
        v19 = v16 + v18;
        swift_beginAccess();
        v21 = *(v10 + 16);
        v20 = v10 + 16;
        v46 = *(v20 + 56);
        v47 = v21;
        v40[4] = v42 + 32;
        v41 = v12;
        v49 = v20;
        v44 = (v20 - 8);
        v45 = (v42 + 8);
        v21(v12, v19, v9);
        while (1)
        {
          v22 = v52;
          sub_22258FFA8();
          v23 = sub_22258FDD8();
          v25 = v24;
          (*v45)(v22, v5);
          v26 = [v48 idsDeviceID];
          if (!v26)
          {

            goto LABEL_6;
          }

          v27 = v26;
          v28 = v9;
          v29 = v5;
          v30 = sub_2225904C8();
          v32 = v31;

          if (v23 == v30 && v25 == v32)
          {

            v5 = v29;
            v9 = v28;
            v12 = v41;
          }

          else
          {
            v34 = sub_2225908C8();

            v5 = v29;
            v9 = v28;
            v12 = v41;
            if ((v34 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          sub_22258FF98();
          v35 = v43;
          v36 = *v43;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v35 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v36 = sub_222580AA4(0, v36[2] + 1, 1, v36, &qword_27D00EFA8, &unk_222591C10, MEMORY[0x277CC95F0]);
            *v43 = v36;
          }

          v39 = v36[2];
          v38 = v36[3];
          if (v39 >= v38 >> 1)
          {
            v36 = sub_222580AA4((v38 > 1), v39 + 1, 1, v36, &qword_27D00EFA8, &unk_222591C10, MEMORY[0x277CC95F0]);
            *v43 = v36;
          }

          v36[2] = v39 + 1;
          (*(v42 + 32))(v36 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, v50, v5);
LABEL_6:
          (*v44)(v12, v9);
          v19 += v46;
          if (!--v17)
          {
            break;
          }

          v47(v12, v19, v9);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_2225737DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_222585984(0, &qword_28130F7A0, 0x277D54C08);
  sub_2225859CC();
  v5 = sub_2225905F8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_222573898(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void static SyncManager.upgrade()()
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Defaults(0);
  v1 = __swift_project_value_buffer(v0, qword_28130F8F8);
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_222590498();
  v5 = [v3 integerForKey_];

  swift_beginAccess();
  if (v5 != *v1)
  {
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v6 = sub_2225901D8();
    __swift_project_value_buffer(v6, qword_28130F918);
    v7 = sub_2225901B8();
    v8 = sub_222590678();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      v10 = [v2 standardUserDefaults];
      v11 = sub_222590498();
      v12 = [v10 integerForKey_];

      *(v9 + 4) = v12;
      *(v9 + 12) = 2048;
      *(v9 + 14) = *v1;
      _os_log_impl(&dword_222567000, v7, v8, "removing caches. old version: %ld new version: %ld", v9, 0x16u);
      MEMORY[0x223DBA5D0](v9, -1, -1);
    }

    _s18AppPlaceholderSync0C7ManagerC5resetyyFZ_0();
  }
}

void sub_222573B08(uint64_t a1, Swift::OpaquePointer a2, uint64_t a3)
{
  v19[1] = a3;
  v4 = sub_222590138();
  MEMORY[0x28223BE20](v4);
  v5 = sub_222590098();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D46818], v5);
  sub_22258FF58();
  (*(v6 + 8))(v8, v5);
  StoreContext.delete(items:)(a2);
  if (v9)
  {
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v10 = sub_2225901D8();
    __swift_project_value_buffer(v10, qword_28130F918);
    v11 = v9;
    v12 = sub_2225901B8();
    v13 = sub_222590668();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_222580F0C(0xD000000000000020, 0x8000000222593C60, &v20);
      *(v14 + 12) = 2112;
      v17 = v9;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_222567000, v12, v13, "%s: error deleting items: %@", v14, 0x16u);
      sub_22256EA7C(v15, &qword_27D00EDB0, &unk_222591A20);
      MEMORY[0x223DBA5D0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DBA5D0](v16, -1, -1);
      MEMORY[0x223DBA5D0](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_222574120()
{
  v1 = sub_222590138();
  v65 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v64 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_222590098();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222590038();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF88, &qword_222591BF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v80[0] = sub_22258CFAC(MEMORY[0x277D84F90]);
  v12 = StoreContext.fetchAllItems()();
  sub_222571FC4(v12, v80);

  v71 = *(v0 + 24);
  v13 = sub_22258FF18();
  v66 = v1;
  v67 = v9;
  v77 = v5;
  v70 = 0;
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v75 = v8;
  v76 = v6 + 16;
  v63 = v6 + 32;
  v74 = v13;

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v21 = v6;
  v68 = v6;
  while (v17)
  {
    v5 = v20;
LABEL_12:
    v23 = __clz(__rbit64(v17)) | (v19 << 6);
    v24 = v74;
    v25 = *(v21 + 72);
    v26 = *(v21 + 16);
    v26(v11, *(v74 + 48) + v25 * v23, v77);
    v27 = *(v24 + 56);
    v28 = sub_22258FDF8();
    v29 = *(v28 - 8);
    v30 = v27 + *(v29 + 72) * v23;
    v31 = *(v67 + 48);
    (*(v29 + 16))(&v11[v31], v30, v28);
    if (*(v80[0] + 2) && (sub_222585FC8(&v11[v31]), (v32 & 1) != 0))
    {
      v20 = v5;
      v21 = v68;
    }

    else
    {
      v26(v75, v11, v77);
      v20 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_222580AA4(0, v5[2] + 1, 1, v5, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
      }

      v34 = v20[2];
      v33 = v20[3];
      if (v34 >= v33 >> 1)
      {
        v20 = sub_222580AA4((v33 > 1), v34 + 1, 1, v20, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
      }

      v20[2] = v34 + 1;
      v35 = v20 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + v34 * v25;
      v21 = v68;
      (*(v68 + 32))(v35, v75, v77);
    }

    v17 &= v17 - 1;
    sub_22256EA7C(v11, &qword_27D00EF88, &qword_222591BF0);
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v22 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v22);
    ++v19;
    if (v17)
    {
      v5 = v20;
      v19 = v22;
      goto LABEL_12;
    }
  }

  v5 = v73;
  if (qword_28130F910 == -1)
  {
    goto LABEL_20;
  }

LABEL_35:
  swift_once();
LABEL_20:
  v36 = sub_2225901D8();
  __swift_project_value_buffer(v36, qword_28130F918);
  v37 = sub_2225901B8();
  v38 = sub_222590678();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v80[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_222580F0C(0xD000000000000038, 0x8000000222593CC0, v80);
    *(v39 + 12) = 2048;
    *(v39 + 14) = v20[2];
    _os_log_impl(&dword_222567000, v37, v38, "%s: removing %ld replicator records", v39, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x223DBA5D0](v40, -1, -1);
    MEMORY[0x223DBA5D0](v39, -1, -1);
  }

  v41 = v69;
  v42 = v72;
  (*(v72 + 104))(v69, *MEMORY[0x277D46818], v5);

  v43 = v70;
  sub_22258FF58();
  if (!v43)
  {
    (*(v42 + 8))(v41, v5);
    return swift_bridgeObjectRelease_n();
  }

  (*(v42 + 8))(v41, v5);

  v80[0] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
  sub_222585984(0, &qword_28130F790, 0x277CCA9B8);
  swift_dynamicCast();
  v44 = v79[0];
  v45 = [v79[0] domain];
  v46 = sub_2225904C8();
  v48 = v47;

  if (v46 == sub_222590118() && v48 == v49)
  {

    goto LABEL_28;
  }

  v51 = sub_2225908C8();

  if (v51)
  {
LABEL_28:
    v52 = [v44 code];
    v54 = v64;
    v53 = v65;
    v55 = v66;
    (*(v65 + 104))(v64, *MEMORY[0x277D468C8], v66);
    v56 = sub_222590128();
    (*(v53 + 8))(v54, v55);
    if (v52 == v56)
    {
      goto LABEL_31;
    }
  }

  v57 = v44;
  v58 = sub_2225901B8();
  v59 = sub_222590668();

  if (!os_log_type_enabled(v58, v59))
  {

    goto LABEL_33;
  }

  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v78 = v62;
  *v60 = 136315394;
  *(v60 + 4) = sub_222580F0C(0xD000000000000038, 0x8000000222593CC0, &v78);
  *(v60 + 12) = 2112;
  *(v60 + 14) = v57;
  *v61 = v57;
  v44 = v57;
  _os_log_impl(&dword_222567000, v58, v59, "%s: error deleting records: %@", v60, 0x16u);
  sub_22256EA7C(v61, &qword_27D00EDB0, &unk_222591A20);
  MEMORY[0x223DBA5D0](v61, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v62);
  MEMORY[0x223DBA5D0](v62, -1, -1);
  MEMORY[0x223DBA5D0](v60, -1, -1);

LABEL_31:
LABEL_33:
}

uint64_t sub_222574BE8()
{
  v62 = sub_222590098();
  v0 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22258FEC8();
  v2 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE0, &unk_222591AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v37 - v6;
  v64 = sub_222590088();
  v52 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22258FD68();
  v9 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v77 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v63 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = sub_222590018();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v75 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v74 = &v37 - v19;
  v20 = sub_222590038();
  v76 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = StoreContext.fetchAllItems()();
  v24 = v23;
  if (v23 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2225907F8())
  {
    v80 = v20;
    v45 = v8;
    v46 = v4;
    v20 = 0;
    v4 = 0;
    v71 = "generated_placeholders.noindex";
    v72 = "oldersyncservicesd.client";
    v79 = *(v53 + 24);
    v73 = v24 & 0xC000000000000001;
    v51 = v24 & 0xFFFFFFFFFFFFFF8;
    v69 = (v9 + 56);
    v70 = v76 + 16;
    v58 = v9 + 48;
    v55 = v9 + 32;
    v54 = v52 + 48;
    v44 = v52 + 32;
    v43 = v52 + 16;
    v42 = *MEMORY[0x277D46550];
    v41 = v2 + 104;
    v40 = *MEMORY[0x277D46818];
    v39 = v0 + 104;
    v49 = v0 + 8;
    v48 = v2 + 8;
    v47 = v52 + 8;
    v57 = v9 + 8;
    v68 = (v76 + 8);
    v38 = "evices(storeContext:)";
    *(&v26 + 1) = 2;
    v78 = xmmword_222591200;
    *&v26 = 136315138;
    v50 = v26;
    *&v26 = 136315394;
    v37 = v26;
    v65 = v22;
    v8 = v66;
    v56 = v15;
    v67 = i;
    while (v73)
    {
      v2 = MEMORY[0x223DB9CC0](v20, v24);
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_13;
      }

LABEL_11:
      v81 = v27;
      v82 = v20;
      sub_22258FDD8();
      v28 = sub_22258FDF8();
      v29 = v22;
      v30 = v74;
      (*(*(v28 - 8) + 56))(v74, 1, 1, v28);
      sub_22258588C(v30, v75, MEMORY[0x277D46788]);
      sub_22258FFE8();
      v31 = v30;
      v22 = v29;
      sub_2225858F4(v31, MEMORY[0x277D46788]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE8, &qword_222591AE0);
      v32 = v76;
      v33 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = v78;
      v34 = v29;
      v35 = v80;
      (*(v32 + 16))(v9 + v33, v34, v80);
      v0 = v8;
      (*v69)(v15, 1, 1, v8);
      sub_22258FF68();
      sub_22256EA7C(v15, &qword_27D00EEA0, &qword_2225918F8);

      (*v68)(v22, v35);
      v20 = v82 + 1;
      if (v81 == v67)
      {
      }
    }

    if (v20 >= *(v51 + 16))
    {
      goto LABEL_14;
    }

    v2 = *(v24 + 8 * v20 + 32);

    v27 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_222575D78(uint64_t a1)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v49 - v3;
  v5 = sub_22258FC88();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = [objc_opt_self() enumeratorWithOptions_];
  sub_222590628();
  sub_22258FC78();
  if (v59)
  {
    v55 = MEMORY[0x277D84F90];
    v8 = *MEMORY[0x277CC1E08];
    v49[1] = v1;
    v49[2] = v8;
    v53 = v4;
    while (1)
    {
      sub_22256EADC(&v58, &v57);
      sub_222585984(0, &qword_28130F7B0, 0x277CC1E70);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_4;
      }

      v9 = v56;
      v10 = [v56 bundleIdentifier];
      if (!v10)
      {

        goto LABEL_4;
      }

      v11 = v10;
      v12 = sub_2225904C8();
      v14 = v13;
      v15 = [v9 shortVersionString];
      if (!v15)
      {

        goto LABEL_4;
      }

      v16 = v15;
      v17 = sub_2225904C8();
      v19 = v18;

      v20 = [v9 bundleContainerURL];
      if (!v20)
      {

        v30 = sub_22258FD68();
        (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
        sub_22256EA7C(v4, &qword_27D00EEA0, &qword_2225918F8);
        goto LABEL_4;
      }

      v21 = v20;
      sub_22258FD18();

      v22 = sub_22258FD68();
      (*(*(v22 - 8) + 56))(v4, 0, 1, v22);
      sub_22256EA7C(v4, &qword_27D00EEA0, &qword_2225918F8);
      if (os_variant_has_internal_content())
      {
        v23 = [v9 compatibilityObject];
        v24 = [v23 applicationType];

        if (v24)
        {
          v25 = sub_2225904C8();
          v27 = v26;

          v28 = sub_2225904C8();
          if (v27)
          {
            if (v25 == v28 && v27 == v29)
            {

LABEL_36:
              v4 = v53;
              goto LABEL_4;
            }

            v42 = sub_2225908C8();

            if (v42)
            {

              goto LABEL_36;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_2225904C8();
        }
      }

LABEL_19:
      v31 = sub_22257A8F4();
      v33 = sub_22256B03C(v12, v14, v17, v19, v31, v32);

      if (v33 >> 62)
      {
        v34 = sub_2225907F8();
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = v53;
      if (v34)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x223DB9CC0](0, v33);
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_46;
          }

          v35 = *(v33 + 32);
        }

        sub_22258D370(v35);
      }

      else
      {

        v36 = [objc_opt_self() applicationWithBundleIdentifier_];

        v37 = [v36 isHidden];
        if (!v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_222580C80(0, *(v55 + 2) + 1, 1, v55);
          }

          v39 = *(v55 + 2);
          v38 = *(v55 + 3);
          if (v39 >= v38 >> 1)
          {
            v55 = sub_222580C80((v38 > 1), v39 + 1, 1, v55);
          }

          v40 = v55;
          *(v55 + 2) = v39 + 1;
          v41 = &v40[16 * v39];
          *(v41 + 4) = v12;
          *(v41 + 5) = v14;
          goto LABEL_4;
        }
      }

LABEL_4:
      sub_22258FC78();
      if (!v59)
      {
        goto LABEL_40;
      }
    }
  }

  v55 = MEMORY[0x277D84F90];
LABEL_40:
  (*(v50 + 8))(v7, v51);
  if (qword_28130F910 != -1)
  {
LABEL_46:
    swift_once();
  }

  v43 = sub_2225901D8();
  __swift_project_value_buffer(v43, qword_28130F918);
  v44 = v55;

  v45 = sub_2225901B8();
  v46 = sub_222590678();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v58 = v48;
    *v47 = 136315394;
    *(v47 + 4) = sub_222580F0C(0xD000000000000036, 0x8000000222593D50, &v58);
    *(v47 + 12) = 2048;
    *(v47 + 14) = *(v44 + 2);

    _os_log_impl(&dword_222567000, v45, v46, "%s: adding %ld bundle identifiers", v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223DBA5D0](v48, -1, -1);
    MEMORY[0x223DBA5D0](v47, -1, -1);
  }

  else
  {
  }

  sub_22257B26C(v44);
}

uint64_t sub_222576538(uint64_t a1)
{
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v2 = StoreContext.fetchAllItems()();
  sub_2225722E4(v2, &v15, &v14);

  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v3 = sub_2225901D8();
  __swift_project_value_buffer(v3, qword_28130F918);
  v4 = sub_2225901B8();
  v5 = sub_222590678();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_222580F0C(0xD000000000000049, 0x8000000222593D00, v13);
    *(v6 + 12) = 2048;
    swift_beginAccess();
    *(v6 + 14) = *(v15 + 16);
    *(v6 + 22) = 2048;
    swift_beginAccess();
    if (v14 >> 62)
    {
      v8 = sub_2225907F8();
    }

    else
    {
      v8 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 24) = v8;
    _os_log_impl(&dword_222567000, v4, v5, "%s: deleting %ld records and %ld items", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DBA5D0](v7, -1, -1);
    MEMORY[0x223DBA5D0](v6, -1, -1);
  }

  swift_beginAccess();
  v9 = v15;
  swift_beginAccess();
  v10 = v14;

  v11._rawValue = v10;
  sub_222573B08(v9, v11, a1);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

void sub_222576790(uint64_t *a1, uint64_t *a2, void *a3)
{
  v65 = a2;
  v6 = sub_222590018();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = sub_222590038();
  v63 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v61 - v14;
  v15 = *a1;
  v16 = *a1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier;
  v17 = *v16;
  v18 = *(v16 + 8);
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v19 = sub_222580584(v17, v18, 0);
  v64 = v11;
  if (!v3)
  {
    v27 = v19;
    v61 = a3;
    v66 = 0;
    v29 = *(v15 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v28 = *(v15 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);

    v30 = [v27 shortVersionString];
    if (v30)
    {
      v31 = v30;
      v32 = sub_2225904C8();
      v34 = v33;

      if (v29 == v32 && v28 == v34)
      {

        v37 = 0;
        v20 = v66;
        goto LABEL_24;
      }

      v36 = sub_2225908C8();

      v37 = 0;
      v20 = v66;
      if (v36)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v20 = v66;
    }

    v37 = 1;
LABEL_24:
    v47 = objc_opt_self();
    v48 = sub_222590498();
    v49 = [v47 applicationWithBundleIdentifier_];

    v50 = [v49 isHidden];
    if ((v37 & 1) == 0)
    {
      a3 = v61;
      v51 = v67;
      if (!v50)
      {
        return;
      }

      goto LABEL_29;
    }

    a3 = v61;
LABEL_28:
    v51 = v67;
LABEL_29:
    v66 = v20;
    sub_22258FDD8();
    v52 = sub_22258FDF8();
    (*(*(v52 - 8) + 56))(v10, 1, 1, v52);
    sub_22258588C(v10, v62, MEMORY[0x277D46788]);
    sub_22258FFE8();
    sub_2225858F4(v10, MEMORY[0x277D46788]);
    v54 = v63;
    v53 = v64;
    (*(v63 + 16))(v68, v51, v64);
    v55 = v65;
    v56 = *v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v55 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_222580AA4(0, v56[2] + 1, 1, v56, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
      *v65 = v56;
    }

    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      v56 = sub_222580AA4((v58 > 1), v59 + 1, 1, v56, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
      *v65 = v56;
    }

    v56[2] = v59 + 1;
    (*(v54 + 32))(v56 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v68, v53);

    MEMORY[0x223DB9AA0](v60);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222590588();
    }

    sub_222590598();
    (*(v54 + 8))(v51, v53);
    return;
  }

  v20 = 0;
  v71 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
  sub_222585984(0, &qword_28130F790, 0x277CCA9B8);
  swift_dynamicCast();
  v21 = v70;
  v22 = [v70 domain];
  v23 = sub_2225904C8();
  v25 = v24;

  if (v23 == sub_2225904C8() && v25 == v26)
  {
  }

  else
  {
    v38 = sub_2225908C8();

    if ((v38 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([v21 code] == -10814)
  {

    goto LABEL_28;
  }

LABEL_15:
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v39 = sub_2225901D8();
  __swift_project_value_buffer(v39, qword_28130F918);

  v40 = v21;
  v41 = sub_2225901B8();
  v42 = sub_222590668();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v69 = v45;
    *v43 = 136315650;
    *(v43 + 4) = sub_222580F0C(0xD000000000000049, 0x8000000222593D00, &v69);
    *(v43 + 12) = 2082;
    *(v43 + 14) = sub_222580F0C(*v16, *(v16 + 8), &v69);
    *(v43 + 22) = 2112;
    *(v43 + 24) = v40;
    *v44 = v40;
    v46 = v40;
    _os_log_impl(&dword_222567000, v41, v42, "%s: error locating LS record for %{public}s: %@", v43, 0x20u);
    sub_22256EA7C(v44, &qword_27D00EDB0, &unk_222591A20);
    MEMORY[0x223DBA5D0](v44, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DBA5D0](v45, -1, -1);
    MEMORY[0x223DBA5D0](v43, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_222576FD4(id *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = [*a1 bundleIdentifier];
  v7 = sub_2225904C8();
  v9 = v8;

  v10 = sub_22257A8F4();
  v12 = StoreContext.fetchItems(bundleIdentifier:deviceIdentifier:)(v7, v9, v10, v11);

  if (v12 >> 62)
  {
    v13 = sub_2225907F8();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 >= 1)
  {
    v15 = [v5 bundleIdentifier];
    v16 = sub_2225904C8();
    v18 = v17;

    v19 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v19;
    if ((result & 1) == 0)
    {
      result = sub_222580C80(0, *(v19 + 16) + 1, 1, v19);
      v19 = result;
      *a4 = result;
    }

    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_222580C80((v20 > 1), v21 + 1, 1, v19);
      v19 = result;
      *a4 = result;
    }

    *(v19 + 16) = v21 + 1;
    v22 = v19 + 16 * v21;
    *(v22 + 32) = v16;
    *(v22 + 40) = v18;
  }

  return result;
}

uint64_t sub_22257716C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EED8, &qword_222591AC8);
  MEMORY[0x28223BE20](v0 - 8);
  v225 = &v196 - v1;
  v226 = sub_22258FDF8();
  v249 = *(v226 - 8);
  v2 = MEMORY[0x28223BE20](v226);
  v222 = &v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v221 = &v196 - v4;
  v229 = sub_222590078();
  v248 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v228 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF00, &qword_222591B70);
  MEMORY[0x28223BE20](v6 - 8);
  v227 = &v196 - v7;
  v238 = sub_222590088();
  v242 = *(v238 - 8);
  v8 = MEMORY[0x28223BE20](v238);
  v224 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v220 = &v196 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v252 = &v196 - v13;
  MEMORY[0x28223BE20](v12);
  v250 = &v196 - v14;
  v253 = sub_222590038();
  v244 = *(v253 - 8);
  v15 = MEMORY[0x28223BE20](v253);
  v251 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v223 = &v196 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v247 = &v196 - v20;
  MEMORY[0x28223BE20](v19);
  v241 = &v196 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF08, &qword_222591B78);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v196 - v26;
  v28 = sub_22258FD68();
  v232 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v196 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (&v196 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &v196 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v196 - v38;
  v40 = sub_22258FF18();
  v46 = v40;
  v246 = v33;
  v215 = v37;
  v216 = v31;
  v239 = v27;
  v240 = v25;
  v230 = v28;
  v47 = *(v40 + 16);
  if (v47)
  {
    v48 = sub_222580D8C(*(v40 + 16), 0, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
    v49 = v244;
    v50 = sub_222583430(&v255, &v48[(*(v244 + 80) + 32) & ~*(v244 + 80)], v47, v46);
    sub_222568DEC(v255);
    v51 = v230;
    v52 = v232;
    if (v50 == v47)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v49 = v244;
  v51 = v230;
  v52 = v232;
LABEL_8:
  v53 = v52[7];
  v53(v39, 1, 1, v51);
  v54 = sub_22258FF68();
  v213 = v53;
  v214 = v52 + 7;
  v236 = v54;
  sub_22256EA7C(v39, &qword_27D00EEA0, &qword_2225918F8);
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Defaults(0);
  v56 = __swift_project_value_buffer(v55, qword_28130F8F8);
  swift_beginAccess();
  v57 = *(v55 + 24);
  v58 = v52[2];
  v59 = v56 + v57;
  v60 = v246;
  v58(v246, v59, v51);
  v237 = sub_22258FF48();
  v211 = v58;
  v212 = v52 + 2;
  v62 = v52[1];
  v208 = v52 + 1;
  v207 = v62;
  v62(v60, v51);

  v63 = *(v236 + 64);
  v217 = v236 + 64;
  v64 = 1 << *(v236 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v63;
  v67 = (v64 + 63) >> 6;
  v243 = (v49 + 16);
  v231 = (v242 + 16);
  v245 = (v242 + 32);
  v246 = (v49 + 32);
  v210 = (v248 + 48);
  v209 = (v248 + 8);
  v205 = (v249 + 48);
  v234 = (v49 + 8);
  v233 = (v242 + 8);
  v219 = "purgeAllReplicatorRecords()";
  v202 = (v249 + 32);
  v201 = (v249 + 16);
  v200 = (v248 + 16);
  v199 = (v249 + 8);

  v69 = 0;
  *&v70 = 136315394;
  v218 = v70;
  *&v70 = 136315650;
  v203 = v70;
  v198 = xmmword_222591200;
  v206 = v68;
  v71 = v238;
  v72 = v252;
  v73 = v250;
  v235 = v67;
LABEL_15:
  v74 = v69;
  v75 = v251;
  while (v66)
  {
    v85 = v71;
    v86 = v74;
LABEL_29:
    v248 = (v66 - 1) & v66;
    v89 = __clz(__rbit64(v66)) | (v86 << 6);
    v90 = v236;
    v91 = v244;
    v92 = v241;
    v93 = v253;
    (*(v244 + 16))(v241, *(v236 + 48) + *(v244 + 72) * v89, v253);
    v94 = v242;
    (*(v242 + 16))(v73, *(v90 + 56) + *(v242 + 72) * v89, v85);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF10, &qword_222591B80);
    v96 = *(v95 + 48);
    v97 = *(v91 + 32);
    v98 = v240;
    v97(v240, v92, v93);
    v99 = *(v94 + 32);
    v71 = v85;
    v100 = v98 + v96;
    v73 = v250;
    v99(v100, v250, v85);
    (*(*(v95 - 8) + 56))(v98, 0, 1, v95);
    v249 = v86;
    v101 = v98;
    v75 = v251;
    v72 = v252;
    v88 = v247;
LABEL_30:
    v102 = v239;
    sub_222585504(v101, v239, &qword_27D00EF08, &qword_222591B78);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF10, &qword_222591B80);
    if ((*(*(v103 - 8) + 48))(v102, 1, v103) == 1)
    {

      return v206;
    }

    v104 = *(v103 + 48);
    (*v246)(v88, v102, v253);
    (*v245)(v72, v102 + v104, v71);
    v105 = v237;
    if (*(v237 + 16))
    {
      v106 = sub_222585EF4(v88);
      if (v107)
      {
        v108 = *(*(v105 + 56) + 8 * v106);
        swift_bridgeObjectRetain_n();
        v109 = sub_2225790E4(v108);
        v111 = v110;

        if (v111 & 1) == 0 && *(v108 + 16) && (v112 = sub_22258609C(v109), (v113))
        {
          v211(v216, *(v108 + 56) + v232[9] * v112, v230);

          if (qword_28130FA08 != -1)
          {
            swift_once();
          }

          v114 = sub_22258FEB8();
          __swift_project_value_buffer(v114, qword_281310230);
          v115 = v227;
          sub_22258FFD8();
          v116 = v229;
          if ((*v210)(v115, 1, v229) == 1)
          {
            sub_22256EA7C(v115, &qword_27D00EF00, &qword_222591B70);
            if (qword_28130F910 != -1)
            {
              swift_once();
            }

            v117 = sub_2225901D8();
            __swift_project_value_buffer(v117, qword_28130F918);
            v118 = v224;
            (*v231)(v224, v72, v71);
            v119 = v71;
            v120 = sub_2225901B8();
            v121 = sub_222590668();
            if (os_log_type_enabled(v120, v121))
            {
              v122 = swift_slowAlloc();
              v204 = swift_slowAlloc();
              v254 = v204;
              *v122 = v203;
              *(v122 + 4) = sub_222580F0C(0xD000000000000016, v219 | 0x8000000000000000, &v254);
              *(v122 + 12) = 2082;
              sub_2225850A8(&qword_27D00EF18, MEMORY[0x277D467E0], MEMORY[0x277D467F8]);
              LODWORD(v197) = v121;
              v123 = sub_2225908B8();
              v124 = v118;
              v126 = v125;
              v127 = *v233;
              (*v233)(v124, v119);
              v128 = sub_222580F0C(v123, v126, &v254);

              *(v122 + 14) = v128;
              *(v122 + 22) = 2082;
              sub_2225850A8(&qword_27D00EF20, MEMORY[0x277D46538], MEMORY[0x277D46548]);
              v129 = sub_2225908B8();
              v131 = sub_222580F0C(v129, v130, &v254);

              *(v122 + 24) = v131;
              _os_log_impl(&dword_222567000, v120, v197, "%s: no compatible data found in %{public}s version: %{public}s", v122, 0x20u);
              v132 = v204;
              swift_arrayDestroy();
              MEMORY[0x223DBA5D0](v132, -1, -1);
              v133 = v122;
              v72 = v252;
              MEMORY[0x223DBA5D0](v133, -1, -1);

              v207(v216, v230);
              v127(v72, v119);
              v75 = v251;
            }

            else
            {

              v177 = *v233;
              (*v233)(v118, v119);
              v207(v216, v230);
              v177(v72, v119);
            }

            (*v234)(v88, v253);
            v74 = v249;
            v71 = v119;
            goto LABEL_55;
          }

          v155 = sub_222590058();
          v157 = v156;
          v204 = *v209;
          v204(v115, v116);
          v158 = v215;
          v159 = v230;
          v211(v215, v216, v230);
          v213(v158, 0, 1, v159);
          sub_22258556C(v155, v157);
          sub_222590068();
          sub_22258FFF8();
          v160 = v225;
          sub_22258FDC8();

          if ((*v205)(v160, 1, v226) != 1)
          {
            v179 = *v202;
            v197 = v155;
            v180 = v221;
            v181 = v226;
            v179(v221, v160, v226);
            (*v243)(v241, v88, v253);
            (*v201)(v222, v180, v181);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF28, &qword_222591B88);
            v196 = v157;
            v182 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF30, &qword_222591B90) - 8);
            v183 = (*(*v182 + 80) + 32) & ~*(*v182 + 80);
            v184 = swift_allocObject();
            *(v184 + 16) = v198;
            v185 = (v184 + v183);
            v186 = v182[14];
            *v185 = sub_22258FEA8();
            v187 = v185 + v186;
            v188 = v229;
            (*v200)(v187, v228, v229);
            sub_22258D194(v184);
            swift_setDeallocating();
            sub_22256EA7C(v185, &qword_27D00EF30, &qword_222591B90);
            swift_deallocClassInstance();
            v73 = v250;
            sub_222590048();
            v189 = v220;
            (*v231)(v220, v73, v238);
            v190 = v206;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254 = v190;
            v192 = v247;
            sub_22258205C(v189, v247, isUniquelyReferenced_nonNull_native);
            sub_2225855C0(v197, v196);
            v193 = *v233;
            (*v233)(v73, v238);
            v194 = v181;
            v72 = v252;
            (*v199)(v180, v194);
            v195 = v188;
            v71 = v238;
            v204(v228, v195);
            v207(v216, v230);
            v193(v72, v71);
            (*v234)(v192, v253);
            v206 = v254;
            v67 = v235;
            v66 = v248;
            v69 = v249;
            goto LABEL_15;
          }

          sub_22256EA7C(v160, &qword_27D00EED8, &qword_222591AC8);
          v161 = v253;
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v162 = sub_2225901D8();
          __swift_project_value_buffer(v162, qword_28130F918);
          v163 = v223;
          v164 = v247;
          (*v243)(v223, v247, v161);
          v165 = sub_2225901B8();
          v166 = sub_222590668();
          if (os_log_type_enabled(v165, v166))
          {
            v167 = v161;
            v168 = v163;
            v169 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            v254 = v170;
            *v169 = v218;
            *(v169 + 4) = sub_222580F0C(0xD000000000000016, v219 | 0x8000000000000000, &v254);
            *(v169 + 12) = 2082;
            v171 = sub_22258FFF8();
            v173 = v172;
            v196 = v157;
            v197 = v155;
            v174 = *v234;
            (*v234)(v168, v167);
            v175 = sub_222580F0C(v171, v173, &v254);
            v75 = v251;

            *(v169 + 14) = v175;
            _os_log_impl(&dword_222567000, v165, v166, "%s: could not generate uuid from %{public}s", v169, 0x16u);
            swift_arrayDestroy();
            v176 = v170;
            v72 = v252;
            MEMORY[0x223DBA5D0](v176, -1, -1);
            MEMORY[0x223DBA5D0](v169, -1, -1);

            sub_2225855C0(v197, v196);
            v204(v228, v229);
            v207(v216, v230);
            v71 = v238;
            (*v233)(v72, v238);
            v174(v247, v167);
          }

          else
          {

            sub_2225855C0(v155, v157);
            v178 = *v234;
            (*v234)(v163, v161);
            v204(v228, v229);
            v207(v216, v230);
            v71 = v238;
            (*v233)(v72, v238);
            v178(v164, v161);
          }
        }

        else
        {
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v141 = sub_2225901D8();
          __swift_project_value_buffer(v141, qword_28130F918);

          v142 = sub_2225901B8();
          v143 = sub_222590668();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v254 = v145;
            *v144 = v218;
            *(v144 + 4) = sub_222580F0C(0xD000000000000016, v219 | 0x8000000000000000, &v254);
            *(v144 + 12) = 2082;
            v146 = sub_222590468();
            v148 = v147;

            v149 = v146;
            v75 = v251;
            v150 = sub_222580F0C(v149, v148, &v254);

            *(v144 + 14) = v150;
            _os_log_impl(&dword_222567000, v142, v143, "%s: no url found in %{public}s", v144, 0x16u);
            swift_arrayDestroy();
            v151 = v145;
            v72 = v252;
            MEMORY[0x223DBA5D0](v151, -1, -1);
            v152 = v144;
            v71 = v238;
            MEMORY[0x223DBA5D0](v152, -1, -1);
          }

          else
          {
          }

          (*v233)(v72, v71);
          (*v234)(v88, v253);
        }

        v74 = v249;
LABEL_55:
        v73 = v250;
        goto LABEL_18;
      }
    }

    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v134 = sub_2225901D8();
    __swift_project_value_buffer(v134, qword_28130F918);
    v135 = v88;
    v136 = v88;
    v137 = v253;
    (*v243)(v75, v135, v253);
    v138 = sub_2225901B8();
    v139 = sub_222590668();
    if (os_log_type_enabled(v138, v139))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v254 = v77;
      *v76 = v218;
      *(v76 + 4) = sub_222580F0C(0xD000000000000016, v219 | 0x8000000000000000, &v254);
      *(v76 + 12) = 2082;
      sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798], MEMORY[0x277D467C0]);
      v78 = sub_2225908B8();
      v80 = v79;
      v81 = *v234;
      (*v234)(v251, v137);
      v82 = sub_222580F0C(v78, v80, &v254);
      v75 = v251;

      *(v76 + 14) = v82;
      _os_log_impl(&dword_222567000, v138, v139, "%s: no urls found for record %{public}s", v76, 0x16u);
      swift_arrayDestroy();
      v83 = v77;
      v73 = v250;
      MEMORY[0x223DBA5D0](v83, -1, -1);
      v84 = v76;
      v71 = v238;
      MEMORY[0x223DBA5D0](v84, -1, -1);

      v72 = v252;
      (*v233)(v252, v71);
      v81(v136, v137);
    }

    else
    {

      v140 = *v234;
      (*v234)(v75, v137);
      v72 = v252;
      (*v233)(v252, v71);
      v140(v136, v137);
    }

    v74 = v249;
LABEL_18:
    v67 = v235;
    v66 = v248;
  }

  if (v67 <= v74 + 1)
  {
    v87 = v74 + 1;
  }

  else
  {
    v87 = v67;
  }

  v88 = v247;
  while (1)
  {
    v86 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v86 >= v67)
    {
      v249 = v87 - 1;
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF10, &qword_222591B80);
      v154 = v240;
      (*(*(v153 - 8) + 56))(v240, 1, 1, v153);
      v101 = v154;
      v248 = 0;
      goto LABEL_30;
    }

    v66 = *(v217 + 8 * v86);
    ++v74;
    if (v66)
    {
      v85 = v71;
      goto LABEL_29;
    }
  }

  __break(1u);
  swift_once();
  v41 = sub_2225901D8();
  __swift_project_value_buffer(v41, qword_28130F918);
  v42 = sub_2225901B8();
  v43 = sub_222590678();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v255 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_222580F0C(0xD000000000000016, 0x8000000222593BB0, &v255);
    _os_log_impl(&dword_222567000, v42, v43, "%s: no record versions found", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223DBA5D0](v45, -1, -1);
    MEMORY[0x223DBA5D0](v44, -1, -1);
  }

  return 0;
}

unint64_t sub_2225790E4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 48);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

void sub_2225791F0()
{
  v0 = sub_222590138();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222590098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22258FF18();
  v25 = v3;
  v9 = *(v8 + 16);
  if (v9 && (v22[3] = v1, v22[4] = v0, v10 = sub_222580D8C(v9, 0, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]), v11 = *(sub_222590038() - 8), v12 = (*(v11 + 80) + 32) & ~*(v11 + 80), v22[1] = v10, v13 = sub_222583430(&v27, &v10[v12], v9, v8), v23 = v27, v24 = v13, v22[2] = v8, , sub_222568DEC(v23), v24 != v9))
  {
    __break(1u);
    swift_once();
    v14 = sub_2225901D8();
    __swift_project_value_buffer(v14, qword_28130F918);
    v15 = 0;
    v16 = sub_2225901B8();
    v17 = sub_222590668();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_222580F0C(0xD00000000000001BLL, 0x8000000222593B90, &v26);
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v19 = v15;
      v21 = v15;
      _os_log_impl(&dword_222567000, v16, v17, "%s: error deleting records: %@", v18, 0x16u);
      sub_22256EA7C(v19, &qword_27D00EDB0, &unk_222591A20);
      MEMORY[0x223DBA5D0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DBA5D0](v20, -1, -1);
      MEMORY[0x223DBA5D0](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D46818], v4);
    sub_22258FF58();
    (*(v5 + 8))(v7, v4);
  }
}

void sub_2225798D8(uint64_t a1)
{
  v3 = sub_222590098();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v82 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22258FEC8();
  v83 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v81 = (v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_22258FDF8();
  v8 = *(v88 - 8);
  v9 = MEMORY[0x28223BE20](v88);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F90];
  v90 = MEMORY[0x277D84F90];
  v91[0] = MEMORY[0x277D84F90];
  v13 = *(sub_22257251C(v9) + 16);

  if (v13)
  {
    if (qword_28130F8F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Defaults(0);
    __swift_project_value_buffer(v14, qword_28130F8F8);
    swift_beginAccess();
    v15 = Defaults.pairedMirroringDevices.getter();
    swift_endAccess();
    v84 = sub_2225857F4(v15);

    v17 = sub_22257251C(v16);
    v18 = *(v17 + 16);
    v80 = v4;
    v79 = v6;
    if (v18)
    {
      v77 = v3;
      v78 = v1;
      v89 = v12;
      sub_2225814B4(0, v18, 0);
      v12 = v89;
      v20 = *(v8 + 16);
      v19 = v8 + 16;
      v86 = v20;
      v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
      v76[1] = v17;
      v22 = v17 + v21;
      v85 = *(v19 + 56);
      v87 = v19;
      v23 = (v19 - 8);
      do
      {
        v24 = v88;
        v86(v11, v22, v88);
        v25 = sub_22258FDD8();
        v27 = v26;
        (*v23)(v11, v24);
        v89 = v12;
        v29 = *(v12 + 16);
        v28 = *(v12 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2225814B4((v28 > 1), v29 + 1, 1);
          v12 = v89;
        }

        *(v12 + 16) = v29 + 1;
        v30 = v12 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v22 += v85;
        --v18;
      }

      while (v18);

      v31 = v77;
    }

    else
    {

      v31 = v3;
    }

    v43 = sub_2225857F4(v12);

    v44 = sub_222580660(v84, v43);

    if ((v44 & 1) == 0)
    {
      if (qword_28130F910 != -1)
      {
        swift_once();
      }

      v45 = sub_2225901D8();
      v46 = __swift_project_value_buffer(v45, qword_28130F918);
      v47 = sub_2225901B8();
      v48 = sub_222590678();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v89 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_222580F0C(0xD000000000000045, 0x8000000222593BD0, &v89);
        _os_log_impl(&dword_222567000, v47, v48, "%s: devices changed", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x223DBA5D0](v50, -1, -1);
        MEMORY[0x223DBA5D0](v49, -1, -1);
      }

      v51 = sub_22257716C();
      if (v51)
      {
        v52 = v51;

        v87 = v46;
        v53 = sub_2225901B8();
        v54 = sub_222590678();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v89 = v56;
          *v55 = 136315650;
          *(v55 + 4) = sub_222580F0C(0xD000000000000045, 0x8000000222593BD0, &v89);
          *(v55 + 12) = 2048;
          *(v55 + 14) = *(v52 + 16);

          *(v55 + 22) = 2080;
          sub_22257251C(v57);
          v58 = MEMORY[0x223DB9AD0]();
          v60 = v59;

          v61 = sub_222580F0C(v58, v60, &v89);

          *(v55 + 24) = v61;
          _os_log_impl(&dword_222567000, v53, v54, "%s: re-adding %ld replicator records to %s", v55, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DBA5D0](v56, -1, -1);
          MEMORY[0x223DBA5D0](v55, -1, -1);
        }

        else
        {
        }

        v66 = *(v52 + 16);
        v67 = v80;
        v68 = v79;
        if (v66)
        {
          v69 = sub_222580D8C(*(v52 + 16), 0, &qword_27D00EEF0, &unk_222591AE8, MEMORY[0x277D467E0]);
          v70 = *(sub_222590088() - 8);
          v71 = sub_2225836D4(&v89, &v69[(*(v70 + 80) + 32) & ~*(v70 + 80)], v66, v52);
          v72 = sub_222568DEC(v89);
          if (v71 == v66)
          {
LABEL_33:
            v73 = v81;
            *v73 = sub_22257251C(v72);
            v74 = v83;
            (*(v83 + 104))(v73, *MEMORY[0x277D46550], v68);
            v75 = v82;
            (*(v67 + 104))(v82, *MEMORY[0x277D46818], v31);
            sub_22258FF38();

            (*(v67 + 8))(v75, v31);
            (*(v74 + 8))(v73, v68);
            return;
          }

          __break(1u);
        }

        goto LABEL_33;
      }

      v62 = sub_2225901B8();
      v63 = sub_222590678();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v89 = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_222580F0C(0xD000000000000045, 0x8000000222593BD0, &v89);
        _os_log_impl(&dword_222567000, v62, v63, "%s: no records to re-add", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x223DBA5D0](v65, -1, -1);
        MEMORY[0x223DBA5D0](v64, -1, -1);
      }
    }
  }

  else
  {
    v32 = a1;
    v33 = StoreContext.fetchAllItems()();

    sub_222583DB8(v33, v1, &v90, v91);

    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v34 = sub_2225901D8();
    __swift_project_value_buffer(v34, qword_28130F918);
    v35 = sub_2225901B8();
    v36 = sub_222590678();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89 = v38;
      *v37 = 136315650;
      *(v37 + 4) = sub_222580F0C(0xD000000000000045, 0x8000000222593BD0, &v89);
      *(v37 + 12) = 2048;
      swift_beginAccess();
      *(v37 + 14) = *(v91[0] + 16);
      *(v37 + 22) = 2048;
      swift_beginAccess();
      if (v90 >> 62)
      {
        v39 = sub_2225907F8();
      }

      else
      {
        v39 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v37 + 24) = v39;
      _os_log_impl(&dword_222567000, v35, v36, "%s: deleting %ld records and %ld items", v37, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223DBA5D0](v38, -1, -1);
      MEMORY[0x223DBA5D0](v37, -1, -1);
    }

    swift_beginAccess();
    v40 = v91[0];
    swift_beginAccess();
    v41 = v90;

    v42._rawValue = v41;
    sub_222573B08(v40, v42, v32);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_22257A550()
{
  result = sub_2225901A8();
  if (result)
  {
    type metadata accessor for StoreContext();
    inited = swift_initStackObject();
    sub_2225902B8();
    swift_allocObject();

    *(inited + 16) = sub_2225902C8();
    sub_222575D78(inited);
    sub_222576538(inited);
    sub_222574120();
    swift_setDeallocating();
  }

  return result;
}

uint64_t sub_22257A74C()
{
  v1 = v0;
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  sub_2225902B8();
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  v3 = swift_initStackObject();
  swift_allocObject();

  *(v3 + 16) = sub_2225902C8();
  v8 = MEMORY[0x277D84F90];
  v4 = [objc_opt_self() hiddenApplications];
  sub_222590638();
  v5 = sub_222590568();

  sub_22258418C(v5, v3, v1, &v8);

  sub_22257DD70(v8);
  swift_setDeallocating();

  if (sub_222585A8C(v6))
  {
    sub_222575D78(inited);
  }
}

uint64_t sub_22257A8F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EED8, &qword_222591AC8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_22258FDF8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22258FEF8();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_22256EA7C(v2, &qword_27D00EED8, &qword_222591AC8);
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v7 = sub_2225901D8();
    __swift_project_value_buffer(v7, qword_28130F918);
    v8 = sub_2225901B8();
    v9 = sub_222590668();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_222567000, v8, v9, "Failed to get .localDeviceID from the replicator", v10, 2u);
      MEMORY[0x223DBA5D0](v10, -1, -1);
    }

    v11 = qword_27D00EEC8;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = sub_22258FDD8();
    (*(v4 + 8))(v6, v3);
  }

  return v11;
}

uint64_t sub_22257AB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v38 = a1;
  v42 = a4;
  v39 = sub_22258FDF8();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222590038();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_222590078();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22258FBF8();
  swift_allocObject();
  sub_22258FBE8();
  sub_22258FBC8();
  v15 = a3;
  v43 = a3;
  type metadata accessor for SyncItem(0);
  sub_2225850A8(&qword_28130FEC8, type metadata accessor for SyncItem, &protocol conformance descriptor for SyncItem);
  v16 = sub_22258FBD8();
  v33 = v11;
  v34 = v12;
  v18 = v17;
  v19 = sub_22258FD68();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v10, v36, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  sub_22258556C(v16, v18);
  sub_222590068();
  (*(v35 + 16))(v41, v38, v6);
  (*(v37 + 16))(v40, v15 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF28, &qword_222591B88);
  v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF30, &qword_222591B90) - 8);
  v22 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_222591200;
  v24 = (v23 + v22);
  v25 = v21[14];
  if (qword_28130FA08 != -1)
  {
    swift_once();
  }

  v26 = sub_22258FEB8();
  __swift_project_value_buffer(v26, qword_281310230);
  *v24 = sub_22258FEA8();
  v27 = v34;
  v28 = v24 + v25;
  v29 = v33;
  (*(v34 + 16))(v28, v14, v33);
  sub_22258D194(v23);
  swift_setDeallocating();
  sub_22256EA7C(v24, &qword_27D00EF30, &qword_222591B90);
  swift_deallocClassInstance();
  v30 = v42;
  sub_222590048();

  sub_2225855C0(v16, v18);
  (*(v27 + 8))(v14, v29);
  v31 = sub_222590088();
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

void sub_22257B26C(uint64_t a1)
{
  v2 = *(sub_22257251C(a1) + 16);

  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = (a1 + 40);
      do
      {
        v6 = *(v4 - 1);
        v5 = *v4;

        sub_22257B3D8(v6, v5);

        v4 += 2;
        --v3;
      }

      while (v3);
    }

    sub_22257E808();
  }

  else
  {
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v7 = sub_2225901D8();
    __swift_project_value_buffer(v7, qword_28130F918);
    oslog = sub_2225901B8();
    v8 = sub_222590678();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_222567000, oslog, v8, "Not adding bundles because there are no paired mirroring devices", v9, 2u);
      MEMORY[0x223DBA5D0](v9, -1, -1);
    }
  }
}

void sub_22257B3D8(uint64_t a1, unint64_t a2)
{
  v227 = sub_222590098();
  v211 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v209 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_22258FEC8();
  v210 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v225 = (&v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE0, &unk_222591AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v214 = &v194 - v8;
  v9 = sub_222590088();
  v219 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v213 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_22258FD68();
  v224 = *(v228 - 8);
  v11 = MEMORY[0x28223BE20](v228);
  v208 = &v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v221 = &v194 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v220 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v218 = &v194 - v17;
  v18 = sub_22258FDB8();
  v216 = *(v18 - 8);
  v217 = v18;
  MEMORY[0x28223BE20](v18);
  v215 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_222590018();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v194 - v24;
  v223 = sub_22258FDF8();
  v26 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v222 = &v194 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_222590038();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v207 = &v194 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v226 = &v194 - v33;
  v230 = v2;
  v34 = *(sub_22257251C(v32) + 16);

  if (!v34)
  {
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v48 = sub_2225901D8();
    __swift_project_value_buffer(v48, qword_28130F918);

    v231 = sub_2225901B8();
    v49 = sub_222590678();

    if (os_log_type_enabled(v231, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v232 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_222580F0C(a1, a2, &v232);
      _os_log_impl(&dword_222567000, v231, v49, "Not adding bundle identifier: %s because there are no paired mirroring devices", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x223DBA5D0](v51, -1, -1);
      MEMORY[0x223DBA5D0](v50, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v205 = v28;
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v35 = sub_2225901D8();
  v36 = __swift_project_value_buffer(v35, qword_28130F918);

  v229 = v36;
  v37 = sub_2225901B8();
  v38 = sub_222590678();

  v39 = os_log_type_enabled(v37, v38);
  v206 = v29;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v232 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_222580F0C(a1, a2, &v232);
    _os_log_impl(&dword_222567000, v37, v38, "Adding record for bundle identifier '%s'", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x223DBA5D0](v41, -1, -1);
    MEMORY[0x223DBA5D0](v40, -1, -1);
  }

  v42 = objc_opt_self();
  v43 = sub_222590498();
  v231 = [v42 applicationWithBundleIdentifier_];

  LOBYTE(v42) = [v231 isHidden];

  if ((v42 & 1) == 0)
  {
    v204 = v9;
    v52 = sub_22257A8F4();
    v55 = sub_22258E62C(a1, a2, v52, v53);
    v202 = 0;
    type metadata accessor for StoreContext();
    inited = swift_initStackObject();
    sub_2225902B8();
    swift_allocObject();

    v200 = sub_2225902C8();
    *(inited + 16) = v200;
    v57 = *(v26 + 16);
    v197 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier;
    v59 = v222;
    v58 = v223;
    v199 = v26 + 16;
    v198 = v57;
    v57(v222, v55 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, v223);
    sub_22258FDD8();
    v60 = *(v26 + 8);
    v196 = v26 + 8;
    v195 = v60;
    v60(v59, v58);
    (*(v26 + 56))(v25, 1, 1, v58);
    sub_22258588C(v25, v23, MEMORY[0x277D46788]);
    v61 = v226;
    sub_22258FFE8();
    sub_2225858F4(v25, MEMORY[0x277D46788]);
    v62 = *(v55 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v63 = *(v55 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);
    v64 = *(v55 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v65 = *(v55 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);
    v203 = v55;
    v66 = *(v55 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    v67 = *(v55 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8);

    v201 = inited;
    v68 = sub_22256B03C(v62, v63, v64, v65, v66, v67);

    if (v68 >> 62)
    {
      v69 = sub_2225907F8();
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v206;
    v71 = v227;
    v72 = v228;
    v73 = v225;
    v74 = v61;
    if (v69)
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x223DB9CC0](0, v68);
      }

      else
      {
        if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v75 = *(v68 + 32);
      }

      v76 = sub_22258D370(v75);

      v78 = v216;
      v77 = v217;
      v79 = v215;
      (*(v216 + 16))(v215, v203 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate, v217);
      v80 = sub_22258FDA8();
      (*(v78 + 8))(v79, v77);
      v81 = v224;
      v82 = v218;
      if (v80)
      {

        v83 = sub_2225901B8();
        v84 = v76;
        v85 = sub_222590648();

        if (os_log_type_enabled(v83, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v232 = v87;
          *v86 = 136315138;

          v88 = SyncItem.description.getter();
          v89 = v81;
          v91 = v90;

          v92 = sub_222580F0C(v88, v91, &v232);
          v81 = v89;
          v93 = v206;

          *(v86 + 4) = v92;
          _os_log_impl(&dword_222567000, v83, v85, "Existing item unchanged, will check for replicator record: %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x223DBA5D0](v87, -1, -1);
          v94 = v86;
          v70 = v93;
          MEMORY[0x223DBA5D0](v94, -1, -1);
        }

        v73 = v225;
        v74 = v226;
        v76 = v84;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE8, &qword_222591AE0);
      v95 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_222591200;
      (*(v70 + 16))(v96 + v95, v74, v205);
      (*(v81 + 56))(v82, 1, 1, v228);
      v97 = v202;
      v98 = sub_22258FF68();
      v99 = v97;
      if (v97)
      {
        sub_22256EA7C(v82, &qword_27D00EEA0, &qword_2225918F8);

        v100 = v97;
        v101 = sub_2225901B8();
        v102 = sub_222590668();

        v103 = os_log_type_enabled(v101, v102);
        v71 = v227;
        if (v103)
        {
          v104 = swift_slowAlloc();
          v218 = v76;
          v105 = v104;
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v232 = v107;
          *v105 = 136315394;
          v108 = v222;
          v109 = v223;
          v198(v222, v203 + v197, v223);
          v110 = v99;
          v111 = sub_22258FDD8();
          v113 = v112;
          v195(v108, v109);
          v114 = sub_222580F0C(v111, v113, &v232);

          *(v105 + 4) = v114;
          *(v105 + 12) = 2112;
          v115 = v110;
          v116 = _swift_stdlib_bridgeErrorToNSError();
          *(v105 + 14) = v116;
          *v106 = v116;
          _os_log_impl(&dword_222567000, v101, v102, "Error getting replicator record for %s: %@", v105, 0x16u);
          sub_22256EA7C(v106, &qword_27D00EDB0, &unk_222591A20);
          v72 = v228;
          MEMORY[0x223DBA5D0](v106, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v107);
          v81 = v224;
          MEMORY[0x223DBA5D0](v107, -1, -1);
          v73 = v225;
          v74 = v226;
          MEMORY[0x223DBA5D0](v105, -1, -1);
          v117 = v110;
          v71 = v227;

          v118 = v203;
          v202 = 0;
          goto LABEL_39;
        }

        v202 = 0;
        v118 = v203;
      }

      else
      {
        v202 = 0;
        v119 = v98;
        sub_22256EA7C(v82, &qword_27D00EEA0, &qword_2225918F8);

        v120 = *(v119 + 16);

        v71 = v227;
        if (v120)
        {

          v121 = sub_2225901B8();
          v122 = sub_222590648();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v232 = v124;
            *v123 = 136315138;

            v125 = SyncItem.description.getter();
            v127 = v126;

            v128 = sub_222580F0C(v125, v127, &v232);

            *(v123 + 4) = v128;
            _os_log_impl(&dword_222567000, v121, v122, "Have replicator record, will not add: %s", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v124);
            MEMORY[0x223DBA5D0](v124, -1, -1);
            MEMORY[0x223DBA5D0](v123, -1, -1);
          }

          else
          {
          }

          (*(v70 + 8))(v74, v205);
LABEL_59:

          return;
        }

        v118 = v76;
      }

      v72 = v228;
    }

    else
    {

      v81 = v224;
      v118 = v203;
    }

LABEL_39:
    v129 = (v118 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v130 = *(v118 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v131 = *(v118 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);

    v132 = v220;
    sub_22257CFE4(v130, v131, v220);

    if ((*(v81 + 48))(v132, 1, v72) == 1)
    {
      sub_22256EA7C(v132, &qword_27D00EEA0, &qword_2225918F8);
      v133 = sub_2225901B8();
      v134 = sub_222590668();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v232 = v136;
        *v135 = 136315138;

        v137 = SyncItem.description.getter();
        v139 = v138;

        v140 = sub_222580F0C(v137, v139, &v232);

        *(v135 + 4) = v140;
        _os_log_impl(&dword_222567000, v133, v134, "Failed to create placeholder for %s", v135, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v136);
        MEMORY[0x223DBA5D0](v136, -1, -1);
        MEMORY[0x223DBA5D0](v135, -1, -1);
      }

      (*(v206 + 8))(v74, v205);
    }

    else
    {
      v141 = v221;
      (*(v81 + 32))(v221, v132, v72);

      v142 = v214;
      sub_22257AB50(v74, v141, v118, v214);

      v143 = v219;
      v144 = v204;
      if ((*(v219 + 48))(v142, 1, v204) == 1)
      {
        sub_22256EA7C(v142, &qword_27D00EEE0, &unk_222591AD0);
        v145 = sub_2225901B8();
        v146 = sub_222590668();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&dword_222567000, v145, v146, "could not create replicator record", v147, 2u);
          MEMORY[0x223DBA5D0](v147, -1, -1);
        }

        v148 = v221;
        sub_222584CA0(v221);

        (*(v81 + 8))(v148, v228);
        (*(v206 + 8))(v226, v205);
      }

      else
      {
        v149 = v213;
        (*(v143 + 32))(v213, v142, v144);
        v225 = *(v230 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEF0, &unk_222591AE8);
        v150 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v151 = swift_allocObject();
        *(v151 + 16) = xmmword_222591200;
        v152 = (*(v143 + 16))(v151 + v150, v149, v144);
        *v73 = sub_22257251C(v152);
        v153 = v73;
        v154 = v210;
        (*(v210 + 104))(v73, *MEMORY[0x277D46550], v212);
        v155 = v211;
        v156 = v209;
        (*(v211 + 104))(v209, *MEMORY[0x277D46818], v71);
        v157 = v202;
        sub_22258FF38();
        if (v157)
        {

          (*(v155 + 8))(v156, v227);
          (*(v154 + 8))(v153, v212);
          (*(v219 + 8))(v213, v144);
          v158 = v206;
          v159 = v226;
          v184 = v157;
          v185 = sub_2225901B8();
          v186 = sub_222590668();

          if (os_log_type_enabled(v185, v186))
          {
            v187 = swift_slowAlloc();
            v188 = swift_slowAlloc();
            *v187 = 138412290;
            v189 = v157;
            v190 = _swift_stdlib_bridgeErrorToNSError();
            *(v187 + 4) = v190;
            *v188 = v190;
            _os_log_impl(&dword_222567000, v185, v186, "Error adding replicator records: %@", v187, 0xCu);
            sub_22256EA7C(v188, &qword_27D00EDB0, &unk_222591A20);
            MEMORY[0x223DBA5D0](v188, -1, -1);
            v191 = v187;
            v158 = v206;
            MEMORY[0x223DBA5D0](v191, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v203 = v118;

          (*(v155 + 8))(v156, v227);
          (*(v154 + 8))(v153, v212);
          v158 = v206;
          v160 = v207;
          v161 = v224;
          v162 = v205;
          (*(v206 + 16))(v207, v226, v205);
          v163 = v208;
          v164 = v228;
          (*(v161 + 16))(v208, v221, v228);
          v165 = sub_2225901B8();
          v166 = sub_222590678();
          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v230 = swift_slowAlloc();
            v232 = v230;
            *v167 = 136446722;
            sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798], MEMORY[0x277D467C0]);
            LODWORD(v227) = v166;
            v168 = sub_2225908B8();
            v169 = v160;
            v171 = v170;
            (*(v206 + 8))(v169, v162);
            v172 = sub_222580F0C(v168, v171, &v232);

            *(v167 + 4) = v172;
            *(v167 + 12) = 2082;
            v173 = *v129;
            v174 = v129[1];

            v175 = sub_222580F0C(v173, v174, &v232);

            *(v167 + 14) = v175;
            *(v167 + 22) = 2080;
            sub_2225850A8(&qword_2813101C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v176 = sub_2225908B8();
            v178 = v177;
            (*(v161 + 8))(v163, v164);
            v179 = sub_222580F0C(v176, v178, &v232);
            v159 = v226;

            *(v167 + 24) = v179;
            _os_log_impl(&dword_222567000, v165, v227, "Added replicator record with id=%{public}s for bundle identifier=%{public}s url: %s", v167, 0x20u);
            v180 = v230;
            swift_arrayDestroy();
            MEMORY[0x223DBA5D0](v180, -1, -1);
            v181 = v167;
            v158 = v206;
            MEMORY[0x223DBA5D0](v181, -1, -1);

            v182 = v213;
          }

          else
          {

            (*(v161 + 8))(v163, v164);
            (*(v158 + 8))(v160, v162);
            v182 = v213;
            v159 = v226;
          }

          StoreContext.add(item:)(v183);
          (*(v219 + 8))(v182, v204);
        }

        v192 = v228;
        v193 = v221;
        sub_222584CA0(v221);

        swift_setDeallocating();

        (*(v224 + 8))(v193, v192);
        (*(v158 + 8))(v159, v205);
      }
    }

    goto LABEL_59;
  }

  v44 = sub_2225901B8();
  v45 = sub_222590678();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v232 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_222580F0C(a1, a2, &v232);
    _os_log_impl(&dword_222567000, v44, v45, "Skipping %s because it is hidden", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x223DBA5D0](v47, -1, -1);
    MEMORY[0x223DBA5D0](v46, -1, -1);

LABEL_14:
    return;
  }

LABEL_16:
  v54 = v231;
}

uint64_t sub_22257CFE4@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v114 = a3;
  v123[3] = *MEMORY[0x277D85DE8];
  v111 = sub_22258FCA8();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v108 - v11;
  v13 = sub_22258FD68();
  v116 = *(v13 - 8);
  v117 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v108 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v108 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v108 - v23;
  v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v118 = a1;
  v115 = a2;
  v26 = sub_222580584(a1, a2, 0);
  v109 = v22;
  if (!v26)
  {
    v28 = v116;
    v27 = v117;
    v113 = *(v116 + 56);
    v113(v12, 1, 1, v117);
    v112 = 0;
    v29 = v19;
    goto LABEL_3;
  }

  v112 = v26;
  v60 = [v26 serializedPlaceholderPath];
  v29 = v19;
  if (v60)
  {
    v61 = v60;
    sub_22258FD18();

    v62 = v116;
    v63 = *(v116 + 56);
    v64 = v10;
    v65 = 0;
  }

  else
  {
    v62 = v116;
    v63 = *(v116 + 56);
    v64 = v10;
    v65 = 1;
  }

  v91 = v117;
  v113 = v63;
  v63(v64, v65, 1, v117);
  sub_222585504(v10, v12, &qword_27D00EEA0, &qword_2225918F8);
  v27 = v91;
  if ((*(v62 + 48))(v12, 1, v91) == 1)
  {
    v28 = v62;
LABEL_3:
    sub_22256EA7C(v12, &qword_27D00EEA0, &qword_2225918F8);
    if (qword_28130F8F0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Defaults(0);
    v31 = __swift_project_value_buffer(v30, qword_28130F8F8);
    swift_beginAccess();
    (*(v28 + 16))(v16, v31 + *(v30 + 28), v27);
    v122[0] = v118;
    v122[1] = v115;
    v32 = v110;
    v33 = v111;
    v110[13](v6, *MEMORY[0x277CC91D8], v111);
    sub_22256E958();
    sub_22258FD48();
    (v32[1])(v6, v33);
    v34 = *(v28 + 8);
    v111 = v28 + 8;
    v110 = v34;
    (v34)(v16, v27);
    sub_22258FCE8();
    (*(v28 + 40))(v29, v16, v27);
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v35 = sub_2225901D8();
    __swift_project_value_buffer(v35, qword_28130F918);
    v36 = sub_2225901B8();
    v37 = sub_222590648();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v122[0] = v39;
      *v38 = 136315138;
      swift_beginAccess();
      v40 = sub_22258FD28();
      v42 = sub_222580F0C(v40, v41, v122);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_222567000, v36, v37, "Attempt to create placeholder at: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223DBA5D0](v39, -1, -1);
      MEMORY[0x223DBA5D0](v38, -1, -1);
    }

    v43 = v115;
    v44 = [objc_opt_self() defaultManager];
    swift_beginAccess();
    v45 = sub_22258FCD8();
    v121 = 0;
    v46 = [v44 removeItemAtURL:v45 error:&v121];

    if (v46)
    {
      v47 = v121;
LABEL_20:
      v66 = sub_222590498();
      v67 = sub_22258FCD8();
      v121 = 0;
      v68 = MICreateSerializedPlaceholderForInstalledApplication();

      v69 = v121;
      if (v68)
      {
        v70 = v121;
        v71 = sub_2225901B8();
        v72 = sub_222590678();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v121 = v74;
          *v73 = 136315138;
          v75 = sub_22258FD28();
          v77 = sub_222580F0C(v75, v76, &v121);

          *(v73 + 4) = v77;
          _os_log_impl(&dword_222567000, v71, v72, "Successfully created placeholder at: %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x223DBA5D0](v74, -1, -1);
          MEMORY[0x223DBA5D0](v73, -1, -1);
        }

        v78 = v117;
        v79 = v114;
        sub_22258FC98();

        v113(v79, 0, 1, v78);
        v80 = v29;
        v81 = v78;
      }

      else
      {

        v82 = v69;
        v83 = sub_2225901B8();
        v84 = sub_222590668();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v121 = v87;
          *v85 = 136315394;
          *(v85 + 4) = sub_222580F0C(v118, v43, &v121);
          *(v85 + 12) = 2112;
          *(v85 + 14) = v82;
          *v86 = v69;
          v88 = v82;
          sub_22256EA7C(v86, &qword_27D00EDB0, &unk_222591A20);
          MEMORY[0x223DBA5D0](v86, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x223DBA5D0](v87, -1, -1);
          MEMORY[0x223DBA5D0](v85, -1, -1);
        }

        v89 = v117;
        v113(v114, 1, 1, v117);

        v80 = v29;
        v81 = v89;
      }

      return (v110)(v80, v81);
    }

    v48 = v121;
    v49 = sub_22258FC68();

    swift_willThrow();
    v121 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
    sub_222585984(0, &qword_28130F790, 0x277CCA9B8);
    swift_dynamicCast();
    v50 = v119[0];
    if ([v119[0] code] != 4)
    {
      v51 = v50;
      v50 = sub_2225901B8();
      v52 = sub_222590668();

      if (os_log_type_enabled(v50, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v120 = v55;
        *v53 = 136315394;
        v56 = sub_22258FD28();
        v58 = sub_222580F0C(v56, v57, &v120);

        *(v53 + 4) = v58;
        v43 = v115;
        *(v53 + 12) = 2112;
        *(v53 + 14) = v51;
        *v54 = v51;
        v59 = v51;
        _os_log_impl(&dword_222567000, v50, v52, "Error removing %s: %@", v53, 0x16u);
        sub_22256EA7C(v54, &qword_27D00EDB0, &unk_222591A20);
        MEMORY[0x223DBA5D0](v54, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x223DBA5D0](v55, -1, -1);
        MEMORY[0x223DBA5D0](v53, -1, -1);

LABEL_19:
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  v92 = *(v62 + 32);
  v92(v24, v12, v91);
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v93 = sub_2225901D8();
  __swift_project_value_buffer(v93, qword_28130F918);
  v94 = v109;
  (*(v62 + 16))(v109, v24, v91);
  v95 = sub_2225901B8();
  v96 = v91;
  v97 = sub_222590648();
  if (os_log_type_enabled(v95, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v118 = v92;
    v100 = v99;
    v123[0] = v99;
    *v98 = 136315138;
    sub_2225850A8(&qword_2813101C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v101 = sub_2225908B8();
    v102 = v94;
    v104 = v103;
    (*(v62 + 8))(v102, v96);
    v105 = sub_222580F0C(v101, v104, v123);

    *(v98 + 4) = v105;
    _os_log_impl(&dword_222567000, v95, v97, "Got cached placeholder at: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v100);
    v106 = v100;
    v92 = v118;
    MEMORY[0x223DBA5D0](v106, -1, -1);
    MEMORY[0x223DBA5D0](v98, -1, -1);
  }

  else
  {

    (*(v62 + 8))(v94, v91);
  }

  v107 = v114;
  v92(v114, v24, v96);
  return (v113)(v107, 0, 1, v96);
}

void *sub_22257DD70(uint64_t a1)
{
  v3 = sub_222590018();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v30 = sub_222590038();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x277D84F90];
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  sub_2225902B8();
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();

  sub_2225840D4(a1);

  v13._rawValue = v32;
  if (v32 >> 62)
  {
    v23 = v32;
    v24 = sub_2225907F8();
    v13._rawValue = v23;
    v14 = v24;
  }

  else
  {
    v14 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_13:
    sub_222573B08(v15, v13, inited);

    sub_22257E808();
    swift_setDeallocating();
  }

  rawValue = v13._rawValue;
  v31 = MEMORY[0x277D84F90];
  result = sub_2225814D4(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v29 = v14;
    v25[0] = inited;
    v25[1] = v1;
    v18 = 0;
    v15 = v31;
    v27 = "generated_placeholders.noindex";
    v28 = "oldersyncservicesd.client";
    v13._rawValue = rawValue;
    v25[2] = v9 + 32;
    v26 = rawValue & 0xC000000000000001;
    v19 = rawValue;
    do
    {
      if (v26)
      {
        MEMORY[0x223DB9CC0](v18, v13._rawValue);
      }

      else
      {
      }

      sub_22258FDD8();
      v20 = sub_22258FDF8();
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      sub_22258588C(v8, v6, MEMORY[0x277D46788]);
      sub_22258FFE8();

      sub_2225858F4(v8, MEMORY[0x277D46788]);
      v31 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2225814D4((v21 > 1), v22 + 1, 1);
        v15 = v31;
      }

      ++v18;
      *(v15 + 16) = v22 + 1;
      (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v11, v30);
      v13._rawValue = v19;
    }

    while (v29 != v18);
    inited = v25[0];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_22257E190(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2225907F8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2225907F8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2225831EC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22258328C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_22257E280(uint64_t a1, uint64_t a2)
{
  v5 = sub_222590018();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v33 = sub_222590038();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  sub_2225902B8();
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  v15 = sub_22257A8F4();
  v17 = StoreContext.fetchItems(bundleIdentifier:deviceIdentifier:)(a1, a2, v15, v16);

  v18._rawValue = v17;
  if (v17 >> 62)
  {
    v27 = sub_2225907F8();
    v18._rawValue = v17;
    v19 = v27;
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
LABEL_13:
    sub_222573B08(v20, v18, inited);

    swift_setDeallocating();
  }

  rawValue = v18._rawValue;
  v34 = MEMORY[0x277D84F90];
  result = sub_2225814D4(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v32 = v19;
    v28[0] = inited;
    v28[1] = v2;
    v23 = 0;
    v20 = v34;
    v30 = "generated_placeholders.noindex";
    v31 = "oldersyncservicesd.client";
    v18._rawValue = rawValue;
    v28[2] = v11 + 32;
    v29 = rawValue & 0xC000000000000001;
    do
    {
      if (v29)
      {
        MEMORY[0x223DB9CC0](v23, v18._rawValue);
      }

      else
      {
      }

      sub_22258FDD8();
      v24 = sub_22258FDF8();
      (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
      sub_22258588C(v10, v8, MEMORY[0x277D46788]);
      sub_22258FFE8();

      sub_2225858F4(v10, MEMORY[0x277D46788]);
      v34 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2225814D4((v25 > 1), v26 + 1, 1);
        v20 = v34;
      }

      ++v23;
      *(v20 + 16) = v26 + 1;
      (*(v11 + 32))(v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v13, v33);
      v18._rawValue = rawValue;
    }

    while (v32 != v23);
    inited = v28[0];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_22257E690()
{
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  sub_2225902B8();
  swift_allocObject();

  v1 = sub_2225902C8();
  *(inited + 16) = v1;
  if (sub_222585A8C(v1))
  {
    sub_222574BE8();
  }
}

uint64_t sub_22257E72C()
{
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  sub_2225902B8();
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  sub_2225798D8(inited);
  swift_setDeallocating();
}

uint64_t sub_22257E7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF58, &qword_222591BC8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281310250 = result;
  return result;
}

void sub_22257E808()
{
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  sub_2225902B8();
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  v1 = StoreContext.fetchAllItems()();
  swift_setDeallocating();

  v2 = sub_22258FF18();
  if (qword_28130F820 != -1)
  {
    swift_once();
  }

  v3 = sub_2225901D8();
  __swift_project_value_buffer(v3, qword_28130F828);

  v4 = sub_2225901B8();
  v5 = sub_222590678();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349312;
    if (v1 >> 62)
    {
      v7 = sub_2225907F8();
    }

    else
    {
      v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    *(v6 + 12) = 2050;
    if (v2)
    {
      v8 = *(v2 + 16);
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 14) = v8;

    _os_log_impl(&dword_222567000, v4, v5, "store count: %{public}ld replicator count: %{public}ld", v6, 0x16u);
    MEMORY[0x223DBA5D0](v6, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v9 = sub_2225901B8();
  v10 = sub_222590678();

  if (!os_log_type_enabled(v9, v10))
  {

LABEL_28:

    return;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v32 = v12;
  *v11 = 136446210;
  if (!(v1 >> 62))
  {
    v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_26:

    v15 = MEMORY[0x277D84F90];
LABEL_27:
    v22 = MEMORY[0x223DB9AD0](v15, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_222580F0C(v22, v24, &v32);

    *(v11 + 4) = v25;
    _os_log_impl(&dword_222567000, v9, v10, "all placeholders: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DBA5D0](v12, -1, -1);
    MEMORY[0x223DBA5D0](v11, -1, -1);
    goto LABEL_28;
  }

  v13 = sub_2225907F8();
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_14:
  v31 = MEMORY[0x277D84F90];
  sub_2225814B4(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v26 = v12;
    v27 = v10;
    v28 = v9;
    v14 = 0;
    v15 = v31;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223DB9CC0](v14, v1);
      }

      else
      {
        v16 = *(v1 + 8 * v14 + 32);
      }

      v18 = *(v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
      v17 = *(v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);
      v29 = *(v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
      v30 = *(v16 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);

      MEMORY[0x223DB9A60](v18, v17);

      v20 = *(v31 + 16);
      v19 = *(v31 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2225814B4((v19 > 1), v20 + 1, 1);
      }

      ++v14;
      *(v31 + 16) = v20 + 1;
      v21 = v31 + 16 * v20;
      *(v21 + 32) = v29;
      *(v21 + 40) = v30;
    }

    while (v13 != v14);

    v9 = v28;
    v10 = v27;
    v12 = v26;
    goto LABEL_27;
  }

  __break(1u);
}

void sub_22257EC74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEF8, &qword_222591AF8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  if (qword_28130FDD0 != -1)
  {
    swift_once();
  }

  v4 = qword_281310250;
  os_unfair_lock_lock((qword_281310250 + 16));
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    sub_22257E808();
    v5 = sub_2225905C8();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;

    sub_22258020C(0, 0, v3, &unk_222591B08, v6);
  }

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_22257EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_22258FDF8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_22258FE88();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_222590018();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = sub_222590038();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = sub_22258FE58();
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF48, &qword_222591BB8);
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF50, &qword_222591BC0);
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22257F0FC, 0, 0);
}

uint64_t sub_22257F0FC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  sub_22258FF08();
  sub_2225905D8();
  (*(v2 + 8))(v1, v3);
  v0[33] = 0;
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_22257F1FC;
  v5 = v0[30];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v5);
}

uint64_t sub_22257F1FC()
{

  return MEMORY[0x2822009F8](sub_22257F2F8, 0, 0);
}

uint64_t sub_22257F2F8()
{
  v153 = v0;
  v1 = v0 + 5;
  v2 = v0[5];
  if (v2)
  {
    type metadata accessor for StoreContext();
    inited = swift_initStackObject();
    sub_2225902B8();
    swift_allocObject();

    v4 = sub_2225902C8();
    *(inited + 16) = v4;
    v151 = *(v2 + 16);
    if (v151)
    {
      v8 = 0;
      v9 = *(v0[25] + 80);
      v150 = v2 + ((v9 + 32) & ~v9);
      v10 = v0[33];
      v146 = v2;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return MEMORY[0x2822003E8](v4, v5, v6, v7);
        }

        sub_22258588C(v150 + *(v0[25] + 72) * v8, v0[26], MEMORY[0x277D46510]);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v18 = v0[26];
        if (EnumCaseMultiPayload != 1)
        {
          (*(v0[11] + 32))(v0[15], v18, v0[10]);
          v45 = sub_2225901A8();
          if (v10)
          {
            if (qword_28130F910 != -1)
            {
              swift_once();
            }

            v46 = sub_2225901D8();
            __swift_project_value_buffer(v46, qword_28130F918);
            v47 = v10;
            v48 = sub_2225901B8();
            v49 = sub_222590668();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              *v50 = 138412290;
              v52 = v10;
              v53 = _swift_stdlib_bridgeErrorToNSError();
              *(v50 + 4) = v53;
              *v51 = v53;
              _os_log_impl(&dword_222567000, v48, v49, "Could not fetch iphone mirroring eligibility: %@", v50, 0xCu);
              sub_22256EA7C(v51, &qword_27D00EDB0, &unk_222591A20);
              MEMORY[0x223DBA5D0](v51, -1, -1);
              MEMORY[0x223DBA5D0](v50, -1, -1);
            }

            else
            {
            }
          }

          else if ((v45 & 1) == 0)
          {
            v121 = v0[31];
            v120 = v0[32];
            v122 = v0[30];
            v123 = v0[15];
            v124 = v0[10];
            v125 = v0[11];

            (*(v125 + 8))(v123, v124);
            (*(v121 + 8))(v120, v122);
            goto LABEL_39;
          }

          v68 = v0[19];
          v67 = v0[20];
          v70 = v0[17];
          v69 = v0[18];
          v71 = v0[16];
          v72 = v0[7];
          v73 = v0[8];
          sub_22258FE68();
          sub_222590028();
          v148 = *(v68 + 8);
          v148(v67, v69);
          (*(v73 + 56))(v71, 1, 1, v72);
          v74 = MEMORY[0x223DB9560](v70, v71);
          v75 = MEMORY[0x277D46788];
          sub_2225858F4(v71, MEMORY[0x277D46788]);
          sub_2225858F4(v70, v75);
          if (v74)
          {
            if (qword_28130F910 != -1)
            {
              swift_once();
            }

            v76 = v0[14];
            v77 = v0[15];
            v78 = v0[10];
            v79 = v0[11];
            v80 = sub_2225901D8();
            __swift_project_value_buffer(v80, qword_28130F918);
            (*(v79 + 16))(v76, v77, v78);
            v81 = sub_2225901B8();
            v82 = sub_222590648();
            if (os_log_type_enabled(v81, v82))
            {
              v83 = v0[20];
              v84 = v0[18];
              v130 = v0[14];
              v136 = v0[11];
              v140 = v0[15];
              v144 = v0[10];
              v85 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v152[0] = v132;
              *v85 = 136315138;
              sub_22258FE68();
              sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798], MEMORY[0x277D467C0]);
              v86 = sub_2225908B8();
              v88 = v87;
              v148(v83, v84);
              v89 = *(v136 + 8);
              v89(v130, v144);
              v90 = sub_222580F0C(v86, v88, v152);

              *(v85 + 4) = v90;
              _os_log_impl(&dword_222567000, v81, v82, "ignoring local updated record: %s", v85, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v132);
              MEMORY[0x223DBA5D0](v132, -1, -1);
              MEMORY[0x223DBA5D0](v85, -1, -1);

              v4 = (v89)(v140, v144);
            }

            else
            {
              v113 = v0[14];
              v112 = v0[15];
              v114 = v0[10];
              v115 = v0[11];

              v116 = *(v115 + 8);
              v116(v113, v114);
              v4 = (v116)(v112, v114);
            }
          }

          else
          {
            if (qword_28130F910 != -1)
            {
              swift_once();
            }

            v91 = v0[15];
            v93 = v0[12];
            v92 = v0[13];
            v94 = v0[10];
            v95 = v0[11];
            v96 = sub_2225901D8();
            __swift_project_value_buffer(v96, qword_28130F918);
            v97 = *(v95 + 16);
            v97(v92, v91, v94);
            v97(v93, v91, v94);
            v98 = sub_2225901B8();
            v99 = sub_222590648();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = v0[20];
              v101 = v0[18];
              v141 = v0[15];
              v102 = v0[13];
              v128 = v0[12];
              v145 = v0[11];
              v126 = v0[10];
              v127 = v0[9];
              v129 = v0[7];
              v131 = v0[8];
              v103 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              v152[0] = v137;
              *v103 = 136315394;
              v133 = v99;
              sub_22258FE68();
              sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798], MEMORY[0x277D467C0]);
              v104 = sub_2225908B8();
              v106 = v105;
              v148(v100, v101);
              v149 = *(v145 + 8);
              v149(v102, v126);
              v107 = sub_222580F0C(v104, v106, v152);

              *(v103 + 4) = v107;
              *(v103 + 12) = 2080;
              sub_22258FE78();
              sub_2225850A8(&qword_281310180, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v108 = sub_2225908B8();
              v110 = v109;
              (*(v131 + 8))(v127, v129);
              v149(v128, v126);
              v111 = sub_222580F0C(v108, v110, v152);

              *(v103 + 14) = v111;
              _os_log_impl(&dword_222567000, v98, v133, "record updated: %s, version: %s", v103, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223DBA5D0](v137, -1, -1);
              MEMORY[0x223DBA5D0](v103, -1, -1);

              v4 = (v149)(v141, v126);
            }

            else
            {
              v11 = v0[15];
              v13 = v0[12];
              v12 = v0[13];
              v14 = v0[10];
              v15 = v0[11];

              v16 = *(v15 + 8);
              v16(v13, v14);
              v16(v12, v14);
              v4 = (v16)(v11, v14);
            }
          }

          v10 = 0;
          v2 = v146;
          goto LABEL_6;
        }

        v147 = v10;
        v20 = v0[16];
        v19 = v0[17];
        v22 = v0[7];
        v21 = v0[8];
        (*(v0[19] + 32))(v0[23], v18, v0[18]);
        sub_222590028();
        (*(v21 + 56))(v20, 1, 1, v22);
        v23 = MEMORY[0x223DB9560](v19, v20);
        v24 = MEMORY[0x277D46788];
        sub_2225858F4(v20, MEMORY[0x277D46788]);
        sub_2225858F4(v19, v24);
        if (v23)
        {
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v25 = v0[22];
          v26 = v0[23];
          v28 = v0[18];
          v27 = v0[19];
          v29 = sub_2225901D8();
          __swift_project_value_buffer(v29, qword_28130F918);
          (*(v27 + 16))(v25, v26, v28);
          v30 = sub_2225901B8();
          v31 = sub_222590648();
          v32 = os_log_type_enabled(v30, v31);
          v33 = v0[22];
          v34 = v0[23];
          v35 = v0[18];
          v36 = v0[19];
          if (!v32)
          {
            goto LABEL_24;
          }

          v142 = v0[23];
          v37 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v152[0] = v138;
          *v37 = 136315138;
          sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798], MEMORY[0x277D467C0]);
          v38 = sub_2225908B8();
          v40 = v39;
          v134 = v31;
          v41 = *(v36 + 8);
          v41(v33, v35);
          v42 = v38;
          v2 = v146;
          v43 = sub_222580F0C(v42, v40, v152);

          *(v37 + 4) = v43;
          _os_log_impl(&dword_222567000, v30, v134, "ignoring local deleted record: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v138);
          MEMORY[0x223DBA5D0](v138, -1, -1);
          MEMORY[0x223DBA5D0](v37, -1, -1);

          v44 = v142;
        }

        else
        {
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v54 = v0[23];
          v55 = v0[21];
          v56 = v0[18];
          v57 = v0[19];
          v58 = sub_2225901D8();
          __swift_project_value_buffer(v58, qword_28130F918);
          (*(v57 + 16))(v55, v54, v56);
          v30 = sub_2225901B8();
          v59 = sub_222590648();
          v60 = os_log_type_enabled(v30, v59);
          v34 = v0[23];
          v33 = v0[21];
          v35 = v0[18];
          v36 = v0[19];
          if (!v60)
          {
LABEL_24:

            v66 = *(v36 + 8);
            v66(v33, v35);
            v4 = (v66)(v34, v35);
            v10 = v147;
            goto LABEL_6;
          }

          v61 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v152[0] = v143;
          *v61 = 136315138;
          sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798], MEMORY[0x277D467C0]);
          v139 = v34;
          v62 = sub_2225908B8();
          v64 = v63;
          v135 = v59;
          v41 = *(v36 + 8);
          v41(v33, v35);
          v65 = sub_222580F0C(v62, v64, v152);
          v2 = v146;

          *(v61 + 4) = v65;
          _os_log_impl(&dword_222567000, v30, v135, "record deleted: %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v143);
          MEMORY[0x223DBA5D0](v143, -1, -1);
          MEMORY[0x223DBA5D0](v61, -1, -1);

          v44 = v139;
        }

        v4 = (v41)(v44, v35);
        v10 = v147;
LABEL_6:
        if (v151 == ++v8)
        {

          v1 = v0 + 5;
          goto LABEL_44;
        }
      }
    }

    v10 = v0[33];
LABEL_44:
    v0[33] = v10;
    v119 = swift_task_alloc();
    v0[34] = v119;
    *v119 = v0;
    v119[1] = sub_22257F1FC;
    v7 = v0[30];
    v4 = v1;
    v5 = 0;
    v6 = 0;

    return MEMORY[0x2822003E8](v4, v5, v6, v7);
  }

  else
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_22257E808();
LABEL_39:

    v117 = v0[1];

    return v117();
  }
}

uint64_t sub_22258020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEF8, &qword_222591AF8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_222585614(a3, v25 - v10);
  v12 = sub_2225905C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22256EA7C(v11, &qword_27D00EEF8, &qword_222591AF8);
  }

  else
  {
    sub_2225905B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2225905A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2225904E8() + 32;
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

      sub_22256EA7C(a3, &qword_27D00EEF8, &qword_222591AF8);

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

  sub_22256EA7C(a3, &qword_27D00EEF8, &qword_222591AF8);
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

uint64_t SyncManager.deinit()
{

  return v0;
}

uint64_t SyncManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_222580584(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_222590498();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22258FC68();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_222580660(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_222590948();

    sub_2225904F8();
    v16 = sub_222590968();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_2225908C8() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222580874()
{
  **(v0 + 16) = *(*(v0 + 24) + 48);
}

uint64_t sub_2225808B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2225809AC;

  return v6(a1);
}

uint64_t sub_2225809AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_222580AA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_222580C80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF60, &qword_222591BD0);
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

void *sub_222580D8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222580EB0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_222580F0C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_222580F0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_222580FD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22256EA0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_222580FD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2225810E4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_222590788();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2225810E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_222581130(a1, a2);
  sub_222581260(&unk_2835BD788);
  return v3;
}

void *sub_222581130(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22258134C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_222590788();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_222590528();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22258134C(v10, 0);
        result = sub_222590748();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_222581260(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2225813C0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22258134C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF80, &qword_222591BE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2225813C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF80, &qword_222591BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2225814B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2225814F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2225814D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_222581600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2225814F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF60, &qword_222591BD0);
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

void *sub_222581600(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE8, &qword_222591AE0);
  v10 = *(sub_222590038() - 8);
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
  v15 = *(sub_222590038() - 8);
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

uint64_t sub_2225817D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22258FDF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF90, &qword_222591BF8);
  v39 = v4;
  result = sub_222590818();
  v11 = result;
  if (*(v9 + 16))
  {
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2225850A8(&qword_281310190, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_222590478();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_222581BB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_222590088();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222590038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF38, &qword_222591B98);
  v47 = v4;
  result = sub_222590818();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_2225850A8(&qword_27D00EF40, MEMORY[0x277D46798], MEMORY[0x277D467A0]);
      result = sub_222590478();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22258205C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222590038();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222585EF4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2225825D4();
      goto LABEL_7;
    }

    sub_222581BB4(v17, a3 & 1);
    v28 = sub_222585EF4(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_222582260(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2225908E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_222590088();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_222582260(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222590038();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_222590088();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_222582354()
{
  v1 = v0;
  v33 = sub_22258FDF8();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF90, &qword_222591BF8);
  v3 = *v0;
  v4 = sub_222590808();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2225825D4()
{
  v1 = v0;
  v41 = sub_222590088();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_222590038();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF38, &qword_222591B98);
  v4 = *v0;
  v5 = sub_222590808();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_222582928(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_222590948();
  sub_2225904F8();
  v8 = sub_222590968();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2225908C8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_222582CD8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_222582A78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF68, &qword_222591BD8);
  result = sub_222590728();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_222590948();
      sub_2225904F8();
      result = sub_222590968();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222582CD8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_222582A78(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_222582E58();
      goto LABEL_16;
    }

    sub_222582FB4(v8 + 1);
  }

  v10 = *v4;
  sub_222590948();
  sub_2225904F8();
  result = sub_222590968();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2225908C8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2225908D8();
  __break(1u);
  return result;
}

void *sub_222582E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF68, &qword_222591BD8);
  v2 = *v0;
  v3 = sub_222590718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_222582FB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF68, &qword_222591BD8);
  result = sub_222590728();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_222590948();

      sub_2225904F8();
      result = sub_222590968();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2225831EC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2225907F8();
LABEL_9:
  result = sub_222590778();
  *v2 = result;
  return result;
}

uint64_t sub_22258328C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2225907F8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2225907F8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22256EF08(&qword_27D00EF78, &qword_27D00EF70, &qword_222591BE0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF70, &qword_222591BE0);
            v9 = sub_22256DBA0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SyncItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222583430(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_222590038();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}