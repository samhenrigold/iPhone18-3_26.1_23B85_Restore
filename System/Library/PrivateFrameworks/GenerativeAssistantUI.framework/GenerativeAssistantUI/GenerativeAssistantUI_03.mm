uint64_t sub_24FEA3954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDD054();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v51 - v7;
  v8 = sub_24FEDD4A4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_24FEDD494();
  sub_24FEDD484();
  v9 = type metadata accessor for FileAttachmentDetailsView(0);
  sub_24FEDD474();
  sub_24FEDD484();
  sub_24FEDD4C4();
  v10 = sub_24FEDD9D4();
  v12 = v11;
  v14 = v13;
  sub_24FEDD8B4();
  v15 = sub_24FEDD994();
  v58 = v16;
  v59 = v15;
  v53 = v17;
  v60 = v18;

  sub_24FE56B94(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  sub_24FEDD494();
  sub_24FEDD484();
  v19 = *(a1 + *(v9 + 24));
  v20 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v20 setCountStyle_];
  [v20 setIncludesUnit_];
  v21 = [v20 stringFromByteCount_];
  sub_24FEDE1F4();

  sub_24FEDD474();

  sub_24FEDD484();
  sub_24FEDD474();
  sub_24FEDD484();
  sub_24FEDD4C4();
  v22 = sub_24FEDD9D4();
  v24 = v23;
  v26 = v25;
  sub_24FEDD7C4();
  v27 = sub_24FEDD994();
  v29 = v28;
  v31 = v30;
  v51[1] = v32;

  sub_24FE56B94(v22, v24, v26 & 1);

  v33 = v52;
  sub_24FE9A750(v52);
  v35 = v54;
  v34 = v55;
  v36 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CDF3C0], v56);
  LOBYTE(v22) = sub_24FEDD044();
  v37 = *(v34 + 8);
  v37(v35, v36);
  v37(v33, v36);
  if (v22)
  {
    sub_24FEDDC24();
  }

  else
  {
    v38 = [objc_opt_self() darkGrayColor];
    sub_24FEDDC94();
  }

  v39 = sub_24FEDD964();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_24FE56B94(v27, v29, v31 & 1);

  v46 = v53 & 1;
  v64 = v53 & 1;
  v63 = v53 & 1;
  v62 = 0;
  v61 = v43 & 1;
  v48 = v58;
  v47 = v59;
  *a2 = v59;
  *(a2 + 8) = v48;
  *(a2 + 16) = v46;
  v49 = KeyPath;
  *(a2 + 24) = v60;
  *(a2 + 32) = v49;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v39;
  *(a2 + 64) = v41;
  *(a2 + 72) = v43 & 1;
  *(a2 + 80) = v45;
  sub_24FE629DC(v47, v48, v46);

  sub_24FE629DC(v39, v41, v43 & 1);

  sub_24FE56B94(v39, v41, v43 & 1);

  sub_24FE56B94(v47, v48, v64);
}

uint64_t sub_24FEA3EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24FEDDCD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6848, &qword_24FEE6000);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v36[-v11];
  v13 = *(sub_24FEDD284() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_24FEDD4E4();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #8.0 }

  *v12 = _Q0;
  sub_24FEDDC24();
  v21 = sub_24FEDDC64();

  *&v12[*(v7 + 44)] = v21;
  sub_24FEDDCB4();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v22 = sub_24FEDDD04();

  (*(v3 + 8))(v5, v2);
  v23 = sub_24FEDDC54();
  LOBYTE(v5) = sub_24FEDD744();
  sub_24FEDD014();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(v44[0]) = 1;
  LOBYTE(v40[0]) = 0;
  sub_24FE58B14(v12, v9, &qword_27F3A6848, &qword_24FEE6000);
  sub_24FE58B14(v9, a1, &qword_27F3A6848, &qword_24FEE6000);
  v32 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6850, &qword_24FEE6008) + 48));
  v40[0] = v22;
  v40[1] = 0;
  LOWORD(v41) = 1;
  *(&v41 + 2) = v38;
  WORD3(v41) = v39;
  *(&v41 + 1) = v23;
  LOBYTE(v42) = v5;
  *(&v42 + 1) = *v37;
  DWORD1(v42) = *&v37[3];
  *(&v42 + 1) = v25;
  *v43 = v27;
  *&v43[8] = v29;
  *&v43[16] = v31;
  v43[24] = 0;
  v33 = v41;
  *(v32 + 57) = *&v43[9];
  v34 = *v43;
  v32[2] = v42;
  v32[3] = v34;
  *v32 = v22;
  v32[1] = v33;
  sub_24FE58B14(v40, v44, &qword_27F3A6858, &qword_24FEE6010);
  sub_24FE58B7C(v12, &qword_27F3A6848, &qword_24FEE6000);
  v44[0] = v22;
  v44[1] = 0;
  v45 = 1;
  v46 = v38;
  v47 = v39;
  v48 = v23;
  v49 = v5;
  *v50 = *v37;
  *&v50[3] = *&v37[3];
  v51 = v25;
  v52 = v27;
  v53 = v29;
  v54 = v31;
  v55 = 0;
  sub_24FE58B7C(v44, &qword_27F3A6858, &qword_24FEE6010);
  return sub_24FE58B7C(v9, &qword_27F3A6848, &qword_24FEE6000);
}

uint64_t sub_24FEA42BC@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_24FEDDF34();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6840, &qword_24FEE5FF8);
  return sub_24FEA3EA8(a2 + *(v4 + 44));
}

uint64_t sub_24FEA4304(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24FEA4388()
{
  result = qword_27F3A6878;
  if (!qword_27F3A6878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6880, &qword_24FEE6028);
    sub_24FE58928(&qword_27F3A6888, &qword_27F3A6890, &qword_24FEE6030, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6878);
  }

  return result;
}

uint64_t sub_24FEA4440@<X0>(uint64_t a1@<X8>)
{
  result = sub_24FEDD3B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24FEA4474@<X0>(uint64_t a1@<X8>)
{
  result = sub_24FEDD3B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_24FEA4508()
{
  result = qword_27F3A68A0;
  if (!qword_27F3A68A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6898, &qword_24FEE6070);
    sub_24FEA4594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68A0);
  }

  return result;
}

unint64_t sub_24FEA4594()
{
  result = qword_27F3A68A8;
  if (!qword_27F3A68A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A68B0, &qword_24FEE6078);
    sub_24FEA4618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68A8);
  }

  return result;
}

unint64_t sub_24FEA4618()
{
  result = qword_27F3A68B8;
  if (!qword_27F3A68B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A68C0, &qword_24FEE6080);
    sub_24FEA46A4();
    sub_24FEA47E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68B8);
  }

  return result;
}

unint64_t sub_24FEA46A4()
{
  result = qword_27F3A68C8;
  if (!qword_27F3A68C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A68D0, &qword_24FEE6088);
    sub_24FEA475C();
    sub_24FE58928(&qword_27F3A68E8, &qword_27F3A68F0, &qword_24FEE6098, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68C8);
  }

  return result;
}

unint64_t sub_24FEA475C()
{
  result = qword_27F3A68D8;
  if (!qword_27F3A68D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A68E0, &qword_24FEE6090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68D8);
  }

  return result;
}

unint64_t sub_24FEA47E0()
{
  result = qword_27F3A68F8;
  if (!qword_27F3A68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A68F8);
  }

  return result;
}

uint64_t sub_24FEA4834()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24FEA4884()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24FE7DF78;

  return sub_24FEA31C4(v4, v2, v3, v5, v6, v7);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for DocumentFileView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24FEDC9E4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  v7 = sub_24FEDCE94();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);

  v9 = v0 + v3 + v1[10];

  v10 = type metadata accessor for ShareSheetMetadata(0);
  v8(v9 + *(v10 + 24), v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FEA4AF0(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentFileView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24FEA2184(a1, v4);
}

unint64_t sub_24FEA4B60()
{
  result = qword_27F3A6928;
  if (!qword_27F3A6928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6848, &qword_24FEE6000);
    sub_24FEA5038(&qword_27F3A6100, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6928);
  }

  return result;
}

id sub_24FEA4C48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6948, &qword_24FEE6140);
  sub_24FEDDD34();
  sub_24FEDCDF4();
  v2 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v3 = sub_24FEDE1C4();

  v4 = [v2 initWithType_];

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v9}];
  v11 = [v6 imageForDescriptor_];

  if (!v11)
  {
    v13 = sub_24FEDCE94();
    (*(*(v13 - 8) + 8))(a1, v13);

    return v19;
  }

  if ([v11 placeholder])
  {
    v12 = 0;
LABEL_7:
    v16 = v12;
    v17 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6908, &qword_24FEE60C8);
    sub_24FEDDD54();

    v18 = sub_24FEDCE94();
    (*(*(v18 - 8) + 8))(a1, v18);

    return v19;
  }

  result = [v11 CGImage];
  if (result)
  {
    v15 = result;
    v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24FEA4F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FEA4F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FEA4FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24FEA5038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FEA50C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6868, &qword_24FEE6020);
  sub_24FEA4304(&qword_27F3A6870, &qword_27F3A6868, &qword_24FEE6020, sub_24FEA4388);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FEA515C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5C20, &unk_24FEE3E10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6898, &qword_24FEE6070);
  sub_24FEA4508();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_24FEA5308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FileQuickLookPreview.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24FEA5378(uint64_t a1)
{
  result = sub_24FEDC9E4();
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

uint64_t sub_24FEA541C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FEA549C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_24FEA552C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6A00, &unk_24FEE6260);
  sub_24FEDD704();
  [v0 setDataSource_];

  return v0;
}

uint64_t sub_24FEA55AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEA57E8(v2, v5);
  v6 = type metadata accessor for FileQuickLookPreview.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_24FEA57E8(v5, v7 + OBJC_IVAR____TtCV16MarkdownDocument20FileQuickLookPreview11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_24FEA584C(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_24FEA5670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEA58A8(&qword_27F3A6A08, &unk_24FEE61E8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24FEA56F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEA58A8(&qword_27F3A6A08, &unk_24FEE61E8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24FEA5770(uint64_t a1)
{
  sub_24FEA58A8(&qword_27F3A6A08, &unk_24FEE61E8);
  sub_24FEDD6E4();
  __break(1u);
}

uint64_t sub_24FEA57E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileQuickLookPreview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEA584C(uint64_t a1)
{
  v2 = type metadata accessor for FileQuickLookPreview(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FEA58A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileQuickLookPreview(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GlossaryLinkAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static GlossaryLinkAttribute.name;

  return v0;
}

uint64_t static GlossaryLinkAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static GlossaryLinkAttribute.name = a1;
  *&static GlossaryLinkAttribute.name[8] = a2;
}

unint64_t sub_24FEA5A04()
{
  result = qword_27F3A6A20;
  if (!qword_27F3A6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A20);
  }

  return result;
}

uint64_t sub_24FEA5AB8()
{
  swift_beginAccess();
  v0 = *static GlossaryLinkAttribute.name;

  return v0;
}

unint64_t sub_24FEA5B1C()
{
  result = qword_27F3A6A28;
  if (!qword_27F3A6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A28);
  }

  return result;
}

uint64_t InlineElementGlossaryLinkParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - v6;
  v7 = sub_24FEDC9E4();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24FEDC8E4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6A30, &unk_24FEE63A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_24FEDC504();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v49 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  MEMORY[0x28223BE20](v48);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = sub_24FEDC774();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v53 = &v41 - v23;
  sub_24FEA5A04();
  sub_24FEDC6D4();
  if (!v55[1])
  {
    return (*(v21 + 16))(a2, v50, v20);
  }

  v43 = a2;
  (*(v21 + 16))(v53, v50, v20);
  sub_24FEDC6B4();
  sub_24FEDC4F4();
  if ((*(v51 + 48))(v12, 1, v52) == 1)
  {
    sub_24FE58B7C(v19, &qword_27F3A6160, &unk_24FEE4A80);

    sub_24FE58B7C(v12, &qword_27F3A6A30, &unk_24FEE63A8);
    return (*(v21 + 32))(v43, v53, v20);
  }

  else
  {
    v41 = v19;
    v50 = v20;
    v25 = v49;
    (*(v51 + 32))(v49, v12, v52);
    sub_24FEA63A0();
    sub_24FEDC6B4();
    sub_24FE8BF90();
    sub_24FEDC7A4();
    sub_24FE58B7C(v16, &qword_27F3A6160, &unk_24FEE4A80);
    sub_24FEDC7C4();
    v26 = sub_24FEDE524();
    v27 = [v26 string];

    sub_24FEDE1F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6A38, &qword_24FEE63B8);
    sub_24FEDC4A4();
    *(swift_allocObject() + 16) = xmmword_24FEE0830;
    sub_24FEDC474();

    v28 = v25;
    sub_24FEDC474();

    sub_24FEDC4C4();
    v29 = v44;
    sub_24FEDC4E4();
    v31 = v46;
    v30 = v47;
    if ((*(v46 + 48))(v29, 1, v47) == 1)
    {
      (*(v51 + 8))(v28, v52);
      sub_24FE58B7C(v41, &qword_27F3A6160, &unk_24FEE4A80);
      sub_24FE58B7C(v29, &qword_27F3A64B8, &qword_24FEE63A0);
      v32 = *(v21 + 32);
      v33 = v43;
      v34 = v53;
    }

    else
    {
      v35 = v45;
      (*(v31 + 32))(v45, v29, v30);
      v36 = v42;
      (*(v31 + 16))(v42, v35, v30);
      (*(v31 + 56))(v36, 0, 1, v30);
      v37 = v41;
      v38 = v53;
      v39 = sub_24FEDC794();
      sub_24FEA63EC();
      sub_24FEDC8F4();
      v39(v55, 0);
      v54 = sub_24FEDDC04();
      v40 = sub_24FEDC794();
      sub_24FEA6440();
      sub_24FEDC8F4();
      v40(v55, 0);
      (*(v31 + 8))(v45, v30);
      (*(v51 + 8))(v49, v52);
      sub_24FE58B7C(v37, &qword_27F3A6160, &unk_24FEE4A80);
      v32 = *(v21 + 32);
      v33 = v43;
      v34 = v38;
    }

    return v32(v33, v34, v50);
  }
}

unint64_t sub_24FEA63A0()
{
  result = qword_27F3A63D8;
  if (!qword_27F3A63D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A63D8);
  }

  return result;
}

unint64_t sub_24FEA63EC()
{
  result = qword_27F3A6A40;
  if (!qword_27F3A6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A40);
  }

  return result;
}

unint64_t sub_24FEA6440()
{
  result = qword_27F3A6A48;
  if (!qword_27F3A6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A48);
  }

  return result;
}

uint64_t DocumentElementHeadingParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v76 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  MEMORY[0x28223BE20](v79);
  v78 = &v65 - v2;
  v77 = sub_24FEDC8E4();
  v69 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24FEDC6C4();
  v83 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24FEDC774();
  v71 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v84 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_24FEDC884();
  v74 = *(v90 - 1);
  MEMORY[0x28223BE20](v90);
  v73 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v75 = sub_24FEDC854();
  v11 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v65 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v65 - v20;
  v22 = sub_24FEDC894();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE8B614();
  sub_24FEDC6D4();
  v26 = v22;
  v27 = v23;
  if ((*(v23 + 48))(v21, 1, v26) == 1)
  {
    sub_24FE58B7C(v21, &qword_27F3A6138, &unk_24FEE4A10);
LABEL_9:
    v38 = v76;
    v39 = type metadata accessor for DocumentHeadingElement(0);
    return (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  }

  v66 = v18;
  v65 = v5;
  v28 = *(v23 + 32);
  v68 = v26;
  v28(v25, v21, v26);
  v67 = v25;
  result = sub_24FEDC864();
  v30 = result;
  v31 = v75;
  v88 = *(result + 16);
  if (!v88)
  {
LABEL_8:

    (*(v27 + 8))(v67, v68);
    goto LABEL_9;
  }

  v32 = 0;
  v85 = (v11 + 16);
  v33 = (v74 + 88);
  LODWORD(v89) = *MEMORY[0x277CC8D30];
  v34 = (v74 + 8);
  v86 = (v11 + 8);
  v87 = v27;
  while (1)
  {
    if (v32 >= *(v30 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v11 + 16))(v13, v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v32, v31);
    sub_24FEDC834();
    v35 = *v33;
    v36 = v90;
    v37 = (*v33)(v10, v90);
    if (v37 == v89)
    {
      break;
    }

    ++v32;
    (*v34)(v10, v36);
    result = (*v86)(v13, v31);
    v27 = v87;
    if (v88 == v32)
    {
      goto LABEL_8;
    }
  }

  v40 = *(v11 + 32);
  v41 = v72;
  v40(v72, v13, v31);
  v42 = v66;
  v40(v66, v41, v31);
  v43 = v73;
  sub_24FEDC834();
  v44 = v90;
  v45 = v35(v43, v90);
  if (v45 != v89)
  {
    (*v86)(v42, v31);
    (*(v87 + 8))(v67, v68);
    (*v34)(v43, v44);
    goto LABEL_9;
  }

  (*(v74 + 96))(v43, v44);
  v88 = *v43;
  v46 = sub_24FEDC844();
  v48 = sub_24FED5384(v46, v47);
  sub_24FEDC764();
  v49 = v48[2];
  if (v49)
  {
    v50 = *(v83 + 16);
    v51 = *(v83 + 80);
    v85 = v48;
    v52 = v48 + ((v51 + 32) & ~v51);
    v89 = *(v83 + 72);
    v90 = v50;
    v53 = (v69 + 8);
    v83 += 16;
    v54 = (v83 - 8);
    v55 = v70;
    (v50)(v80, v52, v81);
    while (1)
    {
      sub_24FEA6FA4();
      sub_24FEDC6D4();
      v59 = v91;
      v60 = v92;
      v61 = v78;
      sub_24FEDC6B4();
      sub_24FE8BF90();
      sub_24FEDC7A4();
      sub_24FE58B7C(v61, &qword_27F3A6160, &unk_24FEE4A80);
      if ((v60 & 1) == 0 && v59 == 4 && v88 <= 3)
      {
        type metadata accessor for MarkdownFont();
        swift_initStaticObject();
        sub_24FE82000(v93);
        v62 = v93[4];
        v98 = v93[0];

        sub_24FE8A8D0(&v98);
        v97 = v93[1];
        sub_24FE8A8D0(&v97);
        v96 = v93[2];
        sub_24FE8A8D0(&v96);
        v95 = v93[3];
        sub_24FE8A8D0(&v95);

        v94 = v93[5];
        sub_24FE8A8D0(&v94);
        v91 = v62;
        sub_24FEA7000();
        sub_24FEDC8F4();
      }

      sub_24FEA709C(&unk_27F3A6150, MEMORY[0x277CC8D88], MEMORY[0x277CC8D80]);
      v56 = v77;
      sub_24FEDC694();
      (*v53)(v55, v56);
      v57 = v80;
      v58 = v81;
      (*v54)(v80, v81);
      v52 += v89;
      if (!--v49)
      {
        break;
      }

      (v90)(v57, v52, v58);
    }

    v42 = v66;
  }

  else
  {
  }

  v63 = v76;
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  (*v86)(v42, v75);
  (*(v87 + 8))(v67, v68);
  v64 = type metadata accessor for DocumentHeadingElement(0);
  (*(v71 + 32))(v63 + *(v64 + 20), v84, v65);
  *(v63 + *(v64 + 24)) = v88;
  return (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
}

unint64_t sub_24FEA6FA4()
{
  result = qword_27F3A6A50;
  if (!qword_27F3A6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A50);
  }

  return result;
}

unint64_t sub_24FEA7000()
{
  result = qword_27F3A6A58;
  if (!qword_27F3A6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6A58);
  }

  return result;
}

uint64_t sub_24FEA709C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DocumentHeadingElement.init(id:text:level:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24FEDCA64();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for DocumentHeadingElement(0);
  v10 = *(v9 + 20);
  v11 = sub_24FEDC774();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for DocumentHeadingElement(uint64_t a1)
{
  result = qword_27F3A6A90;
  if (!qword_27F3A6A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentHeadingElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentHeadingElement.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentHeadingElement(0) + 20);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentHeadingElement.makeView(textWrapOffset:)@<X0>(char *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = type metadata accessor for DocumentHeadingElement(0);
  v8 = *(v7 + 20);
  v9 = *(v3 + *(v7 + 24));
  v10 = type metadata accessor for DocumentHeadingView(0);
  v11 = *(v10 + 24);
  v12 = sub_24FEDC774();
  result = (*(*(v12 - 8) + 16))(&a1[v11], v3 + v8, v12);
  *a1 = v9;
  *(a1 + 1) = 0x4020000000000000;
  v14 = &a1[*(v10 + 28)];
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t DocumentHeadingElement.makeView()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for DocumentHeadingElement(0);
  v4 = *(v3 + 20);
  v5 = *(v1 + *(v3 + 24));
  v6 = type metadata accessor for DocumentHeadingView(0);
  v7 = *(v6 + 24);
  v8 = sub_24FEDC774();
  result = (*(*(v8 - 8) + 16))(&a1[v7], v1 + v4, v8);
  *a1 = v5;
  *(a1 + 1) = 0x4020000000000000;
  v10 = &a1[*(v6 + 28)];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

BOOL static DocumentHeadingElement.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) != 0 && (v4 = type metadata accessor for DocumentHeadingElement(0), (sub_24FEDC684()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24FEA7530@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = *(v2 + *(a1 + 24));
  v6 = type metadata accessor for DocumentHeadingView(0);
  v7 = *(v6 + 24);
  v8 = sub_24FEDC774();
  result = (*(*(v8 - 8) + 16))(&a2[v7], v2 + v4, v8);
  *a2 = v5;
  *(a2 + 1) = 0x4020000000000000;
  v10 = &a2[*(v6 + 28)];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

uint64_t sub_24FEA75C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(a1 + 20);
  v9 = *(v4 + *(a1 + 24));
  v10 = type metadata accessor for DocumentHeadingView(0);
  v11 = *(v10 + 24);
  v12 = sub_24FEDC774();
  result = (*(*(v12 - 8) + 16))(&a2[v11], v4 + v8, v12);
  *a2 = v9;
  *(a2 + 1) = 0x4020000000000000;
  v14 = &a2[*(v10 + 28)];
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t sub_24FEA7670(uint64_t a1)
{
  *(a1 + 8) = sub_24FEA773C(&qword_27F3A6A78, type metadata accessor for DocumentHeadingElement, &protocol conformance descriptor for DocumentHeadingElement);
  result = sub_24FEA773C(&unk_27F3A6A80, type metadata accessor for DocumentHeadingElement, &protocol conformance descriptor for DocumentHeadingElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEA773C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FEA7800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24FEDC774();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FEA7904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24FEDC774();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24FEA7A00(uint64_t a1)
{
  result = sub_24FEDCA64();
  if (v2 <= 0x3F)
  {
    result = sub_24FEDC774();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double DocumentHeadingView.topPadding(previousElement:)(uint64_t a1)
{
  v3 = type metadata accessor for DocumentCodeBlockElement(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE81980(a1, &v8);
  if (v9)
  {
    sub_24FE71ADC(&v8, v10);
    if (*v1 > 3)
    {
      sub_24FE71ADC(v10, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
      v7 = swift_dynamicCast();
      result = 10.0;
      if (v7)
      {
        sub_24FE819F0(v5);
        return 16.0;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
      return *(v1 + 8) + 10.0;
    }
  }

  else
  {
    sub_24FEA7BA4(&v8);
    return 0.0;
  }

  return result;
}

uint64_t sub_24FEA7BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DD8, &unk_24FEE42C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DocumentHeadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_24FEDC774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6AA0, &qword_24FEE6530);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v23 - v7;
  v9 = type metadata accessor for DocumentHeadingView(0);
  (*(v4 + 16))(v6, v2 + *(v9 + 24), v3);
  v10 = sub_24FEDD9E4();
  v12 = v11;
  v14 = v13;
  v24 = v15;
  v16 = *v2;
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(v33);
  if (v16 > 3)
  {
    v17 = v33[0];
  }

  else
  {
    v17 = v33[1];
  }

  v38 = v17;
  sub_24FE8A8D0(&v38);
  v37 = v33[2];
  sub_24FE8A8D0(&v37);
  v36 = v33[3];
  sub_24FE8A8D0(&v36);
  v35 = v33[4];
  sub_24FE8A8D0(&v35);
  v34 = v33[5];
  sub_24FE8A8D0(&v34);
  sub_24FEDD804();
  v18 = sub_24FEDD864();

  KeyPath = swift_getKeyPath();
  v27 = v10;
  v28 = v12;
  v20 = v14 & 1;
  v29 = v20;
  v30 = v24;
  v31 = KeyPath;
  v32 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6AA8, &qword_24FEE6568);
  sub_24FEA7FEC();
  sub_24FEDDB84();
  sub_24FE56B94(v10, v12, v20);

  LODWORD(v18) = sub_24FEDD634();
  v21 = v26;
  (*(v23 + 32))(v26, v8, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6AB8, &qword_24FEE6570);
  *(v21 + *(result + 36)) = v18;
  return result;
}

uint64_t type metadata accessor for DocumentHeadingView(uint64_t a1)
{
  result = qword_27F3A6AC8;
  if (!qword_27F3A6AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FEA7F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD374();
  *a1 = result;
  return result;
}

unint64_t sub_24FEA7FEC()
{
  result = qword_27F3A6AB0;
  if (!qword_27F3A6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6AA8, &qword_24FEE6568);
    sub_24FE8A700();
    sub_24FE58928(&qword_27F3A6298, &qword_27F3A62A0, &qword_24FEE4DE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6AB0);
  }

  return result;
}

uint64_t sub_24FEA80D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_24FEDC774();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24FEA8160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_24FEDC774();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_24FEA81DC(uint64_t a1)
{
  sub_24FEDC774();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24FEA827C()
{
  result = qword_27F3A6AD8;
  if (!qword_27F3A6AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A6AB8, &qword_24FEE6570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6AA8, &qword_24FEE6568);
    sub_24FEA7FEC();
    swift_getOpaqueTypeConformance2();
    sub_24FE58928(&qword_27F3A6698, &qword_27F3A66A0, &unk_24FEE7C50, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6AD8);
  }

  return result;
}

void *sub_24FEA8370(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6AF0, &unk_24FEE6680);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v29 = type metadata accessor for ListImageItem(0);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v27 = &v24 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = (a3 + 32);
  v25 = v11;
  v15 = (v11 + 48);
  v16 = MEMORY[0x277D84F90];
  v26 = a1;
  while (1)
  {
    v30 = *v14;

    a1(&v30);
    if (v3)
    {
      break;
    }

    if ((*v15)(v8, 1, v29) == 1)
    {
      sub_24FE58B7C(v8, &qword_27F3A6AF0, &unk_24FEE6680);
    }

    else
    {
      v18 = v27;
      sub_24FEA99EC(v8, v27, v17);
      sub_24FEA99EC(v18, v28, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_24FEBB068(0, v16[2] + 1, 1, v16);
      }

      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v16 = sub_24FEBB068((v21 > 1), v22 + 1, 1, v16);
      }

      v16[2] = v22 + 1;
      sub_24FEA99EC(v28, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v20);
      a1 = v26;
    }

    ++v14;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

uint64_t DocumentElementListImageParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30[0] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = sub_24FEDC854();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE8B614();
  sub_24FEDC6D4();
  v15 = sub_24FEDC894();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_24FE58B7C(v7, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_4:
    sub_24FE58B7C(v10, &qword_27F3A6140, &qword_24FEE79D0);
    v19 = type metadata accessor for DocumentListImageElement(0);
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  v17 = sub_24FEDC864();
  v18 = (*(v16 + 8))(v7, v15);
  MEMORY[0x28223BE20](v18);
  v30[-2] = a2;
  sub_24FE8B440(sub_24FEA8B70, v17, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  (*(v12 + 32))(v14, v10, v11);
  v21 = sub_24FEDC844();
  v22 = v30[0];
  v24 = sub_24FED5384(v21, v23);
  v26 = sub_24FEA8B90(v24, v25);

  MEMORY[0x28223BE20](v27);
  v30[-2] = v22;
  v28 = sub_24FEA8370(sub_24FEA9894, &v30[-4], v26);

  v29 = type metadata accessor for DocumentListImageElement(0);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  (*(v12 + 8))(v14, v11);
  *a3 = v28;
  return (*(*(v29 - 8) + 56))(a3, 0, 1, v29);
}

uint64_t sub_24FEA8A2C(__n128 a1)
{
  v1 = sub_24FEDC884();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24FEDC834();
  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277CC8D18])
  {
    sub_24FEA9A50();
    sub_24FEDC6D4();
    result = v7;
    if (v7)
    {

      return 1;
    }
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return result;
}

uint64_t sub_24FEA8B90(uint64_t a1, __n128 a2)
{
  v3 = sub_24FEDC884();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24FEDC854();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v49 - v12;
  v13 = sub_24FEDC6C4();
  MEMORY[0x28223BE20](v13);
  v66 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v16;
  v52 = *(a1 + 16);
  if (!v52)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = 0;
  v21 = *(v17 + 16);
  v20 = v17 + 16;
  v71 = v21;
  v60 = *(v20 + 64);
  v62 = (v60 + 32) & ~v60;
  v51 = a1 + v62;
  v70 = *(v20 + 56);
  v75 = v8 + 16;
  v49 = v8;
  v73 = (v4 + 88);
  v74 = (v8 + 8);
  v72 = *MEMORY[0x277CC8D38];
  v64 = (v4 + 96);
  v65 = (v4 + 8);
  v56 = (v20 + 16);
  v50 = (v20 - 8);
  v59 = xmmword_24FEE0740;
  v76 = MEMORY[0x277D84F90];
  v57 = v10;
  v63 = v13;
  v58 = v7;
  v68 = &v49 - v16;
  v69 = v20;
  v61 = v6;
  while (1)
  {
    v54 = v19;
    v71(v18, v51 + v70 * v19, v13);
    sub_24FE8B614();
    sub_24FEDC6D4();
    v22 = v55;
    v23 = sub_24FEDC894();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      break;
    }

    sub_24FE58B7C(v22, &qword_27F3A6138, &unk_24FEE4A10);
    v25 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (v26)
    {
      goto LABEL_6;
    }

LABEL_3:

    v19 = v54 + 1;
    v18 = v68;
    (*v50)(v68, v13);
    if (v19 == v52)
    {
      return v76;
    }
  }

  v25 = sub_24FEDC864();
  (*(v24 + 8))(v55, v23);
  v26 = *(v25 + 16);
  if (!v26)
  {
    goto LABEL_3;
  }

LABEL_6:
  v27 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v53 = v25;
  v28 = v25 + v27;
  v29 = *(v49 + 72);
  v67 = *(v49 + 16);
  v30 = v67;
  v67(v10, v28, v7);
  while (1)
  {
    sub_24FEDC834();
    (*v74)(v10, v7);
    v31 = (*v73)(v6, v3);
    if (v31 != v72)
    {
      (*v65)(v6, v3);
      goto LABEL_8;
    }

    result = (*v64)(v6, v3);
    v33 = *v6 - 1;
    if (__OFSUB__(*v6, 1))
    {
      break;
    }

    v34 = v7;
    v35 = v3;
    v36 = v13;
    v37 = v76;
    if (v33 < 0 || v33 >= v76[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B00, &unk_24FEE6690);
      v44 = v62;
      v45 = swift_allocObject();
      *(v45 + 16) = v59;
      v71((v45 + v44), v68, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_24FEBB044(0, v37[2] + 1, 1, v37);
      }

      v3 = v35;
      v47 = v37[2];
      v46 = v37[3];
      v76 = v37;
      v7 = v34;
      if (v47 >= v46 >> 1)
      {
        v76 = sub_24FEBB044((v46 > 1), v47 + 1, 1, v76);
      }

      v6 = v61;
      v48 = v76;
      v76[2] = v47 + 1;
      v48[v47 + 4] = v45;
      v13 = v63;
      v30 = v67;
    }

    else
    {
      v71(v66, v68, v36);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24FEBB818(v37);
        v37 = result;
      }

      if (v33 >= v37[2])
      {
        goto LABEL_32;
      }

      v38 = v37 + 4;
      v39 = v37[v33 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37[v33 + 4] = v39;
      v76 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_24FEBB01C(0, *(v39 + 2) + 1, 1, v39);
        v38[v33] = v39;
      }

      v6 = v61;
      v42 = *(v39 + 2);
      v41 = *(v39 + 3);
      if (v42 >= v41 >> 1)
      {
        v39 = sub_24FEBB01C((v41 > 1), v42 + 1, 1, v39);
        v38[v33] = v39;
      }

      v3 = v35;
      v43 = v66;
      v30 = v67;
      *(v39 + 2) = v42 + 1;
      v13 = v63;
      (*v56)(&v39[v62 + v42 * v70], v43, v63);
      v10 = v57;
      v7 = v58;
    }

LABEL_8:
    v28 += v29;
    if (!--v26)
    {
      goto LABEL_3;
    }

    v30(v10, v28, v7);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_24FEA92F8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v51 = sub_24FEDC8E4();
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24FEDC774();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  MEMORY[0x28223BE20](v13);
  v54 = v45 - v14;
  MEMORY[0x28223BE20](v15);
  v52 = v45 - v16;
  v17 = sub_24FEDC6C4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (*(v22 + 16))
  {
    (*(v18 + 16))(v21, v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17, v19);
    sub_24FEA9A50();
    sub_24FEDC6D4();
    if (v61)
    {
      v47 = v61;
      v48 = a3;
      v46 = v60;
      v23 = (*(v18 + 8))(v21, v17);
      MEMORY[0x28223BE20](v23);
      v45[-2] = v62;
      v24 = sub_24FE8B764(sub_24FEA9AA4, &v45[-4], v22);
      v25 = v54;
      sub_24FEDC764();
      v26 = v53;
      v27 = v8;
      (*(v53 + 16))(v12, v25, v8);
      v28 = v24;
      v29 = *(v24 + 16);
      if (v29)
      {
        v45[2] = v28;
        v45[3] = v3;
        v30 = *(v6 + 16);
        v31 = v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v58 = *(v6 + 72);
        v59 = v30;
        v62 = v8;
        v55 = (v26 + 32);
        v56 = (v26 + 8);
        v57 = (v6 + 8);
        v45[1] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = v50;
        v33 = v51;
        v34 = v49;
        do
        {
          v59(v32, v31, v33);
          sub_24FEA9AC4(&unk_27F3A6150, MEMORY[0x277CC8D88], MEMORY[0x277CC8D80]);
          sub_24FEDC624();
          (*v57)(v32, v33);
          v35 = *v56;
          v36 = v62;
          (*v56)(v12, v62);
          (*v55)(v12, v34, v36);
          v31 += v58;
          --v29;
        }

        while (v29);

        v27 = v62;
        v37 = v53;
      }

      else
      {

        v37 = v26;
        v35 = *(v26 + 8);
      }

      v35(v54, v27);
      v39 = *(v37 + 32);
      v40 = v52;
      v39(v52, v12, v27);
      v41 = v48;
      _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
      v42 = type metadata accessor for ListImageItem(0);
      v43 = (v41 + *(v42 + 20));
      v44 = v47;
      *v43 = v46;
      v43[1] = v44;
      v39((v41 + *(v42 + 24)), v40, v27);
      (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
      v38 = type metadata accessor for ListImageItem(0);
      (*(*(v38 - 8) + 56))(a3, 1, 1, v38);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24FEA98B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - v1;
  sub_24FEDC6B4();
  sub_24FE8BF90();
  sub_24FEDC7A4();
  return sub_24FE58B7C(v2, &qword_27F3A6160, &unk_24FEE4A80);
}

uint64_t sub_24FEA99EC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ListImageItem(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FEA9A50()
{
  result = qword_27F3A6AF8;
  if (!qword_27F3A6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6AF8);
  }

  return result;
}

uint64_t sub_24FEA9AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DocumentListImageElement.init(id:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for DocumentListImageElement(0) + 20);
  v7 = sub_24FEDCA64();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a1, v7);
  *a3 = a2;
  return result;
}

uint64_t type metadata accessor for DocumentListImageElement(uint64_t a1)
{
  result = qword_27F3A6B28;
  if (!qword_27F3A6B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentListImageElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentListImageElement(0) + 20);
  v4 = sub_24FEDCA64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static DocumentListImageElement.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  if ((sub_24FEA9D50(*a1, *a2, a3) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DocumentListImageElement(0);

  return _s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0();
}

uint64_t sub_24FEA9CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24FEDE844() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24FEA9D50(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ListImageItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_16:
    v25 = 0;
    return v25 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v9 + 72);
    while (1)
    {
      sub_24FEAA3D0(v15, v12, v10);
      sub_24FEAA3D0(v16, v7, v18);
      if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      v20 = *(v5 + 20);
      v21 = *&v12[v20];
      v22 = *&v12[v20 + 8];
      v23 = &v7[v20];
      v24 = v21 == *v23 && v22 == *(v23 + 1);
      if (!v24 && (sub_24FEDE844() & 1) == 0)
      {
        break;
      }

      v25 = sub_24FEDC684();
      sub_24FEAA434(v7, v26);
      sub_24FEAA434(v12, v27);
      if (v25)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v25 & 1;
    }

    sub_24FEAA434(v7, v19);
    sub_24FEAA434(v12, v28);
    goto LABEL_16;
  }

  v25 = 1;
  return v25 & 1;
}

unint64_t sub_24FEA9F2C()
{
  result = qword_27F3A6B08;
  if (!qword_27F3A6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6B08);
  }

  return result;
}

uint64_t sub_24FEA9F84(uint64_t a1)
{
  *(a1 + 8) = sub_24FEAA050(&qword_27F3A6B10, type metadata accessor for DocumentListImageElement, &protocol conformance descriptor for DocumentListImageElement);
  result = sub_24FEAA050(&unk_27F3A6B18, type metadata accessor for DocumentListImageElement, &protocol conformance descriptor for DocumentListImageElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEAA050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FEAA098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDCA64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24FEAA10C(uint64_t *a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  if ((sub_24FEA9D50(*a1, *a2, a4) & 1) == 0)
  {
    return 0;
  }

  return _s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0();
}

uint64_t sub_24FEAA190(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24FEDCA64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24FEAA250(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24FEDCA64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FEAA2F4(uint64_t a1, __n128 a2)
{
  sub_24FEAA378(319, a2);
  if (v2 <= 0x3F)
  {
    sub_24FEDCA64();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FEAA378(uint64_t a1, __n128 a2)
{
  if (!qword_27F3A6B38)
  {
    type metadata accessor for ListImageItem(255);
    v2 = sub_24FEDE3A4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F3A6B38);
    }
  }
}

uint64_t sub_24FEAA3D0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ListImageItem(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FEAA434(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ListImageItem(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DocumentListImageItemsView.body.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_27F3A5B80 != -1)
  {
    swift_once();
  }

  *a2 = qword_27F3A6B48;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B50, &qword_24FEE6760);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B58, &qword_24FEE6788);
  type metadata accessor for DocumentListImageView(0);
  sub_24FE58928(&qword_27F3A6B60, &qword_27F3A6B58, &qword_24FEE6788, MEMORY[0x277D83980]);
  sub_24FEAAE5C(&qword_27F3A5E30, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24FEAAE5C(&qword_27F3A6B68, type metadata accessor for DocumentListImageView, &protocol conformance descriptor for DocumentListImageView);
  return sub_24FEDDE94();
}

uint64_t sub_24FEAA654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentListImageView(0);
  sub_24FEAA3D0(a1, a2 + *(v4 + 20), v5);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_24FEAA6A4()
{
  v1 = sub_24FEDD3E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_24FEDE4D4();
    v7 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();
    v8 = sub_24FEAB234(v6, v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10;
  }

  return v6;
}

uint64_t sub_24FEAA808@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F3A5B80 != -1)
  {
    swift_once();
  }

  *a1 = qword_27F3A6B48;
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B50, &qword_24FEE6760);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6B58, &qword_24FEE6788);
  type metadata accessor for DocumentListImageView(0);
  sub_24FE58928(&qword_27F3A6B60, &qword_27F3A6B58, &qword_24FEE6788, MEMORY[0x277D83980]);
  sub_24FEAAE5C(&qword_27F3A5E30, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24FEAAE5C(&qword_27F3A6B68, type metadata accessor for DocumentListImageView, &protocol conformance descriptor for DocumentListImageView);
  return sub_24FEDDE94();
}

__n128 DocumentListImageView.body.getter@<Q0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24FEDD434();
  v22 = 0;
  sub_24FEAAB3C(v3, &v13);
  v25 = v15;
  v26 = v16;
  v23 = v13;
  v24 = v14;
  v28[2] = v15;
  v28[3] = v16;
  v28[4] = v17;
  v28[1] = v14;
  v27 = v17;
  v28[0] = v13;
  sub_24FE58B14(&v23, v20, &unk_27F3A6B70, &qword_24FEE6790);
  sub_24FE58B7C(v28, &unk_27F3A6B70, &qword_24FEE6790);
  *&v21[23] = v24;
  *&v21[39] = v25;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  LOBYTE(v3) = v22;
  sub_24FEDDF44();
  sub_24FEDD294();
  *a2 = v5;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = v3;
  v6 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *(a2 + 65) = v6;
  *(a2 + 81) = *&v21[64];
  *(a2 + 96) = *&v21[79];
  v7 = *&v21[16];
  *(a2 + 17) = *v21;
  *(a2 + 33) = v7;
  v8 = v13;
  v9 = v14;
  v10 = v16;
  *(a2 + 136) = v15;
  *(a2 + 120) = v9;
  *(a2 + 104) = v8;
  result = v17;
  v12 = v18;
  *(a2 + 200) = v19;
  *(a2 + 184) = v12;
  *(a2 + 168) = result;
  *(a2 + 152) = v10;
  return result;
}

double sub_24FEAAB3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDC774();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = a1 + *(type metadata accessor for DocumentListImageView(0) + 20);
  v9 = type metadata accessor for ListImageItem(0);
  v10 = (v8 + *(v9 + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_24FEAA6A4();
  v14 = v13(v11, v12);

  (*(v5 + 16))(v7, v8 + *(v9 + 24), v4);
  v15 = sub_24FEDD9E4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_24FEDDC74();
  KeyPath = swift_getKeyPath();
  if (qword_27F3A5B80 != -1)
  {
    v29 = KeyPath;
    swift_once();
    KeyPath = v29;
  }

  v24 = qword_27F3A6B48;
  *&v33 = v15;
  *(&v33 + 1) = v17;
  LOBYTE(v34) = v19 & 1;
  *(&v34 + 1) = *v32;
  DWORD1(v34) = *&v32[3];
  *(&v34 + 1) = v21;
  *&v35 = KeyPath;
  *(&v35 + 1) = v22;
  *&v36 = qword_27F3A6B48;
  *(&v36 + 1) = sub_24FEAADB0;
  v37 = 0;
  *a2 = v14;
  v25 = v34;
  *(a2 + 8) = v33;
  v26 = v35;
  v27 = v36;
  *(a2 + 72) = 0;
  *(a2 + 56) = v27;
  *(a2 + 40) = v26;
  *(a2 + 24) = v25;
  v38[0] = v15;
  v38[1] = v17;
  v39 = v19 & 1;
  *&v40[3] = *&v32[3];
  *v40 = *v32;
  v41 = v21;
  v42 = KeyPath;
  v43 = v22;
  v44 = v24;
  v45 = sub_24FEAADB0;
  v46 = 0;

  sub_24FE58B14(&v33, v31, &qword_27F3A6BD0, &qword_24FEE6910);
  sub_24FE58B7C(v38, &qword_27F3A6BD0, &qword_24FEE6910);

  return result;
}

uint64_t sub_24FEAADE0()
{
  sub_24FEAB248();
  result = sub_24FEDD524();
  qword_27F3A6B48 = result;
  return result;
}

uint64_t type metadata accessor for DocumentListImageView(uint64_t a1)
{
  result = qword_27F3A6B80;
  if (!qword_27F3A6B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FEAAE5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FEAAF00(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 254)
  {
    v5 = *(a1 + 16);
    if (v5 > 1)
    {
      return (v5 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = type metadata accessor for ListImageItem(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24FEAAFB8(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = type metadata accessor for ListImageItem(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_24FEAB058(uint64_t a1)
{
  sub_24FEAB0DC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ListImageItem(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FEAB0DC()
{
  if (!qword_27F3A6B90)
  {
    v0 = sub_24FEDD074();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6B90);
    }
  }
}

unint64_t sub_24FEAB174()
{
  result = qword_27F3A6BB0;
  if (!qword_27F3A6BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6BB8, &qword_24FEE68D0);
    sub_24FE58928(&qword_27F3A6BC0, &qword_27F3A6BC8, &qword_24FEE68D8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6BB0);
  }

  return result;
}

unint64_t sub_24FEAB248()
{
  result = qword_27F3A6BD8;
  if (!qword_27F3A6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6BD8);
  }

  return result;
}

uint64_t static ListImageAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static ListImageAttribute.name;

  return v0;
}

uint64_t static ListImageAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static ListImageAttribute.name = a1;
  *&static ListImageAttribute.name[8] = a2;
}

uint64_t sub_24FEAB424()
{
  swift_beginAccess();
  v0 = *static ListImageAttribute.name;

  return v0;
}

unint64_t sub_24FEAB488()
{
  result = qword_27F3A6BF0;
  if (!qword_27F3A6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6BF0);
  }

  return result;
}

uint64_t ListImageItem.init(id:imageName:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24FEDCA64();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for ListImageItem(0);
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = *(v11 + 24);
  v14 = sub_24FEDC774();
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v13, a4, v14);
}

uint64_t type metadata accessor for ListImageItem(uint64_t a1)
{
  result = qword_27F3A6C00;
  if (!qword_27F3A6C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListImageItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ListImageItem.imageName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListImageItem(0) + 20));

  return v1;
}

uint64_t ListImageItem.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListImageItem(0) + 24);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static ListImageItem.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ListImageItem(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (!v8 && (sub_24FEDE844() & 1) == 0)
  {
    return 0;
  }

  return sub_24FEDC684();
}

uint64_t sub_24FEAB7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_24FEDE844() & 1) == 0)
  {
    return 0;
  }

  return sub_24FEDC684();
}

uint64_t sub_24FEAB870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24FEDC774();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FEAB9AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_24FEDC774();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24FEABAD4(uint64_t a1)
{
  result = sub_24FEDCA64();
  if (v2 <= 0x3F)
  {
    result = sub_24FEDC774();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FEABB60()
{
  sub_24FE81030();
  sub_24FEDD3F4();
  return v1;
}

uint64_t (*sub_24FEABB9C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  (*(v6 + 32))(v8 + v7, a1, a2);
  return sub_24FEAC490;
}

uint64_t sub_24FEABC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  (*(a5 + 24))(a1, a2, a4, a5, v14);
  (*(v10 + 16))(v12, v16, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v17 = sub_24FEDDE14();
  (*(v10 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

uint64_t sub_24FEABE10@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  return result;
}

uint64_t ListImageStyleConfiguration.Label.body.getter@<X0>(uint64_t *a3@<X8>)
{

  result = sub_24FEDDCB4();
  *a3 = result;
  return result;
}

uint64_t sub_24FEABE88@<X0>(uint64_t *a1@<X8>)
{

  result = sub_24FEDDCB4();
  *a1 = result;
  return result;
}

uint64_t DefaultListImageStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v6 = sub_24FEDDC04();
  result = swift_getKeyPath();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = result;
  a3[3] = v6;
  return result;
}

uint64_t sub_24FEABF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v6 = sub_24FEDDC04();
  result = swift_getKeyPath();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = result;
  a3[3] = v6;
  return result;
}

double View.listImageStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  sub_24FEABB9C(v9, a3, a5);
  v12 = v11;
  swift_getKeyPath();
  v14[0] = sub_24FEAC490;
  v14[1] = v12;
  sub_24FEDDAD4();

  return result;
}

unint64_t sub_24FEAC188()
{
  result = qword_27F3A6C10;
  if (!qword_27F3A6C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6C18, &unk_24FEE6C98);
    sub_24FEAC22C();
    sub_24FEAC31C(&qword_27F3A6108, &qword_27F3A6110, &qword_24FEE4B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C10);
  }

  return result;
}

unint64_t sub_24FEAC22C()
{
  result = qword_27F3A6C20;
  if (!qword_27F3A6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C20);
  }

  return result;
}

uint64_t sub_24FEAC280(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6C28, &qword_24FEE6CA8);
  sub_24FEDD254();
  sub_24FEAC31C(&qword_27F3A6C30, &qword_27F3A6C28, &qword_24FEE6CA8);
  return swift_getWitnessTable();
}

uint64_t sub_24FEAC31C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24FEAC370(uint64_t *a1, int a2)
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

uint64_t sub_24FEAC3B8(uint64_t result, int a2, int a3)
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

uint64_t sub_24FEAC410()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FEAC4DC(uint64_t a1, uint64_t a2)
{

  sub_24FEDDC04();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C18, &unk_24FEE6C98);
  sub_24FEAC188();
  return sub_24FEDDE14();
}

id sub_24FEAC56C()
{
  v0 = sub_24FEDD054();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  sub_24FE9A750(&v14 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3D0], v0);
  v7 = sub_24FEDD044();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  v9 = objc_opt_self();
  v10 = &selRef_blackColor;
  if ((v7 & 1) == 0)
  {
    v10 = &selRef_whiteColor;
  }

  v11 = [v9 *v10];
  v12 = [v11 CGColor];

  return v12;
}

void *DocumentMathView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C38, &qword_24FEE6D50);
  MEMORY[0x28223BE20](v3);
  v5 = v32 - v4;
  v6 = sub_24FEDD444();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C40, &qword_24FEE6D58);
  MEMORY[0x28223BE20](v37);
  v36 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C48, &qword_24FEE6D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v32 - v10;
  v12 = sub_24FEDCCA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  sub_24FEACBCC(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24FE58B7C(v11, &qword_27F3A6C48, &qword_24FEE6D60);
    v19 = (v1 + *(type metadata accessor for DocumentMathView(0) + 20));
    v20 = v19[1];
    *&v38 = *v19;
    *(&v38 + 1) = v20;
    sub_24FEAD080();

    *v5 = sub_24FEDD9F4();
    *(v5 + 1) = v21;
    v5[16] = v22 & 1;
    *(v5 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_24FEAD0D4();
    return sub_24FEDD5F4();
  }

  else
  {
    v32[2] = a1;
    v25 = *(v13 + 32);
    v25(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    v26 = *(v13 + 80);
    v32[1] = v3;
    v27 = (v26 + 16) & ~v26;
    v28 = swift_allocObject();
    v25((v28 + v27), v15, v12);
    (*(v34 + 104))(v33, *MEMORY[0x277CE00F0], v35);
    v29 = v36;
    sub_24FEDDDA4();
    sub_24FEDCBD4();
    CGRectGetWidth(v41);
    sub_24FEDCBD4();
    CGRectGetHeight(v42);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    v30 = (v29 + *(v37 + 36));
    v31 = v39;
    *v30 = v38;
    v30[1] = v31;
    v30[2] = v40;
    sub_24FEAD2F4(v29, v5);
    swift_storeEnumTagMultiPayload();
    sub_24FEAD0D4();
    sub_24FEDD5F4();
    sub_24FE58B7C(v29, &qword_27F3A6C40, &qword_24FEE6D58);
    return (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_24FEACBCC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_24FEDCBC4();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CA0, &qword_24FEE6E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_24FEDCBA4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24FEDCC74();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CA8, &qword_24FEE6E28);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_24FEDCC24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DocumentMathView(0);
  v24 = v1;

  sub_24FEDCC64();
  sub_24FEDCB94();
  sub_24FEDCC34();
  v16 = v6;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24FE58B7C(v11, &qword_27F3A6CA8, &qword_24FEE6E28);
    v20 = 1;
    v21 = v28;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v18 + 56))(v16, 1, 1, v19);
    v21 = v28;
    sub_24FEDCC14();
    sub_24FE58B7C(v16, &qword_27F3A6CA0, &qword_24FEE6E20);
    sub_24FEAC56C();
    sub_24FEDCBB4();
    sub_24FEDCC94();
    (*(v18 + 8))(v17, v19);
    (*(v13 + 8))(v15, v12);
    v20 = 0;
  }

  v22 = sub_24FEDCCA4();
  return (*(*(v22 - 8) + 56))(v21, v20, 1, v22);
}

uint64_t type metadata accessor for DocumentMathView(uint64_t a1)
{
  result = qword_27F3A6C78;
  if (!qword_27F3A6C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24FEAD080()
{
  result = qword_27F3A6C50;
  if (!qword_27F3A6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C50);
  }

  return result;
}

unint64_t sub_24FEAD0D4()
{
  result = qword_27F3A6C58;
  if (!qword_27F3A6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6C40, &qword_24FEE6D58);
    sub_24FEAD160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C58);
  }

  return result;
}

unint64_t sub_24FEAD160()
{
  result = qword_27F3A6C60;
  if (!qword_27F3A6C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A6C68, &qword_24FEE6D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C60);
  }

  return result;
}

uint64_t sub_24FEAD1C4(__n128 a1)
{
  v2 = sub_24FEDCCA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_24FEAD2F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6C40, &qword_24FEE6D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEAD380(void *a1, double a2, double a3)
{
  v4 = sub_24FEDCBF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_24FEDCBE4();
  sub_24FEDCC54();
  sub_24FEDCC44();
  sub_24FEDCC84();
  sub_24FEDCC04();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24FEAD4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
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

uint64_t sub_24FEAD5A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
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

void sub_24FEAD668(uint64_t a1)
{
  sub_24FE8A340(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24FEAD6E0()
{
  result = qword_27F3A6C90;
  if (!qword_27F3A6C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6C98, &qword_24FEE6E18);
    sub_24FEAD0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6C90);
  }

  return result;
}

BOOL sub_24FEAD820(void *a1, uint64_t *a2)
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

void *sub_24FEAD850@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24FEAD87C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24FEAD968@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24FEAD978@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24FEADC08(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_24FEAD9C0()
{
  result = qword_27F3A6CB0;
  if (!qword_27F3A6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CB0);
  }

  return result;
}

unint64_t sub_24FEADA18()
{
  result = qword_27F3A6CB8;
  if (!qword_27F3A6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CB8);
  }

  return result;
}

unint64_t sub_24FEADA70()
{
  result = qword_27F3A6CC0;
  if (!qword_27F3A6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CC0);
  }

  return result;
}

unint64_t sub_24FEADAC8()
{
  result = qword_27F3A6CC8;
  if (!qword_27F3A6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CC8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24FEADB4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24FEADB94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_24FEADC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t static LaTeXMathRenderer.render(attributedString:displayScale:colorScheme:font:nonMathTextRenderProcess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v42 = a3;
  v43 = a5;
  v39 = a4;
  v41 = a2;
  v8 = sub_24FEDC774();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_24FEDC5A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  sub_24FEDC574();
  sub_24FEAE034(v13);
  (*(v15 + 8))(v17, v14);
  v19 = v39;
  v20 = sub_24FEDE224();
  v40 = _s16MarkdownDocument18LaTeXMathExtractorO7extract4from15extractingTypesSayAC11TextSegmentOGSS_AC14ExtractionTypeVtFZ_0(v20, v21, 3);

  if (v19)
  {
    v22 = swift_allocObject();
    v23 = v43;
    *(v22 + 16) = v19;
    *(v22 + 24) = v23;
    v24 = sub_24FEB00A0;
  }

  else
  {
    v24 = sub_24FEAE430;
    v22 = 0;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v22;
  (*(v9 + 16))(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v8);
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v26, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v28 = (v27 + ((v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_24FEAFF98;
  v28[1] = v25;
  sub_24FEB0078(v19, v43);

  sub_24FEDD4B4();
  v29 = sub_24FEDD9D4();
  v30 = MEMORY[0x28223BE20](v29);
  *(&v38 - 6) = a6;
  v31 = v42;
  *(&v38 - 5) = v41;
  *(&v38 - 4) = v31;
  *(&v38 - 3) = sub_24FE8A9C4;
  v36 = sub_24FEAFE5C(v33, v34, v32 & 1, v35, sub_24FEB0088, v30, (&v38 - 8), v40);

  return v36;
}

uint64_t sub_24FEAE034@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = sub_24FEDC714();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D20, "а");
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_24FEDC5A4();
  v17 = sub_24FEB0290(&qword_27F3A6D28, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v33 = v16;
  v18 = v17;
  sub_24FEDE454();
  sub_24FEB0290(&qword_27F3A6D30, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  result = sub_24FEDE194();
  if (result)
  {
    sub_24FEDE474();
    sub_24FEB0290(&qword_27F3A6D18, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    result = sub_24FEDE184();
    if (result)
    {
      v29 = v1;
      v20 = *(v7 + 32);
      v20(v5, v15, v6);
      v27 = v10;
      v28 = v18;
      v21 = v7;
      v23 = v30;
      v22 = v31;
      v20(&v5[*(v31 + 48)], v9, v6);
      sub_24FE58B14(v5, v23, &qword_27F3A6D00, &unk_24FEE71B0);
      v24 = *(v22 + 48);
      v20(v12, v23, v6);
      v25 = *(v21 + 8);
      v25(v23 + v24, v6);
      sub_24FEB0220(v5, v23);
      v20(&v12[*(v27 + 36)], (v23 + *(v22 + 48)), v6);
      v25(v23, v6);
      sub_24FEDE494();
      return sub_24FE58B7C(v12, &qword_27F3A6160, &unk_24FEE4A80);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24FEAE430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDC774();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_24FEDD9E4();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_24FEAE508(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t (*a6)(char *), uint64_t a7)
{
  v68 = a7;
  v69 = a6;
  v65 = a3;
  v66 = a4;
  v71 = a2;
  v9 = sub_24FEDC814();
  MEMORY[0x28223BE20](v9 - 8);
  v63 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24FEDC8E4();
  MEMORY[0x28223BE20](v11 - 8);
  v59 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  MEMORY[0x28223BE20](v57);
  v56 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = v53 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  MEMORY[0x28223BE20](v55);
  v58 = v53 - v16;
  v17 = sub_24FEDC774();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D08, &unk_24FEE71C0);
  MEMORY[0x28223BE20](v21 - 8);
  v61 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v53 - v24;
  v26 = sub_24FEDC714();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v60 = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v73 = v53 - v31;
  v67 = v18;
  v32 = *(v18 + 16);
  v62 = a5;
  v32(v20, a5, v17, v30);
  sub_24FEB0290(&qword_27F3A6D10, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  v64 = a1;
  sub_24FEDC724();
  v70 = v27;
  v33 = *(v27 + 48);
  v72 = v26;
  if (v33(v25, 1, v26) == 1)
  {
    v34 = v25;
LABEL_5:
    v38 = v69;
    sub_24FE58B7C(v34, &qword_27F3A6D08, &unk_24FEE71C0);

    sub_24FEDC804();
    sub_24FEDC784();
    v39 = v38(v20);
    (*(v67 + 8))(v20, v17);
    return v39;
  }

  v35 = *(v70 + 32);
  v36 = v25;
  v37 = v72;
  v53[1] = v70 + 32;
  v53[0] = v35;
  v35(v73, v36, v72);
  (v32)(v20, v62, v17);
  v34 = v61;
  sub_24FEDC724();
  if (v33(v34, 1, v37) == 1)
  {
    (*(v70 + 8))(v73, v72);
    goto LABEL_5;
  }

  v40 = v70;
  v41 = v60;
  (v53[0])(v60, v34, v72);
  sub_24FEB0290(&qword_27F3A6D18, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
  result = sub_24FEDE184();
  if (result)
  {
    v43 = *(v40 + 16);
    v44 = v54;
    v45 = v72;
    v43(v54, v73, v72);
    v71 = v17;
    v66 = v20;
    v46 = v57;
    v43((v44 + *(v57 + 48)), v41, v45);
    v47 = v56;
    sub_24FE58B14(v44, v56, &qword_27F3A6D00, &unk_24FEE71B0);
    v48 = *(v46 + 48);
    v49 = v58;
    v50 = v53[0];
    (v53[0])(v58, v47, v45);
    v51 = *(v40 + 8);
    v51(v47 + v48, v45);
    sub_24FEB0220(v44, v47);
    v50(v49 + *(v55 + 36), v47 + *(v46 + 48), v45);
    v51(v47, v45);
    sub_24FE8BF90();
    sub_24FEDC7A4();
    v52 = v66;
    sub_24FEDC7C4();
    v39 = v69(v52);
    (*(v67 + 8))(v52, v71);
    sub_24FE58B7C(v49, &qword_27F3A6160, &unk_24FEE4A80);
    v51(v60, v45);
    v51(v73, v45);
    return v39;
  }

  __break(1u);
  return result;
}

uint64_t static LaTeXMathRenderer.renderAllSegments(_:displayScale:colorScheme:font:nonMathStringRenderProcess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  sub_24FEDD4B4();
  v12 = sub_24FEDD9D4();
  v19 = a6;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  return sub_24FEAFE5C(v12, v14, v13 & 1, v15, sub_24FEB02D8, v16, v18, a1);
}

uint64_t sub_24FEAED24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, double a7)
{
  v100 = a6;
  v101 = a5;
  v110 = a3;
  v111 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD0, &unk_24FEE8000);
  MEMORY[0x28223BE20](v9 - 8);
  v107 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD8, "ܿ");
  MEMORY[0x28223BE20](v11 - 8);
  v103 = &v99 - v12;
  v109 = sub_24FEDD924();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_24FEDD944();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CE0, "ܿ");
  MEMORY[0x28223BE20](v15);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v99 - v20);
  v22 = *a2;
  v23 = a2[1];
  v25 = a2[2];
  v24 = a2[3];
  v26 = *(a2 + 32);
  v27 = *(a1 + 8);
  v115 = *a1;
  v116 = a1;
  v112 = *(a1 + 16);
  v28 = *(a1 + 24);
  v113 = v27;
  v114 = v28;
  if ((v26 & 1) == 0)
  {
    v36 = MEMORY[0x25305A440](v22, v23, v25, v24, v19);
    v38 = v37;
    *v21 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v39 = (v21 + *(type metadata accessor for DocumentMathView(0) + 20));
    *v39 = v36;
    v39[1] = v38;
    KeyPath = swift_getKeyPath();
    v41 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CF0, &unk_24FEE7108) + 36));
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420) + 28);
    v43 = sub_24FEDD054();
    (*(*(v43 - 8) + 16))(v41 + v42, v110, v43);
    *v41 = KeyPath;
    v44 = swift_getKeyPath();
    v45 = (v21 + *(v15 + 36));
    v46 = v111;
    *v45 = v44;
    v45[1] = v46;

    v47 = sub_24FEDDCB4();
    sub_24FE58B14(v21, v17, &qword_27F3A6CE0, "ܿ");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CF8, qword_24FEE7148);
    swift_allocObject();
    MEMORY[0x253059320](v17);
    sub_24FEDD114();
    v48 = sub_24FEDD104();
    if (v48)
    {
      v49 = v48;
      v50 = sub_24FEDDCA4();

      [v49 size];

      sub_24FE58B7C(v21, &qword_27F3A6CE0, "ܿ");
      v110 = v50;
    }

    else
    {
      sub_24FE58B7C(v21, &qword_27F3A6CE0, "ܿ");

      v110 = v47;
    }

    v60 = v102;
    sub_24FEDD934();
    sub_24FEDD4B4();
    v61 = sub_24FEDD9D4();
    v63 = v62;
    v65 = v64;
    v66 = sub_24FEDD994();
    v68 = v67;
    v70 = v69;
    sub_24FE56B94(v61, v63, v65 & 1);

    v71 = sub_24FEDD8F4();
    (*(*(v71 - 8) + 56))(v103, 1, 1, v71);
    v72 = sub_24FEDD9A4();
    (*(*(v72 - 8) + 56))(v107, 1, 1, v72);
    v73 = v105;
    sub_24FEDD914();
    sub_24FEDD904();
    sub_24FE56B94(v66, v68, v70 & 1);

    (*(v108 + 8))(v73, v109);
    (*(v104 + 8))(v60, v106);

    v74 = sub_24FEDDA04();
    v76 = v75;
    LOBYTE(v73) = v77;
    v78 = sub_24FEDD954();
    v80 = v79;
    LOBYTE(v60) = v81;
    sub_24FE56B94(v74, v76, v73 & 1);

    v117 = sub_24FEDDC74();
    v82 = sub_24FEDD974();
    v110 = v83;
    v111 = v82;
    v34 = v84;
    v109 = v85;
    sub_24FE56B94(v78, v80, v60 & 1);

    goto LABEL_9;
  }

  v29 = v101;
  if (!v101)
  {
    v117 = v22;
    v118 = v23;
    v119 = v25;
    v120 = v24;
    sub_24FEB00DC();

    v51 = sub_24FEDD9F4();
    v53 = v52;
    v55 = v54;
    v56 = sub_24FEDD994();
    v110 = v57;
    v111 = v56;
    v34 = v58;
    v109 = v59;
    sub_24FE56B94(v51, v53, v55 & 1);
LABEL_9:

    goto LABEL_10;
  }

  sub_24FEB0210(v22, v23, v25, v24);
  v30 = v100;
  sub_24FEB0078(v29, v100);
  v31 = v29(v22, v23, v25, v24);
  v110 = v32;
  v111 = v31;
  v34 = v33;
  v109 = v35;
  sub_24FE86C84(v29, v30);
  sub_24FEB0218(v22, v23, v25, v24);
LABEL_10:
  v86 = v115;
  v87 = v113;
  v88 = v34;
  v89 = v112;
  v91 = v110;
  v90 = v111;
  v107 = sub_24FEDD984();
  v106 = v92;
  v94 = v93;
  v108 = v95;
  sub_24FE56B94(v90, v91, v88 & 1);

  sub_24FE56B94(v86, v87, v89);

  v97 = v116;
  v98 = v106;
  *v116 = v107;
  v97[1] = v98;
  *(v97 + 16) = v94 & 1;
  v97[3] = v108;
  return result;
}

uint64_t static LaTeXMathRenderer.renderSegment(segment:displayScale:colorScheme:font:nonMathStringRenderProcess:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, double a6)
{
  v78 = a2;
  v79 = a3;
  v9 = a1[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD0, &unk_24FEE8000);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CD8, "ܿ");
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v70 - v13;
  v14 = sub_24FEDD924();
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x28223BE20](v14);
  v73 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24FEDD944();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CE0, "ܿ");
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v70 - v22);
  v25 = *a1;
  v24 = a1[1];
  v26 = a1[2];
  if ((a1[4] & 1) == 0)
  {
    v28 = MEMORY[0x25305A440](*a1, a1[1], a1[2], v9, v21);
    v30 = v29;
    *v23 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v31 = (v23 + *(type metadata accessor for DocumentMathView(0) + 20));
    *v31 = v28;
    v31[1] = v30;
    KeyPath = swift_getKeyPath();
    v33 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CF0, &unk_24FEE7108) + 36));
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420) + 28);
    v35 = sub_24FEDD054();
    (*(*(v35 - 8) + 16))(v33 + v34, v78, v35);
    *v33 = KeyPath;
    v36 = swift_getKeyPath();
    v37 = (v23 + *(v17 + 36));
    v38 = v79;
    *v37 = v36;
    v37[1] = v38;

    sub_24FEDDCB4();
    sub_24FE58B14(v23, v19, &qword_27F3A6CE0, "ܿ");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6CF8, qword_24FEE7148);
    swift_allocObject();
    MEMORY[0x253059320](v19);
    sub_24FEDD114();
    v39 = sub_24FEDD104();
    if (v39)
    {
      v40 = v39;
      sub_24FEDDCA4();

      [v40 size];

      sub_24FE58B7C(v23, &qword_27F3A6CE0, "ܿ");
    }

    else
    {
      sub_24FE58B7C(v23, &qword_27F3A6CE0, "ܿ");
    }

    v46 = v70;
    sub_24FEDD934();
    sub_24FEDD4B4();
    v47 = sub_24FEDD9D4();
    v49 = v48;
    v51 = v50;
    v52 = sub_24FEDD994();
    v54 = v53;
    v56 = v55;
    sub_24FE56B94(v47, v49, v51 & 1);

    v57 = sub_24FEDD8F4();
    (*(*(v57 - 8) + 56))(v71, 1, 1, v57);
    v58 = sub_24FEDD9A4();
    (*(*(v58 - 8) + 56))(v75, 1, 1, v58);
    v59 = v73;
    sub_24FEDD914();
    sub_24FEDD904();
    sub_24FE56B94(v52, v54, v56 & 1);

    (*(v76 + 8))(v59, v77);
    (*(v72 + 8))(v46, v74);

    v60 = sub_24FEDDA04();
    v62 = v61;
    LOBYTE(v52) = v63;
    v64 = sub_24FEDD954();
    v66 = v65;
    v68 = v67;
    sub_24FE56B94(v60, v62, v52 & 1);

    v80[0] = sub_24FEDDC74();
    v27 = sub_24FEDD974();
    sub_24FE56B94(v64, v66, v68 & 1);

    goto LABEL_9;
  }

  if (!a4)
  {
    v80[0] = *a1;
    v80[1] = v24;
    v80[2] = v26;
    v80[3] = v9;
    sub_24FEB00DC();

    v41 = sub_24FEDD9F4();
    v43 = v42;
    v45 = v44;
    v27 = sub_24FEDD994();
    sub_24FE56B94(v41, v43, v45 & 1);
LABEL_9:

    return v27;
  }

  sub_24FEB0130(a1, v80);
  sub_24FEB0078(a4, a5);
  v27 = a4(v25, v24, v26, v9);
  sub_24FE86C84(a4, a5);
  sub_24FEB018C(a1);
  return v27;
}

uint64_t sub_24FEAFE5C(uint64_t result, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *, void *), __n128 a6, uint64_t a7, uint64_t a8)
{
  v21 = a4;
  v22 = a5;
  v18 = result;
  v19 = a2;
  v20 = a3;
  v9 = *(a8 + 16);
  if (v9)
  {
    for (i = (a8 + 64); ; i += 40)
    {
      v11 = *(i - 4);
      v12 = *(i - 3);
      v13 = *(i - 2);
      v14 = *(i - 1);
      v15 = *i;
      v16[0] = v11;
      v16[1] = v12;
      v16[2] = v13;
      v16[3] = v14;
      v17 = v15;
      sub_24FEB0210(v11, v12, v13, v14);
      v22(&v18, v16);
      if (v8)
      {
        break;
      }

      sub_24FEB0218(v11, v12, v13, v14);
      if (!--v9)
      {
        return v18;
      }
    }

    sub_24FEB0218(v11, v12, v13, v14);
    sub_24FE56B94(v18, v19, v20);
  }

  return result;
}

uint64_t sub_24FEAFF60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24FEAFFD8()
{
  v1 = sub_24FEDC774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24FEB0078(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24FEB00A0@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_24FEB00DC()
{
  result = qword_27F3A6CE8;
  if (!qword_27F3A6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6CE8);
  }

  return result;
}

uint64_t sub_24FEB0220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D00, &unk_24FEE71B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEB0290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *LaTeXMathTracker.instance.unsafeMutableAddressor()
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  return &static LaTeXMathTracker.instance;
}

uint64_t LaTeXMathTracker.containsMath.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  return v1;
}

void sub_24FEB03EC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  *a2 = v3;
}

uint64_t sub_24FEB046C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

uint64_t LaTeXMathTracker.containsMath.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

void (*LaTeXMathTracker.containsMath.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24FEDCFD4();
  return sub_24FEB05F4;
}

uint64_t LaTeXMathTracker.$containsMath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D48, &qword_24FEE7220);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D40, &qword_24FEE7218);
  sub_24FEDCFC4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LaTeXMathTracker.$containsMath.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D48, &qword_24FEE7220);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__containsMath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D40, &qword_24FEE7218);
  sub_24FEDCFB4();
  swift_endAccess();
  return sub_24FEB08BC;
}

uint64_t LaTeXMathTracker.snapshotImageData.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  return v1;
}

double sub_24FEB0984@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_24FEB0A04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FE62C80(v2, v3);
  return sub_24FEDCFF4();
}

uint64_t LaTeXMathTracker.snapshotImageData.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

void (*LaTeXMathTracker.snapshotImageData.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24FEDCFD4();
  return sub_24FEB1588;
}

uint64_t sub_24FEB0BC8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_24FEDCFB4();
  return swift_endAccess();
}

uint64_t LaTeXMathTracker.$snapshotImageData.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6D68, &qword_24FEE7280);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D60, &qword_24FEE7278);
  sub_24FEDCFC4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LaTeXMathTracker.$snapshotImageData.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6D68, &qword_24FEE7280);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__snapshotImageData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D60, &qword_24FEE7278);
  sub_24FEDCFB4();
  swift_endAccess();
  return sub_24FEB158C;
}

uint64_t sub_24FEB0EE8()
{
  type metadata accessor for LaTeXMathTracker(0);
  v0 = swift_allocObject();
  sub_24FEDCFA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D50, &qword_24FEE7228);
  result = sub_24FEDCFA4();
  static LaTeXMathTracker.instance = v0;
  return result;
}

uint64_t static LaTeXMathTracker.instance.getter()
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static LaTeXMathTracker.instance.setter(uint64_t a1)
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static LaTeXMathTracker.instance = a1;

  return result;
}

uint64_t (*static LaTeXMathTracker.instance.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::Void __swiftcall LaTeXMathTracker.reset()()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFF4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24FEDCFF4();
}

uint64_t LaTeXMathTracker.deinit()
{
  v1 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__containsMath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D40, &qword_24FEE7218);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__snapshotImageData;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D60, &qword_24FEE7278);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LaTeXMathTracker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__containsMath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D40, &qword_24FEE7218);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MarkdownDocument16LaTeXMathTracker__snapshotImageData;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6D60, &qword_24FEE7278);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_24FEB1374@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LaTeXMathTracker(0);
  result = sub_24FEDCF94();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LaTeXMathTracker(uint64_t a1)
{
  result = qword_27F3A6D78;
  if (!qword_27F3A6D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FEB1408(uint64_t a1)
{
  sub_24FEB14D4();
  if (v1 <= 0x3F)
  {
    sub_24FEB1524(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24FEB14D4()
{
  if (!qword_27F3A6D88)
  {
    v0 = sub_24FEDD004();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6D88);
    }
  }
}

void sub_24FEB1524(uint64_t a1)
{
  if (!qword_27F3A6D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6D50, &qword_24FEE7228);
    v1 = sub_24FEDD004();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A6D90);
    }
  }
}

uint64_t sub_24FEB1590@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  MEMORY[0x28223BE20](v1);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - v5;
  MEMORY[0x28223BE20](v6);
  v48 = &v44 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v58 = sub_24FEDCD44();
  v11 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_24FEDCB14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB8, &qword_24FEE7320);
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v53 = &v44 - v24;
  v61 = 96;
  v62 = 0xE100000000000000;
  v25 = sub_24FEB63B0();
  MEMORY[0x253058CD0](v63, &v61, MEMORY[0x277D837D0], v25);
  sub_24FEDCD54();
  sub_24FEDCD84();
  v26 = sub_24FEDCD94();
  (*(*(v26 - 8) + 56))(v16, 0, 1, v26);
  sub_24FEDCB04();
  sub_24FEB6404(&qword_27F3A6ED0, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v27 = MEMORY[0x277D83E40];
  sub_24FEDCD34();
  v28 = *(v11 + 8);
  v55 = v11 + 8;
  v56 = v28;
  v28(v13, v58);
  sub_24FEB62E4(v16);
  (*(v18 + 8))(v20, v17);
  MEMORY[0x253058D80](v10, v27);
  v29 = sub_24FE58928(&qword_27F3A6DF0, &qword_27F3A6DB8, &qword_24FEE7320, MEMORY[0x277D85420]);
  v30 = v54;
  MEMORY[0x253058CD0](v22, v54, v29);
  v31 = *(v57 + 8);
  v57 += 8;
  v46 = v31;
  v31(v22, v30);
  v59 = 96;
  v60 = 0xE100000000000000;
  v44 = v25;
  MEMORY[0x253058CD0](&v61, &v59, MEMORY[0x277D837D0], v25);
  v59 = v63[0];
  v60 = v63[1];
  v45 = v10;
  sub_24FEDCAE4();

  sub_24FEDCB04();
  sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328, MEMORY[0x277D85AC0]);
  v32 = v47;
  v33 = v50;
  sub_24FEDCD24();
  v34 = v49;
  sub_24FEDCD24();
  v35 = v48;
  v36 = v32;
  v37 = v33;
  v38 = v13;
  sub_24FEDCCE4();
  v39 = *(v51 + 8);
  v39(v34, v37);
  v40 = v36;
  v39(v36, v37);
  v56(v38, v58);
  v42 = v61;
  v41 = v62;
  sub_24FEDCB04();
  v59 = v42;
  v60 = v41;
  sub_24FEDCD24();
  sub_24FEDCD24();

  sub_24FEDCCE4();
  v39(v34, v37);
  v39(v40, v37);
  v56(v38, v58);
  v39(v35, v37);
  v39(v45, v37);
  return v46(v53, v54);
}

uint64_t sub_24FEB1CC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
}

uint64_t sub_24FEB1CF0@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v95 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v94 = &v87 - v3;
  MEMORY[0x28223BE20](v4);
  v115 = &v87 - v5;
  MEMORY[0x28223BE20](v6);
  v110 = &v87 - v7;
  MEMORY[0x28223BE20](v8);
  v121 = &v87 - v9;
  MEMORY[0x28223BE20](v10);
  v107 = &v87 - v11;
  MEMORY[0x28223BE20](v12);
  v108 = &v87 - v13;
  MEMORY[0x28223BE20](v14);
  v105 = &v87 - v15;
  v123 = sub_24FEDCD44();
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v87 - v19;
  v21 = sub_24FEDCB14();
  v118 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB8, &qword_24FEE7320);
  v119 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v92 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v120 = &v87 - v27;
  MEMORY[0x28223BE20](v28);
  v114 = &v87 - v29;
  MEMORY[0x28223BE20](v30);
  v116 = &v87 - v31;
  v32 = sub_24FEDCB54();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v90 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v87 - v36;
  MEMORY[0x28223BE20](v38);
  v113 = &v87 - v39;
  v109 = v37;
  sub_24FEDCB34();
  v104 = sub_24FEB6404(&qword_27F3A6EF0, MEMORY[0x277D853F0], MEMORY[0x277D853E8]);
  v103 = v32;
  MEMORY[0x253058CD0](v37, v32, v104);
  v40 = *(v33 + 8);
  v111 = v33 + 8;
  v112 = v40;
  v40(v37, v32);
  v128 = 6316128;
  v129 = 0xE300000000000000;
  v102 = sub_24FEB63B0();
  MEMORY[0x253058CD0](v130, &v128, MEMORY[0x277D837D0], v102);
  sub_24FEDCD64();
  v100 = sub_24FEDCD94();
  v41 = *(v100 - 8);
  v99 = *(v41 + 56);
  v101 = v41 + 56;
  v99(v20, 1, 1, v100);
  sub_24FEDCB04();
  v98 = sub_24FEB6404(&qword_27F3A6ED0, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v42 = MEMORY[0x277D83E40];
  v43 = v105;
  v89 = v21;
  sub_24FEDCD34();
  v44 = *(v125 + 8);
  v125 += 8;
  v122 = v44;
  v44(v17, v123);
  sub_24FEB62E4(v20);
  v45 = *(v118 + 8);
  v118 += 8;
  v97 = v45;
  v45(v23, v21);
  v46 = v114;
  v47 = v42;
  MEMORY[0x253058D80](v43, v42);
  v117 = sub_24FE58928(&qword_27F3A6DF0, &qword_27F3A6DB8, &qword_24FEE7320, MEMORY[0x277D85420]);
  v124 = v24;
  MEMORY[0x253058CD0](v46, v24, v117);
  v48 = *(v119 + 8);
  v119 += 8;
  v106 = v48;
  v48(v46, v24);
  v49 = v23;
  sub_24FEDCD74();
  v50 = v20;
  sub_24FEDCD84();
  v99(v20, 0, 1, v100);
  sub_24FEDCB04();
  v88 = v23;
  v51 = v89;
  sub_24FEDCD34();
  v52 = v122;
  v53 = v123;
  v122(v17, v123);
  sub_24FEB62E4(v50);
  v97(v49, v51);
  v54 = v120;
  MEMORY[0x253058D80](v43, v47);
  v55 = v54;
  v56 = v54;
  v57 = v124;
  MEMORY[0x253058CD0](v55, v124, v117);
  v58 = v56;
  v59 = v106;
  v106(v58, v57);
  v60 = v88;
  sub_24FEDCD64();
  v99(v50, 1, 1, v100);
  sub_24FEDCB04();
  sub_24FEDCD34();
  v52(v17, v53);
  sub_24FEB62E4(v50);
  v97(v60, v51);
  v61 = v92;
  MEMORY[0x253058D80](v43, MEMORY[0x277D83E40]);
  v62 = v124;
  MEMORY[0x253058CD0](v61, v124, v117);
  v59(v61, v62);
  v126 = 6316128;
  v127 = 0xE300000000000000;
  MEMORY[0x253058CD0](&v128, &v126, MEMORY[0x277D837D0], v102);
  v63 = v90;
  sub_24FEDCB44();
  v64 = v103;
  MEMORY[0x253058CD0](v63, v103, v104);
  v112(v63, v64);
  sub_24FEDCAE4();
  v65 = v130[0];
  v66 = v130[1];
  sub_24FEDCB04();
  v126 = v65;
  v127 = v66;
  sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328, MEMORY[0x277D85AC0]);
  v67 = v107;
  v68 = v91;
  sub_24FEDCD24();
  v69 = v121;
  sub_24FEDCD24();

  sub_24FEDCCE4();
  v70 = *(v93 + 8);
  v70(v69, v68);
  v70(v67, v68);
  v71 = v123;
  v122(v17, v123);
  sub_24FEDCB04();
  sub_24FEDCD24();
  v72 = v110;
  sub_24FEDCD24();
  v73 = v121;
  sub_24FEDCCE4();
  v70(v72, v68);
  v70(v73, v68);
  v74 = v122;
  v122(v17, v71);
  sub_24FEDCB04();
  sub_24FEDCD24();
  v75 = v115;
  sub_24FEDCD24();
  sub_24FEDCCE4();
  v70(v75, v68);
  v70(v72, v68);
  v74(v17, v123);
  sub_24FEDCB04();
  sub_24FEDCD24();
  v76 = v94;
  sub_24FEDCD24();
  sub_24FEDCCE4();
  v70(v76, v68);
  v70(v75, v68);
  v74(v17, v123);
  v78 = v128;
  v77 = v129;
  sub_24FEDCB04();
  v126 = v78;
  v127 = v77;
  sub_24FEDCD24();
  v79 = v95;
  sub_24FEDCD24();

  sub_24FEDCCE4();
  v70(v79, v68);
  v70(v76, v68);
  v80 = v123;
  v122(v17, v123);
  sub_24FEDCB04();
  sub_24FEDCD24();
  v81 = v109;
  v82 = v103;
  sub_24FEDCD24();
  sub_24FEDCCE4();
  v70(v79, v68);
  v70(v76, v68);
  v122(v17, v80);
  v70(v115, v68);
  v70(v110, v68);
  v70(v121, v68);
  v70(v107, v68);
  v70(v108, v68);
  v70(v105, v68);
  v83 = v112;
  v112(v81, v82);
  v84 = v124;
  v85 = v106;
  v106(v120, v124);
  v85(v114, v84);
  v85(v116, v84);
  return v83(v113, v82);
}

uint64_t sub_24FEB2C44@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_24FEDCB14();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB8, &qword_24FEE7320);
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v45 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC8, &qword_24FEE7330);
  MEMORY[0x28223BE20](v17 - 8);
  v50 = &v45 - v18;
  v58 = sub_24FEDCD44();
  v19 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v45 = &v45 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD0, &qword_24FEE7338);
  v52 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v46 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v47 = &v45 - v27;
  sub_24FEDCB04();
  sub_24FEDCD74();
  sub_24FEDCD84();
  v28 = sub_24FEDCD94();
  (*(*(v28 - 8) + 56))(v3, 0, 1, v28);
  sub_24FEDCB04();
  sub_24FEB6404(&qword_27F3A6ED0, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v29 = MEMORY[0x277D83E40];
  sub_24FEDCD34();
  v30 = *(v19 + 8);
  v30(v21, v58);
  sub_24FEB62E4(v3);
  (*(v53 + 8))(v6, v4);
  v31 = v49;
  MEMORY[0x253058D80](v14, v29);
  v32 = sub_24FE58928(&qword_27F3A6DF0, &qword_27F3A6DB8, &qword_24FEE7320, MEMORY[0x277D85420]);
  v33 = v51;
  MEMORY[0x253058CD0](v31, v7, v32);
  v34 = *(v54 + 8);
  v34(v31, v7);
  v35 = v48;
  sub_24FEDCAE4();
  v34(v33, v7);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD8, &qword_24FEE7340);
  sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328, MEMORY[0x277D85AC0]);
  v37 = v55;
  v38 = v50;
  v39 = v45;
  sub_24FEDCD04();
  (*(v56 + 8))(v35, v37);
  v30(v39, v58);
  v40 = v46;
  MEMORY[0x253058CF0](v38, v36);
  v41 = sub_24FE58928(&qword_27F3A6E68, &qword_27F3A6DD0, &qword_24FEE7338, MEMORY[0x277D853B8]);
  v42 = v47;
  MEMORY[0x253058CD0](v40, v24, v41);
  v43 = *(v52 + 8);
  v43(v40, v24);
  sub_24FEDCAE4();
  return (v43)(v42, v24);
}

uint64_t sub_24FEB3354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v40 = a3;
  v44 = a4;
  v6 = sub_24FEDCD44();
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = &v34 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC8, &qword_24FEE7330);
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v46 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v51 = a2;
  v52 = 0xE200000000000000;
  v21 = sub_24FEB63B0();
  v22 = MEMORY[0x277D837D0];
  v37 = v21;
  MEMORY[0x253058CD0](v53, &v51, MEMORY[0x277D837D0], v21);
  v23 = MEMORY[0x277D85AC0];
  v24 = sub_24FE58928(&qword_27F3A6DE8, &qword_27F3A6DC8, &qword_24FEE7330, MEMORY[0x277D85AC0]);
  v38 = v20;
  v35 = v16;
  v36 = v24;
  MEMORY[0x253058CD0](v39, v16, v24);
  v49 = v40;
  v50 = 0xE200000000000000;
  MEMORY[0x253058CD0](&v51, &v49, v22, v21);
  v49 = v53[0];
  v50 = v53[1];
  sub_24FEDCAE4();

  sub_24FEDCB04();
  sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328, v23);
  v25 = v41;
  sub_24FEDCD24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD8, &qword_24FEE7340);
  sub_24FEDCCE4();
  v26 = *(v42 + 8);
  v26(v13, v25);
  v27 = *(v48 + 8);
  v48 += 8;
  v27(v9, v47);
  v28 = v51;
  v29 = v52;
  sub_24FEDCB04();
  v49 = v28;
  v50 = v29;
  sub_24FEDCD24();

  v30 = v46;
  v31 = v35;
  sub_24FEDCCE4();
  v26(v13, v25);
  v27(v9, v47);
  v32 = *(v43 + 8);
  v32(v30, v31);
  v26(v45, v25);
  return (v32)(v38, v31);
}

uint64_t sub_24FEB37AC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_24FEDCD44();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v47 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v46 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v36 - v7;
  MEMORY[0x28223BE20](v8);
  v44 = &v36 - v9;
  v43 = sub_24FEDCB14();
  v51 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6EC0, &qword_24FEE7490);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v39 = sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328, MEMORY[0x277D85AC0]);
  sub_24FEDCB24();
  v22 = sub_24FE58928(&qword_27F3A6EC8, &qword_27F3A6EC0, &qword_24FEE7490, MEMORY[0x277D853D8]);
  v38 = v21;
  MEMORY[0x253058CD0](v18, v15, v22);
  v23 = *(v16 + 8);
  v41 = v16 + 8;
  v42 = v23;
  v37 = v15;
  v23(v18, v15);
  sub_24FEDCD74();
  v24 = sub_24FEB6404(&qword_27F3A6ED0, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v25 = v14;
  v26 = v43;
  MEMORY[0x253058CD0](v11, v43, v24);
  v27 = *(v51 + 8);
  v51 += 8;
  v27(v11, v26);
  v28 = v44;
  sub_24FEDCAE4();
  sub_24FEDCB04();
  v29 = v45;
  v30 = v28;
  v31 = v40;
  sub_24FEDCD24();
  v32 = v46;
  sub_24FEDCD24();
  v33 = v32;
  sub_24FEDCCE4();
  v34 = *(v47 + 8);
  v34(v33, v31);
  v34(v29, v31);
  (*(v49 + 8))(v4, v50);
  v34(v30, v31);
  v27(v25, v26);
  return v42(v38, v37);
}

uint64_t sub_24FEB3CD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6ED8, &qword_24FEE7498);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_24FEDCB74();
  v7 = sub_24FE58928(&qword_27F3A6EE0, &qword_27F3A6ED8, &qword_24FEE7498, MEMORY[0x277D85410]);
  MEMORY[0x253058CD0](v3, v0, v7);
  v8 = *(v1 + 8);
  v8(v3, v0);
  sub_24FEDCAE4();
  return (v8)(v6, v0);
}

uint64_t sub_24FEB3E68@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v35 = sub_24FEDCD44();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6ED8, &qword_24FEE7498);
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v27 - v9;
  MEMORY[0x28223BE20](v10);
  v33 = &v27 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v44 = 23388;
  v45 = 0xE200000000000000;
  v15 = sub_24FEB63B0();
  v16 = MEMORY[0x277D837D0];
  MEMORY[0x253058CB0](v46, &v44, MEMORY[0x277D837D0], v15);
  v42 = 10332;
  v43 = 0xE200000000000000;
  MEMORY[0x253058CB0](&v44, &v42, v16, v15);
  v40 = 9252;
  v41 = 0xE200000000000000;
  MEMORY[0x253058CB0](&v42, &v40, v16, v15);
  v38 = 96;
  v39 = 0xE100000000000000;
  MEMORY[0x253058CB0](&v40, &v38, v16, v15);
  v36 = 6316128;
  v37 = 0xE300000000000000;
  MEMORY[0x253058CB0](&v38, &v36, v16, v15);
  v36 = v46[0];
  v37 = v46[1];
  v29 = v14;
  sub_24FEDCAC4();

  v36 = v44;
  v37 = v45;
  sub_24FEDCB04();
  sub_24FE58928(&qword_27F3A6EE0, &qword_27F3A6ED8, &qword_24FEE7498, MEMORY[0x277D85410]);
  sub_24FEDCD14();
  v17 = *(v4 + 8);
  v18 = v35;
  v17(v6, v35);
  v19 = v17;
  v27 = v17;

  v20 = v3;
  MEMORY[0x253058D60](v3, MEMORY[0x277D83E40]);
  v36 = v42;
  v37 = v43;
  sub_24FEDCB04();
  v21 = v28;
  sub_24FEDCD14();
  v19(v6, v18);

  MEMORY[0x253058D60](v20, MEMORY[0x277D83E40]);
  v36 = v40;
  v37 = v41;
  sub_24FEDCB04();
  sub_24FEDCD14();
  v22 = v27;
  v27(v6, v18);

  v23 = v30;
  v24 = MEMORY[0x277D83E40];
  MEMORY[0x253058D60](v20, MEMORY[0x277D83E40]);
  v36 = v38;
  v37 = v39;
  sub_24FEDCB04();
  sub_24FEDCD14();
  v22(v6, v35);

  MEMORY[0x253058D60](v20, v24);
  v25 = *(v31 + 8);
  v25(v23, v21);
  v25(v34, v21);
  v25(v33, v21);
  return (v25)(v29, v21);
}

uint64_t sub_24FEB43A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v95 = a6;
  v81 = a5;
  v80 = a4;
  v79 = a3;
  v76 = a2;
  v75 = a1;
  v94 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E10, &qword_24FEE7410);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E18, &qword_24FEE7418);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E20, &qword_24FEE7420);
  v12 = *(v11 - 8);
  v91 = v11;
  v92 = v12;
  MEMORY[0x28223BE20](v11);
  v88 = v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E28, &qword_24FEE7428);
  MEMORY[0x28223BE20](v14 - 8);
  v84 = v70 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E30, &qword_24FEE7430);
  v90 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v105 = v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E38, &qword_24FEE7438);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = v70 - v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E40, &qword_24FEE7440);
  v87 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E48, &qword_24FEE7448);
  MEMORY[0x28223BE20](v20 - 8);
  v73 = v70 - v21;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E50, &qword_24FEE7450);
  v85 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v98 = v70 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E58, &qword_24FEE7458);
  MEMORY[0x28223BE20](v23 - 8);
  v71 = v70 - v24;
  v25 = sub_24FEDCD44();
  v26 = *(v25 - 8);
  v108 = v25;
  v109 = v26;
  MEMORY[0x28223BE20](v25);
  v28 = v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E60, &qword_24FEE7460);
  v83 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v96 = v70 - v29;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC8, &qword_24FEE7330);
  v82 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v99 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v100 = v70 - v32;
  MEMORY[0x28223BE20](v33);
  v101 = v70 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD0, &qword_24FEE7338);
  v77 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v72 = v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v97 = v70 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = v70 - v40;
  v42 = sub_24FE58928(&qword_27F3A6E68, &qword_27F3A6DD0, &qword_24FEE7338, MEMORY[0x277D853B8]);
  v74 = v41;
  MEMORY[0x253058CB0](v75, v35, v42);
  MEMORY[0x253058CB0](v76, v35, v42);
  v43 = sub_24FE58928(&qword_27F3A6DE8, &qword_27F3A6DC8, &qword_24FEE7330, MEMORY[0x277D85AC0]);
  v44 = v107;
  v76 = v43;
  MEMORY[0x253058CB0](v79, v107, v43);
  MEMORY[0x253058CB0](v80, v44, v43);
  MEMORY[0x253058CB0](v81, v44, v43);
  MEMORY[0x253058CB0](v95, v35, v42);
  sub_24FEDCB04();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E70, &qword_24FEE7468);
  v46 = v71;
  v70[0] = v35;
  v70[1] = v42;
  sub_24FEDCCF4();
  v47 = v108;
  v48 = *(v109 + 8);
  v109 += 8;
  v48(v28, v108);
  MEMORY[0x253058D60](v46, v45);
  sub_24FEDCB04();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E78, &qword_24FEE7470);
  v50 = MEMORY[0x277D85410];
  sub_24FE58928(&qword_27F3A6E80, &qword_27F3A6E60, &qword_24FEE7460, MEMORY[0x277D85410]);
  v51 = v73;
  sub_24FEDCD14();
  v48(v28, v47);
  MEMORY[0x253058D60](v51, v49);
  sub_24FEDCB04();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E88, &qword_24FEE7478);
  v95 = v50;
  sub_24FE58928(&qword_27F3A6E90, &qword_27F3A6E50, &qword_24FEE7450, v50);
  v53 = v78;
  sub_24FEDCD14();
  v48(v28, v47);
  MEMORY[0x253058D60](v53, v52);
  sub_24FEDCB04();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6E98, &qword_24FEE7480);
  sub_24FE58928(&qword_27F3A6EA0, &qword_27F3A6E40, &qword_24FEE7440, v50);
  v55 = v84;
  sub_24FEDCD14();
  v56 = v108;
  v81 = v48;
  v48(v28, v108);
  MEMORY[0x253058D60](v55, v54);
  sub_24FEDCB04();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6EA8, &qword_24FEE7488);
  sub_24FE58928(&qword_27F3A6EB0, &qword_27F3A6E30, &qword_24FEE7430, v95);
  v58 = v89;
  v59 = v86;
  sub_24FEDCD14();
  v48(v28, v56);
  v60 = v88;
  MEMORY[0x253058D60](v58, v57);
  sub_24FEDCB04();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DF8, &qword_24FEE7348);
  sub_24FE58928(&qword_27F3A6EB8, &qword_27F3A6E20, &qword_24FEE7420, v95);
  v62 = v93;
  v63 = v72;
  v64 = v91;
  v65 = v70[0];
  sub_24FEDCD14();
  v81(v28, v108);
  MEMORY[0x253058D60](v62, v61);
  (*(v92 + 8))(v60, v64);
  (*(v90 + 8))(v105, v59);
  (*(v87 + 8))(v102, v106);
  (*(v85 + 8))(v98, v104);
  (*(v83 + 8))(v96, v103);
  v66 = *(v77 + 8);
  v66(v63, v65);
  v67 = *(v82 + 8);
  v68 = v107;
  v67(v99, v107);
  v67(v100, v68);
  v67(v101, v68);
  v66(v97, v65);
  return (v66)(v74, v65);
}

char *_s16MarkdownDocument18LaTeXMathExtractorO7extract4from15extractingTypesSayAC11TextSegmentOGSS_AC14ExtractionTypeVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135 = a3;
  *(&v118 + 1) = a2;
  *&v118 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DA0, &qword_24FEE7308);
  v136 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v100 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DA8, &qword_24FEE7310);
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v100 - v8;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB8, &qword_24FEE7320);
  v116 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v114 = &v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC0, &qword_24FEE7328);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v111 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v100 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v100 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DC8, &qword_24FEE7330);
  v103 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v130 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v129 = &v100 - v22;
  MEMORY[0x28223BE20](v23);
  v128 = &v100 - v24;
  MEMORY[0x28223BE20](v25);
  v122 = &v100 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v100 - v28;
  v134 = sub_24FEDCD44();
  *&v137 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v109 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v100 - v32;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD0, &qword_24FEE7338);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v121 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v127 = &v100 - v36;
  MEMORY[0x28223BE20](v37);
  v126 = &v100 - v38;
  sub_24FEDCB04();
  sub_24FEB1590(v19);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DD8, &qword_24FEE7340);
  v104 = MEMORY[0x277D85AC0];
  v124 = sub_24FE58928(&qword_27F3A6DE0, &qword_27F3A6DC0, &qword_24FEE7328, MEMORY[0x277D85AC0]);
  v132 = v12;
  v40 = v39;
  v41 = v33;
  sub_24FEDCD04();
  v133 = *(v13 + 8);
  v133(v19, v12);
  v131 = v13 + 8;
  v42 = *(v137 + 8);
  *&v137 = v137 + 8;
  v43 = v134;
  v42(v33, v134);
  v44 = v42;
  v125 = v42;
  MEMORY[0x253058CF0](v29, v40);
  sub_24FEDCB04();
  v45 = v19;
  sub_24FEB1CF0(v19);
  v46 = v132;
  v108 = v29;
  v107 = v45;
  sub_24FEDCD04();
  v133(v45, v46);
  v105 = v41;
  v44(v41, v43);
  v47 = v40;
  MEMORY[0x253058CF0](v29, v40);
  sub_24FE58928(&qword_27F3A6DE8, &qword_27F3A6DC8, &qword_24FEE7330, v104);
  v48 = v122;
  sub_24FEDCDA4();
  v146 = v48;
  sub_24FEDCDA4();
  v145 = v48;
  v106 = v47;
  sub_24FEDCDA4();
  v144 = v48;
  sub_24FEDCDA4();
  sub_24FEDCB04();
  v49 = sub_24FEDCD94();
  v50 = v112;
  (*(*(v49 - 8) + 56))(v112, 1, 1, v49);
  v51 = v109;
  sub_24FEDCB04();
  v52 = v111;
  sub_24FEB37AC(v111);
  v53 = v110;
  v54 = MEMORY[0x277D83E40];
  v55 = v132;
  sub_24FEDCD34();
  v133(v52, v55);
  v125(v51, v134);
  sub_24FEB62E4(v50);
  v56 = v113;
  MEMORY[0x253058D80](v53, v54);
  v57 = sub_24FE58928(&qword_27F3A6DF0, &qword_27F3A6DB8, &qword_24FEE7320, MEMORY[0x277D85420]);
  v58 = v114;
  v59 = v115;
  MEMORY[0x253058CD0](v56, v115, v57);
  v60 = *(v116 + 8);
  v60(v56, v59);
  v61 = v107;
  sub_24FEDCAE4();
  v60(v58, v59);
  v62 = v132;
  v63 = v108;
  v64 = v106;
  v65 = v105;
  sub_24FEDCD04();
  v133(v61, v62);
  v125(v65, v134);
  v66 = v121;
  MEMORY[0x253058CF0](v63, v64);
  v147 = v118;
  v138 = v127;
  v139 = v126;
  v140 = v128;
  v141 = v129;
  v142 = v130;
  v143 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DF8, &qword_24FEE7348);
  v67 = v117;
  sub_24FEDCB74();
  sub_24FEB635C();
  sub_24FE58928(&qword_27F3A6E08, &qword_27F3A6DA8, &qword_24FEE7310, MEMORY[0x277D85410]);
  v68 = v119;
  v69 = sub_24FEDE174();
  (*(v120 + 8))(v67, v68);
  v70 = *(v69 + 16);
  v71 = MEMORY[0x277D84F90];
  if (v70)
  {
    v151 = MEMORY[0x277D84F90];
    result = sub_24FEBE0F0(0, v70, 0);
    v73 = 0;
    v132 = v69 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v74 = v151;
    v131 = v136 + 16;
    v75 = (v136 + 8);
    v76 = v136;
    v134 = v69;
    v133 = v70;
    do
    {
      if (v73 >= *(v69 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v76 + 16))(v5, v132 + *(v76 + 72) * v73, v3);
      swift_getKeyPath();
      sub_24FEDCDB4();

      v77 = v150;
      if (v150 == 255 && (swift_getKeyPath(), sub_24FEDCDB4(), , v77 = v150, v150 == 255) && (swift_getKeyPath(), sub_24FEDCDB4(), , v77 = v150, v150 == 255) && (swift_getKeyPath(), sub_24FEDCDB4(), , v77 = v150, v150 == 255) && (swift_getKeyPath(), sub_24FEDCDB4(), , v77 = v150, v150 == 255))
      {
        swift_getKeyPath();
        sub_24FEDCDB4();

        v137 = v147;
        v77 = 1;
        v78 = v148;
        v79 = v149;
      }

      else
      {
        v78 = v148;
        v79 = v149;
        v137 = v147;
      }

      result = (*v75)(v5, v3);
      v151 = v74;
      v80 = *(v74 + 16);
      v81 = *(v74 + 24);
      if (v80 >= v81 >> 1)
      {
        result = sub_24FEBE0F0((v81 > 1), v80 + 1, 1);
        v74 = v151;
      }

      ++v73;
      *(v74 + 16) = v80 + 1;
      v82 = v74 + 40 * v80;
      *(v82 + 32) = v137;
      *(v82 + 48) = v78;
      *(v82 + 56) = v79;
      *(v82 + 64) = v77 & 1;
      v76 = v136;
      v69 = v134;
    }

    while (v133 != v73);

    v71 = MEMORY[0x277D84F90];
    v83 = *(v74 + 16);
    if (v83)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
    v83 = *(MEMORY[0x277D84F90] + 16);
    if (v83)
    {
LABEL_16:
      *&v147 = v71;
      v84 = v74;
      sub_24FEBE0F0(0, v83, 0);
      v85 = v147;
      v136 = v84;
      v86 = (v84 + 64);
      do
      {
        LODWORD(v137) = (v135 & 1) == 0;
        v87 = *(v86 - 4);
        v88 = *(v86 - 3);
        v89 = *(v86 - 2);
        v90 = *(v86 - 1);
        v91 = *v86;
        sub_24FEB0210(v87, v88, v89, v90);
        *&v147 = v85;
        v93 = *(v85 + 16);
        v92 = *(v85 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_24FEBE0F0((v92 > 1), v93 + 1, 1);
          v85 = v147;
        }

        v94 = v137 | v91;
        *(v85 + 16) = v93 + 1;
        v95 = v85 + 40 * v93;
        *(v95 + 32) = v87;
        *(v95 + 40) = v88;
        *(v95 + 48) = v89;
        *(v95 + 56) = v90;
        *(v95 + 64) = v94 & 1;
        v86 += 40;
        --v83;
      }

      while (v83);

      goto LABEL_23;
    }
  }

  v85 = MEMORY[0x277D84F90];
LABEL_23:
  v96 = *(v101 + 8);
  v97 = v102;
  v96(v121, v102);
  v98 = *(v103 + 8);
  v99 = v123;
  v98(v130, v123);
  v98(v129, v99);
  v98(v128, v99);
  v98(v122, v99);
  v96(v127, v97);
  v96(v126, v97);
  return v85;
}

uint64_t sub_24FEB62E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6DB0, &qword_24FEE7318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FEB635C()
{
  result = qword_27F3A6E00;
  if (!qword_27F3A6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6E00);
  }

  return result;
}

unint64_t sub_24FEB63B0()
{
  result = qword_27F3A6EE8;
  if (!qword_27F3A6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6EE8);
  }

  return result;
}

uint64_t sub_24FEB6404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DocumentDataImageElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentDataImageElement.imageData.getter()
{
  v1 = v0 + *(type metadata accessor for DocumentDataImageElement(0) + 20);
  v2 = *v1;
  sub_24FE62C94(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for DocumentDataImageElement(uint64_t a1)
{
  result = qword_27F3A6F18;
  if (!qword_27F3A6F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *DocumentDataImageElement.init(id:imageData:aspectRatio:isFirst:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_24FEDCA64();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for DocumentDataImageElement(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4 & 1;
  *(a6 + result[7]) = a5;
  return result;
}

double DocumentDataImageElement.makeView()@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentDataImageElement(0);
  v4 = (v1 + v3[5]);
  v5 = *(v1 + v3[6]);
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v1 + v3[7]);
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24FE62C94(v6, v7);
  sub_24FE62C94(v6, v7);
  v10 = sub_24FEDCA04();
  v11 = [v9 initWithData_];

  sub_24FE62CFC(v6, v7);
  result = 210.0;
  *a1 = xmmword_24FEE3D50;
  *(a1 + 16) = v11;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;
  *(a1 + 41) = v8;
  return result;
}

double sub_24FEB6724@<D0>(_OWORD *a1@<X8>)
{
  DocumentDataImageElement.makeView()(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 10);
  *(a1 + 26) = *(v5 + 10);
  return result;
}

uint64_t sub_24FEB6768@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24FEDC514();
    if (v10)
    {
      v11 = sub_24FEDC534();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24FEDC524();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24FEDC514();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24FEDC534();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24FEDC524();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24FEB6998(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24FEB6B28(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24FE62CFC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_24FEB6768(v13, a3, a4, &v12);
  v10 = v4;
  sub_24FE62CFC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_24FEB6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24FEDC514();
  v11 = result;
  if (result)
  {
    result = sub_24FEDC534();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24FEDC524();
  sub_24FEB6768(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_24FEB6BE0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24FE62C94(a3, a4);
          return sub_24FEB6998(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s16MarkdownDocument0B16DataImageElementV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) != 0 && (v4 = type metadata accessor for DocumentDataImageElement(0), sub_24FEB6BE0(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8), *(a2 + *(v4 + 20)), *(a2 + *(v4 + 20) + 8))) && (sub_24FEDD064())
  {
    v5 = *(a1 + *(v4 + 28)) ^ *(a2 + *(v4 + 28)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_24FEB6DE8()
{
  result = qword_27F3A6EF8;
  if (!qword_27F3A6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6EF8);
  }

  return result;
}

uint64_t sub_24FEB6E3C(uint64_t a1)
{
  *(a1 + 8) = sub_24FEB6F08(&qword_27F3A6F00, type metadata accessor for DocumentDataImageElement, &protocol conformance descriptor for DocumentDataImageElement);
  result = sub_24FEB6F08(&unk_27F3A6F08, type metadata accessor for DocumentDataImageElement, &protocol conformance descriptor for DocumentDataImageElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEB6F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FEB6F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24FEB7030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24FEB70E8(uint64_t a1)
{
  result = sub_24FEDCA64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DocumentImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F28, &qword_24FEE7560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F30, &qword_24FEE7568);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F38, &qword_24FEE7570);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  sub_24FEB73E0(v2);
  v15 = sub_24FEDD754();
  sub_24FEDD014();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_24FE6315C(v6, v10, &qword_27F3A6F28, &qword_24FEE7560);
  v24 = &v10[*(v8 + 44)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(v6) = sub_24FEDD734();
  sub_24FEDD014();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_24FE6315C(v10, v14, &qword_27F3A6F30, &qword_24FEE7568);
  v33 = &v14[*(v12 + 44)];
  *v33 = v6;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  LOBYTE(v12) = sub_24FEDD764();
  sub_24FEDD014();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_24FE6315C(v14, a1, &qword_27F3A6F38, &qword_24FEE7570);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F40, &qword_24FEE7578);
  v43 = a1 + *(result + 36);
  *v43 = v12;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_24FEB73E0(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F80, &qword_24FEE76C0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FD8, &qword_24FEE76F8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6F90, &qword_24FEE76C8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36[-v10];
  v12 = *(a1 + 2);
  if (v12)
  {
    v13 = v12;
    *v5 = sub_24FEDDF24();
    v5[1] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FE0, &unk_24FEE7700);
    sub_24FEB782C(v13, a1, v5 + *(v15 + 44));
    sub_24FE58B14(v5, v8, &qword_27F3A6F80, &qword_24FEE76C0);
    swift_storeEnumTagMultiPayload();
    sub_24FE58928(&qword_27F3A6F78, &qword_27F3A6F80, &qword_24FEE76C0, MEMORY[0x277CE11A8]);
    sub_24FEB8C50();
    sub_24FEDD5F4();

    v16 = v5;
    v17 = &qword_27F3A6F80;
    v18 = &qword_24FEE76C0;
  }

  else
  {
    v19 = sub_24FEDDC24();
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v37[6] = v38;
    *&v37[22] = v39;
    *&v37[38] = v40;
    v20 = *(a1 + 1);
    v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FA0, &qword_24FEE76D0) + 36)];
    v22 = *(sub_24FEDD284() + 20);
    v23 = *MEMORY[0x277CE0118];
    v24 = sub_24FEDD4E4();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = v20;
    v21[1] = v20;
    *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68F0, &qword_24FEE6098) + 36)) = 256;
    v25 = *&v37[16];
    *(v11 + 10) = *v37;
    *v11 = v19;
    *(v11 + 4) = 256;
    *(v11 + 26) = v25;
    *(v11 + 42) = *&v37[32];
    *(v11 + 7) = *&v37[46];
    sub_24FEDD4B4();
    v26 = sub_24FEDD9D4();
    v28 = v27;
    LOBYTE(v21) = v29;
    v31 = v30;
    v32 = sub_24FEDDF34();
    v33 = &v11[*(v9 + 36)];
    *v33 = v26;
    *(v33 + 1) = v28;
    v33[16] = v21 & 1;
    *(v33 + 3) = v31;
    *(v33 + 4) = v32;
    *(v33 + 5) = v34;
    sub_24FE58B14(v11, v8, &qword_27F3A6F90, &qword_24FEE76C8);
    swift_storeEnumTagMultiPayload();
    sub_24FE58928(&qword_27F3A6F78, &qword_27F3A6F80, &qword_24FEE76C0, MEMORY[0x277CE11A8]);
    sub_24FEB8C50();
    sub_24FEDD5F4();
    v16 = v11;
    v17 = &qword_27F3A6F90;
    v18 = &qword_24FEE76C8;
  }

  return sub_24FE58B7C(v16, v17, v18);
}

uint64_t sub_24FEB782C@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a3;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  MEMORY[0x28223BE20](v132);
  v147 = &v123 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  MEMORY[0x28223BE20](v6 - 8);
  v133 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v144 = &v123 - v9;
  MEMORY[0x28223BE20](v10);
  v145 = &v123 - v11;
  v148 = sub_24FEDCE94();
  v152 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v126 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v146 = &v123 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  MEMORY[0x28223BE20](v15 - 8);
  v131 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v150 = (&v123 - v18);
  v130 = type metadata accessor for ShareButton(0);
  MEMORY[0x28223BE20](v130);
  v149 = (&v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v136 = &v123 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FE8, &qword_24FEE7710);
  MEMORY[0x28223BE20](v135);
  v139 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v134 = &v123 - v24;
  MEMORY[0x28223BE20](v25);
  v138 = &v123 - v26;
  v27 = sub_24FEDDCD4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FF0, &unk_24FEE7718);
  v32 = v31 - 8;
  MEMORY[0x28223BE20](v31);
  v137 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v123 - v35;
  MEMORY[0x28223BE20](v37);
  v151 = &v123 - v38;
  v39 = a1;
  v40 = sub_24FEDDCA4();
  v143 = a2;
  v41 = a2[40];
  v42 = *(a2 + 1);
  (*(v28 + 104))(v30, *MEMORY[0x277CE0FE0], v27);
  sub_24FEDDD04();
  (*(v28 + 8))(v30, v27);
  v142 = sub_24FEDDCC4();

  LODWORD(v141) = v41;
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v159 = 1;
  *&v158[6] = v160[0];
  *&v158[22] = v160[1];
  *&v158[38] = v160[2];
  v43 = v157;
  sub_24FEDDF34();
  v44 = 1;
  sub_24FEDD294();
  v45 = sub_24FEDDC24();
  v46 = sub_24FEDD744();

  v47 = &v36[*(v32 + 44)];
  v48 = *(sub_24FEDD284() + 20);
  v49 = *MEMORY[0x277CE0118];
  v50 = sub_24FEDD4E4();
  v51 = v49;
  v52 = v146;
  (*(*(v50 - 8) + 104))(v48 + v47, v51, v50);
  *v47 = v42;
  *(v47 + 1) = v42;
  *&v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A68F0, &qword_24FEE6098) + 36)] = 256;
  *(v36 + 18) = *v158;
  *(v36 + 34) = *&v158[16];
  *(v36 + 50) = *&v158[32];
  v53 = v157[2];
  *(v36 + 120) = v157[3];
  v54 = v157[5];
  *(v36 + 136) = v157[4];
  *(v36 + 152) = v54;
  *(v36 + 168) = v157[6];
  v55 = v157[1];
  *(v36 + 72) = v157[0];
  *(v36 + 88) = v55;
  *v36 = v142;
  *(v36 + 1) = 0;
  v36[16] = 1;
  v36[17] = v141;
  *(v36 + 8) = *&v158[46];
  *(v36 + 104) = v53;
  *(v36 + 92) = 0;
  *(v36 + 24) = v45;
  v36[200] = v46;
  sub_24FE6315C(v36, v151, &qword_27F3A6FF0, &unk_24FEE7718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66A8, &unk_24FEE5760);
  v56 = swift_allocObject();
  v161 = *(v143 + 24);
  v57 = v161;
  *(v56 + 56) = MEMORY[0x277CC9318];
  *(v56 + 64) = &protocol witness table for Data;
  *(v56 + 16) = xmmword_24FEE0740;
  *(v56 + 32) = v57;
  sub_24FEB8E78(&v161, v156);
  result = sub_24FEDCE64();
  v59 = v161;
  v60 = *(&v161 + 1) >> 62;
  if ((*(&v161 + 1) >> 62) > 1)
  {
    v61 = 0;
    if (v60 != 2)
    {
      goto LABEL_11;
    }

    v59 = *(v161 + 16);
    v62 = *(v161 + 24);
    v61 = v62 - v59;
    if (!__OFSUB__(v62, v59))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v60)
  {
    v61 = BYTE14(v161);
    goto LABEL_11;
  }

  v63 = __OFSUB__(HIDWORD(v59), v59);
  v64 = HIDWORD(v59) - v59;
  if (v63)
  {
    __break(1u);
    return result;
  }

  v61 = v64;
LABEL_10:
  if ((v61 & 0x8000000000000000) == 0)
  {
LABEL_11:
    v40 = v150;
    *v150 = 0x65772E6567616D49;
    v40[1] = 0xEA00000000007062;
    v40[2] = 0x6567616D49;
    v40[3] = 0xE500000000000000;
    v65 = type metadata accessor for ShareSheetMetadata(0);
    v44 = v130;
    v66 = v65;
    v67 = v40 + *(v65 + 24);
    v124 = *(v152 + 32);
    v125 = v152 + 32;
    v124(v67, v52, v148);
    *(v40 + *(v66 + 7)) = v61;
    v46 = *(v66 - 1);
    v68 = *(v46 + 56);
    v146 = v66;
    v68(v40, 0, 1, v66);
    KeyPath = swift_getKeyPath();
    v43 = v149;
    *v149 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
    swift_storeEnumTagMultiPayload();
    v156[0] = 0x403C000000000000;
    sub_24FE85C8C();
    sub_24FEDD0B4();
    v70 = *(v44 + 24);
    sub_24FEDDC74();
    v71 = sub_24FEDDC64();

    v128 = v71;
    v129 = v70;
    *(v43 + v70) = v71;
    v127 = v43 + *(v44 + 28);
    *v127 = 0;
    v143 = v43 + *(v44 + 32);
    *v143 = 0;
    v72 = (v43 + *(v44 + 36));
    sub_24FEDE134();
    sub_24FEB8FA4(&qword_27F3A5C08, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    *v72 = sub_24FEDD2C4();
    v72[1] = v73;
    v48 = (v43 + *(v44 + 40));
    if (qword_27F3A5B88 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_12:
  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker(0);
  sub_24FEB8FA4(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

  *v48 = sub_24FEDD1B4();
  v48[1] = v74;
  v75 = v43 + *(v44 + 44);
  v153 = 0;
  sub_24FEDDD34();
  v76 = v155;
  *v75 = v154;
  *(v75 + 1) = v76;
  *(v43 + *(v44 + 48)) = 0;
  *(v43 + *(v44 + 52)) = v56;
  sub_24FE58B14(v40, v43 + *(v44 + 56), &qword_27F3A5F70, &qword_24FEE45C0);
  *(v43 + *(v44 + 60)) = 0;
  v77 = v131;
  sub_24FE58B14(v40, v131, &qword_27F3A5F70, &qword_24FEE45C0);
  v78 = v146;
  v142 = *(v46 + 48);
  v79 = v142(v77, 1, v146);
  v141 = v46 + 48;
  if (v79 == 1)
  {
    sub_24FE58B7C(v77, &qword_27F3A5F70, &qword_24FEE45C0);
    v80 = 1;
    v81 = v133;
    v82 = v148;
    v83 = v145;
    v84 = v152;
  }

  else
  {
    v85 = *(v78 + 6);
    v84 = v152;
    v83 = v145;
    v82 = v148;
    (*(v152 + 16))(v145, v77 + v85, v148);
    sub_24FEB8FEC(v77, type metadata accessor for ShareSheetMetadata);
    v80 = 0;
    v81 = v133;
  }

  v86 = v144;
  v87 = *(v84 + 56);
  v87(v83, v80, 1, v82);
  sub_24FEDCE64();
  v87(v86, 0, 1, v82);
  v88 = *(v132 + 48);
  v89 = v147;
  sub_24FE58B14(v83, v147, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B14(v86, v89 + v88, &qword_27F3A5F68, &qword_24FEE5350);
  v90 = *(v84 + 48);
  if (v90(v89, 1, v82) != 1)
  {
    sub_24FE58B14(v89, v81, &qword_27F3A5F68, &qword_24FEE5350);
    if (v90(v89 + v88, 1, v82) != 1)
    {
      v102 = v126;
      v124(v126, (v89 + v88), v82);
      sub_24FEB8FA4(&qword_27F3A5FC0, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v103 = v89;
      v104 = sub_24FEDE194();
      v105 = *(v152 + 8);
      v105(v102, v82);
      sub_24FE58B7C(v144, &qword_27F3A5F68, &qword_24FEE5350);
      sub_24FE58B7C(v145, &qword_27F3A5F68, &qword_24FEE5350);
      v105(v81, v82);
      sub_24FE58B7C(v103, &qword_27F3A5F68, &qword_24FEE5350);
      v93 = v139;
      v95 = v136;
      v94 = v137;
      if (v104)
      {
        goto LABEL_24;
      }

LABEL_21:
      v96 = v150;
      v97 = v142(v150, 1, v146);
      v98 = v140;
      v99 = v138;
      v100 = v149;
      v101 = v143;
      if (v97 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    sub_24FE58B7C(v144, &qword_27F3A5F68, &qword_24FEE5350);
    v91 = v147;
    sub_24FE58B7C(v145, &qword_27F3A5F68, &qword_24FEE5350);
    (*(v152 + 8))(v81, v82);
    v93 = v139;
    v94 = v137;
LABEL_20:
    sub_24FE58B7C(v91, &qword_27F3A5F60, &unk_24FEE45B0);
    v95 = v136;
    goto LABEL_21;
  }

  sub_24FE58B7C(v86, &qword_27F3A5F68, &qword_24FEE5350);
  v91 = v147;
  sub_24FE58B7C(v83, &qword_27F3A5F68, &qword_24FEE5350);
  v92 = v90(v91 + v88, 1, v82);
  v93 = v139;
  v94 = v137;
  if (v92 != 1)
  {
    goto LABEL_20;
  }

  sub_24FE58B7C(v91, &qword_27F3A5F68, &qword_24FEE5350);
  v95 = v136;
LABEL_24:
  v106 = sub_24FEDDC54();

  v100 = v149;
  *(v149 + v129) = v106;
  v101 = v127;
  v98 = v140;
  v99 = v138;
  v96 = v150;
LABEL_25:
  *v101 = 1;
LABEL_26:
  sub_24FEB8EDC(v100, v95);
  sub_24FE58B7C(v96, &qword_27F3A5F70, &qword_24FEE45C0);
  sub_24FEB8FEC(v100, type metadata accessor for ShareButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6FF8, &qword_24FEE7760);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_24FEE0830;
  v108 = sub_24FEDD754();
  *(v107 + 32) = v108;
  v109 = sub_24FEDD794();
  *(v107 + 33) = v109;
  v110 = sub_24FEDD784();
  sub_24FEDD784();
  if (sub_24FEDD784() != v108)
  {
    v110 = sub_24FEDD784();
  }

  sub_24FEDD784();
  if (sub_24FEDD784() != v109)
  {
    v110 = sub_24FEDD784();
  }

  sub_24FEDD014();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v119 = v134;
  sub_24FEB8F40(v95, v134);
  v120 = v119 + *(v135 + 36);
  *v120 = v110;
  *(v120 + 8) = v112;
  *(v120 + 16) = v114;
  *(v120 + 24) = v116;
  *(v120 + 32) = v118;
  *(v120 + 40) = 0;
  sub_24FE6315C(v119, v99, &qword_27F3A6FE8, &qword_24FEE7710);
  v121 = v151;
  sub_24FE58B14(v151, v94, &qword_27F3A6FF0, &unk_24FEE7718);
  sub_24FE58B14(v99, v93, &qword_27F3A6FE8, &qword_24FEE7710);
  sub_24FE58B14(v94, v98, &qword_27F3A6FF0, &unk_24FEE7718);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7000, &qword_24FEE7768);
  sub_24FE58B14(v93, v98 + *(v122 + 48), &qword_27F3A6FE8, &qword_24FEE7710);
  sub_24FE58B7C(v99, &qword_27F3A6FE8, &qword_24FEE7710);
  sub_24FE58B7C(v121, &qword_27F3A6FF0, &unk_24FEE7718);
  sub_24FE58B7C(v93, &qword_27F3A6FE8, &qword_24FEE7710);
  return sub_24FE58B7C(v94, &qword_27F3A6FF0, &unk_24FEE7718);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24FEB8920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24FEB897C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24FEB8A60(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24FEB8B14()
{
  result = qword_27F3A6F60;
  if (!qword_27F3A6F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6F28, &qword_24FEE7560);
    sub_24FEB8B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6F60);
  }

  return result;
}

unint64_t sub_24FEB8B98()
{
  result = qword_27F3A6F68;
  if (!qword_27F3A6F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6F70, &qword_24FEE76B8);
    sub_24FE58928(&qword_27F3A6F78, &qword_27F3A6F80, &qword_24FEE76C0, MEMORY[0x277CE11A8]);
    sub_24FEB8C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6F68);
  }

  return result;
}

unint64_t sub_24FEB8C50()
{
  result = qword_27F3A6F88;
  if (!qword_27F3A6F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6F90, &qword_24FEE76C8);
    sub_24FEB8D08();
    sub_24FE58928(&qword_27F3A6FC8, &qword_27F3A6FD0, &qword_24FEE76F0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6F88);
  }

  return result;
}

unint64_t sub_24FEB8D08()
{
  result = qword_27F3A6F98;
  if (!qword_27F3A6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6FA0, &qword_24FEE76D0);
    sub_24FEB8DC0();
    sub_24FE58928(&qword_27F3A68E8, &qword_27F3A68F0, &qword_24FEE6098, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6F98);
  }

  return result;
}

unint64_t sub_24FEB8DC0()
{
  result = qword_27F3A6FA8;
  if (!qword_27F3A6FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6FB0, &qword_24FEE76D8);
    sub_24FE58928(&qword_27F3A6FB8, &qword_27F3A6FC0, &unk_24FEE76E0, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6FA8);
  }

  return result;
}

uint64_t sub_24FEB8EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEB8F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FEB8FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FEB8FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static ImageAspectRatioAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static ImageAspectRatioAttribute.name;

  return v0;
}

uint64_t static ImageAspectRatioAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static ImageAspectRatioAttribute.name = a1;
  *&static ImageAspectRatioAttribute.name[8] = a2;
}

unint64_t sub_24FEB9164()
{
  result = qword_27F3A7018;
  if (!qword_27F3A7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7018);
  }

  return result;
}

uint64_t sub_24FEB9218()
{
  swift_beginAccess();
  v0 = *static ImageAspectRatioAttribute.name;

  return v0;
}

unint64_t sub_24FEB927C()
{
  result = qword_27F3A7020;
  if (!qword_27F3A7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7020);
  }

  return result;
}

uint64_t static NamedImageAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static NamedImageAttribute.name;

  return v0;
}

uint64_t static NamedImageAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static NamedImageAttribute.name = a1;
  *&static NamedImageAttribute.name[8] = a2;
}

unint64_t sub_24FEB93EC()
{
  result = qword_27F3A7038;
  if (!qword_27F3A7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7038);
  }

  return result;
}

uint64_t sub_24FEB94A0()
{
  swift_beginAccess();
  v0 = *static NamedImageAttribute.name;

  return v0;
}

unint64_t sub_24FEB9504()
{
  result = qword_27F3A7040;
  if (!qword_27F3A7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A7040);
  }

  return result;
}

uint64_t DocumentElementOutlineParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a1;
  v87 = a2;
  v2 = sub_24FEDCA64();
  v81 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v80 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24FEDC8E4();
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  MEMORY[0x28223BE20](v97);
  v96 = &v74 - v6;
  v99 = sub_24FEDC774();
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v90 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v74 - v9;
  v98 = sub_24FEDC6C4();
  v92 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v74 - v12;
  v105 = sub_24FEDC884();
  v94 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v74 - v19;
  v21 = sub_24FEDC854();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v86 = &v74 - v26;
  sub_24FE8B614();
  sub_24FEDC6D4();
  v27 = sub_24FEDC894();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v17, 1, v27) == 1)
  {
    sub_24FE58B7C(v17, &qword_27F3A6138, &unk_24FEE4A10);
    v22[7](v20, 1, 1, v21);
    v29 = v20;
    v20 = v87;
    goto LABEL_14;
  }

  v93 = v20;
  v106 = v22;
  v79 = v2;
  v30 = sub_24FEDC864();
  (*(v28 + 8))(v17, v27);
  DynamicType = v21;
  v104 = *(v30 + 16);
  if (!v104)
  {
LABEL_11:

    v41 = 1;
    v14 = v106;
    v29 = v93;
    goto LABEL_13;
  }

  v32 = 0;
  v103 = v106 + 2;
  v33 = v94 + 88;
  LODWORD(v102) = *MEMORY[0x277CC8D08];
  v34 = *MEMORY[0x277CC8D18];
  v35 = v94 + 8;
  v36 = (v106 + 1);
  while (1)
  {
    v37 = *(v30 + 16);
    if (v32 >= v37)
    {
      break;
    }

    (v106[2])(v24, v30 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + v106[9] * v32, DynamicType);
    v20 = DynamicType;
    sub_24FEDC834();
    v38 = v105;
    v39 = (*v33)(v14, v105);
    if (v39 == v102 || v39 == v34)
    {

      v14 = v106;
      v29 = v93;
      (v106[4])(v93, v24, v20);
      v41 = 0;
      DynamicType = v20;
LABEL_13:
      (*(v14 + 7))(v29, v41, 1, DynamicType);
      v42 = (*(v14 + 6))(v29, 1, DynamicType);
      v20 = v87;
      if (v42 == 1)
      {
LABEL_14:
        sub_24FE58B7C(v29, &qword_27F3A6140, &qword_24FEE79D0);
        v43 = type metadata accessor for DocumentOutlineElement(0);
        return (*(*(v43 - 8) + 56))(v20, 1, 1, v43);
      }

      v45 = *(v14 + 4);
      v105 = DynamicType;
      v45(v86, v29, DynamicType);
      v46 = sub_24FEDC844();
      v48 = sub_24FED5384(v46, v47);
      if (v48[2])
      {
        v49 = *(v92 + 16);
        v33 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v103 = v48;
        v102 = v92 + 16;
        v94 = v49;
        v49(v82, v48 + v33, v98);
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7048, &qword_24FEE79D8);
        v24 = swift_allocObject();
        v84 = xmmword_24FEE0740;
        *(v24 + 1) = xmmword_24FEE0740;
        v50 = v96;
        sub_24FEDC6B4();
        v93 = sub_24FE8BF90();
        sub_24FEDC7A4();
        sub_24FE58B7C(v50, &qword_27F3A6160, &unk_24FEE4A80);
        v51 = v83;
        sub_24FEDC7C4();
        sub_24FEBA56C(v51, v24 + 4);
        v52 = *(v100 + 8);
        v100 += 8;
        v104 = v52;
        v52(v51, v99);
        v32 = sub_24FEBB4C4(0, 1, 1, MEMORY[0x277D84F90], &qword_27F3A70A8, &qword_24FEE7AA8, &qword_27F3A70B0, &qword_24FEE7AB0);
        v35 = *(v32 + 16);
        v37 = *(v32 + 24);
        DynamicType = (v35 + 1);
        v34 = v79;
        if (v35 < v37 >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_54;
      }

      v32 = MEMORY[0x277D84F90];
      v34 = v79;
LABEL_45:
      DynamicType = v105;
      goto LABEL_47;
    }

    ++v32;
    (*v35)(v14, v38);
    (*v36)(v24, v20);
    DynamicType = v20;
    if (v104 == v32)
    {
      goto LABEL_11;
    }
  }

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
  v32 = sub_24FEBB4C4((v37 > 1), DynamicType, 1, v32, &qword_27F3A70A8, &qword_24FEE7AA8, &qword_27F3A70B0, &qword_24FEE7AB0);
LABEL_17:
  *(v32 + 16) = DynamicType;
  *(v32 + 8 * v35 + 32) = v24;
  v53 = v103;
  v54 = v103[2];
  v55 = v54 - 2;
  if (v54 < 2)
  {
    (*(v92 + 8))(v82, v98);
    goto LABEL_45;
  }

  v56 = *(v92 + 72);
  v92 += 8;
  v89 = v56;
  v14 = v103 + v56 + v33;
  v34 = 1;
  v20 = v88;
  v33 = v90;
  while (1)
  {
    v57 = v95;
    v24 = v98;
    v94(v95, v14, v98);
    v35 = v96;
    sub_24FEDC6B4();
    v91 = *v92;
    v91(v57, v24);
    DynamicType = v101;
    sub_24FEDC7A4();
    sub_24FE58B7C(v35, &qword_27F3A6160, &unk_24FEE4A80);
    sub_24FEDC7C4();
    sub_24FEBB9C4(v34, v53, v58);
    if ((v59 & 1) == 0)
    {
      break;
    }

    sub_24FEBA56C(v33, &v111);
    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_24;
    }

    v35 = *(v32 + 24 + 8 * v33);
    v60 = *(v35 + 16);
    if (!v60)
    {
      goto LABEL_24;
    }

    sub_24FE72D1C(v35 + 40 * v60 - 8, &v108);
    __swift_project_boxed_opaque_existential_1(&v111, v112);
    DynamicType = swift_getDynamicType();
    v24 = v109;
    __swift_project_boxed_opaque_existential_1(&v108, v109);
    if (DynamicType != swift_getDynamicType())
    {
      __swift_destroy_boxed_opaque_existential_1(&v108);
LABEL_24:
      v33 = *(v32 + 16);
      sub_24FE72D1C(&v111, &v108);
      if (!v33)
      {
        goto LABEL_50;
      }

      v35 = v32 + 24;
      v61 = *(v32 + 24 + 8 * v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 24 + 8 * v33) = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v61 = sub_24FE70D7C(0, v61[2] + 1, 1, v61, &qword_27F3A7048, &qword_24FEE79D8, &qword_27F3A5F00, &qword_24FEE4550);
        *(v35 + 8 * v33) = v61;
      }

      v64 = v61[2];
      v63 = v61[3];
      v24 = (v64 + 1);
      if (v64 >= v63 >> 1)
      {
        *(v35 + 8 * v33) = sub_24FE70D7C((v63 > 1), v64 + 1, 1, v61, &qword_27F3A7048, &qword_24FEE79D8, &qword_27F3A5F00, &qword_24FEE4550);
      }

      v65 = v90;
      v104(v90, v99);
      v66 = *(v35 + 8 * v33);
      v33 = v65;
      *(v66 + 16) = v24;
      sub_24FE731F4(&v108, v66 + 40 * v64 + 32);
      v20 = v88;
      v53 = v103;
      goto LABEL_30;
    }

    v75 = (v32 + 24);
    v74 = *(v35 + 16);
    v78 = v109;
    v77 = v110;
    v76 = __swift_project_boxed_opaque_existential_1(&v108, v109);
    v69 = v112;
    v24 = v113;
    __swift_project_boxed_opaque_existential_1(&v111, v112);
    v35 = v83;
    (*(v24 + 3))(v69, v24);
    DynamicType = v76;
    (*(v77 + 16))(&v107, v35, v78);
    v104(v35, v99);
    v37 = *(v32 + 16);
    if (v33 > v37)
    {
      goto LABEL_51;
    }

    v24 = v75;
    DynamicType = *&v75[8 * v33];
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *&v24[8 * v33] = DynamicType;
    v53 = v103;
    if ((v70 & 1) == 0)
    {
      *&v24[8 * v33] = sub_24FEBB860(DynamicType);
    }

    v104(v90, v99);
    v37 = &v105;
    if (!v74)
    {
      goto LABEL_52;
    }

    v37 = *&v24[8 * v33];
    if (v74 > *(v37 + 16))
    {
      goto LABEL_53;
    }

    v71 = (v37 + 40 * v74 - 8);
    __swift_destroy_boxed_opaque_existential_1(v71);
    sub_24FE731F4(&v107, v71);
    __swift_destroy_boxed_opaque_existential_1(&v108);
    v33 = v90;
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1(&v111);
    DynamicType = v105;
    if (!v55)
    {
      goto LABEL_46;
    }

LABEL_35:
    ++v34;
    v37 = *(v53 + 16);
    --v55;
    v14 += v89;
    if (v34 >= v37)
    {
      goto LABEL_49;
    }
  }

  v67 = swift_allocObject();
  *(v67 + 16) = v84;
  sub_24FEBA56C(v33, (v67 + 32));
  v35 = *(v32 + 16);
  v68 = *(v32 + 24);
  v24 = (v35 + 1);
  if (v35 >= v68 >> 1)
  {
    v32 = sub_24FEBB4C4((v68 > 1), v35 + 1, 1, v32, &qword_27F3A70A8, &qword_24FEE7AA8, &qword_27F3A70B0, &qword_24FEE7AB0);
  }

  v104(v33, v99);
  *(v32 + 16) = v24;
  *(v32 + 8 * v35 + 32) = v67;
  DynamicType = v105;
  v53 = v103;
  if (v55)
  {
    goto LABEL_35;
  }

LABEL_46:
  v91(v82, v98);
  v20 = v87;
  v34 = v79;
  v14 = v106;
LABEL_47:

  v72 = v80;
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  (*(v14 + 1))(v86, DynamicType);
  (*(v81 + 32))(v20, v72, v34);
  v73 = type metadata accessor for DocumentOutlineElement(0);
  *&v20[*(v73 + 20)] = v32;
  return (*(*(v73 - 8) + 56))(v20, 0, 1, v73);
}

uint64_t sub_24FEBA56C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70B8, &qword_24FEE7AB8);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v68 - v4;
  v78 = type metadata accessor for DocumentParagraphElement(0);
  v73 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70C0, &qword_24FEE7AC0);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v68 - v7;
  v8 = type metadata accessor for DocumentCodeBlockElement(0);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_24FEDC884();
  v10 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v89 = &v68 - v13;
  v88 = sub_24FEDC854();
  v92 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70C8, &qword_24FEE7AC8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68 - v19;
  v21 = sub_24FEDC6F4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24FEDC6C4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  sub_24FEDC704();
  sub_24FEBC8A8(v20);
  v29 = v24;
  v30 = v25;
  v31 = v26;
  (*(v22 + 8))(v29, v21);
  if ((*(v26 + 48))(v20, 1, v30) == 1)
  {
    sub_24FE58B7C(v20, &qword_27F3A70C8, &qword_24FEE7AC8);
    v32 = v78;
    v33 = v79;
    v34 = v80;
LABEL_3:
    v34[3] = v32;
    v34[4] = sub_24FEBC860(&qword_27F3A70D0, type metadata accessor for DocumentParagraphElement, "ٷ96HD");
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v36 = *(v32 + 20);
    v37 = sub_24FEDC774();
    return (*(*(v37 - 8) + 16))(boxed_opaque_existential_1 + v36, v33, v37);
  }

  (*(v26 + 32))(v28, v20, v30);
  sub_24FE8B614();
  sub_24FEDC6D4();
  v39 = sub_24FEDC894();
  v40 = *(v39 - 8);
  v41 = v28;
  if ((*(v40 + 48))(v17, 1, v39) == 1)
  {
    sub_24FE58B7C(v17, &qword_27F3A6138, &unk_24FEE4A10);
    v32 = v78;
    v33 = v79;
    v34 = v80;
LABEL_13:
    v58 = v76;
    DocumentElementCodeBlockParser.parseElement(attributedString:run:)(v33, v76);
    v59 = v75;
    v60 = (*(v74 + 48))(v58, 1, v75);
    v61 = v77;
    if (v60 == 1)
    {
      sub_24FE58B7C(v58, &qword_27F3A70C0, &qword_24FEE7AC0);
      DocumentElementParagraphParser.parseElement(attributedString:run:)(v33, v61);
      if ((*(v73 + 48))(v61, 1, v32) == 1)
      {
        (*(v31 + 8))(v41, v30);
        sub_24FE58B7C(v61, &qword_27F3A70B8, &qword_24FEE7AB8);
        goto LABEL_3;
      }

      v62 = type metadata accessor for DocumentParagraphElement;
      v66 = v61;
      v67 = v71;
      sub_24FEBC7F8(v66, v71, type metadata accessor for DocumentParagraphElement);
      v34[3] = v32;
      v34[4] = sub_24FEBC860(&qword_27F3A70D0, type metadata accessor for DocumentParagraphElement, "ٷ96HD");
      v64 = __swift_allocate_boxed_opaque_existential_1(v34);
      v65 = v67;
    }

    else
    {
      v62 = type metadata accessor for DocumentCodeBlockElement;
      v63 = v72;
      sub_24FEBC7F8(v58, v72, type metadata accessor for DocumentCodeBlockElement);
      v34[3] = v59;
      v34[4] = sub_24FEBC860(&qword_27F3A65C8, type metadata accessor for DocumentCodeBlockElement, &protocol conformance descriptor for DocumentCodeBlockElement);
      v64 = __swift_allocate_boxed_opaque_existential_1(v34);
      v65 = v63;
    }

    sub_24FEBC7F8(v65, v64, v62);
    return (*(v31 + 8))(v41, v30);
  }

  else
  {
    v68 = v28;
    v69 = v26;
    v70 = v30;
    v42 = sub_24FEDC864();
    result = (*(v40 + 8))(v17, v39);
    v43 = 0;
    v85 = *(v42 + 16);
    v86 = v42;
    v44 = v91;
    v84 = v92 + 16;
    v83 = *MEMORY[0x277CC8D00];
    v45 = (v10 + 8);
    v81 = v92 + 8;
    v82 = (v10 + 104);
    v46 = v92;
    while (1)
    {
      if (v85 == v43)
      {

        v33 = v79;
        v34 = v80;
        v32 = v78;
        v30 = v70;
        v31 = v69;
        v41 = v68;
        goto LABEL_13;
      }

      if (v43 >= *(v86 + 16))
      {
        break;
      }

      v48 = v87;
      v47 = v88;
      (*(v46 + 16))(v87, v86 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43++, v88);
      v49 = v89;
      sub_24FEDC834();
      v50 = v90;
      (*v82)(v90, v83, v44);
      v51 = MEMORY[0x253058A70](v49, v50);
      v52 = *v45;
      (*v45)(v50, v44);
      v52(v49, v44);
      result = (*(v46 + 8))(v48, v47);
      if (v51)
      {

        v53 = type metadata accessor for DocumentBlockQuoteElement(0);
        v54 = v80;
        v80[3] = v53;
        v54[4] = sub_24FEBC860(&qword_27F3A6018, type metadata accessor for DocumentBlockQuoteElement, &protocol conformance descriptor for DocumentBlockQuoteElement);
        v55 = __swift_allocate_boxed_opaque_existential_1(v54);
        _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
        (*(v69 + 8))(v68, v70);
        v56 = *(v53 + 20);
        v57 = sub_24FEDC774();
        return (*(*(v57 - 8) + 16))(v55 + v56, v79, v57);
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_24FEBB090(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7088, &qword_24FEE7A88);
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

char *sub_24FEBB194(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7090, &unk_24FEE7A90);
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

void *sub_24FEBB2E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_24FEBB4C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24FEBB620(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_24FEBB71C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70A0, &qword_24FEE7AA0);
  v4 = *(sub_24FEDC854() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24FEBB8A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  v7 = *(a4 + 16);
  if (!a2)
  {
    v14 = *(a4 + 16);
    v7 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v7 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      v9 = a2;
      v10 = 0;
      while (v7 + v10 <= *(a4 + 16))
      {
        v11 = sub_24FEDC854();
        v12 = *(v11 - 8);
        v13 = *(v12 + 72);
        result = (*(v12 + 16))(v9, a4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v13 * (v7 + v10 - 1), v11);
        if (a3 + v10 == 1)
        {
          v14 = v7 + v10 - 1;
          goto LABEL_13;
        }

        v9 += v13;
        --v10;
        if (!(v7 + v10))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v14 = 0;
LABEL_14:
    *v6 = a4;
    v6[1] = v14;
    return v7;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_24FEBB9C4(unint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_24FEDC884();
  v111 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v112 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v103 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v103 - v10;
  MEMORY[0x28223BE20](v12);
  v114 = &v103 - v13;
  MEMORY[0x28223BE20](v14);
  v110 = &v103 - v15;
  v16 = sub_24FEDC854();
  v124 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v117 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v125 = &v103 - v19;
  MEMORY[0x28223BE20](v20);
  v122 = &v103 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v103 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = (&v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v30 = &v103 - v29;
  v115 = sub_24FEDC894();
  v31 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  MEMORY[0x28223BE20](v32);
  v119 = &v103 - v34;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v126 = v16;
  v35 = *(a2 + 16);
  if (v35 <= a1)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v127 = v5;
  v128 = v27;
  v121 = v24;
  v118 = v11;
  v113 = v33;
  sub_24FEDC6C4();
  sub_24FE8B614();
  sub_24FEDC6D4();
  v36 = v31;
  v37 = *(v31 + 48);
  v38 = v115;
  if (v37(v30, 1, v115) == 1)
  {
    v39 = v30;
LABEL_8:
    sub_24FE58B7C(v39, &qword_27F3A6138, &unk_24FEE4A10);
    return;
  }

  v108 = v36;
  v123 = *(v36 + 32);
  (v123)(v119, v30, v38);
  if (a1 - 1 >= v35)
  {
    goto LABEL_55;
  }

  v40 = v128;
  sub_24FEDC6D4();
  if (v37(v40, 1, v38) == 1)
  {
    (*(v108 + 8))(v119, v38);
    v39 = v40;
    goto LABEL_8;
  }

  (v123)(v113, v40, v38);
  v41 = sub_24FEDC864();
  v42 = v41;
  v43 = *(v41 + 16);
  if (v43)
  {
    v44 = sub_24FEBB71C(*(v41 + 16), 0);
    v45 = v124;
    v46 = v44;
    v48 = sub_24FEBB8A8(v129, v44 + ((*(v124 + 80) + 32) & ~*(v124 + 80)), v43, v42, v47);

    v50 = v126;
    v49 = v127;
    if (v48 == v43)
    {

      v51 = v46;
      goto LABEL_13;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v51 = MEMORY[0x277D84F90];
  v50 = v126;
  v49 = v127;
  v45 = v124;
LABEL_13:
  v116 = v51;

  v52 = sub_24FEDC864();
  v53 = v52;
  v54 = *(v52 + 16);
  if (!v54)
  {

    v55 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v55 = sub_24FEBB71C(*(v52 + 16), 0);
  v57 = sub_24FEBB8A8(v129, v55 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v54, v53, v56);

  if (v57 != v54)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_17:
  v58 = v116;

  v59 = *(sub_24FEDC864() + 16);

  v60 = *(sub_24FEDC864() + 16);

  v120 = v60;
  v128 = v59;
  if (v59)
  {
    v61 = 0;
    v62 = (v45 + 8);
    v123 = (v45 + 16);
    while (1)
    {
      if (v60 == v61)
      {
        v61 = v60;
        goto LABEL_36;
      }

      if (v61 >= v58[2])
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v63 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v64 = *(v45 + 72) * v61;
      v65 = *(v45 + 16);
      v66 = v58 + v63 + v64;
      v67 = v121;
      v65(v121, v66, v50);
      if (v61 >= v55[2])
      {
        goto LABEL_52;
      }

      v68 = v55 + v63 + v64;
      v69 = v122;
      v65(v122, v68, v50);
      sub_24FEBC860(&qword_27F3A7098, MEMORY[0x277CC8CF0], MEMORY[0x277CC8CF8]);
      v70 = sub_24FEDE194();
      v71 = *v62;
      (*v62)(v69, v50);
      v71(v67, v50);
      if ((v70 & 1) == 0)
      {
        break;
      }

      ++v61;
      v49 = v127;
      v60 = v120;
      v58 = v116;
      if (v128 == v61)
      {
        goto LABEL_24;
      }
    }

    v49 = v127;
    v58 = v116;
LABEL_36:
    v127 = (v45 + 8);
    v103 = v55;
    v87 = v58[2];

    if (v87 < v128)
    {
      goto LABEL_58;
    }

    v122 = v58 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v121 = (v111 + 16);
    v107 = (v111 + 88);
    v106 = *MEMORY[0x277CC8D38];
    v88 = (v111 + 8);
    v105 = *MEMORY[0x277CC8D08];
    v89 = (v111 + 104);
    v104 = *MEMORY[0x277CC8D18];
    v90 = v61;
    v91 = v110;
    while (1)
    {
      if (v128 == v90)
      {
        v55 = v103;
        v60 = v120;
        goto LABEL_25;
      }

      (*(v45 + 16))(v125, &v122[*(v45 + 72) * v90], v50);
      sub_24FEDC834();
      v92 = v114;
      (*v121)(v114, v91, v49);
      v93 = (*v107)(v92, v49);
      if (v93 == v106)
      {

        (*v88)(v91, v49);
        (*v127)(v125, v50);
        goto LABEL_50;
      }

      v94 = *v88;
      (*v88)(v92, v49);
      v95 = *v89;
      v96 = v118;
      (*v89)(v118, v105, v49);
      v97 = MEMORY[0x253058A70](v91, v96);
      v94(v96, v49);
      if (v97)
      {
        break;
      }

      v95(v96, v104, v49);
      v98 = MEMORY[0x253058A70](v91, v96);
      v94(v96, v49);
      v94(v91, v49);
      v50 = v126;
      (*v127)(v125, v126);
      ++v90;
      v45 = v124;
      if (v98)
      {

        goto LABEL_50;
      }
    }

    v94(v91, v49);
    (*v127)(v125, v126);
    goto LABEL_50;
  }

LABEL_24:

  v61 = v128;
LABEL_25:

  if (v61 >= v60)
  {

    v85 = *(v108 + 8);
    v86 = v115;
    v85(v113, v115);
    v85(v119, v86);
    return;
  }

  v72 = v55[2];

  if (v72 >= v60)
  {
    v73 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v103 = v55;
    v127 = v55 + v73;
    v125 = (v45 + 16);
    v123 = (v111 + 16);
    v74 = (v111 + 88);
    LODWORD(v122) = *MEMORY[0x277CC8D38];
    v75 = (v111 + 8);
    LODWORD(v121) = *MEMORY[0x277CC8D08];
    v76 = (v111 + 104);
    LODWORD(v116) = *MEMORY[0x277CC8D18];
    v128 = (v45 + 8);
    v77 = v109;
    while (1)
    {
      if (v120 == v61)
      {

        v99 = *(v108 + 8);
        v100 = v115;
        v99(v113, v115);
        v99(v119, v100);
        return;
      }

      (*(v45 + 16))(v117, &v127[*(v45 + 72) * v61], v50);
      sub_24FEDC834();
      v78 = v112;
      (*v123)(v112, v77, v49);
      v79 = (*v74)(v78, v49);
      if (v79 == v122)
      {

        (*v75)(v77, v49);
        (*v128)(v117, v50);
        goto LABEL_50;
      }

      v80 = *v75;
      (*v75)(v78, v49);
      v81 = *v76;
      v82 = v118;
      (*v76)(v118, v121, v49);
      v83 = MEMORY[0x253058A70](v77, v82);
      v80(v82, v49);
      if (v83)
      {
        break;
      }

      v81(v82, v116, v49);
      v84 = MEMORY[0x253058A70](v77, v82);
      v80(v82, v49);
      v80(v77, v49);
      v50 = v126;
      (*v128)(v117, v126);
      ++v61;
      v45 = v124;
      if (v84)
      {

        goto LABEL_50;
      }
    }

    v80(v77, v49);
    (*v128)(v117, v126);
LABEL_50:
    v101 = *(v108 + 8);
    v102 = v115;
    v101(v113, v115);
    v101(v119, v102);
    return;
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_24FEBC7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FEBC860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24FEBC8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24FEDC6E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v18[-v7];
  sub_24FEDC6F4();
  sub_24FEBE970(&qword_27F3A7160, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_24FEDE454();
  sub_24FEDE474();
  sub_24FEBE970(&qword_27F3A7168, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
  v9 = sub_24FEDE194();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v9)
  {
    v10(v8, v2);
    v11 = sub_24FEDC6C4();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    v13 = sub_24FEDE4A4();
    v15 = v14;
    v16 = sub_24FEDC6C4();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a1, v15, v16);
    v13(v18, 0);
    v10(v8, v2);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }
}

uint64_t DocumentOutlineElement.init(id:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDCA64();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DocumentOutlineElement(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for DocumentOutlineElement(uint64_t a1)
{
  result = qword_27F3A7100;
  if (!qword_27F3A7100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentOutlineElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentOutlineElement.items.getter()
{
  type metadata accessor for DocumentOutlineElement(0);
}

uint64_t DocumentOutlineElement.makeView(textWrapOffset:)()
{
  v1 = type metadata accessor for DocumentOutlineView.Content(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for DocumentOutlineElement(0) + 20));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_24FEBDC94(0, v6, 0);
    v7 = v14;
    v8 = v5 + 32;
    do
    {

      sub_24FEBCE74(v9, v4);

      v14 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_24FEBDC94((v10 > 1), v11 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      sub_24FEBDCD8(v4, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11);
      v8 += 8;
      --v6;
    }

    while (v6);
  }

  return v7;
}

int *sub_24FEBCE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v92 = sub_24FEDC884();
  v100 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v111 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v82 - v6;
  MEMORY[0x28223BE20](v7);
  v112 = (&v82 - v8);
  v9 = sub_24FEDC854();
  v10 = *(v9 - 8);
  v113 = v9;
  v114 = v10;
  MEMORY[0x28223BE20](v9);
  v101 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24FEDC6F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v109 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A70C8, &qword_24FEE7AC8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v82 - v19;
  v21 = sub_24FEDC894();
  v97 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v93 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v82 - v24;
  v26 = sub_24FEDC774();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1[2];
  v94 = a1;
  v96 = v21;
  if (v31)
  {
    v107 = v17;
    v108 = v12;
    v32 = v30;
    v33 = v27;
    v34 = v13;
    v35 = v26;
    v37 = a1[7];
    v36 = a1[8];
    __swift_project_boxed_opaque_existential_1(a1 + 4, v37);
    v38 = *(v36 + 24);
    v39 = v37;
    v27 = v33;
    v30 = v32;
    v17 = v107;
    v12 = v108;
    v40 = v36;
    v26 = v35;
    v13 = v34;
    v38(v39, v40);
    (*(v27 + 56))(v25, 0, 1, v26);
    (*(v27 + 32))(v30, v25, v26);
  }

  else
  {
    (*(v27 + 56))(v25, 1, 1, v26, v28);
    sub_24FEDC764();
    if ((*(v27 + 48))(v25, 1, v26) != 1)
    {
      sub_24FE58B7C(v25, &qword_27F3A63B8, &qword_24FEE53B0);
    }
  }

  v41 = v109;
  sub_24FEDC704();
  sub_24FEBC8A8(v17);
  (*(v13 + 8))(v41, v12);
  v42 = sub_24FEDC6C4();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v17, 1, v42) == 1)
  {
    sub_24FE58B7C(v17, &qword_27F3A70C8, &qword_24FEE7AC8);
    (*(v97 + 56))(v20, 1, 1, v96);
LABEL_8:
    sub_24FE58B7C(v20, &qword_27F3A6138, &unk_24FEE4A10);
    LOBYTE(v46) = 0;
    v47 = 1;
    v48 = 1;
    v49 = v95;
    v50 = v94;
LABEL_31:
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v80 = sub_24FEBDADC(v50);
    type metadata accessor for DocumentViewModel(0);
    v81 = swift_allocObject();
    swift_beginAccess();
    v115 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
    sub_24FEDCFA4();
    swift_endAccess();
    (*(v27 + 8))(v30, v26);
    result = type metadata accessor for DocumentOutlineView.Content(0);
    *(v49 + result[5]) = v81;
    *(v49 + result[6]) = v48;
    *(v49 + result[7]) = v47;
    *(v49 + result[8]) = v46 & 1;
    return result;
  }

  sub_24FE8B614();
  sub_24FEDC6D4();
  (*(v43 + 8))(v17, v42);
  v44 = v96;
  v45 = v97;
  if ((*(v97 + 48))(v20, 1, v96) == 1)
  {
    goto LABEL_8;
  }

  (*(v45 + 32))(v93, v20, v44);
  v51 = sub_24FEDC864();
  v52 = v51;
  v53 = *(v51 + 16);
  if (!v53)
  {

    v79 = v44;
    LOBYTE(v46) = 0;
    v90 = 0;
    v91 = 1;
    v49 = v95;
    v50 = v94;
LABEL_30:
    (*(v97 + 8))(v93, v79);
    v47 = v90;
    v48 = v91;
    goto LABEL_31;
  }

  v83 = v30;
  v84 = v27;
  v85 = v26;
  LODWORD(v46) = 0;
  v90 = 0;
  v104 = 0;
  v88 = 0;
  v89 = 0;
  v54 = 0;
  v108 = v51 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
  v106 = (v100 + 88);
  v107 = (v114 + 16);
  v105 = *MEMORY[0x277CC8D38];
  v55 = (v100 + 8);
  v99 = *MEMORY[0x277CC8D08];
  v103 = (v100 + 104);
  v98 = *MEMORY[0x277CC8D18];
  v109 = (v114 + 8);
  v86 = (v100 + 96);
  v100 = v53;
  v87 = v53 - 1;
  v56 = 1;
  v58 = v112;
  v57 = v113;
  v59 = v101;
  v102 = v51;
LABEL_11:
  v60 = v92;
  LODWORD(v101) = v46;
LABEL_12:
  v61 = v54;
  v91 = v56;
  while (1)
  {
    while (1)
    {
      if (v61 >= *(v52 + 16))
      {
        __break(1u);
LABEL_33:
        v91 = v56;
LABEL_28:

        v49 = v95;
        v50 = v94;
        v26 = v85;
        v27 = v84;
        v30 = v83;
        v79 = v96;
        goto LABEL_30;
      }

      v62 = v61 + 1;
      (*(v114 + 16))(v59, v108 + *(v114 + 72) * v61, v57);
      sub_24FEDC834();
      v63 = (*v106)(v58, v60);
      if (v63 == v105)
      {
        break;
      }

      v64 = *v55;
      (*v55)(v58, v60);
      v46 = v59;
      if ((v104 & 1) == 0)
      {
        v65 = v110;
        sub_24FEDC834();
        v66 = *v103;
        v67 = v111;
        (*v103)(v111, v99, v60);
        v68 = MEMORY[0x253058A70](v65, v67);
        v69 = v67;
        v58 = v112;
        v64(v69, v60);
        v64(v65, v60);
        if (v68 & 1) != 0 || (v70 = v110, sub_24FEDC834(), v71 = v111, v66(v111, v98, v60), v72 = MEMORY[0x253058A70](v70, v71), v73 = v71, v58 = v112, v64(v73, v60), v64(v70, v60), (v72))
        {
          v76 = v110;
          sub_24FEDC834();
          v77 = v111;
          v66(v111, v99, v60);
          v78 = MEMORY[0x253058A70](v76, v77);
          v64(v77, v60);
          v64(v76, v60);
          v57 = v113;
          (*v109)(v46, v113);
          v54 = v61 + 1;
          v104 = 1;
          v59 = v46;
          LODWORD(v46) = v78;
          v56 = v91;
          v52 = v102;
          if (v87 != v61)
          {
            goto LABEL_11;
          }

          goto LABEL_28;
        }
      }

      v57 = v113;
      (*v109)(v46, v113);
      ++v61;
      v59 = v46;
      LOBYTE(v46) = v101;
      v52 = v102;
      if (v100 == v62)
      {
        goto LABEL_28;
      }
    }

    (*v109)(v59, v57);
    result = (*v86)(v58, v60);
    if (__OFADD__(v89, 1))
    {
      break;
    }

    v90 = v89 + 1;
    if ((v88 & 1) == 0)
    {
      v56 = *v58;
      v54 = v61 + 1;
      v88 = 1;
      ++v89;
      if (v87 != v61)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }

    v56 = &v116 + 4;
    v88 = 1;
    ++v89;
    if (v87 == v61++)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FEBDADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24FEBE154(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_24FE72D1C(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F00, &qword_24FEE4550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24FEBE154((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_24FE71ADC(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double sub_24FEBDC14@<D0>(uint64_t a1@<X8>)
{
  v2 = DocumentOutlineElement.makeView(textWrapOffset:)();
  result = 8.0;
  *a1 = xmmword_24FEE3D80;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4 & 1;
  return result;
}

double sub_24FEBDC58@<D0>(uint64_t a1@<X8>)
{
  v2 = DocumentOutlineElement.makeView(textWrapOffset:)();
  result = 8.0;
  *a1 = xmmword_24FEE3D80;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4 & 1;
  return result;
}

void *sub_24FEBDC94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A7170, &unk_24FEE7BF0, type metadata accessor for DocumentOutlineView.Content);
  *v3 = result;
  return result;
}

uint64_t sub_24FEBDCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentOutlineView.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24FEBDD4C()
{
  result = qword_27F3A70E0;
  if (!qword_27F3A70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A70E0);
  }

  return result;
}

uint64_t sub_24FEBDDA0(uint64_t a1)
{
  *(a1 + 8) = sub_24FEBE970(&qword_27F3A70E8, type metadata accessor for DocumentOutlineElement, &protocol conformance descriptor for DocumentOutlineElement);
  result = sub_24FEBE970(&unk_27F3A70F0, type metadata accessor for DocumentOutlineElement, &protocol conformance descriptor for DocumentOutlineElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEBDE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FEBDF50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24FEBE008(uint64_t a1)
{
  sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    sub_24FEBE08C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FEBE08C(uint64_t a1)
{
  if (!qword_27F3A7110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A70B0, &qword_24FEE7AB0);
    v1 = sub_24FEDE3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F3A7110);
    }
  }
}

char *sub_24FEBE0F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24FEBE110(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A7078, &qword_24FEE7A78, MEMORY[0x277CC8D88]);
  *v3 = result;
  return result;
}

void *sub_24FEBE154(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE724(a1, a2, a3, *v3, &qword_27F3A7060, &qword_24FEE7A60, &qword_27F3A5DE0, &unk_24FEE7BE0);
  *v3 = result;
  return result;
}

void *sub_24FEBE194(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A7148, &qword_24FEE7BC8, type metadata accessor for DocumentTableView.TableDatum);
  *v3 = result;
  return result;
}

void *sub_24FEBE1D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A7158, &qword_24FEE7BD8, type metadata accessor for DocumentTableView.RowHeader);
  *v3 = result;
  return result;
}

void *sub_24FEBE21C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE43C(a1, a2, a3, *v3, &qword_27F3A6B00, &unk_24FEE6690, MEMORY[0x277CC8BF0]);
  *v3 = result;
  return result;
}

char *sub_24FEBE260(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24FEBE280(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE724(a1, a2, a3, *v3, &qword_27F3A7138, &qword_24FEE7BB8, &qword_27F3A7140, &qword_24FEE7BC0);
  *v3 = result;
  return result;
}

void *sub_24FEBE2C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE724(a1, a2, a3, *v3, &qword_27F3A7128, &qword_24FEE7BA8, &qword_27F3A7130, &qword_24FEE7BB0);
  *v3 = result;
  return result;
}

char *sub_24FEBE300(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24FEBE86C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24FEBE320(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7178, &unk_24FEE7C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24FEBE43C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_24FEBE618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7150, &qword_24FEE7BD0);
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

void *sub_24FEBE724(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24FEBE86C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7120, &qword_24FEE7BA0);
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

uint64_t sub_24FEBE970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DocumentOutlineItemView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7180, &qword_24FEE7C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7188, &qword_24FEE7C18);
  sub_24FEBF888();
  sub_24FEBF944();
  return sub_24FEDDD24();
}

uint64_t sub_24FEBEA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + *(type metadata accessor for DocumentOutlineItemView(0) + 52));
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker(0);
  sub_24FEC0540(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker, &protocol conformance descriptor for LaTeXMathTracker);

  *(v6 + 2) = sub_24FEDD1B4();
  *(v6 + 3) = v8;
  *&v16 = 0x4040800000000000;
  sub_24FE85C8C();
  sub_24FEDD0B4();
  type metadata accessor for DocumentViewModel(0);
  sub_24FEC0540(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel, "!W22 p");

  *v6 = sub_24FEDD1B4();
  *(v6 + 1) = v9;
  *(v6 + 6) = 0;
  *(v6 + 7) = 0;
  *(v6 + 4) = MEMORY[0x277D84F90];
  v6[40] = v7;
  sub_24FE82880();
  sub_24FEDDF44();
  sub_24FEDD294();
  sub_24FEC0588(v6, a2);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7180, &qword_24FEE7C10) + 36));
  v11 = v21;
  v10[4] = v20;
  v10[5] = v11;
  v10[6] = v22;
  v12 = v17;
  *v10 = v16;
  v10[1] = v12;
  v13 = v19;
  v10[2] = v18;
  v10[3] = v13;
  return sub_24FEC05EC(v6);
}

void *sub_24FEBED10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v86 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72A8, &qword_24FEE7D30);
  MEMORY[0x28223BE20](v85);
  v4 = &v77 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7210, &qword_24FEE7C60);
  MEMORY[0x28223BE20](v5);
  v7 = &v77 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A72B0, &qword_24FEE7D38);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71C0, &qword_24FEE7C28);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71B0, &qword_24FEE7C20);
  MEMORY[0x28223BE20](v84);
  v15 = &v77 - v14;
  v16 = type metadata accessor for DocumentOutlineItemView(0);
  v17 = v16;
  if (*(a1 + v16[12]))
  {
    *&v95 = *(a1 + v16[7]);
    *&v95 = sub_24FEDE824();
    *(&v95 + 1) = v18;
    sub_24FEAD080();
    v83 = sub_24FEDD9F4();
    v82 = v19;
    v21 = v20;
    v81 = v22;
    KeyPath = swift_getKeyPath();
    type metadata accessor for MarkdownFont();
    swift_initStaticObject();
    sub_24FE82000(&v89);
    v102 = v89;
    sub_24FE8A8D0(&v102);
    v101 = v91;
    sub_24FE8A8D0(&v101);
    v100 = v92;
    sub_24FE8A8D0(&v100);
    v99 = v93;
    sub_24FE8A8D0(&v99);
    v98 = v94;
    sub_24FE8A8D0(&v98);
    v24 = sub_24FEDD7D4();

    v25 = swift_getKeyPath();
    v26 = v21 & 1;
    LOBYTE(v95) = v21 & 1;
    LOBYTE(v87) = 0;
    v27 = sub_24FEDD664();
    sub_24FEDDF54();
    sub_24FEDD0F4();
    *&v88[4] = v95;
    *&v88[20] = v96;
    *&v88[36] = v97;
    result = sub_24FEDD774();
    if (!__OFSUB__(*(a1 + v17[11]), 1))
    {
      v29 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
      sub_24FEDD0C4();
      sub_24FEDD014();
      v30 = *&v88[16];
      *(v4 + 76) = *v88;
      LOBYTE(v87) = 0;
      v31 = v82;
      *v4 = v83;
      *(v4 + 1) = v31;
      v4[16] = v26;
      *(v4 + 3) = v81;
      *(v4 + 4) = KeyPath;
      *(v4 + 5) = 1;
      v4[48] = 0;
      *(v4 + 7) = v25;
      *(v4 + 8) = v24;
      *(v4 + 18) = v27;
      *(v4 + 92) = v30;
      *(v4 + 108) = *&v88[32];
      *(v4 + 31) = *&v88[48];
      v4[128] = v29;
      *(v4 + 17) = v32;
      *(v4 + 18) = v33;
      *(v4 + 19) = v34;
      *(v4 + 20) = v35;
      v4[168] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7220, &qword_24FEE7C68);
      sub_24FEBF9D0();
      sub_24FEBFE14();
      return sub_24FEDD5F4();
    }

    __break(1u);
    goto LABEL_10;
  }

  v79 = v8;
  v83 = v11;
  v80 = v10;
  v81 = v15;
  v82 = v5;
  if (*(a1 + v16[11]) == 1)
  {
    sub_24FEDDCB4();
    v36 = sub_24FEDDA04();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71F0, &qword_24FEE7C40) + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7200, &qword_24FEE7C48) + 28);
    v45 = *MEMORY[0x277CE1050];
    v46 = sub_24FEDDCF4();
    (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
    *v43 = swift_getKeyPath();
    *v13 = v36;
    *(v13 + 1) = v38;
    v13[16] = v40 & 1;
    *(v13 + 3) = v42;
    LODWORD(v42) = sub_24FEDD664();
    *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71E0, &qword_24FEE7C38) + 36)] = v42;
    type metadata accessor for MarkdownFont();
    swift_initStaticObject();
    sub_24FE82000(&v89);
    v47 = v91;
    v102 = v89;

    sub_24FE8A8D0(&v102);
    v101 = v90;
    sub_24FE8A8D0(&v101);

    v100 = v92;
    sub_24FE8A8D0(&v100);
    v99 = v93;
    sub_24FE8A8D0(&v99);
    v98 = v94;
    sub_24FE8A8D0(&v98);
    v48 = swift_getKeyPath();
    v49 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71D0, &qword_24FEE7C30) + 36)];
    *v49 = v48;
    v49[1] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    sub_24FEDD0C4();
    sub_24FEDDF34();
    sub_24FEDD0F4();
    v50 = &v13[*(v83 + 36)];
    v51 = v96;
    *v50 = v95;
    *(v50 + 1) = v51;
    *(v50 + 2) = v97;
    v52 = &qword_27F3A71C0;
    v53 = &qword_24FEE7C28;
    sub_24FE58B14(v13, v80, &qword_27F3A71C0, &qword_24FEE7C28);
    swift_storeEnumTagMultiPayload();
    sub_24FEBFA88(&qword_27F3A71B8, &qword_27F3A71C0, &qword_24FEE7C28, sub_24FEBFB0C);
    sub_24FEBFD5C();
    v54 = v81;
    sub_24FEDD5F4();
    v55 = v13;
LABEL_8:
    sub_24FE58B7C(v55, v52, v53);
    sub_24FE58B14(v54, v4, &qword_27F3A71B0, &qword_24FEE7C20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7220, &qword_24FEE7C68);
    sub_24FEBF9D0();
    sub_24FEBFE14();
    sub_24FEDD5F4();
    return sub_24FE58B7C(v54, &qword_27F3A71B0, &qword_24FEE7C20);
  }

  v78 = *(a1 + v16[11]);
  sub_24FEDDCB4();
  v56 = sub_24FEDDA04();
  v58 = v57;
  v60 = v59;
  v77 = v61;
  v62 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71F0, &qword_24FEE7C40) + 36)];
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A7200, &qword_24FEE7C48) + 28);
  v64 = *MEMORY[0x277CE1050];
  v65 = sub_24FEDDCF4();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = swift_getKeyPath();
  *v7 = v56;
  *(v7 + 1) = v58;
  v7[16] = v60 & 1;
  *(v7 + 3) = v77;
  LODWORD(v56) = sub_24FEDD664();
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71E0, &qword_24FEE7C38) + 36)] = v56;
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(&v89);
  v102 = v89;

  sub_24FE8A8D0(&v102);
  v101 = v90;
  sub_24FE8A8D0(&v101);

  v100 = v92;
  sub_24FE8A8D0(&v100);
  v99 = v93;
  sub_24FE8A8D0(&v99);
  v98 = v94;
  sub_24FE8A8D0(&v98);
  sub_24FEDD824();
  v66 = sub_24FEDD864();

  v67 = swift_getKeyPath();
  v68 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A71D0, &qword_24FEE7C30) + 36)];
  *v68 = v67;
  v68[1] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v69 = &v7[*(v83 + 36)];
  v70 = v96;
  *v69 = v95;
  *(v69 + 1) = v70;
  *(v69 + 2) = v97;
  v71 = sub_24FEDD774();
  result = sub_24FEDD0C4();
  if (!__OFSUB__(v78, 1))
  {
    sub_24FEDD014();
    v72 = &v7[*(v82 + 36)];
    *v72 = v71;
    *(v72 + 1) = v73;
    *(v72 + 2) = v74;
    *(v72 + 3) = v75;
    *(v72 + 4) = v76;
    v72[40] = 0;
    v52 = &qword_27F3A7210;
    v53 = &qword_24FEE7C60;
    sub_24FE58B14(v7, v80, &qword_27F3A7210, &qword_24FEE7C60);
    swift_storeEnumTagMultiPayload();
    sub_24FEBFA88(&qword_27F3A71B8, &qword_27F3A71C0, &qword_24FEE7C28, sub_24FEBFB0C);
    sub_24FEBFD5C();
    v54 = v81;
    sub_24FEDD5F4();
    v55 = v7;
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}