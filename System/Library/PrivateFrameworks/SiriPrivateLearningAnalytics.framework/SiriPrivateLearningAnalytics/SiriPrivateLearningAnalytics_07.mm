uint64_t sub_222AAC90C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_34:
    v5 = MEMORY[0x277D84F90];
LABEL_35:

    return v5;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v31 = a1 + 32;
  while (1)
  {
    v7 = *(v31 + 16 * v4 + 8);

    v8 = v3;
    v9 = sub_222AB5B58(v7, a2);

    v10 = v9 >> 62;
    if (v9 >> 62)
    {
      v11 = sub_222B02DC8();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v5 >> 62;
    if (v5 >> 62)
    {
      v29 = sub_222B02DC8();
      v14 = v29 + v11;
      if (__OFADD__(v29, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_222B02DC8();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

    v15 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = v11;
      goto LABEL_17;
    }

LABEL_16:
    v16 = v11;
    result = sub_222B02CC8();
    v5 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v18 >> 1) - v17) < v16)
    {
      goto LABEL_37;
    }

    v36 = v16;
    v34 = v5;
    v21 = v15 + 8 * v17 + 32;
    v30 = v15;
    if (v10)
    {
      if (v19 < 1)
      {
        goto LABEL_39;
      }

      sub_222A352E8(&unk_27D01E360, &qword_27D01DB88, &qword_222B0B2E0, MEMORY[0x277D83988]);
      for (i = 0; i != v19; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
        v23 = sub_222A6E00C(v35, i, v9);
        v25 = *v24;
        (v23)(v35, 0);
        *(v21 + 8 * i) = v25;
      }
    }

    else
    {
      sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
      swift_arrayInitWithCopy();
    }

    v5 = v34;
    v3 = v8;
    if (v36 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v36);
      v28 = v26 + v36;
      if (v27)
      {
        goto LABEL_38;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v4 == v32)
    {
      goto LABEL_35;
    }
  }

  v20 = v15;
  result = sub_222B02DC8();
  v15 = v20;
  v19 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v16 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_222AACC74()
{
  v0 = sub_222B02058();
  v1 = sub_222B02048();
  v5 = v0;
  v6 = MEMORY[0x277D5FDD0];
  *&v4 = v1;
  type metadata accessor for FlatFileSignalReader();
  v2 = swift_allocObject();
  result = sub_222A1E5A8(&v4, v2 + 16);
  qword_280CB91E0 = v2;
  return result;
}

uint64_t static FlatFileSignalReader.shared.getter()
{
  if (qword_280CB91D8 != -1)
  {
    swift_once();
  }
}

uint64_t FlatFileSignalReader.__allocating_init(path:)(uint64_t a1)
{
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_222B02058();
  swift_allocObject();
  v6 = sub_222B02038();
  (*(v3 + 8))(a1, v2);
  v11 = v5;
  v12 = MEMORY[0x277D5FDD0];
  *&v10 = v6;
  type metadata accessor for FlatFileSignalReader();
  v7 = swift_allocObject();
  sub_222A1E5A8(&v10, v7 + 16);
  return v7;
}

uint64_t sub_222AACEA8()
{
  sub_222AACF18();
  v0 = sub_222AAB028(sub_222AB9634);

  return v0;
}

void *sub_222AACF18()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_222B02028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE18, &qword_222B0BD80);
  v2 = swift_allocObject();
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  if (v1 >> 62)
  {
    v4 = sub_222B02DC8();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0, MEMORY[0x277D84F38]);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v2[2] = v3;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v5;
  v7 = sub_222AB8108();

  return v7;
}

void *sub_222AAD04C()
{
  sub_222AACF18();
  v0 = sub_222A84FB0();

  return v0;
}

uint64_t FlatFileSignalReader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222AAD0DC()
{
  sub_222AACF18();
  v0 = sub_222AAB028(sub_222AB9634);

  return v0;
}

void *sub_222AAD174()
{
  sub_222AACF18();
  v0 = sub_222A84FB0();

  return v0;
}

void *FlatFileSignalReader.turns()@<X0>(void *a1@<X8>)
{
  result = sub_222AACF18();
  *a1 = sub_222AB8980;
  a1[1] = result;
  return result;
}

uint64_t FlatFileSignalReader.conversations()@<X0>(void *a1@<X8>)
{
  sub_222AACF18();
  v2 = sub_222A84FB0();

  *a1 = sub_222AB8998;
  a1[1] = v2;
  return result;
}

void *sub_222AAD23C@<X0>(void *a1@<X8>)
{
  result = sub_222AACF18();
  *a1 = sub_222AB9670;
  a1[1] = result;
  return result;
}

uint64_t sub_222AAD278@<X0>(void *a1@<X8>)
{
  sub_222AACF18();
  v2 = sub_222A84FB0();

  *a1 = sub_222AB966C;
  a1[1] = v2;
  return result;
}

uint64_t sub_222AAD2D0()
{
  if (qword_280CB8F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280CBC430;
  v11 = type metadata accessor for BiomePLSELFStoreReader(0);
  v12 = &off_2835F86D8;
  v10[0] = v0;
  type metadata accessor for BiomeSignalReader();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  MEMORY[0x28223BE20](v2);
  v4 = (&v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  swift_retain_n();
  v7 = sub_222AB3B60(v6, v1);

  result = __swift_destroy_boxed_opaque_existential_0(v10);
  qword_280CBC450 = v7;
  return result;
}

uint64_t sub_222AAD440(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = *a1;
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 8);
    v6 = v3;
    v7 = v4;
    v8 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v6 = sub_222AAB028(sub_222AB8E50);
    v7 = 0;
    v8 = 0;
  }

  a2(&v6);
  return sub_222AB9134(v6, v7, v8);
}

uint64_t sub_222AAD500(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_222AB8108();
  if (qword_27D01C528 != -1)
  {
    swift_once();
  }

  v8 = sub_222B02148();
  __swift_project_value_buffer(v8, qword_27D01DE00);

  v9 = sub_222B02128();
  v10 = sub_222B028D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = sub_222B02DB8();

    _os_log_impl(&dword_222A1C000, v9, v10, "Extracted %ld turn(s) from Biome", v11, 0xCu);
    MEMORY[0x223DC7E30](v11, -1, -1);
  }

  else
  {
  }

  v13 = v7;
  v14 = 0;
  v15 = 0;

  a2(&v13);
  sub_222AB9134(v13, v14, v15);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_222AAED9C(a5);
  }
}

uint64_t sub_222AAD6AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v45 = sub_222B021D8();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_222B02238();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222B018D8();
  v48 = *(v7 - 8);
  v8 = v48;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v10;
  MEMORY[0x28223BE20](v9);
  v13 = v39 - v12;
  v52 = v39 - v12;
  sub_222B018C8();
  v39[1] = *(v2 + 56);
  v14 = *(v8 + 16);
  v43 = v8 + 16;
  v53 = v14;
  v40 = v7;
  v14(v11, v13, v7);
  v15 = *(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  v41 = *(v8 + 32);
  v54 = v8 + 32;
  v41(v16 + ((v15 + 24) & ~v15), v11, v7);
  aBlock[4] = sub_222AB9208;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_94_0;
  v17 = _Block_copy(aBlock);

  sub_222B02208();
  v56 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160, MEMORY[0x277D83970]);
  v18 = v42;
  v19 = v45;
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v6, v18, v17);
  _Block_release(v17);
  (v47[1])(v18, v19);
  (*(v44 + 8))(v6, v46);

  v20 = *(v3 + 40);
  v51 = v3;
  v47 = __swift_project_boxed_opaque_existential_1((v3 + 16), v20);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v52;
  v23 = v40;
  v53(v11, v52, v40);
  v39[0] = v15;
  v24 = (v15 + 40) & ~v15;
  v25 = swift_allocObject();
  v26 = v49;
  v27 = v50;
  v25[2] = v49;
  v25[3] = v27;
  v25[4] = v21;
  v28 = v23;
  v29 = v23;
  v30 = v41;
  v41(v25 + v24, v11, v28);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = v22;
  v33 = v29;
  v53(v11, v32, v29);
  v34 = swift_allocObject();
  *(v34 + 2) = v26;
  *(v34 + 3) = v27;
  *(v34 + 4) = v31;
  v30(&v34[v24], v11, v33);
  swift_retain_n();

  v35 = sub_222AD3460(sub_222AB9668, v25, sub_222AB92D8, v34);

  v36 = v35;
  v37 = v52;
  sub_222AB3E1C(v52, v36, v51);

  return (*(v48 + 8))(v37, v33);
}

uint64_t sub_222AADCAC(void *a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 state])
  {
    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v8 = sub_222B02148();
    __swift_project_value_buffer(v8, qword_27D01DE00);
    v9 = a1;
    v10 = sub_222B02128();
    v11 = sub_222B028E8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v12 = 136315138;
      [v9 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
      v13 = sub_222B023D8();
      v15 = sub_222A230FC(v13, v14, &v19);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v10, v11, "Failed to extract turns from SiriPrivateLearningSELFEvent stream, error=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DC7E30](v18, -1, -1);
      MEMORY[0x223DC7E30](v12, -1, -1);
    }

    v19 = [v9 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
    v19 = sub_222B023D8();
    v20 = v16;
    v21 = 1;
    a2(&v19);
    sub_222AB9134(v19, v20, v21);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_222AAF4DC(a5, [a1 state] == 0);
  }

  return result;
}

uint64_t sub_222AADF3C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v51 = a4;
  v52 = a5;
  v49 = a3;
  v59 = a2;
  v60 = a1;
  v46 = sub_222B021D8();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_222B02238();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222B018D8();
  v50 = *(v10 - 8);
  v11 = v50;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v55 = &v41 - v15;
  sub_222B018C8();
  v41 = *(v5 + 56);
  v17 = *(v11 + 16);
  v44 = v11 + 16;
  v56 = v17;
  v54 = v10;
  v17(v14, v16, v10);
  v18 = *(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  v57 = *(v11 + 32);
  v58 = v11 + 32;
  v57(v19 + ((v18 + 24) & ~v18), v14, v10);
  aBlock[4] = sub_222AB9654;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_72;
  v20 = _Block_copy(aBlock);

  sub_222B02208();
  v61 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160, MEMORY[0x277D83970]);
  v21 = v42;
  v22 = v46;
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v9, v21, v20);
  _Block_release(v20);
  (v48[1])(v21, v22);
  (*(v45 + 8))(v9, v47);

  v23 = *(v6 + 40);
  v53 = v6;
  v48 = __swift_project_boxed_opaque_existential_1((v6 + 16), v23);
  v47 = *&v60[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark];
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v54;
  v26 = v55;
  v56(v14, v55, v54);
  v27 = swift_allocObject();
  v28 = v49;
  v27[2] = v59;
  v27[3] = v28;
  v27[4] = v24;
  v57(v27 + ((v18 + 40) & ~v18), v14, v25);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v25;
  v56(v14, v26, v25);
  v31 = (v18 + 64) & ~v18;
  v32 = swift_allocObject();
  v32[2] = v59;
  v32[3] = v28;
  v33 = v52;
  v32[4] = v51;
  v32[5] = v33;
  v34 = v60;
  v32[6] = v60;
  v32[7] = v29;
  v57(v32 + v31, v14, v30);
  v35 = off_2835F86E8[0];
  type metadata accessor for BiomePLSELFStoreReader(0);
  swift_retain_n();

  v36 = v34;

  v37 = v35(v47, sub_222AB9000, v27, sub_222AB9018, v32);

  v38 = v37;
  v39 = v55;
  sub_222AB3E1C(v55, v38, v53);

  return (*(v50 + 8))(v39, v54);
}

uint64_t sub_222AAE5B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  sub_222AE9C5C(0, 0, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 64) = v6;
  return swift_endAccess();
}

uint64_t sub_222AAE63C(void *a1, uint64_t a2, void (*a3)(id *), uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = &off_2784BA000;
  if ([a1 state])
  {
    v34 = a5;
    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v15 = sub_222B02148();
    __swift_project_value_buffer(v15, qword_27D01DE00);
    v16 = a1;
    v17 = sub_222B02128();
    v18 = sub_222B028E8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v19 = 136315138;
      v36 = [v16 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
      v20 = sub_222B023D8();
      v22 = sub_222A230FC(v20, v21, &v37);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_222A1C000, v17, v18, "Failed to extract turns from SiriPrivateLearningSELFEvent stream, error=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DC7E30](v33, -1, -1);
      v23 = v19;
      v14 = &off_2784BA000;
      MEMORY[0x223DC7E30](v23, -1, -1);
    }

    v37 = [v16 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
    v37 = sub_222B023D8();
    v38 = v24;
    v39 = 1;
    a3(&v37);
    sub_222AB9134(v37, v38, v39);
    (v34)(0);
  }

  else
  {
    v26 = *(a7 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name);
    v25 = *(a7 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8);
    v27 = type metadata accessor for StreamBookmark();
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
    *v29 = v26;
    *(v29 + 1) = v25;
    *&v28[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_bookmark] = a2;
    v30 = &v28[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_timeIntervalSinceReferenceDate];
    *v30 = 0;
    v30[8] = 1;
    v35.receiver = v28;
    v35.super_class = v27;

    swift_unknownObjectRetain();
    v31 = objc_msgSendSuper2(&v35, sel_init);
    a5();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_222AAF4DC(a9, [a1 v14[131]] == 0);
  }

  return result;
}

uint64_t sub_222AAE980(uint64_t a1, void (*a2)(uint64_t *, __n128))
{
  v4 = *a1;
  if (*(a1 + 16) == 1)
  {
    v5 = *(a1 + 8);
    v7 = v4;
    v8 = v5;
    v9 = 1;
  }

  else
  {
    v7 = sub_222A84FB0();
    v8 = 0;
    v9 = 0;
  }

  (a2)(&v7);
  return sub_222AB9134(v7, v8, v9);
}

void sub_222AAE9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 64);
  if (*(v10 + 16))
  {

    v11 = sub_222A26F40(a2);
    if (v12)
    {
      v13 = (*(v10 + 56) + 16 * v11);
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];

      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      if (v14)
      {
        v18 = 257;
      }

      else
      {
        v18 = 1;
      }

      if (v15)
      {
        v19 = 0x10000;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 | v18;
      if (v16)
      {
        v21 = 0x1000000;
      }

      else
      {
        v21 = 0;
      }

      sub_222AE9C5C(v20 | v21, a3, a2, isUniquelyReferenced_nonNull_native);
      *(a1 + 64) = v38;
      swift_endAccess();
      if (v15)
      {
        swift_beginAccess();
        v22 = sub_222ADEF00(a2);
        v24 = v23;
        swift_endAccess();
        sub_222AB8F30(v22, v24);
      }

      if ((v16 & v14) == 1)
      {
        swift_beginAccess();
        v25 = sub_222ADEF00(a2);
        v27 = v26;
        swift_endAccess();
        sub_222AB8F30(v25, v27);
      }

      return;
    }
  }

  if (qword_27D01C528 != -1)
  {
    swift_once();
  }

  v28 = sub_222B02148();
  __swift_project_value_buffer(v28, qword_27D01DE00);
  (*(v7 + 16))(v9, a2, v6);
  v29 = sub_222B02128();
  v30 = sub_222B028E8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136315138;
    v33 = sub_222B01868();
    v35 = v34;
    (*(v7 + 8))(v9, v6);
    v36 = sub_222A230FC(v33, v35, v39);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_222A1C000, v29, v30, "Attempting to mark non-existing subscription for key=%s as started", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x223DC7E30](v32, -1, -1);
    MEMORY[0x223DC7E30](v31, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_222AAED9C(uint64_t a1)
{
  v3 = sub_222B021D8();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222B02238();
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v16[1] = *(v1 + 56);
  (*(v10 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  (*(v10 + 32))(v13 + v12, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_222AB8F44;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_66;
  v14 = _Block_copy(aBlock);

  sub_222B02208();
  v20 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160, MEMORY[0x277D83970]);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v8, v5, v14);
  _Block_release(v14);
  (*(v19 + 8))(v5, v3);
  (*(v17 + 8))(v8, v18);
}

void sub_222AAF130(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 64);
  if (*(v8 + 16))
  {

    v9 = sub_222A26F40(a2);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[2];
      v14 = v11[3];
      v15 = *(v11 + 1);
      swift_unknownObjectRetain();

      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      if (v13)
      {
        v17 = 0x10000;
      }

      else
      {
        v17 = 0;
      }

      if (v14)
      {
        v18 = 0x1000000;
      }

      else
      {
        v18 = 0;
      }

      sub_222AE9C5C(v17 | v12 | v18 | 0x100, v15, a2, isUniquelyReferenced_nonNull_native);
      *(a1 + 64) = v36;
      swift_endAccess();
      if (v13)
      {
        v19 = v12 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        swift_beginAccess();
        v20 = sub_222ADEF00(a2);
        v22 = v21;
        swift_endAccess();
        sub_222AB8F30(v20, v22);
      }

      if (v14)
      {
        if (v12)
        {
          swift_beginAccess();
          v23 = sub_222ADEF00(a2);
          v25 = v24;
          swift_endAccess();
          sub_222AB8F30(v23, v25);
        }
      }

      swift_unknownObjectRelease();
      return;
    }
  }

  if (qword_27D01C528 != -1)
  {
    swift_once();
  }

  v26 = sub_222B02148();
  __swift_project_value_buffer(v26, qword_27D01DE00);
  (*(v5 + 16))(v7, a2, v4);
  v27 = sub_222B02128();
  v28 = sub_222B028E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v29 = 136315138;
    v31 = sub_222B01868();
    v33 = v32;
    (*(v5 + 8))(v7, v4);
    v34 = sub_222A230FC(v31, v33, v37);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_222A1C000, v27, v28, "Attempting to mark non-existing subscription for key=%s as received", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223DC7E30](v30, -1, -1);
    MEMORY[0x223DC7E30](v29, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_222AAF4DC(uint64_t a1, int a2)
{
  v18 = a2;
  v4 = sub_222B021D8();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_222B02238();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v19 = *(v2 + 56);
  (*(v11 + 16))(&v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v10);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  (*(v11 + 32))(v14 + v13, &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v10);
  *(v14 + v13 + v12) = v18;
  aBlock[4] = sub_222AB8E94;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_9;
  v15 = _Block_copy(aBlock);

  sub_222B02208();
  v23 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160, MEMORY[0x277D83970]);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v9, v6, v15);
  _Block_release(v15);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

void sub_222AAF880(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a1 + 64);
  if (*(v10 + 16))
  {

    v11 = sub_222A26F40(a2);
    if (v12)
    {
      v13 = (*(v10 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v13 + 1);
      swift_unknownObjectRetain();

      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(a1 + 64);
      *(a1 + 64) = 0x8000000000000000;
      if (v15)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      v19 = a3 & 1;
      if (v19)
      {
        v20 = 0x1000000;
      }

      else
      {
        v20 = 0x10000;
      }

      sub_222AE9C5C(v20 | v14 | v18, v16, a2, isUniquelyReferenced_nonNull_native);
      *(a1 + 64) = v34;
      swift_endAccess();
      if (v19)
      {
        if (!v15 || (v14 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (!v14)
      {
LABEL_21:
        swift_unknownObjectRelease();
        return;
      }

      swift_beginAccess();
      v30 = sub_222ADEF00(a2);
      v32 = v31;
      swift_endAccess();
      sub_222AB8F30(v30, v32);
      goto LABEL_21;
    }
  }

  if (qword_27D01C528 != -1)
  {
    swift_once();
  }

  v21 = sub_222B02148();
  __swift_project_value_buffer(v21, qword_27D01DE00);
  (*(v7 + 16))(v9, a2, v6);
  v22 = sub_222B02128();
  v23 = sub_222B028E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35[0] = v25;
    *v24 = 136315138;
    v26 = sub_222B01868();
    v28 = v27;
    (*(v7 + 8))(v9, v6);
    v29 = sub_222A230FC(v26, v28, v35);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_222A1C000, v22, v23, "Attempting to mark non-existing subscription for key=%s as completed", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DC7E30](v25, -1, -1);
    MEMORY[0x223DC7E30](v24, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_222AAFBF0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222AAFC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_222AAD6AC(sub_222AB8DDC, v10);
}

uint64_t sub_222AAFDD8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_222AAD6AC(sub_222AB8DC0, v4);
}

uint64_t sub_222AAFE5C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_222AADF3C(a1, sub_222AB9688, v10, a4, a5);
}

uint64_t sub_222AAFF08()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01DE00);
  v1 = __swift_project_value_buffer(v0, qword_27D01DE00);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AAFFD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_222A66E54();
  if (!v3)
  {
    v14 = sub_222B018D8();
    (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 eventMetadata];
  if (v5 && (v6 = v5, v7 = [v5 turnID], v6, v7))
  {
    v8 = sub_222B01798();
    v10 = v9;

    sub_222A67044(v8, v10, v2);
    sub_222A26530(v8, v10);
  }

  else
  {
    v11 = sub_222B018D8();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  }

  v12 = sub_222B018D8();
  v13 = 1;
  if ((*(*(v12 - 8) + 48))(v2, 1, v12) == 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_222A34F20(v2, &unk_27D01DA50, &unk_222B04E20);
  return v13;
}

uint64_t sub_222AB01C4(void **a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = *a1;
  v15 = sub_222A66E54();
  if (!v15)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
  }

  v16 = v15;
  v41 = v11;
  v42 = a2;
  v17 = [v15 eventMetadata];
  if (v17 && (v18 = v17, v19 = [v17 turnID], v18, v19))
  {
    v20 = sub_222B01798();
    v40 = v13;
    v22 = v21;

    sub_222A67044(v20, v22, v6);
    v13 = v40;
    sub_222A26530(v20, v22);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  v23 = (*(v8 + 48))(v6, 1, v7);
  v24 = v42;
  if (v23 == 1)
  {
    return sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
  }

  (*(v8 + 32))(v13, v6, v7);
  v40 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v24;
  v26 = v43;
  *v24 = 0x8000000000000000;
  v28 = sub_222A26F40(v13);
  v29 = *(v26 + 16);
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
LABEL_20:
    sub_222B02648();
LABEL_18:
    sub_222B02688();
    return (*(v8 + 8))(v13, v7);
  }

  v32 = v27;
  if (*(v26 + 24) >= v31)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_222A2C4C0();
      v26 = v43;
    }

LABEL_15:
    *v24 = v26;

    v37 = *v24;
    if ((v32 & 1) == 0)
    {
      (*(v8 + 16))(v41, v13, v7);
      v36 = sub_222AEC4C8();
    }

    v38 = (*(v37 + 56) + 8 * v28);
    MEMORY[0x223DC6810](v36);
    if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  sub_222A28C30(v31, isUniquelyReferenced_nonNull_native);
  v26 = v43;
  v33 = sub_222A26F40(v13);
  if ((v32 & 1) == (v34 & 1))
  {
    v28 = v33;
    goto LABEL_15;
  }

  result = sub_222B030B8();
  __break(1u);
  return result;
}

BOOL sub_222AB05A0(uint64_t *a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE38, &qword_222B0C100);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  v11 = *a1;
  v12 = *a2;
  type metadata accessor for SignalJoining();
  sub_222AB0A98(*(v11 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v10, 1, v13) == 1)
  {
    sub_222A34F20(v10, &qword_27D01DE38, &qword_222B0C100);
    return 0;
  }

  else
  {
    v22[3] = v2;
    v16 = *&v10[*(v13 + 48)];
    v17 = sub_222B018D8();
    v18 = (*(v17 - 8) + 8);
    v19 = v10;
    v20 = *v18;
    (*v18)(v19, v17);
    sub_222AB0A98(*(v12 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v8);
    if (v14(v8, 1, v13) == 1)
    {
      sub_222A34F20(v8, &qword_27D01DE38, &qword_222B0C100);
      return 1;
    }

    else
    {
      v21 = *&v8[*(v13 + 48)];
      v20(v8, v17);
      return v16 < v21;
    }
  }
}

uint64_t sub_222AB07D4(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_222A765CC();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_222AB217C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_222AB084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_222A2E3A4();
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_beginAccess();
  v11 = *(v10 + 16);
  v12 = *(v11 + 16);

  if (!v12)
  {
LABEL_7:

LABEL_8:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v13 = sub_222A26F40(a1);
  if ((v14 & 1) == 0)
  {

    goto LABEL_7;
  }

  v15 = *(*(v11 + 56) + 8 * v13);

LABEL_9:
  v16 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE48, &qword_222B0C118);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  MEMORY[0x28223BE20](v17);

  v18 = sub_222ADDA20(sub_222AB9604);

  result = sub_222A96EC4(v18);
  *a4 = v15;
  return result;
}

uint64_t sub_222AB0A08@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v6 = sub_222A26364(1, a2);

  v7 = sub_222AB575C(v6, a3);

  *a4 = v7;
  return result;
}

uint64_t sub_222AB0A98@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v108 - v5;
  v117 = sub_222B018D8();
  v7 = *(v117 - 8);
  v8 = MEMORY[0x28223BE20](v117);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v108 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v108 - v13;
  if (a1 >> 62)
  {
LABEL_61:
    v107 = v12;
    v15 = sub_222B02DC8();
    v12 = v107;
    if (!v15)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
LABEL_38:
      (*(v7 + 56))(v6, 1, 1, v117);
      goto LABEL_39;
    }
  }

  v118 = a1 & 0xC000000000000001;
  v114 = v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x223DC6F00](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_65:
      swift_once();
      goto LABEL_50;
    }

    v16 = *(a1 + 32);
  }

  v17 = v16;
  v18 = sub_222A66E54();
  if (!v18)
  {

    goto LABEL_38;
  }

  v111 = v11;
  v11 = v18;
  v19 = [v11 eventMetadata];
  if (v19 && (v20 = v19, v21 = [v19 turnID], v20, v21))
  {
    v22 = sub_222B01798();
    v115 = v7;
    v23 = a2;
    v24 = v15;
    v25 = a1;
    v26 = v14;
    v28 = v27;

    sub_222A67044(v22, v28, v6);
    v29 = v28;
    v14 = v26;
    a1 = v25;
    v15 = v24;
    a2 = v23;
    v7 = v115;
    sub_222A26530(v22, v29);
  }

  else
  {
    (*(v7 + 56))(v6, 1, 1, v117);
  }

  if ((*(v7 + 48))(v6, 1, v117) == 1)
  {
LABEL_39:
    sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v56 = sub_222B02148();
    __swift_project_value_buffer(v56, qword_27D01DE00);
    v57 = sub_222B02128();
    v58 = sub_222B028D8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_222A1C000, v57, v58, "Cannot retrieve timestamp, unable to extract turn ID", v59, 2u);
      MEMORY[0x223DC7E30](v59, -1, -1);
    }

LABEL_44:
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
    v61 = *(*(v60 - 8) + 56);
    v62 = a2;
    return v61(v62, 1, 1, v60);
  }

  v112 = a2;
  v109 = *(v7 + 32);
  v110 = v7 + 32;
  v109(v14, v6, v117);
  v30 = 0;
  v115 = v7;
  v116 = (a1 & 0xFFFFFFFFFFFFFF8);
  v113 = a1;
  while (1)
  {
    if (v118)
    {
      v31 = MEMORY[0x223DC6F00](v30, a1);
    }

    else
    {
      if (v30 >= v116[2])
      {
        goto LABEL_60;
      }

      v31 = *(a1 + 8 * v30 + 32);
    }

    v6 = v31;
    a2 = (v30 + 1);
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if ([v31 anyEventType] == 6)
    {
      v32 = [v6 payload];
      if (v32)
      {
        v33 = v32;
        v34 = sub_222B01798();
        v36 = v35;

        v37 = sub_222B01788();
        sub_222A26530(v34, v36);
      }

      else
      {
        v37 = 0;
      }

      v39 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

      v38 = [v39 event];
      if (!v38)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v38 = v6;
    }

    v40 = sub_222A250BC(0, &qword_280CB4B80, 0x277D5A800);
    [v38 anyEventType];
    v41 = sub_222B02A28();
    if (!v41 || v40 != v41)
    {
LABEL_26:

LABEL_27:
      v42 = 0;
      goto LABEL_28;
    }

    v43 = [v38 payload];
    if (v43)
    {
      v44 = v43;
      v45 = v15;
      v46 = sub_222B01798();
      v47 = v14;
      v49 = v48;

      v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v51 = sub_222B01788();
      v52 = v46;
      v15 = v45;
      v7 = v115;
      v53 = v49;
      v14 = v47;
      a1 = v113;
      sub_222A26530(v52, v53);
      v54 = v50;
    }

    else
    {
      v54 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v51 = 0;
    }

    v55 = [v54 initWithData_];

    if (!v55)
    {
      goto LABEL_27;
    }

    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    v38 = v55;
    if (!v42)
    {
      goto LABEL_26;
    }

LABEL_28:
    v11 = [v42 deviceDynamicContext];

    if (v11)
    {
      break;
    }

    ++v30;
    if (a2 == v15)
    {
      v15 = 0;
      goto LABEL_49;
    }
  }

  v15 = v6;
  v64 = sub_222A66E54();

  if (v64)
  {
    v65 = [v64 deviceDynamicContext];
    a2 = v112;
    if (v65)
    {
      v66 = v65;
      [v65 timeIntervalSince1970];
      v68 = v67;

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
      v70 = *(v69 + 48);
      v109(a2, v14, v117);
      *&a2[v70] = v68;
      return (*(*(v69 - 8) + 56))(a2, 0, 1, v69);
    }

    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v87 = sub_222B02148();
    __swift_project_value_buffer(v87, qword_27D01DE00);
    v88 = v111;
    (*(v7 + 16))(v111, v14, v117);
    v89 = sub_222B02128();
    v90 = sub_222B028D8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v114 = v91;
      v92 = swift_slowAlloc();
      v118 = v14;
      v119 = v92;
      v93 = v92;
      *v91 = 136315138;
      sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v116 = v15;
      v94 = v117;
      v95 = sub_222B02F38();
      v96 = v94;
      v98 = v97;
      v99 = *(v7 + 8);
      v100 = v88;
      v101 = v96;
      v99(v100, v96);
      v102 = sub_222A230FC(v95, v98, &v119);

      v103 = v114;
      *(v114 + 1) = v102;
      v104 = v103;
      _os_log_impl(&dword_222A1C000, v89, v90, "Cannot retrieve timestamp for the turn %s, unable to extract timestamp", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x223DC7E30](v93, -1, -1);
      MEMORY[0x223DC7E30](v104, -1, -1);

      v99(v118, v101);
    }

    else
    {

      v105 = *(v7 + 8);
      v106 = v117;
      v105(v88, v117);
      v105(v14, v106);
    }

    goto LABEL_44;
  }

LABEL_49:
  v11 = v112;
  if (qword_27D01C528 != -1)
  {
    goto LABEL_65;
  }

LABEL_50:
  v71 = sub_222B02148();
  __swift_project_value_buffer(v71, qword_27D01DE00);
  v72 = v114;
  (*(v7 + 16))(v114, v14, v117);
  v73 = sub_222B02128();
  v74 = sub_222B028D8();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v118 = v14;
    v119 = v76;
    v77 = v76;
    *v75 = 136315138;
    sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v78 = v117;
    v79 = sub_222B02F38();
    v116 = v15;
    v81 = v80;
    v82 = *(v7 + 8);
    v82(v72, v78);
    v83 = sub_222A230FC(v79, v81, &v119);

    *(v75 + 4) = v83;
    _os_log_impl(&dword_222A1C000, v73, v74, "Cannot retrieve timestamp for the turn %s, unable to find DeviceDynamicContext", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x223DC7E30](v77, -1, -1);
    v84 = v75;
    v11 = v112;
    MEMORY[0x223DC7E30](v84, -1, -1);

    v82(v118, v78);
  }

  else
  {

    v85 = *(v7 + 8);
    v86 = v117;
    v85(v72, v117);
    v85(v14, v86);
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
  v61 = *(*(v60 - 8) + 56);
  v62 = v11;
  return v61(v62, 1, 1, v60);
}

uint64_t sub_222AB1648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660) + 48));
  v12 = *v10;
  v11 = v10[1];
  v13 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v11 + 16);
  v26[1] = v3;
  if (v12)
  {

    sub_222AB384C(a2, v13, v14, (v12 + 16), v12 + 32);
    v16 = v15;

    v17 = v16 ^ 1;
  }

  else if (v14)
  {
    v26[3] = a2;
    v21 = *(v7 + 16);
    v19 = v7 + 16;
    v20 = v21;
    v22 = *(v19 + 56);
    v23 = (v19 - 8);
    v24 = v14 - 1;
    do
    {
      v25 = v24;
      v20(v9, v13, v6);
      sub_222AB93EC(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v17 = sub_222B02338();
      (*v23)(v9, v6);
      if (v17)
      {
        break;
      }

      v24 = v25 - 1;
      v13 += v22;
    }

    while (v25);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_222AB183C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222AB4A68(a2, a1);
  v12 = v11;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v13 = sub_222B02148();
  __swift_project_value_buffer(v13, qword_280CBC458);
  (*(v8 + 16))(v10, a1, v7);

  v14 = sub_222B02128();
  v15 = sub_222B028D8();
  if (os_log_type_enabled(v14, v15))
  {
    v25 = a3;
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v16 = 134218242;
    v26 = v3;
    if (v12 >> 62)
    {
      v17 = sub_222B02DC8();
    }

    else
    {
      v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v17;

    *(v16 + 12) = 2080;
    sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_222B02F38();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_222A230FC(v18, v20, &v27);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_222A1C000, v14, v15, "#extractTurn: Found %ld events for request id %s", v16, 0x16u);
    v22 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x223DC7E30](v22, -1, -1);
    MEMORY[0x223DC7E30](v16, -1, -1);

    a3 = v25;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  *a3 = v12;
}

uint64_t sub_222AB1B24()
{
  v0 = type metadata accessor for DefaultInteractionReader();
  v1 = swift_allocObject();
  type metadata accessor for BiomeQuerying(0);
  v2 = swift_allocObject();
  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  result = sub_222B01A48();
  *(v1 + 16) = v2;
  qword_280CB8D80 = v0;
  unk_280CB8D88 = &protocol witness table for DefaultInteractionReader;
  qword_280CB8D68 = v1;
  return result;
}

uint64_t DefaultInteractionReader.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for BiomeQuerying(0);
  v1 = swift_allocObject();
  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  sub_222B01A48();
  *(v0 + 16) = v1;
  return v0;
}

uint64_t static DefaultInteractionReader.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280CB8D60 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_222A42E40(&qword_280CB8D68, v1);
}

uint64_t DefaultInteractionReader.init()()
{
  type metadata accessor for BiomeQuerying(0);
  v1 = swift_allocObject();
  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  sub_222B01A48();
  *(v0 + 16) = v1;
  return v0;
}

uint64_t DefaultInteractionReader.__allocating_init(biomeBasePath:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for BiomeQuerying(0);
  swift_allocObject();
  *(v4 + 16) = sub_222AF8C34(a1, a2);
  return v4;
}

uint64_t DefaultInteractionReader.init(biomeBasePath:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for BiomeQuerying(0);
  swift_allocObject();
  *(v3 + 16) = sub_222AF8C34(a1, a2);
  return v3;
}

void sub_222AB1DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222AF8E18(a1, a2, a3);
  if (v3)
  {
    v5 = v3;
    if (qword_27D01C528 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_27D01DE00);
    v7 = v3;
    v8 = sub_222B02128();
    v9 = sub_222B028E8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315138;
      v12 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v13 = sub_222B023D8();
      v15 = sub_222A230FC(v13, v14, &v27);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v8, v9, "Cannot read interactions, error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DC7E30](v11, -1, -1);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    v27 = v3;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v17 = sub_222B023D8();
    v19 = v18;
    sub_222AB89B0();
    swift_allocError();
    *v20 = v17;
    v20[1] = v19;
    swift_willThrow();
  }

  else
  {
    v21 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE28, &qword_222B0BD88);
    v22 = swift_allocObject();
    v22[6] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0, MEMORY[0x277D84F38]);
    v25 = *(v21 + 16);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v22[2] = v23;
    v22[3] = v24;
    v22[4] = v26;
    v22[5] = v24;
  }
}

uint64_t DefaultInteractionReader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AB217C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_222B02F18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Turn(0);
        v6 = sub_222B02668();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_222AB2598(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_222AB2280(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_222AB2280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE38, &qword_222B0C100);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v43 = &v36 - v13;
  v37 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    type metadata accessor for SignalJoining();
    v42 = v14;
    v15 = (v14 + 8 * a3 - 8);
    v16 = a1 - a3;
    v41 = v11;
LABEL_6:
    v39 = v15;
    v40 = a3;
    v17 = *(v42 + 8 * a3);
    v38 = v16;
    v18 = v43;
    while (1)
    {
      v46 = v16;
      v19 = *v15;
      v20 = *(v17 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

      v21 = v19;

      sub_222AB0A98(v20, v18);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
      v23 = *(*(v22 - 8) + 48);
      if (v23(v18, 1, v22) == 1)
      {
        sub_222A34F20(v18, &qword_27D01DE38, &qword_222B0C100);

LABEL_5:
        a3 = v40 + 1;
        v15 = v39 + 1;
        v16 = v38 - 1;
        if (v40 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v24 = *&v18[*(v22 + 48)];
      v25 = sub_222B018D8();
      v26 = v18;
      v27 = v25;
      v28 = *(v25 - 8);
      v29 = *(v28 + 8);
      v44 = v28 + 8;
      v45 = v29;
      v29(v26, v25);
      v30 = *(v21 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);
      v31 = v41;
      sub_222AB0A98(v30, v41);
      if (v23(v31, 1, v22) == 1)
      {
        sub_222A34F20(v31, &qword_27D01DE38, &qword_222B0C100);

        v18 = v43;
        v32 = v46;
      }

      else
      {
        v33 = *&v31[*(v22 + 48)];
        v45(v31, v27);

        v18 = v43;
        v32 = v46;
        if (v24 >= v33)
        {
          goto LABEL_5;
        }
      }

      if (!v42)
      {
        break;
      }

      v34 = *v15;
      v17 = v15[1];
      *v15 = v17;
      v15[1] = v34;
      --v15;
      v35 = __CFADD__(v32, 1);
      v16 = v32 + 1;
      if (v35)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222AB2598(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v117 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE38, &qword_222B0C100);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v114 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v13);
  v124 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_105:
    v25 = *v117;
    if (!*v117)
    {
      goto LABEL_146;
    }

    v22 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v22;
LABEL_108:
      v135 = result;
      v22 = *(result + 16);
      if (v22 >= 2)
      {
        while (*v124)
        {
          v110 = *(result + 16 * v22);
          v111 = result;
          v112 = *(result + 16 * (v22 - 1) + 40);
          sub_222AB30B4((*v124 + 8 * v110), (*v124 + 8 * *(result + 16 * (v22 - 1) + 32)), (*v124 + 8 * v112), v25);
          if (v5)
          {
          }

          if (v112 < v110)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_222AB3838(v111);
          }

          if (v22 - 2 >= *(v111 + 2))
          {
            goto LABEL_134;
          }

          v113 = &v111[16 * v22];
          *v113 = v110;
          *(v113 + 1) = v112;
          v135 = v111;
          sub_222AB37AC(v22 - 1);
          result = v135;
          v22 = *(v135 + 16);
          if (v22 <= 1)
          {
          }
        }

        goto LABEL_144;
      }
    }

LABEL_140:
    result = sub_222AB3838(v22);
    goto LABEL_108;
  }

  v121 = &v114 - v15;
  v118 = v17;
  v126 = v16;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v116 = a4;
  v129 = v12;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v119 = v19;
    if (v19 + 1 >= v18)
    {
      v25 = v19 + 1;
    }

    else
    {
      v131 = v18;
      v115 = v20;
      v23 = *v124;
      v24 = *(*v124 + 8 * v22);
      v133 = *(*v124 + 8 * v19);
      v134 = v24;

      LODWORD(v130) = sub_222AB05A0(&v134, &v133);
      if (v5)
      {
      }

      v25 = v19 + 2;
      if (v19 + 2 < v131)
      {
        type metadata accessor for SignalJoining();
        v22 = v23 + 8 * v19 + 16;
        v122 = 0;
        while (1)
        {
          v125 = v25;
          v26 = *(v22 - 8);
          v27 = *(*v22 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

          v132 = v26;

          v28 = v121;
          sub_222AB0A98(v27, v121);
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
          v30 = *(*(v29 - 8) + 48);
          if (v30(v28, 1, v29) == 1)
          {
            sub_222A34F20(v28, &qword_27D01DE38, &qword_222B0C100);

            v5 = v122;
            if (v130)
            {
              v25 = v125;
              v22 = (v125 - 1);
              v20 = v115;
              a4 = v116;
              v12 = v129;
              if (v125 < v21)
              {
                goto LABEL_137;
              }

              goto LABEL_21;
            }
          }

          else
          {
            v31 = *&v28[*(v29 + 48)];
            v32 = sub_222B018D8();
            v33 = *(v32 - 8);
            v34 = *(v33 + 8);
            v127 = v33 + 8;
            v128 = v34;
            (v34)(v28, v32);
            v35 = v118;
            sub_222AB0A98(*&v132[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events], v118);
            if (v30(v35, 1, v29) == 1)
            {
              sub_222A34F20(v35, &qword_27D01DE38, &qword_222B0C100);

              v5 = v122;
              v21 = v119;
              if ((v130 & 1) == 0)
              {
                v20 = v115;
                a4 = v116;
                v12 = v129;
                v25 = v125;
                goto LABEL_22;
              }
            }

            else
            {
              v36 = *&v35[*(v29 + 48)];
              (v128)(v35, v32);

              v5 = v122;
              v21 = v119;
              if (((v130 ^ (v31 >= v36)) & 1) == 0)
              {
                v25 = v125;
                v22 = (v125 - 1);
LABEL_18:
                a4 = v116;
                break;
              }
            }
          }

          v25 = (v125 + 1);
          v22 += 8;
          if (v131 == v125 + 1)
          {
            v22 = v125;
            v25 = v131;
            goto LABEL_18;
          }
        }
      }

      v20 = v115;
      v12 = v129;
      if (v130)
      {
        if (v25 < v21)
        {
          goto LABEL_137;
        }

LABEL_21:
        if (v21 <= v22)
        {
          v58 = 8 * v25 - 8;
          v59 = 8 * v21;
          v60 = v25;
          v61 = v21;
          do
          {
            if (v61 != --v60)
            {
              v63 = *v124;
              if (!*v124)
              {
                goto LABEL_143;
              }

              v62 = *(v63 + v59);
              *(v63 + v59) = *(v63 + v58);
              *(v63 + v58) = v62;
            }

            ++v61;
            v58 -= 8;
            v59 += 8;
          }

          while (v61 < v60);
        }
      }
    }

LABEL_22:
    v37 = v124[1];
    if (v25 < v37)
    {
      if (__OFSUB__(v25, v21))
      {
        goto LABEL_136;
      }

      if (v25 - v21 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v25 < v21)
    {
      goto LABEL_135;
    }

    v64 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v64;
    }

    else
    {
      result = sub_222AA8B74(0, *(v64 + 16) + 1, 1, v64);
      v20 = result;
    }

    v22 = *(v20 + 16);
    v65 = *(v20 + 24);
    v66 = v22 + 1;
    if (v22 >= v65 >> 1)
    {
      result = sub_222AA8B74((v65 > 1), v22 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 16) = v66;
    v67 = v20 + 16 * v22;
    *(v67 + 32) = v21;
    *(v67 + 40) = v25;
    v19 = v25;
    v25 = *v117;
    if (!*v117)
    {
      goto LABEL_145;
    }

    if (v22)
    {
      while (1)
      {
        v68 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v69 = *(v20 + 32);
          v70 = *(v20 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_70:
          if (v72)
          {
            goto LABEL_124;
          }

          v85 = (v20 + 16 * v66);
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_127;
          }

          v91 = (v20 + 32 + 16 * v68);
          v93 = *v91;
          v92 = v91[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_131;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v66 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v95 = (v20 + 16 * v66);
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_84:
        if (v90)
        {
          goto LABEL_126;
        }

        v98 = v20 + 16 * v68;
        v100 = *(v98 + 32);
        v99 = *(v98 + 40);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_129;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_91:
        v22 = v68 - 1;
        if (v68 - 1 >= v66)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v124)
        {
          goto LABEL_142;
        }

        v106 = v20;
        v107 = *(v20 + 32 + 16 * v22);
        v108 = *(v20 + 32 + 16 * v68 + 8);
        sub_222AB30B4((*v124 + 8 * v107), (*v124 + 8 * *(v20 + 32 + 16 * v68)), (*v124 + 8 * v108), v25);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_222AB3838(v106);
        }

        if (v22 >= *(v106 + 2))
        {
          goto LABEL_121;
        }

        v109 = &v106[16 * v22];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v135 = v106;
        result = sub_222AB37AC(v68);
        v20 = v135;
        v66 = *(v135 + 16);
        v12 = v129;
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = v20 + 32 + 16 * v66;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_122;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_123;
      }

      v80 = (v20 + 16 * v66);
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_125;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_128;
      }

      if (v84 >= v76)
      {
        v102 = (v20 + 32 + 16 * v68);
        v104 = *v102;
        v103 = v102[1];
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_132;
        }

        if (v71 < v105)
        {
          v68 = v66 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v18 = v124[1];
    a4 = v116;
    if (v19 >= v18)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v21, a4))
  {
    goto LABEL_138;
  }

  if (v21 + a4 < v37)
  {
    v37 = (v21 + a4);
  }

  if (v37 < v21)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v25 == v37)
  {
    goto LABEL_50;
  }

  v120 = v37;
  v115 = v20;
  v122 = v5;
  v38 = *v124;
  type metadata accessor for SignalJoining();
  v127 = v38;
  v39 = (v38 + 8 * v25 - 8);
  v40 = (v21 - v25);
LABEL_33:
  v125 = v25;
  v42 = *(v127 + 8 * v25);
  v43 = v40;
  v123 = v39;
  v128 = v40;
  while (1)
  {
    v132 = v43;
    v44 = *v39;
    v45 = *(v42 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

    sub_222AB0A98(v45, v12);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);
    v22 = v47 + 48;
    if (v48(v12, 1, v46) == 1)
    {
      sub_222A34F20(v12, &qword_27D01DE38, &qword_222B0C100);

      v41 = v128;
      goto LABEL_32;
    }

    v49 = *&v12[*(v46 + 48)];
    v50 = sub_222B018D8();
    v51 = *(v50 - 8);
    v52 = *(v51 + 8);
    v130 = v51 + 8;
    v131 = v52;
    (v52)(v12, v50);
    v53 = v126;
    sub_222AB0A98(*(v44 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v126);
    if (v48(v53, 1, v46) == 1)
    {
      sub_222A34F20(v53, &qword_27D01DE38, &qword_222B0C100);

      goto LABEL_38;
    }

    v54 = *&v53[*(v46 + 48)];
    (v131)(v53, v50);

    if (v49 >= v54)
    {
      v41 = v128;
      v12 = v129;
LABEL_32:
      v25 = (v125 + 1);
      v39 = v123 + 1;
      v40 = v41 - 1;
      if (v125 + 1 == v120)
      {
        v21 = v119;
        v25 = v120;
        v5 = v122;
        v20 = v115;
        goto LABEL_50;
      }

      goto LABEL_33;
    }

LABEL_38:
    v41 = v128;
    v12 = v129;
    v55 = v132;
    if (!v127)
    {
      break;
    }

    v56 = *v39;
    v42 = v39[1];
    *v39 = v42;
    v39[1] = v56;
    --v39;
    v57 = __CFADD__(v55, 1);
    v43 = v55 + 1;
    if (v57)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_222AB30B4(char *a1, char *a2, char *a3, char *a4)
{
  v65 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE38, &qword_222B0C100);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v57 = &v54 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v17 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v17 = a2 - a1;
  }

  v18 = v17 >> 3;
  v63 = a3;
  v19 = a3 - a2;
  v20 = v19 / 8;
  if (v17 >> 3 < v19 / 8)
  {
    v21 = a1;
    v60 = v14;
    if (v65 != a1 || &a1[8 * v18] <= v65)
    {
      memmove(v65, a1, 8 * v18);
    }

    v64 = &v65[8 * v18];
    if (a2 - a1 < 8 || a2 >= v63)
    {
      v38 = a1;
      v23 = v64;
      goto LABEL_46;
    }

    v22 = a2;
    type metadata accessor for SignalJoining();
    v23 = v64;
    v58 = v16;
    while (1)
    {
      v62 = v22;
      v24 = *v65;
      v25 = *(*v22 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

      sub_222AB0A98(v25, v16);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
      v27 = *(*(v26 - 8) + 48);
      if (v27(v16, 1, v26) == 1)
      {
        break;
      }

      v59 = v21;
      v29 = *&v16[*(v26 + 48)];
      v30 = sub_222B018D8();
      v31 = *(v30 - 8);
      v32 = *(v31 + 8);
      v33 = v16;
      v34 = v32;
      v61 = v31 + 8;
      v32(v33, v30);
      v35 = v60;
      sub_222AB0A98(*(v24 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v60);
      if (v27(v35, 1, v26) == 1)
      {
        sub_222A34F20(v35, &qword_27D01DE38, &qword_222B0C100);

        v22 = v62;
        v16 = v58;
        v21 = v59;
        v23 = v64;
      }

      else
      {
        v36 = *&v35[*(v26 + 48)];
        v34(v35, v30);

        v22 = v62;
        v16 = v58;
        v21 = v59;
        v23 = v64;
        if (v29 >= v36)
        {
          goto LABEL_12;
        }
      }

      v28 = v22;
      v37 = v21 == v22;
      v22 += 8;
      if (!v37)
      {
        goto LABEL_13;
      }

LABEL_14:
      v21 += 8;
      if (v65 >= v23 || v22 >= v63)
      {
        v38 = v21;
        goto LABEL_46;
      }
    }

    sub_222A34F20(v16, &qword_27D01DE38, &qword_222B0C100);

    v22 = v62;
LABEL_12:
    v28 = v65;
    v65 += 8;
    if (v21 == v28)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v21 = *v28;
    goto LABEL_14;
  }

  v59 = a1;
  v38 = a2;
  if (v65 != a2 || &a2[8 * v20] <= v65)
  {
    memmove(v65, a2, 8 * v20);
  }

  v23 = &v65[8 * v20];
  v39 = v57;
  if (v19 < 8 || v38 <= v59)
  {
    goto LABEL_46;
  }

  type metadata accessor for SignalJoining();
  v40 = v63;
  v55 = v10;
  do
  {
    v62 = v38;
    v38 -= 8;
    v40 -= 8;
    v41 = v23;
    v56 = v38;
    while (1)
    {
      v64 = v23;
      v42 = *(v41 - 1);
      v60 = v41 - 8;
      v43 = *v38;
      v44 = *&v42[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events];

      v61 = v43;

      sub_222AB0A98(v44, v39);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE40, &qword_222B0C108);
      v46 = *(*(v45 - 8) + 48);
      if (v46(v39, 1, v45) == 1)
      {
        sub_222A34F20(v39, &qword_27D01DE38, &qword_222B0C100);

        v23 = v64;
        goto LABEL_35;
      }

      v58 = v42;
      v63 = v40;
      v47 = *&v39[*(v45 + 48)];
      v48 = sub_222B018D8();
      v49 = *(*(v48 - 8) + 8);
      v49(v39, v48);
      v50 = v55;
      sub_222AB0A98(*(v61 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events), v55);
      if (v46(v50, 1, v45) == 1)
      {
        break;
      }

      v51 = *&v50[*(v45 + 48)];
      v49(v50, v48);

      v52 = v59;
      v40 = v63;
      v23 = v64;
      v38 = v56;
      v39 = v57;
      if (v47 < v51)
      {
        goto LABEL_38;
      }

LABEL_35:
      v41 = v60;
      if (v40 + 8 != v23)
      {
        *v40 = *v60;
      }

      v40 -= 8;
      v23 = v41;
      if (v41 <= v65)
      {
        v23 = v41;
        v38 = v62;
        goto LABEL_46;
      }
    }

    sub_222A34F20(v50, &qword_27D01DE38, &qword_222B0C100);

    v52 = v59;
    v40 = v63;
    v23 = v64;
    v38 = v56;
    v39 = v57;
LABEL_38:
    if (v40 + 8 != v62)
    {
      *v40 = *v38;
    }
  }

  while (v23 > v65 && v38 > v52);
LABEL_46:
  if (v38 != v65 || v38 >= &v65[(v23 - v65 + (v23 - v65 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v38, v65, 8 * ((v23 - v65) / 8));
  }

  return 1;
}

uint64_t sub_222AB37AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_222AB3838(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_222AB384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222AB93EC(&qword_280CBA1F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v28[1] = a1;
  result = sub_222B022E8();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_222B01E48();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_222B01E68();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_222AB93EC(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v26 = sub_222B02338();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_222B01E88();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_222B01E68();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

uint64_t sub_222AB3AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_222AB3AD0, 0, 0);
}

uint64_t sub_222AB3AD0()
{
  v1 = v0[6];
  swift_beginAccess();
  sub_222B02E18();
  v2 = v0[5];
  swift_endAccess();
  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_222AB3B60(uint64_t a1, uint64_t a2)
{
  v13 = sub_222B02988();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222B02968();
  MEMORY[0x28223BE20](v7);
  v8 = sub_222B02238();
  MEMORY[0x28223BE20](v8 - 8);
  v15[3] = type metadata accessor for BiomePLSELFStoreReader(0);
  v15[4] = &off_2835F86D8;
  v15[0] = a1;
  v9 = sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  v12[1] = "actionReader";
  v12[2] = v9;
  sub_222B021F8();
  v14 = MEMORY[0x277D84F90];
  sub_222AB93EC(&unk_280CBA210, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A352E8(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20, MEMORY[0x277D83970]);
  sub_222B02BB8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v13);
  *(a2 + 56) = sub_222B029A8();
  sub_222A42E40(v15, a2 + 16);
  v10 = sub_222A3A6A0(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_0(v15);
  *(a2 + 64) = v10;
  return a2;
}

uint64_t sub_222AB3E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a2;
  v5 = sub_222B021D8();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222B02238();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222B018D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v20[1] = *(a3 + 56);
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  (*(v12 + 32))(v15 + v14, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v16 = v20[0];
  *(v15 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20[0];
  aBlock[4] = sub_222AB90A4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_88;
  v17 = _Block_copy(aBlock);

  v18 = v16;
  sub_222B02208();
  v24 = MEMORY[0x277D84F90];
  sub_222AB93EC(qword_280CBA240, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A352E8(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160, MEMORY[0x277D83970]);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v10, v7, v17);
  _Block_release(v17);
  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_222AB41D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v62 - v12;
  v63 = sub_222ADF14C(1, a2);
  v68 = a1;
  swift_beginAccess();
  v62 = sub_222ADEE38(a2);
  swift_endAccess();
  v13 = 0;
  v14 = 0;
  v16 = *(v8 + 16);
  v15 = v8 + 16;
  v70 = 0x8000000222B0FEB0;
  v71 = v16;
  v69 = (v8 + 48);
  v66 = (v8 + 8);
  v67 = (v8 + 32);
  *&v17 = 136315138;
  v64 = v17;
  v65 = v7;
  do
  {
    LODWORD(v18) = v13;
    v19 = *(&unk_2835F19E0 + v14 + 32);
    v71(v11, a2, v7);
    if (v19)
    {
      v20 = 0x6964654D73756C50;
    }

    else
    {
      v20 = 0xD000000000000018;
    }

    if (v19)
    {
      v21 = 0xE900000000000061;
    }

    else
    {
      v21 = v70;
    }

    sub_222A584E8(v11, v6);
    if ((*v69)(v6, 1, v7) != 1)
    {
      v72 = v18;
      (*v67)(v73, v6, v7);
      v18 = *(v68 + 16);
      swift_beginAccess();
      v34 = *(v18 + 16);
      if (*(v34 + 16) && (v35 = sub_222A2E3A4(), (v36 & 1) != 0))
      {
        v37 = *(*(v34 + 56) + 8 * v35);

        if (!*(v37 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v37 = sub_222A392B0(MEMORY[0x277D84F90]);
        if (!*(v37 + 16))
        {
          goto LABEL_22;
        }
      }

      v38 = sub_222A26F40(a2);
      if (v39)
      {
        v40 = *(*(v37 + 56) + 8 * v38);

LABEL_23:
        sub_222ADF238(19, v73);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v37;
        sub_222AE8CDC(v40, a2, isUniquelyReferenced_nonNull_native);
        v43 = v75[0];
        swift_beginAccess();

        v44 = swift_isUniquelyReferenced_nonNull_native();
        v74 = *(v18 + 16);
        *(v18 + 16) = 0x8000000000000000;
        sub_222AE8CB0(v43, 1, v44);
        *(v18 + 16) = v74;
        swift_endAccess();

        v45 = *(v18 + 16);
        if (*(v45 + 16) && (v46 = sub_222A2E3A4(), (v47 & 1) != 0))
        {
          v48 = *(*(v45 + 56) + 8 * v46);

          if (!*(v48 + 16))
          {
            goto LABEL_30;
          }
        }

        else
        {
          v48 = sub_222A392B0(MEMORY[0x277D84F90]);
          if (!*(v48 + 16))
          {
            goto LABEL_30;
          }
        }

        v49 = sub_222A26F40(v73);
        if (v50)
        {
          v51 = *(*(v48 + 56) + 8 * v49);

LABEL_31:
          sub_222ADF238(1, a2);

          v53 = swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v48;
          v54 = v73;
          sub_222AE8CDC(v51, v73, v53);
          v55 = v75[0];
          swift_beginAccess();

          v56 = swift_isUniquelyReferenced_nonNull_native();
          v74 = *(v18 + 16);
          *(v18 + 16) = 0x8000000000000000;
          sub_222AE8CB0(v55, 19, v56);
          *(v18 + 16) = v74;
          swift_endAccess();

          (*v66)(v54, v7);

          LOBYTE(v18) = v72;
          goto LABEL_3;
        }

LABEL_30:
        v52 = sub_222A39498(MEMORY[0x277D84F90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CCC0, &qword_222B04E18);
        v51 = swift_allocObject();
        *(v51 + 16) = v52;
        goto LABEL_31;
      }

LABEL_22:
      v41 = sub_222A39498(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CCC0, &qword_222B04E18);
      v40 = swift_allocObject();
      *(v40 + 16) = v41;
      goto LABEL_23;
    }

    sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CBC458);
    v23 = sub_222B02128();
    v24 = sub_222B028E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v72 = v18;
      v18 = v25;
      v26 = v6;
      v27 = v11;
      v28 = v15;
      v29 = a2;
      v30 = swift_slowAlloc();
      v75[0] = v30;
      *v18 = v64;
      v31 = sub_222A230FC(v20, v21, v75);

      *(v18 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v23, v24, "Failed to generate a plus id for domain %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v32 = v30;
      a2 = v29;
      v15 = v28;
      v11 = v27;
      v6 = v26;
      v7 = v65;
      MEMORY[0x223DC7E30](v32, -1, -1);
      v33 = v18;
      LOBYTE(v18) = v72;
      MEMORY[0x223DC7E30](v33, -1, -1);
    }

LABEL_3:
    v13 = 1;
    v14 = 1u;
  }

  while ((v18 & 1) == 0);
  if (v62)
  {
    v57 = v62;
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  v58 = sub_222A2604C(1, a2);
  v59 = sub_222A2604C(43, a2);
  v75[0] = v63;
  sub_222A96EC4(v57);
  v60 = v75[0];
  sub_222AF5CEC(v59, v58);

  return v60;
}

uint64_t sub_222AB4908(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_222AE4114(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

void sub_222AB4A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v103 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v102 = &v90 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v90 - v11;
  MEMORY[0x28223BE20](v10);
  v101 = &v90 - v13;
  v14 = sub_222AB41D0(a1, a2);
  v16 = v15;
  v118 = v14;
  swift_beginAccess();

  v18 = 0;
  sub_222AAAAE8(v17);
  v20 = v19;

  v21 = sub_222AAC90C(v20, a1);

  v117 = v21;
  swift_beginAccess();
  v109 = a1;
  v22 = *(a1 + 40);
  if (*(v22 + 16))
  {

    v23 = sub_222A26F40(a2);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  v26 = *(v16 + 16);
  if (*(v26 + 16))
  {
    v27 = sub_222A2E3A4();
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v30 = sub_222AB4908(v29, v25);

  if (*(v30 + 16) == 1)
  {
    v32 = 0;
    v33 = v30 + 56;
    v34 = 1 << *(v30 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v30 + 56);
    v37 = (v34 + 63) >> 6;
    v99 = v103 + 32;
    v110 = (v103 + 8);
    *&v31 = 136315394;
    v90 = v31;
    v98 = v4;
    v97 = v7;
    v100 = v12;
    v94 = v30 + 56;
    v93 = v37;
    v91 = a2;
    v96 = v16;
    v95 = v30;
    v92 = v103 + 16;
    while (v36)
    {
LABEL_24:
      v108 = v18;
      v106 = v36;
      v107 = v32;
      v42 = v103;
      v43 = *(v30 + 48) + *(v103 + 72) * (__clz(__rbit64(v36)) | (v32 << 6));
      v44 = *(v103 + 16);
      v45 = v101;
      v44(v101, v43, v4);
      (*(v42 + 32))(v12, v45, v4);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v46 = sub_222B02148();
      __swift_project_value_buffer(v46, qword_280CBC458);
      v47 = v102;
      v44(v102, v12, v4);
      v44(v7, a2, v4);
      v48 = sub_222B02128();
      v49 = v4;
      v50 = v7;
      v51 = sub_222B028D8();
      if (os_log_type_enabled(v48, v51))
      {
        v52 = v47;
        v53 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v116 = v115;
        *v53 = v90;
        sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        LODWORD(v114) = v51;
        v54 = sub_222B02F38();
        v56 = v55;
        v57 = *v110;
        v58 = v52;
        v12 = v100;
        (*v110)(v58, v4);
        v59 = sub_222A230FC(v54, v56, &v116);

        *(v53 + 4) = v59;
        *(v53 + 12) = 2080;
        v60 = sub_222B02F38();
        v62 = v61;
        v105 = v57;
        v57(v50, v49);
        v63 = sub_222A230FC(v60, v62, &v116);

        *(v53 + 14) = v63;
        _os_log_impl(&dword_222A1C000, v48, v114, "#extractTurn: Found sub-request ID: %s for request id %s.", v53, 0x16u);
        v64 = v115;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v64, -1, -1);
        MEMORY[0x223DC7E30](v53, -1, -1);
      }

      else
      {

        v65 = *v110;
        (*v110)(v7, v4);
        v105 = v65;
        v65(v47, v4);
      }

      v38 = v109;
      v66 = sub_222AB41D0(v109, v12);
      v68 = v67;
      sub_222A96EC4(v66);
      swift_beginAccess();
      v104 = v68;
      v69 = *(v68 + 16);
      v70 = *(v69 + 16);
      if (v70)
      {
        v116 = MEMORY[0x277D84F90];

        sub_222A23B04(0, v70, 0);
        v71 = v116;
        v72 = v69 + 64;
        v73 = sub_222B02BC8();
        v74 = 0;
        v75 = *(v69 + 36);
        v111 = v69 + 72;
        v112 = v70;
        v113 = v75;
        v114 = v69 + 64;
        while ((v73 & 0x8000000000000000) == 0 && v73 < 1 << *(v69 + 32))
        {
          v77 = v73 >> 6;
          if ((*(v72 + 8 * (v73 >> 6)) & (1 << v73)) == 0)
          {
            goto LABEL_53;
          }

          if (v75 != *(v69 + 36))
          {
            goto LABEL_54;
          }

          v115 = v74;
          v78 = *(*(v69 + 48) + 4 * v73);
          v79 = *(*(v69 + 56) + 8 * v73);
          v116 = v71;
          v80 = *(v71 + 16);
          v81 = *(v71 + 24);

          if (v80 >= v81 >> 1)
          {
            sub_222A23B04((v81 > 1), v80 + 1, 1);
            v71 = v116;
          }

          *(v71 + 16) = v80 + 1;
          v82 = v71 + 16 * v80;
          *(v82 + 32) = v78;
          *(v82 + 40) = v79;
          v76 = 1 << *(v69 + 32);
          if (v73 >= v76)
          {
            goto LABEL_55;
          }

          v72 = v114;
          v83 = *(v114 + 8 * v77);
          if ((v83 & (1 << v73)) == 0)
          {
            goto LABEL_56;
          }

          LODWORD(v75) = v113;
          if (v113 != *(v69 + 36))
          {
            goto LABEL_57;
          }

          v84 = v83 & (-2 << (v73 & 0x3F));
          if (v84)
          {
            v76 = __clz(__rbit64(v84)) | v73 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v85 = v77 << 6;
            v86 = v77 + 1;
            v87 = (v111 + 8 * v77);
            while (v86 < (v76 + 63) >> 6)
            {
              v89 = *v87++;
              v88 = v89;
              v85 += 64;
              ++v86;
              if (v89)
              {
                sub_222A965F4(v73, v113, 0);
                v76 = __clz(__rbit64(v88)) + v85;
                goto LABEL_32;
              }
            }

            sub_222A965F4(v73, v113, 0);
          }

LABEL_32:
          v74 = v115 + 1;
          v73 = v76;
          if (v115 + 1 == v112)
          {

            a2 = v91;
            v38 = v109;
            v12 = v100;
            goto LABEL_18;
          }
        }

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
        goto LABEL_58;
      }

      v71 = MEMORY[0x277D84F90];
      a2 = v91;
LABEL_18:
      v39 = v106;

      v18 = v108;
      v40 = sub_222AAC90C(v71, v38);

      sub_222A96EC4(v40);

      v4 = v98;
      v105(v12, v98);
      v36 = (v39 - 1) & v39;
      v7 = v97;
      v30 = v95;
      v32 = v107;
      v33 = v94;
      v37 = v93;
    }

    while (1)
    {
      v41 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v41 >= v37)
      {

        goto LABEL_51;
      }

      v36 = *(v33 + 8 * v41);
      ++v32;
      if (v36)
      {
        v32 = v41;
        goto LABEL_24;
      }
    }

LABEL_58:
    __break(1u);
  }

  else
  {

LABEL_51:
    v116 = v118;
    sub_222A96EC4(v117);
  }
}

uint64_t sub_222AB53EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v35 = *(a1 + 16);
  if (!v35)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = 0;
  v8 = *(sub_222B018D8() - 8);
  v9 = MEMORY[0x277D84F90];
  v34 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v33 = *(v8 + 72);
  while (1)
  {
    v11 = v5;
    a4(&v41, v34 + v33 * v7, a2, a3);
    if (v5)
    {

      return v9;
    }

    v12 = v41;
    v13 = v41 >> 62;
    if (v41 >> 62)
    {
      v14 = sub_222B02DC8();
    }

    else
    {
      v14 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v9 >> 62;
    if (v9 >> 62)
    {
      v31 = sub_222B02DC8();
      v17 = v31 + v14;
      if (__OFADD__(v31, v14))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v15)
      {
        v18 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_222B02DC8();
      goto LABEL_16;
    }

    if (v15)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_222B02CC8();
    v9 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v13)
    {
      break;
    }

    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v20 >> 1) - v19) < v14)
    {
      goto LABEL_38;
    }

    v39 = v9;
    v23 = v18 + 8 * v19 + 32;
    v32 = v18;
    if (v13)
    {
      if (v21 < 1)
      {
        goto LABEL_40;
      }

      sub_222A352E8(&unk_27D01E360, &qword_27D01DB88, &qword_222B0B2E0, MEMORY[0x277D83988]);
      for (i = 0; i != v21; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
        v25 = sub_222A6E00C(v40, i, v12);
        v27 = *v26;
        (v25)(v40, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
      swift_arrayInitWithCopy();
    }

    v9 = v39;
    v5 = v11;
    if (v14 >= 1)
    {
      v28 = *(v32 + 16);
      v29 = __OFADD__(v28, v14);
      v30 = v28 + v14;
      if (v29)
      {
        goto LABEL_39;
      }

      *(v32 + 16) = v30;
    }

LABEL_4:
    if (++v7 == v35)
    {
      return v9;
    }
  }

  v22 = v18;
  result = sub_222B02DC8();
  v18 = v22;
  v21 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_222AB575C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v41 = v3;
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(sub_222B018D8() - 8);
  v39 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x277D84F90];
  v38 = *(v5 + 72);
  v7 = &qword_27D01DB88;
  v8 = &qword_222B0B2E0;
  while (1)
  {
    v10 = *(a2 + 16);
    if (*(v10 + 16) && (v11 = sub_222A2E3A4(), (v12 & 1) != 0) && (v13 = *(*(v10 + 56) + 8 * v11), swift_beginAccess(), v14 = *(v13 + 16), *(v14 + 16)))
    {

      v15 = sub_222A26F40(v39 + v38 * v4);
      v16 = MEMORY[0x277D84F90];
      if (v17)
      {
        v16 = *(*(v14 + 56) + 8 * v15);
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v18 = v16 >> 62;
    if (v16 >> 62)
    {
      v19 = sub_222B02DC8();
    }

    else
    {
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v6 >> 62;
    if (v6 >> 62)
    {
      v37 = sub_222B02DC8();
      v22 = v37 + v19;
      if (__OFADD__(v37, v19))
      {
LABEL_40:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v21 + v19;
      if (__OFADD__(v21, v19))
      {
        goto LABEL_40;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v20)
      {
        goto LABEL_23;
      }

LABEL_22:
      sub_222B02DC8();
      goto LABEL_23;
    }

    if (v20)
    {
      goto LABEL_22;
    }

    v23 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v22 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v44 = v6;
      goto LABEL_24;
    }

LABEL_23:
    result = sub_222B02CC8();
    v44 = result;
    v23 = result & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v46 = v19;
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v18)
    {
      break;
    }

    v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (((v25 >> 1) - v24) < v46)
    {
      goto LABEL_44;
    }

    v43 = v4;
    v27 = v23 + 8 * v24 + 32;
    v40 = v23;
    if (v18)
    {
      if (v26 < 1)
      {
        goto LABEL_46;
      }

      sub_222A352E8(&unk_27D01E360, v7, v8, MEMORY[0x277D83988]);
      for (i = 0; i != v26; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
        v29 = sub_222A6E00C(v45, i, v16);
        v31 = v8;
        v32 = v7;
        v33 = *v30;
        (v29)(v45, 0);
        *(v27 + 8 * i) = v33;
        v7 = v32;
        v8 = v31;
      }
    }

    else
    {
      sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
      swift_arrayInitWithCopy();
    }

    v4 = v43;
    v6 = v44;
    if (v46 >= 1)
    {
      v34 = *(v40 + 16);
      v35 = __OFADD__(v34, v46);
      v36 = v34 + v46;
      if (v35)
      {
        goto LABEL_45;
      }

      *(v40 + 16) = v36;
    }

LABEL_4:
    if (++v4 == v41)
    {
      return v6;
    }
  }

  result = sub_222B02DC8();
  v26 = result;
  if (result)
  {
    goto LABEL_28;
  }

LABEL_3:

  v6 = v44;
  if (v46 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_222AB5B58(uint64_t a1, uint64_t a2)
{
  v45 = *(a1 + 16);
  if (!v45)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_222B018D8();
  v4 = 0;
  v5 = *(v3 - 8);
  v41 = v3;
  v42 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v40 = (v5 + 8);
  v6 = MEMORY[0x277D84F90];
  v43 = *(v5 + 72);
  v7 = &qword_27D01DB88;
  v8 = &qword_222B0B2E0;
  while (1)
  {
    v10 = *(a2 + 24);
    swift_beginAccess();
    v11 = *(v10 + 16);
    if (*(v11 + 16) && (v12 = sub_222A2E3A4(), (v13 & 1) != 0))
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      swift_beginAccess();

      v15 = sub_222A26F40(v42 + v43 * v4);
      if (v16)
      {
        v17 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v14 + 16);
        v50 = v19;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_222A2C4C0();
          v19 = v50;
        }

        (*v40)(*(v19 + 48) + v17 * v43, v41);
        v20 = *(*(v19 + 56) + 8 * v17);
        sub_222ADF894(v17, v19);
        *(v14 + 16) = v19;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v20 = MEMORY[0x277D84F90];
      }

      v8 = &qword_222B0B2E0;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = v20 >> 62;
    v22 = v20 >> 62 ? sub_222B02DC8() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v6 >> 62;
    if (v6 >> 62)
    {
      break;
    }

    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = result + v22;
    if (__OFADD__(result, v22))
    {
      goto LABEL_44;
    }

LABEL_18:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v25 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v24 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_222B02DC8();
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_222B02CC8();
    v6 = result;
    v25 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v48 = v22;
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v21)
    {
      v29 = v25;
      result = sub_222B02DC8();
      v25 = v29;
      v28 = result;
      if (result)
      {
LABEL_29:
        if (((v27 >> 1) - v26) < v48)
        {
          goto LABEL_46;
        }

        v47 = v4;
        v30 = v25 + 8 * v26 + 32;
        v44 = v25;
        if (v21)
        {
          if (v28 < 1)
          {
            goto LABEL_48;
          }

          sub_222A352E8(&unk_27D01E360, v7, v8, MEMORY[0x277D83988]);
          v31 = v8;
          for (i = 0; i != v28; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(v7, v31);
            v33 = v7;
            v34 = sub_222A6E00C(v49, i, v20);
            v36 = *v35;
            (v34)(v49, 0);
            v7 = v33;
            v31 = &qword_222B0B2E0;
            *(v30 + 8 * i) = v36;
          }
        }

        else
        {
          sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
          swift_arrayInitWithCopy();
          v31 = v8;
        }

        v8 = v31;

        v4 = v47;
        if (v48 >= 1)
        {
          v37 = *(v44 + 16);
          v38 = __OFADD__(v37, v48);
          v39 = v37 + v48;
          if (v38)
          {
            goto LABEL_47;
          }

          *(v44 + 16) = v39;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_29;
      }
    }

    if (v48 > 0)
    {
      goto LABEL_45;
    }

LABEL_4:
    if (++v4 == v45)
    {
      return v6;
    }
  }

  result = sub_222B02DC8();
  v24 = result + v22;
  if (!__OFADD__(result, v22))
  {
    goto LABEL_18;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_222AB5FBC(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v245 = &v220 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v246 = &v220 - v5;
  v247 = sub_222B018D8();
  v6 = *(v247 - 8);
  v7 = MEMORY[0x28223BE20](v247);
  v230 = &v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v235 = &v220 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v229 = &v220 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v234 = &v220 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v228 = &v220 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v233 = &v220 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v227 = &v220 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v232 = &v220 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v236 = &v220 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v226 = &v220 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v238 = &v220 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v225 = &v220 - v30;
  MEMORY[0x28223BE20](v29);
  v231 = &v220 - v31;
  type metadata accessor for RequestLinkTable();
  v32 = swift_allocObject();
  v33 = sub_222A394AC(MEMORY[0x277D84F90]);
  v243 = v32;
  *(v32 + 16) = v33;
  type metadata accessor for ComponentEventTable();
  v244 = swift_allocObject();
  *(v244 + 16) = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    v34 = sub_222B02DC8();
    if (v34)
    {
      goto LABEL_3;
    }

    return v243;
  }

  v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    return v243;
  }

LABEL_3:
  if (v34 >= 1)
  {
    v35 = 0;
    v36 = a1 & 0xC000000000000001;
    v224 = (v6 + 16);
    v237 = (v6 + 8);
    v241 = a1;
    v242 = (v6 + 56);
    v239 = (v6 + 32);
    v240 = (v6 + 48);
    v37 = &off_2784BA000;
    v248 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v38 = MEMORY[0x223DC6F00](v35, a1);
      }

      else
      {
        v38 = *(a1 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = [v38 v37[97]];
      if (!v40)
      {
        goto LABEL_6;
      }

      v41 = v40;
      v42 = [v40 payload];
      if (!v42)
      {
        break;
      }

      v43 = v42;
      v44 = sub_222B01798();
      v46 = v45;

      v47 = [v41 anyEventType];
      if (v47 <= 18)
      {
        switch(v47)
        {
          case 9:
            v75 = [v41 payload];
            if (v75)
            {
              v76 = v75;
              v77 = sub_222B01798();
              v79 = v78;

              v80 = sub_222B01788();
              v81 = v79;
              v36 = v248;
              sub_222A26530(v77, v81);
            }

            else
            {
              v80 = 0;
            }

            v110 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) initWithData_];

            if (v110)
            {
              sub_222A25788(v110);
              sub_222A26530(v44, v46);
            }

            else
            {
              sub_222A26530(v44, v46);
            }

            v37 = &off_2784BA000;
            goto LABEL_7;
          case 13:
            v98 = objc_allocWithZone(MEMORY[0x277D57500]);
            sub_222A55AB8(v44, v46);
            v99 = sub_222B01788();
            v100 = [v98 initWithData_];

            if (v100)
            {
              v101 = [v100 eventMetadata];

              if (v101)
              {
                v102 = [v101 flowId];

                if (v102)
                {
                  v103 = [v102 value];
                  if (v103)
                  {
                    v104 = v103;
                    v223 = sub_222B01798();
                    v106 = v105;

                    v107 = v106 >> 62;
                    if ((v106 >> 62) > 1)
                    {
                      if (v107 == 2)
                      {
                        v128 = *(v223 + 16);
                        v127 = *(v223 + 24);
                        v113 = __OFSUB__(v127, v128);
                        v129 = v127 - v128;
                        if (v113)
                        {
                          goto LABEL_251;
                        }

                        if (v129 == 16)
                        {
                          goto LABEL_105;
                        }
                      }
                    }

                    else
                    {
                      if (!v107)
                      {
                        if (BYTE6(v106) != 16)
                        {
                          goto LABEL_162;
                        }

LABEL_105:
                        sub_222A26530(v44, v46);
                        if (v107 == 2)
                        {
                          v222 = *(v223 + 16);
                          v196 = sub_222B015B8();
                          if (!v196)
                          {
                            goto LABEL_285;
                          }

                          v197 = v196;
                          v198 = sub_222B015D8();
                          if (__OFSUB__(v222, v198))
                          {
                            goto LABEL_261;
                          }

                          v132 = v222 - v198 + v197;
                          sub_222B015C8();
                          if (!v132)
                          {
                            goto LABEL_286;
                          }

                          goto LABEL_216;
                        }

                        if (v107 == 1)
                        {
                          v130 = v223;
                          if (v223 > v223 >> 32)
                          {
                            goto LABEL_255;
                          }

                          v222 = sub_222B015B8();
                          if (!v222)
                          {
                            goto LABEL_298;
                          }

                          v131 = sub_222B015D8();
                          if (__OFSUB__(v130, v131))
                          {
                            goto LABEL_268;
                          }

                          v132 = v130 - v131 + v222;
                          sub_222B015C8();
                          if (!v132)
                          {
                            goto LABEL_297;
                          }

LABEL_216:
                          v199 = v132;
                          v200 = v226;
                          (*v224)(v226, v199, v247);
                          v201 = v223;
                        }

                        else
                        {
                          v210 = v226;
                          v211 = v223;
                          v249 = v223;
                          v250 = v106;
                          v251 = BYTE2(v106);
                          v252 = BYTE3(v106);
                          v253 = BYTE4(v106);
                          v254 = BYTE5(v106);
                          (*v224)(v226, &v249, v247);
                          v201 = v211;
                          v200 = v210;
                        }

                        sub_222A26530(v201, v106);

                        v223 = *v239;
                        v212 = v245;
                        v213 = v200;
                        v214 = v247;
                        (v223)(v245, v213, v247);
                        v222 = *v242;
                        (v222)(v212, 0, 1, v214);
                        v215 = v246;
                        (v223)(v246, v212, v214);
                        (v222)(v215, 0, 1, v214);
                        v166 = *v240;
LABEL_189:
                        v168 = v246;
                        v169 = v247;
                        if (v166(v246, 1, v247) == 1)
                        {
                          sub_222A26530(v44, v46);

                          sub_222A34F20(v168, &unk_27D01DA50, &unk_222B04E20);
                        }

                        else
                        {
                          v170 = v238;
                          (*v239)(v238, v168, v169);
                          sub_222ADF020(3, v170, v41);

                          sub_222A26530(v44, v46);
                          (*v237)(v170, v169);
                        }

                        a1 = v241;
LABEL_228:
                        v36 = v248;
                        v37 = &off_2784BA000;
                        goto LABEL_7;
                      }

                      if (__OFSUB__(HIDWORD(v223), v223))
                      {
                        goto LABEL_249;
                      }

                      if (HIDWORD(v223) - v223 == 16)
                      {
                        goto LABEL_105;
                      }
                    }

LABEL_162:
                    sub_222A26530(v223, v106);
                  }
                }
              }
            }

            v148 = *v242;
            v149 = 1;
            (*v242)(v245, 1, 1, v247);
            v150 = objc_allocWithZone(MEMORY[0x277D57500]);
            v151 = sub_222B01788();
            sub_222A26530(v44, v46);
            v152 = [v150 initWithData_];

            if (!v152)
            {
              goto LABEL_187;
            }

            v153 = [v152 eventMetadata];

            if (v153)
            {
              v154 = [v153 taskId];

              if (v154)
              {
                v155 = [v154 value];
                if (v155)
                {
                  v156 = v155;
                  v223 = sub_222B01798();
                  v158 = v157;

                  v159 = v158 >> 62;
                  if ((v158 >> 62) > 1)
                  {
                    v160 = v223;
                    if (v159 == 2)
                    {
                      v162 = *(v223 + 16);
                      v161 = *(v223 + 24);
                      v113 = __OFSUB__(v161, v162);
                      v163 = v161 - v162;
                      if (v113)
                      {
                        goto LABEL_253;
                      }

                      if (v163 == 16)
                      {
                        goto LABEL_175;
                      }
                    }
                  }

                  else
                  {
                    if (!v159)
                    {
                      v160 = v223;
                      if (BYTE6(v158) != 16)
                      {
                        goto LABEL_184;
                      }

LABEL_175:
                      if (v159 == 2)
                      {
                        v222 = *(v160 + 16);
                        v221 = sub_222B015B8();
                        if (!v221)
                        {
                          goto LABEL_301;
                        }

                        v216 = sub_222B015D8();
                        if (__OFSUB__(v222, v216))
                        {
                          goto LABEL_273;
                        }

                        v222 = v222 - v216 + v221;
                        result = sub_222B015C8();
                        if (!v222)
                        {
                          goto LABEL_302;
                        }

                        goto LABEL_234;
                      }

                      if (v159 == 1)
                      {
                        v222 = v160;
                        if (v160 > v160 >> 32)
                        {
                          goto LABEL_272;
                        }

                        v221 = sub_222B015B8();
                        if (!v221)
                        {
                          goto LABEL_300;
                        }

                        v164 = sub_222B015D8();
                        if (__OFSUB__(v222, v164))
                        {
                          goto LABEL_274;
                        }

                        v222 = v222 - v164 + v221;
                        sub_222B015C8();
                        if (!v222)
                        {
                          goto LABEL_299;
                        }

LABEL_234:
                        v218 = *v224;
                      }

                      else
                      {
                        v249 = v160;
                        v250 = v158;
                        v251 = BYTE2(v158);
                        v252 = BYTE3(v158);
                        v253 = BYTE4(v158);
                        v254 = BYTE5(v158);
                        v218 = *v224;
                      }

                      v219 = v247;
                      (v218)(v236);
                      sub_222A26530(v223, v158);

                      (*v239)(v246, v236, v219);
                      v149 = 0;
LABEL_187:
                      v165 = v247;
                      v148(v246, v149, 1, v247);
                      v166 = *v240;
                      v167 = v245;
                      if ((*v240)(v245, 1, v165) != 1)
                      {
                        sub_222A34F20(v167, &unk_27D01DA50, &unk_222B04E20);
                      }

                      goto LABEL_189;
                    }

                    v160 = v223;
                    if (__OFSUB__(HIDWORD(v223), v223))
                    {
                      goto LABEL_252;
                    }

                    if (HIDWORD(v223) - v223 == 16)
                    {
                      goto LABEL_175;
                    }
                  }

LABEL_184:
                  sub_222A26530(v160, v158);
                }
              }
            }

            v149 = 1;
            goto LABEL_187;
          case 18:
            v59 = objc_allocWithZone(MEMORY[0x277D590F0]);
            sub_222A55AB8(v44, v46);
            v60 = sub_222B01788();
            sub_222A26530(v44, v46);
            v61 = [v59 initWithData_];

            if (v61)
            {
              v62 = [v61 eventMetadata];

              if (!v62)
              {
                goto LABEL_65;
              }

              v52 = [v62 nlId];

              if (!v52)
              {
                goto LABEL_65;
              }

              v63 = [v52 value];
              if (!v63)
              {
                goto LABEL_75;
              }

              v64 = v63;
              v223 = sub_222B01798();
              v56 = v65;

              v66 = v56 >> 62;
              if ((v56 >> 62) > 1)
              {
                if (v66 != 2)
                {
                  goto LABEL_101;
                }

                v58 = v223;
                v125 = *(v223 + 16);
                v124 = *(v223 + 24);
                v113 = __OFSUB__(v124, v125);
                v126 = v124 - v125;
                if (v113)
                {
                  goto LABEL_243;
                }

                if (v126 != 16)
                {
                  goto LABEL_157;
                }
              }

              else if (v66)
              {
                v58 = v223;
                if (__OFSUB__(HIDWORD(v223), v223))
                {
                  goto LABEL_241;
                }

                if (HIDWORD(v223) - v223 != 16)
                {
                  goto LABEL_157;
                }
              }

              else
              {
                v58 = v223;
                if (BYTE6(v56) != 16)
                {
                  goto LABEL_157;
                }
              }

              if (v66 != 2)
              {
                if (v66 == 1)
                {
                  if (v58 > v58 >> 32)
                  {
                    goto LABEL_263;
                  }

                  v222 = sub_222B015B8();
                  if (!v222)
                  {
                    goto LABEL_296;
                  }

                  v145 = sub_222B015D8();
                  if (__OFSUB__(v58, v145))
                  {
                    goto LABEL_266;
                  }

                  v146 = (v58 - v145 + v222);
                  sub_222B015C8();
                  v147 = v146;
                  a1 = v241;
                  if (!v147)
                  {
                    goto LABEL_295;
                  }

LABEL_212:
                  v195 = *v224;
                }

                else
                {
                  v249 = v58;
                  v250 = v56;
                  v251 = BYTE2(v56);
                  v252 = BYTE3(v56);
                  v253 = BYTE4(v56);
                  v254 = BYTE5(v56);
                  v195 = *v224;
                  v147 = &v249;
                }

                v209 = v227;
                v195(v227, v147, v247);
                sub_222A26530(v223, v56);

                v203 = v232;
                v204 = v247;
                (*v239)(v232, v209, v247);
                v205 = 7;
                goto LABEL_227;
              }

              v222 = *(v58 + 16);
              v191 = sub_222B015B8();
              if (!v191)
              {
                goto LABEL_283;
              }

              v192 = v191;
              v193 = sub_222B015D8();
              if (__OFSUB__(v222, v193))
              {
                goto LABEL_257;
              }

              v194 = (v222 - v193 + v192);
              sub_222B015C8();
              v147 = v194;
              a1 = v241;
              if (!v147)
              {
                goto LABEL_284;
              }

              goto LABEL_212;
            }

            goto LABEL_66;
        }
      }

      else if (v47 > 22)
      {
        if (v47 == 23)
        {
          v90 = objc_allocWithZone(MEMORY[0x277D587F0]);
          sub_222A55AB8(v44, v46);
          v91 = sub_222B01788();
          sub_222A26530(v44, v46);
          v92 = [v90 initWithData_];

          if (v92)
          {
            v93 = [v92 eventMetadata];

            if (v93)
            {
              v52 = [v93 mhId];

              if (v52)
              {
                v94 = [v52 value];
                if (v94)
                {
                  v95 = v94;
                  v223 = sub_222B01798();
                  v56 = v96;

                  v97 = v56 >> 62;
                  if ((v56 >> 62) <= 1)
                  {
                    if (!v97)
                    {
                      v58 = v223;
                      if (BYTE6(v56) != 16)
                      {
                        goto LABEL_157;
                      }

LABEL_123:
                      if (v97 == 2)
                      {
                        v222 = *(v58 + 16);
                        v176 = sub_222B015B8();
                        if (!v176)
                        {
                          goto LABEL_277;
                        }

                        v177 = v176;
                        v178 = sub_222B015D8();
                        if (__OFSUB__(v222, v178))
                        {
                          goto LABEL_256;
                        }

                        v179 = (v222 - v178 + v177);
                        sub_222B015C8();
                        v138 = v179;
                        a1 = v241;
                        if (!v138)
                        {
                          goto LABEL_278;
                        }

                        goto LABEL_200;
                      }

                      if (v97 == 1)
                      {
                        if (v58 > v58 >> 32)
                        {
                          goto LABEL_262;
                        }

                        v222 = sub_222B015B8();
                        if (!v222)
                        {
                          goto LABEL_290;
                        }

                        v136 = sub_222B015D8();
                        if (__OFSUB__(v58, v136))
                        {
                          goto LABEL_267;
                        }

                        v137 = (v58 - v136 + v222);
                        sub_222B015C8();
                        v138 = v137;
                        a1 = v241;
                        if (!v138)
                        {
                          goto LABEL_289;
                        }

LABEL_200:
                        v180 = *v224;
                      }

                      else
                      {
                        v249 = v58;
                        v250 = v56;
                        v251 = BYTE2(v56);
                        v252 = BYTE3(v56);
                        v253 = BYTE4(v56);
                        v254 = BYTE5(v56);
                        v180 = *v224;
                        v138 = &v249;
                      }

                      v206 = v230;
                      v180(v230, v138, v247);
                      sub_222A26530(v223, v56);

                      v203 = v235;
                      v204 = v247;
                      (*v239)(v235, v206, v247);
                      v205 = 9;
LABEL_227:
                      sub_222ADF020(v205, v203, v41);

                      sub_222A26530(v44, v46);
                      (*v237)(v203, v204);
                      goto LABEL_228;
                    }

                    v58 = v223;
                    if (__OFSUB__(HIDWORD(v223), v223))
                    {
                      goto LABEL_240;
                    }

                    if (HIDWORD(v223) - v223 == 16)
                    {
                      goto LABEL_123;
                    }

LABEL_157:

                    sub_222A26530(v44, v46);
                    v108 = v58;
LABEL_158:
                    v109 = v56;
LABEL_159:
                    sub_222A26530(v108, v109);

                    goto LABEL_228;
                  }

                  if (v97 == 2)
                  {
                    v58 = v223;
                    v116 = *(v223 + 16);
                    v115 = *(v223 + 24);
                    v113 = __OFSUB__(v115, v116);
                    v117 = v115 - v116;
                    if (v113)
                    {
                      goto LABEL_242;
                    }

                    if (v117 == 16)
                    {
                      goto LABEL_123;
                    }

                    goto LABEL_157;
                  }

LABEL_101:

                  sub_222A26530(v44, v46);
                  v108 = v223;
                  goto LABEL_158;
                }

LABEL_75:

                v108 = v44;
                v109 = v46;
                goto LABEL_159;
              }
            }

LABEL_65:

            sub_222A26530(v44, v46);
            goto LABEL_228;
          }

LABEL_66:

          sub_222A26530(v44, v46);
          v37 = &off_2784BA000;
          goto LABEL_7;
        }

        if (v47 == 38)
        {
          v67 = objc_allocWithZone(MEMORY[0x277D59C50]);
          sub_222A55AB8(v44, v46);
          v68 = sub_222B01788();
          sub_222A26530(v44, v46);
          v69 = [v67 initWithData_];

          if (v69)
          {
            v70 = [v69 eventMetadata];

            if (!v70)
            {
              goto LABEL_65;
            }

            v52 = [v70 plusId];

            if (!v52)
            {
              goto LABEL_65;
            }

            v71 = [v52 value];
            if (!v71)
            {
              goto LABEL_75;
            }

            v72 = v71;
            v223 = sub_222B01798();
            v56 = v73;

            v74 = v56 >> 62;
            if ((v56 >> 62) > 1)
            {
              if (v74 != 2)
              {
                goto LABEL_101;
              }

              v58 = v223;
              v122 = *(v223 + 16);
              v121 = *(v223 + 24);
              v113 = __OFSUB__(v121, v122);
              v123 = v121 - v122;
              if (v113)
              {
                goto LABEL_246;
              }

              if (v123 != 16)
              {
                goto LABEL_157;
              }
            }

            else if (v74)
            {
              v58 = v223;
              if (__OFSUB__(HIDWORD(v223), v223))
              {
                goto LABEL_244;
              }

              if (HIDWORD(v223) - v223 != 16)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v58 = v223;
              if (BYTE6(v56) != 16)
              {
                goto LABEL_157;
              }
            }

            if (v74 != 2)
            {
              if (v74 == 1)
              {
                if (v58 > v58 >> 32)
                {
                  goto LABEL_259;
                }

                v222 = sub_222B015B8();
                if (!v222)
                {
                  goto LABEL_288;
                }

                v142 = sub_222B015D8();
                if (__OFSUB__(v58, v142))
                {
                  goto LABEL_271;
                }

                v143 = (v58 - v142 + v222);
                sub_222B015C8();
                v144 = v143;
                a1 = v241;
                if (!v144)
                {
                  goto LABEL_287;
                }

LABEL_208:
                v190 = *v224;
              }

              else
              {
                v249 = v58;
                v250 = v56;
                v251 = BYTE2(v56);
                v252 = BYTE3(v56);
                v253 = BYTE4(v56);
                v254 = BYTE5(v56);
                v190 = *v224;
                v144 = &v249;
              }

              v208 = v229;
              v190(v229, v144, v247);
              sub_222A26530(v223, v56);

              v203 = v234;
              v204 = v247;
              (*v239)(v234, v208, v247);
              v205 = 19;
              goto LABEL_227;
            }

            v222 = *(v58 + 16);
            v186 = sub_222B015B8();
            if (!v186)
            {
              goto LABEL_275;
            }

            v187 = v186;
            v188 = sub_222B015D8();
            if (__OFSUB__(v222, v188))
            {
              goto LABEL_265;
            }

            v189 = (v222 - v188 + v187);
            sub_222B015C8();
            v144 = v189;
            a1 = v241;
            if (!v144)
            {
              goto LABEL_276;
            }

            goto LABEL_208;
          }

          goto LABEL_66;
        }
      }

      else
      {
        if (v47 == 19)
        {
          v82 = objc_allocWithZone(MEMORY[0x277D59610]);
          sub_222A55AB8(v44, v46);
          v83 = sub_222B01788();
          sub_222A26530(v44, v46);
          v84 = [v82 initWithData_];

          if (v84)
          {
            v85 = [v84 eventMetadata];

            if (!v85)
            {
              goto LABEL_65;
            }

            v52 = [v85 requestId];

            if (!v52)
            {
              goto LABEL_65;
            }

            v86 = [v52 value];
            if (!v86)
            {
              goto LABEL_75;
            }

            v87 = v86;
            v223 = sub_222B01798();
            v56 = v88;

            v89 = v56 >> 62;
            if ((v56 >> 62) > 1)
            {
              if (v89 != 2)
              {
                goto LABEL_101;
              }

              v58 = v223;
              v112 = *(v223 + 16);
              v111 = *(v223 + 24);
              v113 = __OFSUB__(v111, v112);
              v114 = v111 - v112;
              if (v113)
              {
                goto LABEL_247;
              }

              if (v114 != 16)
              {
                goto LABEL_157;
              }
            }

            else if (v89)
            {
              v58 = v223;
              if (__OFSUB__(HIDWORD(v223), v223))
              {
                goto LABEL_245;
              }

              if (HIDWORD(v223) - v223 != 16)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v58 = v223;
              if (BYTE6(v56) != 16)
              {
                goto LABEL_157;
              }
            }

            if (v89 != 2)
            {
              if (v89 == 1)
              {
                if (v58 > v58 >> 32)
                {
                  goto LABEL_258;
                }

                v222 = sub_222B015B8();
                if (!v222)
                {
                  goto LABEL_294;
                }

                v133 = sub_222B015D8();
                if (__OFSUB__(v58, v133))
                {
                  goto LABEL_270;
                }

                v134 = (v58 - v133 + v222);
                sub_222B015C8();
                v135 = v134;
                a1 = v241;
                if (!v135)
                {
                  goto LABEL_293;
                }

LABEL_196:
                v175 = *v224;
              }

              else
              {
                v249 = v58;
                v250 = v56;
                v251 = BYTE2(v56);
                v252 = BYTE3(v56);
                v253 = BYTE4(v56);
                v254 = BYTE5(v56);
                v175 = *v224;
                v135 = &v249;
              }

              v202 = v228;
              v175(v228, v135, v247);
              sub_222A26530(v223, v56);

              v203 = v233;
              v204 = v247;
              (*v239)(v233, v202, v247);
              v205 = 1;
              goto LABEL_227;
            }

            v222 = *(v58 + 16);
            v171 = sub_222B015B8();
            if (!v171)
            {
              goto LABEL_281;
            }

            v172 = v171;
            v173 = sub_222B015D8();
            if (__OFSUB__(v222, v173))
            {
              goto LABEL_264;
            }

            v174 = (v222 - v173 + v172);
            sub_222B015C8();
            v135 = v174;
            a1 = v241;
            if (!v135)
            {
              goto LABEL_282;
            }

            goto LABEL_196;
          }

          goto LABEL_66;
        }

        if (v47 == 20)
        {
          v48 = objc_allocWithZone(MEMORY[0x277D56858]);
          sub_222A55AB8(v44, v46);
          v49 = sub_222B01788();
          sub_222A26530(v44, v46);
          v50 = [v48 initWithData_];

          if (v50)
          {
            v51 = [v50 eventMetadata];

            if (!v51)
            {
              goto LABEL_65;
            }

            v52 = [v51 asrId];

            if (!v52)
            {
              goto LABEL_65;
            }

            v53 = [v52 value];
            if (!v53)
            {
              goto LABEL_75;
            }

            v54 = v53;
            v223 = sub_222B01798();
            v56 = v55;

            v57 = v56 >> 62;
            if ((v56 >> 62) > 1)
            {
              if (v57 != 2)
              {
                goto LABEL_101;
              }

              v58 = v223;
              v119 = *(v223 + 16);
              v118 = *(v223 + 24);
              v113 = __OFSUB__(v118, v119);
              v120 = v118 - v119;
              if (v113)
              {
                goto LABEL_250;
              }

              if (v120 != 16)
              {
                goto LABEL_157;
              }
            }

            else if (v57)
            {
              v58 = v223;
              if (__OFSUB__(HIDWORD(v223), v223))
              {
                goto LABEL_248;
              }

              if (HIDWORD(v223) - v223 != 16)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v58 = v223;
              if (BYTE6(v56) != 16)
              {
                goto LABEL_157;
              }
            }

            if (v57 != 2)
            {
              if (v57 == 1)
              {
                if (v58 > v58 >> 32)
                {
                  goto LABEL_254;
                }

                v222 = sub_222B015B8();
                if (!v222)
                {
                  goto LABEL_292;
                }

                v139 = sub_222B015D8();
                if (__OFSUB__(v58, v139))
                {
                  goto LABEL_269;
                }

                v140 = (v58 - v139 + v222);
                sub_222B015C8();
                v141 = v140;
                a1 = v241;
                if (!v141)
                {
                  goto LABEL_291;
                }

LABEL_204:
                v185 = *v224;
              }

              else
              {
                v249 = v58;
                v250 = v56;
                v251 = BYTE2(v56);
                v252 = BYTE3(v56);
                v253 = BYTE4(v56);
                v254 = BYTE5(v56);
                v185 = *v224;
                v141 = &v249;
              }

              v207 = v225;
              v185(v225, v141, v247);
              sub_222A26530(v223, v56);

              v203 = v231;
              v204 = v247;
              (*v239)(v231, v207, v247);
              v205 = 8;
              goto LABEL_227;
            }

            v222 = *(v58 + 16);
            v181 = sub_222B015B8();
            if (!v181)
            {
              goto LABEL_279;
            }

            v182 = v181;
            v183 = sub_222B015D8();
            if (__OFSUB__(v222, v183))
            {
              goto LABEL_260;
            }

            v184 = (v222 - v183 + v182);
            sub_222B015C8();
            v141 = v184;
            a1 = v241;
            if (!v141)
            {
              goto LABEL_280;
            }

            goto LABEL_204;
          }

          goto LABEL_66;
        }
      }

      sub_222A26530(v44, v46);

LABEL_7:
      if (v34 == ++v35)
      {
        return v243;
      }
    }

LABEL_6:
    goto LABEL_7;
  }

  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  sub_222B015C8();
LABEL_276:
  __break(1u);
LABEL_277:
  sub_222B015C8();
LABEL_278:
  __break(1u);
LABEL_279:
  sub_222B015C8();
LABEL_280:
  __break(1u);
LABEL_281:
  sub_222B015C8();
LABEL_282:
  __break(1u);
LABEL_283:
  sub_222B015C8();
LABEL_284:
  __break(1u);
LABEL_285:
  sub_222B015C8();
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  sub_222B015C8();
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  sub_222B015C8();
  __break(1u);
LABEL_291:
  __break(1u);
LABEL_292:
  sub_222B015C8();
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  sub_222B015C8();
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  sub_222B015C8();
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  sub_222B015C8();
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  sub_222B015C8();
  __break(1u);
LABEL_301:
  result = sub_222B015C8();
LABEL_302:
  __break(1u);
  return result;
}

uint64_t sub_222AB7D80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v23 - v5;
  v32 = sub_222B018D8();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v8 = sub_222B02DC8();
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_222B02D38();
    if (v8 < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = 0;
      v25 = (v6 + 16);
      v26 = a3 & 0xC000000000000001;
      v24 = (v6 + 32);
      v27 = v8;
      v28 = a3;
      v11 = v32;
      do
      {
        if (v26)
        {
          v12 = MEMORY[0x223DC6F00](v10, a3);
        }

        else
        {
          v12 = *(a3 + 8 * v10 + 32);
        }

        ++v10;
        v13 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
        v14 = v29;
        v15 = sub_222A26364(2, v12 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID);
        v16 = v30;

        sub_222AB53EC(v15, v16, v14, sub_222AB084C);

        v17 = v31;
        (*v25)(v31, v12 + v13, v11);
        v34 = *(v12 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

        sub_222A96EC4(v18);
        v19 = v34;
        v20 = sub_222B01848();
        v21 = v33;
        (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
        type metadata accessor for Turn(0);
        v22 = swift_allocObject();
        (*v24)(v22 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v17, v11);
        *(v22 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = v19;
        sub_222AB959C(v21, v22 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date, &qword_27D01D700, &qword_222B07320);

        sub_222B02D18();
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        a3 = v28;
      }

      while (v27 != v10);
      return v35;
    }
  }

  return result;
}

void *sub_222AB8108()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v0 - 8);
  v73 = v61 - v1;
  v74 = sub_222B018D8();
  v2 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA68, &unk_222B0C0F0);
  v4 = MEMORY[0x28223BE20](v71);
  v70 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v69 = v61 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v68 = v61 - v9;
  MEMORY[0x28223BE20](v8);
  v67 = v61 - v10;
  v11 = 0;
  v12 = sub_222B02D78();
  v76 = v2;
  if (v12 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
    v15 = sub_222AB93EC(&qword_280CBA1F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v79 = MEMORY[0x223DC6520](i, v74, v14, v15);
    MEMORY[0x28223BE20](v79);
    v61[-2] = &v79;
    sub_222B02D88();
    v61[1] = v11;
    v16 = MEMORY[0x277D84F90];
    v78 = MEMORY[0x277D84F90];
    sub_222B02D68();
    sub_222B02E18();
    v17 = v77;
    if (v77)
    {
      v18 = sub_222A250BC(0, &qword_27D01DE30, 0x277D5A978);
      do
      {
        [v17 anyEventType];
        v19 = sub_222B02A28();
        if (v19 && v18 == v19)
        {
          v21 = [v17 payload];
          if (v21)
          {
            v22 = v21;
            v23 = sub_222B01798();
            v25 = v24;

            v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v27 = sub_222B01788();
            sub_222A26530(v23, v25);
            v28 = v26;
          }

          else
          {
            v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v27 = 0;
          }

          v20 = [v28 initWithData_];

          if (!v20)
          {
            goto LABEL_9;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            MEMORY[0x223DC6810]();
            if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_222B02648();
            }

            sub_222B02688();
            v16 = v78;
            goto LABEL_9;
          }
        }

        else
        {
          v20 = v17;
        }

LABEL_9:
        sub_222B02E18();
        v17 = v77;
      }

      while (v77);
    }

    v29 = v79;
    v30 = *(v79 + 16);
    v31 = MEMORY[0x277D84F90];
    if (!v30)
    {
      break;
    }

    v61[0] = v16;
    v78 = MEMORY[0x277D84F90];
    sub_222B02D38();
    v32 = sub_222B02BC8();
    v64 = (v76 + 16);
    v65 = (v76 + 32);
    v62 = v29 + 64;
    v63 = (v76 + 8);
    v66 = v29;
    v33 = v72;
    while (1)
    {
      v75 = v30;
      v34 = *(v29 + 36);
      v35 = v67;
      v76 = v34;
      sub_222A964AC(v67, v32, v34, 0, v29);
      v37 = v36;
      v38 = *v65;
      v39 = v68;
      v40 = v35;
      v41 = v74;
      (*v65)(v68, v40, v74);
      v42 = v71;
      *(v39 + *(v71 + 48)) = v37;
      v11 = v69;
      sub_222A34E48(v39, v69, &qword_27D01DA68, &unk_222B0C0F0);

      v43 = v39;
      v44 = v70;
      sub_222AB959C(v43, v70, &qword_27D01DA68, &unk_222B0C0F0);
      v45 = *(v44 + *(v42 + 48));
      (*v64)(v33, v11, v41);
      v46 = sub_222B01848();
      v47 = v73;
      (*(*(v46 - 8) + 56))(v73, 1, 1, v46);
      type metadata accessor for Turn(0);
      v48 = swift_allocObject();
      v38((v48 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID), v33, v41);
      *(v48 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = v45;
      sub_222AB959C(v47, v48 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date, &qword_27D01D700, &qword_222B07320);
      v49 = *v63;
      (*v63)(v11, v41);
      v49(v44, v41);
      sub_222B02D18();
      sub_222B02D48();
      v29 = v66;
      sub_222B02D58();
      sub_222B02D28();
      if (v32 < 0 || v32 >= -(-1 << *(v29 + 32)))
      {
        break;
      }

      if (((*(v62 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v76 != *(v29 + 36))
      {
        goto LABEL_32;
      }

      v32 = sub_222B02BE8();
      v30 = v75 - 1;
      if (v75 == 1)
      {
        v31 = v78;
        v16 = v61[0];
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_27:
  v50 = sub_222AB5FBC(v16);
  v52 = v51;

  v53 = sub_222AB7D80(v50, v52, v31);

  v78 = v53;
  sub_222AB07D4(&v78);
  v54 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  v55 = swift_allocObject();
  v55[6] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  if (v54 >> 62)
  {
    v57 = sub_222B02DC8();
  }

  else
  {
    v57 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0, MEMORY[0x277D84F38]);
  v59 = swift_allocObject();
  *(v59 + 16) = v57;

  v55[2] = v56;
  v55[3] = v58;
  v55[4] = v59;
  v55[5] = v58;
  return v55;
}

unint64_t sub_222AB89B0()
{
  result = qword_27D01DE20;
  if (!qword_27D01DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DE20);
  }

  return result;
}

uint64_t sub_222AB8DDC(uint64_t a1)
{
  sub_222B018D8();
  v3 = *(v1 + 16);

  return sub_222AAD440(a1, v3);
}

void sub_222AB8E94()
{
  v1 = *(sub_222B018D8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  sub_222AAF880(v2, v3, v4);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222AB8F30(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_222AB8F44()
{
  v1 = *(sub_222B018D8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_222AAF130(v2, v3);
}

void sub_222AB90A4()
{
  v1 = *(sub_222B018D8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_222AAE9FC(v3, v0 + v2, v4);
}

uint64_t sub_222AB9134(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_62Tm()
{
  v1 = sub_222B018D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_77Tm()
{
  v1 = sub_222B018D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222AB92F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_222B018D8() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_222AB939C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_222B02D68();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t sub_222AB93EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222AB9434(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A34620;

  return sub_222A327C8(a1, v1);
}

uint64_t sub_222AB94D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222AB3AB0(a1, v1);
}

uint64_t sub_222AB959C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t UniversalSuggestionsStoreCoreData.__allocating_init()()
{
  v1 = static Config.universalSuggestionsStoreFilePath.getter();
  v2 = *(v0 + 120);

  return v2(v1);
}

id sub_222AB96D8()
{
  result = sub_222AB96F8();
  qword_280CB51F8 = result;
  return result;
}

id sub_222AB96F8()
{
  v0 = sub_222B01748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UniversalSuggestionsStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (!v8 || (sub_222B01718(), v8, v9 = objc_allocWithZone(MEMORY[0x277CBE450]), v10 = sub_222B016A8(), v11 = [v9 initWithContentsOfURL_], v10, (*(v1 + 8))(v3, v0), (result = v11) == 0))
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_27D01DE58);
    v14 = sub_222B02128();
    v15 = sub_222B028E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "UniversalSuggestionsCoreData: Error loading data base model from bundle", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_222AB9960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  return sub_222AB99B4(a1, a2, v3);
}

uint64_t sub_222AB99B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (!a2)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CBC458);
    v7 = sub_222B02128();
    v8 = sub_222B028E8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_222A1C000, v7, v8, "Store path unavailable, possibly no access to data container", v9, 2u);
      MEMORY[0x223DC7E30](v9, -1, -1);
    }

    goto LABEL_9;
  }

  v5 = sub_222AC263C(a1, a2, a3 & 1);

  if (!v5)
  {
LABEL_9:
    type metadata accessor for UniversalSuggestionsStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + 16) = v5;
  *(v3 + 24) = [v5 newBackgroundContext];
  return v4;
}

uint64_t sub_222AB9B04()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = &off_2784BA000;
  v2 = [*(v0 + 16) persistentStoreCoordinator];
  v3 = [v2 persistentStores];

  sub_222A250BC(0, &qword_280CB4BA8, 0x277CBE4D0);
  v4 = sub_222B025F8();

  if (v4 >> 62)
  {
    v5 = sub_222B02DC8();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DC6F00](i, v4);
        }

        else
        {
          v8 = *(v4 + 8 * i + 32);
        }

        v9 = v8;
        v10 = [*(v17 + 16) v1[206]];
        v18[0] = 0;
        v11 = [v10 removePersistentStore:v9 error:v18];

        if (v11)
        {
          v7 = v18[0];
        }

        else
        {
          v12 = v18[0];
          v13 = v1;
          v14 = sub_222B01628();

          swift_willThrow();
          v15 = v14;
          v1 = v13;
        }
      }
    }
  }
}

void sub_222AB9D28(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_27D01DE58);
    v7 = a2;
    v8 = a1;
    v9 = sub_222B02128();
    v10 = sub_222B028E8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
      v14 = sub_222B02B18();
      v16 = sub_222A230FC(v14, v15, &v18);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v17 = v8;
      _os_log_impl(&dword_222A1C000, v9, v10, "UniversalSuggestionsCoreData: Unable to load persistent stores: %s : %@", v11, 0x16u);
      sub_222A34F20(v12, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DC7E30](v13, -1, -1);
      MEMORY[0x223DC7E30](v11, -1, -1);
    }
  }
}

id sub_222AB9F20()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v17[0] = 0;
  v2 = [v1 save_];
  if (v2)
  {
    v3 = v17[0];
  }

  else
  {
    v4 = v17[0];
    v5 = sub_222B01628();

    swift_willThrow();
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_27D01DE58);
    v7 = v5;
    v8 = sub_222B02128();
    v9 = sub_222B028E8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136315138;
      v12 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v13 = sub_222B023D8();
      v15 = sub_222A230FC(v13, v14, v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v8, v9, "UniversalSuggestionsCoreData: Unresolved error in saveChanges error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DC7E30](v11, -1, -1);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_222ABA130()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222ABA26C;
  *(v2 + 24) = v0;
  v5[4] = sub_222ABA270;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222A50B98;
  v5[3] = &block_descriptor_10;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_222ABA290()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = [v1 initWithEntityName_];

  v4 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v5 = *(v0 + 24);
  v25[0] = 0;
  v6 = [v5 executeRequest:v4 error:v25];
  if (v6)
  {
    v7 = v6;
    v8 = v25[0];

    if (sub_222AB9F20())
    {
    }

    else
    {
      if (qword_27D01C548 != -1)
      {
        swift_once();
      }

      v21 = sub_222B02148();
      __swift_project_value_buffer(v21, qword_27D01DE58);
      v22 = sub_222B02128();
      v23 = sub_222B028E8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_222A1C000, v22, v23, "UniversalSuggestionsCoreData: Cannot reset store, failed to save", v24, 2u);
        MEMORY[0x223DC7E30](v24, -1, -1);
      }
    }
  }

  else
  {
    v9 = v25[0];
    v10 = sub_222B01628();

    swift_willThrow();
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_27D01DE58);
    v12 = v10;
    v13 = sub_222B02128();
    v14 = sub_222B028E8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315138;
      v17 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v18 = sub_222B023D8();
      v20 = sub_222A230FC(v18, v19, v25);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_222A1C000, v13, v14, "UniversalSuggestionsCoreData: Cannot reset store, error=%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DC7E30](v16, -1, -1);
      MEMORY[0x223DC7E30](v15, -1, -1);
    }

    else
    {
    }
  }
}

void *sub_222ABA5FC()
{
  v0 = type metadata accessor for UniversalCandidate(0);
  v36 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UniversalSuggestion(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE70, &qword_222B0C130);
  result = sub_222B02A58();
  v11 = v46;
  v40 = *(v46 + 16);
  if (v40)
  {
    v12 = 0;
    v13 = *(v6 + 24);
    v38 = v46 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v39 = v13;
    v44 = v4 + 32;
    v45 = (v4 + 16);
    v14 = MEMORY[0x277D84F90];
    v37 = v3;
    v15 = v41;
    v34 = v9;
    v35 = v7;
    v33 = v46;
    while (v12 < *(v11 + 16))
    {
      v42 = v12;
      v43 = v14;
      sub_222AC1D9C(v38 + *(v7 + 72) * v12, v9, type metadata accessor for UniversalSuggestion);
      v17 = *&v9[v39];
      v18 = *(v17 + 16);
      if (v18)
      {
        v46 = MEMORY[0x277D84F90];
        sub_222A23D50(0, v18, 0);
        v19 = v46;
        v20 = v17 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
        v21 = *(v36 + 72);
        do
        {
          sub_222AC1D9C(v20, v2, type metadata accessor for UniversalCandidate);
          (*v45)(v15, v2, v3);
          sub_222AC1FC0(v2, type metadata accessor for UniversalCandidate);
          v46 = v19;
          v22 = v3;
          v24 = *(v19 + 16);
          v23 = *(v19 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_222A23D50((v23 > 1), v24 + 1, 1);
            v19 = v46;
          }

          *(v19 + 16) = v24 + 1;
          (*(v4 + 32))(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v15, v22);
          v20 += v21;
          --v18;
          v3 = v22;
        }

        while (v18);
        v9 = v34;
        result = sub_222AC1FC0(v34, type metadata accessor for UniversalSuggestion);
        v7 = v35;
        v11 = v33;
      }

      else
      {
        result = sub_222AC1FC0(v9, type metadata accessor for UniversalSuggestion);
        v19 = MEMORY[0x277D84F90];
      }

      v25 = *(v19 + 16);
      v14 = v43;
      v26 = v43[2];
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_29;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v27 > v14[3] >> 1)
      {
        if (v26 <= v27)
        {
          v28 = v26 + v25;
        }

        else
        {
          v28 = v26;
        }

        result = sub_222AA8E90(result, v28, 1, v14);
        v14 = result;
      }

      v3 = v37;
      v15 = v41;
      if (*(v19 + 16))
      {
        if ((v14[3] >> 1) - v14[2] < v25)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        v16 = v42;
        if (v25)
        {
          v29 = v14[2];
          v30 = __OFADD__(v29, v25);
          v31 = v29 + v25;
          if (v30)
          {
            goto LABEL_32;
          }

          v14[2] = v31;
        }
      }

      else
      {

        v16 = v42;
        if (v25)
        {
          goto LABEL_30;
        }
      }

      v12 = v16 + 1;
      if (v12 == v40)
      {

        return v14;
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
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_222ABAB60(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = sub_222ABC074(a1);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 candidateForUniversalSuggestion];
  if (!v9)
  {

LABEL_9:
    v21 = 0;
    return v21 & 1;
  }

  v10 = qword_27D01C548;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_222B02148();
  __swift_project_value_buffer(v12, qword_27D01DE58);
  v13 = v11;
  v14 = sub_222B02128();
  v15 = sub_222B028D8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    v18 = [v13 id];
    if (v18)
    {
      v19 = v18;
      sub_222B01898();

      v20 = sub_222B018D8();
      (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
    }

    else
    {
      v22 = sub_222B018D8();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    }

    v23 = sub_222B023D8();
    v25 = sub_222A230FC(v23, v24, &v28);

    *(v16 + 4) = v25;
    _os_log_impl(&dword_222A1C000, v14, v15, "Deleting universal suggestion candidate: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DC7E30](v17, -1, -1);
    MEMORY[0x223DC7E30](v16, -1, -1);
  }

  [*(v2 + 24) deleteObject_];
  v21 = sub_222AB9F20();

  return v21 & 1;
}

void *sub_222ABAE54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222ABAE84();
  *a1 = result;
  return result;
}

void *sub_222ABAE84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE80, &unk_222B0C140);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39 - v1;
  v3 = type metadata accessor for UniversalSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222B06DF0;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v13 = [v11 initWithKey:v12 ascending:1];

  *(v10 + 32) = v13;
  sub_222A250BC(0, &qword_280CB8448, 0x277CCAC98);
  v14 = sub_222B025D8();

  [v9 setSortDescriptors_];

  type metadata accessor for UniversalSuggestionCoreDataRecord();
  v15 = sub_222B02A68();
  v27 = v15;
  v41 = v3;
  if (v15 >> 62)
  {
    v28 = sub_222B02DC8();
  }

  else
  {
    v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v41;
  v39 = v9;
  if (v28)
  {
    v30 = 0;
    v42 = v6;
    v43 = v27 & 0xC000000000000001;
    v40 = v4;
    v31 = (v4 + 48);
    v26 = MEMORY[0x277D84F90];
    v32 = v28;
    while (1)
    {
      if (v43)
      {
        v33 = MEMORY[0x223DC6F00](v30, v27);
      }

      else
      {
        if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v33 = *(v27 + 8 * v30 + 32);
      }

      v34 = v33;
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_222A90E4C(v2);

      if ((*v31)(v2, 1, v29) == 1)
      {
        sub_222A34F20(v2, &qword_27D01DE80, &unk_222B0C140);
      }

      else
      {
        sub_222AC253C(v2, v42, type metadata accessor for UniversalSuggestion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_222AA9B44(0, v26[2] + 1, 1, v26);
        }

        v37 = v26[2];
        v36 = v26[3];
        if (v37 >= v36 >> 1)
        {
          v26 = sub_222AA9B44((v36 > 1), v37 + 1, 1, v26);
        }

        v26[2] = v37 + 1;
        sub_222AC253C(v42, v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v37, type metadata accessor for UniversalSuggestion);
        v29 = v41;
      }

      ++v30;
      if (v35 == v32)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v16 = sub_222B02148();
    __swift_project_value_buffer(v16, qword_27D01DE58);
    v17 = v29;
    v18 = sub_222B02128();
    v19 = sub_222B028E8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v29;
      v45 = v21;
      *v20 = 136315138;
      v22 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v23 = sub_222B023D8();
      v25 = sub_222A230FC(v23, v24, &v45);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_222A1C000, v18, v19, "UniversalSuggestionsCoreData: Unresolved error in readAllSuggestions error=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DC7E30](v21, -1, -1);
      MEMORY[0x223DC7E30](v20, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_23:
  }

  return v26;
}

uint64_t sub_222ABB41C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_222B02A58();
  return v4;
}

void *sub_222ABB474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE88, &unk_222B0C150);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39 - v1;
  v3 = type metadata accessor for UniversalRuntimeSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222B06DF0;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v13 = [v11 initWithKey:v12 ascending:1];

  *(v10 + 32) = v13;
  sub_222A250BC(0, &qword_280CB8448, 0x277CCAC98);
  v14 = sub_222B025D8();

  [v9 setSortDescriptors_];

  type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
  v15 = sub_222B02A68();
  v27 = v15;
  v41 = v3;
  if (v15 >> 62)
  {
    v28 = sub_222B02DC8();
  }

  else
  {
    v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v41;
  v39 = v9;
  if (v28)
  {
    v30 = 0;
    v42 = v6;
    v43 = v27 & 0xC000000000000001;
    v40 = v4;
    v31 = (v4 + 48);
    v26 = MEMORY[0x277D84F90];
    v32 = v28;
    while (1)
    {
      if (v43)
      {
        v33 = MEMORY[0x223DC6F00](v30, v27);
      }

      else
      {
        if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v33 = *(v27 + 8 * v30 + 32);
      }

      v34 = v33;
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_222A90488(v2);

      if ((*v31)(v2, 1, v29) == 1)
      {
        sub_222A34F20(v2, &qword_27D01DE88, &unk_222B0C150);
      }

      else
      {
        sub_222AC253C(v2, v42, type metadata accessor for UniversalRuntimeSuggestion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_222AA9B6C(0, v26[2] + 1, 1, v26);
        }

        v37 = v26[2];
        v36 = v26[3];
        if (v37 >= v36 >> 1)
        {
          v26 = sub_222AA9B6C((v36 > 1), v37 + 1, 1, v26);
        }

        v26[2] = v37 + 1;
        sub_222AC253C(v42, v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v37, type metadata accessor for UniversalRuntimeSuggestion);
        v29 = v41;
      }

      ++v30;
      if (v35 == v32)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v16 = sub_222B02148();
    __swift_project_value_buffer(v16, qword_27D01DE58);
    v17 = v29;
    v18 = sub_222B02128();
    v19 = sub_222B028E8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v29;
      v45 = v21;
      *v20 = 136315138;
      v22 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v23 = sub_222B023D8();
      v25 = sub_222A230FC(v23, v24, &v45);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_222A1C000, v18, v19, "UniversalSuggestionsCoreData: Unresolved error in readAllSuggestions error=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DC7E30](v21, -1, -1);
      MEMORY[0x223DC7E30](v20, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_23:
  }

  return v26;
}

unint64_t sub_222ABBA0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 initWithEntityName_];

  v26 = v1;
  v5 = sub_222A67AA8(v1);
  if (!v6)
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v17 = sub_222B02148();
    __swift_project_value_buffer(v17, qword_27D01DE58);
    v18 = sub_222B02128();
    v19 = sub_222B028E8();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "UniversalSuggestionsCoreData: Unable to extract name from key entity. Skipping suggestion search.";
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v6;
  if (qword_27D01C548 != -1)
  {
    swift_once();
  }

  v9 = sub_222B02148();
  __swift_project_value_buffer(v9, qword_27D01DE58);

  v10 = sub_222B02128();
  v11 = sub_222B028D8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_222A230FC(v7, v8, &v26);
    _os_log_impl(&dword_222A1C000, v10, v11, "UniversalSuggestionsCoreData: Searching for universal suggestion with name==%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DC7E30](v13, -1, -1);
    MEMORY[0x223DC7E30](v12, -1, -1);
  }

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222B05250;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_222A55E5C();
  *(v14 + 32) = v7;
  *(v14 + 40) = v8;
  v15 = sub_222B02888();
  [v4 setPredicate_];

  type metadata accessor for UniversalSuggestionCoreDataRecord();
  result = sub_222B02A68();
  if (result >> 62)
  {
    v23 = result;
    if (sub_222B02DC8() > 1)
    {
      goto LABEL_13;
    }

    v22 = sub_222B02DC8();
    result = v23;
  }

  else
  {
    v22 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22 > 1)
    {
LABEL_13:

      v18 = sub_222B02128();
      v19 = sub_222B028E8();
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_16:

LABEL_17:
        return 0;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "More than one suggestion records have been found with the same key name. Skipping search.";
LABEL_15:
      _os_log_impl(&dword_222A1C000, v18, v19, v21, v20, 2u);
      MEMORY[0x223DC7E30](v20, -1, -1);
      goto LABEL_16;
    }
  }

  if (!v22)
  {

    goto LABEL_17;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x223DC6F00](0);
    goto LABEL_24;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(result + 32);
LABEL_24:
    v25 = v24;

    return v25;
  }

  __break(1u);
  return result;
}

void sub_222ABBFE4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_222ABC074(a1);
  if (v3)
  {
    v4 = v3;
    sub_222A8FCD4(a2);
  }

  else
  {
    v5 = type metadata accessor for UniversalCandidate(0);
    (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

unint64_t sub_222ABC074(uint64_t a1)
{
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v8 = [v6 initWithEntityName_];

  if (qword_27D01C548 != -1)
  {
    swift_once();
  }

  v9 = sub_222B02148();
  v10 = __swift_project_value_buffer(v9, qword_27D01DE58);
  (*(v3 + 16))(v5, a1, v2);
  v32[1] = v10;
  v11 = sub_222B02128();
  v12 = sub_222B028D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32[0] = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315138;
    sub_222AC248C(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_222B02F38();
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    v19 = sub_222A230FC(v16, v18, &v33);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_222A1C000, v11, v12, "UniversalSuggestionsCoreData: Searching for universal candidate with id==%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DC7E30](v15, -1, -1);
    v20 = v14;
    v8 = v32[0];
    MEMORY[0x223DC7E30](v20, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_222B05250;
  v22 = sub_222B01878();
  *(v21 + 56) = sub_222A250BC(0, &qword_27D01D438, 0x277CCAD78);
  *(v21 + 64) = sub_222AC24D4();
  *(v21 + 32) = v22;
  v23 = sub_222B02888();
  [v8 setPredicate_];

  type metadata accessor for UniversalCandidateCoreDataRecord();
  result = sub_222B02A68();
  if (result >> 62)
  {
    v29 = result;
    if (sub_222B02DC8() > 1)
    {
      goto LABEL_8;
    }

    v25 = sub_222B02DC8();
    result = v29;
  }

  else
  {
    v25 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 > 1)
    {
LABEL_8:

      v26 = sub_222B02128();
      v27 = sub_222B028E8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_222A1C000, v26, v27, "More than one candidate records have been found with the same id. Skipping search.", v28, 2u);
        MEMORY[0x223DC7E30](v28, -1, -1);
      }

      goto LABEL_19;
    }
  }

  if (!v25)
  {

LABEL_19:

    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x223DC6F00](0);
    goto LABEL_17;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(result + 32);
LABEL_17:
    v31 = v30;

    return v31;
  }

  __break(1u);
  return result;
}

void sub_222ABC6F0(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t *)@<X2>, void (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v11 = a1;
  v8 = a2(&v11);
  if (v8)
  {
    v9 = v8;
    a3();
  }

  else
  {
    v10 = a4();
    (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }
}

unint64_t sub_222ABC7A0(uint64_t *a1)
{
  v1 = sub_222A67AA8(*a1);
  if (v2)
  {
    v3 = sub_222ABC8BC(v1, v2);

    return v3;
  }

  else
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_27D01DE58);
    v6 = sub_222B02128();
    v7 = sub_222B028E8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_222A1C000, v6, v7, "UniversalSuggestionsCoreData: Unable to extract name from key entity. Skipping suggestion search.", v8, 2u);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    return 0;
  }
}

unint64_t sub_222ABC8BC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v6 = [v4 initWithEntityName_];

  if (qword_27D01C548 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_27D01DE58);

  v8 = sub_222B02128();
  v9 = sub_222B028D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_222A230FC(a1, a2, &v22);
    _os_log_impl(&dword_222A1C000, v8, v9, "UniversalSuggestionsCoreData: Searching for universal runtime suggestion with name==%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DC7E30](v11, -1, -1);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

  sub_222A250BC(0, &qword_280CB4BB8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D430, qword_222B07A08);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_222B05250;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_222A55E5C();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = sub_222B02888();
  [v6 setPredicate_];

  type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
  result = sub_222B02A68();
  if (result >> 62)
  {
    v19 = result;
    if (sub_222B02DC8() > 1)
    {
      goto LABEL_7;
    }

    v15 = sub_222B02DC8();
    result = v19;
  }

  else
  {
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 > 1)
    {
LABEL_7:

      v16 = sub_222B02128();
      v17 = sub_222B028E8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_222A1C000, v16, v17, "More than one runtime suggestion records have been found with the same key name. Skipping search.", v18, 2u);
        MEMORY[0x223DC7E30](v18, -1, -1);
      }

      goto LABEL_18;
    }
  }

  if (!v15)
  {

LABEL_18:

    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x223DC6F00](0);
    goto LABEL_16;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(result + 32);
LABEL_16:
    v21 = v20;

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_222ABCDF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v311 = a2;
  v288 = type metadata accessor for UniversalSuggestion(0);
  MEMORY[0x28223BE20](v288);
  v306 = &v264 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for UniversalSuggestionCandidate(0);
  MEMORY[0x28223BE20](v292);
  v280 = &v264 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for UniversalRuntimeSuggestion(0);
  MEMORY[0x28223BE20](v297);
  v298 = &v264 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_222B018D8();
  v300 = *(v309 - 8);
  MEMORY[0x28223BE20](v309);
  v274 = &v264 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6A8, &unk_222B08A00);
  v11 = MEMORY[0x28223BE20](v290);
  v278 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v289 = &v264 - v13;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v14 = MEMORY[0x28223BE20](v308);
  v273 = &v264 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v276 = &v264 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v282 = &v264 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v296 = &v264 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v272 = &v264 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v275 = &v264 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v283 = &v264 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v284 = &v264 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v271 = &v264 - v31;
  MEMORY[0x28223BE20](v30);
  v307 = &v264 - v32;
  v287 = sub_222B01848();
  v304.n128_u64[0] = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v286 = &v264 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEA0, &qword_222B0C310);
  v305 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v310 = (&v264 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DEA8, qword_222B0C318);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v316 = &v264 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = (&v264 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v279 = &v264 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v294 = &v264 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v277 = &v264 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v303 = &v264 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v264 - v49;
  v313 = type metadata accessor for UniversalCandidate(0);
  v315 = *(v313 - 8);
  v51 = MEMORY[0x28223BE20](v313);
  v53 = &v264 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51);
  v293 = &v264 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v285 = &v264 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v281 = &v264 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v301 = &v264 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v317 = &v264 - v63;
  MEMORY[0x28223BE20](v62);
  v314 = (&v264 - v64);
  v65 = sub_222B01638();
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v68 = &v264 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *a1;
  v302 = *v311;
  *&v320 = v69;
  v70 = sub_222A67AA8(v69);
  if (!v71)
  {
    if (qword_27D01C548 == -1)
    {
LABEL_14:
      v77 = sub_222B02148();
      __swift_project_value_buffer(v77, qword_27D01DE58);
      v78 = sub_222B02128();
      v79 = sub_222B028D8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_222A1C000, v78, v79, "UniversalSuggestionsCoreData: Unable to extract name from key entity. Skipping suggestion donation.", v80, 2u);
        MEMORY[0x223DC7E30](v80, -1, -1);
      }

      type metadata accessor for UniversalSuggestionCandidateDonationResult(0);

      return swift_storeEnumTagMultiPayload();
    }

LABEL_44:
    swift_once();
    goto LABEL_14;
  }

  v270 = v70;
  v295 = v71;
  v291 = v69;
  *&v320 = v69;
  v72 = sub_222ABBA0C(&v320);
  v299 = a3;
  if (!v72)
  {
    sub_222B018C8();
    v82 = v313;
    *&v53[*(v313 + 20)] = v302;
    *&v53[*(v82 + 24)] = 0x3FC999999999999ALL;
    *&v53[*(v82 + 28)] = 0;
    v83 = *(v4 + 24);

    v84 = sub_222A8F85C(v83);
    if (!v84)
    {
      sub_222AC1FC0(v53, type metadata accessor for UniversalCandidate);

      goto LABEL_152;
    }

    v85 = v84;
    v86 = v306;
    sub_222B018C8();
    v87 = v288;
    v88 = &v86[*(v288 + 20)];
    v89 = v270;
    v90 = v295;
    *v88 = v270;
    v88[1] = v90;
    *&v86[*(v87 + 24)] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B06DF0;
    *(inited + 32) = v85;

    v92 = v85;

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_222AC1FC0(v86, type metadata accessor for UniversalSuggestion);
    v93 = v298;
    sub_222B018C8();
    v94 = v297;
    (*(v315 + 56))(v93 + *(v297 + 24), 1, 1, v82);
    v95 = (v93 + *(v94 + 20));
    *v95 = v89;
    v95[1] = v90;
    *(v93 + *(v94 + 28)) = 1;
    type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
    v96 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v97 = sub_222B01878();
    [v96 setId_];

    v98 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    [v96 setQueryEntityName_];

    [v96 setTopCandidate_];
    [v92 setTopCandidateForUniversalRuntimeSuggestion_];
    [v96 setNeedsDisambiguation_];

    sub_222AC1FC0(v93, type metadata accessor for UniversalRuntimeSuggestion);
    LOBYTE(v98) = sub_222AB9F20();

    if ((v98 & 1) == 0)
    {
      sub_222AC1FC0(v53, type metadata accessor for UniversalCandidate);
      goto LABEL_152;
    }

    v99 = v299;
    sub_222AC253C(v53, v299 + *(v292 + 24), type metadata accessor for UniversalCandidate);
    *(v99 + 8) = v291;
    *v99 = 1;
    type metadata accessor for UniversalSuggestionCandidateDonationResult(0);
    swift_storeEnumTagMultiPayload();
  }

  v288 = v4;
  v306 = v72;
  v73 = [v306 candidates];
  v74 = MEMORY[0x277D84F90];
  if (v73)
  {
    v75 = v73;
    v322 = MEMORY[0x277D84F90];
    v76 = MEMORY[0x277D84F90];
    sub_222B028B8();
    sub_222AC248C(&unk_280CB8318, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_222B02B48();
    if (v321)
    {
      v76 = MEMORY[0x277D84F90];
      v311 = v75;
      do
      {
        while (1)
        {
          sub_222A250AC(&v320, &v318);
          type metadata accessor for UniversalCandidateCoreDataRecord();
          if ((swift_dynamicCast() & 1) == 0 || !v319)
          {
            break;
          }

          MEMORY[0x223DC6810]();
          if (*((v322 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v322 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
          v76 = v322;
          sub_222B02B48();
          v75 = v311;
          if (!v321)
          {
            goto LABEL_23;
          }
        }

        sub_222B02B48();
      }

      while (v321);
      v75 = v311;
    }

LABEL_23:

    (*(v66 + 8))(v68, v65);
    if (v76 >> 62)
    {
      v100 = sub_222B02DC8();
      if (v100)
      {
LABEL_25:
        v101 = 0;
        v311 = (v76 & 0xC000000000000001);
        v102 = v76 & 0xFFFFFFFFFFFFFF8;
        v103 = (v315 + 48);
        v74 = MEMORY[0x277D84F90];
        v104 = v39;
        while (1)
        {
          if (v311)
          {
            v106 = v76;
            v107 = MEMORY[0x223DC6F00](v101, v76);
          }

          else
          {
            if (v101 >= *(v102 + 16))
            {
              goto LABEL_43;
            }

            v106 = v76;
            v107 = *(v76 + 8 * v101 + 32);
          }

          v108 = v107;
          v109 = v101 + 1;
          if (__OFADD__(v101, 1))
          {
            break;
          }

          sub_222A8FCD4(v50);

          if ((*v103)(v50, 1, v313) == 1)
          {
            sub_222A34F20(v50, &qword_27D01D150, &qword_222B06930);
          }

          else
          {
            sub_222AC253C(v50, v314, type metadata accessor for UniversalCandidate);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v110 = v74;
            }

            else
            {
              v110 = sub_222AA9B1C(0, v74[2] + 1, 1, v74);
            }

            v112 = v110[2];
            v111 = v110[3];
            if (v112 >= v111 >> 1)
            {
              v110 = sub_222AA9B1C((v111 > 1), v112 + 1, 1, v110);
            }

            v110[2] = v112 + 1;
            v74 = v110;
            sub_222AC253C(v314, v110 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v112, type metadata accessor for UniversalCandidate);
          }

          ++v101;
          v105 = v109 == v100;
          v76 = v106;
          v39 = v104;
          if (v105)
          {
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v100 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v100)
      {
        goto LABEL_25;
      }
    }

    v74 = MEMORY[0x277D84F90];
LABEL_47:
  }

  v113 = v288;
  v114 = v291;
  v115 = v74[2];
  v116 = v306;
  v117 = v312;
  v118 = v316;
  if (!v115)
  {

    v175 = v293;
    sub_222B018C8();
    v176 = v313;
    *&v175[*(v313 + 20)] = v302;
    *&v175[*(v176 + 24)] = 0x3FC999999999999ALL;
    *&v175[*(v176 + 28)] = 0;
    v177 = *(v113 + 24);

    v178 = sub_222A8F85C(v177);
    if (!v178)
    {
      sub_222AC1FC0(v175, type metadata accessor for UniversalCandidate);

      goto LABEL_152;
    }

    v179 = v178;
    [v116 addCandidatesObject_];
    v180 = v298;
    sub_222B018C8();
    v181 = v297;
    (*(v315 + 56))(v180 + *(v297 + 24), 1, 1, v176);
    v182 = (v180 + *(v181 + 20));
    v183 = v295;
    *v182 = v270;
    v182[1] = v183;
    *(v180 + *(v181 + 28)) = 1;
    type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
    v184 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v185 = sub_222B01878();
    [v184 setId_];

    v186 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
    [v184 setQueryEntityName_];

    [v184 setTopCandidate_];
    [v179 setTopCandidateForUniversalRuntimeSuggestion_];
    [v184 setNeedsDisambiguation_];

    sub_222AC1FC0(v180, type metadata accessor for UniversalRuntimeSuggestion);
    LOBYTE(v186) = sub_222AB9F20();

    v187 = v299;
    if ((v186 & 1) == 0)
    {
      sub_222AC1FC0(v293, type metadata accessor for UniversalCandidate);
      type metadata accessor for UniversalSuggestionCandidateDonationResult(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_222AC253C(v293, v299 + *(v292 + 24), type metadata accessor for UniversalCandidate);
    *(v187 + 8) = v114;
    *v187 = 1;
    type metadata accessor for UniversalSuggestionCandidateDonationResult(0);
    swift_storeEnumTagMultiPayload();
  }

  v311 = v74;
  *&v320 = v291;
  v293 = sub_222ABC7A0(&v320);
  v119 = *(v315 + 56);
  v269 = 1;
  v266 = v315 + 56;
  v265 = v119;
  v120 = (v119)(v303, 1, 1, v313);
  v268 = 0;
  v121 = 0;
  v314 = (v305 + 7);
  v122 = (v305 + 6);
  v305 = (v300 + 56);
  v267 = (v304.n128_u64[0] + 8);
  v123 = 0.0;
  v120.n128_u64[0] = 134218242;
  v304 = v120;
  while (1)
  {
    if (v121 == v115)
    {
      v124 = 1;
      v121 = v115;
    }

    else
    {
      if ((v121 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        swift_once();
        goto LABEL_111;
      }

      if (v121 >= v311[2])
      {
        goto LABEL_156;
      }

      v125 = v311 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v121;
      v126 = v117[12];
      v127 = v310;
      *v310 = v121;
      sub_222AC1D9C(v125, v127 + v126, type metadata accessor for UniversalCandidate);
      sub_222AB959C(v127, v118, &qword_27D01DEA0, &qword_222B0C310);
      v124 = 0;
      ++v121;
    }

    (*v314)(v118, v124, 1, v117);
    sub_222AB959C(v118, v39, &qword_27D01DEA8, qword_222B0C318);
    if ((*v122)(v39, 1, v117) == 1)
    {
      break;
    }

    v114 = v115;
    v128 = *v39;
    sub_222AC253C(v39 + v117[12], v317, type metadata accessor for UniversalCandidate);
    v129 = [v116 candidates];
    if (v129 && (v130 = v129, v131 = [v129 objectAtIndex_], v130, sub_222B02BA8(), swift_unknownObjectRelease(), type metadata accessor for UniversalCandidateCoreDataRecord(), (swift_dynamicCast() & 1) != 0))
    {
      v264 = v318;
      *&v320 = *&v317[*(v313 + 20)];
      v145 = sub_222A67AA8(v320);
      v147 = v146;
      *&v320 = v302;
      v148 = sub_222A67AA8(v302);
      if (!v147)
      {
        if (!v149)
        {
          goto LABEL_80;
        }

LABEL_73:

        goto LABEL_74;
      }

      if (!v149)
      {
        goto LABEL_73;
      }

      if (v145 == v148 && v147 == v149)
      {

LABEL_80:
        v151 = v264;
        [v264 score];
        v156 = v155 + 0.2;
        if (v156 > 1.0)
        {
          v156 = 1.0;
        }

        [v151 setScore_];
        v157 = v277;
        sub_222A8FCD4(v277);
        v158 = v303;
        sub_222A34F20(v303, &qword_27D01D150, &qword_222B06930);
        sub_222AB959C(v157, v158, &qword_27D01D150, &qword_222B06930);
        goto LABEL_83;
      }

      v154 = sub_222B02F78();

      if (v154)
      {
        goto LABEL_80;
      }

LABEL_74:
      if (qword_27D01C538 != -1)
      {
        swift_once();
      }

      v150 = *&qword_27D01DE50;
      v151 = v264;
      [v264 score];
      v153 = v152 + -0.2;
      if (v150 > v153)
      {
        v153 = v150;
      }

      [v151 setScore_];
LABEL_83:
      v117 = v312;
      v118 = v316;
      v159 = v286;
      sub_222B01828();
      sub_222B01818();
      v161 = v160;
      (*v267)(v159, v287);
      [v151 setLastUpdated_];
      [v116 replaceObjectInCandidatesAtIndex:v128 withObject:v151];
      [v151 score];
      v163 = v151;
      if (v269)
      {
        v123 = v162;
        v164 = v268;
        v115 = v114;
        goto LABEL_89;
      }

      v115 = v114;
      if (v123 < v162)
      {
        [v163 score];
        v123 = v165;
        v164 = v268;
        if (!v268)
        {
          goto LABEL_90;
        }

        [v268 setTopCandidateForUniversalRuntimeSuggestion_];
LABEL_89:

LABEL_90:
        sub_222AC1FC0(v317, type metadata accessor for UniversalCandidate);
        v269 = 0;
        v268 = v163;
      }

      else
      {
        sub_222AC1FC0(v317, type metadata accessor for UniversalCandidate);

        v269 = 0;
      }
    }

    else
    {
      if (qword_27D01C548 != -1)
      {
        swift_once();
      }

      v132 = sub_222B02148();
      __swift_project_value_buffer(v132, qword_27D01DE58);
      v133 = v116;
      v134 = sub_222B02128();
      v135 = sub_222B028E8();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *&v320 = v137;
        *v136 = v304.n128_u32[0];
        *(v136 + 4) = v128;
        *(v136 + 12) = 2080;
        v138 = [v133 id];
        if (v138)
        {
          v139 = v307;
          v140 = v138;
          sub_222B01898();

          v141 = 0;
        }

        else
        {
          v141 = 1;
          v139 = v307;
        }

        (*v305)(v139, v141, 1, v309);
        v142 = sub_222B023D8();
        v144 = sub_222A230FC(v142, v143, &v320);

        *(v136 + 14) = v144;
        _os_log_impl(&dword_222A1C000, v134, v135, "UniversalSuggestionsCoreData: Could not retrieve the candidate record at position %ld in suggestion record with ID %s", v136, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v137);
        MEMORY[0x223DC7E30](v137, -1, -1);
        MEMORY[0x223DC7E30](v136, -1, -1);

        sub_222AC1FC0(v317, type metadata accessor for UniversalCandidate);
        v116 = v306;
        v117 = v312;
      }

      else
      {

        sub_222AC1FC0(v317, type metadata accessor for UniversalCandidate);
      }

      v118 = v316;
      v115 = v114;
    }
  }

  v166 = v294;
  sub_222A34E48(v303, v294, &qword_27D01D150, &qword_222B06930);
  v167 = *(v315 + 48);
  v168 = v313;
  v315 += 48;
  if ((v167)(v166, 1, v313) != 1)
  {
    v188 = v166;
    v189 = v281;
    sub_222AC253C(v188, v281, type metadata accessor for UniversalCandidate);
    sub_222AC253C(v189, v301, type metadata accessor for UniversalCandidate);
    v171 = v299;
    v172 = v296;
    v117 = v268;
    if (!v268)
    {
      goto LABEL_147;
    }

    goto LABEL_103;
  }

  sub_222A34F20(v166, &qword_27D01D150, &qword_222B06930);
  v114 = v285;
  sub_222B018C8();
  *(v114 + v168[5]) = v302;
  *(v114 + v168[6]) = 0x3FC999999999999ALL;
  *(v114 + v168[7]) = 0;
  sub_222AC1D9C(v114, v301, type metadata accessor for UniversalCandidate);
  v169 = *(v288 + 24);

  v170 = sub_222A8F85C(v169);
  v171 = v299;
  v172 = v296;
  v117 = v268;
  if (v170)
  {
    v173 = v170;
    [v116 addCandidatesObject_];
    [v173 score];
    if (v269)
    {
      goto LABEL_97;
    }

    if (v123 < v174)
    {
      [v173 score];
      if (v117)
      {
        [v117 setTopCandidateForUniversalRuntimeSuggestion_];
LABEL_97:
      }

      sub_222AC1FC0(v114, type metadata accessor for UniversalCandidate);
LABEL_104:
      v190 = v173;
      v191 = v190;
      if (v293)
      {
        v192 = v293;

        v193 = [v191 id];
        if (v193)
        {
          v194 = v284;
          v195 = v193;
          sub_222B01898();

          v196 = 0;
          v197 = v309;
        }

        else
        {
          v196 = 1;
          v197 = v309;
          v194 = v284;
        }

        v220 = v283;
        v221 = *v305;
        (*v305)(v194, v196, 1, v197);
        v222 = [v192 topCandidate];
        v316 = v191;
        v317 = v192;
        v314 = v167;
        v312 = v173;
        if (v222)
        {
          v223 = v222;
          v224 = [v222 id];

          if (v224)
          {
            v225 = v275;
            sub_222B01898();

            v226 = 0;
          }

          else
          {
            v226 = 1;
            v225 = v275;
          }

          v221(v225, v226, 1, v197);
          sub_222AB959C(v225, v220, &unk_27D01DA50, &unk_222B04E20);
        }

        else
        {
          v221(v220, 1, 1, v197);
        }

        v228 = *(v290 + 48);
        v229 = v289;
        sub_222A34E48(v194, v289, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34E48(v220, v229 + v228, &unk_27D01DA50, &unk_222B04E20);
        v230 = *(v300 + 48);
        if (v230(v229, 1, v197) == 1)
        {
          sub_222A34F20(v220, &unk_27D01DA50, &unk_222B04E20);
          v231 = v289;
          sub_222A34F20(v194, &unk_27D01DA50, &unk_222B04E20);
          v232 = &off_2784BA000;
          if (v230(v231 + v228, 1, v197) == 1)
          {
            sub_222A34F20(v231, &unk_27D01DA50, &unk_222B04E20);
            v233 = v282;
            v234 = v317;
            goto LABEL_129;
          }

LABEL_127:
          sub_222A34F20(v231, &qword_27D01D6A8, &unk_222B08A00);
          v233 = v282;
          v234 = v317;
          goto LABEL_128;
        }

        v235 = v272;
        sub_222A34E48(v229, v272, &unk_27D01DA50, &unk_222B04E20);
        v232 = &off_2784BA000;
        if (v230(v229 + v228, 1, v197) == 1)
        {
          sub_222A34F20(v283, &unk_27D01DA50, &unk_222B04E20);
          v231 = v289;
          sub_222A34F20(v284, &unk_27D01DA50, &unk_222B04E20);
          (*(v300 + 8))(v235, v197);
          goto LABEL_127;
        }

        v242 = v300;
        v243 = v229 + v228;
        v244 = v274;
        (*(v300 + 32))(v274, v243, v197);
        sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        LODWORD(v311) = sub_222B02338();
        v245 = *(v242 + 8);
        v245(v244, v309);
        sub_222A34F20(v283, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34F20(v284, &unk_27D01DA50, &unk_222B04E20);
        v245(v235, v309);
        v172 = v296;
        v197 = v309;
        sub_222A34F20(v229, &unk_27D01DA50, &unk_222B04E20);
        v233 = v282;
        v234 = v317;
        if ((v311 & 1) == 0)
        {
LABEL_128:
          v236 = v316;
          [v234 setTopCandidate_];
          [v236 setTopCandidateForUniversalRuntimeSuggestion_];
          [v234 setNeedsDisambiguation_];
        }

LABEL_129:
        (*(v300 + 16))(v172, v301, v197);
        v221(v172, 0, 1, v197);
        v237 = [v234 v232[337]];
        if (v237)
        {
          v238 = v237;
          v239 = [v237 id];

          if (v239)
          {
            v240 = v276;
            sub_222B01898();

            v241 = 0;
          }

          else
          {
            v241 = 1;
            v240 = v276;
          }

          v221(v240, v241, 1, v197);
          sub_222AB959C(v240, v233, &unk_27D01DA50, &unk_222B04E20);
        }

        else
        {
          v221(v233, 1, 1, v197);
        }

        v246 = *(v290 + 48);
        v247 = v278;
        sub_222A34E48(v172, v278, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34E48(v233, v247 + v246, &unk_27D01DA50, &unk_222B04E20);
        if (v230(v247, 1, v197) == 1)
        {
          sub_222A34F20(v233, &unk_27D01DA50, &unk_222B04E20);
          sub_222A34F20(v172, &unk_27D01DA50, &unk_222B04E20);
          v248 = v230(v247 + v246, 1, v197);
          v116 = v306;
          v167 = v314;
          v208 = v312;
          if (v248 == 1)
          {
            sub_222A34F20(v247, &unk_27D01DA50, &unk_222B04E20);
            v249 = v299;
            v250 = v316;
            v251 = v317;
            goto LABEL_145;
          }

LABEL_142:
          sub_222A34F20(v247, &qword_27D01D6A8, &unk_222B08A00);
          v249 = v299;
          v250 = v316;
          v251 = v317;
          goto LABEL_143;
        }

        v252 = v273;
        sub_222A34E48(v247, v273, &unk_27D01DA50, &unk_222B04E20);
        if (v230(v247 + v246, 1, v197) == 1)
        {
          sub_222A34F20(v282, &unk_27D01DA50, &unk_222B04E20);
          sub_222A34F20(v172, &unk_27D01DA50, &unk_222B04E20);
          (*(v300 + 8))(v252, v197);
          v116 = v306;
          v167 = v314;
          v208 = v312;
          goto LABEL_142;
        }

        v253 = v300;
        v254 = v274;
        (*(v300 + 32))(v274, v247 + v246, v197);
        sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        LODWORD(v311) = sub_222B02338();
        v255 = v247;
        v256 = v197;
        v257 = *(v253 + 8);
        v257(v254, v256);
        sub_222A34F20(v282, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34F20(v172, &unk_27D01DA50, &unk_222B04E20);
        v257(v252, v256);
        sub_222A34F20(v255, &unk_27D01DA50, &unk_222B04E20);
        v249 = v299;
        v116 = v306;
        v167 = v314;
        v208 = v312;
        v250 = v316;
        v251 = v317;
        if (v311)
        {
LABEL_145:
          v201 = [v251 needsDisambiguation];

          v171 = v249;
        }

        else
        {
LABEL_143:

          v201 = 1;
          v171 = v249;
        }
      }

      else
      {
        v198 = v190;
        v199 = v298;
        sub_222B018C8();
        v200 = v297;
        v201 = 1;
        v265(v199 + *(v297 + 24), 1, 1, v168);
        v202 = (v199 + *(v200 + 20));
        v203 = v173;
        v204 = v295;
        *v202 = v270;
        v202[1] = v204;
        *(v199 + *(v200 + 28)) = 1;
        v205 = *(v288 + 24);
        type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
        v206 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
        v207 = sub_222B01878();
        [v206 setId_];

        v208 = v203;
        v209 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
        [v206 setQueryEntityName_];

        [v206 setTopCandidate_];
        [v198 setTopCandidateForUniversalRuntimeSuggestion_];
        [v206 setNeedsDisambiguation_];

        v171 = v299;
        sub_222AC1FC0(v199, type metadata accessor for UniversalRuntimeSuggestion);
      }

LABEL_148:
      v258 = sub_222AB9F20();

      if (v258)
      {
        v259 = v280;
        sub_222AC253C(v301, &v280[*(v292 + 24)], type metadata accessor for UniversalCandidate);
        *(v259 + 8) = v291;
        *v259 = v201;
        v260 = v279;
        sub_222AB959C(v303, v279, &qword_27D01D150, &qword_222B06930);
        (v167)(v260, 1, v313);

        sub_222A34F20(v260, &qword_27D01D150, &qword_222B06930);
        sub_222AC253C(v259, v171, type metadata accessor for UniversalSuggestionCandidate);
        type metadata accessor for UniversalSuggestionCandidateDonationResult(0);
        return swift_storeEnumTagMultiPayload();
      }

      v227 = v301;
LABEL_151:
      sub_222AC1FC0(v227, type metadata accessor for UniversalCandidate);
      sub_222A34F20(v303, &qword_27D01D150, &qword_222B06930);
      goto LABEL_152;
    }

    [v173 setTopCandidateForUniversalRuntimeSuggestion_];

    sub_222AC1FC0(v114, type metadata accessor for UniversalCandidate);
    if (!v117)
    {
LABEL_147:

      v208 = 0;
      v201 = 1;
      goto LABEL_148;
    }

LABEL_103:
    v173 = v117;
    goto LABEL_104;
  }

  if (qword_27D01C548 != -1)
  {
    goto LABEL_157;
  }

LABEL_111:
  v210 = sub_222B02148();
  __swift_project_value_buffer(v210, qword_27D01DE58);
  v211 = v116;
  v212 = sub_222B02128();
  v213 = sub_222B028E8();

  if (!os_log_type_enabled(v212, v213))
  {

    sub_222AC1FC0(v114, type metadata accessor for UniversalCandidate);
    v227 = v301;
    goto LABEL_151;
  }

  v214 = swift_slowAlloc();
  v215 = swift_slowAlloc();
  *&v320 = v215;
  *v214 = 136315138;
  v216 = [v211 id];
  if (v216)
  {
    v217 = v271;
    v218 = v216;
    sub_222B01898();

    v219 = 0;
  }

  else
  {
    v219 = 1;
    v217 = v271;
  }

  (*v305)(v217, v219, 1, v309);
  v261 = sub_222B023D8();
  v263 = sub_222A230FC(v261, v262, &v320);

  *(v214 + 4) = v263;
  _os_log_impl(&dword_222A1C000, v212, v213, "UniversalSuggestionsCoreData: Could not add candidate to suggestion record with ID %s", v214, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v215);
  MEMORY[0x223DC7E30](v215, -1, -1);
  MEMORY[0x223DC7E30](v214, -1, -1);

  sub_222AC1FC0(v285, type metadata accessor for UniversalCandidate);
  sub_222AC1FC0(v301, type metadata accessor for UniversalCandidate);
  sub_222A34F20(v303, &qword_27D01D150, &qword_222B06930);
LABEL_152:
  type metadata accessor for UniversalSuggestionCandidateDonationResult(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_222ABFA7C(uint64_t a1, unsigned __int8 *a2)
{
  v179 = sub_222B01848();
  v184 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_222B018D8();
  v183 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v174 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6A8, &unk_222B08A00);
  v7 = MEMORY[0x28223BE20](v182);
  v165 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v185 = &v152 - v10;
  MEMORY[0x28223BE20](v9);
  v187 = &v152 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v164 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v152 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v167 = &v152 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v166 = &v152 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v173 = &v152 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v181 = &v152 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v180 = &v152 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v152 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v152 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v152 - v34;
  v36 = sub_222B01638();
  v186 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a2;
  v40 = sub_222ABC074(a1);
  if (!v40)
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v45 = sub_222B02148();
    __swift_project_value_buffer(v45, qword_27D01DE58);
    v46 = sub_222B02128();
    v47 = sub_222B028D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_222A1C000, v46, v47, "UniversalSuggestionsCoreData: Unable to find candidate record. Skipping feedback update.", v48, 2u);
      MEMORY[0x223DC7E30](v48, -1, -1);
    }

    goto LABEL_34;
  }

  v41 = v40;
  v42 = *(type metadata accessor for UniversalSuggestionSurfaced(0) + 20);
  v177 = a1;
  v43 = a1 + v42;
  if ((*(v43 + 8) & 1) == 0)
  {
    [v41 setLastSurfaced_];
  }

  if (v39 == 2)
  {
    v44 = sub_222AB9F20();

    return v44 & 1;
  }

  v49 = [v41 candidateForUniversalSuggestion];
  if (!v49)
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v65 = sub_222B02148();
    __swift_project_value_buffer(v65, qword_27D01DE58);
    v66 = sub_222B02128();
    v67 = sub_222B028D8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_222A1C000, v66, v67, "UniversalSuggestionsCoreData: Unable to find corresponding suggestion record. Skipping feedback update.", v68, 2u);
      MEMORY[0x223DC7E30](v68, -1, -1);
    }

    goto LABEL_34;
  }

  v153 = v17;
  v159 = v49;
  v50 = [v49 queryEntityName];
  if (!v50 || (v175 = v39, v51 = v50, v52 = sub_222B02388(), v157 = v2, v53 = v52, v156 = v41, v55 = v54, v51, v56 = v175, v57 = sub_222ABC8BC(v53, v55), v41 = v156, , !v57))
  {
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v61 = sub_222B02148();
    __swift_project_value_buffer(v61, qword_27D01DE58);
    v62 = sub_222B02128();
    v63 = sub_222B028D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_222A1C000, v62, v63, "UniversalSuggestionsCoreData: Unable to find runtime suggestion record to update. Skipping feedback update.", v64, 2u);
      MEMORY[0x223DC7E30](v64, -1, -1);
    }

LABEL_34:
    v44 = 0;
    return v44 & 1;
  }

  v158 = v30;
  v58 = [v159 candidates];
  v59 = MEMORY[0x277D84F90];
  v152 = v57;
  if (v58)
  {
    v60 = v58;
    v193 = MEMORY[0x277D84F90];
    sub_222B028B8();
    sub_222AC248C(&unk_280CB8318, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    sub_222B02B48();
    if (v192)
    {
      do
      {
        while (1)
        {
          sub_222A250AC(&v191, &v189);
          type metadata accessor for UniversalCandidateCoreDataRecord();
          if ((swift_dynamicCast() & 1) == 0 || !v190)
          {
            break;
          }

          MEMORY[0x223DC6810]();
          if (*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v193 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
          v59 = v193;
          sub_222B02B48();
          v41 = v156;
          if (!v192)
          {
            goto LABEL_37;
          }
        }

        sub_222B02B48();
      }

      while (v192);
      v41 = v156;
    }

LABEL_37:

    v186[1](v38, v36);
    v57 = v152;
    v56 = v175;
  }

  if (v59 >> 62)
  {
    result = sub_222B02DC8();
    if (result)
    {
      goto LABEL_40;
    }

LABEL_110:

    v71 = 0;
    goto LABEL_111;
  }

  result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_110;
  }

LABEL_40:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v70 = result;
  v71 = 0;
  v72 = 0;
  v176 = v59 & 0xC000000000000001;
  v172 = (v183 + 56);
  v168 = (v183 + 16);
  v171 = (v183 + 48);
  v155 = (v183 + 32);
  v160 = (v183 + 8);
  v161 = v184 + 1;
  LODWORD(v73) = 1;
  v74 = 0.0;
  v75 = &off_2784BA000;
  v163 = v33;
  v162 = v35;
  v170 = v59;
  v169 = result;
  do
  {
    if (!v176)
    {
      v76 = *(v59 + 8 * v72 + 32);
      if (!v56)
      {
        goto LABEL_51;
      }

LABEL_47:
      if (v56 != 1)
      {
        goto LABEL_81;
      }

      v184 = v71;
      v186 = v76;
      v77 = [v76 id];
      LODWORD(v183) = v73;
      if (v77)
      {
        v78 = v180;
        v79 = v77;
        sub_222B01898();

        v80 = 0;
      }

      else
      {
        v80 = 1;
        v78 = v180;
      }

      v97 = *v172;
      v98 = v188;
      (*v172)(v78, v80, 1, v188);
      v99 = v181;
      (*v168)();
      v97(v99, 0, 1, v98);
      v100 = *(v182 + 48);
      v101 = v185;
      sub_222A34E48(v78, v185, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34E48(v99, v101 + v100, &unk_27D01DA50, &unk_222B04E20);
      v102 = v78;
      v103 = *v171;
      if ((*v171)(v101, 1, v98) == 1)
      {
        sub_222A34F20(v99, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34F20(v102, &unk_27D01DA50, &unk_222B04E20);
        v104 = v103(v185 + v100, 1, v188);
        v56 = v175;
        v71 = v184;
        v59 = v170;
        v70 = v169;
        if (v104 == 1)
        {
          sub_222A34F20(v185, &unk_27D01DA50, &unk_222B04E20);
          v33 = v163;
          v35 = v162;
          v75 = &off_2784BA000;
          LOBYTE(v73) = v183;
          v76 = v186;
          goto LABEL_78;
        }
      }

      else
      {
        v105 = v185;
        v106 = v173;
        sub_222A34E48(v185, v173, &unk_27D01DA50, &unk_222B04E20);
        v107 = v103(v105 + v100, 1, v188);
        v71 = v184;
        if (v107 != 1)
        {
          v118 = v174;
          v119 = v188;
          (*v155)(v174, v105 + v100, v188);
          sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v154 = sub_222B02338();
          v120 = *v160;
          (*v160)(v118, v119);
          sub_222A34F20(v181, &unk_27D01DA50, &unk_222B04E20);
          sub_222A34F20(v180, &unk_27D01DA50, &unk_222B04E20);
          v120(v106, v119);
          sub_222A34F20(v105, &unk_27D01DA50, &unk_222B04E20);
          v56 = v175;
          v33 = v163;
          v35 = v162;
          v59 = v170;
          v70 = v169;
          v75 = &off_2784BA000;
          LOBYTE(v73) = v183;
          v76 = v186;
          if (v154)
          {
LABEL_78:
            [v76 v75[327]];
            v110 = v121 + 0.2;
            if (v110 > 1.0)
            {
              v110 = 1.0;
            }

LABEL_80:
            [v76 setScore_];
            v122 = v178;
            sub_222B01828();
            sub_222B01818();
            v124 = v123;
            v125 = v122;
            v76 = v186;
            (*v161)(v125, v179);
            [v76 setLastUpdated_];
            goto LABEL_81;
          }

LABEL_67:
          if (qword_27D01C538 != -1)
          {
            swift_once();
          }

          v108 = *&qword_27D01DE50;
          [v76 score];
          v110 = v109 + -0.2;
LABEL_74:
          if (v108 > v110)
          {
            v110 = v108;
          }

          goto LABEL_80;
        }

        sub_222A34F20(v181, &unk_27D01DA50, &unk_222B04E20);
        sub_222A34F20(v180, &unk_27D01DA50, &unk_222B04E20);
        (*v160)(v106, v188);
        v56 = v175;
        v59 = v170;
        v70 = v169;
      }

      sub_222A34F20(v185, &qword_27D01D6A8, &unk_222B08A00);
      v33 = v163;
      v35 = v162;
      v75 = &off_2784BA000;
      LOBYTE(v73) = v183;
      v76 = v186;
      goto LABEL_67;
    }

    v76 = MEMORY[0x223DC6F00](v72, v59);
    if (v56)
    {
      goto LABEL_47;
    }

LABEL_51:
    v184 = v71;
    v186 = v76;
    v81 = [v76 id];
    LODWORD(v183) = v73;
    if (v81)
    {
      v82 = v81;
      sub_222B01898();

      v83 = 0;
    }

    else
    {
      v83 = 1;
    }

    v84 = v177;
    v85 = *v172;
    v86 = v188;
    (*v172)(v35, v83, 1, v188);
    (*v168)(v33, v84, v86);
    v85(v33, 0, 1, v86);
    v87 = *(v182 + 48);
    v88 = v35;
    v89 = v35;
    v90 = v33;
    v91 = v187;
    sub_222A34E48(v88, v187, &unk_27D01DA50, &unk_222B04E20);
    sub_222A34E48(v90, v91 + v87, &unk_27D01DA50, &unk_222B04E20);
    v92 = *v171;
    if ((*v171)(v91, 1, v86) == 1)
    {
      sub_222A34F20(v90, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34F20(v89, &unk_27D01DA50, &unk_222B04E20);
      v93 = v92(v187 + v87, 1, v86);
      v71 = v184;
      v33 = v90;
      v35 = v89;
      v59 = v170;
      v70 = v169;
      if (v93 != 1)
      {
        goto LABEL_59;
      }

      sub_222A34F20(v187, &unk_27D01DA50, &unk_222B04E20);
      v56 = v175;
      v75 = &off_2784BA000;
      LOBYTE(v73) = v183;
      v76 = v186;
LABEL_71:
      if (qword_27D01C538 != -1)
      {
        swift_once();
      }

      v108 = *&qword_27D01DE50;
      [v76 v75[327]];
      v110 = v117 + -1.0;
      goto LABEL_74;
    }

    v94 = v187;
    v95 = v158;
    sub_222A34E48(v187, v158, &unk_27D01DA50, &unk_222B04E20);
    v96 = v92(v94 + v87, 1, v86);
    v71 = v184;
    if (v96 == 1)
    {
      v33 = v163;
      sub_222A34F20(v163, &unk_27D01DA50, &unk_222B04E20);
      v35 = v162;
      sub_222A34F20(v162, &unk_27D01DA50, &unk_222B04E20);
      (*v160)(v95, v188);
      v59 = v170;
      v70 = v169;
LABEL_59:
      sub_222A34F20(v187, &qword_27D01D6A8, &unk_222B08A00);
      v56 = v175;
      v75 = &off_2784BA000;
      LOBYTE(v73) = v183;
      v76 = v186;
      goto LABEL_81;
    }

    v111 = v188;
    v73 = v95;
    v112 = v174;
    (*v155)(v174, v187 + v87, v188);
    sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v154 = sub_222B02338();
    v113 = *v160;
    (*v160)(v112, v111);
    v114 = v163;
    sub_222A34F20(v163, &unk_27D01DA50, &unk_222B04E20);
    v115 = v111;
    v116 = v162;
    sub_222A34F20(v162, &unk_27D01DA50, &unk_222B04E20);
    v113(v73, v115);
    v33 = v114;
    v35 = v116;
    sub_222A34F20(v187, &unk_27D01DA50, &unk_222B04E20);
    v56 = v175;
    v59 = v170;
    v70 = v169;
    v75 = &off_2784BA000;
    LOBYTE(v73) = v183;
    v76 = v186;
    if (v154)
    {
      goto LABEL_71;
    }

LABEL_81:
    [v76 v75[327]];
    v127 = v126;
    if (v73)
    {

      v74 = v127;
LABEL_43:
      v71 = v76;
      goto LABEL_44;
    }

    if (v74 < v126)
    {
      [v76 v75[327]];
      v74 = v128;
      if (v71)
      {
        [v71 setTopCandidateForUniversalRuntimeSuggestion_];
      }

      goto LABEL_43;
    }

    [v76 setTopCandidateForUniversalRuntimeSuggestion_];

LABEL_44:
    LODWORD(v73) = 0;
    ++v72;
  }

  while (v70 != v72);

  if (v71)
  {
    v129 = v71;
    v130 = [v129 id];
    v131 = v152;
    v184 = v71;
    if (v130)
    {
      v132 = v166;
      v133 = v130;
      sub_222B01898();

      v134 = 0;
      v135 = v165;
    }

    else
    {
      v134 = 1;
      v135 = v165;
      v132 = v166;
    }

    v136 = v167;
    v137 = v153;
    v138 = *v172;
    (*v172)(v132, v134, 1, v188);
    v139 = [v131 topCandidate];
    if (v139)
    {
      v140 = v139;
      v141 = [v139 id];

      if (v141)
      {
        sub_222B01898();

        v142 = 0;
      }

      else
      {
        v142 = 1;
      }

      v138(v137, v142, 1, v188);
      v136 = v167;
      sub_222AB959C(v137, v167, &unk_27D01DA50, &unk_222B04E20);
    }

    else
    {
      v138(v136, 1, 1, v188);
    }

    v143 = *(v182 + 48);
    sub_222A34E48(v132, v135, &unk_27D01DA50, &unk_222B04E20);
    sub_222A34E48(v136, v135 + v143, &unk_27D01DA50, &unk_222B04E20);
    v144 = v132;
    v145 = *v171;
    v146 = (*v171)(v135, 1, v188);
    v41 = v156;
    if (v146 == 1)
    {
      sub_222A34F20(v136, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34F20(v144, &unk_27D01DA50, &unk_222B04E20);
      if (v145(v135 + v143, 1, v188) == 1)
      {
        sub_222A34F20(v135, &unk_27D01DA50, &unk_222B04E20);
        v57 = v152;
        v71 = v184;
        if (!v175)
        {
          goto LABEL_104;
        }

LABEL_107:
        [v57 setNeedsDisambiguation_];
        goto LABEL_108;
      }

LABEL_103:
      sub_222A34F20(v135, &qword_27D01D6A8, &unk_222B08A00);
      v57 = v152;
      v71 = v184;
      goto LABEL_104;
    }

    v147 = v164;
    sub_222A34E48(v135, v164, &unk_27D01DA50, &unk_222B04E20);
    if (v145(v135 + v143, 1, v188) == 1)
    {
      sub_222A34F20(v167, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34F20(v166, &unk_27D01DA50, &unk_222B04E20);
      (*v160)(v147, v188);
      goto LABEL_103;
    }

    v148 = v174;
    v149 = v188;
    (*v155)(v174, v135 + v143, v188);
    sub_222AC248C(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v150 = sub_222B02338();
    v151 = *v160;
    (*v160)(v148, v149);
    sub_222A34F20(v167, &unk_27D01DA50, &unk_222B04E20);
    sub_222A34F20(v166, &unk_27D01DA50, &unk_222B04E20);
    v151(v147, v149);
    sub_222A34F20(v135, &unk_27D01DA50, &unk_222B04E20);
    v57 = v152;
    v71 = v184;
    if (v175 && (v150 & 1) != 0)
    {
      goto LABEL_107;
    }

LABEL_104:
    [v57 setTopCandidate_];
    [v129 setTopCandidateForUniversalRuntimeSuggestion_];
    [v57 setNeedsDisambiguation_];
LABEL_108:
  }

  else
  {
    v41 = v156;
    v57 = v152;
  }

LABEL_111:
  v44 = sub_222AB9F20();

  return v44 & 1;
}

uint64_t sub_222AC1338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UniversalCandidate(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DE88, &unk_222B0C150);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for UniversalRuntimeSuggestion(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v44 = v2;
  v45 = v17;
  v42 = v17;
  sub_222B02A58();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222A34F20(v12, &qword_27D01DE88, &unk_222B0C150);
    v18 = type metadata accessor for UniversalSuggestionCandidate(0);
    v19 = *(*(v18 - 8) + 56);
    v20 = v43;
  }

  else
  {
    v21 = v43;
    sub_222AC253C(v12, v16, type metadata accessor for UniversalRuntimeSuggestion);
    sub_222A34E48(&v16[*(v13 + 24)], v6, &qword_27D01D150, &qword_222B06930);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v33 = v6;
      v34 = v41;
      sub_222AC253C(v33, v41, type metadata accessor for UniversalCandidate);
      v35 = type metadata accessor for UniversalSuggestionCandidate(0);
      v36 = v21;
      sub_222AC253C(v34, v21 + *(v35 + 24), type metadata accessor for UniversalCandidate);
      v37 = v16[*(v13 + 28)];
      v38 = v42;

      sub_222AC1FC0(v16, type metadata accessor for UniversalRuntimeSuggestion);
      *(v36 + 8) = v38;
      *v36 = v37;
      v19 = *(*(v35 - 8) + 56);
      v20 = v36;
      v32 = 0;
      v18 = v35;
      return v19(v20, v32, 1, v18);
    }

    sub_222A34F20(v6, &qword_27D01D150, &qword_222B06930);
    if (qword_27D01C548 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_27D01DE58);
    v23 = v42;

    v24 = sub_222B02128();
    v25 = sub_222B028D8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = v27;
      *v26 = 136315138;
      v46 = v23;
      v46 = sub_222A67AA8(v23);
      v47 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D690, &qword_222B0F0C0);
      v29 = sub_222B023D8();
      v31 = sub_222A230FC(v29, v30, &v48);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_222A1C000, v24, v25, "UniversalSuggestionsCoreData: No top suggestion candidate for the specified entity with name %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DC7E30](v27, -1, -1);
      MEMORY[0x223DC7E30](v26, -1, -1);
    }

    sub_222AC1FC0(v16, type metadata accessor for UniversalRuntimeSuggestion);
    v18 = type metadata accessor for UniversalSuggestionCandidate(0);
    v19 = *(*(v18 - 8) + 56);
    v20 = v21;
  }

  v32 = 1;
  return v19(v20, v32, 1, v18);
}